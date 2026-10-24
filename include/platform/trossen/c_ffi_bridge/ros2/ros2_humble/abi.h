/**
 * @file abi.h
 * @brief Expose every complete trossen/ros2_humble record through linkable C ABI functions.
 * @details All pointers refer to live, correctly aligned guest memory. Sizes use
 * the selected guest size_t width. No host pointer, ROS capability, allocator or
 * foreign runtime is created here. A profile is a wire contract, never a grant.
 * Keep record, input/output and size-result storage disjoint for each call.
 */
#ifndef UWVM_C_FFI_007C64C38ED5A3656612AB12299226D1FCA3F039E3E26D13F28D3E6A8FAE78C0
#define UWVM_C_FFI_007C64C38ED5A3656612AB12299226D1FCA3F039E3E26D13F28D3E6A8FAE78C0
#include <trossen/c/ros2/trossen-ros2-humble-complete/bounded_records.h>
#ifdef __cplusplus
extern "C"
{
#endif

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros2_humble_Ros2Builtin_interfacesMsgDuration_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros2_humble_Ros2Builtin_interfacesMsgDuration_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Builtin_interfacesMsgDuration_validate(roswasmc_bounded_2_builtin_interfaces_msg_Duration const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Builtin_interfacesMsgDuration_wire_size(roswasmc_bounded_2_builtin_interfaces_msg_Duration const* value,
                                                                                  size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Builtin_interfacesMsgDuration_encode(roswasmc_bounded_2_builtin_interfaces_msg_Duration const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Builtin_interfacesMsgDuration_decode(void const* input,
                                                                               size_t length,
                                                                               roswasmc_bounded_2_builtin_interfaces_msg_Duration* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros2_humble_Ros2Builtin_interfacesMsgTime_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros2_humble_Ros2Builtin_interfacesMsgTime_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Builtin_interfacesMsgTime_validate(roswasmc_bounded_2_builtin_interfaces_msg_Time const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Builtin_interfacesMsgTime_wire_size(roswasmc_bounded_2_builtin_interfaces_msg_Time const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Builtin_interfacesMsgTime_encode(roswasmc_bounded_2_builtin_interfaces_msg_Time const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t
        uwvm_trossen_ros2_humble_Ros2Builtin_interfacesMsgTime_decode(void const* input, size_t length, roswasmc_bounded_2_builtin_interfaces_msg_Time* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros2_humble_Ros2Std_msgsMsgHeader_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros2_humble_Ros2Std_msgsMsgHeader_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Std_msgsMsgHeader_validate(roswasmc_bounded_2_std_msgs_msg_Header const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Std_msgsMsgHeader_wire_size(roswasmc_bounded_2_std_msgs_msg_Header const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Std_msgsMsgHeader_encode(roswasmc_bounded_2_std_msgs_msg_Header const* value,
                                                                   void* output,
                                                                   size_t capacity,
                                                                   size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Std_msgsMsgHeader_decode(void const* input, size_t length, roswasmc_bounded_2_std_msgs_msg_Header* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros2_humble_Ros2Interbotix_footswitch_msgsMsgFootswitchState_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros2_humble_Ros2Interbotix_footswitch_msgsMsgFootswitchState_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_footswitch_msgsMsgFootswitchState_validate(
        roswasmc_bounded_2_interbotix_footswitch_msgs_msg_FootswitchState const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_footswitch_msgsMsgFootswitchState_wire_size(
        roswasmc_bounded_2_interbotix_footswitch_msgs_msg_FootswitchState const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_footswitch_msgsMsgFootswitchState_encode(
        roswasmc_bounded_2_interbotix_footswitch_msgs_msg_FootswitchState const* value,
        void* output,
        size_t capacity,
        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_footswitch_msgsMsgFootswitchState_decode(
        void const* input,
        size_t length,
        roswasmc_bounded_2_interbotix_footswitch_msgs_msg_FootswitchState* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros2_humble_Ros2Interbotix_slate_msgsSrvSetLightState_Request_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros2_humble_Ros2Interbotix_slate_msgsSrvSetLightState_Request_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_slate_msgsSrvSetLightState_Request_validate(
        roswasmc_bounded_2_interbotix_slate_msgs_srv_SetLightState_Request const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_slate_msgsSrvSetLightState_Request_wire_size(
        roswasmc_bounded_2_interbotix_slate_msgs_srv_SetLightState_Request const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_slate_msgsSrvSetLightState_Request_encode(
        roswasmc_bounded_2_interbotix_slate_msgs_srv_SetLightState_Request const* value,
        void* output,
        size_t capacity,
        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_slate_msgsSrvSetLightState_Request_decode(
        void const* input,
        size_t length,
        roswasmc_bounded_2_interbotix_slate_msgs_srv_SetLightState_Request* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros2_humble_Ros2Interbotix_slate_msgsSrvSetLightState_Response_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros2_humble_Ros2Interbotix_slate_msgsSrvSetLightState_Response_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_slate_msgsSrvSetLightState_Response_validate(
        roswasmc_bounded_2_interbotix_slate_msgs_srv_SetLightState_Response const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_slate_msgsSrvSetLightState_Response_wire_size(
        roswasmc_bounded_2_interbotix_slate_msgs_srv_SetLightState_Response const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_slate_msgsSrvSetLightState_Response_encode(
        roswasmc_bounded_2_interbotix_slate_msgs_srv_SetLightState_Response const* value,
        void* output,
        size_t capacity,
        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_slate_msgsSrvSetLightState_Response_decode(
        void const* input,
        size_t length,
        roswasmc_bounded_2_interbotix_slate_msgs_srv_SetLightState_Response* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros2_humble_Ros2Interbotix_slate_msgsSrvSetString_Request_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros2_humble_Ros2Interbotix_slate_msgsSrvSetString_Request_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_slate_msgsSrvSetString_Request_validate(
        roswasmc_bounded_2_interbotix_slate_msgs_srv_SetString_Request const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_slate_msgsSrvSetString_Request_wire_size(
        roswasmc_bounded_2_interbotix_slate_msgs_srv_SetString_Request const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_slate_msgsSrvSetString_Request_encode(
        roswasmc_bounded_2_interbotix_slate_msgs_srv_SetString_Request const* value,
        void* output,
        size_t capacity,
        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t
        uwvm_trossen_ros2_humble_Ros2Interbotix_slate_msgsSrvSetString_Request_decode(void const* input,
                                                                                      size_t length,
                                                                                      roswasmc_bounded_2_interbotix_slate_msgs_srv_SetString_Request* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros2_humble_Ros2Interbotix_slate_msgsSrvSetString_Response_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros2_humble_Ros2Interbotix_slate_msgsSrvSetString_Response_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_slate_msgsSrvSetString_Response_validate(
        roswasmc_bounded_2_interbotix_slate_msgs_srv_SetString_Response const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_slate_msgsSrvSetString_Response_wire_size(
        roswasmc_bounded_2_interbotix_slate_msgs_srv_SetString_Response const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_slate_msgsSrvSetString_Response_encode(
        roswasmc_bounded_2_interbotix_slate_msgs_srv_SetString_Response const* value,
        void* output,
        size_t capacity,
        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t
        uwvm_trossen_ros2_humble_Ros2Interbotix_slate_msgsSrvSetString_Response_decode(void const* input,
                                                                                       size_t length,
                                                                                       roswasmc_bounded_2_interbotix_slate_msgs_srv_SetString_Response* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsMsgArmJoy_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsMsgArmJoy_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsMsgArmJoy_validate(roswasmc_bounded_2_interbotix_xs_msgs_msg_ArmJoy const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsMsgArmJoy_wire_size(roswasmc_bounded_2_interbotix_xs_msgs_msg_ArmJoy const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsMsgArmJoy_encode(roswasmc_bounded_2_interbotix_xs_msgs_msg_ArmJoy const* value,
                                                                             void* output,
                                                                             size_t capacity,
                                                                             size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsMsgArmJoy_decode(void const* input,
                                                                             size_t length,
                                                                             roswasmc_bounded_2_interbotix_xs_msgs_msg_ArmJoy* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsMsgHexJoy_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsMsgHexJoy_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsMsgHexJoy_validate(roswasmc_bounded_2_interbotix_xs_msgs_msg_HexJoy const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsMsgHexJoy_wire_size(roswasmc_bounded_2_interbotix_xs_msgs_msg_HexJoy const* value, size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsMsgHexJoy_encode(roswasmc_bounded_2_interbotix_xs_msgs_msg_HexJoy const* value,
                                                                             void* output,
                                                                             size_t capacity,
                                                                             size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsMsgHexJoy_decode(void const* input,
                                                                             size_t length,
                                                                             roswasmc_bounded_2_interbotix_xs_msgs_msg_HexJoy* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsMsgJointGroupCommand_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsMsgJointGroupCommand_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t
        uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsMsgJointGroupCommand_validate(roswasmc_bounded_2_interbotix_xs_msgs_msg_JointGroupCommand const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t
        uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsMsgJointGroupCommand_wire_size(roswasmc_bounded_2_interbotix_xs_msgs_msg_JointGroupCommand const* value,
                                                                                      size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t
        uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsMsgJointGroupCommand_encode(roswasmc_bounded_2_interbotix_xs_msgs_msg_JointGroupCommand const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsMsgJointGroupCommand_decode(void const* input,
                                                                                        size_t length,
                                                                                        roswasmc_bounded_2_interbotix_xs_msgs_msg_JointGroupCommand* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsMsgJointSingleCommand_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsMsgJointSingleCommand_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsMsgJointSingleCommand_validate(
        roswasmc_bounded_2_interbotix_xs_msgs_msg_JointSingleCommand const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsMsgJointSingleCommand_wire_size(
        roswasmc_bounded_2_interbotix_xs_msgs_msg_JointSingleCommand const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t
        uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsMsgJointSingleCommand_encode(roswasmc_bounded_2_interbotix_xs_msgs_msg_JointSingleCommand const* value,
                                                                                    void* output,
                                                                                    size_t capacity,
                                                                                    size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsMsgJointSingleCommand_decode(void const* input,
                                                                                         size_t length,
                                                                                         roswasmc_bounded_2_interbotix_xs_msgs_msg_JointSingleCommand* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsMsgJointTemps_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsMsgJointTemps_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsMsgJointTemps_validate(roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTemps const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsMsgJointTemps_wire_size(roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTemps const* value,
                                                                                    size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsMsgJointTemps_encode(roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTemps const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsMsgJointTemps_decode(void const* input,
                                                                                 size_t length,
                                                                                 roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTemps* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros2_humble_Ros2Trajectory_msgsMsgJointTrajectoryPoint_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros2_humble_Ros2Trajectory_msgsMsgJointTrajectoryPoint_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t
        uwvm_trossen_ros2_humble_Ros2Trajectory_msgsMsgJointTrajectoryPoint_validate(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t
        uwvm_trossen_ros2_humble_Ros2Trajectory_msgsMsgJointTrajectoryPoint_wire_size(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint const* value,
                                                                                      size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t
        uwvm_trossen_ros2_humble_Ros2Trajectory_msgsMsgJointTrajectoryPoint_encode(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Trajectory_msgsMsgJointTrajectoryPoint_decode(void const* input,
                                                                                        size_t length,
                                                                                        roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros2_humble_Ros2Trajectory_msgsMsgJointTrajectory_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros2_humble_Ros2Trajectory_msgsMsgJointTrajectory_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Trajectory_msgsMsgJointTrajectory_validate(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Trajectory_msgsMsgJointTrajectory_wire_size(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory const* value,
                                                                                      size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Trajectory_msgsMsgJointTrajectory_encode(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Trajectory_msgsMsgJointTrajectory_decode(void const* input,
                                                                                   size_t length,
                                                                                   roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand_validate(
        roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTrajectoryCommand const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand_wire_size(
        roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTrajectoryCommand const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand_encode(
        roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTrajectoryCommand const* value,
        void* output,
        size_t capacity,
        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand_decode(
        void const* input,
        size_t length,
        roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTrajectoryCommand* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsMsgLocobotJoy_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsMsgLocobotJoy_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsMsgLocobotJoy_validate(roswasmc_bounded_2_interbotix_xs_msgs_msg_LocobotJoy const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsMsgLocobotJoy_wire_size(roswasmc_bounded_2_interbotix_xs_msgs_msg_LocobotJoy const* value,
                                                                                    size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsMsgLocobotJoy_encode(roswasmc_bounded_2_interbotix_xs_msgs_msg_LocobotJoy const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsMsgLocobotJoy_decode(void const* input,
                                                                                 size_t length,
                                                                                 roswasmc_bounded_2_interbotix_xs_msgs_msg_LocobotJoy* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsMsgTurretJoy_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsMsgTurretJoy_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsMsgTurretJoy_validate(roswasmc_bounded_2_interbotix_xs_msgs_msg_TurretJoy const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsMsgTurretJoy_wire_size(roswasmc_bounded_2_interbotix_xs_msgs_msg_TurretJoy const* value,
                                                                                   size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsMsgTurretJoy_encode(roswasmc_bounded_2_interbotix_xs_msgs_msg_TurretJoy const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsMsgTurretJoy_decode(void const* input,
                                                                                size_t length,
                                                                                roswasmc_bounded_2_interbotix_xs_msgs_msg_TurretJoy* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsSrvMotorGains_Request_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsSrvMotorGains_Request_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsSrvMotorGains_Request_validate(
        roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Request const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsSrvMotorGains_Request_wire_size(
        roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Request const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t
        uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsSrvMotorGains_Request_encode(roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Request const* value,
                                                                                    void* output,
                                                                                    size_t capacity,
                                                                                    size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsSrvMotorGains_Request_decode(void const* input,
                                                                                         size_t length,
                                                                                         roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Request* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsSrvMotorGains_Response_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsSrvMotorGains_Response_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsSrvMotorGains_Response_validate(
        roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Response const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsSrvMotorGains_Response_wire_size(
        roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Response const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t
        uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsSrvMotorGains_Response_encode(roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Response const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsSrvMotorGains_Response_decode(void const* input,
                                                                                          size_t length,
                                                                                          roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Response* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsSrvOperatingModes_Request_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsSrvOperatingModes_Request_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsSrvOperatingModes_Request_validate(
        roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Request const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsSrvOperatingModes_Request_wire_size(
        roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Request const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsSrvOperatingModes_Request_encode(
        roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Request const* value,
        void* output,
        size_t capacity,
        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsSrvOperatingModes_Request_decode(
        void const* input,
        size_t length,
        roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Request* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsSrvOperatingModes_Response_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsSrvOperatingModes_Response_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsSrvOperatingModes_Response_validate(
        roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Response const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsSrvOperatingModes_Response_wire_size(
        roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Response const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsSrvOperatingModes_Response_encode(
        roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Response const* value,
        void* output,
        size_t capacity,
        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsSrvOperatingModes_Response_decode(
        void const* input,
        size_t length,
        roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Response* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsSrvReboot_Request_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsSrvReboot_Request_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsSrvReboot_Request_validate(roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Request const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsSrvReboot_Request_wire_size(roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Request const* value,
                                                                                        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsSrvReboot_Request_encode(roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Request const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsSrvReboot_Request_decode(void const* input,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Request* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsSrvReboot_Response_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsSrvReboot_Response_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsSrvReboot_Response_validate(roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Response const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsSrvReboot_Response_wire_size(roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Response const* value,
                                                                                         size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsSrvReboot_Response_encode(roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Response const* value,
                                                                                      void* output,
                                                                                      size_t capacity,
                                                                                      size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsSrvReboot_Response_decode(void const* input,
                                                                                      size_t length,
                                                                                      roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Response* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsSrvRegisterValues_Request_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsSrvRegisterValues_Request_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsSrvRegisterValues_Request_validate(
        roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Request const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsSrvRegisterValues_Request_wire_size(
        roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Request const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsSrvRegisterValues_Request_encode(
        roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Request const* value,
        void* output,
        size_t capacity,
        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsSrvRegisterValues_Request_decode(
        void const* input,
        size_t length,
        roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Request* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsSrvRegisterValues_Response_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsSrvRegisterValues_Response_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsSrvRegisterValues_Response_validate(
        roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Response const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsSrvRegisterValues_Response_wire_size(
        roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Response const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsSrvRegisterValues_Response_encode(
        roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Response const* value,
        void* output,
        size_t capacity,
        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsSrvRegisterValues_Response_decode(
        void const* input,
        size_t length,
        roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Response* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsSrvRobotInfo_Request_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsSrvRobotInfo_Request_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t
        uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsSrvRobotInfo_Request_validate(roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Request const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t
        uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsSrvRobotInfo_Request_wire_size(roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Request const* value,
                                                                                      size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t
        uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsSrvRobotInfo_Request_encode(roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Request const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsSrvRobotInfo_Request_decode(void const* input,
                                                                                        size_t length,
                                                                                        roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Request* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsSrvRobotInfo_Response_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsSrvRobotInfo_Response_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsSrvRobotInfo_Response_validate(
        roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Response const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsSrvRobotInfo_Response_wire_size(
        roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Response const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t
        uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsSrvRobotInfo_Response_encode(roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Response const* value,
                                                                                    void* output,
                                                                                    size_t capacity,
                                                                                    size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsSrvRobotInfo_Response_decode(void const* input,
                                                                                         size_t length,
                                                                                         roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Response* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsSrvTorqueEnable_Request_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsSrvTorqueEnable_Request_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsSrvTorqueEnable_Request_validate(
        roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Request const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsSrvTorqueEnable_Request_wire_size(
        roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Request const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsSrvTorqueEnable_Request_encode(
        roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Request const* value,
        void* output,
        size_t capacity,
        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t
        uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsSrvTorqueEnable_Request_decode(void const* input,
                                                                                      size_t length,
                                                                                      roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Request* value);

    /** @brief Return the exact target C object size for caller-owned storage.
     * @return Bytes required for one complete target-ABI record.
     */
    size_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsSrvTorqueEnable_Response_storage_size(void);

    /** @brief Return the target alignment required by the complete C record.
     * @return Positive alignment in bytes; allocation remains caller-owned.
     */
    size_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsSrvTorqueEnable_Response_storage_alignment(void);

    /** @brief Validate every original record field without writes, allocation or I/O.
     * @param value Borrowed live target record, or null for a refused value.
     * @return Zero for a complete valid value; 22 for invalid fields or null.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsSrvTorqueEnable_Response_validate(
        roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Response const* value);

    /** @brief Measure exact canonical bytes after validating the entire value.
     * @param value Borrowed complete target record, unchanged by this call.
     * @param length Disjoint aligned output; unchanged on validation failure.
     * @return Zero on success or 22 for invalid/overlapping storage.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsSrvTorqueEnable_Response_wire_size(
        roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Response const* value,
        size_t* length);

    /** @brief Encode the whole canonical record through its original transactional codec.
     * @param value Borrowed fully initialized record; no field is projected away.
     * @param output Disjoint writable guest byte capacity, owned by the caller.
     * @param capacity Available output bytes in the actual guest size_t domain.
     * @param length Disjoint aligned output byte count; unchanged on failure.
     * @return Zero, 22 for invalid/overlapping input, or 90 for insufficient capacity.
     */
    uint32_t uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsSrvTorqueEnable_Response_encode(
        roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Response const* value,
        void* output,
        size_t capacity,
        size_t* length);

    /** @brief Decode exact complete bytes and commit only a fully validated record.
     * @param input Borrowed disjoint canonical guest bytes; unchanged by this call.
     * @param length Exact frame extent; truncation and trailing bytes are refused.
     * @param value Disjoint aligned caller record; unchanged when decoding fails.
     * @return Zero for complete success or the original canonical codec error.
     */
    uint32_t
        uwvm_trossen_ros2_humble_Ros2Interbotix_xs_msgsSrvTorqueEnable_Response_decode(void const* input,
                                                                                       size_t length,
                                                                                       roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Response* value);

#ifdef __cplusplus
}
#endif
#endif
