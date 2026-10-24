/** @file Generated bounded-v2 canonical values; no native ROS serialization or authority.
 * Every dynamic field has inline caller-owned capacity. Encode validates and measures
 * the full value before writes; decode commits one temporary only after full validation.
 * Supply distinct record, byte and size-output storage; overlap is explicitly refused.
 * Empty Service/Action components use a C layout dummy that is never a wire field. */
#ifndef UWVM_ROS_BOUNDED_RECORDS_4F1168DED03C6B1920FBC68575DE4E38561B413AF298ED9305BFAD64954708F1
#define UWVM_ROS_BOUNDED_RECORDS_4F1168DED03C6B1920FBC68575DE4E38561B413AF298ED9305BFAD64954708F1
#include <stdint.h>
#include <stddef.h>
#include <float.h>
#include <limits.h>
#ifndef UWVM_ROS_BOUNDED_CODEC_HELPERS
# define UWVM_ROS_BOUNDED_CODEC_HELPERS
# define UWVM_BOUNDED_INVALID 22u
# define UWVM_BOUNDED_TOO_LARGE 90u
# if defined(__cplusplus) && __cplusplus >= 201103L
#  define UWVM_BOUNDED_ASSERT(x) static_assert(x, "canonical representation required")
# elif defined(__cplusplus)
#  define UWVM_BOUNDED_ASSERT(x) typedef char uwvm_bounded_representation_required[(x) ? 1 : -1]
# else
#  define UWVM_BOUNDED_ASSERT(x) _Static_assert(x, "canonical representation required")
# endif
UWVM_BOUNDED_ASSERT(CHAR_BIT == 8 && sizeof(float) == 4 && sizeof(double) == 8 && FLT_RADIX == 2 && FLT_MANT_DIG == 24 && DBL_MANT_DIG == 53 &&
                    FLT_MAX_EXP == 128 && DBL_MAX_EXP == 1024);

/** @brief Copy exact primitive/string bytes; compiler intrinsics avoid byte-at-a-time copies. */
inline static void uwvm_bounded_copy(void* out, void const* in, size_t n)
{
# if defined(__GNUC__) || defined(__clang__)
    __builtin_memcpy(out, in, n);
# else
    size_t i;
    for(i = 0; i < n; ++i)
    {
        ((unsigned char*)out)[i] = ((unsigned char const*)in)[i];
    }
# endif
}

inline static uint64_t uwvm_bounded_get(unsigned char const* p, unsigned n)
{
    uint64_t v = 0;
    unsigned i;
    for(i = 0; i < n; ++i)
    {
        v |= (uint64_t)p[i] << (8 * i);
    }
    return v;
}

inline static void uwvm_bounded_put(unsigned char* p, uint64_t v, unsigned n)
{
    unsigned i;
    for(i = 0; i < n; ++i)
    {
        p[i] = (unsigned char)(v >> (8 * i));
    }
}

/** @brief Strict Unicode scalar UTF-8, rejecting embedded NUL as required by this profile. */
inline static int uwvm_bounded_utf8(unsigned char const* p, size_t n)
{
    size_t i = 0;
    while(i < n)
    {
        unsigned b = p[i++], k, code, minimum;
        if(!b)
        {
            return 0;
        }
        if(b < 128)
        {
            continue;
        }
        if(b >= 194 && b <= 223)
        {
            k = 1;
            code = b & 31;
            minimum = 128;
        }
        else if(b >= 224 && b <= 239)
        {
            k = 2;
            code = b & 15;
            minimum = 2048;
        }
        else if(b >= 240 && b <= 244)
        {
            k = 3;
            code = b & 7;
            minimum = 65536;
        }
        else
        {
            return 0;
        }
        if(k > n - i)
        {
            return 0;
        }
        while(k--)
        {
            b = p[i++];
            if((b & 192) != 128)
            {
                return 0;
            }
            code = (code << 6) | (b & 63);
        }
        if(code < minimum || code > 1114111 || (code >= 55296 && code <= 57343))
        {
            return 0;
        }
    }
    return 1;
}

