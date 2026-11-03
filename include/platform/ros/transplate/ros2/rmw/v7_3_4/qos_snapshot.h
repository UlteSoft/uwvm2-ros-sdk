/**
 * @file qos_snapshot.h
 * @brief Copy the existing UMRE-v1 effective-endpoint QoS values in guest memory.
 *
 * This parser grants no authority. Expected binding values must come from the
 * source-qualified live runtime context. Every native operation reauthorizes
 * its real caller and current capability; these copied numbers are not tokens.
 * Named/declaration native profile export and release/source provenance require
 * a separate qualified runtime binding and are not implemented by this codec.
 */
#ifndef UWVM_ROS2_RMW_7_3_4_QOS_SNAPSHOT_H
#define UWVM_ROS2_RMW_7_3_4_QOS_SNAPSHOT_H
#include <stddef.h>
#include <stdint.h>
#include <string.h>
#include <limits.h>
#ifdef __cplusplus
extern "C" {
#endif

enum {
    UWVM_ROS_QOS_OK = 0, UWVM_ROS_QOS_FOREIGN_BINDING = 13,
    UWVM_ROS_QOS_INVALID = 22, UWVM_ROS_QOS_OVERFLOW = 75,
    UWVM_ROS_QOS_UNSUPPORTED_VERSION = 95,
    UWVM_ROS_QOS_UMRE_BYTES = 256,
    UWVM_ROS_QOS_DURATION_FINITE = 0,
    UWVM_ROS_QOS_DURATION_UNSPECIFIED = 1,
    UWVM_ROS_QOS_DURATION_INFINITE = 2,
    UWVM_ROS_QOS_DURATION_BEST_AVAILABLE = 3,
    UWVM_ROS_QOS_FIELD_DEADLINE = 1,
    UWVM_ROS_QOS_FIELD_LIFESPAN = 2,
    UWVM_ROS_QOS_FIELD_LIVELINESS_LEASE = 3
};
typedef struct uwvm_ros2_rmw_qos_duration {
    uint64_t seconds, nanoseconds;
} uwvm_ros2_rmw_qos_duration;
typedef struct uwvm_ros2_rmw_qos_values {
    /* Protocol values, not memcpy'd native enum representations. */
    uint32_t history, reliability, durability, liveliness;
    uint64_t depth;
    uwvm_ros2_rmw_qos_duration deadline, lifespan, lease;
    uint8_t avoid_ros_namespace_conventions;
} uwvm_ros2_rmw_qos_values;
typedef struct uwvm_ros2_rmw_qos_binding {
    uint64_t source, module_instance, runtime_generation, native_session;
    /* Zero only when consuming a first activation; inspect requires exact ID. */
    uint64_t incarnation;
} uwvm_ros2_rmw_qos_binding;
typedef struct uwvm_ros2_rmw_qos_snapshot {
    uwvm_ros2_rmw_qos_binding binding;
    uint8_t command, role, profiles, gid_size;
    uwvm_ros2_rmw_qos_values values[2];
    uint8_t gid[32];
} uwvm_ros2_rmw_qos_snapshot;

static inline uint64_t uwvm_ros2_qos_detail_get_le(const uint8_t * p, size_t n)
{
    uint64_t value = 0;
    for (size_t i = 0; i < n; ++i) value |= (uint64_t)p[i] << (8u * i);
    return value;
}
static inline int uwvm_ros2_qos_detail_zero(const uint8_t * p, size_t n)
{
    for (size_t i = 0; i < n; ++i) if (p[i] != 0) return 0;
    return 1;
}
static inline int uwvm_ros2_qos_detail_full_handle(uint64_t h)
{
    return (uint32_t)h != 0 && (uint32_t)(h >> 32) != 0;
}
static inline int uwvm_ros2_qos_detail_binding_valid(const uwvm_ros2_rmw_qos_binding * b)
{
    return b && uwvm_ros2_qos_detail_full_handle(b->source) && b->module_instance != 0 &&
        b->runtime_generation != 0 && b->native_session != 0;
}
static inline int uwvm_ros2_qos_detail_copy_values(
    const uint8_t * p, uwvm_ros2_rmw_qos_values * output)
{
    uwvm_ros2_rmw_qos_values q;
    memset(&q, 0, sizeof(q));
    q.history = (uint32_t)uwvm_ros2_qos_detail_get_le(p, 4);
    q.reliability = (uint32_t)uwvm_ros2_qos_detail_get_le(p + 4, 4);
    q.durability = (uint32_t)uwvm_ros2_qos_detail_get_le(p + 8, 4);
    q.liveliness = (uint32_t)uwvm_ros2_qos_detail_get_le(p + 12, 4);
    q.depth = uwvm_ros2_qos_detail_get_le(p + 16, 8);
    q.deadline.seconds = uwvm_ros2_qos_detail_get_le(p + 24, 8);
    q.deadline.nanoseconds = uwvm_ros2_qos_detail_get_le(p + 32, 8);
    q.lifespan.seconds = uwvm_ros2_qos_detail_get_le(p + 40, 8);
    q.lifespan.nanoseconds = uwvm_ros2_qos_detail_get_le(p + 48, 8);
    q.lease.seconds = uwvm_ros2_qos_detail_get_le(p + 56, 8);
    q.lease.nanoseconds = uwvm_ros2_qos_detail_get_le(p + 64, 8);
    q.avoid_ros_namespace_conventions = p[72];
    if (q.history < 1 || q.history > 2 || q.reliability < 1 || q.reliability > 2 ||
        q.durability < 1 || q.durability > 2 || q.liveliness < 1 || q.liveliness > 2 ||
        (q.history == 1 && q.depth == 0) ||
        q.deadline.nanoseconds >= UINT64_C(1000000000) ||
        q.lifespan.nanoseconds >= UINT64_C(1000000000) ||
        q.lease.nanoseconds >= UINT64_C(1000000000) ||
        p[72] > 1 || !uwvm_ros2_qos_detail_zero(p + 73, 7))
        return UWVM_ROS_QOS_INVALID;
    *output = q;
    return UWVM_ROS_QOS_OK;
}
/** Snapshot values are independent copies; a rejected record leaves output
 * byte-for-byte unchanged. This is a parser/association check, not proof of a
 * current runtime caller, a grant, an unrevoked handle or native source version.
 */
static inline int uwvm_ros2_rmw_qos_snapshot_decode(
    const uint8_t * bytes, size_t length,
    const uwvm_ros2_rmw_qos_binding * expected,
    uwvm_ros2_rmw_qos_snapshot * output)
{
    if (!bytes || !output || length != UWVM_ROS_QOS_UMRE_BYTES ||
        !uwvm_ros2_qos_detail_binding_valid(expected)) return UWVM_ROS_QOS_INVALID;
    if (uwvm_ros2_qos_detail_get_le(bytes, 4) != UINT32_C(0x45524d55))
        return UWVM_ROS_QOS_INVALID;
    if (uwvm_ros2_qos_detail_get_le(bytes + 4, 2) != 1)
        return UWVM_ROS_QOS_UNSUPPORTED_VERSION;
    if (uwvm_ros2_qos_detail_get_le(bytes + 8, 4) != UWVM_ROS_QOS_UMRE_BYTES ||
        bytes[7] != 2 || bytes[15] != 0 ||
        !uwvm_ros2_qos_detail_zero(bytes + 56, 8)) return UWVM_ROS_QOS_INVALID;
    uwvm_ros2_rmw_qos_snapshot s;
    memset(&s, 0, sizeof(s));
    s.command = bytes[6]; s.role = bytes[12];
    s.profiles = bytes[13]; s.gid_size = bytes[14];
    s.binding.source = uwvm_ros2_qos_detail_get_le(bytes + 16, 8);
    s.binding.module_instance = uwvm_ros2_qos_detail_get_le(bytes + 24, 8);
    s.binding.runtime_generation = uwvm_ros2_qos_detail_get_le(bytes + 32, 8);
    s.binding.native_session = uwvm_ros2_qos_detail_get_le(bytes + 40, 8);
    s.binding.incarnation = uwvm_ros2_qos_detail_get_le(bytes + 48, 8);
    if ((s.command != 1 && s.command != 2) || s.role < 1 || s.role > 4 ||
        !uwvm_ros2_qos_detail_binding_valid(&s.binding) || s.binding.incarnation == 0 ||
        (s.command == 2 && expected->incarnation == 0) ||
        s.profiles != (s.role >= 3 ? 2 : 1) || s.gid_size > 32 ||
        (s.role == 1 && s.gid_size == 0) ||
        ((s.role == 2 || s.role == 4) && s.gid_size != 0))
        return UWVM_ROS_QOS_INVALID;
    if (s.binding.source != expected->source ||
        s.binding.module_instance != expected->module_instance ||
        s.binding.runtime_generation != expected->runtime_generation ||
        s.binding.native_session != expected->native_session ||
        (expected->incarnation != 0 && s.binding.incarnation != expected->incarnation))
        return UWVM_ROS_QOS_FOREIGN_BINDING;
    for (size_t i = 0; i < s.profiles; ++i)
        if (uwvm_ros2_qos_detail_copy_values(bytes + 64 + 80 * i, &s.values[i]) != 0)
            return UWVM_ROS_QOS_INVALID;
    if (!uwvm_ros2_qos_detail_zero(bytes + 64 + 80 * s.profiles, 80 * (2 - s.profiles)) ||
        !uwvm_ros2_qos_detail_zero(bytes + 224 + s.gid_size, 32 - s.gid_size))
        return UWVM_ROS_QOS_INVALID;
    memcpy(s.gid, bytes + 224, 32);
    *output = s;
    return UWVM_ROS_QOS_OK;
}
static inline int uwvm_ros2_rmw_qos_depth_i32(uint64_t depth, int32_t * output)
{
    if (!output) return UWVM_ROS_QOS_INVALID;
    if (depth > INT32_MAX) return UWVM_ROS_QOS_OVERFLOW;
    *output = (int32_t)depth;
    return UWVM_ROS_QOS_OK;
}
/** RMW7.3.4 AUTOMATIC=1 and MANUAL_BY_TOPIC=3. UMRE MANUAL_BY_TOPIC=2. */
static inline int uwvm_ros2_rmw_qos_native_liveliness(uint32_t value, uint32_t * output)
{
    if (!output || value < 1 || value > 2) return UWVM_ROS_QOS_INVALID;
    *output = value == 1 ? 1 : 3;
    return UWVM_ROS_QOS_OK;
}
/** Classification preserves units and the exact pinned special tuples.
 * BEST_AVAILABLE exists for deadline/lease; the equal lifespan tuple is finite.
 */
static inline int uwvm_ros2_rmw_qos_duration_classify(
    uwvm_ros2_rmw_qos_duration duration, unsigned field, unsigned * output)
{
    if (!output || field < 1 || field > 3 ||
        duration.nanoseconds >= UINT64_C(1000000000)) return UWVM_ROS_QOS_INVALID;
    unsigned value = UWVM_ROS_QOS_DURATION_FINITE;
    if (duration.seconds == 0 && duration.nanoseconds == 0)
        value = UWVM_ROS_QOS_DURATION_UNSPECIFIED;
    else if (duration.seconds == UINT64_C(9223372036) && duration.nanoseconds == UINT64_C(854775807))
        value = UWVM_ROS_QOS_DURATION_INFINITE;
    else if (field != UWVM_ROS_QOS_FIELD_LIFESPAN &&
             duration.seconds == UINT64_C(9223372036) && duration.nanoseconds == UINT64_C(854775806))
        value = UWVM_ROS_QOS_DURATION_BEST_AVAILABLE;
    *output = value;
    return UWVM_ROS_QOS_OK;
}
#ifdef __cplusplus
}
#endif
#endif
