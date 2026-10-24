/* SPDX-License-Identifier: Apache-2.0 */
/** @file json.h
 * @brief Pure complete-record JSON for typed AimDK observation results.
 * @details Link observation_json.c into the same Wasm guest. These functions
 * acquire no capability and perform no I/O. They validate every original field
 * before rendering. All int64/uint64 values use exact decimal JSON strings.
 */
#ifndef UWVM_AGIBOT_C_JSON_H
#define UWVM_AGIBOT_C_JSON_H
#include <agibot/c/client.h>
#ifdef __cplusplus
extern "C"
{
#endif
    /** @brief Serialize a complete original GetMcAction response.
     * @param value Borrowed, aligned original record; validated before reading fields.
     * @param output Exclusive writable output bytes, disjoint from value and written.
     * @param capacity Available bytes, 1..65536; 65536 fits every selected record.
     * @param written Distinct aligned uint32_t; initialized to zero after range checks.
     * @return Zero on complete JSON, 22 invalid argument/value, 90 insufficient space.
     * @details Output is not NUL terminated. On failure written remains zero and any
     * output prefix must be discarded. No pointer escapes; concurrent calls require
     * disjoint outputs and immutable borrowed inputs. Original units/frames remain.
     */
    uint32_t agibot_mode_json(roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_Response const* value, uint8_t* output, uint32_t capacity, uint32_t* written);
    /** @brief Serialize every original McCommonState field.
     * @param value Complete immutable original state, validated before rendering.
     * @param output Exclusive output bytes, disjoint from all other arguments.
     * @param capacity Available output bytes, 1..65536.
     * @param written Distinct uint32_t receiving the complete extent on success.
     * @return Zero, 22 invalid argument/value, or 90 insufficient capacity.
     * @details Ownership, thread-safety and failure publication match agibot_mode_json.
     */
    uint32_t agibot_state_json(roswasmc_bounded_2_aimdk_msgs_msg_McCommonState const* value, uint8_t* output, uint32_t capacity, uint32_t* written);
    /** @brief Serialize complete bounded resources, versions, filenames and timestamps.
     * @param value Complete original GetRobotResources response, retained by caller.
     * @param output Exclusive output bytes, disjoint from all other arguments.
     * @param capacity Available bytes, 1..65536.
     * @param written Distinct uint32_t receiving the complete initialized extent.
     * @return Zero, 22 invalid argument/value, or 90 insufficient capacity.
     * @details Vendor status remains an original int64 field; no response is projected.
     */
    uint32_t
        agibot_resources_json(roswasmc_bounded_2_aimdk_msgs_srv_GetRobotResources_Response const* value, uint8_t* output, uint32_t capacity, uint32_t* written);
#ifdef __cplusplus
}
#endif
#endif