inline static int uwvm_bounded_overlap(void const* a, size_t an, void const* b, size_t bn)
{
    uintptr_t x = (uintptr_t)a, y = (uintptr_t)b;
    if((an && !a) || (bn && !b) || an > UINTPTR_MAX - x || bn > UINTPTR_MAX - y)
    {
        return 1;
    }
    return an && bn && x < y + bn && y < x + an;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_0 != 0xb03318a2UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_1 != 0x94e6ce2cUL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_2 != 0xea538a13UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_3 != 0x716b9ef9UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_4 != 0xab978f08UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_5 != 0xf6305c24UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_6 != 0x1c187455UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_7 != 0x11fa68ebUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_0 0xb03318a2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_1 0x94e6ce2cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_2 0xea538a13UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_3 0x716b9ef9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_4 0xab978f08UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_5 0xf6305c24UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_6 0x1c187455UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_7 0x11fa68ebUL

/** @brief Complete ROS2 builtin_interfaces/msg/Time value; no field projects away native data. */
typedef struct roswasmc_bounded_2_builtin_interfaces_msg_Time
{
    /**
     * @brief This message communicates ROS Time defined here:
     * https://design.ros2.org/articles/clock_and_time.html The seconds component, valid over all int32
     * values.
     * @details Original builtin_interfaces/msg/Time.sec; native type int32. Scalar value. Storage belongs
     * to the complete value and acquires no ROS resource.
     */
    int32_t sec;
    /**
     * @brief The nanoseconds component, valid in the range [0, 1e9), to be added to the seconds component.
     * e.g. The time -1.7 seconds is represented as {sec: -2, nanosec: 3e8} The time 1.7 seconds is
     * represented as {sec: 1, nanosec: 7e8}
     * @details Original builtin_interfaces/msg/Time.nanosec; native type uint32. Scalar value. Storage
     * belongs to the complete value and acquires no ROS resource.
     */
    uint32_t nanosec;
} roswasmc_bounded_2_builtin_interfaces_msg_Time;

# define ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_MAX_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_CODEC_IDENTITY "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_builtin_interfaces_msg_Time_valid(roswasmc_bounded_2_builtin_interfaces_msg_Time const* value)
{
    if(!value)
    {
        return 0;
    }
    if(value->nanosec >= 1000000000)
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_2_builtin_interfaces_msg_Time_wire_size(roswasmc_bounded_2_builtin_interfaces_msg_Time const* value)
{
    size_t n = 0;
    n += 4;
    n += 4;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_2_builtin_interfaces_msg_Time_write_fields(roswasmc_bounded_2_builtin_interfaces_msg_Time const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->sec, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->nanosec, 4);
    *offset += 4;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_2_builtin_interfaces_msg_Time_read_fields(unsigned char const* p,
                                                                             size_t n,
                                                                             size_t* offset,
                                                                             roswasmc_bounded_2_builtin_interfaces_msg_Time* value)
{
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->sec, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->nanosec, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_2_builtin_interfaces_msg_Time_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_2_builtin_interfaces_msg_Time_encode(roswasmc_bounded_2_builtin_interfaces_msg_Time const* value,
                                                                             void* output,
                                                                             size_t capacity,
                                                                             size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_builtin_interfaces_msg_Time_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_builtin_interfaces_msg_Time_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_builtin_interfaces_msg_Time_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_builtin_interfaces_msg_Time_decode(void const* input, size_t length, roswasmc_bounded_2_builtin_interfaces_msg_Time* value)
{
    roswasmc_bounded_2_builtin_interfaces_msg_Time next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 8u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_builtin_interfaces_msg_Time_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_GOAL)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_GOAL_0 != 0xaf228308UL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_GOAL_1 != 0xa89526eeUL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_GOAL_2 != 0x3180b83fUL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_GOAL_3 != 0xc824f68bUL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_GOAL_4 != 0xc5a136c0UL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_GOAL_5 != 0xbd5ecc3eUL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_GOAL_6 != 0x59d23360UL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_GOAL_7 != 0x065089c4UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_GOAL 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_GOAL_0 0xaf228308UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_GOAL_1 0xa89526eeUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_GOAL_2 0x3180b83fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_GOAL_3 0xc824f68bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_GOAL_4 0xc5a136c0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_GOAL_5 0xbd5ecc3eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_GOAL_6 0x59d23360UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_GOAL_7 0x065089c4UL

/** @brief Complete ROS2 flexiv_msgs/action/ErrorRecovery_Goal value; no field projects away native data. */
typedef struct roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Goal
{
    /**
     * @brief Recover the robot from a fault back to an operational state. On success the robot is enabled,
     * operational and in IDLE control mode. Restoring the control mode is deliberately left to a
     * controller restart, which re-initializes the controller's own setpoint and so cannot apply a stale
     * pre-fault command. Run RunAutoRecovery() if the robot is in recovery state after a joint position
     * limit violation. This moves the involved joints slowly back into the allowed range and requires a
     * robot reboot afterwards, so it is opt-in.
     * @details Original flexiv_msgs/action/ErrorRecovery_Goal.run_auto_recovery; native type bool. Scalar
     * value. Declared original default False. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    uint8_t run_auto_recovery;
} roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Goal;

# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_GOAL_MAX_WIRE_BYTES 1u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_GOAL_MIN_WIRE_BYTES 1u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_GOAL_CODEC_IDENTITY "UWVMROS1_255a9d152d16f6abe76bca261fbd19c385548a2f64dd421c58c74dc19f1bfd41"

/** @brief Explicit declared-default initialization; ordinary C/C++ zero aggregates stay zero.
 * Nested/fixed elements are initialized independently; sequence lengths stay zero.
 * This initializer performs no I/O, registration, allocation or capability operation. */
inline static uint32_t roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Goal_default(roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Goal* value)
{
    roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Goal next = {0};
    if(!value)
    {
        return UWVM_BOUNDED_INVALID;
    }
    next.run_auto_recovery = 0;
    *value = next;
    return 0;
}

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Goal_valid(roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Goal const* value)
{
    if(!value)
    {
        return 0;
    }
    if(value->run_auto_recovery > 1)
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Goal_wire_size(roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Goal const* value)
{
    size_t n = 0;
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Goal_write_fields(roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Goal const* value,
                                                                                         unsigned char* p,
                                                                                         size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->run_auto_recovery, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Goal_read_fields(unsigned char const* p,
                                                                                       size_t n,
                                                                                       size_t* offset,
                                                                                       roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Goal* value)
{
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->run_auto_recovery, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Goal_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Goal_encode(roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Goal const* value,
                                                                                       void* output,
                                                                                       size_t capacity,
                                                                                       size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Goal_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Goal_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Goal_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Goal_decode(void const* input,
                                                                                       size_t length,
                                                                                       roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Goal* value)
{
    roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Goal next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 1u || length > 1u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Goal_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_RESULT)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_RESULT_0 != 0xa189de3eUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_RESULT_1 != 0x6132c2eaUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_RESULT_2 != 0xcf887bb8UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_RESULT_3 != 0x2d1ca4c2UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_RESULT_4 != 0x7e56cc94UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_RESULT_5 != 0x2172153eUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_RESULT_6 != 0x617bf85aUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_RESULT_7 != 0xb741a5a6UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_RESULT 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_RESULT_0 0xa189de3eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_RESULT_1 0x6132c2eaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_RESULT_2 0xcf887bb8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_RESULT_3 0x2d1ca4c2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_RESULT_4 0x7e56cc94UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_RESULT_5 0x2172153eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_RESULT_6 0x617bf85aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_RESULT_7 0xb741a5a6UL

/** @brief UTF-8 byte storage for flexiv_msgs/action/ErrorRecovery_Result.message; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Result_message_text;

/** @brief Complete ROS2 flexiv_msgs/action/ErrorRecovery_Result value; no field projects away native data. */
typedef struct roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Result
{
    /**
     * @brief Retain the complete original bool field.
     * @details Original flexiv_msgs/action/ErrorRecovery_Result.success; native type bool. Scalar value.
     * Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t success;
    /**
     * @brief Operator-facing explanation of the outcome
     * @details Original flexiv_msgs/action/ErrorRecovery_Result.message; native type string. Scalar value.
     * UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Result_message_text message;
    /**
     * @brief True when the robot is operational again but controllers must be restarted to resume motion
     * @details Original flexiv_msgs/action/ErrorRecovery_Result.requires_controller_restart; native type
     * bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t requires_controller_restart;
    /**
     * @brief Policy that applied to the condition found, values defined in RecoveryPolicy.msg
     * @details Original flexiv_msgs/action/ErrorRecovery_Result.recovery_policy; native type uint8. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t recovery_policy;
} roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Result;

# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_RESULT_MAX_WIRE_BYTES 263u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_RESULT_MIN_WIRE_BYTES 7u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_RESULT_CODEC_IDENTITY "UWVMROS1_e1f54f9716ae64b5da8c1463f36379fbfffe35ea983a25dcb9db6e09771fcedc"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Result_valid(roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Result const* value)
{
    if(!value)
    {
        return 0;
    }
    if(value->success > 1)
    {
        return 0;
    }
    if(value->message.size > 256u || !uwvm_bounded_utf8(value->message.data, value->message.size))
    {
        return 0;
    }
    if(value->requires_controller_restart > 1)
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t
    roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Result_wire_size(roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Result const* value)
{
    size_t n = 0;
    n += 1;
    n += 4 + value->message.size;
    n += 1;
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Result_write_fields(roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Result const* value,
                                                                            unsigned char* p,
                                                                            size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->success, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, value->message.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->message.data, value->message.size);
    *offset += value->message.size;
    uwvm_bounded_put(p + *offset, (uint64_t)value->requires_controller_restart, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->recovery_policy, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Result_read_fields(unsigned char const* p,
                                                                                         size_t n,
                                                                                         size_t* offset,
                                                                                         roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Result* value)
{
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->success, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->message.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->message.size > 256u || value->message.size > n - *offset)
    {
        return 0;
    }
    uwvm_bounded_copy(value->message.data, p + *offset, value->message.size);
    *offset += value->message.size;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->requires_controller_restart, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->recovery_policy, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Result_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Result_encode(roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Result const* value,
                                                                      void* output,
                                                                      size_t capacity,
                                                                      size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Result_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Result_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Result_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Result_decode(void const* input,
                                                                                         size_t length,
                                                                                         roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Result* value)
{
    roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Result next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 7u || length > 263u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Result_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_FEEDBACK)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_FEEDBACK_0 != 0x800a520eUL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_FEEDBACK_1 != 0x9ba1117bUL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_FEEDBACK_2 != 0x3ebc9c5aUL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_FEEDBACK_3 != 0xad4db552UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_FEEDBACK_4 != 0x1e2adcf7UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_FEEDBACK_5 != 0xcac10074UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_FEEDBACK_6 != 0x2a69f5d2UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_FEEDBACK_7 != 0x7efbc30cUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_FEEDBACK 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_FEEDBACK_0 0x800a520eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_FEEDBACK_1 0x9ba1117bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_FEEDBACK_2 0x3ebc9c5aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_FEEDBACK_3 0xad4db552UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_FEEDBACK_4 0x1e2adcf7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_FEEDBACK_5 0xcac10074UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_FEEDBACK_6 0x2a69f5d2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_FEEDBACK_7 0x7efbc30cUL

/** @brief UTF-8 byte storage for flexiv_msgs/action/ErrorRecovery_Feedback.recovery_state_name; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Feedback_recovery_state_name_text;

/** @brief Complete ROS2 flexiv_msgs/action/ErrorRecovery_Feedback value; no field projects away native data. */
typedef struct roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Feedback
{
    /**
     * @brief Retain the complete original uint8 field.
     * @details Original flexiv_msgs/action/ErrorRecovery_Feedback.recovery_state; native type uint8.
     * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t recovery_state;
    /**
     * @brief Human-readable name of the recovery state above
     * @details Original flexiv_msgs/action/ErrorRecovery_Feedback.recovery_state_name; native type string.
     * Scalar value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
     * acquires no ROS resource.
     */
    roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Feedback_recovery_state_name_text recovery_state_name;
    /**
     * @brief Seconds elapsed since the recovery started
     * @details Original flexiv_msgs/action/ErrorRecovery_Feedback.elapsed_seconds; native type float32.
     * Scalar value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value
     * and acquires no ROS resource.
     */
    float elapsed_seconds;
} roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Feedback;

# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_FEEDBACK_MAX_WIRE_BYTES 265u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_FEEDBACK_MIN_WIRE_BYTES 9u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_FEEDBACK_CODEC_IDENTITY "UWVMROS1_bf87aae8f76ba18d46ab7985e48a667f6b1ed99a403aa90921c80ae4d4ac197a"
/** @brief Original scalar constant STATE_IDLE=0; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_FEEDBACK_STATE_IDLE UINT32_C(0)
/** @brief Original scalar constant STATE_CLASSIFY=1; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_FEEDBACK_STATE_CLASSIFY UINT32_C(1)
/** @brief Original scalar constant STATE_STOP=2; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_FEEDBACK_STATE_STOP UINT32_C(2)
/** @brief Original scalar constant STATE_CLEAR_FAULT=3; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_FEEDBACK_STATE_CLEAR_FAULT UINT32_C(3)
/** @brief Original scalar constant STATE_WAIT_FAULT_CLEARED=4; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_FEEDBACK_STATE_WAIT_FAULT_CLEARED UINT32_C(4)
/** @brief Original scalar constant STATE_ENABLE=5; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_FEEDBACK_STATE_ENABLE UINT32_C(5)
/** @brief Original scalar constant STATE_WAIT_OPERATIONAL=6; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_FEEDBACK_STATE_WAIT_OPERATIONAL UINT32_C(6)
/** @brief Original scalar constant STATE_UNLOCK_EXTERNAL_AXES=7; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_FEEDBACK_STATE_UNLOCK_EXTERNAL_AXES UINT32_C(7)
/** @brief Original scalar constant STATE_RUN_AUTO_RECOVERY=8; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_FEEDBACK_STATE_RUN_AUTO_RECOVERY UINT32_C(8)
/** @brief Original scalar constant STATE_COMPLETE=9; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_FEEDBACK_STATE_COMPLETE UINT32_C(9)
/** @brief Original scalar constant STATE_FAILED=10; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_FEEDBACK_STATE_FAILED UINT32_C(10)

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Feedback_valid(roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Feedback const* value)
{
    if(!value)
    {
        return 0;
    }
    if(value->recovery_state_name.size > 256u || !uwvm_bounded_utf8(value->recovery_state_name.data, value->recovery_state_name.size))
    {
        return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->elapsed_seconds, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t
    roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Feedback_wire_size(roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Feedback const* value)
{
    size_t n = 0;
    n += 1;
    n += 4 + value->recovery_state_name.size;
    n += 4;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Feedback_write_fields(roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Feedback const* value,
                                                                              unsigned char* p,
                                                                              size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->recovery_state, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, value->recovery_state_name.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->recovery_state_name.data, value->recovery_state_name.size);
    *offset += value->recovery_state_name.size;
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->elapsed_seconds, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Feedback_read_fields(unsigned char const* p,
                                                                                           size_t n,
                                                                                           size_t* offset,
                                                                                           roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Feedback* value)
{
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->recovery_state, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->recovery_state_name.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->recovery_state_name.size > 256u || value->recovery_state_name.size > n - *offset)
    {
        return 0;
    }
    uwvm_bounded_copy(value->recovery_state_name.data, p + *offset, value->recovery_state_name.size);
    *offset += value->recovery_state_name.size;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->elapsed_seconds, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Feedback_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Feedback_encode(roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Feedback const* value,
                                                                        void* output,
                                                                        size_t capacity,
                                                                        size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Feedback_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Feedback_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Feedback_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Feedback_decode(void const* input,
                                                                                           size_t length,
                                                                                           roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Feedback* value)
{
    roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Feedback next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 9u || length > 265u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Feedback_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_GOAL)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_GOAL_0 != 0xf9b17ed7UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_GOAL_1 != 0x4187848dUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_GOAL_2 != 0xb0103bbdUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_GOAL_3 != 0x724fea65UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_GOAL_4 != 0x8c38b3f2UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_GOAL_5 != 0x003e8ae4UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_GOAL_6 != 0x03f94b62UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_GOAL_7 != 0x5e779d02UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_GOAL 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_GOAL_0 0xf9b17ed7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_GOAL_1 0x4187848dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_GOAL_2 0xb0103bbdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_GOAL_3 0x724fea65UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_GOAL_4 0x8c38b3f2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_GOAL_5 0x003e8ae4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_GOAL_6 0x03f94b62UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_GOAL_7 0x5e779d02UL

/** @brief Complete ROS2 flexiv_msgs/action/Grasp_Goal value; no field projects away native data. */
typedef struct roswasmc_bounded_2_flexiv_msgs_action_Grasp_Goal
{
    /**
     * @brief N
     * @details Original flexiv_msgs/action/Grasp_Goal.force; native type float64. Scalar value. Finite
     * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double force;
} roswasmc_bounded_2_flexiv_msgs_action_Grasp_Goal;

# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_GOAL_MAX_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_GOAL_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_GOAL_CODEC_IDENTITY "UWVMROS1_43565e364b5b889f4afe37a991d7b42a2b045737ead93475f771995882eb67ce"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_flexiv_msgs_action_Grasp_Goal_valid(roswasmc_bounded_2_flexiv_msgs_action_Grasp_Goal const* value)
{
    if(!value)
    {
        return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->force, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
        {
            return 0;
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_2_flexiv_msgs_action_Grasp_Goal_wire_size(roswasmc_bounded_2_flexiv_msgs_action_Grasp_Goal const* value)
{
    size_t n = 0;
    n += 8;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_2_flexiv_msgs_action_Grasp_Goal_write_fields(roswasmc_bounded_2_flexiv_msgs_action_Grasp_Goal const* value,
                                                                                 unsigned char* p,
                                                                                 size_t* offset)
{
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->force, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_2_flexiv_msgs_action_Grasp_Goal_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_2_flexiv_msgs_action_Grasp_Goal* value)
{
    if(*offset > n || n - *offset < 8)
    {
        return 0;
    }
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->force, &bits, 8);
    }
    *offset += 8;
    return roswasmc_bounded_2_flexiv_msgs_action_Grasp_Goal_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_2_flexiv_msgs_action_Grasp_Goal_encode(roswasmc_bounded_2_flexiv_msgs_action_Grasp_Goal const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_flexiv_msgs_action_Grasp_Goal_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_flexiv_msgs_action_Grasp_Goal_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_flexiv_msgs_action_Grasp_Goal_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_flexiv_msgs_action_Grasp_Goal_decode(void const* input, size_t length, roswasmc_bounded_2_flexiv_msgs_action_Grasp_Goal* value)
{
    roswasmc_bounded_2_flexiv_msgs_action_Grasp_Goal next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 8u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_flexiv_msgs_action_Grasp_Goal_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_RESULT)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_RESULT_0 != 0xd9546e8aUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_RESULT_1 != 0x8a423c3aUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_RESULT_2 != 0x0e4b368aUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_RESULT_3 != 0xf74abec8UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_RESULT_4 != 0xb03db541UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_RESULT_5 != 0x17c7507dUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_RESULT_6 != 0x9d3bcca5UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_RESULT_7 != 0x3dfd74f1UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_RESULT 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_RESULT_0 0xd9546e8aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_RESULT_1 0x8a423c3aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_RESULT_2 0x0e4b368aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_RESULT_3 0xf74abec8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_RESULT_4 0xb03db541UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_RESULT_5 0x17c7507dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_RESULT_6 0x9d3bcca5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_RESULT_7 0x3dfd74f1UL

/** @brief UTF-8 byte storage for flexiv_msgs/action/Grasp_Result.error; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_2_flexiv_msgs_action_Grasp_Result_error_text;

/** @brief Complete ROS2 flexiv_msgs/action/Grasp_Result value; no field projects away native data. */
typedef struct roswasmc_bounded_2_flexiv_msgs_action_Grasp_Result
{
    /**
     * @brief Retain the complete original bool field.
     * @details Original flexiv_msgs/action/Grasp_Result.success; native type bool. Scalar value. Storage
     * belongs to the complete value and acquires no ROS resource.
     */
    uint8_t success;
    /**
     * @brief Retain the complete original string field.
     * @details Original flexiv_msgs/action/Grasp_Result.error; native type string. Scalar value. UTF-8
     * capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    roswasmc_bounded_2_flexiv_msgs_action_Grasp_Result_error_text error;
} roswasmc_bounded_2_flexiv_msgs_action_Grasp_Result;

# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_RESULT_MAX_WIRE_BYTES 261u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_RESULT_MIN_WIRE_BYTES 5u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_RESULT_CODEC_IDENTITY "UWVMROS1_76337e629cae7403379d16725f13850a1d38a2bc53d1bd478e79f8139484341a"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_flexiv_msgs_action_Grasp_Result_valid(roswasmc_bounded_2_flexiv_msgs_action_Grasp_Result const* value)
{
    if(!value)
    {
        return 0;
    }
    if(value->success > 1)
    {
        return 0;
    }
    if(value->error.size > 256u || !uwvm_bounded_utf8(value->error.data, value->error.size))
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_2_flexiv_msgs_action_Grasp_Result_wire_size(roswasmc_bounded_2_flexiv_msgs_action_Grasp_Result const* value)
{
    size_t n = 0;
    n += 1;
    n += 4 + value->error.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_2_flexiv_msgs_action_Grasp_Result_write_fields(roswasmc_bounded_2_flexiv_msgs_action_Grasp_Result const* value,
                                                                                   unsigned char* p,
                                                                                   size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->success, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, value->error.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->error.data, value->error.size);
    *offset += value->error.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_2_flexiv_msgs_action_Grasp_Result_read_fields(unsigned char const* p,
                                                                                 size_t n,
                                                                                 size_t* offset,
                                                                                 roswasmc_bounded_2_flexiv_msgs_action_Grasp_Result* value)
{
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->success, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->error.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->error.size > 256u || value->error.size > n - *offset)
    {
        return 0;
    }
    uwvm_bounded_copy(value->error.data, p + *offset, value->error.size);
    *offset += value->error.size;
    return roswasmc_bounded_2_flexiv_msgs_action_Grasp_Result_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_2_flexiv_msgs_action_Grasp_Result_encode(roswasmc_bounded_2_flexiv_msgs_action_Grasp_Result const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_flexiv_msgs_action_Grasp_Result_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_flexiv_msgs_action_Grasp_Result_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_flexiv_msgs_action_Grasp_Result_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_flexiv_msgs_action_Grasp_Result_decode(void const* input, size_t length, roswasmc_bounded_2_flexiv_msgs_action_Grasp_Result* value)
{
    roswasmc_bounded_2_flexiv_msgs_action_Grasp_Result next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 5u || length > 261u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_flexiv_msgs_action_Grasp_Result_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_FEEDBACK)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_FEEDBACK_0 != 0xc4e2a5a7UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_FEEDBACK_1 != 0xae8e2698UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_FEEDBACK_2 != 0x98c32832UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_FEEDBACK_3 != 0x30b217ecUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_FEEDBACK_4 != 0x53aded60UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_FEEDBACK_5 != 0x9476f195UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_FEEDBACK_6 != 0x9a6541cbUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_FEEDBACK_7 != 0x60ef49baUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_FEEDBACK 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_FEEDBACK_0 0xc4e2a5a7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_FEEDBACK_1 0xae8e2698UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_FEEDBACK_2 0x98c32832UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_FEEDBACK_3 0x30b217ecUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_FEEDBACK_4 0x53aded60UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_FEEDBACK_5 0x9476f195UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_FEEDBACK_6 0x9a6541cbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_FEEDBACK_7 0x60ef49baUL

/** @brief Complete ROS2 flexiv_msgs/action/Grasp_Feedback value; no field projects away native data. */
typedef struct roswasmc_bounded_2_flexiv_msgs_action_Grasp_Feedback
{
    /**
     * @brief m
     * @details Original flexiv_msgs/action/Grasp_Feedback.current_width; native type float64. Scalar
     * value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
     * acquires no ROS resource.
     */
    double current_width;
    /**
     * @brief N
     * @details Original flexiv_msgs/action/Grasp_Feedback.current_force; native type float64. Scalar
     * value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
     * acquires no ROS resource.
     */
    double current_force;
    /**
     * @brief Retain the complete original bool field.
     * @details Original flexiv_msgs/action/Grasp_Feedback.moving; native type bool. Scalar value. Storage
     * belongs to the complete value and acquires no ROS resource.
     */
    uint8_t moving;
} roswasmc_bounded_2_flexiv_msgs_action_Grasp_Feedback;

# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_FEEDBACK_MAX_WIRE_BYTES 17u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_FEEDBACK_MIN_WIRE_BYTES 17u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_FEEDBACK_CODEC_IDENTITY "UWVMROS1_f546cfb58043f2dd44da229d9b5687e88d2712378aa6e1db8cf0082c07e96c05"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_flexiv_msgs_action_Grasp_Feedback_valid(roswasmc_bounded_2_flexiv_msgs_action_Grasp_Feedback const* value)
{
    if(!value)
    {
        return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->current_width, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
        {
            return 0;
        }
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->current_force, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
        {
            return 0;
        }
    }
    if(value->moving > 1)
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_2_flexiv_msgs_action_Grasp_Feedback_wire_size(roswasmc_bounded_2_flexiv_msgs_action_Grasp_Feedback const* value)
{
    size_t n = 0;
    n += 8;
    n += 8;
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_2_flexiv_msgs_action_Grasp_Feedback_write_fields(roswasmc_bounded_2_flexiv_msgs_action_Grasp_Feedback const* value,
                                                                                     unsigned char* p,
                                                                                     size_t* offset)
{
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->current_width, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->current_force, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->moving, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_2_flexiv_msgs_action_Grasp_Feedback_read_fields(unsigned char const* p,
                                                                                   size_t n,
                                                                                   size_t* offset,
                                                                                   roswasmc_bounded_2_flexiv_msgs_action_Grasp_Feedback* value)
{
    if(*offset > n || n - *offset < 8)
    {
        return 0;
    }
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->current_width, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
    {
        return 0;
    }
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->current_force, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->moving, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_2_flexiv_msgs_action_Grasp_Feedback_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_2_flexiv_msgs_action_Grasp_Feedback_encode(roswasmc_bounded_2_flexiv_msgs_action_Grasp_Feedback const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_flexiv_msgs_action_Grasp_Feedback_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_flexiv_msgs_action_Grasp_Feedback_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_flexiv_msgs_action_Grasp_Feedback_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_flexiv_msgs_action_Grasp_Feedback_decode(void const* input, size_t length, roswasmc_bounded_2_flexiv_msgs_action_Grasp_Feedback* value)
{
    roswasmc_bounded_2_flexiv_msgs_action_Grasp_Feedback next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 17u || length > 17u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_flexiv_msgs_action_Grasp_Feedback_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_GOAL)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_GOAL_0 != 0x37615052UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_GOAL_1 != 0x0fdcbc52UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_GOAL_2 != 0xea5acf4cUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_GOAL_3 != 0x05d705f9UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_GOAL_4 != 0x4472fb91UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_GOAL_5 != 0x8d8763a6UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_GOAL_6 != 0x596287a6UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_GOAL_7 != 0x49ed26b9UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_GOAL 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_GOAL_0 0x37615052UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_GOAL_1 0x0fdcbc52UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_GOAL_2 0xea5acf4cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_GOAL_3 0x05d705f9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_GOAL_4 0x4472fb91UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_GOAL_5 0x8d8763a6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_GOAL_6 0x596287a6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_GOAL_7 0x49ed26b9UL

/** @brief Complete ROS2 flexiv_msgs/action/Move_Goal value; no field projects away native data. */
typedef struct roswasmc_bounded_2_flexiv_msgs_action_Move_Goal
{
    /**
     * @brief m
     * @details Original flexiv_msgs/action/Move_Goal.width; native type float64. Scalar value. Finite IEEE
     * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double width;
    /**
     * @brief m/s
     * @details Original flexiv_msgs/action/Move_Goal.velocity; native type float64. Scalar value. Finite
     * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double velocity;
    /**
     * @brief N
     * @details Original flexiv_msgs/action/Move_Goal.max_force; native type float64. Scalar value. Finite
     * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double max_force;
} roswasmc_bounded_2_flexiv_msgs_action_Move_Goal;

# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_GOAL_MAX_WIRE_BYTES 24u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_GOAL_MIN_WIRE_BYTES 24u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_GOAL_CODEC_IDENTITY "UWVMROS1_aea1dfd4e0fe2ea72865a4f9e4408564fe63c7eff23cc9eaefdedbb4a3b87ce2"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_flexiv_msgs_action_Move_Goal_valid(roswasmc_bounded_2_flexiv_msgs_action_Move_Goal const* value)
{
    if(!value)
    {
        return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->width, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
        {
            return 0;
        }
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->velocity, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
        {
            return 0;
        }
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->max_force, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
        {
            return 0;
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_2_flexiv_msgs_action_Move_Goal_wire_size(roswasmc_bounded_2_flexiv_msgs_action_Move_Goal const* value)
{
    size_t n = 0;
    n += 8;
    n += 8;
    n += 8;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_2_flexiv_msgs_action_Move_Goal_write_fields(roswasmc_bounded_2_flexiv_msgs_action_Move_Goal const* value, unsigned char* p, size_t* offset)
{
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->width, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->velocity, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->max_force, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_2_flexiv_msgs_action_Move_Goal_read_fields(unsigned char const* p,
                                                                              size_t n,
                                                                              size_t* offset,
                                                                              roswasmc_bounded_2_flexiv_msgs_action_Move_Goal* value)
{
    if(*offset > n || n - *offset < 8)
    {
        return 0;
    }
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->width, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
    {
        return 0;
    }
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->velocity, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
    {
        return 0;
    }
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->max_force, &bits, 8);
    }
    *offset += 8;
    return roswasmc_bounded_2_flexiv_msgs_action_Move_Goal_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_2_flexiv_msgs_action_Move_Goal_encode(roswasmc_bounded_2_flexiv_msgs_action_Move_Goal const* value,
                                                                              void* output,
                                                                              size_t capacity,
                                                                              size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_flexiv_msgs_action_Move_Goal_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_flexiv_msgs_action_Move_Goal_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_flexiv_msgs_action_Move_Goal_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_flexiv_msgs_action_Move_Goal_decode(void const* input, size_t length, roswasmc_bounded_2_flexiv_msgs_action_Move_Goal* value)
{
    roswasmc_bounded_2_flexiv_msgs_action_Move_Goal next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 24u || length > 24u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_flexiv_msgs_action_Move_Goal_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_RESULT)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_RESULT_0 != 0x601cee9fUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_RESULT_1 != 0x4feb65c9UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_RESULT_2 != 0xbe35867bUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_RESULT_3 != 0xb1ee28e6UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_RESULT_4 != 0x6930fc14UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_RESULT_5 != 0xff7c9c3dUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_RESULT_6 != 0x873ca6b3UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_RESULT_7 != 0xb79859e7UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_RESULT 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_RESULT_0 0x601cee9fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_RESULT_1 0x4feb65c9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_RESULT_2 0xbe35867bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_RESULT_3 0xb1ee28e6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_RESULT_4 0x6930fc14UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_RESULT_5 0xff7c9c3dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_RESULT_6 0x873ca6b3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_RESULT_7 0xb79859e7UL

/** @brief UTF-8 byte storage for flexiv_msgs/action/Move_Result.error; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_2_flexiv_msgs_action_Move_Result_error_text;

/** @brief Complete ROS2 flexiv_msgs/action/Move_Result value; no field projects away native data. */
typedef struct roswasmc_bounded_2_flexiv_msgs_action_Move_Result
{
    /**
     * @brief Retain the complete original bool field.
     * @details Original flexiv_msgs/action/Move_Result.success; native type bool. Scalar value. Storage
     * belongs to the complete value and acquires no ROS resource.
     */
    uint8_t success;
    /**
     * @brief Retain the complete original string field.
     * @details Original flexiv_msgs/action/Move_Result.error; native type string. Scalar value. UTF-8
     * capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    roswasmc_bounded_2_flexiv_msgs_action_Move_Result_error_text error;
} roswasmc_bounded_2_flexiv_msgs_action_Move_Result;

# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_RESULT_MAX_WIRE_BYTES 261u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_RESULT_MIN_WIRE_BYTES 5u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_RESULT_CODEC_IDENTITY "UWVMROS1_c95a78a3b488d7f47101110729258fcc28450dee51ab7666114da77ad139709d"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_flexiv_msgs_action_Move_Result_valid(roswasmc_bounded_2_flexiv_msgs_action_Move_Result const* value)
{
    if(!value)
    {
        return 0;
    }
    if(value->success > 1)
    {
        return 0;
    }
    if(value->error.size > 256u || !uwvm_bounded_utf8(value->error.data, value->error.size))
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_2_flexiv_msgs_action_Move_Result_wire_size(roswasmc_bounded_2_flexiv_msgs_action_Move_Result const* value)
{
    size_t n = 0;
    n += 1;
    n += 4 + value->error.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_2_flexiv_msgs_action_Move_Result_write_fields(roswasmc_bounded_2_flexiv_msgs_action_Move_Result const* value,
                                                                                  unsigned char* p,
                                                                                  size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->success, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, value->error.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->error.data, value->error.size);
    *offset += value->error.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_2_flexiv_msgs_action_Move_Result_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_2_flexiv_msgs_action_Move_Result* value)
{
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->success, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->error.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->error.size > 256u || value->error.size > n - *offset)
    {
        return 0;
    }
    uwvm_bounded_copy(value->error.data, p + *offset, value->error.size);
    *offset += value->error.size;
    return roswasmc_bounded_2_flexiv_msgs_action_Move_Result_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_2_flexiv_msgs_action_Move_Result_encode(roswasmc_bounded_2_flexiv_msgs_action_Move_Result const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_flexiv_msgs_action_Move_Result_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_flexiv_msgs_action_Move_Result_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_flexiv_msgs_action_Move_Result_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_flexiv_msgs_action_Move_Result_decode(void const* input, size_t length, roswasmc_bounded_2_flexiv_msgs_action_Move_Result* value)
{
    roswasmc_bounded_2_flexiv_msgs_action_Move_Result next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 5u || length > 261u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_flexiv_msgs_action_Move_Result_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_FEEDBACK)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_FEEDBACK_0 != 0xcdee066eUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_FEEDBACK_1 != 0xead3933bUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_FEEDBACK_2 != 0x7157a837UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_FEEDBACK_3 != 0x30a4330bUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_FEEDBACK_4 != 0x18178d0aUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_FEEDBACK_5 != 0xfac04f65UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_FEEDBACK_6 != 0x56df603bUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_FEEDBACK_7 != 0x42d11c5dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_FEEDBACK 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_FEEDBACK_0 0xcdee066eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_FEEDBACK_1 0xead3933bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_FEEDBACK_2 0x7157a837UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_FEEDBACK_3 0x30a4330bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_FEEDBACK_4 0x18178d0aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_FEEDBACK_5 0xfac04f65UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_FEEDBACK_6 0x56df603bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_FEEDBACK_7 0x42d11c5dUL

/** @brief Complete ROS2 flexiv_msgs/action/Move_Feedback value; no field projects away native data. */
typedef struct roswasmc_bounded_2_flexiv_msgs_action_Move_Feedback
{
    /**
     * @brief m
     * @details Original flexiv_msgs/action/Move_Feedback.current_width; native type float64. Scalar value.
     * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    double current_width;
    /**
     * @brief N
     * @details Original flexiv_msgs/action/Move_Feedback.current_force; native type float64. Scalar value.
     * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    double current_force;
    /**
     * @brief Retain the complete original bool field.
     * @details Original flexiv_msgs/action/Move_Feedback.moving; native type bool. Scalar value. Storage
     * belongs to the complete value and acquires no ROS resource.
     */
    uint8_t moving;
} roswasmc_bounded_2_flexiv_msgs_action_Move_Feedback;

# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_FEEDBACK_MAX_WIRE_BYTES 17u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_FEEDBACK_MIN_WIRE_BYTES 17u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_FEEDBACK_CODEC_IDENTITY "UWVMROS1_b28cc267ea6cd964fb24bff71d4e6e8da37fae383f437aeec8afb01431a5cd38"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_flexiv_msgs_action_Move_Feedback_valid(roswasmc_bounded_2_flexiv_msgs_action_Move_Feedback const* value)
{
    if(!value)
    {
        return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->current_width, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
        {
            return 0;
        }
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->current_force, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
        {
            return 0;
        }
    }
    if(value->moving > 1)
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_2_flexiv_msgs_action_Move_Feedback_wire_size(roswasmc_bounded_2_flexiv_msgs_action_Move_Feedback const* value)
{
    size_t n = 0;
    n += 8;
    n += 8;
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_2_flexiv_msgs_action_Move_Feedback_write_fields(roswasmc_bounded_2_flexiv_msgs_action_Move_Feedback const* value,
                                                                                    unsigned char* p,
                                                                                    size_t* offset)
{
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->current_width, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->current_force, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->moving, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_2_flexiv_msgs_action_Move_Feedback_read_fields(unsigned char const* p,
                                                                                  size_t n,
                                                                                  size_t* offset,
                                                                                  roswasmc_bounded_2_flexiv_msgs_action_Move_Feedback* value)
{
    if(*offset > n || n - *offset < 8)
    {
        return 0;
    }
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->current_width, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
    {
        return 0;
    }
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->current_force, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->moving, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_2_flexiv_msgs_action_Move_Feedback_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_2_flexiv_msgs_action_Move_Feedback_encode(roswasmc_bounded_2_flexiv_msgs_action_Move_Feedback const* value,
                                                                                  void* output,
                                                                                  size_t capacity,
                                                                                  size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_flexiv_msgs_action_Move_Feedback_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_flexiv_msgs_action_Move_Feedback_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_flexiv_msgs_action_Move_Feedback_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_flexiv_msgs_action_Move_Feedback_decode(void const* input, size_t length, roswasmc_bounded_2_flexiv_msgs_action_Move_Feedback* value)
{
    roswasmc_bounded_2_flexiv_msgs_action_Move_Feedback next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 17u || length > 17u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_flexiv_msgs_action_Move_Feedback_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_0 != 0x74233995UL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_1 != 0xa368f942UL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_2 != 0xc9ad3b6bUL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_3 != 0x9b41f229UL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_4 != 0x6808ef18UL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_5 != 0x12916cd5UL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_6 != 0xa5ae965cUL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_7 != 0x1c646852UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_0 0x74233995UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_1 0xa368f942UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_2 0xc9ad3b6bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_3 0x9b41f229UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_4 0x6808ef18UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_5 0x12916cd5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_6 0xa5ae965cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_7 0x1c646852UL

/** @brief UTF-8 byte storage for std_msgs/msg/Header.frame_id; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_2_std_msgs_msg_Header_frame_id_text;

/** @brief Complete ROS2 std_msgs/msg/Header value; no field projects away native data. */
typedef struct roswasmc_bounded_2_std_msgs_msg_Header
{
    /**
     * @brief Standard metadata for higher-level stamped data types. This is generally used to communicate
     * timestamped data in a particular coordinate frame. Two-integer timestamp that is expressed as
     * seconds and nanoseconds.
     * @details Original std_msgs/msg/Header.stamp; native type builtin_interfaces/msg/Time. Scalar value.
     * Storage belongs to the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_2_builtin_interfaces_msg_Time stamp;
    /**
     * @brief Transform frame with which this data is associated.
     * @details Original std_msgs/msg/Header.frame_id; native type string. Scalar value. UTF-8 capacity 256
     * bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_2_std_msgs_msg_Header_frame_id_text frame_id;
} roswasmc_bounded_2_std_msgs_msg_Header;

# define ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_MAX_WIRE_BYTES 268u
# define ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_MIN_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_CODEC_IDENTITY "UWVMROS1_2f4f374a97a14337b36f87987a2c2fe2fba6dc9597fa4455029ba3bef65c1c2b"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_std_msgs_msg_Header_valid(roswasmc_bounded_2_std_msgs_msg_Header const* value)
{
    if(!value)
    {
        return 0;
    }
    if(!roswasmc_bounded_2_builtin_interfaces_msg_Time_valid(&value->stamp))
    {
        return 0;
    }
    if(value->frame_id.size > 256u || !uwvm_bounded_utf8(value->frame_id.data, value->frame_id.size))
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_2_std_msgs_msg_Header_wire_size(roswasmc_bounded_2_std_msgs_msg_Header const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_builtin_interfaces_msg_Time_wire_size(&value->stamp);
    n += 4 + value->frame_id.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_2_std_msgs_msg_Header_write_fields(roswasmc_bounded_2_std_msgs_msg_Header const* value, unsigned char* p, size_t* offset)
{
    roswasmc_bounded_2_builtin_interfaces_msg_Time_write_fields(&value->stamp, p, offset);
    uwvm_bounded_put(p + *offset, value->frame_id.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->frame_id.data, value->frame_id.size);
    *offset += value->frame_id.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int
    roswasmc_bounded_2_std_msgs_msg_Header_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_std_msgs_msg_Header* value)
{
    if(!roswasmc_bounded_2_builtin_interfaces_msg_Time_read_fields(p, n, offset, &value->stamp))
    {
        return 0;
    }
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->frame_id.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->frame_id.size > 256u || value->frame_id.size > n - *offset)
    {
        return 0;
    }
    uwvm_bounded_copy(value->frame_id.data, p + *offset, value->frame_id.size);
    *offset += value->frame_id.size;
    return roswasmc_bounded_2_std_msgs_msg_Header_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_2_std_msgs_msg_Header_encode(roswasmc_bounded_2_std_msgs_msg_Header const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_std_msgs_msg_Header_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_std_msgs_msg_Header_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_std_msgs_msg_Header_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t roswasmc_bounded_2_std_msgs_msg_Header_decode(void const* input, size_t length, roswasmc_bounded_2_std_msgs_msg_Header* value)
{
    roswasmc_bounded_2_std_msgs_msg_Header next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 12u || length > 268u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_std_msgs_msg_Header_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_0 != 0x8b3c6967UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_1 != 0xc3fea7ebUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_2 != 0x123f800eUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_3 != 0x30251b26UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_4 != 0xa9ce9fc2UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_5 != 0xcf8f0eefUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_6 != 0x2689966bUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_7 != 0x16c3767bUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_0 0x8b3c6967UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_1 0xc3fea7ebUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_2 0x123f800eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_3 0x30251b26UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_4 0xa9ce9fc2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_5 0xcf8f0eefUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_6 0x2689966bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_7 0x16c3767bUL

/** @brief Complete ROS2 geometry_msgs/msg/Point value; no field projects away native data. */
typedef struct roswasmc_bounded_2_geometry_msgs_msg_Point
{
    /**
     * @brief This contains the position of a point in free space
     * @details Original geometry_msgs/msg/Point.x; native type float64. Scalar value. Finite IEEE values;
     * no implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
     */
    double x;
    /**
     * @brief Retain the complete original float64 field.
     * @details Original geometry_msgs/msg/Point.y; native type float64. Scalar value. Finite IEEE values;
     * no implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
     */
    double y;
    /**
     * @brief Retain the complete original float64 field.
     * @details Original geometry_msgs/msg/Point.z; native type float64. Scalar value. Finite IEEE values;
     * no implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
     */
    double z;
} roswasmc_bounded_2_geometry_msgs_msg_Point;

# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_MAX_WIRE_BYTES 24u
# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_MIN_WIRE_BYTES 24u
# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_CODEC_IDENTITY "UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_geometry_msgs_msg_Point_valid(roswasmc_bounded_2_geometry_msgs_msg_Point const* value)
{
    if(!value)
    {
        return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->x, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
        {
            return 0;
        }
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->y, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
        {
            return 0;
        }
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->z, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
        {
            return 0;
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_2_geometry_msgs_msg_Point_wire_size(roswasmc_bounded_2_geometry_msgs_msg_Point const* value)
{
    size_t n = 0;
    n += 8;
    n += 8;
    n += 8;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_2_geometry_msgs_msg_Point_write_fields(roswasmc_bounded_2_geometry_msgs_msg_Point const* value, unsigned char* p, size_t* offset)
{
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->x, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->y, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->z, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int
    roswasmc_bounded_2_geometry_msgs_msg_Point_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_geometry_msgs_msg_Point* value)
{
    if(*offset > n || n - *offset < 8)
    {
        return 0;
    }
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->x, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
    {
        return 0;
    }
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->y, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
    {
        return 0;
    }
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->z, &bits, 8);
    }
    *offset += 8;
    return roswasmc_bounded_2_geometry_msgs_msg_Point_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_2_geometry_msgs_msg_Point_encode(roswasmc_bounded_2_geometry_msgs_msg_Point const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_geometry_msgs_msg_Point_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_geometry_msgs_msg_Point_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_geometry_msgs_msg_Point_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t roswasmc_bounded_2_geometry_msgs_msg_Point_decode(void const* input, size_t length, roswasmc_bounded_2_geometry_msgs_msg_Point* value)
{
    roswasmc_bounded_2_geometry_msgs_msg_Point next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 24u || length > 24u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_Point_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_0 != 0x32466649UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_1 != 0x70bd4a02UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_2 != 0x3cfd577aUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_3 != 0x1083fafaUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_4 != 0xb30821e4UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_5 != 0x3d13ef65UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_6 != 0xaa633f77UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_7 != 0x40e797edUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_0 0x32466649UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_1 0x70bd4a02UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_2 0x3cfd577aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_3 0x1083fafaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_4 0xb30821e4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_5 0x3d13ef65UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_6 0xaa633f77UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_7 0x40e797edUL

/** @brief Complete ROS2 geometry_msgs/msg/Quaternion value; no field projects away native data. */
typedef struct roswasmc_bounded_2_geometry_msgs_msg_Quaternion
{
    /**
     * @brief This represents an orientation in free space in quaternion form.
     * @details Original geometry_msgs/msg/Quaternion.x; native type float64. Scalar value. Declared
     * original default 0.0. Finite IEEE values; no implicit unit conversion. Storage belongs to the
     * complete value and acquires no ROS resource.
     */
    double x;
    /**
     * @brief Retain the complete original float64 field.
     * @details Original geometry_msgs/msg/Quaternion.y; native type float64. Scalar value. Declared
     * original default 0.0. Finite IEEE values; no implicit unit conversion. Storage belongs to the
     * complete value and acquires no ROS resource.
     */
    double y;
    /**
     * @brief Retain the complete original float64 field.
     * @details Original geometry_msgs/msg/Quaternion.z; native type float64. Scalar value. Declared
     * original default 0.0. Finite IEEE values; no implicit unit conversion. Storage belongs to the
     * complete value and acquires no ROS resource.
     */
    double z;
    /**
     * @brief Retain the complete original float64 field.
     * @details Original geometry_msgs/msg/Quaternion.w; native type float64. Scalar value. Declared
     * original default 1.0. Finite IEEE values; no implicit unit conversion. Storage belongs to the
     * complete value and acquires no ROS resource.
     */
    double w;
} roswasmc_bounded_2_geometry_msgs_msg_Quaternion;

# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_MAX_WIRE_BYTES 32u
# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_MIN_WIRE_BYTES 32u
# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_CODEC_IDENTITY "UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672"

/** @brief Explicit declared-default initialization; ordinary C/C++ zero aggregates stay zero.
 * Nested/fixed elements are initialized independently; sequence lengths stay zero.
 * This initializer performs no I/O, registration, allocation or capability operation. */
inline static uint32_t roswasmc_bounded_2_geometry_msgs_msg_Quaternion_default(roswasmc_bounded_2_geometry_msgs_msg_Quaternion* value)
{
    roswasmc_bounded_2_geometry_msgs_msg_Quaternion next = {0};
    if(!value)
    {
        return UWVM_BOUNDED_INVALID;
    }
    next.x = 0.0;
    next.y = 0.0;
    next.z = 0.0;
    next.w = 1.0;
    *value = next;
    return 0;
}

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_geometry_msgs_msg_Quaternion_valid(roswasmc_bounded_2_geometry_msgs_msg_Quaternion const* value)
{
    if(!value)
    {
        return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->x, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
        {
            return 0;
        }
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->y, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
        {
            return 0;
        }
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->z, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
        {
            return 0;
        }
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->w, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
        {
            return 0;
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_2_geometry_msgs_msg_Quaternion_wire_size(roswasmc_bounded_2_geometry_msgs_msg_Quaternion const* value)
{
    size_t n = 0;
    n += 8;
    n += 8;
    n += 8;
    n += 8;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_2_geometry_msgs_msg_Quaternion_write_fields(roswasmc_bounded_2_geometry_msgs_msg_Quaternion const* value, unsigned char* p, size_t* offset)
{
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->x, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->y, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->z, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->w, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_2_geometry_msgs_msg_Quaternion_read_fields(unsigned char const* p,
                                                                              size_t n,
                                                                              size_t* offset,
                                                                              roswasmc_bounded_2_geometry_msgs_msg_Quaternion* value)
{
    if(*offset > n || n - *offset < 8)
    {
        return 0;
    }
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->x, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
    {
        return 0;
    }
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->y, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
    {
        return 0;
    }
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->z, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
    {
        return 0;
    }
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->w, &bits, 8);
    }
    *offset += 8;
    return roswasmc_bounded_2_geometry_msgs_msg_Quaternion_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_2_geometry_msgs_msg_Quaternion_encode(roswasmc_bounded_2_geometry_msgs_msg_Quaternion const* value,
                                                                              void* output,
                                                                              size_t capacity,
                                                                              size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_geometry_msgs_msg_Quaternion_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_geometry_msgs_msg_Quaternion_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_geometry_msgs_msg_Quaternion_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_geometry_msgs_msg_Quaternion_decode(void const* input, size_t length, roswasmc_bounded_2_geometry_msgs_msg_Quaternion* value)
{
    roswasmc_bounded_2_geometry_msgs_msg_Quaternion next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 32u || length > 32u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_Quaternion_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_0 != 0x73a5cf4aUL ||                                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_1 != 0x7e313663UL ||                                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_2 != 0x4a5eda93UL ||                                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_3 != 0xfed15b2aUL ||                                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_4 != 0xf5cc5920UL ||                                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_5 != 0xcea6a057UL ||                                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_6 != 0x7145db3dUL ||                                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_7 != 0xc070de58UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_0 0x73a5cf4aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_1 0x7e313663UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_2 0x4a5eda93UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_3 0xfed15b2aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_4 0xf5cc5920UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_5 0xcea6a057UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_6 0x7145db3dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_7 0xc070de58UL

/** @brief Complete ROS2 geometry_msgs/msg/Pose value; no field projects away native data. */
typedef struct roswasmc_bounded_2_geometry_msgs_msg_Pose
{
    /**
     * @brief A representation of pose in free space, composed of position and orientation.
     * @details Original geometry_msgs/msg/Pose.position; native type geometry_msgs/msg/Point. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_2_geometry_msgs_msg_Point position;
    /**
     * @brief Retain the complete original geometry_msgs/msg/Quaternion field.
     * @details Original geometry_msgs/msg/Pose.orientation; native type geometry_msgs/msg/Quaternion.
     * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_2_geometry_msgs_msg_Quaternion orientation;
} roswasmc_bounded_2_geometry_msgs_msg_Pose;

# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_MAX_WIRE_BYTES 56u
# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_MIN_WIRE_BYTES 56u
# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_CODEC_IDENTITY "UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777"

/** @brief Explicit declared-default initialization; ordinary C/C++ zero aggregates stay zero.
 * Nested/fixed elements are initialized independently; sequence lengths stay zero.
 * This initializer performs no I/O, registration, allocation or capability operation. */
inline static uint32_t roswasmc_bounded_2_geometry_msgs_msg_Pose_default(roswasmc_bounded_2_geometry_msgs_msg_Pose* value)
{
    roswasmc_bounded_2_geometry_msgs_msg_Pose next = {0};
    if(!value)
    {
        return UWVM_BOUNDED_INVALID;
    }
    (void)roswasmc_bounded_2_geometry_msgs_msg_Quaternion_default(&next.orientation);
    *value = next;
    return 0;
}

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_geometry_msgs_msg_Pose_valid(roswasmc_bounded_2_geometry_msgs_msg_Pose const* value)
{
    if(!value)
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_Point_valid(&value->position))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_Quaternion_valid(&value->orientation))
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_2_geometry_msgs_msg_Pose_wire_size(roswasmc_bounded_2_geometry_msgs_msg_Pose const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_geometry_msgs_msg_Point_wire_size(&value->position);
    n += roswasmc_bounded_2_geometry_msgs_msg_Quaternion_wire_size(&value->orientation);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_2_geometry_msgs_msg_Pose_write_fields(roswasmc_bounded_2_geometry_msgs_msg_Pose const* value, unsigned char* p, size_t* offset)
{
    roswasmc_bounded_2_geometry_msgs_msg_Point_write_fields(&value->position, p, offset);
    roswasmc_bounded_2_geometry_msgs_msg_Quaternion_write_fields(&value->orientation, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int
    roswasmc_bounded_2_geometry_msgs_msg_Pose_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_geometry_msgs_msg_Pose* value)
{
    if(!roswasmc_bounded_2_geometry_msgs_msg_Point_read_fields(p, n, offset, &value->position))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_Quaternion_read_fields(p, n, offset, &value->orientation))
    {
        return 0;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_Pose_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_2_geometry_msgs_msg_Pose_encode(roswasmc_bounded_2_geometry_msgs_msg_Pose const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_geometry_msgs_msg_Pose_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_geometry_msgs_msg_Pose_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_geometry_msgs_msg_Pose_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t roswasmc_bounded_2_geometry_msgs_msg_Pose_decode(void const* input, size_t length, roswasmc_bounded_2_geometry_msgs_msg_Pose* value)
{
    roswasmc_bounded_2_geometry_msgs_msg_Pose next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 56u || length > 56u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_Pose_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3_0 != 0x5e44bb6eUL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3_1 != 0xef3b440dUL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3_2 != 0x9327bf34UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3_3 != 0xb1340f74UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3_4 != 0xc805437fUL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3_5 != 0xcdb41308UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3_6 != 0x8d51b60dUL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3_7 != 0x4266adbeUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3_0 0x5e44bb6eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3_1 0xef3b440dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3_2 0x9327bf34UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3_3 0xb1340f74UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3_4 0xc805437fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3_5 0xcdb41308UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3_6 0x8d51b60dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3_7 0x4266adbeUL

/** @brief Complete ROS2 geometry_msgs/msg/Vector3 value; no field projects away native data. */
typedef struct roswasmc_bounded_2_geometry_msgs_msg_Vector3
{
    /**
     * @brief This represents a vector in free space. This is semantically different than a point. A vector
     * is always anchored at the origin. When a transform is applied to a vector, only the rotational
     * component is applied.
     * @details Original geometry_msgs/msg/Vector3.x; native type float64. Scalar value. Finite IEEE
     * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double x;
    /**
     * @brief Retain the complete original float64 field.
     * @details Original geometry_msgs/msg/Vector3.y; native type float64. Scalar value. Finite IEEE
     * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double y;
    /**
     * @brief Retain the complete original float64 field.
     * @details Original geometry_msgs/msg/Vector3.z; native type float64. Scalar value. Finite IEEE
     * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double z;
} roswasmc_bounded_2_geometry_msgs_msg_Vector3;

# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3_MAX_WIRE_BYTES 24u
# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3_MIN_WIRE_BYTES 24u
# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3_CODEC_IDENTITY "UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_geometry_msgs_msg_Vector3_valid(roswasmc_bounded_2_geometry_msgs_msg_Vector3 const* value)
{
    if(!value)
    {
        return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->x, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
        {
            return 0;
        }
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->y, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
        {
            return 0;
        }
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->z, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
        {
            return 0;
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_2_geometry_msgs_msg_Vector3_wire_size(roswasmc_bounded_2_geometry_msgs_msg_Vector3 const* value)
{
    size_t n = 0;
    n += 8;
    n += 8;
    n += 8;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_2_geometry_msgs_msg_Vector3_write_fields(roswasmc_bounded_2_geometry_msgs_msg_Vector3 const* value, unsigned char* p, size_t* offset)
{
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->x, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->y, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->z, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_2_geometry_msgs_msg_Vector3_read_fields(unsigned char const* p,
                                                                           size_t n,
                                                                           size_t* offset,
                                                                           roswasmc_bounded_2_geometry_msgs_msg_Vector3* value)
{
    if(*offset > n || n - *offset < 8)
    {
        return 0;
    }
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->x, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
    {
        return 0;
    }
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->y, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
    {
        return 0;
    }
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->z, &bits, 8);
    }
    *offset += 8;
    return roswasmc_bounded_2_geometry_msgs_msg_Vector3_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_2_geometry_msgs_msg_Vector3_encode(roswasmc_bounded_2_geometry_msgs_msg_Vector3 const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_geometry_msgs_msg_Vector3_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_geometry_msgs_msg_Vector3_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_geometry_msgs_msg_Vector3_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_geometry_msgs_msg_Vector3_decode(void const* input, size_t length, roswasmc_bounded_2_geometry_msgs_msg_Vector3* value)
{
    roswasmc_bounded_2_geometry_msgs_msg_Vector3 next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 24u || length > 24u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_Vector3_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_WRENCH)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_WRENCH_0 != 0x4afb5f4bUL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_WRENCH_1 != 0x2c1c21fbUL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_WRENCH_2 != 0xc9e2a4e2UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_WRENCH_3 != 0xa8e63370UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_WRENCH_4 != 0x2818df1aUL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_WRENCH_5 != 0x50458f5aUL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_WRENCH_6 != 0x0ff3c513UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_WRENCH_7 != 0x4366ba8bUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_WRENCH 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_WRENCH_0 0x4afb5f4bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_WRENCH_1 0x2c1c21fbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_WRENCH_2 0xc9e2a4e2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_WRENCH_3 0xa8e63370UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_WRENCH_4 0x2818df1aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_WRENCH_5 0x50458f5aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_WRENCH_6 0x0ff3c513UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_WRENCH_7 0x4366ba8bUL

/** @brief Complete ROS2 geometry_msgs/msg/Wrench value; no field projects away native data. */
typedef struct roswasmc_bounded_2_geometry_msgs_msg_Wrench
{
    /**
     * @brief This represents force in free space, separated into its linear and angular parts.
     * @details Original geometry_msgs/msg/Wrench.force; native type geometry_msgs/msg/Vector3. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_2_geometry_msgs_msg_Vector3 force;
    /**
     * @brief Retain the complete original geometry_msgs/msg/Vector3 field.
     * @details Original geometry_msgs/msg/Wrench.torque; native type geometry_msgs/msg/Vector3. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_2_geometry_msgs_msg_Vector3 torque;
} roswasmc_bounded_2_geometry_msgs_msg_Wrench;

# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_WRENCH_MAX_WIRE_BYTES 48u
# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_WRENCH_MIN_WIRE_BYTES 48u
# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_WRENCH_CODEC_IDENTITY "UWVMROS1_fdfdf2474c0129b0ce1f85972cc87fd80478ac7d2429d9de1ec58951a82a11b6"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_geometry_msgs_msg_Wrench_valid(roswasmc_bounded_2_geometry_msgs_msg_Wrench const* value)
{
    if(!value)
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_Vector3_valid(&value->force))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_Vector3_valid(&value->torque))
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_2_geometry_msgs_msg_Wrench_wire_size(roswasmc_bounded_2_geometry_msgs_msg_Wrench const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_geometry_msgs_msg_Vector3_wire_size(&value->force);
    n += roswasmc_bounded_2_geometry_msgs_msg_Vector3_wire_size(&value->torque);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_2_geometry_msgs_msg_Wrench_write_fields(roswasmc_bounded_2_geometry_msgs_msg_Wrench const* value, unsigned char* p, size_t* offset)
{
    roswasmc_bounded_2_geometry_msgs_msg_Vector3_write_fields(&value->force, p, offset);
    roswasmc_bounded_2_geometry_msgs_msg_Vector3_write_fields(&value->torque, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_2_geometry_msgs_msg_Wrench_read_fields(unsigned char const* p,
                                                                          size_t n,
                                                                          size_t* offset,
                                                                          roswasmc_bounded_2_geometry_msgs_msg_Wrench* value)
{
    if(!roswasmc_bounded_2_geometry_msgs_msg_Vector3_read_fields(p, n, offset, &value->force))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_Vector3_read_fields(p, n, offset, &value->torque))
    {
        return 0;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_Wrench_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_2_geometry_msgs_msg_Wrench_encode(roswasmc_bounded_2_geometry_msgs_msg_Wrench const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_geometry_msgs_msg_Wrench_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_geometry_msgs_msg_Wrench_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_geometry_msgs_msg_Wrench_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t roswasmc_bounded_2_geometry_msgs_msg_Wrench_decode(void const* input, size_t length, roswasmc_bounded_2_geometry_msgs_msg_Wrench* value)
{
    roswasmc_bounded_2_geometry_msgs_msg_Wrench next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 48u || length > 48u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_Wrench_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWIST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWIST_0 != 0x89015adcUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWIST_1 != 0x504325b4UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWIST_2 != 0x38f41382UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWIST_3 != 0x47969dc7UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWIST_4 != 0x929584a9UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWIST_5 != 0xde4042d7UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWIST_6 != 0x521e1fc7UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWIST_7 != 0x31eb7e4fUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWIST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWIST_0 0x89015adcUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWIST_1 0x504325b4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWIST_2 0x38f41382UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWIST_3 0x47969dc7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWIST_4 0x929584a9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWIST_5 0xde4042d7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWIST_6 0x521e1fc7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWIST_7 0x31eb7e4fUL

/** @brief Complete ROS2 geometry_msgs/msg/Twist value; no field projects away native data. */
typedef struct roswasmc_bounded_2_geometry_msgs_msg_Twist
{
    /**
     * @brief This expresses velocity in free space broken into its linear and angular parts.
     * @details Original geometry_msgs/msg/Twist.linear; native type geometry_msgs/msg/Vector3. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_2_geometry_msgs_msg_Vector3 linear;
    /**
     * @brief Retain the complete original geometry_msgs/msg/Vector3 field.
     * @details Original geometry_msgs/msg/Twist.angular; native type geometry_msgs/msg/Vector3. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_2_geometry_msgs_msg_Vector3 angular;
} roswasmc_bounded_2_geometry_msgs_msg_Twist;

# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWIST_MAX_WIRE_BYTES 48u
# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWIST_MIN_WIRE_BYTES 48u
# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWIST_CODEC_IDENTITY "UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_geometry_msgs_msg_Twist_valid(roswasmc_bounded_2_geometry_msgs_msg_Twist const* value)
{
    if(!value)
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_Vector3_valid(&value->linear))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_Vector3_valid(&value->angular))
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_2_geometry_msgs_msg_Twist_wire_size(roswasmc_bounded_2_geometry_msgs_msg_Twist const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_geometry_msgs_msg_Vector3_wire_size(&value->linear);
    n += roswasmc_bounded_2_geometry_msgs_msg_Vector3_wire_size(&value->angular);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_2_geometry_msgs_msg_Twist_write_fields(roswasmc_bounded_2_geometry_msgs_msg_Twist const* value, unsigned char* p, size_t* offset)
{
    roswasmc_bounded_2_geometry_msgs_msg_Vector3_write_fields(&value->linear, p, offset);
    roswasmc_bounded_2_geometry_msgs_msg_Vector3_write_fields(&value->angular, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int
    roswasmc_bounded_2_geometry_msgs_msg_Twist_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_geometry_msgs_msg_Twist* value)
{
    if(!roswasmc_bounded_2_geometry_msgs_msg_Vector3_read_fields(p, n, offset, &value->linear))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_Vector3_read_fields(p, n, offset, &value->angular))
    {
        return 0;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_Twist_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_2_geometry_msgs_msg_Twist_encode(roswasmc_bounded_2_geometry_msgs_msg_Twist const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_geometry_msgs_msg_Twist_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_geometry_msgs_msg_Twist_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_geometry_msgs_msg_Twist_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t roswasmc_bounded_2_geometry_msgs_msg_Twist_decode(void const* input, size_t length, roswasmc_bounded_2_geometry_msgs_msg_Twist* value)
{
    roswasmc_bounded_2_geometry_msgs_msg_Twist next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 48u || length > 48u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_Twist_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_CARTESIANMOTIONFORCE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_CARTESIANMOTIONFORCE_0 != 0xcb09f81aUL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_CARTESIANMOTIONFORCE_1 != 0x348e5defUL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_CARTESIANMOTIONFORCE_2 != 0x360d7712UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_CARTESIANMOTIONFORCE_3 != 0xef278fbdUL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_CARTESIANMOTIONFORCE_4 != 0xd44085cfUL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_CARTESIANMOTIONFORCE_5 != 0x99806cb2UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_CARTESIANMOTIONFORCE_6 != 0xc70ae058UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_CARTESIANMOTIONFORCE_7 != 0x4e752fd1UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_CARTESIANMOTIONFORCE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_CARTESIANMOTIONFORCE_0 0xcb09f81aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_CARTESIANMOTIONFORCE_1 0x348e5defUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_CARTESIANMOTIONFORCE_2 0x360d7712UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_CARTESIANMOTIONFORCE_3 0xef278fbdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_CARTESIANMOTIONFORCE_4 0xd44085cfUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_CARTESIANMOTIONFORCE_5 0x99806cb2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_CARTESIANMOTIONFORCE_6 0xc70ae058UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_CARTESIANMOTIONFORCE_7 0x4e752fd1UL

/** @brief Complete ROS2 flexiv_msgs/msg/CartesianMotionForce value; no field projects away native data. */
typedef struct roswasmc_bounded_2_flexiv_msgs_msg_CartesianMotionForce
{
    /**
     * @brief Cartesian motion-force command for one robot, consumed by cartesian_motion_force_controller
     * and forwarded to flexiv::rdk::Robot::SendCartesianMotionForce(). Header. frame_id is ignored: the
     * pose is always expressed in the robot's world frame.
     * @details Original flexiv_msgs/msg/CartesianMotionForce.header; native type std_msgs/msg/Header.
     * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_2_std_msgs_msg_Header header;
    /**
     * @brief Target TCP pose in world frame. The orientation is normalized by the controller. [m]
     * @details Original flexiv_msgs/msg/CartesianMotionForce.pose; native type geometry_msgs/msg/Pose.
     * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_2_geometry_msgs_msg_Pose pose;
    /**
     * @brief Target TCP wrench in the force control frame, only tracked on axes enabled for force control.
     * It is the wrench sensed at the TCP, not exerted by it: +5 N in world Z pushes the TCP down. [N]:[Nm]
     * @details Original flexiv_msgs/msg/CartesianMotionForce.wrench; native type geometry_msgs/msg/Wrench.
     * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_2_geometry_msgs_msg_Wrench wrench;
    /**
     * @brief Target TCP velocity in world frame when reaching the pose. Leave 0 for the most robust
     * behaviour. [m/s]:[rad/s]
     * @details Original flexiv_msgs/msg/CartesianMotionForce.velocity; native type
     * geometry_msgs/msg/Twist. Scalar value. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    roswasmc_bounded_2_geometry_msgs_msg_Twist velocity;
} roswasmc_bounded_2_flexiv_msgs_msg_CartesianMotionForce;

# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_CARTESIANMOTIONFORCE_MAX_WIRE_BYTES 420u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_CARTESIANMOTIONFORCE_MIN_WIRE_BYTES 164u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_CARTESIANMOTIONFORCE_CODEC_IDENTITY "UWVMROS1_2f8de91fe69cf2aa5a50dabb1178e9dcef6b1196602e667a8901caeeb7cba8c3"

/** @brief Explicit declared-default initialization; ordinary C/C++ zero aggregates stay zero.
 * Nested/fixed elements are initialized independently; sequence lengths stay zero.
 * This initializer performs no I/O, registration, allocation or capability operation. */
inline static uint32_t roswasmc_bounded_2_flexiv_msgs_msg_CartesianMotionForce_default(roswasmc_bounded_2_flexiv_msgs_msg_CartesianMotionForce* value)
{
    roswasmc_bounded_2_flexiv_msgs_msg_CartesianMotionForce next = {0};
    if(!value)
    {
        return UWVM_BOUNDED_INVALID;
    }
    (void)roswasmc_bounded_2_geometry_msgs_msg_Pose_default(&next.pose);
    *value = next;
    return 0;
}

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_flexiv_msgs_msg_CartesianMotionForce_valid(roswasmc_bounded_2_flexiv_msgs_msg_CartesianMotionForce const* value)
{
    if(!value)
    {
        return 0;
    }
    if(!roswasmc_bounded_2_std_msgs_msg_Header_valid(&value->header))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_Pose_valid(&value->pose))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_Wrench_valid(&value->wrench))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_Twist_valid(&value->velocity))
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_2_flexiv_msgs_msg_CartesianMotionForce_wire_size(roswasmc_bounded_2_flexiv_msgs_msg_CartesianMotionForce const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&value->header);
    n += roswasmc_bounded_2_geometry_msgs_msg_Pose_wire_size(&value->pose);
    n += roswasmc_bounded_2_geometry_msgs_msg_Wrench_wire_size(&value->wrench);
    n += roswasmc_bounded_2_geometry_msgs_msg_Twist_wire_size(&value->velocity);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_2_flexiv_msgs_msg_CartesianMotionForce_write_fields(roswasmc_bounded_2_flexiv_msgs_msg_CartesianMotionForce const* value,
                                                                                        unsigned char* p,
                                                                                        size_t* offset)
{
    roswasmc_bounded_2_std_msgs_msg_Header_write_fields(&value->header, p, offset);
    roswasmc_bounded_2_geometry_msgs_msg_Pose_write_fields(&value->pose, p, offset);
    roswasmc_bounded_2_geometry_msgs_msg_Wrench_write_fields(&value->wrench, p, offset);
    roswasmc_bounded_2_geometry_msgs_msg_Twist_write_fields(&value->velocity, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_2_flexiv_msgs_msg_CartesianMotionForce_read_fields(unsigned char const* p,
                                                                                      size_t n,
                                                                                      size_t* offset,
                                                                                      roswasmc_bounded_2_flexiv_msgs_msg_CartesianMotionForce* value)
{
    if(!roswasmc_bounded_2_std_msgs_msg_Header_read_fields(p, n, offset, &value->header))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_Pose_read_fields(p, n, offset, &value->pose))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_Wrench_read_fields(p, n, offset, &value->wrench))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_Twist_read_fields(p, n, offset, &value->velocity))
    {
        return 0;
    }
    return roswasmc_bounded_2_flexiv_msgs_msg_CartesianMotionForce_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_2_flexiv_msgs_msg_CartesianMotionForce_encode(roswasmc_bounded_2_flexiv_msgs_msg_CartesianMotionForce const* value,
                                                                                      void* output,
                                                                                      size_t capacity,
                                                                                      size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_flexiv_msgs_msg_CartesianMotionForce_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_flexiv_msgs_msg_CartesianMotionForce_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_flexiv_msgs_msg_CartesianMotionForce_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t roswasmc_bounded_2_flexiv_msgs_msg_CartesianMotionForce_decode(void const* input,
                                                                                      size_t length,
                                                                                      roswasmc_bounded_2_flexiv_msgs_msg_CartesianMotionForce* value)
{
    roswasmc_bounded_2_flexiv_msgs_msg_CartesianMotionForce next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 164u || length > 420u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_flexiv_msgs_msg_CartesianMotionForce_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_DIGITAL)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_DIGITAL_0 != 0x456fc39fUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_DIGITAL_1 != 0xaf5a5b19UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_DIGITAL_2 != 0xc8eaa2e6UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_DIGITAL_3 != 0x5be12fa5UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_DIGITAL_4 != 0xcb9ce935UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_DIGITAL_5 != 0xa8560996UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_DIGITAL_6 != 0x1bc1424eUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_DIGITAL_7 != 0x70251015UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_DIGITAL 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_DIGITAL_0 0x456fc39fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_DIGITAL_1 0xaf5a5b19UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_DIGITAL_2 0xc8eaa2e6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_DIGITAL_3 0x5be12fa5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_DIGITAL_4 0xcb9ce935UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_DIGITAL_5 0xa8560996UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_DIGITAL_6 0x1bc1424eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_DIGITAL_7 0x70251015UL

/** @brief Complete ROS2 flexiv_msgs/msg/Digital value; no field projects away native data. */
typedef struct roswasmc_bounded_2_flexiv_msgs_msg_Digital
{
    /**
     * @brief Retain the complete original uint8 field.
     * @details Original flexiv_msgs/msg/Digital.pin; native type uint8. Scalar value. Storage belongs to
     * the complete value and acquires no ROS resource.
     */
    uint8_t pin;
    /**
     * @brief Retain the complete original bool field.
     * @details Original flexiv_msgs/msg/Digital.state; native type bool. Scalar value. Storage belongs to
     * the complete value and acquires no ROS resource.
     */
    uint8_t state;
} roswasmc_bounded_2_flexiv_msgs_msg_Digital;

# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_DIGITAL_MAX_WIRE_BYTES 2u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_DIGITAL_MIN_WIRE_BYTES 2u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_DIGITAL_CODEC_IDENTITY "UWVMROS1_88d2ffaf88359d000dbb247773404361a70fbc86b08a6fad118a73723f2c6fbf"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_flexiv_msgs_msg_Digital_valid(roswasmc_bounded_2_flexiv_msgs_msg_Digital const* value)
{
    if(!value)
    {
        return 0;
    }
    if(value->state > 1)
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_2_flexiv_msgs_msg_Digital_wire_size(roswasmc_bounded_2_flexiv_msgs_msg_Digital const* value)
{
    size_t n = 0;
    n += 1;
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_2_flexiv_msgs_msg_Digital_write_fields(roswasmc_bounded_2_flexiv_msgs_msg_Digital const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->pin, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->state, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int
    roswasmc_bounded_2_flexiv_msgs_msg_Digital_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_flexiv_msgs_msg_Digital* value)
{
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->pin, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->state, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_2_flexiv_msgs_msg_Digital_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_2_flexiv_msgs_msg_Digital_encode(roswasmc_bounded_2_flexiv_msgs_msg_Digital const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_flexiv_msgs_msg_Digital_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_flexiv_msgs_msg_Digital_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_flexiv_msgs_msg_Digital_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t roswasmc_bounded_2_flexiv_msgs_msg_Digital_decode(void const* input, size_t length, roswasmc_bounded_2_flexiv_msgs_msg_Digital* value)
{
    roswasmc_bounded_2_flexiv_msgs_msg_Digital next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 2u || length > 2u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_flexiv_msgs_msg_Digital_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_GPIOSTATES)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_GPIOSTATES_0 != 0xbbbb4171UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_GPIOSTATES_1 != 0x37b10041UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_GPIOSTATES_2 != 0x84930390UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_GPIOSTATES_3 != 0xe1f7d175UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_GPIOSTATES_4 != 0x8d10577fUL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_GPIOSTATES_5 != 0xf9232912UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_GPIOSTATES_6 != 0xe1c9321fUL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_GPIOSTATES_7 != 0x7ee257ddUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_GPIOSTATES 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_GPIOSTATES_0 0xbbbb4171UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_GPIOSTATES_1 0x37b10041UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_GPIOSTATES_2 0x84930390UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_GPIOSTATES_3 0xe1f7d175UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_GPIOSTATES_4 0x8d10577fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_GPIOSTATES_5 0xf9232912UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_GPIOSTATES_6 0xe1c9321fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_GPIOSTATES_7 0x7ee257ddUL

/** @brief At most32 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_flexiv_msgs_msg_Digital data[32];
} roswasmc_bounded_2_flexiv_msgs_msg_GPIOStates_states_sequence;

/** @brief Complete ROS2 flexiv_msgs/msg/GPIOStates value; no field projects away native data. */
typedef struct roswasmc_bounded_2_flexiv_msgs_msg_GPIOStates
{
    /**
     * @brief Retain the complete original flexiv_msgs/msg/Digital field.
     * @details Original flexiv_msgs/msg/GPIOStates.states; native type flexiv_msgs/msg/Digital. At most 32
     * elements. Storage belongs to the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_2_flexiv_msgs_msg_GPIOStates_states_sequence states;
} roswasmc_bounded_2_flexiv_msgs_msg_GPIOStates;

# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_GPIOSTATES_MAX_WIRE_BYTES 68u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_GPIOSTATES_MIN_WIRE_BYTES 4u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_GPIOSTATES_CODEC_IDENTITY "UWVMROS1_befebf3e30b73f80820c51af2339e0c5a86bef6b155f42fd538540c3fbbd7b14"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_flexiv_msgs_msg_GPIOStates_valid(roswasmc_bounded_2_flexiv_msgs_msg_GPIOStates const* value)
{
    if(!value)
    {
        return 0;
    }
    if(value->states.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->states.size; ++i)
        {
            if(!roswasmc_bounded_2_flexiv_msgs_msg_Digital_valid(&value->states.data[i]))
            {
                return 0;
            }
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_2_flexiv_msgs_msg_GPIOStates_wire_size(roswasmc_bounded_2_flexiv_msgs_msg_GPIOStates const* value)
{
    size_t n = 0;
    n += 4;
    if(value->states.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->states.size; ++i)
        {
            n += roswasmc_bounded_2_flexiv_msgs_msg_Digital_wire_size(&value->states.data[i]);
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_2_flexiv_msgs_msg_GPIOStates_write_fields(roswasmc_bounded_2_flexiv_msgs_msg_GPIOStates const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->states.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->states.size; ++i)
        {
            roswasmc_bounded_2_flexiv_msgs_msg_Digital_write_fields(&value->states.data[i], p, offset);
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_2_flexiv_msgs_msg_GPIOStates_read_fields(unsigned char const* p,
                                                                            size_t n,
                                                                            size_t* offset,
                                                                            roswasmc_bounded_2_flexiv_msgs_msg_GPIOStates* value)
{
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->states.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->states.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->states.size; ++i)
        {
            if(!roswasmc_bounded_2_flexiv_msgs_msg_Digital_read_fields(p, n, offset, &value->states.data[i]))
            {
                return 0;
            }
        }
    }
    return roswasmc_bounded_2_flexiv_msgs_msg_GPIOStates_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_2_flexiv_msgs_msg_GPIOStates_encode(roswasmc_bounded_2_flexiv_msgs_msg_GPIOStates const* value,
                                                                            void* output,
                                                                            size_t capacity,
                                                                            size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_flexiv_msgs_msg_GPIOStates_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_flexiv_msgs_msg_GPIOStates_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_flexiv_msgs_msg_GPIOStates_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_flexiv_msgs_msg_GPIOStates_decode(void const* input, size_t length, roswasmc_bounded_2_flexiv_msgs_msg_GPIOStates* value)
{
    roswasmc_bounded_2_flexiv_msgs_msg_GPIOStates next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 4u || length > 68u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_flexiv_msgs_msg_GPIOStates_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTIMPEDANCE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTIMPEDANCE_0 != 0xb0a05d04UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTIMPEDANCE_1 != 0xc109d7dbUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTIMPEDANCE_2 != 0x3701c533UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTIMPEDANCE_3 != 0xfb5dbd01UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTIMPEDANCE_4 != 0x77f15c45UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTIMPEDANCE_5 != 0x1369137aUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTIMPEDANCE_6 != 0x72c399e8UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTIMPEDANCE_7 != 0x25769e7eUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTIMPEDANCE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTIMPEDANCE_0 0xb0a05d04UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTIMPEDANCE_1 0xc109d7dbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTIMPEDANCE_2 0x3701c533UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTIMPEDANCE_3 0xfb5dbd01UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTIMPEDANCE_4 0x77f15c45UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTIMPEDANCE_5 0x1369137aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTIMPEDANCE_6 0x72c399e8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTIMPEDANCE_7 0x25769e7eUL

/** @brief UTF-8 byte storage for flexiv_msgs/msg/JointImpedance.joint_names; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_2_flexiv_msgs_msg_JointImpedance_joint_names_text;

/** @brief At most32 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_flexiv_msgs_msg_JointImpedance_joint_names_text data[32];
} roswasmc_bounded_2_flexiv_msgs_msg_JointImpedance_joint_names_sequence;

/** @brief At most32 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[32];
} roswasmc_bounded_2_flexiv_msgs_msg_JointImpedance_k_q_sequence;

/** @brief At most32 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[32];
} roswasmc_bounded_2_flexiv_msgs_msg_JointImpedance_z_q_sequence;

/** @brief At most32 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[32];
} roswasmc_bounded_2_flexiv_msgs_msg_JointImpedance_k_q_nom_sequence;

/** @brief Complete ROS2 flexiv_msgs/msg/JointImpedance value; no field projects away native data. */
typedef struct roswasmc_bounded_2_flexiv_msgs_msg_JointImpedance
{
    /**
     * @brief Impedance properties of the robot's joint motion controller, used in the joint impedance
     * control modes. Mirrors the arguments of flexiv::rdk::Robot::SetJointImpedance(). Header
     * @details Original flexiv_msgs/msg/JointImpedance.header; native type std_msgs/msg/Header. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_2_std_msgs_msg_Header header;
    /**
     * @brief Joint names in URDF order. Every array below is indexed by this.
     * @details Original flexiv_msgs/msg/JointImpedance.joint_names; native type string. At most 32
     * elements. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
     * acquires no ROS resource.
     */
    roswasmc_bounded_2_flexiv_msgs_msg_JointImpedance_joint_names_sequence joint_names;
    /**
     * @brief Joint motion stiffness K_q. A joint at 0 is free-floating. [Nm/rad]
     * @details Original flexiv_msgs/msg/JointImpedance.k_q; native type float64. At most 32 elements.
     * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    roswasmc_bounded_2_flexiv_msgs_msg_JointImpedance_k_q_sequence k_q;
    /**
     * @brief Joint motion damping ratio Z_q, dimensionless. Valid range [0.3, 0.8], nominal 0.7
     * @details Original flexiv_msgs/msg/JointImpedance.z_q; native type float64. At most 32 elements.
     * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    roswasmc_bounded_2_flexiv_msgs_msg_JointImpedance_z_q_sequence z_q;
    /**
     * @brief Nominal joint motion stiffness, the upper bound of k_q. [Nm/rad]
     * @details Original flexiv_msgs/msg/JointImpedance.k_q_nom; native type float64. At most 32 elements.
     * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    roswasmc_bounded_2_flexiv_msgs_msg_JointImpedance_k_q_nom_sequence k_q_nom;
    /**
     * @brief Whether these values are in effect on the robot. False while the robot is not in a joint
     * impedance control mode: they are held and applied on the next controller start.
     * @details Original flexiv_msgs/msg/JointImpedance.in_effect; native type bool. Scalar value. Storage
     * belongs to the complete value and acquires no ROS resource.
     */
    uint8_t in_effect;
} roswasmc_bounded_2_flexiv_msgs_msg_JointImpedance;

# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTIMPEDANCE_MAX_WIRE_BYTES 9373u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTIMPEDANCE_MIN_WIRE_BYTES 29u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTIMPEDANCE_CODEC_IDENTITY "UWVMROS1_f93719074c048d0ab915eeefd2e62bcdfe16ac74f06a3aa505f06ca6d8c3515a"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_flexiv_msgs_msg_JointImpedance_valid(roswasmc_bounded_2_flexiv_msgs_msg_JointImpedance const* value)
{
    if(!value)
    {
        return 0;
    }
    if(!roswasmc_bounded_2_std_msgs_msg_Header_valid(&value->header))
    {
        return 0;
    }
    if(value->joint_names.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->joint_names.size; ++i)
        {
            if(value->joint_names.data[i].size > 256u || !uwvm_bounded_utf8(value->joint_names.data[i].data, value->joint_names.data[i].size))
            {
                return 0;
            }
        }
    }
    if(value->k_q.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->k_q.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->k_q.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    if(value->z_q.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->z_q.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->z_q.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    if(value->k_q_nom.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->k_q_nom.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->k_q_nom.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    if(value->in_effect > 1)
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_2_flexiv_msgs_msg_JointImpedance_wire_size(roswasmc_bounded_2_flexiv_msgs_msg_JointImpedance const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&value->header);
    n += 4;
    if(value->joint_names.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->joint_names.size; ++i)
        {
            n += 4 + value->joint_names.data[i].size;
        }
    }
    n += 4;
    if(value->k_q.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->k_q.size; ++i)
        {
            n += 8;
        }
    }
    n += 4;
    if(value->z_q.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->z_q.size; ++i)
        {
            n += 8;
        }
    }
    n += 4;
    if(value->k_q_nom.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->k_q_nom.size; ++i)
        {
            n += 8;
        }
    }
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_2_flexiv_msgs_msg_JointImpedance_write_fields(roswasmc_bounded_2_flexiv_msgs_msg_JointImpedance const* value,
                                                                                  unsigned char* p,
                                                                                  size_t* offset)
{
    roswasmc_bounded_2_std_msgs_msg_Header_write_fields(&value->header, p, offset);
    uwvm_bounded_put(p + *offset, value->joint_names.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->joint_names.size; ++i)
        {
            uwvm_bounded_put(p + *offset, value->joint_names.data[i].size, 4);
            *offset += 4;
            uwvm_bounded_copy(p + *offset, value->joint_names.data[i].data, value->joint_names.data[i].size);
            *offset += value->joint_names.data[i].size;
        }
    }
    uwvm_bounded_put(p + *offset, value->k_q.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->k_q.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->k_q.data[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    uwvm_bounded_put(p + *offset, value->z_q.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->z_q.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->z_q.data[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    uwvm_bounded_put(p + *offset, value->k_q_nom.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->k_q_nom.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->k_q_nom.data[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->in_effect, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_2_flexiv_msgs_msg_JointImpedance_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_2_flexiv_msgs_msg_JointImpedance* value)
{
    if(!roswasmc_bounded_2_std_msgs_msg_Header_read_fields(p, n, offset, &value->header))
    {
        return 0;
    }
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->joint_names.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->joint_names.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->joint_names.size; ++i)
        {
            if(*offset > n || n - *offset < 4)
            {
                return 0;
            }
            value->joint_names.data[i].size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
            *offset += 4;
            if(value->joint_names.data[i].size > 256u || value->joint_names.data[i].size > n - *offset)
            {
                return 0;
            }
            uwvm_bounded_copy(value->joint_names.data[i].data, p + *offset, value->joint_names.data[i].size);
            *offset += value->joint_names.data[i].size;
        }
    }
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->k_q.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->k_q.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->k_q.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->k_q.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->z_q.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->z_q.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->z_q.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->z_q.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->k_q_nom.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->k_q_nom.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->k_q_nom.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->k_q_nom.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->in_effect, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_2_flexiv_msgs_msg_JointImpedance_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_2_flexiv_msgs_msg_JointImpedance_encode(roswasmc_bounded_2_flexiv_msgs_msg_JointImpedance const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_flexiv_msgs_msg_JointImpedance_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_flexiv_msgs_msg_JointImpedance_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_flexiv_msgs_msg_JointImpedance_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_flexiv_msgs_msg_JointImpedance_decode(void const* input, size_t length, roswasmc_bounded_2_flexiv_msgs_msg_JointImpedance* value)
{
    roswasmc_bounded_2_flexiv_msgs_msg_JointImpedance next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 29u || length > 9373u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_flexiv_msgs_msg_JointImpedance_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTINERTIASCALE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTINERTIASCALE_0 != 0x10dd84eeUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTINERTIASCALE_1 != 0x1a8e8379UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTINERTIASCALE_2 != 0x3f4a2f7fUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTINERTIASCALE_3 != 0x01ad73e5UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTINERTIASCALE_4 != 0x720b6389UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTINERTIASCALE_5 != 0xcbca72f3UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTINERTIASCALE_6 != 0x3f1c0356UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTINERTIASCALE_7 != 0xfc18bf7bUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTINERTIASCALE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTINERTIASCALE_0 0x10dd84eeUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTINERTIASCALE_1 0x1a8e8379UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTINERTIASCALE_2 0x3f4a2f7fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTINERTIASCALE_3 0x01ad73e5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTINERTIASCALE_4 0x720b6389UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTINERTIASCALE_5 0xcbca72f3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTINERTIASCALE_6 0x3f1c0356UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTINERTIASCALE_7 0xfc18bf7bUL

/** @brief UTF-8 byte storage for flexiv_msgs/msg/JointInertiaScale.joint_names; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_2_flexiv_msgs_msg_JointInertiaScale_joint_names_text;

/** @brief At most32 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_flexiv_msgs_msg_JointInertiaScale_joint_names_text data[32];
} roswasmc_bounded_2_flexiv_msgs_msg_JointInertiaScale_joint_names_sequence;

/** @brief At most32 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[32];
} roswasmc_bounded_2_flexiv_msgs_msg_JointInertiaScale_inertia_scales_sequence;

/** @brief Complete ROS2 flexiv_msgs/msg/JointInertiaScale value; no field projects away native data. */
typedef struct roswasmc_bounded_2_flexiv_msgs_msg_JointInertiaScale
{
    /**
     * @brief Inertia shaping scales of the robot's joint motion controller, used in the joint impedance
     * control modes. Mirrors the argument of flexiv::rdk::Robot::SetJointInertiaScale(). Header
     * @details Original flexiv_msgs/msg/JointInertiaScale.header; native type std_msgs/msg/Header. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_2_std_msgs_msg_Header header;
    /**
     * @brief Joint names in URDF order. Every array below is indexed by this.
     * @details Original flexiv_msgs/msg/JointInertiaScale.joint_names; native type string. At most 32
     * elements. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
     * acquires no ROS resource.
     */
    roswasmc_bounded_2_flexiv_msgs_msg_JointInertiaScale_joint_names_sequence joint_names;
    /**
     * @brief Inertia shaping scale sigma_q, dimensionless. Valid range [0.75, 1.0]. The nominal value 1.0
     * means no shaping; a smaller scale makes the joint behave as if it were lighter.
     * @details Original flexiv_msgs/msg/JointInertiaScale.inertia_scales; native type float64. At most 32
     * elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
     * acquires no ROS resource.
     */
    roswasmc_bounded_2_flexiv_msgs_msg_JointInertiaScale_inertia_scales_sequence inertia_scales;
    /**
     * @brief Whether these values are in effect on the robot. False while the robot is not in a joint
     * impedance control mode: they are held and applied on the next controller start.
     * @details Original flexiv_msgs/msg/JointInertiaScale.in_effect; native type bool. Scalar value.
     * Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t in_effect;
} roswasmc_bounded_2_flexiv_msgs_msg_JointInertiaScale;

# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTINERTIASCALE_MAX_WIRE_BYTES 8853u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTINERTIASCALE_MIN_WIRE_BYTES 21u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTINERTIASCALE_CODEC_IDENTITY "UWVMROS1_3dc5f0addd6835f698feda5133efb05cde46e480dee0e219436fcc4443018e1f"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_flexiv_msgs_msg_JointInertiaScale_valid(roswasmc_bounded_2_flexiv_msgs_msg_JointInertiaScale const* value)
{
    if(!value)
    {
        return 0;
    }
    if(!roswasmc_bounded_2_std_msgs_msg_Header_valid(&value->header))
    {
        return 0;
    }
    if(value->joint_names.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->joint_names.size; ++i)
        {
            if(value->joint_names.data[i].size > 256u || !uwvm_bounded_utf8(value->joint_names.data[i].data, value->joint_names.data[i].size))
            {
                return 0;
            }
        }
    }
    if(value->inertia_scales.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->inertia_scales.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->inertia_scales.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    if(value->in_effect > 1)
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_2_flexiv_msgs_msg_JointInertiaScale_wire_size(roswasmc_bounded_2_flexiv_msgs_msg_JointInertiaScale const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&value->header);
    n += 4;
    if(value->joint_names.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->joint_names.size; ++i)
        {
            n += 4 + value->joint_names.data[i].size;
        }
    }
    n += 4;
    if(value->inertia_scales.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->inertia_scales.size; ++i)
        {
            n += 8;
        }
    }
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_2_flexiv_msgs_msg_JointInertiaScale_write_fields(roswasmc_bounded_2_flexiv_msgs_msg_JointInertiaScale const* value,
                                                                                     unsigned char* p,
                                                                                     size_t* offset)
{
    roswasmc_bounded_2_std_msgs_msg_Header_write_fields(&value->header, p, offset);
    uwvm_bounded_put(p + *offset, value->joint_names.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->joint_names.size; ++i)
        {
            uwvm_bounded_put(p + *offset, value->joint_names.data[i].size, 4);
            *offset += 4;
            uwvm_bounded_copy(p + *offset, value->joint_names.data[i].data, value->joint_names.data[i].size);
            *offset += value->joint_names.data[i].size;
        }
    }
    uwvm_bounded_put(p + *offset, value->inertia_scales.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->inertia_scales.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->inertia_scales.data[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->in_effect, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_2_flexiv_msgs_msg_JointInertiaScale_read_fields(unsigned char const* p,
                                                                                   size_t n,
                                                                                   size_t* offset,
                                                                                   roswasmc_bounded_2_flexiv_msgs_msg_JointInertiaScale* value)
{
    if(!roswasmc_bounded_2_std_msgs_msg_Header_read_fields(p, n, offset, &value->header))
    {
        return 0;
    }
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->joint_names.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->joint_names.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->joint_names.size; ++i)
        {
            if(*offset > n || n - *offset < 4)
            {
                return 0;
            }
            value->joint_names.data[i].size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
            *offset += 4;
            if(value->joint_names.data[i].size > 256u || value->joint_names.data[i].size > n - *offset)
            {
                return 0;
            }
            uwvm_bounded_copy(value->joint_names.data[i].data, p + *offset, value->joint_names.data[i].size);
            *offset += value->joint_names.data[i].size;
        }
    }
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->inertia_scales.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->inertia_scales.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->inertia_scales.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->inertia_scales.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->in_effect, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_2_flexiv_msgs_msg_JointInertiaScale_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_2_flexiv_msgs_msg_JointInertiaScale_encode(roswasmc_bounded_2_flexiv_msgs_msg_JointInertiaScale const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_flexiv_msgs_msg_JointInertiaScale_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_flexiv_msgs_msg_JointInertiaScale_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_flexiv_msgs_msg_JointInertiaScale_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_flexiv_msgs_msg_JointInertiaScale_decode(void const* input, size_t length, roswasmc_bounded_2_flexiv_msgs_msg_JointInertiaScale* value)
{
    roswasmc_bounded_2_flexiv_msgs_msg_JointInertiaScale next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 21u || length > 8853u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_flexiv_msgs_msg_JointInertiaScale_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTPOSVEL)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTPOSVEL_0 != 0x3e8ceba4UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTPOSVEL_1 != 0xe1b65d46UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTPOSVEL_2 != 0xd74ae326UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTPOSVEL_3 != 0xbd65c63bUL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTPOSVEL_4 != 0x7fa23be7UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTPOSVEL_5 != 0xb9aa2770UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTPOSVEL_6 != 0xb0572fefUL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTPOSVEL_7 != 0x8dd2f569UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTPOSVEL 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTPOSVEL_0 0x3e8ceba4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTPOSVEL_1 0xe1b65d46UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTPOSVEL_2 0xd74ae326UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTPOSVEL_3 0xbd65c63bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTPOSVEL_4 0x7fa23be7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTPOSVEL_5 0xb9aa2770UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTPOSVEL_6 0xb0572fefUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTPOSVEL_7 0x8dd2f569UL

/** @brief At most32 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[32];
} roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel_positions_sequence;

/** @brief At most32 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[32];
} roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel_velocities_sequence;

/** @brief Complete ROS2 flexiv_msgs/msg/JointPosVel value; no field projects away native data. */
typedef struct roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel
{
    /**
     * @brief Retain the complete original float64 field.
     * @details Original flexiv_msgs/msg/JointPosVel.positions; native type float64. At most 32 elements.
     * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel_positions_sequence positions;
    /**
     * @brief Retain the complete original float64 field.
     * @details Original flexiv_msgs/msg/JointPosVel.velocities; native type float64. At most 32 elements.
     * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel_velocities_sequence velocities;
} roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel;

# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTPOSVEL_MAX_WIRE_BYTES 520u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTPOSVEL_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTPOSVEL_CODEC_IDENTITY "UWVMROS1_ab1060b13eacca41febd2b58a61f0b93df867a9d6579b4f2b43bf5280f2df4ca"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel_valid(roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel const* value)
{
    if(!value)
    {
        return 0;
    }
    if(value->positions.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->positions.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->positions.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    if(value->velocities.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->velocities.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->velocities.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel_wire_size(roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel const* value)
{
    size_t n = 0;
    n += 4;
    if(value->positions.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->positions.size; ++i)
        {
            n += 8;
        }
    }
    n += 4;
    if(value->velocities.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->velocities.size; ++i)
        {
            n += 8;
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel_write_fields(roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->positions.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->positions.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->positions.data[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    uwvm_bounded_put(p + *offset, value->velocities.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->velocities.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->velocities.data[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel_read_fields(unsigned char const* p,
                                                                             size_t n,
                                                                             size_t* offset,
                                                                             roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel* value)
{
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->positions.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->positions.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->positions.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->positions.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->velocities.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->velocities.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->velocities.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->velocities.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    return roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel_encode(roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel const* value,
                                                                             void* output,
                                                                             size_t capacity,
                                                                             size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel_decode(void const* input, size_t length, roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel* value)
{
    roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 520u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MAXCONTACTTORQUE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MAXCONTACTTORQUE_0 != 0xb8d75d43UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MAXCONTACTTORQUE_1 != 0x41810d31UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MAXCONTACTTORQUE_2 != 0xe34abb0cUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MAXCONTACTTORQUE_3 != 0x4feebc2bUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MAXCONTACTTORQUE_4 != 0x023cf4cbUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MAXCONTACTTORQUE_5 != 0x738f67e6UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MAXCONTACTTORQUE_6 != 0x8bcfaecaUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MAXCONTACTTORQUE_7 != 0x71b0cbd6UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MAXCONTACTTORQUE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MAXCONTACTTORQUE_0 0xb8d75d43UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MAXCONTACTTORQUE_1 0x41810d31UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MAXCONTACTTORQUE_2 0xe34abb0cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MAXCONTACTTORQUE_3 0x4feebc2bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MAXCONTACTTORQUE_4 0x023cf4cbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MAXCONTACTTORQUE_5 0x738f67e6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MAXCONTACTTORQUE_6 0x8bcfaecaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MAXCONTACTTORQUE_7 0x71b0cbd6UL

/** @brief UTF-8 byte storage for flexiv_msgs/msg/MaxContactTorque.joint_names; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_2_flexiv_msgs_msg_MaxContactTorque_joint_names_text;

/** @brief At most32 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_flexiv_msgs_msg_MaxContactTorque_joint_names_text data[32];
} roswasmc_bounded_2_flexiv_msgs_msg_MaxContactTorque_joint_names_sequence;

/** @brief At most32 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[32];
} roswasmc_bounded_2_flexiv_msgs_msg_MaxContactTorque_max_contact_torques_sequence;

/** @brief At most32 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[32];
} roswasmc_bounded_2_flexiv_msgs_msg_MaxContactTorque_tau_max_sequence;

/** @brief Complete ROS2 flexiv_msgs/msg/MaxContactTorque value; no field projects away native data. */
typedef struct roswasmc_bounded_2_flexiv_msgs_msg_MaxContactTorque
{
    /**
     * @brief Maximum contact torques of the robot's joint motion controller, used in the joint impedance
     * control modes. Mirrors the argument of flexiv::rdk::Robot::SetMaxContactTorque(). Header
     * @details Original flexiv_msgs/msg/MaxContactTorque.header; native type std_msgs/msg/Header. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_2_std_msgs_msg_Header header;
    /**
     * @brief Joint names in URDF order. Every array below is indexed by this.
     * @details Original flexiv_msgs/msg/MaxContactTorque.joint_names; native type string. At most 32
     * elements. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
     * acquires no ROS resource.
     */
    roswasmc_bounded_2_flexiv_msgs_msg_MaxContactTorque_joint_names_sequence joint_names;
    /**
     * @brief Maximum contact torque the controller regulates its output to maintain. [Nm]
     * @details Original flexiv_msgs/msg/MaxContactTorque.max_contact_torques; native type float64. At most
     * 32 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value
     * and acquires no ROS resource.
     */
    roswasmc_bounded_2_flexiv_msgs_msg_MaxContactTorque_max_contact_torques_sequence max_contact_torques;
    /**
     * @brief Upper software limits of joint torques, the upper bound of max_contact_torques. [Nm]
     * @details Original flexiv_msgs/msg/MaxContactTorque.tau_max; native type float64. At most 32
     * elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
     * acquires no ROS resource.
     */
    roswasmc_bounded_2_flexiv_msgs_msg_MaxContactTorque_tau_max_sequence tau_max;
    /**
     * @brief Whether these values are in effect on the robot. False while the robot is not in a joint
     * impedance control mode: they are held and applied on the next controller start.
     * @details Original flexiv_msgs/msg/MaxContactTorque.in_effect; native type bool. Scalar value.
     * Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t in_effect;
} roswasmc_bounded_2_flexiv_msgs_msg_MaxContactTorque;

# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MAXCONTACTTORQUE_MAX_WIRE_BYTES 9113u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MAXCONTACTTORQUE_MIN_WIRE_BYTES 25u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MAXCONTACTTORQUE_CODEC_IDENTITY "UWVMROS1_d98ebc099077f69f5311d46c2179d08367c301b6c9d1b272b3bc55ba3df185da"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_flexiv_msgs_msg_MaxContactTorque_valid(roswasmc_bounded_2_flexiv_msgs_msg_MaxContactTorque const* value)
{
    if(!value)
    {
        return 0;
    }
    if(!roswasmc_bounded_2_std_msgs_msg_Header_valid(&value->header))
    {
        return 0;
    }
    if(value->joint_names.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->joint_names.size; ++i)
        {
            if(value->joint_names.data[i].size > 256u || !uwvm_bounded_utf8(value->joint_names.data[i].data, value->joint_names.data[i].size))
            {
                return 0;
            }
        }
    }
    if(value->max_contact_torques.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->max_contact_torques.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->max_contact_torques.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    if(value->tau_max.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->tau_max.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->tau_max.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    if(value->in_effect > 1)
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_2_flexiv_msgs_msg_MaxContactTorque_wire_size(roswasmc_bounded_2_flexiv_msgs_msg_MaxContactTorque const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&value->header);
    n += 4;
    if(value->joint_names.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->joint_names.size; ++i)
        {
            n += 4 + value->joint_names.data[i].size;
        }
    }
    n += 4;
    if(value->max_contact_torques.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->max_contact_torques.size; ++i)
        {
            n += 8;
        }
    }
    n += 4;
    if(value->tau_max.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->tau_max.size; ++i)
        {
            n += 8;
        }
    }
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_2_flexiv_msgs_msg_MaxContactTorque_write_fields(roswasmc_bounded_2_flexiv_msgs_msg_MaxContactTorque const* value,
                                                                                    unsigned char* p,
                                                                                    size_t* offset)
{
    roswasmc_bounded_2_std_msgs_msg_Header_write_fields(&value->header, p, offset);
    uwvm_bounded_put(p + *offset, value->joint_names.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->joint_names.size; ++i)
        {
            uwvm_bounded_put(p + *offset, value->joint_names.data[i].size, 4);
            *offset += 4;
            uwvm_bounded_copy(p + *offset, value->joint_names.data[i].data, value->joint_names.data[i].size);
            *offset += value->joint_names.data[i].size;
        }
    }
    uwvm_bounded_put(p + *offset, value->max_contact_torques.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->max_contact_torques.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->max_contact_torques.data[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    uwvm_bounded_put(p + *offset, value->tau_max.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->tau_max.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->tau_max.data[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->in_effect, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_2_flexiv_msgs_msg_MaxContactTorque_read_fields(unsigned char const* p,
                                                                                  size_t n,
                                                                                  size_t* offset,
                                                                                  roswasmc_bounded_2_flexiv_msgs_msg_MaxContactTorque* value)
{
    if(!roswasmc_bounded_2_std_msgs_msg_Header_read_fields(p, n, offset, &value->header))
    {
        return 0;
    }
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->joint_names.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->joint_names.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->joint_names.size; ++i)
        {
            if(*offset > n || n - *offset < 4)
            {
                return 0;
            }
            value->joint_names.data[i].size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
            *offset += 4;
            if(value->joint_names.data[i].size > 256u || value->joint_names.data[i].size > n - *offset)
            {
                return 0;
            }
            uwvm_bounded_copy(value->joint_names.data[i].data, p + *offset, value->joint_names.data[i].size);
            *offset += value->joint_names.data[i].size;
        }
    }
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->max_contact_torques.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->max_contact_torques.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->max_contact_torques.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->max_contact_torques.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->tau_max.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->tau_max.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->tau_max.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->tau_max.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->in_effect, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_2_flexiv_msgs_msg_MaxContactTorque_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_2_flexiv_msgs_msg_MaxContactTorque_encode(roswasmc_bounded_2_flexiv_msgs_msg_MaxContactTorque const* value,
                                                                                  void* output,
                                                                                  size_t capacity,
                                                                                  size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_flexiv_msgs_msg_MaxContactTorque_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_flexiv_msgs_msg_MaxContactTorque_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_flexiv_msgs_msg_MaxContactTorque_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_flexiv_msgs_msg_MaxContactTorque_decode(void const* input, size_t length, roswasmc_bounded_2_flexiv_msgs_msg_MaxContactTorque* value)
{
    roswasmc_bounded_2_flexiv_msgs_msg_MaxContactTorque next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 25u || length > 9113u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_flexiv_msgs_msg_MaxContactTorque_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MODE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MODE_0 != 0x9d60ec8dUL ||                                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MODE_1 != 0x849b3bc3UL ||                                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MODE_2 != 0x1881f64dUL ||                                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MODE_3 != 0x567459e9UL ||                                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MODE_4 != 0x632bde2dUL ||                                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MODE_5 != 0x625ecb2cUL ||                                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MODE_6 != 0xbe97b3a0UL ||                                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MODE_7 != 0x83b3222eUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MODE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MODE_0 0x9d60ec8dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MODE_1 0x849b3bc3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MODE_2 0x1881f64dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MODE_3 0x567459e9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MODE_4 0x632bde2dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MODE_5 0x625ecb2cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MODE_6 0xbe97b3a0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MODE_7 0x83b3222eUL

/** @brief Complete ROS2 flexiv_msgs/msg/Mode value; no field projects away native data. */
typedef struct roswasmc_bounded_2_flexiv_msgs_msg_Mode
{
    /**
     * @brief Retain the complete original int8 field.
     * @details Original flexiv_msgs/msg/Mode.mode; native type int8. Scalar value. Storage belongs to the
     * complete value and acquires no ROS resource.
     */
    int8_t mode;
} roswasmc_bounded_2_flexiv_msgs_msg_Mode;

# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MODE_MAX_WIRE_BYTES 1u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MODE_MIN_WIRE_BYTES 1u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MODE_CODEC_IDENTITY "UWVMROS1_79f6d3de38a4d7d514780f9d71fcc8b5cd413a3b511f1b31243c210265be0c87"
/** @brief Original scalar constant MODE_UNKNOWN=0; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MODE_MODE_UNKNOWN INT32_C(0)
/** @brief Original scalar constant MODE_IDLE=1; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MODE_MODE_IDLE INT32_C(1)
/** @brief Original scalar constant MODE_RT_JOINT_TORQUE=2; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MODE_MODE_RT_JOINT_TORQUE INT32_C(2)
/** @brief Original scalar constant MODE_RT_JOINT_IMPEDANCE=3; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MODE_MODE_RT_JOINT_IMPEDANCE INT32_C(3)
/** @brief Original scalar constant MODE_NRT_JOINT_IMPEDANCE=4; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MODE_MODE_NRT_JOINT_IMPEDANCE INT32_C(4)
/** @brief Original scalar constant MODE_RT_JOINT_POSITION=5; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MODE_MODE_RT_JOINT_POSITION INT32_C(5)
/** @brief Original scalar constant MODE_NRT_JOINT_POSITION=6; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MODE_MODE_NRT_JOINT_POSITION INT32_C(6)
/** @brief Original scalar constant MODE_NRT_PLAN_EXECUTION=7; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MODE_MODE_NRT_PLAN_EXECUTION INT32_C(7)
/** @brief Original scalar constant MODE_NRT_PRIMITIVE_EXECUTION=8; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MODE_MODE_NRT_PRIMITIVE_EXECUTION INT32_C(8)
/** @brief Original scalar constant MODE_RT_CARTESIAN_MOTION_FORCE=9; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MODE_MODE_RT_CARTESIAN_MOTION_FORCE INT32_C(9)
/** @brief Original scalar constant MODE_NRT_CARTESIAN_MOTION_FORCE=10; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MODE_MODE_NRT_CARTESIAN_MOTION_FORCE INT32_C(10)
/** @brief Original scalar constant MODE_NRT_SUPER_PRIMITIVE=11; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MODE_MODE_NRT_SUPER_PRIMITIVE INT32_C(11)

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_flexiv_msgs_msg_Mode_valid(roswasmc_bounded_2_flexiv_msgs_msg_Mode const* value)
{
    if(!value)
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_2_flexiv_msgs_msg_Mode_wire_size(roswasmc_bounded_2_flexiv_msgs_msg_Mode const* value)
{
    size_t n = 0;
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_2_flexiv_msgs_msg_Mode_write_fields(roswasmc_bounded_2_flexiv_msgs_msg_Mode const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->mode, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int
    roswasmc_bounded_2_flexiv_msgs_msg_Mode_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_flexiv_msgs_msg_Mode* value)
{
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->mode, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_2_flexiv_msgs_msg_Mode_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_2_flexiv_msgs_msg_Mode_encode(roswasmc_bounded_2_flexiv_msgs_msg_Mode const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_flexiv_msgs_msg_Mode_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_flexiv_msgs_msg_Mode_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_flexiv_msgs_msg_Mode_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t roswasmc_bounded_2_flexiv_msgs_msg_Mode_decode(void const* input, size_t length, roswasmc_bounded_2_flexiv_msgs_msg_Mode* value)
{
    roswasmc_bounded_2_flexiv_msgs_msg_Mode next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 1u || length > 1u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_flexiv_msgs_msg_Mode_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTEVENT)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTEVENT_0 != 0x82774814UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTEVENT_1 != 0x3b862acdUL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTEVENT_2 != 0x1f51714aUL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTEVENT_3 != 0x076c921aUL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTEVENT_4 != 0x2cf048e1UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTEVENT_5 != 0x6de2488bUL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTEVENT_6 != 0x3e83e143UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTEVENT_7 != 0xa13e081dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTEVENT 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTEVENT_0 0x82774814UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTEVENT_1 0x3b862acdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTEVENT_2 0x1f51714aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTEVENT_3 0x076c921aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTEVENT_4 0x2cf048e1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTEVENT_5 0x6de2488bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTEVENT_6 0x3e83e143UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTEVENT_7 0xa13e081dUL

/** @brief UTF-8 byte storage for flexiv_msgs/msg/RobotEvent.description; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_2_flexiv_msgs_msg_RobotEvent_description_text;

/** @brief UTF-8 byte storage for flexiv_msgs/msg/RobotEvent.consequences; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_2_flexiv_msgs_msg_RobotEvent_consequences_text;

/** @brief UTF-8 byte storage for flexiv_msgs/msg/RobotEvent.probable_causes; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_2_flexiv_msgs_msg_RobotEvent_probable_causes_text;

/** @brief UTF-8 byte storage for flexiv_msgs/msg/RobotEvent.recommended_actions; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_2_flexiv_msgs_msg_RobotEvent_recommended_actions_text;

/** @brief Complete ROS2 flexiv_msgs/msg/RobotEvent value; no field projects away native data. */
typedef struct roswasmc_bounded_2_flexiv_msgs_msg_RobotEvent
{
    /**
     * @brief Retain the complete original uint8 field.
     * @details Original flexiv_msgs/msg/RobotEvent.level; native type uint8. Scalar value. Storage belongs
     * to the complete value and acquires no ROS resource.
     */
    uint8_t level;
    /**
     * @brief Unique ID of the event
     * @details Original flexiv_msgs/msg/RobotEvent.id; native type int32. Scalar value. Storage belongs to
     * the complete value and acquires no ROS resource.
     */
    int32_t id;
    /**
     * @brief Brief description of the event
     * @details Original flexiv_msgs/msg/RobotEvent.description; native type string. Scalar value. UTF-8
     * capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    roswasmc_bounded_2_flexiv_msgs_msg_RobotEvent_description_text description;
    /**
     * @brief Consequences caused by the event
     * @details Original flexiv_msgs/msg/RobotEvent.consequences; native type string. Scalar value. UTF-8
     * capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    roswasmc_bounded_2_flexiv_msgs_msg_RobotEvent_consequences_text consequences;
    /**
     * @brief Probable causes of the event
     * @details Original flexiv_msgs/msg/RobotEvent.probable_causes; native type string. Scalar value.
     * UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    roswasmc_bounded_2_flexiv_msgs_msg_RobotEvent_probable_causes_text probable_causes;
    /**
     * @brief Recommended actions after the event
     * @details Original flexiv_msgs/msg/RobotEvent.recommended_actions; native type string. Scalar value.
     * UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    roswasmc_bounded_2_flexiv_msgs_msg_RobotEvent_recommended_actions_text recommended_actions;
    /**
     * @brief Timestamp of the event
     * @details Original flexiv_msgs/msg/RobotEvent.timestamp; native type builtin_interfaces/msg/Time.
     * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_2_builtin_interfaces_msg_Time timestamp;
} roswasmc_bounded_2_flexiv_msgs_msg_RobotEvent;

# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTEVENT_MAX_WIRE_BYTES 1053u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTEVENT_MIN_WIRE_BYTES 29u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTEVENT_CODEC_IDENTITY "UWVMROS1_cbc02424eaea2ae9754309d070d424f0d0fcd078e67a64b22cbb1a36848e0a17"
/** @brief Original scalar constant LEVEL_UNKNOWN=0; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTEVENT_LEVEL_UNKNOWN UINT32_C(0)
/** @brief Original scalar constant LEVEL_INFO=1; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTEVENT_LEVEL_INFO UINT32_C(1)
/** @brief Original scalar constant LEVEL_WARNING=2; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTEVENT_LEVEL_WARNING UINT32_C(2)
/** @brief Original scalar constant LEVEL_ERROR=3; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTEVENT_LEVEL_ERROR UINT32_C(3)
/** @brief Original scalar constant LEVEL_CRITICAL=4; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTEVENT_LEVEL_CRITICAL UINT32_C(4)

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_flexiv_msgs_msg_RobotEvent_valid(roswasmc_bounded_2_flexiv_msgs_msg_RobotEvent const* value)
{
    if(!value)
    {
        return 0;
    }
    if(value->description.size > 256u || !uwvm_bounded_utf8(value->description.data, value->description.size))
    {
        return 0;
    }
    if(value->consequences.size > 256u || !uwvm_bounded_utf8(value->consequences.data, value->consequences.size))
    {
        return 0;
    }
    if(value->probable_causes.size > 256u || !uwvm_bounded_utf8(value->probable_causes.data, value->probable_causes.size))
    {
        return 0;
    }
    if(value->recommended_actions.size > 256u || !uwvm_bounded_utf8(value->recommended_actions.data, value->recommended_actions.size))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_builtin_interfaces_msg_Time_valid(&value->timestamp))
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_2_flexiv_msgs_msg_RobotEvent_wire_size(roswasmc_bounded_2_flexiv_msgs_msg_RobotEvent const* value)
{
    size_t n = 0;
    n += 1;
    n += 4;
    n += 4 + value->description.size;
    n += 4 + value->consequences.size;
    n += 4 + value->probable_causes.size;
    n += 4 + value->recommended_actions.size;
    n += roswasmc_bounded_2_builtin_interfaces_msg_Time_wire_size(&value->timestamp);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_2_flexiv_msgs_msg_RobotEvent_write_fields(roswasmc_bounded_2_flexiv_msgs_msg_RobotEvent const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->level, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->id, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, value->description.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->description.data, value->description.size);
    *offset += value->description.size;
    uwvm_bounded_put(p + *offset, value->consequences.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->consequences.data, value->consequences.size);
    *offset += value->consequences.size;
    uwvm_bounded_put(p + *offset, value->probable_causes.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->probable_causes.data, value->probable_causes.size);
    *offset += value->probable_causes.size;
    uwvm_bounded_put(p + *offset, value->recommended_actions.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->recommended_actions.data, value->recommended_actions.size);
    *offset += value->recommended_actions.size;
    roswasmc_bounded_2_builtin_interfaces_msg_Time_write_fields(&value->timestamp, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_2_flexiv_msgs_msg_RobotEvent_read_fields(unsigned char const* p,
                                                                            size_t n,
                                                                            size_t* offset,
                                                                            roswasmc_bounded_2_flexiv_msgs_msg_RobotEvent* value)
{
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->level, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->id, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->description.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->description.size > 256u || value->description.size > n - *offset)
    {
        return 0;
    }
    uwvm_bounded_copy(value->description.data, p + *offset, value->description.size);
    *offset += value->description.size;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->consequences.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->consequences.size > 256u || value->consequences.size > n - *offset)
    {
        return 0;
    }
    uwvm_bounded_copy(value->consequences.data, p + *offset, value->consequences.size);
    *offset += value->consequences.size;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->probable_causes.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->probable_causes.size > 256u || value->probable_causes.size > n - *offset)
    {
        return 0;
    }
    uwvm_bounded_copy(value->probable_causes.data, p + *offset, value->probable_causes.size);
    *offset += value->probable_causes.size;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->recommended_actions.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->recommended_actions.size > 256u || value->recommended_actions.size > n - *offset)
    {
        return 0;
    }
    uwvm_bounded_copy(value->recommended_actions.data, p + *offset, value->recommended_actions.size);
    *offset += value->recommended_actions.size;
    if(!roswasmc_bounded_2_builtin_interfaces_msg_Time_read_fields(p, n, offset, &value->timestamp))
    {
        return 0;
    }
    return roswasmc_bounded_2_flexiv_msgs_msg_RobotEvent_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_2_flexiv_msgs_msg_RobotEvent_encode(roswasmc_bounded_2_flexiv_msgs_msg_RobotEvent const* value,
                                                                            void* output,
                                                                            size_t capacity,
                                                                            size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_flexiv_msgs_msg_RobotEvent_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_flexiv_msgs_msg_RobotEvent_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_flexiv_msgs_msg_RobotEvent_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_flexiv_msgs_msg_RobotEvent_decode(void const* input, size_t length, roswasmc_bounded_2_flexiv_msgs_msg_RobotEvent* value)
{
    roswasmc_bounded_2_flexiv_msgs_msg_RobotEvent next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 29u || length > 1053u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_flexiv_msgs_msg_RobotEvent_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_OPERATIONALSTATUS)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_OPERATIONALSTATUS_0 != 0x03f0062aUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_OPERATIONALSTATUS_1 != 0x989407f4UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_OPERATIONALSTATUS_2 != 0xc7d615d5UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_OPERATIONALSTATUS_3 != 0x35b39fc5UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_OPERATIONALSTATUS_4 != 0xbff4a9d3UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_OPERATIONALSTATUS_5 != 0x341f597cUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_OPERATIONALSTATUS_6 != 0x9662ce86UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_OPERATIONALSTATUS_7 != 0x71fbe415UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_OPERATIONALSTATUS 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_OPERATIONALSTATUS_0 0x03f0062aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_OPERATIONALSTATUS_1 0x989407f4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_OPERATIONALSTATUS_2 0xc7d615d5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_OPERATIONALSTATUS_3 0x35b39fc5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_OPERATIONALSTATUS_4 0xbff4a9d3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_OPERATIONALSTATUS_5 0x341f597cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_OPERATIONALSTATUS_6 0x9662ce86UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_OPERATIONALSTATUS_7 0x71fbe415UL

/** @brief UTF-8 byte storage for flexiv_msgs/msg/OperationalStatus.operational_status_name; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_2_flexiv_msgs_msg_OperationalStatus_operational_status_name_text;

/** @brief UTF-8 byte storage for flexiv_msgs/msg/OperationalStatus.message; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_2_flexiv_msgs_msg_OperationalStatus_message_text;

/** @brief At most16 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_flexiv_msgs_msg_RobotEvent data[16];
} roswasmc_bounded_2_flexiv_msgs_msg_OperationalStatus_recent_events_sequence;

/** @brief Complete ROS2 flexiv_msgs/msg/OperationalStatus value; no field projects away native data. */
typedef struct roswasmc_bounded_2_flexiv_msgs_msg_OperationalStatus
{
    /**
     * @brief Operational status of the robot and of the driver supervising it. The status values mirror
     * flexiv::rdk::OperationalStatus one-for-one. Header
     * @details Original flexiv_msgs/msg/OperationalStatus.header; native type std_msgs/msg/Header. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_2_std_msgs_msg_Header header;
    /**
     * @brief Retain the complete original uint8 field.
     * @details Original flexiv_msgs/msg/OperationalStatus.operational_status; native type uint8. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t operational_status;
    /**
     * @brief Human-readable name of the operational status above
     * @details Original flexiv_msgs/msg/OperationalStatus.operational_status_name; native type string.
     * Scalar value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
     * acquires no ROS resource.
     */
    roswasmc_bounded_2_flexiv_msgs_msg_OperationalStatus_operational_status_name_text operational_status_name;
    /**
     * @brief Retain the complete original uint8 field.
     * @details Original flexiv_msgs/msg/OperationalStatus.driver_state; native type uint8. Scalar value.
     * Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t driver_state;
    /**
     * @brief Robot condition flags
     * @details Original flexiv_msgs/msg/OperationalStatus.connected; native type bool. Scalar value.
     * Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t connected;
    /**
     * @brief Retain the complete original bool field.
     * @details Original flexiv_msgs/msg/OperationalStatus.fault; native type bool. Scalar value. Storage
     * belongs to the complete value and acquires no ROS resource.
     */
    uint8_t fault;
    /**
     * @brief Retain the complete original bool field.
     * @details Original flexiv_msgs/msg/OperationalStatus.operational; native type bool. Scalar value.
     * Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t operational;
    /**
     * @brief Retain the complete original bool field.
     * @details Original flexiv_msgs/msg/OperationalStatus.estop_released; native type bool. Scalar value.
     * Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t estop_released;
    /**
     * @brief Retain the complete original bool field.
     * @details Original flexiv_msgs/msg/OperationalStatus.reduced; native type bool. Scalar value. Storage
     * belongs to the complete value and acquires no ROS resource.
     */
    uint8_t reduced;
    /**
     * @brief Retain the complete original bool field.
     * @details Original flexiv_msgs/msg/OperationalStatus.recovery_state; native type bool. Scalar value.
     * Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t recovery_state;
    /**
     * @brief Current robot control mode, values defined in Mode.msg
     * @details Original flexiv_msgs/msg/OperationalStatus.control_mode; native type int8. Scalar value.
     * Storage belongs to the complete value and acquires no ROS resource.
     */
    int8_t control_mode;
    /**
     * @brief How the current condition should be recovered from, values defined in RecoveryPolicy.msg
     * @details Original flexiv_msgs/msg/OperationalStatus.recovery_policy; native type uint8. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t recovery_policy;
    /**
     * @brief Operator-facing explanation of the current condition and what to do about it
     * @details Original flexiv_msgs/msg/OperationalStatus.message; native type string. Scalar value. UTF-8
     * capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    roswasmc_bounded_2_flexiv_msgs_msg_OperationalStatus_message_text message;
    /**
     * @brief Most recent error and critical events reported by the robot
     * @details Original flexiv_msgs/msg/OperationalStatus.recent_events; native type
     * flexiv_msgs/msg/RobotEvent. At most 16 elements. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    roswasmc_bounded_2_flexiv_msgs_msg_OperationalStatus_recent_events_sequence recent_events;
} roswasmc_bounded_2_flexiv_msgs_msg_OperationalStatus;

# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_OPERATIONALSTATUS_MAX_WIRE_BYTES 17650u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_OPERATIONALSTATUS_MIN_WIRE_BYTES 34u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_OPERATIONALSTATUS_CODEC_IDENTITY "UWVMROS1_fb8887a722a4b6d895ed17ba5db0f4145b4ddd01eecf876419b287dd07bc728b"
/** @brief Original scalar constant STATUS_UNKNOWN=0; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_OPERATIONALSTATUS_STATUS_UNKNOWN UINT32_C(0)
/** @brief Original scalar constant STATUS_READY=1; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_OPERATIONALSTATUS_STATUS_READY UINT32_C(1)
/** @brief Original scalar constant STATUS_BOOTING=2; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_OPERATIONALSTATUS_STATUS_BOOTING UINT32_C(2)
/** @brief Original scalar constant STATUS_ESTOP_NOT_RELEASED=3; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_OPERATIONALSTATUS_STATUS_ESTOP_NOT_RELEASED UINT32_C(3)
/** @brief Original scalar constant STATUS_NOT_ENABLED=4; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_OPERATIONALSTATUS_STATUS_NOT_ENABLED UINT32_C(4)
/** @brief Original scalar constant STATUS_RELEASING_BRAKE=5; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_OPERATIONALSTATUS_STATUS_RELEASING_BRAKE UINT32_C(5)
/** @brief Original scalar constant STATUS_MINOR_FAULT=6; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_OPERATIONALSTATUS_STATUS_MINOR_FAULT UINT32_C(6)
/** @brief Original scalar constant STATUS_CRITICAL_FAULT=7; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_OPERATIONALSTATUS_STATUS_CRITICAL_FAULT UINT32_C(7)
/** @brief Original scalar constant STATUS_IN_REDUCED_STATE=8; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_OPERATIONALSTATUS_STATUS_IN_REDUCED_STATE UINT32_C(8)
/** @brief Original scalar constant STATUS_IN_RECOVERY_STATE=9; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_OPERATIONALSTATUS_STATUS_IN_RECOVERY_STATE UINT32_C(9)
/** @brief Original scalar constant STATUS_IN_MANUAL_MODE=10; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_OPERATIONALSTATUS_STATUS_IN_MANUAL_MODE UINT32_C(10)
/** @brief Original scalar constant STATUS_IN_AUTO_MODE=11; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_OPERATIONALSTATUS_STATUS_IN_AUTO_MODE UINT32_C(11)
/** @brief Original scalar constant DRIVER_UNINITIALIZED=0; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_OPERATIONALSTATUS_DRIVER_UNINITIALIZED UINT32_C(0)
/** @brief Original scalar constant DRIVER_READY=1; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_OPERATIONALSTATUS_DRIVER_READY UINT32_C(1)
/** @brief Original scalar constant DRIVER_FAULT=2; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_OPERATIONALSTATUS_DRIVER_FAULT UINT32_C(2)
/** @brief Original scalar constant DRIVER_RECOVERING=3; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_OPERATIONALSTATUS_DRIVER_RECOVERING UINT32_C(3)
/** @brief Original scalar constant DRIVER_LOCKOUT=4; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_OPERATIONALSTATUS_DRIVER_LOCKOUT UINT32_C(4)
/** @brief Original scalar constant DRIVER_DISCONNECTED=5; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_OPERATIONALSTATUS_DRIVER_DISCONNECTED UINT32_C(5)

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_flexiv_msgs_msg_OperationalStatus_valid(roswasmc_bounded_2_flexiv_msgs_msg_OperationalStatus const* value)
{
    if(!value)
    {
        return 0;
    }
    if(!roswasmc_bounded_2_std_msgs_msg_Header_valid(&value->header))
    {
        return 0;
    }
    if(value->operational_status_name.size > 256u || !uwvm_bounded_utf8(value->operational_status_name.data, value->operational_status_name.size))
    {
        return 0;
    }
    if(value->connected > 1)
    {
        return 0;
    }
    if(value->fault > 1)
    {
        return 0;
    }
    if(value->operational > 1)
    {
        return 0;
    }
    if(value->estop_released > 1)
    {
        return 0;
    }
    if(value->reduced > 1)
    {
        return 0;
    }
    if(value->recovery_state > 1)
    {
        return 0;
    }
    if(value->message.size > 256u || !uwvm_bounded_utf8(value->message.data, value->message.size))
    {
        return 0;
    }
    if(value->recent_events.size > 16u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->recent_events.size; ++i)
        {
            if(!roswasmc_bounded_2_flexiv_msgs_msg_RobotEvent_valid(&value->recent_events.data[i]))
            {
                return 0;
            }
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_2_flexiv_msgs_msg_OperationalStatus_wire_size(roswasmc_bounded_2_flexiv_msgs_msg_OperationalStatus const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&value->header);
    n += 1;
    n += 4 + value->operational_status_name.size;
    n += 1;
    n += 1;
    n += 1;
    n += 1;
    n += 1;
    n += 1;
    n += 1;
    n += 1;
    n += 1;
    n += 4 + value->message.size;
    n += 4;
    if(value->recent_events.size > 16u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->recent_events.size; ++i)
        {
            n += roswasmc_bounded_2_flexiv_msgs_msg_RobotEvent_wire_size(&value->recent_events.data[i]);
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_2_flexiv_msgs_msg_OperationalStatus_write_fields(roswasmc_bounded_2_flexiv_msgs_msg_OperationalStatus const* value,
                                                                                     unsigned char* p,
                                                                                     size_t* offset)
{
    roswasmc_bounded_2_std_msgs_msg_Header_write_fields(&value->header, p, offset);
    uwvm_bounded_put(p + *offset, (uint64_t)value->operational_status, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, value->operational_status_name.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->operational_status_name.data, value->operational_status_name.size);
    *offset += value->operational_status_name.size;
    uwvm_bounded_put(p + *offset, (uint64_t)value->driver_state, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->connected, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->fault, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->operational, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->estop_released, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->reduced, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->recovery_state, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->control_mode, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->recovery_policy, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, value->message.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->message.data, value->message.size);
    *offset += value->message.size;
    uwvm_bounded_put(p + *offset, value->recent_events.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->recent_events.size; ++i)
        {
            roswasmc_bounded_2_flexiv_msgs_msg_RobotEvent_write_fields(&value->recent_events.data[i], p, offset);
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_2_flexiv_msgs_msg_OperationalStatus_read_fields(unsigned char const* p,
                                                                                   size_t n,
                                                                                   size_t* offset,
                                                                                   roswasmc_bounded_2_flexiv_msgs_msg_OperationalStatus* value)
{
    if(!roswasmc_bounded_2_std_msgs_msg_Header_read_fields(p, n, offset, &value->header))
    {
        return 0;
    }
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->operational_status, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->operational_status_name.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->operational_status_name.size > 256u || value->operational_status_name.size > n - *offset)
    {
        return 0;
    }
    uwvm_bounded_copy(value->operational_status_name.data, p + *offset, value->operational_status_name.size);
    *offset += value->operational_status_name.size;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->driver_state, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->connected, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->fault, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->operational, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->estop_released, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->reduced, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->recovery_state, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->control_mode, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->recovery_policy, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->message.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->message.size > 256u || value->message.size > n - *offset)
    {
        return 0;
    }
    uwvm_bounded_copy(value->message.data, p + *offset, value->message.size);
    *offset += value->message.size;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->recent_events.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->recent_events.size > 16u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->recent_events.size; ++i)
        {
            if(!roswasmc_bounded_2_flexiv_msgs_msg_RobotEvent_read_fields(p, n, offset, &value->recent_events.data[i]))
            {
                return 0;
            }
        }
    }
    return roswasmc_bounded_2_flexiv_msgs_msg_OperationalStatus_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_2_flexiv_msgs_msg_OperationalStatus_encode(roswasmc_bounded_2_flexiv_msgs_msg_OperationalStatus const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_flexiv_msgs_msg_OperationalStatus_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_flexiv_msgs_msg_OperationalStatus_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_flexiv_msgs_msg_OperationalStatus_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_flexiv_msgs_msg_OperationalStatus_decode(void const* input, size_t length, roswasmc_bounded_2_flexiv_msgs_msg_OperationalStatus* value)
{
    roswasmc_bounded_2_flexiv_msgs_msg_OperationalStatus next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 34u || length > 17650u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_flexiv_msgs_msg_OperationalStatus_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_RECOVERYPOLICY)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_RECOVERYPOLICY_0 != 0x4feae722UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_RECOVERYPOLICY_1 != 0x36bcab86UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_RECOVERYPOLICY_2 != 0x0f739ab1UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_RECOVERYPOLICY_3 != 0xa0fe3e90UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_RECOVERYPOLICY_4 != 0x3b4d447fUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_RECOVERYPOLICY_5 != 0xb1a27548UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_RECOVERYPOLICY_6 != 0x6929ed5eUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_RECOVERYPOLICY_7 != 0x4e41b373UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_RECOVERYPOLICY 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_RECOVERYPOLICY_0 0x4feae722UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_RECOVERYPOLICY_1 0x36bcab86UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_RECOVERYPOLICY_2 0x0f739ab1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_RECOVERYPOLICY_3 0xa0fe3e90UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_RECOVERYPOLICY_4 0x3b4d447fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_RECOVERYPOLICY_5 0xb1a27548UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_RECOVERYPOLICY_6 0x6929ed5eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_RECOVERYPOLICY_7 0x4e41b373UL

/** @brief Complete ROS2 flexiv_msgs/msg/RecoveryPolicy value; no field projects away native data. */
typedef struct roswasmc_bounded_2_flexiv_msgs_msg_RecoveryPolicy
{
    /**
     * @brief Retain the complete original uint8 field.
     * @details Original flexiv_msgs/msg/RecoveryPolicy.recovery_policy; native type uint8. Scalar value.
     * Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t recovery_policy;
} roswasmc_bounded_2_flexiv_msgs_msg_RecoveryPolicy;

# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_RECOVERYPOLICY_MAX_WIRE_BYTES 1u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_RECOVERYPOLICY_MIN_WIRE_BYTES 1u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_RECOVERYPOLICY_CODEC_IDENTITY "UWVMROS1_0eb43d2482caac32e0977e6cd8ae7baeeba7fca2629c5cd1e1927e8a28af42bf"
/** @brief Original scalar constant NONE=0; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_RECOVERYPOLICY_NONE UINT32_C(0)
/** @brief Original scalar constant TRANSIENT=1; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_RECOVERYPOLICY_TRANSIENT UINT32_C(1)
/** @brief Original scalar constant AUTO_RECOVERABLE=2; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_RECOVERYPOLICY_AUTO_RECOVERABLE UINT32_C(2)
/** @brief Original scalar constant WAIT_OPERATOR=3; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_RECOVERYPOLICY_WAIT_OPERATOR UINT32_C(3)
/** @brief Original scalar constant SAFETY_LOCKOUT=4; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_RECOVERYPOLICY_SAFETY_LOCKOUT UINT32_C(4)
/** @brief Original scalar constant CONNECTION_LOST=5; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_RECOVERYPOLICY_CONNECTION_LOST UINT32_C(5)

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_flexiv_msgs_msg_RecoveryPolicy_valid(roswasmc_bounded_2_flexiv_msgs_msg_RecoveryPolicy const* value)
{
    if(!value)
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_2_flexiv_msgs_msg_RecoveryPolicy_wire_size(roswasmc_bounded_2_flexiv_msgs_msg_RecoveryPolicy const* value)
{
    size_t n = 0;
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_2_flexiv_msgs_msg_RecoveryPolicy_write_fields(roswasmc_bounded_2_flexiv_msgs_msg_RecoveryPolicy const* value,
                                                                                  unsigned char* p,
                                                                                  size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->recovery_policy, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_2_flexiv_msgs_msg_RecoveryPolicy_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_2_flexiv_msgs_msg_RecoveryPolicy* value)
{
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->recovery_policy, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_2_flexiv_msgs_msg_RecoveryPolicy_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_2_flexiv_msgs_msg_RecoveryPolicy_encode(roswasmc_bounded_2_flexiv_msgs_msg_RecoveryPolicy const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_flexiv_msgs_msg_RecoveryPolicy_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_flexiv_msgs_msg_RecoveryPolicy_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_flexiv_msgs_msg_RecoveryPolicy_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_flexiv_msgs_msg_RecoveryPolicy_decode(void const* input, size_t length, roswasmc_bounded_2_flexiv_msgs_msg_RecoveryPolicy* value)
{
    roswasmc_bounded_2_flexiv_msgs_msg_RecoveryPolicy next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 1u || length > 1u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_flexiv_msgs_msg_RecoveryPolicy_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSESTAMPED)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSESTAMPED_0 != 0x3250f630UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSESTAMPED_1 != 0xa873ca77UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSESTAMPED_2 != 0x54648602UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSESTAMPED_3 != 0x3fbea4c4UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSESTAMPED_4 != 0x07bf8e85UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSESTAMPED_5 != 0x64a245bbUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSESTAMPED_6 != 0x161d77beUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSESTAMPED_7 != 0xe560d739UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSESTAMPED 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSESTAMPED_0 0x3250f630UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSESTAMPED_1 0xa873ca77UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSESTAMPED_2 0x54648602UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSESTAMPED_3 0x3fbea4c4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSESTAMPED_4 0x07bf8e85UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSESTAMPED_5 0x64a245bbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSESTAMPED_6 0x161d77beUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSESTAMPED_7 0xe560d739UL

/** @brief Complete ROS2 geometry_msgs/msg/PoseStamped value; no field projects away native data. */
typedef struct roswasmc_bounded_2_geometry_msgs_msg_PoseStamped
{
    /**
     * @brief A Pose with reference coordinate frame and timestamp
     * @details Original geometry_msgs/msg/PoseStamped.header; native type std_msgs/msg/Header. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_2_std_msgs_msg_Header header;
    /**
     * @brief Retain the complete original geometry_msgs/msg/Pose field.
     * @details Original geometry_msgs/msg/PoseStamped.pose; native type geometry_msgs/msg/Pose. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_2_geometry_msgs_msg_Pose pose;
} roswasmc_bounded_2_geometry_msgs_msg_PoseStamped;

# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSESTAMPED_MAX_WIRE_BYTES 324u
# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSESTAMPED_MIN_WIRE_BYTES 68u
# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSESTAMPED_CODEC_IDENTITY "UWVMROS1_a8495b0ebccf56849f2c0f798064894dde7c4eb15988d22b3a684a9fd18d05ad"

/** @brief Explicit declared-default initialization; ordinary C/C++ zero aggregates stay zero.
 * Nested/fixed elements are initialized independently; sequence lengths stay zero.
 * This initializer performs no I/O, registration, allocation or capability operation. */
inline static uint32_t roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_default(roswasmc_bounded_2_geometry_msgs_msg_PoseStamped* value)
{
    roswasmc_bounded_2_geometry_msgs_msg_PoseStamped next = {0};
    if(!value)
    {
        return UWVM_BOUNDED_INVALID;
    }
    (void)roswasmc_bounded_2_geometry_msgs_msg_Pose_default(&next.pose);
    *value = next;
    return 0;
}

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_valid(roswasmc_bounded_2_geometry_msgs_msg_PoseStamped const* value)
{
    if(!value)
    {
        return 0;
    }
    if(!roswasmc_bounded_2_std_msgs_msg_Header_valid(&value->header))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_Pose_valid(&value->pose))
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_wire_size(roswasmc_bounded_2_geometry_msgs_msg_PoseStamped const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&value->header);
    n += roswasmc_bounded_2_geometry_msgs_msg_Pose_wire_size(&value->pose);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_write_fields(roswasmc_bounded_2_geometry_msgs_msg_PoseStamped const* value,
                                                                                 unsigned char* p,
                                                                                 size_t* offset)
{
    roswasmc_bounded_2_std_msgs_msg_Header_write_fields(&value->header, p, offset);
    roswasmc_bounded_2_geometry_msgs_msg_Pose_write_fields(&value->pose, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_2_geometry_msgs_msg_PoseStamped* value)
{
    if(!roswasmc_bounded_2_std_msgs_msg_Header_read_fields(p, n, offset, &value->header))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_Pose_read_fields(p, n, offset, &value->pose))
    {
        return 0;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_encode(roswasmc_bounded_2_geometry_msgs_msg_PoseStamped const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_decode(void const* input, size_t length, roswasmc_bounded_2_geometry_msgs_msg_PoseStamped* value)
{
    roswasmc_bounded_2_geometry_msgs_msg_PoseStamped next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 68u || length > 324u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_ACCEL)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_ACCEL_0 != 0xecbcbaf0UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_ACCEL_1 != 0xfef7e75dUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_ACCEL_2 != 0x2e5bbd5fUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_ACCEL_3 != 0xd4b5e4afUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_ACCEL_4 != 0xdea3be9bUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_ACCEL_5 != 0xb6fd01b7UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_ACCEL_6 != 0x16c17d10UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_ACCEL_7 != 0x7d4302d8UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_ACCEL 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_ACCEL_0 0xecbcbaf0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_ACCEL_1 0xfef7e75dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_ACCEL_2 0x2e5bbd5fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_ACCEL_3 0xd4b5e4afUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_ACCEL_4 0xdea3be9bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_ACCEL_5 0xb6fd01b7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_ACCEL_6 0x16c17d10UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_ACCEL_7 0x7d4302d8UL

/** @brief Complete ROS2 geometry_msgs/msg/Accel value; no field projects away native data. */
typedef struct roswasmc_bounded_2_geometry_msgs_msg_Accel
{
    /**
     * @brief This expresses acceleration in free space broken into its linear and angular parts.
     * @details Original geometry_msgs/msg/Accel.linear; native type geometry_msgs/msg/Vector3. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_2_geometry_msgs_msg_Vector3 linear;
    /**
     * @brief Retain the complete original geometry_msgs/msg/Vector3 field.
     * @details Original geometry_msgs/msg/Accel.angular; native type geometry_msgs/msg/Vector3. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_2_geometry_msgs_msg_Vector3 angular;
} roswasmc_bounded_2_geometry_msgs_msg_Accel;

# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_ACCEL_MAX_WIRE_BYTES 48u
# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_ACCEL_MIN_WIRE_BYTES 48u
# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_ACCEL_CODEC_IDENTITY "UWVMROS1_87264cb87970315248345c43cc629bbc0c9f9b2a8c6c4bc089da81c7af552fde"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_geometry_msgs_msg_Accel_valid(roswasmc_bounded_2_geometry_msgs_msg_Accel const* value)
{
    if(!value)
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_Vector3_valid(&value->linear))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_Vector3_valid(&value->angular))
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_2_geometry_msgs_msg_Accel_wire_size(roswasmc_bounded_2_geometry_msgs_msg_Accel const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_geometry_msgs_msg_Vector3_wire_size(&value->linear);
    n += roswasmc_bounded_2_geometry_msgs_msg_Vector3_wire_size(&value->angular);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_2_geometry_msgs_msg_Accel_write_fields(roswasmc_bounded_2_geometry_msgs_msg_Accel const* value, unsigned char* p, size_t* offset)
{
    roswasmc_bounded_2_geometry_msgs_msg_Vector3_write_fields(&value->linear, p, offset);
    roswasmc_bounded_2_geometry_msgs_msg_Vector3_write_fields(&value->angular, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int
    roswasmc_bounded_2_geometry_msgs_msg_Accel_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_geometry_msgs_msg_Accel* value)
{
    if(!roswasmc_bounded_2_geometry_msgs_msg_Vector3_read_fields(p, n, offset, &value->linear))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_Vector3_read_fields(p, n, offset, &value->angular))
    {
        return 0;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_Accel_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_2_geometry_msgs_msg_Accel_encode(roswasmc_bounded_2_geometry_msgs_msg_Accel const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_geometry_msgs_msg_Accel_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_geometry_msgs_msg_Accel_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_geometry_msgs_msg_Accel_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t roswasmc_bounded_2_geometry_msgs_msg_Accel_decode(void const* input, size_t length, roswasmc_bounded_2_geometry_msgs_msg_Accel* value)
{
    roswasmc_bounded_2_geometry_msgs_msg_Accel next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 48u || length > 48u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_Accel_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_ACCELSTAMPED)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_ACCELSTAMPED_0 != 0x0b812941UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_ACCELSTAMPED_1 != 0x545fb2c6UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_ACCELSTAMPED_2 != 0x9bf0d926UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_ACCELSTAMPED_3 != 0x30ebbc20UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_ACCELSTAMPED_4 != 0x092145d9UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_ACCELSTAMPED_5 != 0xac18c591UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_ACCELSTAMPED_6 != 0xa32a58dbUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_ACCELSTAMPED_7 != 0x15bd25d1UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_ACCELSTAMPED 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_ACCELSTAMPED_0 0x0b812941UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_ACCELSTAMPED_1 0x545fb2c6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_ACCELSTAMPED_2 0x9bf0d926UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_ACCELSTAMPED_3 0x30ebbc20UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_ACCELSTAMPED_4 0x092145d9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_ACCELSTAMPED_5 0xac18c591UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_ACCELSTAMPED_6 0xa32a58dbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_ACCELSTAMPED_7 0x15bd25d1UL

/** @brief Complete ROS2 geometry_msgs/msg/AccelStamped value; no field projects away native data. */
typedef struct roswasmc_bounded_2_geometry_msgs_msg_AccelStamped
{
    /**
     * @brief An accel with reference coordinate frame and timestamp
     * @details Original geometry_msgs/msg/AccelStamped.header; native type std_msgs/msg/Header. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_2_std_msgs_msg_Header header;
    /**
     * @brief Retain the complete original geometry_msgs/msg/Accel field.
     * @details Original geometry_msgs/msg/AccelStamped.accel; native type geometry_msgs/msg/Accel. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_2_geometry_msgs_msg_Accel accel;
} roswasmc_bounded_2_geometry_msgs_msg_AccelStamped;

# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_ACCELSTAMPED_MAX_WIRE_BYTES 316u
# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_ACCELSTAMPED_MIN_WIRE_BYTES 60u
# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_ACCELSTAMPED_CODEC_IDENTITY "UWVMROS1_99c561d1968cbb554a188d387fb085b6721227a88b7243a7f90682ae20782329"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_geometry_msgs_msg_AccelStamped_valid(roswasmc_bounded_2_geometry_msgs_msg_AccelStamped const* value)
{
    if(!value)
    {
        return 0;
    }
    if(!roswasmc_bounded_2_std_msgs_msg_Header_valid(&value->header))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_Accel_valid(&value->accel))
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_2_geometry_msgs_msg_AccelStamped_wire_size(roswasmc_bounded_2_geometry_msgs_msg_AccelStamped const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&value->header);
    n += roswasmc_bounded_2_geometry_msgs_msg_Accel_wire_size(&value->accel);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_2_geometry_msgs_msg_AccelStamped_write_fields(roswasmc_bounded_2_geometry_msgs_msg_AccelStamped const* value,
                                                                                  unsigned char* p,
                                                                                  size_t* offset)
{
    roswasmc_bounded_2_std_msgs_msg_Header_write_fields(&value->header, p, offset);
    roswasmc_bounded_2_geometry_msgs_msg_Accel_write_fields(&value->accel, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_2_geometry_msgs_msg_AccelStamped_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_2_geometry_msgs_msg_AccelStamped* value)
{
    if(!roswasmc_bounded_2_std_msgs_msg_Header_read_fields(p, n, offset, &value->header))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_Accel_read_fields(p, n, offset, &value->accel))
    {
        return 0;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_AccelStamped_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_2_geometry_msgs_msg_AccelStamped_encode(roswasmc_bounded_2_geometry_msgs_msg_AccelStamped const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_geometry_msgs_msg_AccelStamped_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_geometry_msgs_msg_AccelStamped_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_geometry_msgs_msg_AccelStamped_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_geometry_msgs_msg_AccelStamped_decode(void const* input, size_t length, roswasmc_bounded_2_geometry_msgs_msg_AccelStamped* value)
{
    roswasmc_bounded_2_geometry_msgs_msg_AccelStamped next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 60u || length > 316u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_AccelStamped_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_WRENCHSTAMPED)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_WRENCHSTAMPED_0 != 0x6abbd4f1UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_WRENCHSTAMPED_1 != 0x33e3c36bUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_WRENCHSTAMPED_2 != 0xac81e91bUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_WRENCHSTAMPED_3 != 0xc6ec799bUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_WRENCHSTAMPED_4 != 0x43f1c5fdUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_WRENCHSTAMPED_5 != 0x0a4e3a35UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_WRENCHSTAMPED_6 != 0x9abf8104UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_WRENCHSTAMPED_7 != 0x58b4c140UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_WRENCHSTAMPED 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_WRENCHSTAMPED_0 0x6abbd4f1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_WRENCHSTAMPED_1 0x33e3c36bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_WRENCHSTAMPED_2 0xac81e91bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_WRENCHSTAMPED_3 0xc6ec799bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_WRENCHSTAMPED_4 0x43f1c5fdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_WRENCHSTAMPED_5 0x0a4e3a35UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_WRENCHSTAMPED_6 0x9abf8104UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_WRENCHSTAMPED_7 0x58b4c140UL

/** @brief Complete ROS2 geometry_msgs/msg/WrenchStamped value; no field projects away native data. */
typedef struct roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped
{
    /**
     * @brief A wrench with reference coordinate frame and timestamp
     * @details Original geometry_msgs/msg/WrenchStamped.header; native type std_msgs/msg/Header. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_2_std_msgs_msg_Header header;
    /**
     * @brief Retain the complete original geometry_msgs/msg/Wrench field.
     * @details Original geometry_msgs/msg/WrenchStamped.wrench; native type geometry_msgs/msg/Wrench.
     * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_2_geometry_msgs_msg_Wrench wrench;
} roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped;

# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_WRENCHSTAMPED_MAX_WIRE_BYTES 316u
# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_WRENCHSTAMPED_MIN_WIRE_BYTES 60u
# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_WRENCHSTAMPED_CODEC_IDENTITY "UWVMROS1_b9573c0cc3e84b6782f303e91813d65244f61e9f58639477158795d710127177"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_valid(roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped const* value)
{
    if(!value)
    {
        return 0;
    }
    if(!roswasmc_bounded_2_std_msgs_msg_Header_valid(&value->header))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_Wrench_valid(&value->wrench))
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_wire_size(roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&value->header);
    n += roswasmc_bounded_2_geometry_msgs_msg_Wrench_wire_size(&value->wrench);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_write_fields(roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped const* value,
                                                                                   unsigned char* p,
                                                                                   size_t* offset)
{
    roswasmc_bounded_2_std_msgs_msg_Header_write_fields(&value->header, p, offset);
    roswasmc_bounded_2_geometry_msgs_msg_Wrench_write_fields(&value->wrench, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_read_fields(unsigned char const* p,
                                                                                 size_t n,
                                                                                 size_t* offset,
                                                                                 roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped* value)
{
    if(!roswasmc_bounded_2_std_msgs_msg_Header_read_fields(p, n, offset, &value->header))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_Wrench_read_fields(p, n, offset, &value->wrench))
    {
        return 0;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_encode(roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_decode(void const* input, size_t length, roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped* value)
{
    roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 60u || length > 316u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTSTATES)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTSTATES_0 != 0x6aa1437eUL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTSTATES_1 != 0xd204d0ebUL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTSTATES_2 != 0x36f12104UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTSTATES_3 != 0xa85e6bedUL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTSTATES_4 != 0xd6fa01d2UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTSTATES_5 != 0x2be94611UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTSTATES_6 != 0xe63fac9eUL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTSTATES_7 != 0x52e5a7f4UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTSTATES 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTSTATES_0 0x6aa1437eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTSTATES_1 0xd204d0ebUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTSTATES_2 0x36f12104UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTSTATES_3 0xa85e6bedUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTSTATES_4 0xd6fa01d2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTSTATES_5 0x2be94611UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTSTATES_6 0xe63fac9eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTSTATES_7 0x52e5a7f4UL

/** @brief At most32 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[32];
} roswasmc_bounded_2_flexiv_msgs_msg_RobotStates_q_sequence;

/** @brief At most32 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[32];
} roswasmc_bounded_2_flexiv_msgs_msg_RobotStates_theta_sequence;

/** @brief At most32 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[32];
} roswasmc_bounded_2_flexiv_msgs_msg_RobotStates_dq_sequence;

/** @brief At most32 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[32];
} roswasmc_bounded_2_flexiv_msgs_msg_RobotStates_dtheta_sequence;

/** @brief At most32 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[32];
} roswasmc_bounded_2_flexiv_msgs_msg_RobotStates_tau_sequence;

/** @brief At most32 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[32];
} roswasmc_bounded_2_flexiv_msgs_msg_RobotStates_tau_dot_sequence;

/** @brief At most32 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[32];
} roswasmc_bounded_2_flexiv_msgs_msg_RobotStates_tau_ext_sequence;

/** @brief At most32 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[32];
} roswasmc_bounded_2_flexiv_msgs_msg_RobotStates_tau_interact_sequence;

/** @brief At most32 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[32];
} roswasmc_bounded_2_flexiv_msgs_msg_RobotStates_temperature_sequence;

/** @brief Complete ROS2 flexiv_msgs/msg/RobotStates value; no field projects away native data. */
typedef struct roswasmc_bounded_2_flexiv_msgs_msg_RobotStates
{
    /**
     * @brief Header
     * @details Original flexiv_msgs/msg/RobotStates.header; native type std_msgs/msg/Header. Scalar value.
     * Storage belongs to the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_2_std_msgs_msg_Header header;
    /**
     * @brief Robot system timestamp
     * @details Original flexiv_msgs/msg/RobotStates.robot_timestamp; native type
     * builtin_interfaces/msg/Time. Scalar value. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    roswasmc_bounded_2_builtin_interfaces_msg_Time robot_timestamp;
    /**
     * @brief Measured joint positions using link-side encoder
     * @details Original flexiv_msgs/msg/RobotStates.q; native type float64. At most 32 elements. Finite
     * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    roswasmc_bounded_2_flexiv_msgs_msg_RobotStates_q_sequence q;
    /**
     * @brief Measured joint positions using motor-side encoder
     * @details Original flexiv_msgs/msg/RobotStates.theta; native type float64. At most 32 elements.
     * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    roswasmc_bounded_2_flexiv_msgs_msg_RobotStates_theta_sequence theta;
    /**
     * @brief Measured joint velocities using link-side encoder
     * @details Original flexiv_msgs/msg/RobotStates.dq; native type float64. At most 32 elements. Finite
     * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    roswasmc_bounded_2_flexiv_msgs_msg_RobotStates_dq_sequence dq;
    /**
     * @brief Measured joint velocities using motor-side encoder
     * @details Original flexiv_msgs/msg/RobotStates.dtheta; native type float64. At most 32 elements.
     * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    roswasmc_bounded_2_flexiv_msgs_msg_RobotStates_dtheta_sequence dtheta;
    /**
     * @brief Measured joint torques
     * @details Original flexiv_msgs/msg/RobotStates.tau; native type float64. At most 32 elements. Finite
     * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    roswasmc_bounded_2_flexiv_msgs_msg_RobotStates_tau_sequence tau;
    /**
     * @brief Numerical derivative of measured joint torques
     * @details Original flexiv_msgs/msg/RobotStates.tau_dot; native type float64. At most 32 elements.
     * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    roswasmc_bounded_2_flexiv_msgs_msg_RobotStates_tau_dot_sequence tau_dot;
    /**
     * @brief Estimated external joint torques
     * @details Original flexiv_msgs/msg/RobotStates.tau_ext; native type float64. At most 32 elements.
     * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    roswasmc_bounded_2_flexiv_msgs_msg_RobotStates_tau_ext_sequence tau_ext;
    /**
     * @brief Estimated interaction joint torques
     * @details Original flexiv_msgs/msg/RobotStates.tau_interact; native type float64. At most 32
     * elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
     * acquires no ROS resource.
     */
    roswasmc_bounded_2_flexiv_msgs_msg_RobotStates_tau_interact_sequence tau_interact;
    /**
     * @brief Measured joint temperatures
     * @details Original flexiv_msgs/msg/RobotStates.temperature; native type float64. At most 32 elements.
     * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    roswasmc_bounded_2_flexiv_msgs_msg_RobotStates_temperature_sequence temperature;
    /**
     * @brief Measured TCP pose expressed in world frame
     * @details Original flexiv_msgs/msg/RobotStates.tcp_pose; native type geometry_msgs/msg/PoseStamped.
     * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_2_geometry_msgs_msg_PoseStamped tcp_pose;
    /**
     * @brief Measured TCP velocity expressed in world frame
     * @details Original flexiv_msgs/msg/RobotStates.tcp_vel; native type geometry_msgs/msg/AccelStamped.
     * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_2_geometry_msgs_msg_AccelStamped tcp_vel;
    /**
     * @brief Measured flange pose expressed in world frame
     * @details Original flexiv_msgs/msg/RobotStates.flange_pose; native type
     * geometry_msgs/msg/PoseStamped. Scalar value. Storage belongs to the complete value and acquires no
     * ROS resource.
     */
    roswasmc_bounded_2_geometry_msgs_msg_PoseStamped flange_pose;
    /**
     * @brief Force-torque (FT) sensor raw reading in flange frame
     * @details Original flexiv_msgs/msg/RobotStates.ft_sensor_raw; native type
     * geometry_msgs/msg/WrenchStamped. Scalar value. Storage belongs to the complete value and acquires no
     * ROS resource.
     */
    roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped ft_sensor_raw;
    /**
     * @brief Estimated external wrench applied on TCP and expressed in TCP frame
     * @details Original flexiv_msgs/msg/RobotStates.ext_wrench_in_tcp; native type
     * geometry_msgs/msg/WrenchStamped. Scalar value. Storage belongs to the complete value and acquires no
     * ROS resource.
     */
    roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped ext_wrench_in_tcp;
    /**
     * @brief Estimated external wrench applied on TCP and expressed in world frame
     * @details Original flexiv_msgs/msg/RobotStates.ext_wrench_in_world; native type
     * geometry_msgs/msg/WrenchStamped. Scalar value. Storage belongs to the complete value and acquires no
     * ROS resource.
     */
    roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped ext_wrench_in_world;
    /**
     * @brief Unfiltered external wrench applied on TCP and expressed in TCP frame
     * @details Original flexiv_msgs/msg/RobotStates.ext_wrench_in_tcp_raw; native type
     * geometry_msgs/msg/WrenchStamped. Scalar value. Storage belongs to the complete value and acquires no
     * ROS resource.
     */
    roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped ext_wrench_in_tcp_raw;
    /**
     * @brief Unfiltered external wrench applied on TCP and expressed in world frame
     * @details Original flexiv_msgs/msg/RobotStates.ext_wrench_in_world_raw; native type
     * geometry_msgs/msg/WrenchStamped. Scalar value. Storage belongs to the complete value and acquires no
     * ROS resource.
     */
    roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped ext_wrench_in_world_raw;
} roswasmc_bounded_2_flexiv_msgs_msg_RobotStates;

# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTSTATES_MAX_WIRE_BYTES 5160u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTSTATES_MIN_WIRE_BYTES 552u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTSTATES_CODEC_IDENTITY "UWVMROS1_7e84612c73d2d16252a0b93f995b5afa7e032f3de3826f0577c89670dde1f2d2"

/** @brief Explicit declared-default initialization; ordinary C/C++ zero aggregates stay zero.
 * Nested/fixed elements are initialized independently; sequence lengths stay zero.
 * This initializer performs no I/O, registration, allocation or capability operation. */
inline static uint32_t roswasmc_bounded_2_flexiv_msgs_msg_RobotStates_default(roswasmc_bounded_2_flexiv_msgs_msg_RobotStates* value)
{
    roswasmc_bounded_2_flexiv_msgs_msg_RobotStates next = {0};
    if(!value)
    {
        return UWVM_BOUNDED_INVALID;
    }
    (void)roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_default(&next.tcp_pose);
    (void)roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_default(&next.flange_pose);
    *value = next;
    return 0;
}

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_flexiv_msgs_msg_RobotStates_valid(roswasmc_bounded_2_flexiv_msgs_msg_RobotStates const* value)
{
    if(!value)
    {
        return 0;
    }
    if(!roswasmc_bounded_2_std_msgs_msg_Header_valid(&value->header))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_builtin_interfaces_msg_Time_valid(&value->robot_timestamp))
    {
        return 0;
    }
    if(value->q.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->q.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->q.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    if(value->theta.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->theta.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->theta.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    if(value->dq.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->dq.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->dq.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    if(value->dtheta.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->dtheta.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->dtheta.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    if(value->tau.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->tau.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->tau.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    if(value->tau_dot.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->tau_dot.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->tau_dot.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    if(value->tau_ext.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->tau_ext.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->tau_ext.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    if(value->tau_interact.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->tau_interact.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->tau_interact.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    if(value->temperature.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->temperature.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->temperature.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_valid(&value->tcp_pose))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_AccelStamped_valid(&value->tcp_vel))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_valid(&value->flange_pose))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_valid(&value->ft_sensor_raw))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_valid(&value->ext_wrench_in_tcp))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_valid(&value->ext_wrench_in_world))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_valid(&value->ext_wrench_in_tcp_raw))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_valid(&value->ext_wrench_in_world_raw))
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_2_flexiv_msgs_msg_RobotStates_wire_size(roswasmc_bounded_2_flexiv_msgs_msg_RobotStates const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&value->header);
    n += roswasmc_bounded_2_builtin_interfaces_msg_Time_wire_size(&value->robot_timestamp);
    n += 4;
    if(value->q.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->q.size; ++i)
        {
            n += 8;
        }
    }
    n += 4;
    if(value->theta.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->theta.size; ++i)
        {
            n += 8;
        }
    }
    n += 4;
    if(value->dq.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->dq.size; ++i)
        {
            n += 8;
        }
    }
    n += 4;
    if(value->dtheta.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->dtheta.size; ++i)
        {
            n += 8;
        }
    }
    n += 4;
    if(value->tau.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->tau.size; ++i)
        {
            n += 8;
        }
    }
    n += 4;
    if(value->tau_dot.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->tau_dot.size; ++i)
        {
            n += 8;
        }
    }
    n += 4;
    if(value->tau_ext.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->tau_ext.size; ++i)
        {
            n += 8;
        }
    }
    n += 4;
    if(value->tau_interact.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->tau_interact.size; ++i)
        {
            n += 8;
        }
    }
    n += 4;
    if(value->temperature.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->temperature.size; ++i)
        {
            n += 8;
        }
    }
    n += roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_wire_size(&value->tcp_pose);
    n += roswasmc_bounded_2_geometry_msgs_msg_AccelStamped_wire_size(&value->tcp_vel);
    n += roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_wire_size(&value->flange_pose);
    n += roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_wire_size(&value->ft_sensor_raw);
    n += roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_wire_size(&value->ext_wrench_in_tcp);
    n += roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_wire_size(&value->ext_wrench_in_world);
    n += roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_wire_size(&value->ext_wrench_in_tcp_raw);
    n += roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_wire_size(&value->ext_wrench_in_world_raw);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_2_flexiv_msgs_msg_RobotStates_write_fields(roswasmc_bounded_2_flexiv_msgs_msg_RobotStates const* value, unsigned char* p, size_t* offset)
{
    roswasmc_bounded_2_std_msgs_msg_Header_write_fields(&value->header, p, offset);
    roswasmc_bounded_2_builtin_interfaces_msg_Time_write_fields(&value->robot_timestamp, p, offset);
    uwvm_bounded_put(p + *offset, value->q.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->q.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->q.data[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    uwvm_bounded_put(p + *offset, value->theta.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->theta.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->theta.data[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    uwvm_bounded_put(p + *offset, value->dq.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->dq.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->dq.data[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    uwvm_bounded_put(p + *offset, value->dtheta.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->dtheta.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->dtheta.data[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    uwvm_bounded_put(p + *offset, value->tau.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->tau.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->tau.data[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    uwvm_bounded_put(p + *offset, value->tau_dot.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->tau_dot.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->tau_dot.data[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    uwvm_bounded_put(p + *offset, value->tau_ext.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->tau_ext.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->tau_ext.data[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    uwvm_bounded_put(p + *offset, value->tau_interact.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->tau_interact.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->tau_interact.data[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    uwvm_bounded_put(p + *offset, value->temperature.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->temperature.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->temperature.data[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_write_fields(&value->tcp_pose, p, offset);
    roswasmc_bounded_2_geometry_msgs_msg_AccelStamped_write_fields(&value->tcp_vel, p, offset);
    roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_write_fields(&value->flange_pose, p, offset);
    roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_write_fields(&value->ft_sensor_raw, p, offset);
    roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_write_fields(&value->ext_wrench_in_tcp, p, offset);
    roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_write_fields(&value->ext_wrench_in_world, p, offset);
    roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_write_fields(&value->ext_wrench_in_tcp_raw, p, offset);
    roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_write_fields(&value->ext_wrench_in_world_raw, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_2_flexiv_msgs_msg_RobotStates_read_fields(unsigned char const* p,
                                                                             size_t n,
                                                                             size_t* offset,
                                                                             roswasmc_bounded_2_flexiv_msgs_msg_RobotStates* value)
{
    if(!roswasmc_bounded_2_std_msgs_msg_Header_read_fields(p, n, offset, &value->header))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_builtin_interfaces_msg_Time_read_fields(p, n, offset, &value->robot_timestamp))
    {
        return 0;
    }
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->q.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->q.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->q.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->q.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->theta.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->theta.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->theta.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->theta.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->dq.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->dq.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->dq.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->dq.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->dtheta.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->dtheta.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->dtheta.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->dtheta.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->tau.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->tau.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->tau.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->tau.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->tau_dot.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->tau_dot.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->tau_dot.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->tau_dot.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->tau_ext.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->tau_ext.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->tau_ext.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->tau_ext.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->tau_interact.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->tau_interact.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->tau_interact.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->tau_interact.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->temperature.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->temperature.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->temperature.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->temperature.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_read_fields(p, n, offset, &value->tcp_pose))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_AccelStamped_read_fields(p, n, offset, &value->tcp_vel))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_read_fields(p, n, offset, &value->flange_pose))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_read_fields(p, n, offset, &value->ft_sensor_raw))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_read_fields(p, n, offset, &value->ext_wrench_in_tcp))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_read_fields(p, n, offset, &value->ext_wrench_in_world))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_read_fields(p, n, offset, &value->ext_wrench_in_tcp_raw))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_read_fields(p, n, offset, &value->ext_wrench_in_world_raw))
    {
        return 0;
    }
    return roswasmc_bounded_2_flexiv_msgs_msg_RobotStates_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_2_flexiv_msgs_msg_RobotStates_encode(roswasmc_bounded_2_flexiv_msgs_msg_RobotStates const* value,
                                                                             void* output,
                                                                             size_t capacity,
                                                                             size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_flexiv_msgs_msg_RobotStates_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_flexiv_msgs_msg_RobotStates_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_flexiv_msgs_msg_RobotStates_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_flexiv_msgs_msg_RobotStates_decode(void const* input, size_t length, roswasmc_bounded_2_flexiv_msgs_msg_RobotStates* value)
{
    roswasmc_bounded_2_flexiv_msgs_msg_RobotStates next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 552u || length > 5160u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_flexiv_msgs_msg_RobotStates_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_GETOPERATIONALSTATUS_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_GETOPERATIONALSTATUS_REQUEST_0 != 0x45ebfd01UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_GETOPERATIONALSTATUS_REQUEST_1 != 0xf5cf4714UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_GETOPERATIONALSTATUS_REQUEST_2 != 0xdab42516UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_GETOPERATIONALSTATUS_REQUEST_3 != 0xce301517UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_GETOPERATIONALSTATUS_REQUEST_4 != 0x8cdd1c0cUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_GETOPERATIONALSTATUS_REQUEST_5 != 0x36907db7UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_GETOPERATIONALSTATUS_REQUEST_6 != 0xa4c6633bUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_GETOPERATIONALSTATUS_REQUEST_7 != 0x82ebb526UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_GETOPERATIONALSTATUS_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_GETOPERATIONALSTATUS_REQUEST_0 0x45ebfd01UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_GETOPERATIONALSTATUS_REQUEST_1 0xf5cf4714UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_GETOPERATIONALSTATUS_REQUEST_2 0xdab42516UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_GETOPERATIONALSTATUS_REQUEST_3 0xce301517UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_GETOPERATIONALSTATUS_REQUEST_4 0x8cdd1c0cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_GETOPERATIONALSTATUS_REQUEST_5 0x36907db7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_GETOPERATIONALSTATUS_REQUEST_6 0xa4c6633bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_GETOPERATIONALSTATUS_REQUEST_7 0x82ebb526UL

/** @brief Complete ROS2 flexiv_msgs/srv/GetOperationalStatus_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Request
{
    /** @brief Local C layout placeholder; empty native component has exactly zero canonical bytes. */
    unsigned char local_empty_placeholder;
} roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Request;

# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_GETOPERATIONALSTATUS_REQUEST_MAX_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_GETOPERATIONALSTATUS_REQUEST_MIN_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_GETOPERATIONALSTATUS_REQUEST_CODEC_IDENTITY                                                                        \
     "UWVMROS1_7fd7ea129ca031bf1bf8d008b1273bc0deb676f3ae786731b420cd009bb3ae12"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int
    roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Request_valid(roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Request const* value)
{
    if(!value)
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t
    roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Request_wire_size(roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Request const* value)
{
    size_t n = 0;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Request_write_fields(roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Request const* value,
                                                                                 unsigned char* p,
                                                                                 size_t* offset)
{
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int
    roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Request_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Request* value)
{
    return roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Request_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Request_encode(roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Request const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Request_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Request_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Request_decode(void const* input,
                                                                           size_t length,
                                                                           roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Request* value)
{
    roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 0u || length > 0u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_GETOPERATIONALSTATUS_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_GETOPERATIONALSTATUS_RESPONSE_0 != 0x721c7696UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_GETOPERATIONALSTATUS_RESPONSE_1 != 0x0ef3a4c1UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_GETOPERATIONALSTATUS_RESPONSE_2 != 0xd6aebfc6UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_GETOPERATIONALSTATUS_RESPONSE_3 != 0xe37bed19UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_GETOPERATIONALSTATUS_RESPONSE_4 != 0xea34a6e1UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_GETOPERATIONALSTATUS_RESPONSE_5 != 0x14eb4c52UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_GETOPERATIONALSTATUS_RESPONSE_6 != 0x8a1a669eUL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_GETOPERATIONALSTATUS_RESPONSE_7 != 0x5d92e966UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_GETOPERATIONALSTATUS_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_GETOPERATIONALSTATUS_RESPONSE_0 0x721c7696UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_GETOPERATIONALSTATUS_RESPONSE_1 0x0ef3a4c1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_GETOPERATIONALSTATUS_RESPONSE_2 0xd6aebfc6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_GETOPERATIONALSTATUS_RESPONSE_3 0xe37bed19UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_GETOPERATIONALSTATUS_RESPONSE_4 0xea34a6e1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_GETOPERATIONALSTATUS_RESPONSE_5 0x14eb4c52UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_GETOPERATIONALSTATUS_RESPONSE_6 0x8a1a669eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_GETOPERATIONALSTATUS_RESPONSE_7 0x5d92e966UL

/** @brief Complete ROS2 flexiv_msgs/srv/GetOperationalStatus_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Response
{
    /**
     * @brief Retain the complete original flexiv_msgs/msg/OperationalStatus field.
     * @details Original flexiv_msgs/srv/GetOperationalStatus_Response.status; native type
     * flexiv_msgs/msg/OperationalStatus. Scalar value. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    roswasmc_bounded_2_flexiv_msgs_msg_OperationalStatus status;
} roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Response;

# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_GETOPERATIONALSTATUS_RESPONSE_MAX_WIRE_BYTES 17650u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_GETOPERATIONALSTATUS_RESPONSE_MIN_WIRE_BYTES 34u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_GETOPERATIONALSTATUS_RESPONSE_CODEC_IDENTITY                                                                       \
     "UWVMROS1_b804d4a8c3dfdd26b0cad4314552092a90f439f0f364831b855bca4c30d49f42"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int
    roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Response_valid(roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Response const* value)
{
    if(!value)
    {
        return 0;
    }
    if(!roswasmc_bounded_2_flexiv_msgs_msg_OperationalStatus_valid(&value->status))
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t
    roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Response_wire_size(roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Response const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_flexiv_msgs_msg_OperationalStatus_wire_size(&value->status);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Response_write_fields(roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Response const* value,
                                                                                  unsigned char* p,
                                                                                  size_t* offset)
{
    roswasmc_bounded_2_flexiv_msgs_msg_OperationalStatus_write_fields(&value->status, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int
    roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Response_read_fields(unsigned char const* p,
                                                                                 size_t n,
                                                                                 size_t* offset,
                                                                                 roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Response* value)
{
    if(!roswasmc_bounded_2_flexiv_msgs_msg_OperationalStatus_read_fields(p, n, offset, &value->status))
    {
        return 0;
    }
    return roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Response_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Response_encode(roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Response const* value,
                                                                            void* output,
                                                                            size_t capacity,
                                                                            size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Response_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Response_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Response_decode(void const* input,
                                                                            size_t length,
                                                                            roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Response* value)
{
    roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 34u || length > 17650u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANIMPEDANCE_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANIMPEDANCE_REQUEST_0 != 0x74465c80UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANIMPEDANCE_REQUEST_1 != 0xd3bfe128UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANIMPEDANCE_REQUEST_2 != 0x70c8009dUL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANIMPEDANCE_REQUEST_3 != 0xd28bec2bUL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANIMPEDANCE_REQUEST_4 != 0xb5551327UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANIMPEDANCE_REQUEST_5 != 0xde6ac146UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANIMPEDANCE_REQUEST_6 != 0x8f222dbdUL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANIMPEDANCE_REQUEST_7 != 0x8bc52ed5UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANIMPEDANCE_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANIMPEDANCE_REQUEST_0 0x74465c80UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANIMPEDANCE_REQUEST_1 0xd3bfe128UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANIMPEDANCE_REQUEST_2 0x70c8009dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANIMPEDANCE_REQUEST_3 0xd28bec2bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANIMPEDANCE_REQUEST_4 0xb5551327UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANIMPEDANCE_REQUEST_5 0xde6ac146UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANIMPEDANCE_REQUEST_6 0x8f222dbdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANIMPEDANCE_REQUEST_7 0x8bc52ed5UL

/** @brief At most32 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[32];
} roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Request_k_x_sequence;

/** @brief At most32 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[32];
} roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Request_z_x_sequence;

/** @brief Complete ROS2 flexiv_msgs/srv/SetCartesianImpedance_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Request
{
    /**
     * @brief Set the impedance properties of the robot's Cartesian motion controller, used in the
     * Cartesian motion-force control mode. For a robot pair, each array holds the left robot's values
     * first.  An invalid request is rejected as a whole and nothing changes. Cartesian stiffness [k_x,
     * k_y, k_z, k_Rx, k_Ry, k_Rz], 6 per robot. Valid range [0, k_x_nom]. Empty means k_x_nom.
     * [N/m]:[Nm/rad]
     * @details Original flexiv_msgs/srv/SetCartesianImpedance_Request.k_x; native type float64. At most 32
     * elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
     * acquires no ROS resource.
     */
    roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Request_k_x_sequence k_x;
    /**
     * @brief Cartesian damping ratio, 6 per robot. Valid range [0.3, 0.8]. Empty means the nominal 0.7.
     * @details Original flexiv_msgs/srv/SetCartesianImpedance_Request.z_x; native type float64. At most 32
     * elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
     * acquires no ROS resource.
     */
    roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Request_z_x_sequence z_x;
} roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Request;

# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANIMPEDANCE_REQUEST_MAX_WIRE_BYTES 520u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANIMPEDANCE_REQUEST_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANIMPEDANCE_REQUEST_CODEC_IDENTITY                                                                       \
     "UWVMROS1_a121634cb756eace8772aa4fb681a103b4716f6289a1ba66608d66ce2d83ff9f"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int
    roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Request_valid(roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Request const* value)
{
    if(!value)
    {
        return 0;
    }
    if(value->k_x.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->k_x.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->k_x.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    if(value->z_x.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->z_x.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->z_x.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t
    roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Request_wire_size(roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Request const* value)
{
    size_t n = 0;
    n += 4;
    if(value->k_x.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->k_x.size; ++i)
        {
            n += 8;
        }
    }
    n += 4;
    if(value->z_x.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->z_x.size; ++i)
        {
            n += 8;
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Request_write_fields(roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Request const* value,
                                                                                  unsigned char* p,
                                                                                  size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->k_x.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->k_x.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->k_x.data[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    uwvm_bounded_put(p + *offset, value->z_x.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->z_x.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->z_x.data[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int
    roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Request_read_fields(unsigned char const* p,
                                                                                 size_t n,
                                                                                 size_t* offset,
                                                                                 roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Request* value)
{
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->k_x.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->k_x.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->k_x.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->k_x.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->z_x.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->z_x.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->z_x.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->z_x.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    return roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Request_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Request_encode(roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Request const* value,
                                                                            void* output,
                                                                            size_t capacity,
                                                                            size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Request_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Request_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Request_decode(void const* input,
                                                                            size_t length,
                                                                            roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Request* value)
{
    roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 520u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANIMPEDANCE_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANIMPEDANCE_RESPONSE_0 != 0x24160469UL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANIMPEDANCE_RESPONSE_1 != 0x683a5a8cUL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANIMPEDANCE_RESPONSE_2 != 0xde2f391aUL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANIMPEDANCE_RESPONSE_3 != 0xffe566bbUL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANIMPEDANCE_RESPONSE_4 != 0x4103710aUL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANIMPEDANCE_RESPONSE_5 != 0xc065a801UL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANIMPEDANCE_RESPONSE_6 != 0xb65b9a9dUL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANIMPEDANCE_RESPONSE_7 != 0xb5519ee8UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANIMPEDANCE_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANIMPEDANCE_RESPONSE_0 0x24160469UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANIMPEDANCE_RESPONSE_1 0x683a5a8cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANIMPEDANCE_RESPONSE_2 0xde2f391aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANIMPEDANCE_RESPONSE_3 0xffe566bbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANIMPEDANCE_RESPONSE_4 0x4103710aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANIMPEDANCE_RESPONSE_5 0xc065a801UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANIMPEDANCE_RESPONSE_6 0xb65b9a9dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANIMPEDANCE_RESPONSE_7 0xb5519ee8UL

/** @brief UTF-8 byte storage for flexiv_msgs/srv/SetCartesianImpedance_Response.message; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Response_message_text;

/** @brief At most32 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[32];
} roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Response_k_x_nom_sequence;

/** @brief Complete ROS2 flexiv_msgs/srv/SetCartesianImpedance_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Response
{
    /**
     * @brief Retain the complete original bool field.
     * @details Original flexiv_msgs/srv/SetCartesianImpedance_Response.success; native type bool. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t success;
    /**
     * @brief Operator-facing explanation of the outcome
     * @details Original flexiv_msgs/srv/SetCartesianImpedance_Response.message; native type string. Scalar
     * value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Response_message_text message;
    /**
     * @brief Nominal Cartesian stiffness, the upper bound of k_x, 6 per robot. [N/m]:[Nm/rad]
     * @details Original flexiv_msgs/srv/SetCartesianImpedance_Response.k_x_nom; native type float64. At
     * most 32 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete
     * value and acquires no ROS resource.
     */
    roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Response_k_x_nom_sequence k_x_nom;
} roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Response;

# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANIMPEDANCE_RESPONSE_MAX_WIRE_BYTES 521u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANIMPEDANCE_RESPONSE_MIN_WIRE_BYTES 9u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANIMPEDANCE_RESPONSE_CODEC_IDENTITY                                                                      \
     "UWVMROS1_84cb649adf8fdcbc9e499dd9c8274542c7de6c466fbab5c2721349ee76974f29"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int
    roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Response_valid(roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Response const* value)
{
    if(!value)
    {
        return 0;
    }
    if(value->success > 1)
    {
        return 0;
    }
    if(value->message.size > 256u || !uwvm_bounded_utf8(value->message.data, value->message.size))
    {
        return 0;
    }
    if(value->k_x_nom.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->k_x_nom.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->k_x_nom.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t
    roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Response_wire_size(roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Response const* value)
{
    size_t n = 0;
    n += 1;
    n += 4 + value->message.size;
    n += 4;
    if(value->k_x_nom.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->k_x_nom.size; ++i)
        {
            n += 8;
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Response_write_fields(
    roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Response const* value,
    unsigned char* p,
    size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->success, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, value->message.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->message.data, value->message.size);
    *offset += value->message.size;
    uwvm_bounded_put(p + *offset, value->k_x_nom.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->k_x_nom.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->k_x_nom.data[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int
    roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Response_read_fields(unsigned char const* p,
                                                                                  size_t n,
                                                                                  size_t* offset,
                                                                                  roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Response* value)
{
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->success, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->message.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->message.size > 256u || value->message.size > n - *offset)
    {
        return 0;
    }
    uwvm_bounded_copy(value->message.data, p + *offset, value->message.size);
    *offset += value->message.size;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->k_x_nom.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->k_x_nom.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->k_x_nom.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->k_x_nom.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    return roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Response_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Response_encode(roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Response const* value,
                                                                             void* output,
                                                                             size_t capacity,
                                                                             size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Response_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Response_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Response_decode(void const* input,
                                                                             size_t length,
                                                                             roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Response* value)
{
    roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 9u || length > 521u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANMOTIONLIMITS_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANMOTIONLIMITS_REQUEST_0 != 0x7e12fa42UL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANMOTIONLIMITS_REQUEST_1 != 0xb491a19bUL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANMOTIONLIMITS_REQUEST_2 != 0x1546f03aUL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANMOTIONLIMITS_REQUEST_3 != 0x371610d9UL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANMOTIONLIMITS_REQUEST_4 != 0x70972e60UL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANMOTIONLIMITS_REQUEST_5 != 0xce496543UL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANMOTIONLIMITS_REQUEST_6 != 0x34954ad7UL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANMOTIONLIMITS_REQUEST_7 != 0x080acd98UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANMOTIONLIMITS_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANMOTIONLIMITS_REQUEST_0 0x7e12fa42UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANMOTIONLIMITS_REQUEST_1 0xb491a19bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANMOTIONLIMITS_REQUEST_2 0x1546f03aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANMOTIONLIMITS_REQUEST_3 0x371610d9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANMOTIONLIMITS_REQUEST_4 0x70972e60UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANMOTIONLIMITS_REQUEST_5 0xce496543UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANMOTIONLIMITS_REQUEST_6 0x34954ad7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANMOTIONLIMITS_REQUEST_7 0x080acd98UL

/** @brief At most32 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[32];
} roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Request_max_linear_vel_sequence;

/** @brief At most32 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[32];
} roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Request_max_angular_vel_sequence;

/** @brief At most32 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[32];
} roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Request_max_linear_acc_sequence;

/** @brief At most32 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[32];
} roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Request_max_angular_acc_sequence;

/** @brief Complete ROS2 flexiv_msgs/srv/SetCartesianMotionLimits_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Request
{
    /**
     * @brief Set the motion limits the driver passes with every Cartesian motion-force command. Each array
     * holds one entry per robot, left first. Only accepted while the Cartesian motion-force controller is
     * running, and reset to the defaults on every controller start.  An invalid request is rejected as a
     * whole and nothing changes. Maximum linear velocity. Must be positive. RDK default 0.5. [m/s]
     * @details Original flexiv_msgs/srv/SetCartesianMotionLimits_Request.max_linear_vel; native type
     * float64. At most 32 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to
     * the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Request_max_linear_vel_sequence max_linear_vel;
    /**
     * @brief Maximum angular velocity. Must be positive. RDK default 1.0. [rad/s]
     * @details Original flexiv_msgs/srv/SetCartesianMotionLimits_Request.max_angular_vel; native type
     * float64. At most 32 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to
     * the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Request_max_angular_vel_sequence max_angular_vel;
    /**
     * @brief Maximum linear acceleration. Must be positive. RDK default 2.0. [m/s^2]
     * @details Original flexiv_msgs/srv/SetCartesianMotionLimits_Request.max_linear_acc; native type
     * float64. At most 32 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to
     * the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Request_max_linear_acc_sequence max_linear_acc;
    /**
     * @brief Maximum angular acceleration. Must be positive. RDK default 5.0. [rad/s^2]
     * @details Original flexiv_msgs/srv/SetCartesianMotionLimits_Request.max_angular_acc; native type
     * float64. At most 32 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to
     * the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Request_max_angular_acc_sequence max_angular_acc;
} roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Request;

# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANMOTIONLIMITS_REQUEST_MAX_WIRE_BYTES 1040u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANMOTIONLIMITS_REQUEST_MIN_WIRE_BYTES 16u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANMOTIONLIMITS_REQUEST_CODEC_IDENTITY                                                                    \
     "UWVMROS1_381d447a83ce08a843476dfe3b7e1650477b2575f873706d80d458e8153a6111"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int
    roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Request_valid(roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Request const* value)
{
    if(!value)
    {
        return 0;
    }
    if(value->max_linear_vel.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->max_linear_vel.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->max_linear_vel.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    if(value->max_angular_vel.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->max_angular_vel.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->max_angular_vel.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    if(value->max_linear_acc.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->max_linear_acc.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->max_linear_acc.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    if(value->max_angular_acc.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->max_angular_acc.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->max_angular_acc.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Request_wire_size(
    roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Request const* value)
{
    size_t n = 0;
    n += 4;
    if(value->max_linear_vel.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->max_linear_vel.size; ++i)
        {
            n += 8;
        }
    }
    n += 4;
    if(value->max_angular_vel.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->max_angular_vel.size; ++i)
        {
            n += 8;
        }
    }
    n += 4;
    if(value->max_linear_acc.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->max_linear_acc.size; ++i)
        {
            n += 8;
        }
    }
    n += 4;
    if(value->max_angular_acc.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->max_angular_acc.size; ++i)
        {
            n += 8;
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Request_write_fields(
    roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Request const* value,
    unsigned char* p,
    size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->max_linear_vel.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->max_linear_vel.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->max_linear_vel.data[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    uwvm_bounded_put(p + *offset, value->max_angular_vel.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->max_angular_vel.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->max_angular_vel.data[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    uwvm_bounded_put(p + *offset, value->max_linear_acc.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->max_linear_acc.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->max_linear_acc.data[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    uwvm_bounded_put(p + *offset, value->max_angular_acc.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->max_angular_acc.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->max_angular_acc.data[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int
    roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Request_read_fields(unsigned char const* p,
                                                                                    size_t n,
                                                                                    size_t* offset,
                                                                                    roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Request* value)
{
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->max_linear_vel.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->max_linear_vel.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->max_linear_vel.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->max_linear_vel.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->max_angular_vel.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->max_angular_vel.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->max_angular_vel.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->max_angular_vel.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->max_linear_acc.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->max_linear_acc.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->max_linear_acc.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->max_linear_acc.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->max_angular_acc.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->max_angular_acc.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->max_angular_acc.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->max_angular_acc.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    return roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Request_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Request_encode(roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Request const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Request_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Request_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Request_decode(void const* input,
                                                                               size_t length,
                                                                               roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Request* value)
{
    roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 16u || length > 1040u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Request_read_fields((unsigned char const*)input, length, &offset, &next) ||
       offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANMOTIONLIMITS_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANMOTIONLIMITS_RESPONSE_0 != 0xc25ee95aUL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANMOTIONLIMITS_RESPONSE_1 != 0x8ef0d2a0UL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANMOTIONLIMITS_RESPONSE_2 != 0x75d14f0bUL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANMOTIONLIMITS_RESPONSE_3 != 0xeba62353UL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANMOTIONLIMITS_RESPONSE_4 != 0xdcdd6783UL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANMOTIONLIMITS_RESPONSE_5 != 0xe0bc4a95UL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANMOTIONLIMITS_RESPONSE_6 != 0x7784053fUL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANMOTIONLIMITS_RESPONSE_7 != 0x6e357994UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANMOTIONLIMITS_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANMOTIONLIMITS_RESPONSE_0 0xc25ee95aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANMOTIONLIMITS_RESPONSE_1 0x8ef0d2a0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANMOTIONLIMITS_RESPONSE_2 0x75d14f0bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANMOTIONLIMITS_RESPONSE_3 0xeba62353UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANMOTIONLIMITS_RESPONSE_4 0xdcdd6783UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANMOTIONLIMITS_RESPONSE_5 0xe0bc4a95UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANMOTIONLIMITS_RESPONSE_6 0x7784053fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANMOTIONLIMITS_RESPONSE_7 0x6e357994UL

/** @brief UTF-8 byte storage for flexiv_msgs/srv/SetCartesianMotionLimits_Response.message; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Response_message_text;

/** @brief Complete ROS2 flexiv_msgs/srv/SetCartesianMotionLimits_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Response
{
    /**
     * @brief Retain the complete original bool field.
     * @details Original flexiv_msgs/srv/SetCartesianMotionLimits_Response.success; native type bool.
     * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t success;
    /**
     * @brief Operator-facing explanation of the outcome
     * @details Original flexiv_msgs/srv/SetCartesianMotionLimits_Response.message; native type string.
     * Scalar value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
     * acquires no ROS resource.
     */
    roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Response_message_text message;
} roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Response;

# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANMOTIONLIMITS_RESPONSE_MAX_WIRE_BYTES 261u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANMOTIONLIMITS_RESPONSE_MIN_WIRE_BYTES 5u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANMOTIONLIMITS_RESPONSE_CODEC_IDENTITY                                                                   \
     "UWVMROS1_0adcf054313396afa13673e6a125f8a6dcc85b1009d36860b6447512f52bdc36"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Response_valid(
    roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Response const* value)
{
    if(!value)
    {
        return 0;
    }
    if(value->success > 1)
    {
        return 0;
    }
    if(value->message.size > 256u || !uwvm_bounded_utf8(value->message.data, value->message.size))
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Response_wire_size(
    roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Response const* value)
{
    size_t n = 0;
    n += 1;
    n += 4 + value->message.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Response_write_fields(
    roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Response const* value,
    unsigned char* p,
    size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->success, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, value->message.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->message.data, value->message.size);
    *offset += value->message.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Response_read_fields(
    unsigned char const* p,
    size_t n,
    size_t* offset,
    roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Response* value)
{
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->success, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->message.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->message.size > 256u || value->message.size > n - *offset)
    {
        return 0;
    }
    uwvm_bounded_copy(value->message.data, p + *offset, value->message.size);
    *offset += value->message.size;
    return roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Response_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Response_encode(
    roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Response const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Response_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Response_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Response_decode(void const* input,
                                                                                size_t length,
                                                                                roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Response* value)
{
    roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 5u || length > 261u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Response_read_fields((unsigned char const*)input, length, &offset, &next) ||
       offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLAXIS_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLAXIS_REQUEST_0 != 0x014c085cUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLAXIS_REQUEST_1 != 0x2bbd906fUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLAXIS_REQUEST_2 != 0xc5d6ef2dUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLAXIS_REQUEST_3 != 0x871ef2b7UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLAXIS_REQUEST_4 != 0x1bcfda60UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLAXIS_REQUEST_5 != 0x612829eaUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLAXIS_REQUEST_6 != 0x857a6f95UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLAXIS_REQUEST_7 != 0x3e306cd1UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLAXIS_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLAXIS_REQUEST_0 0x014c085cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLAXIS_REQUEST_1 0x2bbd906fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLAXIS_REQUEST_2 0xc5d6ef2dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLAXIS_REQUEST_3 0x871ef2b7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLAXIS_REQUEST_4 0x1bcfda60UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLAXIS_REQUEST_5 0x612829eaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLAXIS_REQUEST_6 0x857a6f95UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLAXIS_REQUEST_7 0x3e306cd1UL

/** @brief At most32 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    uint8_t data[32];
} roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Request_enabled_axes_sequence;

/** @brief At most32 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[32];
} roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Request_max_linear_vel_sequence;

/** @brief Complete ROS2 flexiv_msgs/srv/SetForceControlAxis_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Request
{
    /**
     * @brief Set the Cartesian axes that are force-controlled in the Cartesian motion-force control mode.
     * The other axes stay motion-controlled. For a robot pair, each array holds the left robot's values
     * first.  An invalid request is rejected as a whole and nothing changes. Force control flags [X, Y, Z,
     * Rx, Ry, Rz] in the force control frame, 6 per robot
     * @details Original flexiv_msgs/srv/SetForceControlAxis_Request.enabled_axes; native type bool. At
     * most 32 elements. Storage belongs to the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Request_enabled_axes_sequence enabled_axes;
    /**
     * @brief Velocity limit of the force-controlled linear axes [X, Y, Z], 3 per robot, protecting against
     * contact loss under active force control. Valid range [0.005, 2.0]. Empty means 1.0. [m/s]
     * @details Original flexiv_msgs/srv/SetForceControlAxis_Request.max_linear_vel; native type float64.
     * At most 32 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
     * complete value and acquires no ROS resource.
     */
    roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Request_max_linear_vel_sequence max_linear_vel;
} roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Request;

# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLAXIS_REQUEST_MAX_WIRE_BYTES 296u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLAXIS_REQUEST_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLAXIS_REQUEST_CODEC_IDENTITY                                                                         \
     "UWVMROS1_f068f06ad10e40bd50d06800f4178636c89547f5302af856a00d49757b54fef0"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int
    roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Request_valid(roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Request const* value)
{
    if(!value)
    {
        return 0;
    }
    if(value->enabled_axes.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->enabled_axes.size; ++i)
        {
            if(value->enabled_axes.data[i] > 1)
            {
                return 0;
            }
        }
    }
    if(value->max_linear_vel.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->max_linear_vel.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->max_linear_vel.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t
    roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Request_wire_size(roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Request const* value)
{
    size_t n = 0;
    n += 4;
    if(value->enabled_axes.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->enabled_axes.size; ++i)
        {
            n += 1;
        }
    }
    n += 4;
    if(value->max_linear_vel.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->max_linear_vel.size; ++i)
        {
            n += 8;
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Request_write_fields(roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Request const* value,
                                                                                unsigned char* p,
                                                                                size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->enabled_axes.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->enabled_axes.size; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->enabled_axes.data[i], 1);
            *offset += 1;
        }
    }
    uwvm_bounded_put(p + *offset, value->max_linear_vel.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->max_linear_vel.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->max_linear_vel.data[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int
    roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Request_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Request* value)
{
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->enabled_axes.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->enabled_axes.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->enabled_axes.size; ++i)
        {
            if(*offset > n || n - *offset < 1)
            {
                return 0;
            }
            {
                uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
                uwvm_bounded_copy(&value->enabled_axes.data[i], &bits, 1);
            }
            *offset += 1;
        }
    }
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->max_linear_vel.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->max_linear_vel.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->max_linear_vel.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->max_linear_vel.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    return roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Request_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Request_encode(roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Request const* value,
                                                                          void* output,
                                                                          size_t capacity,
                                                                          size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Request_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Request_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Request_decode(void const* input,
                                                                          size_t length,
                                                                          roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Request* value)
{
    roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 296u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLAXIS_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLAXIS_RESPONSE_0 != 0xe6ef55b9UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLAXIS_RESPONSE_1 != 0x8d3224a0UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLAXIS_RESPONSE_2 != 0x8ba57b5fUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLAXIS_RESPONSE_3 != 0xa937aa3bUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLAXIS_RESPONSE_4 != 0xa6cc3e0dUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLAXIS_RESPONSE_5 != 0xf2be2adcUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLAXIS_RESPONSE_6 != 0x45d32c18UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLAXIS_RESPONSE_7 != 0x82931592UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLAXIS_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLAXIS_RESPONSE_0 0xe6ef55b9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLAXIS_RESPONSE_1 0x8d3224a0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLAXIS_RESPONSE_2 0x8ba57b5fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLAXIS_RESPONSE_3 0xa937aa3bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLAXIS_RESPONSE_4 0xa6cc3e0dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLAXIS_RESPONSE_5 0xf2be2adcUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLAXIS_RESPONSE_6 0x45d32c18UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLAXIS_RESPONSE_7 0x82931592UL

/** @brief UTF-8 byte storage for flexiv_msgs/srv/SetForceControlAxis_Response.message; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Response_message_text;

/** @brief Complete ROS2 flexiv_msgs/srv/SetForceControlAxis_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Response
{
    /**
     * @brief Retain the complete original bool field.
     * @details Original flexiv_msgs/srv/SetForceControlAxis_Response.success; native type bool. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t success;
    /**
     * @brief Operator-facing explanation of the outcome
     * @details Original flexiv_msgs/srv/SetForceControlAxis_Response.message; native type string. Scalar
     * value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Response_message_text message;
} roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Response;

# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLAXIS_RESPONSE_MAX_WIRE_BYTES 261u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLAXIS_RESPONSE_MIN_WIRE_BYTES 5u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLAXIS_RESPONSE_CODEC_IDENTITY                                                                        \
     "UWVMROS1_26f01b6e3ddb369b49f0a6521104992e654ea628d864c0883b9ccc584234963b"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int
    roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Response_valid(roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Response const* value)
{
    if(!value)
    {
        return 0;
    }
    if(value->success > 1)
    {
        return 0;
    }
    if(value->message.size > 256u || !uwvm_bounded_utf8(value->message.data, value->message.size))
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t
    roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Response_wire_size(roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Response const* value)
{
    size_t n = 0;
    n += 1;
    n += 4 + value->message.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Response_write_fields(roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Response const* value,
                                                                                 unsigned char* p,
                                                                                 size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->success, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, value->message.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->message.data, value->message.size);
    *offset += value->message.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int
    roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Response_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Response* value)
{
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->success, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->message.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->message.size > 256u || value->message.size > n - *offset)
    {
        return 0;
    }
    uwvm_bounded_copy(value->message.data, p + *offset, value->message.size);
    *offset += value->message.size;
    return roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Response_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Response_encode(roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Response const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Response_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Response_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Response_decode(void const* input,
                                                                           size_t length,
                                                                           roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Response* value)
{
    roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 5u || length > 261u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLFRAME_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLFRAME_REQUEST_0 != 0x9a9759f3UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLFRAME_REQUEST_1 != 0x1b067625UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLFRAME_REQUEST_2 != 0x311f894bUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLFRAME_REQUEST_3 != 0x1201b3c6UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLFRAME_REQUEST_4 != 0xca55a2eaUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLFRAME_REQUEST_5 != 0x1fdeb562UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLFRAME_REQUEST_6 != 0x31590f60UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLFRAME_REQUEST_7 != 0x85e66b5fUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLFRAME_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLFRAME_REQUEST_0 0x9a9759f3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLFRAME_REQUEST_1 0x1b067625UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLFRAME_REQUEST_2 0x311f894bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLFRAME_REQUEST_3 0x1201b3c6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLFRAME_REQUEST_4 0xca55a2eaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLFRAME_REQUEST_5 0x1fdeb562UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLFRAME_REQUEST_6 0x31590f60UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLFRAME_REQUEST_7 0x85e66b5fUL

/** @brief At most32 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    uint8_t data[32];
} roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Request_root_coord_sequence;

/** @brief At most32 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[32];
} roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Request_t_in_root_sequence;

/** @brief Complete ROS2 flexiv_msgs/srv/SetForceControlFrame_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Request
{
    /**
     * @brief Root coordinate of t_in_root, 1 per robot. WORLD is fixed, TCP moves with the end effector.
     * @details Original flexiv_msgs/srv/SetForceControlFrame_Request.root_coord; native type uint8. At
     * most 32 elements. Storage belongs to the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Request_root_coord_sequence root_coord;
    /**
     * @brief Transformation from the root coordinate to the force control frame [x, y, z, qw, qx, qy, qz],
     * 7 per robot. Empty means identity. [m]:[]
     * @details Original flexiv_msgs/srv/SetForceControlFrame_Request.t_in_root; native type float64. At
     * most 32 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete
     * value and acquires no ROS resource.
     */
    roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Request_t_in_root_sequence t_in_root;
} roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Request;

# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLFRAME_REQUEST_MAX_WIRE_BYTES 296u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLFRAME_REQUEST_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLFRAME_REQUEST_CODEC_IDENTITY                                                                        \
     "UWVMROS1_3f061d3f029eddf256a9aa50f07767e77d5c3b2efd6ae69a2ad4a789f4692b30"
/** @brief Original scalar constant WORLD=0; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLFRAME_REQUEST_WORLD UINT32_C(0)
/** @brief Original scalar constant TCP=1; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLFRAME_REQUEST_TCP UINT32_C(1)

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int
    roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Request_valid(roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Request const* value)
{
    if(!value)
    {
        return 0;
    }
    if(value->root_coord.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->root_coord.size; ++i)
        {
        }
    }
    if(value->t_in_root.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->t_in_root.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->t_in_root.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t
    roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Request_wire_size(roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Request const* value)
{
    size_t n = 0;
    n += 4;
    if(value->root_coord.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->root_coord.size; ++i)
        {
            n += 1;
        }
    }
    n += 4;
    if(value->t_in_root.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->t_in_root.size; ++i)
        {
            n += 8;
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Request_write_fields(roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Request const* value,
                                                                                 unsigned char* p,
                                                                                 size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->root_coord.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->root_coord.size; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->root_coord.data[i], 1);
            *offset += 1;
        }
    }
    uwvm_bounded_put(p + *offset, value->t_in_root.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->t_in_root.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->t_in_root.data[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int
    roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Request_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Request* value)
{
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->root_coord.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->root_coord.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->root_coord.size; ++i)
        {
            if(*offset > n || n - *offset < 1)
            {
                return 0;
            }
            {
                uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
                uwvm_bounded_copy(&value->root_coord.data[i], &bits, 1);
            }
            *offset += 1;
        }
    }
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->t_in_root.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->t_in_root.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->t_in_root.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->t_in_root.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    return roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Request_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Request_encode(roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Request const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Request_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Request_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Request_decode(void const* input,
                                                                           size_t length,
                                                                           roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Request* value)
{
    roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 296u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLFRAME_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLFRAME_RESPONSE_0 != 0x8e148924UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLFRAME_RESPONSE_1 != 0xb759075eUL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLFRAME_RESPONSE_2 != 0x193ec8a6UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLFRAME_RESPONSE_3 != 0x74e82088UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLFRAME_RESPONSE_4 != 0x935623b5UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLFRAME_RESPONSE_5 != 0x5e23caf6UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLFRAME_RESPONSE_6 != 0x4f691cbaUL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLFRAME_RESPONSE_7 != 0x40e5b8a7UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLFRAME_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLFRAME_RESPONSE_0 0x8e148924UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLFRAME_RESPONSE_1 0xb759075eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLFRAME_RESPONSE_2 0x193ec8a6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLFRAME_RESPONSE_3 0x74e82088UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLFRAME_RESPONSE_4 0x935623b5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLFRAME_RESPONSE_5 0x5e23caf6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLFRAME_RESPONSE_6 0x4f691cbaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLFRAME_RESPONSE_7 0x40e5b8a7UL

/** @brief UTF-8 byte storage for flexiv_msgs/srv/SetForceControlFrame_Response.message; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Response_message_text;

/** @brief Complete ROS2 flexiv_msgs/srv/SetForceControlFrame_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Response
{
    /**
     * @brief Retain the complete original bool field.
     * @details Original flexiv_msgs/srv/SetForceControlFrame_Response.success; native type bool. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t success;
    /**
     * @brief Operator-facing explanation of the outcome
     * @details Original flexiv_msgs/srv/SetForceControlFrame_Response.message; native type string. Scalar
     * value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Response_message_text message;
} roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Response;

# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLFRAME_RESPONSE_MAX_WIRE_BYTES 261u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLFRAME_RESPONSE_MIN_WIRE_BYTES 5u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLFRAME_RESPONSE_CODEC_IDENTITY                                                                       \
     "UWVMROS1_cfec8391d4df88d36f4e3afbb956b12b3274b3bd0a6a6284cb44d49f12a44bde"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int
    roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Response_valid(roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Response const* value)
{
    if(!value)
    {
        return 0;
    }
    if(value->success > 1)
    {
        return 0;
    }
    if(value->message.size > 256u || !uwvm_bounded_utf8(value->message.data, value->message.size))
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t
    roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Response_wire_size(roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Response const* value)
{
    size_t n = 0;
    n += 1;
    n += 4 + value->message.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Response_write_fields(roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Response const* value,
                                                                                  unsigned char* p,
                                                                                  size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->success, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, value->message.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->message.data, value->message.size);
    *offset += value->message.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int
    roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Response_read_fields(unsigned char const* p,
                                                                                 size_t n,
                                                                                 size_t* offset,
                                                                                 roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Response* value)
{
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->success, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->message.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->message.size > 256u || value->message.size > n - *offset)
    {
        return 0;
    }
    uwvm_bounded_copy(value->message.data, p + *offset, value->message.size);
    *offset += value->message.size;
    return roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Response_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Response_encode(roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Response const* value,
                                                                            void* output,
                                                                            size_t capacity,
                                                                            size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Response_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Response_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Response_decode(void const* input,
                                                                            size_t length,
                                                                            roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Response* value)
{
    roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 5u || length > 261u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTIMPEDANCE_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTIMPEDANCE_REQUEST_0 != 0x975b78f0UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTIMPEDANCE_REQUEST_1 != 0x2ce3e010UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTIMPEDANCE_REQUEST_2 != 0xaa62e314UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTIMPEDANCE_REQUEST_3 != 0xcbca12c1UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTIMPEDANCE_REQUEST_4 != 0x5efab7dcUL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTIMPEDANCE_REQUEST_5 != 0x8db2442dUL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTIMPEDANCE_REQUEST_6 != 0x03475929UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTIMPEDANCE_REQUEST_7 != 0x5deb45edUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTIMPEDANCE_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTIMPEDANCE_REQUEST_0 0x975b78f0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTIMPEDANCE_REQUEST_1 0x2ce3e010UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTIMPEDANCE_REQUEST_2 0xaa62e314UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTIMPEDANCE_REQUEST_3 0xcbca12c1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTIMPEDANCE_REQUEST_4 0x5efab7dcUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTIMPEDANCE_REQUEST_5 0x8db2442dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTIMPEDANCE_REQUEST_6 0x03475929UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTIMPEDANCE_REQUEST_7 0x5deb45edUL

/** @brief At most32 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[32];
} roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Request_k_q_sequence;

/** @brief At most32 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[32];
} roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Request_z_q_sequence;

/** @brief Complete ROS2 flexiv_msgs/srv/SetJointImpedance_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Request
{
    /**
     * @brief Set impedance properties of the robot's joint motion controller. Requires the driver to run
     * with rdk_control_mode:=joint_impedance.  k_q must hold one entry per joint of the hardware
     * component, in URDF order. z_q may be left empty to use the nominal damping ratio 0.7, matching the
     * RDK argument default. An invalid request is rejected as a whole and nothing changes. Joint motion
     * stiffness K_q, one entry per joint in URDF order. Valid range [0, k_q_nom]. Setting a joint to 0
     * makes it free-floating, which in this position-streaming driver means the joint will sag under
     * gravity. [Nm/rad]
     * @details Original flexiv_msgs/srv/SetJointImpedance_Request.k_q; native type float64. At most 32
     * elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
     * acquires no ROS resource.
     */
    roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Request_k_q_sequence k_q;
    /**
     * @brief Joint motion damping ratio Z_q, one entry per joint in URDF order, or empty for the nominal
     * 0.7. Valid range [0.3, 0.8]. Values away from nominal may lead to performance and stability issues.
     * @details Original flexiv_msgs/srv/SetJointImpedance_Request.z_q; native type float64. At most 32
     * elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
     * acquires no ROS resource.
     */
    roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Request_z_q_sequence z_q;
} roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Request;

# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTIMPEDANCE_REQUEST_MAX_WIRE_BYTES 520u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTIMPEDANCE_REQUEST_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTIMPEDANCE_REQUEST_CODEC_IDENTITY "UWVMROS1_5b1014a3a79fcd116f94142640c2c3e9c1867a2c54b9382f7165f7fda04a8584"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Request_valid(roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Request const* value)
{
    if(!value)
    {
        return 0;
    }
    if(value->k_q.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->k_q.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->k_q.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    if(value->z_q.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->z_q.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->z_q.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t
    roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Request_wire_size(roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Request const* value)
{
    size_t n = 0;
    n += 4;
    if(value->k_q.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->k_q.size; ++i)
        {
            n += 8;
        }
    }
    n += 4;
    if(value->z_q.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->z_q.size; ++i)
        {
            n += 8;
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Request_write_fields(roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Request const* value,
                                                                              unsigned char* p,
                                                                              size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->k_q.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->k_q.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->k_q.data[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    uwvm_bounded_put(p + *offset, value->z_q.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->z_q.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->z_q.data[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Request_read_fields(unsigned char const* p,
                                                                                           size_t n,
                                                                                           size_t* offset,
                                                                                           roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Request* value)
{
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->k_q.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->k_q.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->k_q.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->k_q.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->z_q.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->z_q.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->z_q.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->z_q.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    return roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Request_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Request_encode(roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Request const* value,
                                                                        void* output,
                                                                        size_t capacity,
                                                                        size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Request_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Request_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Request_decode(void const* input,
                                                                                           size_t length,
                                                                                           roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Request* value)
{
    roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 520u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTIMPEDANCE_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTIMPEDANCE_RESPONSE_0 != 0x46871203UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTIMPEDANCE_RESPONSE_1 != 0x1fcd5a19UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTIMPEDANCE_RESPONSE_2 != 0xa7efdb75UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTIMPEDANCE_RESPONSE_3 != 0x4b69610dUL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTIMPEDANCE_RESPONSE_4 != 0x2fe37bb9UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTIMPEDANCE_RESPONSE_5 != 0x64b644b7UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTIMPEDANCE_RESPONSE_6 != 0x265911f0UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTIMPEDANCE_RESPONSE_7 != 0xc7030452UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTIMPEDANCE_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTIMPEDANCE_RESPONSE_0 0x46871203UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTIMPEDANCE_RESPONSE_1 0x1fcd5a19UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTIMPEDANCE_RESPONSE_2 0xa7efdb75UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTIMPEDANCE_RESPONSE_3 0x4b69610dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTIMPEDANCE_RESPONSE_4 0x2fe37bb9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTIMPEDANCE_RESPONSE_5 0x64b644b7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTIMPEDANCE_RESPONSE_6 0x265911f0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTIMPEDANCE_RESPONSE_7 0xc7030452UL

/** @brief UTF-8 byte storage for flexiv_msgs/srv/SetJointImpedance_Response.message; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Response_message_text;

/** @brief Complete ROS2 flexiv_msgs/srv/SetJointImpedance_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Response
{
    /**
     * @brief Retain the complete original bool field.
     * @details Original flexiv_msgs/srv/SetJointImpedance_Response.success; native type bool. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t success;
    /**
     * @brief Operator-facing explanation of the outcome, naming the joint and the bound on a rejection
     * @details Original flexiv_msgs/srv/SetJointImpedance_Response.message; native type string. Scalar
     * value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Response_message_text message;
    /**
     * @brief The values now held by the driver, unchanged from before on a rejection
     * @details Original flexiv_msgs/srv/SetJointImpedance_Response.setting; native type
     * flexiv_msgs/msg/JointImpedance. Scalar value. Storage belongs to the complete value and acquires no
     * ROS resource.
     */
    roswasmc_bounded_2_flexiv_msgs_msg_JointImpedance setting;
} roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Response;

# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTIMPEDANCE_RESPONSE_MAX_WIRE_BYTES 9634u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTIMPEDANCE_RESPONSE_MIN_WIRE_BYTES 34u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTIMPEDANCE_RESPONSE_CODEC_IDENTITY                                                                          \
     "UWVMROS1_95a169dd0eb880ef3e71653a5e4cdf08e743db80df706e75664db582eb927f96"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int
    roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Response_valid(roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Response const* value)
{
    if(!value)
    {
        return 0;
    }
    if(value->success > 1)
    {
        return 0;
    }
    if(value->message.size > 256u || !uwvm_bounded_utf8(value->message.data, value->message.size))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_flexiv_msgs_msg_JointImpedance_valid(&value->setting))
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t
    roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Response_wire_size(roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Response const* value)
{
    size_t n = 0;
    n += 1;
    n += 4 + value->message.size;
    n += roswasmc_bounded_2_flexiv_msgs_msg_JointImpedance_wire_size(&value->setting);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Response_write_fields(roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Response const* value,
                                                                               unsigned char* p,
                                                                               size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->success, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, value->message.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->message.data, value->message.size);
    *offset += value->message.size;
    roswasmc_bounded_2_flexiv_msgs_msg_JointImpedance_write_fields(&value->setting, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int
    roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Response_read_fields(unsigned char const* p,
                                                                              size_t n,
                                                                              size_t* offset,
                                                                              roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Response* value)
{
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->success, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->message.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->message.size > 256u || value->message.size > n - *offset)
    {
        return 0;
    }
    uwvm_bounded_copy(value->message.data, p + *offset, value->message.size);
    *offset += value->message.size;
    if(!roswasmc_bounded_2_flexiv_msgs_msg_JointImpedance_read_fields(p, n, offset, &value->setting))
    {
        return 0;
    }
    return roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Response_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Response_encode(roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Response const* value,
                                                                         void* output,
                                                                         size_t capacity,
                                                                         size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Response_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Response_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Response_decode(void const* input,
                                                                         size_t length,
                                                                         roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Response* value)
{
    roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 34u || length > 9634u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTINERTIASCALE_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTINERTIASCALE_REQUEST_0 != 0x1547fbbfUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTINERTIASCALE_REQUEST_1 != 0x7154a332UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTINERTIASCALE_REQUEST_2 != 0x25471490UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTINERTIASCALE_REQUEST_3 != 0x21196c71UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTINERTIASCALE_REQUEST_4 != 0x87c4a538UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTINERTIASCALE_REQUEST_5 != 0x8bda427cUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTINERTIASCALE_REQUEST_6 != 0xdcc36464UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTINERTIASCALE_REQUEST_7 != 0x3933cb3bUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTINERTIASCALE_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTINERTIASCALE_REQUEST_0 0x1547fbbfUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTINERTIASCALE_REQUEST_1 0x7154a332UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTINERTIASCALE_REQUEST_2 0x25471490UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTINERTIASCALE_REQUEST_3 0x21196c71UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTINERTIASCALE_REQUEST_4 0x87c4a538UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTINERTIASCALE_REQUEST_5 0x8bda427cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTINERTIASCALE_REQUEST_6 0xdcc36464UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTINERTIASCALE_REQUEST_7 0x3933cb3bUL

/** @brief At most32 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[32];
} roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Request_inertia_scales_sequence;

/** @brief Complete ROS2 flexiv_msgs/srv/SetJointInertiaScale_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Request
{
    /**
     * @brief Set inertia shaping scales of the robot's joint motion controller, which make the joints
     * behave as if they were lighter. Requires the driver to run with rdk_control_mode:=joint_impedance.
     * inertia_scales must hold one entry per joint of the hardware component, in URDF order. An invalid
     * request is rejected as a whole and nothing changes. Inertia shaping scale sigma_q, one entry per
     * joint in URDF order. Valid range [0.75, 1.0]. The nominal value 1.0 means no shaping; a smaller
     * scale corresponds to lighter inertia.
     * @details Original flexiv_msgs/srv/SetJointInertiaScale_Request.inertia_scales; native type float64.
     * At most 32 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
     * complete value and acquires no ROS resource.
     */
    roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Request_inertia_scales_sequence inertia_scales;
} roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Request;

# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTINERTIASCALE_REQUEST_MAX_WIRE_BYTES 260u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTINERTIASCALE_REQUEST_MIN_WIRE_BYTES 4u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTINERTIASCALE_REQUEST_CODEC_IDENTITY                                                                        \
     "UWVMROS1_752da94424644200ef0e6463486a6dbc74b85c46acfaeac3b569b6248c1e2686"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int
    roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Request_valid(roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Request const* value)
{
    if(!value)
    {
        return 0;
    }
    if(value->inertia_scales.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->inertia_scales.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->inertia_scales.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t
    roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Request_wire_size(roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Request const* value)
{
    size_t n = 0;
    n += 4;
    if(value->inertia_scales.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->inertia_scales.size; ++i)
        {
            n += 8;
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Request_write_fields(roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Request const* value,
                                                                                 unsigned char* p,
                                                                                 size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->inertia_scales.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->inertia_scales.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->inertia_scales.data[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int
    roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Request_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Request* value)
{
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->inertia_scales.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->inertia_scales.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->inertia_scales.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->inertia_scales.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    return roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Request_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Request_encode(roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Request const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Request_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Request_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Request_decode(void const* input,
                                                                           size_t length,
                                                                           roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Request* value)
{
    roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 4u || length > 260u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTINERTIASCALE_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTINERTIASCALE_RESPONSE_0 != 0xff687020UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTINERTIASCALE_RESPONSE_1 != 0xca14abf6UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTINERTIASCALE_RESPONSE_2 != 0x61a62d37UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTINERTIASCALE_RESPONSE_3 != 0xe5974ebbUL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTINERTIASCALE_RESPONSE_4 != 0xfe08f09eUL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTINERTIASCALE_RESPONSE_5 != 0x7aeae39aUL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTINERTIASCALE_RESPONSE_6 != 0xc8dcba65UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTINERTIASCALE_RESPONSE_7 != 0xcb329d2dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTINERTIASCALE_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTINERTIASCALE_RESPONSE_0 0xff687020UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTINERTIASCALE_RESPONSE_1 0xca14abf6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTINERTIASCALE_RESPONSE_2 0x61a62d37UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTINERTIASCALE_RESPONSE_3 0xe5974ebbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTINERTIASCALE_RESPONSE_4 0xfe08f09eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTINERTIASCALE_RESPONSE_5 0x7aeae39aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTINERTIASCALE_RESPONSE_6 0xc8dcba65UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTINERTIASCALE_RESPONSE_7 0xcb329d2dUL

/** @brief UTF-8 byte storage for flexiv_msgs/srv/SetJointInertiaScale_Response.message; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Response_message_text;

/** @brief Complete ROS2 flexiv_msgs/srv/SetJointInertiaScale_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Response
{
    /**
     * @brief Retain the complete original bool field.
     * @details Original flexiv_msgs/srv/SetJointInertiaScale_Response.success; native type bool. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t success;
    /**
     * @brief Operator-facing explanation of the outcome, naming the joint and the bound on a rejection
     * @details Original flexiv_msgs/srv/SetJointInertiaScale_Response.message; native type string. Scalar
     * value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Response_message_text message;
    /**
     * @brief The values now held by the driver, unchanged from before on a rejection
     * @details Original flexiv_msgs/srv/SetJointInertiaScale_Response.setting; native type
     * flexiv_msgs/msg/JointInertiaScale. Scalar value. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    roswasmc_bounded_2_flexiv_msgs_msg_JointInertiaScale setting;
} roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Response;

# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTINERTIASCALE_RESPONSE_MAX_WIRE_BYTES 9114u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTINERTIASCALE_RESPONSE_MIN_WIRE_BYTES 26u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTINERTIASCALE_RESPONSE_CODEC_IDENTITY                                                                       \
     "UWVMROS1_2b7d36ecdc70ec1a450a03d412cfd431e735fc3aa601f321007afabe00f51931"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int
    roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Response_valid(roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Response const* value)
{
    if(!value)
    {
        return 0;
    }
    if(value->success > 1)
    {
        return 0;
    }
    if(value->message.size > 256u || !uwvm_bounded_utf8(value->message.data, value->message.size))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_flexiv_msgs_msg_JointInertiaScale_valid(&value->setting))
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t
    roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Response_wire_size(roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Response const* value)
{
    size_t n = 0;
    n += 1;
    n += 4 + value->message.size;
    n += roswasmc_bounded_2_flexiv_msgs_msg_JointInertiaScale_wire_size(&value->setting);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Response_write_fields(roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Response const* value,
                                                                                  unsigned char* p,
                                                                                  size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->success, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, value->message.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->message.data, value->message.size);
    *offset += value->message.size;
    roswasmc_bounded_2_flexiv_msgs_msg_JointInertiaScale_write_fields(&value->setting, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int
    roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Response_read_fields(unsigned char const* p,
                                                                                 size_t n,
                                                                                 size_t* offset,
                                                                                 roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Response* value)
{
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->success, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->message.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->message.size > 256u || value->message.size > n - *offset)
    {
        return 0;
    }
    uwvm_bounded_copy(value->message.data, p + *offset, value->message.size);
    *offset += value->message.size;
    if(!roswasmc_bounded_2_flexiv_msgs_msg_JointInertiaScale_read_fields(p, n, offset, &value->setting))
    {
        return 0;
    }
    return roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Response_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Response_encode(roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Response const* value,
                                                                            void* output,
                                                                            size_t capacity,
                                                                            size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Response_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Response_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Response_decode(void const* input,
                                                                            size_t length,
                                                                            roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Response* value)
{
    roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 26u || length > 9114u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTTORQUE_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTTORQUE_REQUEST_0 != 0x84600df3UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTTORQUE_REQUEST_1 != 0xe4d6b642UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTTORQUE_REQUEST_2 != 0xc2aeba2fUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTTORQUE_REQUEST_3 != 0x330778bdUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTTORQUE_REQUEST_4 != 0x889fee1cUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTTORQUE_REQUEST_5 != 0x11bdcd31UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTTORQUE_REQUEST_6 != 0x28a9361dUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTTORQUE_REQUEST_7 != 0xb3a4e0e9UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTTORQUE_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTTORQUE_REQUEST_0 0x84600df3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTTORQUE_REQUEST_1 0xe4d6b642UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTTORQUE_REQUEST_2 0xc2aeba2fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTTORQUE_REQUEST_3 0x330778bdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTTORQUE_REQUEST_4 0x889fee1cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTTORQUE_REQUEST_5 0x11bdcd31UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTTORQUE_REQUEST_6 0x28a9361dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTTORQUE_REQUEST_7 0xb3a4e0e9UL

/** @brief At most32 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[32];
} roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Request_max_contact_torques_sequence;

/** @brief Complete ROS2 flexiv_msgs/srv/SetMaxContactTorque_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Request
{
    /**
     * @brief Set maximum contact torques of the robot's joint motion controller. The controller regulates
     * its output to keep contact torques with the environment under these values. Requires the driver to
     * run with rdk_control_mode:=joint_impedance.  max_contact_torques must hold one entry per joint of
     * the hardware component, in URDF order. An invalid request is rejected as a whole and nothing
     * changes. Maximum contact torque, one entry per joint in URDF order. Valid range [0, tau_max].
     * Raising this increases the force the robot may exert on its surroundings. [Nm]
     * @details Original flexiv_msgs/srv/SetMaxContactTorque_Request.max_contact_torques; native type
     * float64. At most 32 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to
     * the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Request_max_contact_torques_sequence max_contact_torques;
} roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Request;

# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTTORQUE_REQUEST_MAX_WIRE_BYTES 260u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTTORQUE_REQUEST_MIN_WIRE_BYTES 4u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTTORQUE_REQUEST_CODEC_IDENTITY                                                                         \
     "UWVMROS1_8850403204dc91a11797a767dde6999163008f41ad5c89360d852d037806fb43"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int
    roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Request_valid(roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Request const* value)
{
    if(!value)
    {
        return 0;
    }
    if(value->max_contact_torques.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->max_contact_torques.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->max_contact_torques.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t
    roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Request_wire_size(roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Request const* value)
{
    size_t n = 0;
    n += 4;
    if(value->max_contact_torques.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->max_contact_torques.size; ++i)
        {
            n += 8;
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Request_write_fields(roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Request const* value,
                                                                                unsigned char* p,
                                                                                size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->max_contact_torques.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->max_contact_torques.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->max_contact_torques.data[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int
    roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Request_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Request* value)
{
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->max_contact_torques.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->max_contact_torques.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->max_contact_torques.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->max_contact_torques.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    return roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Request_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Request_encode(roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Request const* value,
                                                                          void* output,
                                                                          size_t capacity,
                                                                          size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Request_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Request_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Request_decode(void const* input,
                                                                          size_t length,
                                                                          roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Request* value)
{
    roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 4u || length > 260u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTTORQUE_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTTORQUE_RESPONSE_0 != 0xaaea3972UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTTORQUE_RESPONSE_1 != 0x324937c8UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTTORQUE_RESPONSE_2 != 0x2b17618fUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTTORQUE_RESPONSE_3 != 0xcc66aae5UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTTORQUE_RESPONSE_4 != 0x690b9d69UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTTORQUE_RESPONSE_5 != 0x5fa91e7dUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTTORQUE_RESPONSE_6 != 0xe5ccfe31UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTTORQUE_RESPONSE_7 != 0xbfe5a2c6UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTTORQUE_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTTORQUE_RESPONSE_0 0xaaea3972UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTTORQUE_RESPONSE_1 0x324937c8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTTORQUE_RESPONSE_2 0x2b17618fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTTORQUE_RESPONSE_3 0xcc66aae5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTTORQUE_RESPONSE_4 0x690b9d69UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTTORQUE_RESPONSE_5 0x5fa91e7dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTTORQUE_RESPONSE_6 0xe5ccfe31UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTTORQUE_RESPONSE_7 0xbfe5a2c6UL

/** @brief UTF-8 byte storage for flexiv_msgs/srv/SetMaxContactTorque_Response.message; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Response_message_text;

/** @brief Complete ROS2 flexiv_msgs/srv/SetMaxContactTorque_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Response
{
    /**
     * @brief Retain the complete original bool field.
     * @details Original flexiv_msgs/srv/SetMaxContactTorque_Response.success; native type bool. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t success;
    /**
     * @brief Operator-facing explanation of the outcome, naming the joint and the bound on a rejection
     * @details Original flexiv_msgs/srv/SetMaxContactTorque_Response.message; native type string. Scalar
     * value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Response_message_text message;
    /**
     * @brief The values now held by the driver, unchanged from before on a rejection
     * @details Original flexiv_msgs/srv/SetMaxContactTorque_Response.setting; native type
     * flexiv_msgs/msg/MaxContactTorque. Scalar value. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    roswasmc_bounded_2_flexiv_msgs_msg_MaxContactTorque setting;
} roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Response;

# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTTORQUE_RESPONSE_MAX_WIRE_BYTES 9374u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTTORQUE_RESPONSE_MIN_WIRE_BYTES 30u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTTORQUE_RESPONSE_CODEC_IDENTITY                                                                        \
     "UWVMROS1_602bd439ab984dd9d7f64786005dd4f5763d245121a09833f75cee914e9dd43c"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int
    roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Response_valid(roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Response const* value)
{
    if(!value)
    {
        return 0;
    }
    if(value->success > 1)
    {
        return 0;
    }
    if(value->message.size > 256u || !uwvm_bounded_utf8(value->message.data, value->message.size))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_flexiv_msgs_msg_MaxContactTorque_valid(&value->setting))
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t
    roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Response_wire_size(roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Response const* value)
{
    size_t n = 0;
    n += 1;
    n += 4 + value->message.size;
    n += roswasmc_bounded_2_flexiv_msgs_msg_MaxContactTorque_wire_size(&value->setting);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Response_write_fields(roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Response const* value,
                                                                                 unsigned char* p,
                                                                                 size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->success, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, value->message.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->message.data, value->message.size);
    *offset += value->message.size;
    roswasmc_bounded_2_flexiv_msgs_msg_MaxContactTorque_write_fields(&value->setting, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int
    roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Response_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Response* value)
{
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->success, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->message.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->message.size > 256u || value->message.size > n - *offset)
    {
        return 0;
    }
    uwvm_bounded_copy(value->message.data, p + *offset, value->message.size);
    *offset += value->message.size;
    if(!roswasmc_bounded_2_flexiv_msgs_msg_MaxContactTorque_read_fields(p, n, offset, &value->setting))
    {
        return 0;
    }
    return roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Response_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Response_encode(roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Response const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Response_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Response_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Response_decode(void const* input,
                                                                           size_t length,
                                                                           roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Response* value)
{
    roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 30u || length > 9374u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTWRENCH_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTWRENCH_REQUEST_0 != 0xbe0d866fUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTWRENCH_REQUEST_1 != 0x873c68c1UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTWRENCH_REQUEST_2 != 0xf9cfcc6aUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTWRENCH_REQUEST_3 != 0x64784d7cUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTWRENCH_REQUEST_4 != 0x7e8fa572UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTWRENCH_REQUEST_5 != 0xae39b89cUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTWRENCH_REQUEST_6 != 0x281de087UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTWRENCH_REQUEST_7 != 0xb27cc3efUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTWRENCH_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTWRENCH_REQUEST_0 0xbe0d866fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTWRENCH_REQUEST_1 0x873c68c1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTWRENCH_REQUEST_2 0xf9cfcc6aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTWRENCH_REQUEST_3 0x64784d7cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTWRENCH_REQUEST_4 0x7e8fa572UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTWRENCH_REQUEST_5 0xae39b89cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTWRENCH_REQUEST_6 0x281de087UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTWRENCH_REQUEST_7 0xb27cc3efUL

/** @brief At most32 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[32];
} roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Request_max_wrench_sequence;

/** @brief Complete ROS2 flexiv_msgs/srv/SetMaxContactWrench_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Request
{
    /**
     * @brief Set the maximum contact wrench for the motion-controlled axes of the Cartesian motion-force
     * control mode. For a robot pair, the array holds the left robot's values first.  An invalid request
     * is rejected as a whole and nothing changes. Maximum contact wrench [f_x, f_y, f_z, m_x, m_y, m_z], 6
     * per robot. Must not be negative. Use infinity to disable the regulation. [N]:[Nm]
     * @details Original flexiv_msgs/srv/SetMaxContactWrench_Request.max_wrench; native type float64. At
     * most 32 elements. Finite IEEE values and the original positive-infinity sentinel; reject
     * NaN/negative infinity. Storage belongs to the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Request_max_wrench_sequence max_wrench;
} roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Request;

# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTWRENCH_REQUEST_MAX_WIRE_BYTES 260u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTWRENCH_REQUEST_MIN_WIRE_BYTES 4u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTWRENCH_REQUEST_CODEC_IDENTITY                                                                         \
     "UWVMROS1_5a943fdeba115cb68b38d0a1d98e9247331419b4ec89ad0870387251fd5d9467"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int
    roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Request_valid(roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Request const* value)
{
    if(!value)
    {
        return 0;
    }
    if(value->max_wrench.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->max_wrench.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->max_wrench.data[i], 8);
                if(((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000) && bits != UINT64_C(0x7ff0000000000000)))
                {
                    return 0;
                }
            }
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t
    roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Request_wire_size(roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Request const* value)
{
    size_t n = 0;
    n += 4;
    if(value->max_wrench.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->max_wrench.size; ++i)
        {
            n += 8;
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Request_write_fields(roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Request const* value,
                                                                                unsigned char* p,
                                                                                size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->max_wrench.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->max_wrench.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->max_wrench.data[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int
    roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Request_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Request* value)
{
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->max_wrench.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->max_wrench.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->max_wrench.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->max_wrench.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    return roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Request_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Request_encode(roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Request const* value,
                                                                          void* output,
                                                                          size_t capacity,
                                                                          size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Request_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Request_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Request_decode(void const* input,
                                                                          size_t length,
                                                                          roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Request* value)
{
    roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 4u || length > 260u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTWRENCH_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTWRENCH_RESPONSE_0 != 0xb38313c2UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTWRENCH_RESPONSE_1 != 0xffa8c6faUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTWRENCH_RESPONSE_2 != 0x7469c827UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTWRENCH_RESPONSE_3 != 0xc6f8a333UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTWRENCH_RESPONSE_4 != 0xf8b9ef4cUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTWRENCH_RESPONSE_5 != 0x87c8406bUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTWRENCH_RESPONSE_6 != 0x8ba45fa1UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTWRENCH_RESPONSE_7 != 0xffeff14dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTWRENCH_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTWRENCH_RESPONSE_0 0xb38313c2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTWRENCH_RESPONSE_1 0xffa8c6faUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTWRENCH_RESPONSE_2 0x7469c827UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTWRENCH_RESPONSE_3 0xc6f8a333UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTWRENCH_RESPONSE_4 0xf8b9ef4cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTWRENCH_RESPONSE_5 0x87c8406bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTWRENCH_RESPONSE_6 0x8ba45fa1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTWRENCH_RESPONSE_7 0xffeff14dUL

/** @brief UTF-8 byte storage for flexiv_msgs/srv/SetMaxContactWrench_Response.message; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Response_message_text;

/** @brief Complete ROS2 flexiv_msgs/srv/SetMaxContactWrench_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Response
{
    /**
     * @brief Retain the complete original bool field.
     * @details Original flexiv_msgs/srv/SetMaxContactWrench_Response.success; native type bool. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t success;
    /**
     * @brief Operator-facing explanation of the outcome
     * @details Original flexiv_msgs/srv/SetMaxContactWrench_Response.message; native type string. Scalar
     * value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Response_message_text message;
} roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Response;

# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTWRENCH_RESPONSE_MAX_WIRE_BYTES 261u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTWRENCH_RESPONSE_MIN_WIRE_BYTES 5u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTWRENCH_RESPONSE_CODEC_IDENTITY                                                                        \
     "UWVMROS1_6a39df3ba6eacc0a230a8f039f16f03574d76818fb53e9445c29f175c2e1420e"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int
    roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Response_valid(roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Response const* value)
{
    if(!value)
    {
        return 0;
    }
    if(value->success > 1)
    {
        return 0;
    }
    if(value->message.size > 256u || !uwvm_bounded_utf8(value->message.data, value->message.size))
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t
    roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Response_wire_size(roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Response const* value)
{
    size_t n = 0;
    n += 1;
    n += 4 + value->message.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Response_write_fields(roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Response const* value,
                                                                                 unsigned char* p,
                                                                                 size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->success, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, value->message.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->message.data, value->message.size);
    *offset += value->message.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int
    roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Response_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Response* value)
{
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->success, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->message.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->message.size > 256u || value->message.size > n - *offset)
    {
        return 0;
    }
    uwvm_bounded_copy(value->message.data, p + *offset, value->message.size);
    *offset += value->message.size;
    return roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Response_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Response_encode(roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Response const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Response_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Response_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Response_decode(void const* input,
                                                                           size_t length,
                                                                           roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Response* value)
{
    roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 5u || length > 261u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEOBJECTIVES_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEOBJECTIVES_REQUEST_0 != 0xdff943eaUL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEOBJECTIVES_REQUEST_1 != 0x12df8e1fUL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEOBJECTIVES_REQUEST_2 != 0xe0bc595cUL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEOBJECTIVES_REQUEST_3 != 0xace31f88UL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEOBJECTIVES_REQUEST_4 != 0x1badacbfUL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEOBJECTIVES_REQUEST_5 != 0xea867d51UL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEOBJECTIVES_REQUEST_6 != 0x118057d9UL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEOBJECTIVES_REQUEST_7 != 0x6c2c46eaUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEOBJECTIVES_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEOBJECTIVES_REQUEST_0 0xdff943eaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEOBJECTIVES_REQUEST_1 0x12df8e1fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEOBJECTIVES_REQUEST_2 0xe0bc595cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEOBJECTIVES_REQUEST_3 0xace31f88UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEOBJECTIVES_REQUEST_4 0x1badacbfUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEOBJECTIVES_REQUEST_5 0xea867d51UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEOBJECTIVES_REQUEST_6 0x118057d9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEOBJECTIVES_REQUEST_7 0x6c2c46eaUL

/** @brief At most32 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[32];
} roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Request_linear_manipulability_sequence;

/** @brief At most32 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[32];
} roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Request_angular_manipulability_sequence;

/** @brief At most32 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[32];
} roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Request_ref_positions_tracking_sequence;

/** @brief Complete ROS2 flexiv_msgs/srv/SetNullSpaceObjectives_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Request
{
    /**
     * @brief Set the weights of the three optimization objectives of the null-space posture control, used
     * in the Cartesian motion-force control mode. Each array holds one entry per robot, left first.  An
     * invalid request is rejected as a whole and nothing changes. Weight of translational manipulability.
     * Valid range [0.0, 1.0]. RDK default 0.0.
     * @details Original flexiv_msgs/srv/SetNullSpaceObjectives_Request.linear_manipulability; native type
     * float64. At most 32 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to
     * the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Request_linear_manipulability_sequence linear_manipulability;
    /**
     * @brief Weight of rotational manipulability. Valid range [0.0, 1.0]. RDK default 0.0.
     * @details Original flexiv_msgs/srv/SetNullSpaceObjectives_Request.angular_manipulability; native type
     * float64. At most 32 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to
     * the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Request_angular_manipulability_sequence angular_manipulability;
    /**
     * @brief Weight of tracking the null-space posture reference. Valid range [0.1, 1.0]. RDK default 0.5.
     * @details Original flexiv_msgs/srv/SetNullSpaceObjectives_Request.ref_positions_tracking; native type
     * float64. At most 32 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to
     * the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Request_ref_positions_tracking_sequence ref_positions_tracking;
} roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Request;

# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEOBJECTIVES_REQUEST_MAX_WIRE_BYTES 780u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEOBJECTIVES_REQUEST_MIN_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEOBJECTIVES_REQUEST_CODEC_IDENTITY                                                                      \
     "UWVMROS1_01cb5842d8e2eca55e63f74f7f2c973038bc354a5c0ef2552d4f6e82e382bc27"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int
    roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Request_valid(roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Request const* value)
{
    if(!value)
    {
        return 0;
    }
    if(value->linear_manipulability.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->linear_manipulability.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->linear_manipulability.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    if(value->angular_manipulability.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->angular_manipulability.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->angular_manipulability.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    if(value->ref_positions_tracking.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->ref_positions_tracking.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->ref_positions_tracking.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t
    roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Request_wire_size(roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Request const* value)
{
    size_t n = 0;
    n += 4;
    if(value->linear_manipulability.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->linear_manipulability.size; ++i)
        {
            n += 8;
        }
    }
    n += 4;
    if(value->angular_manipulability.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->angular_manipulability.size; ++i)
        {
            n += 8;
        }
    }
    n += 4;
    if(value->ref_positions_tracking.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->ref_positions_tracking.size; ++i)
        {
            n += 8;
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Request_write_fields(
    roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Request const* value,
    unsigned char* p,
    size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->linear_manipulability.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->linear_manipulability.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->linear_manipulability.data[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    uwvm_bounded_put(p + *offset, value->angular_manipulability.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->angular_manipulability.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->angular_manipulability.data[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    uwvm_bounded_put(p + *offset, value->ref_positions_tracking.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->ref_positions_tracking.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->ref_positions_tracking.data[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int
    roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Request_read_fields(unsigned char const* p,
                                                                                  size_t n,
                                                                                  size_t* offset,
                                                                                  roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Request* value)
{
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->linear_manipulability.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->linear_manipulability.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->linear_manipulability.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->linear_manipulability.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->angular_manipulability.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->angular_manipulability.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->angular_manipulability.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->angular_manipulability.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->ref_positions_tracking.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->ref_positions_tracking.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->ref_positions_tracking.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->ref_positions_tracking.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    return roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Request_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Request_encode(roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Request const* value,
                                                                             void* output,
                                                                             size_t capacity,
                                                                             size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Request_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Request_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Request_decode(void const* input,
                                                                             size_t length,
                                                                             roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Request* value)
{
    roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 12u || length > 780u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEOBJECTIVES_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEOBJECTIVES_RESPONSE_0 != 0xd898c539UL ||                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEOBJECTIVES_RESPONSE_1 != 0xe24a4bffUL ||                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEOBJECTIVES_RESPONSE_2 != 0x4babfc26UL ||                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEOBJECTIVES_RESPONSE_3 != 0xb5a23660UL ||                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEOBJECTIVES_RESPONSE_4 != 0xf6ed8365UL ||                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEOBJECTIVES_RESPONSE_5 != 0x4d5ce07dUL ||                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEOBJECTIVES_RESPONSE_6 != 0xbe6ba29cUL ||                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEOBJECTIVES_RESPONSE_7 != 0x5bcf6a3aUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEOBJECTIVES_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEOBJECTIVES_RESPONSE_0 0xd898c539UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEOBJECTIVES_RESPONSE_1 0xe24a4bffUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEOBJECTIVES_RESPONSE_2 0x4babfc26UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEOBJECTIVES_RESPONSE_3 0xb5a23660UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEOBJECTIVES_RESPONSE_4 0xf6ed8365UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEOBJECTIVES_RESPONSE_5 0x4d5ce07dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEOBJECTIVES_RESPONSE_6 0xbe6ba29cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEOBJECTIVES_RESPONSE_7 0x5bcf6a3aUL

/** @brief UTF-8 byte storage for flexiv_msgs/srv/SetNullSpaceObjectives_Response.message; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Response_message_text;

/** @brief Complete ROS2 flexiv_msgs/srv/SetNullSpaceObjectives_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Response
{
    /**
     * @brief Retain the complete original bool field.
     * @details Original flexiv_msgs/srv/SetNullSpaceObjectives_Response.success; native type bool. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t success;
    /**
     * @brief Operator-facing explanation of the outcome
     * @details Original flexiv_msgs/srv/SetNullSpaceObjectives_Response.message; native type string.
     * Scalar value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
     * acquires no ROS resource.
     */
    roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Response_message_text message;
} roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Response;

# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEOBJECTIVES_RESPONSE_MAX_WIRE_BYTES 261u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEOBJECTIVES_RESPONSE_MIN_WIRE_BYTES 5u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEOBJECTIVES_RESPONSE_CODEC_IDENTITY                                                                     \
     "UWVMROS1_70fb3c7a3a0a6b46347624a273b6e7180ad1610ca09a5c672b5ad7a976b79298"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int
    roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Response_valid(roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Response const* value)
{
    if(!value)
    {
        return 0;
    }
    if(value->success > 1)
    {
        return 0;
    }
    if(value->message.size > 256u || !uwvm_bounded_utf8(value->message.data, value->message.size))
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Response_wire_size(
    roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Response const* value)
{
    size_t n = 0;
    n += 1;
    n += 4 + value->message.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Response_write_fields(
    roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Response const* value,
    unsigned char* p,
    size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->success, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, value->message.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->message.data, value->message.size);
    *offset += value->message.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int
    roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Response_read_fields(unsigned char const* p,
                                                                                   size_t n,
                                                                                   size_t* offset,
                                                                                   roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Response* value)
{
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->success, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->message.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->message.size > 256u || value->message.size > n - *offset)
    {
        return 0;
    }
    uwvm_bounded_copy(value->message.data, p + *offset, value->message.size);
    *offset += value->message.size;
    return roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Response_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Response_encode(roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Response const* value,
                                                                              void* output,
                                                                              size_t capacity,
                                                                              size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Response_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Response_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Response_decode(void const* input,
                                                                              size_t length,
                                                                              roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Response* value)
{
    roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 5u || length > 261u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEPOSTURE_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEPOSTURE_REQUEST_0 != 0xeae7ba1eUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEPOSTURE_REQUEST_1 != 0x6e195dadUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEPOSTURE_REQUEST_2 != 0x3ab4b042UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEPOSTURE_REQUEST_3 != 0x039d7c7cUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEPOSTURE_REQUEST_4 != 0x171c29dfUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEPOSTURE_REQUEST_5 != 0xd346d83bUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEPOSTURE_REQUEST_6 != 0x3f27ec85UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEPOSTURE_REQUEST_7 != 0xec275d5dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEPOSTURE_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEPOSTURE_REQUEST_0 0xeae7ba1eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEPOSTURE_REQUEST_1 0x6e195dadUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEPOSTURE_REQUEST_2 0x3ab4b042UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEPOSTURE_REQUEST_3 0x039d7c7cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEPOSTURE_REQUEST_4 0x171c29dfUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEPOSTURE_REQUEST_5 0xd346d83bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEPOSTURE_REQUEST_6 0x3f27ec85UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEPOSTURE_REQUEST_7 0xec275d5dUL

/** @brief At most32 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[32];
} roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Request_ref_positions_sequence;

/** @brief Complete ROS2 flexiv_msgs/srv/SetNullSpacePosture_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Request
{
    /**
     * @brief Set the reference joint positions of the null-space posture control, used in the Cartesian
     * motion-force control mode.  An invalid request is rejected as a whole and nothing changes. Reference
     * joint positions, one entry per joint of the hardware component in URDF order. Valid range [q_min,
     * q_max]. [rad]
     * @details Original flexiv_msgs/srv/SetNullSpacePosture_Request.ref_positions; native type float64. At
     * most 32 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete
     * value and acquires no ROS resource.
     */
    roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Request_ref_positions_sequence ref_positions;
} roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Request;

# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEPOSTURE_REQUEST_MAX_WIRE_BYTES 260u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEPOSTURE_REQUEST_MIN_WIRE_BYTES 4u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEPOSTURE_REQUEST_CODEC_IDENTITY                                                                         \
     "UWVMROS1_0fb02e69195688307d15cc7f8b6f7a95f400d4083cc8c363e29071fee844b92d"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int
    roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Request_valid(roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Request const* value)
{
    if(!value)
    {
        return 0;
    }
    if(value->ref_positions.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->ref_positions.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->ref_positions.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t
    roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Request_wire_size(roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Request const* value)
{
    size_t n = 0;
    n += 4;
    if(value->ref_positions.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->ref_positions.size; ++i)
        {
            n += 8;
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Request_write_fields(roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Request const* value,
                                                                                unsigned char* p,
                                                                                size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->ref_positions.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->ref_positions.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->ref_positions.data[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int
    roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Request_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Request* value)
{
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->ref_positions.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->ref_positions.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->ref_positions.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->ref_positions.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    return roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Request_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Request_encode(roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Request const* value,
                                                                          void* output,
                                                                          size_t capacity,
                                                                          size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Request_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Request_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Request_decode(void const* input,
                                                                          size_t length,
                                                                          roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Request* value)
{
    roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 4u || length > 260u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEPOSTURE_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEPOSTURE_RESPONSE_0 != 0xa0ac7baaUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEPOSTURE_RESPONSE_1 != 0x1594ed5eUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEPOSTURE_RESPONSE_2 != 0xc2cf3dfeUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEPOSTURE_RESPONSE_3 != 0x918f6720UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEPOSTURE_RESPONSE_4 != 0xf1004098UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEPOSTURE_RESPONSE_5 != 0x78623826UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEPOSTURE_RESPONSE_6 != 0xa114414fUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEPOSTURE_RESPONSE_7 != 0x53e146f0UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEPOSTURE_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEPOSTURE_RESPONSE_0 0xa0ac7baaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEPOSTURE_RESPONSE_1 0x1594ed5eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEPOSTURE_RESPONSE_2 0xc2cf3dfeUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEPOSTURE_RESPONSE_3 0x918f6720UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEPOSTURE_RESPONSE_4 0xf1004098UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEPOSTURE_RESPONSE_5 0x78623826UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEPOSTURE_RESPONSE_6 0xa114414fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEPOSTURE_RESPONSE_7 0x53e146f0UL

/** @brief UTF-8 byte storage for flexiv_msgs/srv/SetNullSpacePosture_Response.message; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Response_message_text;

/** @brief Complete ROS2 flexiv_msgs/srv/SetNullSpacePosture_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Response
{
    /**
     * @brief Retain the complete original bool field.
     * @details Original flexiv_msgs/srv/SetNullSpacePosture_Response.success; native type bool. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t success;
    /**
     * @brief Operator-facing explanation of the outcome
     * @details Original flexiv_msgs/srv/SetNullSpacePosture_Response.message; native type string. Scalar
     * value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Response_message_text message;
} roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Response;

# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEPOSTURE_RESPONSE_MAX_WIRE_BYTES 261u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEPOSTURE_RESPONSE_MIN_WIRE_BYTES 5u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEPOSTURE_RESPONSE_CODEC_IDENTITY                                                                        \
     "UWVMROS1_913c995a461fa70cd62293c1932d738a4a8b799c4ebd13a1a8afdaa8acef4293"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int
    roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Response_valid(roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Response const* value)
{
    if(!value)
    {
        return 0;
    }
    if(value->success > 1)
    {
        return 0;
    }
    if(value->message.size > 256u || !uwvm_bounded_utf8(value->message.data, value->message.size))
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t
    roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Response_wire_size(roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Response const* value)
{
    size_t n = 0;
    n += 1;
    n += 4 + value->message.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Response_write_fields(roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Response const* value,
                                                                                 unsigned char* p,
                                                                                 size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->success, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, value->message.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->message.data, value->message.size);
    *offset += value->message.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int
    roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Response_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Response* value)
{
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->success, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->message.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->message.size > 256u || value->message.size > n - *offset)
    {
        return 0;
    }
    uwvm_bounded_copy(value->message.data, p + *offset, value->message.size);
    *offset += value->message.size;
    return roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Response_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Response_encode(roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Response const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Response_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Response_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Response_decode(void const* input,
                                                                           size_t length,
                                                                           roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Response* value)
{
    roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 5u || length > 261u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETPASSIVEFORCECONTROL_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETPASSIVEFORCECONTROL_REQUEST_0 != 0x09773624UL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETPASSIVEFORCECONTROL_REQUEST_1 != 0xd02e9aedUL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETPASSIVEFORCECONTROL_REQUEST_2 != 0xa8c37955UL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETPASSIVEFORCECONTROL_REQUEST_3 != 0x026fe84cUL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETPASSIVEFORCECONTROL_REQUEST_4 != 0xadd2557aUL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETPASSIVEFORCECONTROL_REQUEST_5 != 0x4bd2ca45UL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETPASSIVEFORCECONTROL_REQUEST_6 != 0x11c8b241UL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETPASSIVEFORCECONTROL_REQUEST_7 != 0xc8bae359UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETPASSIVEFORCECONTROL_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETPASSIVEFORCECONTROL_REQUEST_0 0x09773624UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETPASSIVEFORCECONTROL_REQUEST_1 0xd02e9aedUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETPASSIVEFORCECONTROL_REQUEST_2 0xa8c37955UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETPASSIVEFORCECONTROL_REQUEST_3 0x026fe84cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETPASSIVEFORCECONTROL_REQUEST_4 0xadd2557aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETPASSIVEFORCECONTROL_REQUEST_5 0x4bd2ca45UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETPASSIVEFORCECONTROL_REQUEST_6 0x11c8b241UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETPASSIVEFORCECONTROL_REQUEST_7 0xc8bae359UL

/** @brief At most32 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    uint8_t data[32];
} roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Request_enabled_sequence;

/** @brief Complete ROS2 flexiv_msgs/srv/SetPassiveForceControl_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Request
{
    /**
     * @brief Enable or disable passive (open-loop) force control for the Cartesian motion-force control
     * mode. Active (closed-loop) force control is the default. Only accepted while the robot is idle, i.e.
     * before the Cartesian motion-force controller is started, and disabled again when it stops. One entry
     * per robot, left first
     * @details Original flexiv_msgs/srv/SetPassiveForceControl_Request.enabled; native type bool. At most
     * 32 elements. Storage belongs to the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Request_enabled_sequence enabled;
} roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Request;

# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETPASSIVEFORCECONTROL_REQUEST_MAX_WIRE_BYTES 36u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETPASSIVEFORCECONTROL_REQUEST_MIN_WIRE_BYTES 4u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETPASSIVEFORCECONTROL_REQUEST_CODEC_IDENTITY                                                                      \
     "UWVMROS1_603cd39ccf8c37d944afe9108085fe3ba72881d772e42f24f87ec380f3770d16"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int
    roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Request_valid(roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Request const* value)
{
    if(!value)
    {
        return 0;
    }
    if(value->enabled.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->enabled.size; ++i)
        {
            if(value->enabled.data[i] > 1)
            {
                return 0;
            }
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t
    roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Request_wire_size(roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Request const* value)
{
    size_t n = 0;
    n += 4;
    if(value->enabled.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->enabled.size; ++i)
        {
            n += 1;
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Request_write_fields(
    roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Request const* value,
    unsigned char* p,
    size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->enabled.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->enabled.size; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->enabled.data[i], 1);
            *offset += 1;
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int
    roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Request_read_fields(unsigned char const* p,
                                                                                  size_t n,
                                                                                  size_t* offset,
                                                                                  roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Request* value)
{
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->enabled.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->enabled.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->enabled.size; ++i)
        {
            if(*offset > n || n - *offset < 1)
            {
                return 0;
            }
            {
                uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
                uwvm_bounded_copy(&value->enabled.data[i], &bits, 1);
            }
            *offset += 1;
        }
    }
    return roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Request_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Request_encode(roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Request const* value,
                                                                             void* output,
                                                                             size_t capacity,
                                                                             size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Request_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Request_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Request_decode(void const* input,
                                                                             size_t length,
                                                                             roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Request* value)
{
    roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 4u || length > 36u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETPASSIVEFORCECONTROL_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETPASSIVEFORCECONTROL_RESPONSE_0 != 0xcbf3c894UL ||                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETPASSIVEFORCECONTROL_RESPONSE_1 != 0xda25d8efUL ||                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETPASSIVEFORCECONTROL_RESPONSE_2 != 0xd27220f6UL ||                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETPASSIVEFORCECONTROL_RESPONSE_3 != 0xeb7b79c7UL ||                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETPASSIVEFORCECONTROL_RESPONSE_4 != 0xba179de5UL ||                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETPASSIVEFORCECONTROL_RESPONSE_5 != 0xb9eca528UL ||                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETPASSIVEFORCECONTROL_RESPONSE_6 != 0x2b0bd109UL ||                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETPASSIVEFORCECONTROL_RESPONSE_7 != 0x27973f20UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETPASSIVEFORCECONTROL_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETPASSIVEFORCECONTROL_RESPONSE_0 0xcbf3c894UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETPASSIVEFORCECONTROL_RESPONSE_1 0xda25d8efUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETPASSIVEFORCECONTROL_RESPONSE_2 0xd27220f6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETPASSIVEFORCECONTROL_RESPONSE_3 0xeb7b79c7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETPASSIVEFORCECONTROL_RESPONSE_4 0xba179de5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETPASSIVEFORCECONTROL_RESPONSE_5 0xb9eca528UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETPASSIVEFORCECONTROL_RESPONSE_6 0x2b0bd109UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETPASSIVEFORCECONTROL_RESPONSE_7 0x27973f20UL

/** @brief UTF-8 byte storage for flexiv_msgs/srv/SetPassiveForceControl_Response.message; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Response_message_text;

/** @brief Complete ROS2 flexiv_msgs/srv/SetPassiveForceControl_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Response
{
    /**
     * @brief Retain the complete original bool field.
     * @details Original flexiv_msgs/srv/SetPassiveForceControl_Response.success; native type bool. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t success;
    /**
     * @brief Operator-facing explanation of the outcome
     * @details Original flexiv_msgs/srv/SetPassiveForceControl_Response.message; native type string.
     * Scalar value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
     * acquires no ROS resource.
     */
    roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Response_message_text message;
} roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Response;

# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETPASSIVEFORCECONTROL_RESPONSE_MAX_WIRE_BYTES 261u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETPASSIVEFORCECONTROL_RESPONSE_MIN_WIRE_BYTES 5u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETPASSIVEFORCECONTROL_RESPONSE_CODEC_IDENTITY                                                                     \
     "UWVMROS1_73fe92bbcf47063293bde2f3542c719111f0bd82aaa6b500f15122c6aa1e7d35"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int
    roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Response_valid(roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Response const* value)
{
    if(!value)
    {
        return 0;
    }
    if(value->success > 1)
    {
        return 0;
    }
    if(value->message.size > 256u || !uwvm_bounded_utf8(value->message.data, value->message.size))
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Response_wire_size(
    roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Response const* value)
{
    size_t n = 0;
    n += 1;
    n += 4 + value->message.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Response_write_fields(
    roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Response const* value,
    unsigned char* p,
    size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->success, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, value->message.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->message.data, value->message.size);
    *offset += value->message.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int
    roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Response_read_fields(unsigned char const* p,
                                                                                   size_t n,
                                                                                   size_t* offset,
                                                                                   roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Response* value)
{
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->success, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->message.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->message.size > 256u || value->message.size > n - *offset)
    {
        return 0;
    }
    uwvm_bounded_copy(value->message.data, p + *offset, value->message.size);
    *offset += value->message.size;
    return roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Response_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Response_encode(roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Response const* value,
                                                                              void* output,
                                                                              size_t capacity,
                                                                              size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Response_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Response_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Response_decode(void const* input,
                                                                              size_t length,
                                                                              roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Response* value)
{
    roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 5u || length > 261u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#undef UWVM_BOUNDED_ASSERT
#endif
