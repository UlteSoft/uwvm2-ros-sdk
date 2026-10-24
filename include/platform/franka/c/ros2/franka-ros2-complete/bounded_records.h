/** @file Generated bounded-v2 canonical values; no native ROS serialization or authority.
 * Every dynamic field has inline caller-owned capacity. Encode validates and measures
 * the full value before writes; decode commits one temporary only after full validation.
 * Supply distinct record, byte and size-output storage; overlap is explicitly refused.
 * Empty Service/Action components use a C layout dummy that is never a wire field. */
#ifndef UWVM_ROS_BOUNDED_RECORDS_53C4EBB1D62EE0495ACCB1353814AACAD002CE305EA166A02F3CFBA5605AC443
#define UWVM_ROS_BOUNDED_RECORDS_53C4EBB1D62EE0495ACCB1353814AACAD002CE305EA166A02F3CFBA5605AC443
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
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_GOAL)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_GOAL_0 != 0x52ba17c4UL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_GOAL_1 != 0x5debc884UL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_GOAL_2 != 0x41835c2cUL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_GOAL_3 != 0xe94eebacUL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_GOAL_4 != 0x730bb879UL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_GOAL_5 != 0x57594babUL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_GOAL_6 != 0x89598a28UL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_GOAL_7 != 0x8aae357dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_GOAL 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_GOAL_0 0x52ba17c4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_GOAL_1 0x5debc884UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_GOAL_2 0x41835c2cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_GOAL_3 0xe94eebacUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_GOAL_4 0x730bb879UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_GOAL_5 0x57594babUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_GOAL_6 0x89598a28UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_GOAL_7 0x8aae357dUL

/** @brief Complete ROS2 franka_msgs/action/ErrorRecovery_Goal value; no field projects away native data. */
typedef struct roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Goal
{
    /** @brief Local C layout placeholder; empty native component has exactly zero canonical bytes. */
    unsigned char local_empty_placeholder;
} roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Goal;

# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_GOAL_MAX_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_GOAL_MIN_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_GOAL_CODEC_IDENTITY "UWVMROS1_2caee3e8d5c04f12239a71f6e9a9259b818b9f1ad75103442bfc9d2343a3a070"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Goal_valid(roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Goal const* value)
{
    if(!value)
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Goal_wire_size(roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Goal const* value)
{
    size_t n = 0;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Goal_write_fields(roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Goal const* value,
                                                                                         unsigned char* p,
                                                                                         size_t* offset)
{
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Goal_read_fields(unsigned char const* p,
                                                                                       size_t n,
                                                                                       size_t* offset,
                                                                                       roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Goal* value)
{
    return roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Goal_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Goal_encode(roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Goal const* value,
                                                                                       void* output,
                                                                                       size_t capacity,
                                                                                       size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Goal_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Goal_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Goal_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Goal_decode(void const* input,
                                                                                       size_t length,
                                                                                       roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Goal* value)
{
    roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Goal next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 0u || length > 0u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Goal_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_RESULT)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_RESULT_0 != 0x6cfa9375UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_RESULT_1 != 0x67b23553UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_RESULT_2 != 0x45beca3bUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_RESULT_3 != 0x95425333UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_RESULT_4 != 0x429b5867UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_RESULT_5 != 0x8c8fed94UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_RESULT_6 != 0x67c90efeUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_RESULT_7 != 0x5e548a12UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_RESULT 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_RESULT_0 0x6cfa9375UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_RESULT_1 0x67b23553UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_RESULT_2 0x45beca3bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_RESULT_3 0x95425333UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_RESULT_4 0x429b5867UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_RESULT_5 0x8c8fed94UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_RESULT_6 0x67c90efeUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_RESULT_7 0x5e548a12UL

/** @brief Complete ROS2 franka_msgs/action/ErrorRecovery_Result value; no field projects away native data. */
typedef struct roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Result
{
    /** @brief Local C layout placeholder; empty native component has exactly zero canonical bytes. */
    unsigned char local_empty_placeholder;
} roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Result;

# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_RESULT_MAX_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_RESULT_MIN_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_RESULT_CODEC_IDENTITY "UWVMROS1_9112b16c42034737b96214f23249d499ab6a9f0aee529cfec34c67cdc76809e9"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Result_valid(roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Result const* value)
{
    if(!value)
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t
    roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Result_wire_size(roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Result const* value)
{
    size_t n = 0;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Result_write_fields(roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Result const* value,
                                                                            unsigned char* p,
                                                                            size_t* offset)
{
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Result_read_fields(unsigned char const* p,
                                                                                         size_t n,
                                                                                         size_t* offset,
                                                                                         roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Result* value)
{
    return roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Result_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Result_encode(roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Result const* value,
                                                                      void* output,
                                                                      size_t capacity,
                                                                      size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Result_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Result_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Result_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Result_decode(void const* input,
                                                                                         size_t length,
                                                                                         roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Result* value)
{
    roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Result next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 0u || length > 0u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Result_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_FEEDBACK)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_FEEDBACK_0 != 0x61a7c3a4UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_FEEDBACK_1 != 0x75c22e49UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_FEEDBACK_2 != 0x44db383fUL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_FEEDBACK_3 != 0x35e07db0UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_FEEDBACK_4 != 0xa922aeb8UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_FEEDBACK_5 != 0xa9672bd8UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_FEEDBACK_6 != 0xd674a8ccUL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_FEEDBACK_7 != 0xb04b0c16UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_FEEDBACK 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_FEEDBACK_0 0x61a7c3a4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_FEEDBACK_1 0x75c22e49UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_FEEDBACK_2 0x44db383fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_FEEDBACK_3 0x35e07db0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_FEEDBACK_4 0xa922aeb8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_FEEDBACK_5 0xa9672bd8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_FEEDBACK_6 0xd674a8ccUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_FEEDBACK_7 0xb04b0c16UL

/** @brief Complete ROS2 franka_msgs/action/ErrorRecovery_Feedback value; no field projects away native data. */
typedef struct roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Feedback
{
    /** @brief Local C layout placeholder; empty native component has exactly zero canonical bytes. */
    unsigned char local_empty_placeholder;
} roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Feedback;

# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_FEEDBACK_MAX_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_FEEDBACK_MIN_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_FEEDBACK_CODEC_IDENTITY "UWVMROS1_cc817bcbe5790860e83c71e50a8c3610cf3965e34036b3099712cdcdb426127f"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Feedback_valid(roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Feedback const* value)
{
    if(!value)
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t
    roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Feedback_wire_size(roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Feedback const* value)
{
    size_t n = 0;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Feedback_write_fields(roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Feedback const* value,
                                                                              unsigned char* p,
                                                                              size_t* offset)
{
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Feedback_read_fields(unsigned char const* p,
                                                                                           size_t n,
                                                                                           size_t* offset,
                                                                                           roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Feedback* value)
{
    return roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Feedback_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Feedback_encode(roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Feedback const* value,
                                                                        void* output,
                                                                        size_t capacity,
                                                                        size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Feedback_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Feedback_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Feedback_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Feedback_decode(void const* input,
                                                                                           size_t length,
                                                                                           roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Feedback* value)
{
    roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Feedback next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 0u || length > 0u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Feedback_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_GRASPEPSILON)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_GRASPEPSILON_0 != 0xce81ff89UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_GRASPEPSILON_1 != 0x540cfe8eUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_GRASPEPSILON_2 != 0xce12b0a5UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_GRASPEPSILON_3 != 0x71f9e021UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_GRASPEPSILON_4 != 0x556d5a59UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_GRASPEPSILON_5 != 0xf3a922bbUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_GRASPEPSILON_6 != 0x40e781b7UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_GRASPEPSILON_7 != 0x878331ebUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_GRASPEPSILON 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_GRASPEPSILON_0 0xce81ff89UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_GRASPEPSILON_1 0x540cfe8eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_GRASPEPSILON_2 0xce12b0a5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_GRASPEPSILON_3 0x71f9e021UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_GRASPEPSILON_4 0x556d5a59UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_GRASPEPSILON_5 0xf3a922bbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_GRASPEPSILON_6 0x40e781b7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_GRASPEPSILON_7 0x878331ebUL

/** @brief Complete ROS2 franka_msgs/msg/GraspEpsilon value; no field projects away native data. */
typedef struct roswasmc_bounded_2_franka_msgs_msg_GraspEpsilon
{
    /**
     * @brief Maximum tolerated deviation when the actual grasped width is smaller than the commanded grasp
     * width. Unit: [m]
     * @details Original franka_msgs/msg/GraspEpsilon.inner; native type float64. Scalar value. Declared
     * original default 0.005. Finite IEEE values; no implicit unit conversion. Storage belongs to the
     * complete value and acquires no ROS resource.
     */
    double inner;
    /**
     * @brief Maximum tolerated deviation when the actual grasped width is larger than the commanded grasp
     * width. Unit: [m]
     * @details Original franka_msgs/msg/GraspEpsilon.outer; native type float64. Scalar value. Declared
     * original default 0.005. Finite IEEE values; no implicit unit conversion. Storage belongs to the
     * complete value and acquires no ROS resource.
     */
    double outer;
} roswasmc_bounded_2_franka_msgs_msg_GraspEpsilon;

# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_GRASPEPSILON_MAX_WIRE_BYTES 16u
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_GRASPEPSILON_MIN_WIRE_BYTES 16u
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_GRASPEPSILON_CODEC_IDENTITY "UWVMROS1_21787ae5929dc83b9f644f4914e22da9ddd3e4f7ad3d8c6cda6bbcdfeba20c38"

/** @brief Explicit declared-default initialization; ordinary C/C++ zero aggregates stay zero.
 * Nested/fixed elements are initialized independently; sequence lengths stay zero.
 * This initializer performs no I/O, registration, allocation or capability operation. */
inline static uint32_t roswasmc_bounded_2_franka_msgs_msg_GraspEpsilon_default(roswasmc_bounded_2_franka_msgs_msg_GraspEpsilon* value)
{
    roswasmc_bounded_2_franka_msgs_msg_GraspEpsilon next = {0};
    if(!value)
    {
        return UWVM_BOUNDED_INVALID;
    }
    next.inner = 0.0050000000000000001;
    next.outer = 0.0050000000000000001;
    *value = next;
    return 0;
}

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_franka_msgs_msg_GraspEpsilon_valid(roswasmc_bounded_2_franka_msgs_msg_GraspEpsilon const* value)
{
    if(!value)
    {
        return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->inner, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
        {
            return 0;
        }
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->outer, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
        {
            return 0;
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_2_franka_msgs_msg_GraspEpsilon_wire_size(roswasmc_bounded_2_franka_msgs_msg_GraspEpsilon const* value)
{
    size_t n = 0;
    n += 8;
    n += 8;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_2_franka_msgs_msg_GraspEpsilon_write_fields(roswasmc_bounded_2_franka_msgs_msg_GraspEpsilon const* value, unsigned char* p, size_t* offset)
{
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->inner, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->outer, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_2_franka_msgs_msg_GraspEpsilon_read_fields(unsigned char const* p,
                                                                              size_t n,
                                                                              size_t* offset,
                                                                              roswasmc_bounded_2_franka_msgs_msg_GraspEpsilon* value)
{
    if(*offset > n || n - *offset < 8)
    {
        return 0;
    }
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->inner, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
    {
        return 0;
    }
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->outer, &bits, 8);
    }
    *offset += 8;
    return roswasmc_bounded_2_franka_msgs_msg_GraspEpsilon_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_2_franka_msgs_msg_GraspEpsilon_encode(roswasmc_bounded_2_franka_msgs_msg_GraspEpsilon const* value,
                                                                              void* output,
                                                                              size_t capacity,
                                                                              size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_franka_msgs_msg_GraspEpsilon_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_franka_msgs_msg_GraspEpsilon_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_franka_msgs_msg_GraspEpsilon_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_franka_msgs_msg_GraspEpsilon_decode(void const* input, size_t length, roswasmc_bounded_2_franka_msgs_msg_GraspEpsilon* value)
{
    roswasmc_bounded_2_franka_msgs_msg_GraspEpsilon next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 16u || length > 16u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_franka_msgs_msg_GraspEpsilon_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_GOAL)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_GOAL_0 != 0xd63f9100UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_GOAL_1 != 0xaa08a542UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_GOAL_2 != 0x7b73c3e0UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_GOAL_3 != 0x59f03919UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_GOAL_4 != 0x81195fbfUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_GOAL_5 != 0xd35eaf14UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_GOAL_6 != 0x8561116bUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_GOAL_7 != 0xadc151ebUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_GOAL 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_GOAL_0 0xd63f9100UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_GOAL_1 0xaa08a542UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_GOAL_2 0x7b73c3e0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_GOAL_3 0x59f03919UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_GOAL_4 0x81195fbfUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_GOAL_5 0xd35eaf14UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_GOAL_6 0x8561116bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_GOAL_7 0xadc151ebUL

/** @brief Complete ROS2 franka_msgs/action/Grasp_Goal value; no field projects away native data. */
typedef struct roswasmc_bounded_2_franka_msgs_action_Grasp_Goal
{
    /**
     * @brief [m]
     * @details Original franka_msgs/action/Grasp_Goal.width; native type float64. Scalar value. Finite
     * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double width;
    /**
     * @brief Retain the complete original franka_msgs/msg/GraspEpsilon field.
     * @details Original franka_msgs/action/Grasp_Goal.epsilon; native type franka_msgs/msg/GraspEpsilon.
     * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_2_franka_msgs_msg_GraspEpsilon epsilon;
    /**
     * @brief [m/s]
     * @details Original franka_msgs/action/Grasp_Goal.speed; native type float64. Scalar value. Finite
     * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double speed;
    /**
     * @brief [N]
     * @details Original franka_msgs/action/Grasp_Goal.force; native type float64. Scalar value. Finite
     * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double force;
} roswasmc_bounded_2_franka_msgs_action_Grasp_Goal;

# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_GOAL_MAX_WIRE_BYTES 40u
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_GOAL_MIN_WIRE_BYTES 40u
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_GOAL_CODEC_IDENTITY "UWVMROS1_b7ef701e9fd93b5da9894499234d3647ecc4cea1936f637105c172f4579b6e1f"

/** @brief Explicit declared-default initialization; ordinary C/C++ zero aggregates stay zero.
 * Nested/fixed elements are initialized independently; sequence lengths stay zero.
 * This initializer performs no I/O, registration, allocation or capability operation. */
inline static uint32_t roswasmc_bounded_2_franka_msgs_action_Grasp_Goal_default(roswasmc_bounded_2_franka_msgs_action_Grasp_Goal* value)
{
    roswasmc_bounded_2_franka_msgs_action_Grasp_Goal next = {0};
    if(!value)
    {
        return UWVM_BOUNDED_INVALID;
    }
    (void)roswasmc_bounded_2_franka_msgs_msg_GraspEpsilon_default(&next.epsilon);
    *value = next;
    return 0;
}

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_franka_msgs_action_Grasp_Goal_valid(roswasmc_bounded_2_franka_msgs_action_Grasp_Goal const* value)
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
    if(!roswasmc_bounded_2_franka_msgs_msg_GraspEpsilon_valid(&value->epsilon))
    {
        return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->speed, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
        {
            return 0;
        }
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
inline static size_t roswasmc_bounded_2_franka_msgs_action_Grasp_Goal_wire_size(roswasmc_bounded_2_franka_msgs_action_Grasp_Goal const* value)
{
    size_t n = 0;
    n += 8;
    n += roswasmc_bounded_2_franka_msgs_msg_GraspEpsilon_wire_size(&value->epsilon);
    n += 8;
    n += 8;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_2_franka_msgs_action_Grasp_Goal_write_fields(roswasmc_bounded_2_franka_msgs_action_Grasp_Goal const* value,
                                                                                 unsigned char* p,
                                                                                 size_t* offset)
{
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->width, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    roswasmc_bounded_2_franka_msgs_msg_GraspEpsilon_write_fields(&value->epsilon, p, offset);
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->speed, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->force, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_2_franka_msgs_action_Grasp_Goal_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_2_franka_msgs_action_Grasp_Goal* value)
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
    if(!roswasmc_bounded_2_franka_msgs_msg_GraspEpsilon_read_fields(p, n, offset, &value->epsilon))
    {
        return 0;
    }
    if(*offset > n || n - *offset < 8)
    {
        return 0;
    }
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->speed, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
    {
        return 0;
    }
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->force, &bits, 8);
    }
    *offset += 8;
    return roswasmc_bounded_2_franka_msgs_action_Grasp_Goal_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_2_franka_msgs_action_Grasp_Goal_encode(roswasmc_bounded_2_franka_msgs_action_Grasp_Goal const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_franka_msgs_action_Grasp_Goal_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_franka_msgs_action_Grasp_Goal_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_franka_msgs_action_Grasp_Goal_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_franka_msgs_action_Grasp_Goal_decode(void const* input, size_t length, roswasmc_bounded_2_franka_msgs_action_Grasp_Goal* value)
{
    roswasmc_bounded_2_franka_msgs_action_Grasp_Goal next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 40u || length > 40u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_franka_msgs_action_Grasp_Goal_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_RESULT)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_RESULT_0 != 0xb7630dc8UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_RESULT_1 != 0x74960699UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_RESULT_2 != 0xad939d7cUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_RESULT_3 != 0x2049806fUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_RESULT_4 != 0xd9662ad1UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_RESULT_5 != 0x8d3fe3d2UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_RESULT_6 != 0x81d0b88cUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_RESULT_7 != 0x86e24a6dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_RESULT 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_RESULT_0 0xb7630dc8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_RESULT_1 0x74960699UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_RESULT_2 0xad939d7cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_RESULT_3 0x2049806fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_RESULT_4 0xd9662ad1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_RESULT_5 0x8d3fe3d2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_RESULT_6 0x81d0b88cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_RESULT_7 0x86e24a6dUL

/** @brief UTF-8 byte storage for franka_msgs/action/Grasp_Result.error; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_2_franka_msgs_action_Grasp_Result_error_text;

/** @brief Complete ROS2 franka_msgs/action/Grasp_Result value; no field projects away native data. */
typedef struct roswasmc_bounded_2_franka_msgs_action_Grasp_Result
{
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/action/Grasp_Result.success; native type bool. Scalar value. Storage
     * belongs to the complete value and acquires no ROS resource.
     */
    uint8_t success;
    /**
     * @brief Retain the complete original string field.
     * @details Original franka_msgs/action/Grasp_Result.error; native type string. Scalar value. UTF-8
     * capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    roswasmc_bounded_2_franka_msgs_action_Grasp_Result_error_text error;
} roswasmc_bounded_2_franka_msgs_action_Grasp_Result;

# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_RESULT_MAX_WIRE_BYTES 261u
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_RESULT_MIN_WIRE_BYTES 5u
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_RESULT_CODEC_IDENTITY "UWVMROS1_9a4c3150c0c2d5eb8ff3dad403473a9546ee37cc3086a55a628a1a85b905b733"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_franka_msgs_action_Grasp_Result_valid(roswasmc_bounded_2_franka_msgs_action_Grasp_Result const* value)
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
inline static size_t roswasmc_bounded_2_franka_msgs_action_Grasp_Result_wire_size(roswasmc_bounded_2_franka_msgs_action_Grasp_Result const* value)
{
    size_t n = 0;
    n += 1;
    n += 4 + value->error.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_2_franka_msgs_action_Grasp_Result_write_fields(roswasmc_bounded_2_franka_msgs_action_Grasp_Result const* value,
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
inline static int roswasmc_bounded_2_franka_msgs_action_Grasp_Result_read_fields(unsigned char const* p,
                                                                                 size_t n,
                                                                                 size_t* offset,
                                                                                 roswasmc_bounded_2_franka_msgs_action_Grasp_Result* value)
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
    return roswasmc_bounded_2_franka_msgs_action_Grasp_Result_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_2_franka_msgs_action_Grasp_Result_encode(roswasmc_bounded_2_franka_msgs_action_Grasp_Result const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_franka_msgs_action_Grasp_Result_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_franka_msgs_action_Grasp_Result_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_franka_msgs_action_Grasp_Result_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_franka_msgs_action_Grasp_Result_decode(void const* input, size_t length, roswasmc_bounded_2_franka_msgs_action_Grasp_Result* value)
{
    roswasmc_bounded_2_franka_msgs_action_Grasp_Result next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 5u || length > 261u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_franka_msgs_action_Grasp_Result_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_FEEDBACK)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_FEEDBACK_0 != 0xdf70b64aUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_FEEDBACK_1 != 0x49f5dd91UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_FEEDBACK_2 != 0xb08c152cUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_FEEDBACK_3 != 0x85ed97dbUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_FEEDBACK_4 != 0x134a833fUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_FEEDBACK_5 != 0xfc88a42fUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_FEEDBACK_6 != 0x87ab5f23UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_FEEDBACK_7 != 0x29ab9d8dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_FEEDBACK 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_FEEDBACK_0 0xdf70b64aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_FEEDBACK_1 0x49f5dd91UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_FEEDBACK_2 0xb08c152cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_FEEDBACK_3 0x85ed97dbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_FEEDBACK_4 0x134a833fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_FEEDBACK_5 0xfc88a42fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_FEEDBACK_6 0x87ab5f23UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_FEEDBACK_7 0x29ab9d8dUL

/** @brief Complete ROS2 franka_msgs/action/Grasp_Feedback value; no field projects away native data. */
typedef struct roswasmc_bounded_2_franka_msgs_action_Grasp_Feedback
{
    /**
     * @brief [m]
     * @details Original franka_msgs/action/Grasp_Feedback.current_width; native type float64. Scalar
     * value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
     * acquires no ROS resource.
     */
    double current_width;
} roswasmc_bounded_2_franka_msgs_action_Grasp_Feedback;

# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_FEEDBACK_MAX_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_FEEDBACK_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_FEEDBACK_CODEC_IDENTITY "UWVMROS1_2e7697286c002e2d891e9c3167aa0dd1664acfc66c649fff6e8f9101c42703fe"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_franka_msgs_action_Grasp_Feedback_valid(roswasmc_bounded_2_franka_msgs_action_Grasp_Feedback const* value)
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
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_2_franka_msgs_action_Grasp_Feedback_wire_size(roswasmc_bounded_2_franka_msgs_action_Grasp_Feedback const* value)
{
    size_t n = 0;
    n += 8;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_2_franka_msgs_action_Grasp_Feedback_write_fields(roswasmc_bounded_2_franka_msgs_action_Grasp_Feedback const* value,
                                                                                     unsigned char* p,
                                                                                     size_t* offset)
{
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->current_width, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_2_franka_msgs_action_Grasp_Feedback_read_fields(unsigned char const* p,
                                                                                   size_t n,
                                                                                   size_t* offset,
                                                                                   roswasmc_bounded_2_franka_msgs_action_Grasp_Feedback* value)
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
    return roswasmc_bounded_2_franka_msgs_action_Grasp_Feedback_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_2_franka_msgs_action_Grasp_Feedback_encode(roswasmc_bounded_2_franka_msgs_action_Grasp_Feedback const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_franka_msgs_action_Grasp_Feedback_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_franka_msgs_action_Grasp_Feedback_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_franka_msgs_action_Grasp_Feedback_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_franka_msgs_action_Grasp_Feedback_decode(void const* input, size_t length, roswasmc_bounded_2_franka_msgs_action_Grasp_Feedback* value)
{
    roswasmc_bounded_2_franka_msgs_action_Grasp_Feedback next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 8u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_franka_msgs_action_Grasp_Feedback_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_GOAL)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_GOAL_0 != 0x97bed3faUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_GOAL_1 != 0x3de67529UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_GOAL_2 != 0x28ee28aaUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_GOAL_3 != 0x77229b14UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_GOAL_4 != 0xdcd34fdbUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_GOAL_5 != 0x220e9ef7UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_GOAL_6 != 0xa61bc5e3UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_GOAL_7 != 0xe84c195cUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_GOAL 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_GOAL_0 0x97bed3faUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_GOAL_1 0x3de67529UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_GOAL_2 0x28ee28aaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_GOAL_3 0x77229b14UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_GOAL_4 0xdcd34fdbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_GOAL_5 0x220e9ef7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_GOAL_6 0xa61bc5e3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_GOAL_7 0xe84c195cUL

/** @brief Complete ROS2 franka_msgs/action/Homing_Goal value; no field projects away native data. */
typedef struct roswasmc_bounded_2_franka_msgs_action_Homing_Goal
{
    /** @brief Local C layout placeholder; empty native component has exactly zero canonical bytes. */
    unsigned char local_empty_placeholder;
} roswasmc_bounded_2_franka_msgs_action_Homing_Goal;

# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_GOAL_MAX_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_GOAL_MIN_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_GOAL_CODEC_IDENTITY "UWVMROS1_8008426ce3fa8c8d62133704f8738201b8154b324ba07e7b6f605cd3132a885d"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_franka_msgs_action_Homing_Goal_valid(roswasmc_bounded_2_franka_msgs_action_Homing_Goal const* value)
{
    if(!value)
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_2_franka_msgs_action_Homing_Goal_wire_size(roswasmc_bounded_2_franka_msgs_action_Homing_Goal const* value)
{
    size_t n = 0;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_2_franka_msgs_action_Homing_Goal_write_fields(roswasmc_bounded_2_franka_msgs_action_Homing_Goal const* value,
                                                                                  unsigned char* p,
                                                                                  size_t* offset)
{
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_2_franka_msgs_action_Homing_Goal_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_2_franka_msgs_action_Homing_Goal* value)
{
    return roswasmc_bounded_2_franka_msgs_action_Homing_Goal_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_2_franka_msgs_action_Homing_Goal_encode(roswasmc_bounded_2_franka_msgs_action_Homing_Goal const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_franka_msgs_action_Homing_Goal_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_franka_msgs_action_Homing_Goal_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_franka_msgs_action_Homing_Goal_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_franka_msgs_action_Homing_Goal_decode(void const* input, size_t length, roswasmc_bounded_2_franka_msgs_action_Homing_Goal* value)
{
    roswasmc_bounded_2_franka_msgs_action_Homing_Goal next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 0u || length > 0u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_franka_msgs_action_Homing_Goal_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_RESULT)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_RESULT_0 != 0x172c0e97UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_RESULT_1 != 0x6f9db35aUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_RESULT_2 != 0x7aea63f6UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_RESULT_3 != 0x2829d3a6UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_RESULT_4 != 0x81d44256UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_RESULT_5 != 0xf18fc99eUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_RESULT_6 != 0x69d171c1UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_RESULT_7 != 0x3438b7c5UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_RESULT 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_RESULT_0 0x172c0e97UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_RESULT_1 0x6f9db35aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_RESULT_2 0x7aea63f6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_RESULT_3 0x2829d3a6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_RESULT_4 0x81d44256UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_RESULT_5 0xf18fc99eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_RESULT_6 0x69d171c1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_RESULT_7 0x3438b7c5UL

/** @brief UTF-8 byte storage for franka_msgs/action/Homing_Result.error; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_2_franka_msgs_action_Homing_Result_error_text;

/** @brief Complete ROS2 franka_msgs/action/Homing_Result value; no field projects away native data. */
typedef struct roswasmc_bounded_2_franka_msgs_action_Homing_Result
{
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/action/Homing_Result.success; native type bool. Scalar value. Storage
     * belongs to the complete value and acquires no ROS resource.
     */
    uint8_t success;
    /**
     * @brief Retain the complete original string field.
     * @details Original franka_msgs/action/Homing_Result.error; native type string. Scalar value. UTF-8
     * capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    roswasmc_bounded_2_franka_msgs_action_Homing_Result_error_text error;
} roswasmc_bounded_2_franka_msgs_action_Homing_Result;

# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_RESULT_MAX_WIRE_BYTES 261u
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_RESULT_MIN_WIRE_BYTES 5u
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_RESULT_CODEC_IDENTITY "UWVMROS1_74a9677213ffa9ba3a26b3053956350b8f75d5d1769152e5e3d4d26370bcd77c"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_franka_msgs_action_Homing_Result_valid(roswasmc_bounded_2_franka_msgs_action_Homing_Result const* value)
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
inline static size_t roswasmc_bounded_2_franka_msgs_action_Homing_Result_wire_size(roswasmc_bounded_2_franka_msgs_action_Homing_Result const* value)
{
    size_t n = 0;
    n += 1;
    n += 4 + value->error.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_2_franka_msgs_action_Homing_Result_write_fields(roswasmc_bounded_2_franka_msgs_action_Homing_Result const* value,
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
inline static int roswasmc_bounded_2_franka_msgs_action_Homing_Result_read_fields(unsigned char const* p,
                                                                                  size_t n,
                                                                                  size_t* offset,
                                                                                  roswasmc_bounded_2_franka_msgs_action_Homing_Result* value)
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
    return roswasmc_bounded_2_franka_msgs_action_Homing_Result_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_2_franka_msgs_action_Homing_Result_encode(roswasmc_bounded_2_franka_msgs_action_Homing_Result const* value,
                                                                                  void* output,
                                                                                  size_t capacity,
                                                                                  size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_franka_msgs_action_Homing_Result_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_franka_msgs_action_Homing_Result_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_franka_msgs_action_Homing_Result_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_franka_msgs_action_Homing_Result_decode(void const* input, size_t length, roswasmc_bounded_2_franka_msgs_action_Homing_Result* value)
{
    roswasmc_bounded_2_franka_msgs_action_Homing_Result next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 5u || length > 261u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_franka_msgs_action_Homing_Result_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_FEEDBACK)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_FEEDBACK_0 != 0x2c80e2f4UL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_FEEDBACK_1 != 0x76269f1bUL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_FEEDBACK_2 != 0xad4036dbUL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_FEEDBACK_3 != 0x6f44622eUL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_FEEDBACK_4 != 0x8be1f1adUL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_FEEDBACK_5 != 0xcb814dd1UL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_FEEDBACK_6 != 0xe0462956UL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_FEEDBACK_7 != 0x572ed0c9UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_FEEDBACK 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_FEEDBACK_0 0x2c80e2f4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_FEEDBACK_1 0x76269f1bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_FEEDBACK_2 0xad4036dbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_FEEDBACK_3 0x6f44622eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_FEEDBACK_4 0x8be1f1adUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_FEEDBACK_5 0xcb814dd1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_FEEDBACK_6 0xe0462956UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_FEEDBACK_7 0x572ed0c9UL

/** @brief Complete ROS2 franka_msgs/action/Homing_Feedback value; no field projects away native data. */
typedef struct roswasmc_bounded_2_franka_msgs_action_Homing_Feedback
{
    /**
     * @brief [m]
     * @details Original franka_msgs/action/Homing_Feedback.current_width; native type float64. Scalar
     * value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
     * acquires no ROS resource.
     */
    double current_width;
} roswasmc_bounded_2_franka_msgs_action_Homing_Feedback;

# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_FEEDBACK_MAX_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_FEEDBACK_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_FEEDBACK_CODEC_IDENTITY "UWVMROS1_2260e092d369a0d2e4bf97ca2dfa78c02b6836b8167e71d63e76b5c0c40a6b46"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_franka_msgs_action_Homing_Feedback_valid(roswasmc_bounded_2_franka_msgs_action_Homing_Feedback const* value)
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
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_2_franka_msgs_action_Homing_Feedback_wire_size(roswasmc_bounded_2_franka_msgs_action_Homing_Feedback const* value)
{
    size_t n = 0;
    n += 8;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_2_franka_msgs_action_Homing_Feedback_write_fields(roswasmc_bounded_2_franka_msgs_action_Homing_Feedback const* value,
                                                                                      unsigned char* p,
                                                                                      size_t* offset)
{
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->current_width, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_2_franka_msgs_action_Homing_Feedback_read_fields(unsigned char const* p,
                                                                                    size_t n,
                                                                                    size_t* offset,
                                                                                    roswasmc_bounded_2_franka_msgs_action_Homing_Feedback* value)
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
    return roswasmc_bounded_2_franka_msgs_action_Homing_Feedback_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_2_franka_msgs_action_Homing_Feedback_encode(roswasmc_bounded_2_franka_msgs_action_Homing_Feedback const* value,
                                                                                    void* output,
                                                                                    size_t capacity,
                                                                                    size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_franka_msgs_action_Homing_Feedback_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_franka_msgs_action_Homing_Feedback_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_franka_msgs_action_Homing_Feedback_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_franka_msgs_action_Homing_Feedback_decode(void const* input, size_t length, roswasmc_bounded_2_franka_msgs_action_Homing_Feedback* value)
{
    roswasmc_bounded_2_franka_msgs_action_Homing_Feedback next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 8u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_franka_msgs_action_Homing_Feedback_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_GOAL)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_GOAL_0 != 0x0f24394bUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_GOAL_1 != 0x1daa0126UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_GOAL_2 != 0xfebd500fUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_GOAL_3 != 0xc7ced273UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_GOAL_4 != 0x5855687dUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_GOAL_5 != 0xd5cb6664UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_GOAL_6 != 0x6da74f03UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_GOAL_7 != 0x8138df52UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_GOAL 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_GOAL_0 0x0f24394bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_GOAL_1 0x1daa0126UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_GOAL_2 0xfebd500fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_GOAL_3 0xc7ced273UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_GOAL_4 0x5855687dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_GOAL_5 0xd5cb6664UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_GOAL_6 0x6da74f03UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_GOAL_7 0x8138df52UL

/** @brief Complete ROS2 franka_msgs/action/Move_Goal value; no field projects away native data. */
typedef struct roswasmc_bounded_2_franka_msgs_action_Move_Goal
{
    /**
     * @brief [m]
     * @details Original franka_msgs/action/Move_Goal.width; native type float64. Scalar value. Finite IEEE
     * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double width;
    /**
     * @brief [m/s]
     * @details Original franka_msgs/action/Move_Goal.speed; native type float64. Scalar value. Finite IEEE
     * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double speed;
} roswasmc_bounded_2_franka_msgs_action_Move_Goal;

# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_GOAL_MAX_WIRE_BYTES 16u
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_GOAL_MIN_WIRE_BYTES 16u
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_GOAL_CODEC_IDENTITY "UWVMROS1_9f9e308ebd034344ee73b22a07d005944975c037943279504b2414bdd9ad206f"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_franka_msgs_action_Move_Goal_valid(roswasmc_bounded_2_franka_msgs_action_Move_Goal const* value)
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
        uwvm_bounded_copy(&bits, &value->speed, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
        {
            return 0;
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_2_franka_msgs_action_Move_Goal_wire_size(roswasmc_bounded_2_franka_msgs_action_Move_Goal const* value)
{
    size_t n = 0;
    n += 8;
    n += 8;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_2_franka_msgs_action_Move_Goal_write_fields(roswasmc_bounded_2_franka_msgs_action_Move_Goal const* value, unsigned char* p, size_t* offset)
{
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->width, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->speed, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_2_franka_msgs_action_Move_Goal_read_fields(unsigned char const* p,
                                                                              size_t n,
                                                                              size_t* offset,
                                                                              roswasmc_bounded_2_franka_msgs_action_Move_Goal* value)
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
        uwvm_bounded_copy(&value->speed, &bits, 8);
    }
    *offset += 8;
    return roswasmc_bounded_2_franka_msgs_action_Move_Goal_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_2_franka_msgs_action_Move_Goal_encode(roswasmc_bounded_2_franka_msgs_action_Move_Goal const* value,
                                                                              void* output,
                                                                              size_t capacity,
                                                                              size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_franka_msgs_action_Move_Goal_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_franka_msgs_action_Move_Goal_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_franka_msgs_action_Move_Goal_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_franka_msgs_action_Move_Goal_decode(void const* input, size_t length, roswasmc_bounded_2_franka_msgs_action_Move_Goal* value)
{
    roswasmc_bounded_2_franka_msgs_action_Move_Goal next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 16u || length > 16u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_franka_msgs_action_Move_Goal_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_RESULT)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_RESULT_0 != 0x6deb63ffUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_RESULT_1 != 0x63f71622UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_RESULT_2 != 0xad7885e5UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_RESULT_3 != 0xfc0b024fUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_RESULT_4 != 0xe9e6de27UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_RESULT_5 != 0x080737fdUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_RESULT_6 != 0x3d1cd238UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_RESULT_7 != 0xd284b6efUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_RESULT 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_RESULT_0 0x6deb63ffUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_RESULT_1 0x63f71622UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_RESULT_2 0xad7885e5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_RESULT_3 0xfc0b024fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_RESULT_4 0xe9e6de27UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_RESULT_5 0x080737fdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_RESULT_6 0x3d1cd238UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_RESULT_7 0xd284b6efUL

/** @brief UTF-8 byte storage for franka_msgs/action/Move_Result.error; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_2_franka_msgs_action_Move_Result_error_text;

/** @brief Complete ROS2 franka_msgs/action/Move_Result value; no field projects away native data. */
typedef struct roswasmc_bounded_2_franka_msgs_action_Move_Result
{
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/action/Move_Result.success; native type bool. Scalar value. Storage
     * belongs to the complete value and acquires no ROS resource.
     */
    uint8_t success;
    /**
     * @brief Retain the complete original string field.
     * @details Original franka_msgs/action/Move_Result.error; native type string. Scalar value. UTF-8
     * capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    roswasmc_bounded_2_franka_msgs_action_Move_Result_error_text error;
} roswasmc_bounded_2_franka_msgs_action_Move_Result;

# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_RESULT_MAX_WIRE_BYTES 261u
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_RESULT_MIN_WIRE_BYTES 5u
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_RESULT_CODEC_IDENTITY "UWVMROS1_66aa505c035357274c68be773e1b502c7d77f195f3dca848e818811ce95dd266"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_franka_msgs_action_Move_Result_valid(roswasmc_bounded_2_franka_msgs_action_Move_Result const* value)
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
inline static size_t roswasmc_bounded_2_franka_msgs_action_Move_Result_wire_size(roswasmc_bounded_2_franka_msgs_action_Move_Result const* value)
{
    size_t n = 0;
    n += 1;
    n += 4 + value->error.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_2_franka_msgs_action_Move_Result_write_fields(roswasmc_bounded_2_franka_msgs_action_Move_Result const* value,
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
inline static int roswasmc_bounded_2_franka_msgs_action_Move_Result_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_2_franka_msgs_action_Move_Result* value)
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
    return roswasmc_bounded_2_franka_msgs_action_Move_Result_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_2_franka_msgs_action_Move_Result_encode(roswasmc_bounded_2_franka_msgs_action_Move_Result const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_franka_msgs_action_Move_Result_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_franka_msgs_action_Move_Result_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_franka_msgs_action_Move_Result_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_franka_msgs_action_Move_Result_decode(void const* input, size_t length, roswasmc_bounded_2_franka_msgs_action_Move_Result* value)
{
    roswasmc_bounded_2_franka_msgs_action_Move_Result next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 5u || length > 261u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_franka_msgs_action_Move_Result_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_FEEDBACK)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_FEEDBACK_0 != 0x7f603e2bUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_FEEDBACK_1 != 0x9b5355ecUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_FEEDBACK_2 != 0x247cacffUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_FEEDBACK_3 != 0x9df13ba4UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_FEEDBACK_4 != 0x07d78e52UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_FEEDBACK_5 != 0xb1daeae1UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_FEEDBACK_6 != 0x8e51e88cUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_FEEDBACK_7 != 0x7d21059fUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_FEEDBACK 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_FEEDBACK_0 0x7f603e2bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_FEEDBACK_1 0x9b5355ecUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_FEEDBACK_2 0x247cacffUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_FEEDBACK_3 0x9df13ba4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_FEEDBACK_4 0x07d78e52UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_FEEDBACK_5 0xb1daeae1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_FEEDBACK_6 0x8e51e88cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_FEEDBACK_7 0x7d21059fUL

/** @brief Complete ROS2 franka_msgs/action/Move_Feedback value; no field projects away native data. */
typedef struct roswasmc_bounded_2_franka_msgs_action_Move_Feedback
{
    /**
     * @brief [m]
     * @details Original franka_msgs/action/Move_Feedback.current_width; native type float64. Scalar value.
     * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    double current_width;
} roswasmc_bounded_2_franka_msgs_action_Move_Feedback;

# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_FEEDBACK_MAX_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_FEEDBACK_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_FEEDBACK_CODEC_IDENTITY "UWVMROS1_18d0e658f109492380c135e787adbdcc026b051e9a547fcea70453bbd9750596"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_franka_msgs_action_Move_Feedback_valid(roswasmc_bounded_2_franka_msgs_action_Move_Feedback const* value)
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
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_2_franka_msgs_action_Move_Feedback_wire_size(roswasmc_bounded_2_franka_msgs_action_Move_Feedback const* value)
{
    size_t n = 0;
    n += 8;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_2_franka_msgs_action_Move_Feedback_write_fields(roswasmc_bounded_2_franka_msgs_action_Move_Feedback const* value,
                                                                                    unsigned char* p,
                                                                                    size_t* offset)
{
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->current_width, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_2_franka_msgs_action_Move_Feedback_read_fields(unsigned char const* p,
                                                                                  size_t n,
                                                                                  size_t* offset,
                                                                                  roswasmc_bounded_2_franka_msgs_action_Move_Feedback* value)
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
    return roswasmc_bounded_2_franka_msgs_action_Move_Feedback_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_2_franka_msgs_action_Move_Feedback_encode(roswasmc_bounded_2_franka_msgs_action_Move_Feedback const* value,
                                                                                  void* output,
                                                                                  size_t capacity,
                                                                                  size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_franka_msgs_action_Move_Feedback_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_franka_msgs_action_Move_Feedback_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_franka_msgs_action_Move_Feedback_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_franka_msgs_action_Move_Feedback_decode(void const* input, size_t length, roswasmc_bounded_2_franka_msgs_action_Move_Feedback* value)
{
    roswasmc_bounded_2_franka_msgs_action_Move_Feedback next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 8u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_franka_msgs_action_Move_Feedback_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_GOAL)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_GOAL_0 != 0x4e6afe95UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_GOAL_1 != 0xd513094cUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_GOAL_2 != 0xb4cb35c8UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_GOAL_3 != 0x152ce9f3UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_GOAL_4 != 0x5af90b1aUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_GOAL_5 != 0xf5613fc8UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_GOAL_6 != 0x46a89fdcUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_GOAL_7 != 0x2ede796dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_GOAL 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_GOAL_0 0x4e6afe95UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_GOAL_1 0xd513094cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_GOAL_2 0xb4cb35c8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_GOAL_3 0x152ce9f3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_GOAL_4 0x5af90b1aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_GOAL_5 0xf5613fc8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_GOAL_6 0x46a89fdcUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_GOAL_7 0x2ede796dUL

/** @brief At most7 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[7];
} roswasmc_bounded_2_franka_msgs_action_PTPMotion_Goal_goal_joint_configuration_sequence;

/** @brief At most7 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[7];
} roswasmc_bounded_2_franka_msgs_action_PTPMotion_Goal_maximum_joint_velocities_sequence;

/** @brief Complete ROS2 franka_msgs/action/PTPMotion_Goal value; no field projects away native data. */
typedef struct roswasmc_bounded_2_franka_msgs_action_PTPMotion_Goal
{
    /**
     * @brief ## This defines a PTPMotion action for controlling a Franka robot using point-to-point motion
     * commands. The goal_joint_configuration specifies the desired joint angles. [rad]
     * @details Original franka_msgs/action/PTPMotion_Goal.goal_joint_configuration; native type float64.
     * At most 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete
     * value and acquires no ROS resource.
     */
    roswasmc_bounded_2_franka_msgs_action_PTPMotion_Goal_goal_joint_configuration_sequence goal_joint_configuration;
    /**
     * @brief The maximum allowed joint velocities for the motion. [rad/s]
     * @details Original franka_msgs/action/PTPMotion_Goal.maximum_joint_velocities; native type float64.
     * At most 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete
     * value and acquires no ROS resource.
     */
    roswasmc_bounded_2_franka_msgs_action_PTPMotion_Goal_maximum_joint_velocities_sequence maximum_joint_velocities;
    /**
     * @brief The acceptable goal tolerance for the motion. The 'target reached condition is met when - the
     * absolute difference between the current and goal joint positions is within this goal_tolerance - the
     * joint velocities are below a small threshold [rad]
     * @details Original franka_msgs/action/PTPMotion_Goal.goal_tolerance; native type float64. Scalar
     * value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
     * acquires no ROS resource.
     */
    double goal_tolerance;
} roswasmc_bounded_2_franka_msgs_action_PTPMotion_Goal;

# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_GOAL_MAX_WIRE_BYTES 128u
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_GOAL_MIN_WIRE_BYTES 16u
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_GOAL_CODEC_IDENTITY "UWVMROS1_7e1b02257a7be37e7bccd0870ebced1e1560e7250eaeaa4547836e721f2ea2cc"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_franka_msgs_action_PTPMotion_Goal_valid(roswasmc_bounded_2_franka_msgs_action_PTPMotion_Goal const* value)
{
    if(!value)
    {
        return 0;
    }
    if(value->goal_joint_configuration.size > 7u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->goal_joint_configuration.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->goal_joint_configuration.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    if(value->maximum_joint_velocities.size > 7u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->maximum_joint_velocities.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->maximum_joint_velocities.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->goal_tolerance, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
        {
            return 0;
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_2_franka_msgs_action_PTPMotion_Goal_wire_size(roswasmc_bounded_2_franka_msgs_action_PTPMotion_Goal const* value)
{
    size_t n = 0;
    n += 4;
    if(value->goal_joint_configuration.size > 7u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->goal_joint_configuration.size; ++i)
        {
            n += 8;
        }
    }
    n += 4;
    if(value->maximum_joint_velocities.size > 7u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->maximum_joint_velocities.size; ++i)
        {
            n += 8;
        }
    }
    n += 8;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_2_franka_msgs_action_PTPMotion_Goal_write_fields(roswasmc_bounded_2_franka_msgs_action_PTPMotion_Goal const* value,
                                                                                     unsigned char* p,
                                                                                     size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->goal_joint_configuration.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->goal_joint_configuration.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->goal_joint_configuration.data[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    uwvm_bounded_put(p + *offset, value->maximum_joint_velocities.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->maximum_joint_velocities.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->maximum_joint_velocities.data[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->goal_tolerance, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_2_franka_msgs_action_PTPMotion_Goal_read_fields(unsigned char const* p,
                                                                                   size_t n,
                                                                                   size_t* offset,
                                                                                   roswasmc_bounded_2_franka_msgs_action_PTPMotion_Goal* value)
{
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->goal_joint_configuration.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->goal_joint_configuration.size > 7u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->goal_joint_configuration.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->goal_joint_configuration.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->maximum_joint_velocities.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->maximum_joint_velocities.size > 7u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->maximum_joint_velocities.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->maximum_joint_velocities.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    if(*offset > n || n - *offset < 8)
    {
        return 0;
    }
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->goal_tolerance, &bits, 8);
    }
    *offset += 8;
    return roswasmc_bounded_2_franka_msgs_action_PTPMotion_Goal_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_2_franka_msgs_action_PTPMotion_Goal_encode(roswasmc_bounded_2_franka_msgs_action_PTPMotion_Goal const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_franka_msgs_action_PTPMotion_Goal_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_franka_msgs_action_PTPMotion_Goal_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_franka_msgs_action_PTPMotion_Goal_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_franka_msgs_action_PTPMotion_Goal_decode(void const* input, size_t length, roswasmc_bounded_2_franka_msgs_action_PTPMotion_Goal* value)
{
    roswasmc_bounded_2_franka_msgs_action_PTPMotion_Goal next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 16u || length > 128u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_franka_msgs_action_PTPMotion_Goal_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_TARGETSTATUS)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_TARGETSTATUS_0 != 0x2436b646UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_TARGETSTATUS_1 != 0xf5f4c3fcUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_TARGETSTATUS_2 != 0x96158a9bUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_TARGETSTATUS_3 != 0x0a6b82beUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_TARGETSTATUS_4 != 0xa4aaf87aUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_TARGETSTATUS_5 != 0xe69884d5UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_TARGETSTATUS_6 != 0x66eeef02UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_TARGETSTATUS_7 != 0x78d975bfUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_TARGETSTATUS 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_TARGETSTATUS_0 0x2436b646UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_TARGETSTATUS_1 0xf5f4c3fcUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_TARGETSTATUS_2 0x96158a9bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_TARGETSTATUS_3 0x0a6b82beUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_TARGETSTATUS_4 0xa4aaf87aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_TARGETSTATUS_5 0xe69884d5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_TARGETSTATUS_6 0x66eeef02UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_TARGETSTATUS_7 0x78d975bfUL

/** @brief Complete ROS2 franka_msgs/msg/TargetStatus value; no field projects away native data. */
typedef struct roswasmc_bounded_2_franka_msgs_msg_TargetStatus
{
    /**
     * @brief # The current status of the motion (one of the above states)
     * @details Original franka_msgs/msg/TargetStatus.status; native type uint8. Scalar value. Storage
     * belongs to the complete value and acquires no ROS resource.
     */
    uint8_t status;
} roswasmc_bounded_2_franka_msgs_msg_TargetStatus;

# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_TARGETSTATUS_MAX_WIRE_BYTES 1u
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_TARGETSTATUS_MIN_WIRE_BYTES 1u
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_TARGETSTATUS_CODEC_IDENTITY "UWVMROS1_df49eedc13cd8be2055361d8640c519bfa018ed2a421aa2b59b35c8828eac585"
/** @brief Original scalar constant IDLE=0; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_TARGETSTATUS_IDLE UINT32_C(0)
/** @brief Original scalar constant EXECUTING=1; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_TARGETSTATUS_EXECUTING UINT32_C(1)
/** @brief Original scalar constant TARGET_REACHED=2; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_TARGETSTATUS_TARGET_REACHED UINT32_C(2)
/** @brief Original scalar constant ABORTED=3; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_TARGETSTATUS_ABORTED UINT32_C(3)

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_franka_msgs_msg_TargetStatus_valid(roswasmc_bounded_2_franka_msgs_msg_TargetStatus const* value)
{
    if(!value)
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_2_franka_msgs_msg_TargetStatus_wire_size(roswasmc_bounded_2_franka_msgs_msg_TargetStatus const* value)
{
    size_t n = 0;
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_2_franka_msgs_msg_TargetStatus_write_fields(roswasmc_bounded_2_franka_msgs_msg_TargetStatus const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->status, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_2_franka_msgs_msg_TargetStatus_read_fields(unsigned char const* p,
                                                                              size_t n,
                                                                              size_t* offset,
                                                                              roswasmc_bounded_2_franka_msgs_msg_TargetStatus* value)
{
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->status, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_2_franka_msgs_msg_TargetStatus_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_2_franka_msgs_msg_TargetStatus_encode(roswasmc_bounded_2_franka_msgs_msg_TargetStatus const* value,
                                                                              void* output,
                                                                              size_t capacity,
                                                                              size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_franka_msgs_msg_TargetStatus_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_franka_msgs_msg_TargetStatus_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_franka_msgs_msg_TargetStatus_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_franka_msgs_msg_TargetStatus_decode(void const* input, size_t length, roswasmc_bounded_2_franka_msgs_msg_TargetStatus* value)
{
    roswasmc_bounded_2_franka_msgs_msg_TargetStatus next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 1u || length > 1u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_franka_msgs_msg_TargetStatus_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_RESULT)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_RESULT_0 != 0x3b1db333UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_RESULT_1 != 0xa3da1ed4UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_RESULT_2 != 0x200cbb30UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_RESULT_3 != 0xed396f03UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_RESULT_4 != 0x7530614dUL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_RESULT_5 != 0x5b33d40cUL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_RESULT_6 != 0xb3df930fUL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_RESULT_7 != 0xd7d27944UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_RESULT 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_RESULT_0 0x3b1db333UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_RESULT_1 0xa3da1ed4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_RESULT_2 0x200cbb30UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_RESULT_3 0xed396f03UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_RESULT_4 0x7530614dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_RESULT_5 0x5b33d40cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_RESULT_6 0xb3df930fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_RESULT_7 0xd7d27944UL

/** @brief UTF-8 byte storage for franka_msgs/action/PTPMotion_Result.error_message; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_2_franka_msgs_action_PTPMotion_Result_error_message_text;

/** @brief Complete ROS2 franka_msgs/action/PTPMotion_Result value; no field projects away native data. */
typedef struct roswasmc_bounded_2_franka_msgs_action_PTPMotion_Result
{
    /**
     * @brief Result of the point-to-point motion action
     * @details Original franka_msgs/action/PTPMotion_Result.target_status; native type
     * franka_msgs/msg/TargetStatus. Scalar value. Storage belongs to the complete value and acquires no
     * ROS resource.
     */
    roswasmc_bounded_2_franka_msgs_msg_TargetStatus target_status;
    /**
     * @brief In case of failure, an error message describing the issue
     * @details Original franka_msgs/action/PTPMotion_Result.error_message; native type string. Scalar
     * value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    roswasmc_bounded_2_franka_msgs_action_PTPMotion_Result_error_message_text error_message;
} roswasmc_bounded_2_franka_msgs_action_PTPMotion_Result;

# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_RESULT_MAX_WIRE_BYTES 261u
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_RESULT_MIN_WIRE_BYTES 5u
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_RESULT_CODEC_IDENTITY "UWVMROS1_b61fabf13a3d8d910a35a5145e87b4dd80180b0678ef5580784f461e850fa4c1"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_franka_msgs_action_PTPMotion_Result_valid(roswasmc_bounded_2_franka_msgs_action_PTPMotion_Result const* value)
{
    if(!value)
    {
        return 0;
    }
    if(!roswasmc_bounded_2_franka_msgs_msg_TargetStatus_valid(&value->target_status))
    {
        return 0;
    }
    if(value->error_message.size > 256u || !uwvm_bounded_utf8(value->error_message.data, value->error_message.size))
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_2_franka_msgs_action_PTPMotion_Result_wire_size(roswasmc_bounded_2_franka_msgs_action_PTPMotion_Result const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_franka_msgs_msg_TargetStatus_wire_size(&value->target_status);
    n += 4 + value->error_message.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_2_franka_msgs_action_PTPMotion_Result_write_fields(roswasmc_bounded_2_franka_msgs_action_PTPMotion_Result const* value,
                                                                                       unsigned char* p,
                                                                                       size_t* offset)
{
    roswasmc_bounded_2_franka_msgs_msg_TargetStatus_write_fields(&value->target_status, p, offset);
    uwvm_bounded_put(p + *offset, value->error_message.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->error_message.data, value->error_message.size);
    *offset += value->error_message.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_2_franka_msgs_action_PTPMotion_Result_read_fields(unsigned char const* p,
                                                                                     size_t n,
                                                                                     size_t* offset,
                                                                                     roswasmc_bounded_2_franka_msgs_action_PTPMotion_Result* value)
{
    if(!roswasmc_bounded_2_franka_msgs_msg_TargetStatus_read_fields(p, n, offset, &value->target_status))
    {
        return 0;
    }
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->error_message.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->error_message.size > 256u || value->error_message.size > n - *offset)
    {
        return 0;
    }
    uwvm_bounded_copy(value->error_message.data, p + *offset, value->error_message.size);
    *offset += value->error_message.size;
    return roswasmc_bounded_2_franka_msgs_action_PTPMotion_Result_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_2_franka_msgs_action_PTPMotion_Result_encode(roswasmc_bounded_2_franka_msgs_action_PTPMotion_Result const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_franka_msgs_action_PTPMotion_Result_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_franka_msgs_action_PTPMotion_Result_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_franka_msgs_action_PTPMotion_Result_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t roswasmc_bounded_2_franka_msgs_action_PTPMotion_Result_decode(void const* input,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_2_franka_msgs_action_PTPMotion_Result* value)
{
    roswasmc_bounded_2_franka_msgs_action_PTPMotion_Result next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 5u || length > 261u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_franka_msgs_action_PTPMotion_Result_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_FEEDBACK)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_FEEDBACK_0 != 0x94c05577UL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_FEEDBACK_1 != 0xd07e31fcUL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_FEEDBACK_2 != 0x7a5c0476UL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_FEEDBACK_3 != 0x61b4e25aUL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_FEEDBACK_4 != 0xe4c8c0ebUL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_FEEDBACK_5 != 0x67cc6756UL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_FEEDBACK_6 != 0x39cbbec9UL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_FEEDBACK_7 != 0xc846793eUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_FEEDBACK 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_FEEDBACK_0 0x94c05577UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_FEEDBACK_1 0xd07e31fcUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_FEEDBACK_2 0x7a5c0476UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_FEEDBACK_3 0x61b4e25aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_FEEDBACK_4 0xe4c8c0ebUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_FEEDBACK_5 0x67cc6756UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_FEEDBACK_6 0x39cbbec9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_FEEDBACK_7 0xc846793eUL

/** @brief Complete ROS2 franka_msgs/action/PTPMotion_Feedback value; no field projects away native data. */
typedef struct roswasmc_bounded_2_franka_msgs_action_PTPMotion_Feedback
{
    /**
     * @brief Feedback during the execution of the point-to-point motion
     * @details Original franka_msgs/action/PTPMotion_Feedback.target_status; native type
     * franka_msgs/msg/TargetStatus. Scalar value. Storage belongs to the complete value and acquires no
     * ROS resource.
     */
    roswasmc_bounded_2_franka_msgs_msg_TargetStatus target_status;
} roswasmc_bounded_2_franka_msgs_action_PTPMotion_Feedback;

# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_FEEDBACK_MAX_WIRE_BYTES 1u
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_FEEDBACK_MIN_WIRE_BYTES 1u
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_FEEDBACK_CODEC_IDENTITY "UWVMROS1_c4dcfeb668595ebc341d76b5cbc606c1ae4c38b28a1b329f8436e61f506a0300"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_franka_msgs_action_PTPMotion_Feedback_valid(roswasmc_bounded_2_franka_msgs_action_PTPMotion_Feedback const* value)
{
    if(!value)
    {
        return 0;
    }
    if(!roswasmc_bounded_2_franka_msgs_msg_TargetStatus_valid(&value->target_status))
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_2_franka_msgs_action_PTPMotion_Feedback_wire_size(roswasmc_bounded_2_franka_msgs_action_PTPMotion_Feedback const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_franka_msgs_msg_TargetStatus_wire_size(&value->target_status);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_2_franka_msgs_action_PTPMotion_Feedback_write_fields(roswasmc_bounded_2_franka_msgs_action_PTPMotion_Feedback const* value,
                                                                                         unsigned char* p,
                                                                                         size_t* offset)
{
    roswasmc_bounded_2_franka_msgs_msg_TargetStatus_write_fields(&value->target_status, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_2_franka_msgs_action_PTPMotion_Feedback_read_fields(unsigned char const* p,
                                                                                       size_t n,
                                                                                       size_t* offset,
                                                                                       roswasmc_bounded_2_franka_msgs_action_PTPMotion_Feedback* value)
{
    if(!roswasmc_bounded_2_franka_msgs_msg_TargetStatus_read_fields(p, n, offset, &value->target_status))
    {
        return 0;
    }
    return roswasmc_bounded_2_franka_msgs_action_PTPMotion_Feedback_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_2_franka_msgs_action_PTPMotion_Feedback_encode(roswasmc_bounded_2_franka_msgs_action_PTPMotion_Feedback const* value,
                                                                                       void* output,
                                                                                       size_t capacity,
                                                                                       size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_franka_msgs_action_PTPMotion_Feedback_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_franka_msgs_action_PTPMotion_Feedback_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_franka_msgs_action_PTPMotion_Feedback_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t roswasmc_bounded_2_franka_msgs_action_PTPMotion_Feedback_decode(void const* input,
                                                                                       size_t length,
                                                                                       roswasmc_bounded_2_franka_msgs_action_PTPMotion_Feedback* value)
{
    roswasmc_bounded_2_franka_msgs_action_PTPMotion_Feedback next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 1u || length > 1u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_franka_msgs_action_PTPMotion_Feedback_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
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
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_COLLISIONINDICATORS)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_COLLISIONINDICATORS_0 != 0x1e86ac4fUL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_COLLISIONINDICATORS_1 != 0x45974240UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_COLLISIONINDICATORS_2 != 0x9bdbe60cUL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_COLLISIONINDICATORS_3 != 0x32ff6bedUL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_COLLISIONINDICATORS_4 != 0x168cd86cUL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_COLLISIONINDICATORS_5 != 0x4e0c0487UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_COLLISIONINDICATORS_6 != 0xb31872dfUL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_COLLISIONINDICATORS_7 != 0x9db9b67aUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_COLLISIONINDICATORS 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_COLLISIONINDICATORS_0 0x1e86ac4fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_COLLISIONINDICATORS_1 0x45974240UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_COLLISIONINDICATORS_2 0x9bdbe60cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_COLLISIONINDICATORS_3 0x32ff6bedUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_COLLISIONINDICATORS_4 0x168cd86cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_COLLISIONINDICATORS_5 0x4e0c0487UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_COLLISIONINDICATORS_6 0xb31872dfUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_COLLISIONINDICATORS_7 0x9db9b67aUL

/** @brief Complete ROS2 franka_msgs/msg/CollisionIndicators value; no field projects away native data. */
typedef struct roswasmc_bounded_2_franka_msgs_msg_CollisionIndicators
{
    /**
     * @brief ## Indicates which dimensions have an active contact/collision flag raised
     * @details Original franka_msgs/msg/CollisionIndicators.is_cartesian_linear_collision; native type
     * geometry_msgs/msg/Vector3. Scalar value. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    roswasmc_bounded_2_geometry_msgs_msg_Vector3 is_cartesian_linear_collision;
    /**
     * @brief Retain the complete original geometry_msgs/msg/Vector3 field.
     * @details Original franka_msgs/msg/CollisionIndicators.is_cartesian_angular_collision; native type
     * geometry_msgs/msg/Vector3. Scalar value. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    roswasmc_bounded_2_geometry_msgs_msg_Vector3 is_cartesian_angular_collision;
    /**
     * @brief Retain the complete original geometry_msgs/msg/Vector3 field.
     * @details Original franka_msgs/msg/CollisionIndicators.is_cartesian_linear_contact; native type
     * geometry_msgs/msg/Vector3. Scalar value. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    roswasmc_bounded_2_geometry_msgs_msg_Vector3 is_cartesian_linear_contact;
    /**
     * @brief Retain the complete original geometry_msgs/msg/Vector3 field.
     * @details Original franka_msgs/msg/CollisionIndicators.is_cartesian_angular_contact; native type
     * geometry_msgs/msg/Vector3. Scalar value. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    roswasmc_bounded_2_geometry_msgs_msg_Vector3 is_cartesian_angular_contact;
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_msgs/msg/CollisionIndicators.is_joint_collision; native type float64.
     * Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete
     * value and acquires no ROS resource.
     */
    double is_joint_collision[7];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_msgs/msg/CollisionIndicators.is_joint_contact; native type float64. Exactly
     * 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value
     * and acquires no ROS resource.
     */
    double is_joint_contact[7];
} roswasmc_bounded_2_franka_msgs_msg_CollisionIndicators;

# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_COLLISIONINDICATORS_MAX_WIRE_BYTES 208u
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_COLLISIONINDICATORS_MIN_WIRE_BYTES 208u
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_COLLISIONINDICATORS_CODEC_IDENTITY "UWVMROS1_2bdfb3ece01b47b07fae84a998b23c56fc9482a0518969e43304b318d4ee0ce1"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_franka_msgs_msg_CollisionIndicators_valid(roswasmc_bounded_2_franka_msgs_msg_CollisionIndicators const* value)
{
    if(!value)
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_Vector3_valid(&value->is_cartesian_linear_collision))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_Vector3_valid(&value->is_cartesian_angular_collision))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_Vector3_valid(&value->is_cartesian_linear_contact))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_Vector3_valid(&value->is_cartesian_angular_contact))
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->is_joint_collision[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->is_joint_contact[i], 8);
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
inline static size_t roswasmc_bounded_2_franka_msgs_msg_CollisionIndicators_wire_size(roswasmc_bounded_2_franka_msgs_msg_CollisionIndicators const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_geometry_msgs_msg_Vector3_wire_size(&value->is_cartesian_linear_collision);
    n += roswasmc_bounded_2_geometry_msgs_msg_Vector3_wire_size(&value->is_cartesian_angular_collision);
    n += roswasmc_bounded_2_geometry_msgs_msg_Vector3_wire_size(&value->is_cartesian_linear_contact);
    n += roswasmc_bounded_2_geometry_msgs_msg_Vector3_wire_size(&value->is_cartesian_angular_contact);
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            n += 8;
        }
    }
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            n += 8;
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_2_franka_msgs_msg_CollisionIndicators_write_fields(roswasmc_bounded_2_franka_msgs_msg_CollisionIndicators const* value,
                                                                                       unsigned char* p,
                                                                                       size_t* offset)
{
    roswasmc_bounded_2_geometry_msgs_msg_Vector3_write_fields(&value->is_cartesian_linear_collision, p, offset);
    roswasmc_bounded_2_geometry_msgs_msg_Vector3_write_fields(&value->is_cartesian_angular_collision, p, offset);
    roswasmc_bounded_2_geometry_msgs_msg_Vector3_write_fields(&value->is_cartesian_linear_contact, p, offset);
    roswasmc_bounded_2_geometry_msgs_msg_Vector3_write_fields(&value->is_cartesian_angular_contact, p, offset);
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->is_joint_collision[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->is_joint_contact[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_2_franka_msgs_msg_CollisionIndicators_read_fields(unsigned char const* p,
                                                                                     size_t n,
                                                                                     size_t* offset,
                                                                                     roswasmc_bounded_2_franka_msgs_msg_CollisionIndicators* value)
{
    if(!roswasmc_bounded_2_geometry_msgs_msg_Vector3_read_fields(p, n, offset, &value->is_cartesian_linear_collision))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_Vector3_read_fields(p, n, offset, &value->is_cartesian_angular_collision))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_Vector3_read_fields(p, n, offset, &value->is_cartesian_linear_contact))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_Vector3_read_fields(p, n, offset, &value->is_cartesian_angular_contact))
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->is_joint_collision[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->is_joint_contact[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    return roswasmc_bounded_2_franka_msgs_msg_CollisionIndicators_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_2_franka_msgs_msg_CollisionIndicators_encode(roswasmc_bounded_2_franka_msgs_msg_CollisionIndicators const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_franka_msgs_msg_CollisionIndicators_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_franka_msgs_msg_CollisionIndicators_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_franka_msgs_msg_CollisionIndicators_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t roswasmc_bounded_2_franka_msgs_msg_CollisionIndicators_decode(void const* input,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_2_franka_msgs_msg_CollisionIndicators* value)
{
    roswasmc_bounded_2_franka_msgs_msg_CollisionIndicators next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 208u || length > 208u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_franka_msgs_msg_CollisionIndicators_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_ELBOW)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_ELBOW_0 != 0x672e312bUL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_ELBOW_1 != 0x1153044dUL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_ELBOW_2 != 0x1a2f83ceUL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_ELBOW_3 != 0x06084fb0UL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_ELBOW_4 != 0x4adc5421UL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_ELBOW_5 != 0xc38b835bUL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_ELBOW_6 != 0xb38e41ddUL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_ELBOW_7 != 0xeaabe69cUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_ELBOW 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_ELBOW_0 0x672e312bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_ELBOW_1 0x1153044dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_ELBOW_2 0x1a2f83ceUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_ELBOW_3 0x06084fb0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_ELBOW_4 0x4adc5421UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_ELBOW_5 0xc38b835bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_ELBOW_6 0xb38e41ddUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_ELBOW_7 0xeaabe69cUL

/** @brief Complete ROS2 franka_msgs/msg/Elbow value; no field projects away native data. */
typedef struct roswasmc_bounded_2_franka_msgs_msg_Elbow
{
    /**
     * @brief ## The state of the elbow
     * @details Original franka_msgs/msg/Elbow.position; native type float64. Exactly 2 elements. Finite
     * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double position[2];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_msgs/msg/Elbow.desired_position; native type float64. Exactly 2 elements.
     * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    double desired_position[2];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_msgs/msg/Elbow.commanded_position; native type float64. Exactly 2 elements.
     * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    double commanded_position[2];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_msgs/msg/Elbow.commanded_velocity; native type float64. Exactly 2 elements.
     * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    double commanded_velocity[2];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_msgs/msg/Elbow.commanded_acceleration; native type float64. Exactly 2
     * elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
     * acquires no ROS resource.
     */
    double commanded_acceleration[2];
} roswasmc_bounded_2_franka_msgs_msg_Elbow;

# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_ELBOW_MAX_WIRE_BYTES 80u
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_ELBOW_MIN_WIRE_BYTES 80u
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_ELBOW_CODEC_IDENTITY "UWVMROS1_686cf2da29007046f9855ffeecac304c159245ec3da153990ab83be4ffce53b6"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_franka_msgs_msg_Elbow_valid(roswasmc_bounded_2_franka_msgs_msg_Elbow const* value)
{
    if(!value)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->position[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->desired_position[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->commanded_position[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->commanded_velocity[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->commanded_acceleration[i], 8);
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
inline static size_t roswasmc_bounded_2_franka_msgs_msg_Elbow_wire_size(roswasmc_bounded_2_franka_msgs_msg_Elbow const* value)
{
    size_t n = 0;
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            n += 8;
        }
    }
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            n += 8;
        }
    }
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            n += 8;
        }
    }
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            n += 8;
        }
    }
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            n += 8;
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_2_franka_msgs_msg_Elbow_write_fields(roswasmc_bounded_2_franka_msgs_msg_Elbow const* value, unsigned char* p, size_t* offset)
{
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->position[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->desired_position[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->commanded_position[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->commanded_velocity[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->commanded_acceleration[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int
    roswasmc_bounded_2_franka_msgs_msg_Elbow_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_franka_msgs_msg_Elbow* value)
{
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->position[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->desired_position[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->commanded_position[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->commanded_velocity[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->commanded_acceleration[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    return roswasmc_bounded_2_franka_msgs_msg_Elbow_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_2_franka_msgs_msg_Elbow_encode(roswasmc_bounded_2_franka_msgs_msg_Elbow const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_franka_msgs_msg_Elbow_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_franka_msgs_msg_Elbow_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_franka_msgs_msg_Elbow_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t roswasmc_bounded_2_franka_msgs_msg_Elbow_decode(void const* input, size_t length, roswasmc_bounded_2_franka_msgs_msg_Elbow* value)
{
    roswasmc_bounded_2_franka_msgs_msg_Elbow next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 80u || length > 80u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_franka_msgs_msg_Elbow_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_ERRORS)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_ERRORS_0 != 0x30c9b9bcUL ||                                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_ERRORS_1 != 0x832f3c49UL ||                                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_ERRORS_2 != 0x1ba91c2eUL ||                                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_ERRORS_3 != 0x49bd1abcUL ||                                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_ERRORS_4 != 0x4d3bcf38UL ||                                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_ERRORS_5 != 0x76dac957UL ||                                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_ERRORS_6 != 0x19270c52UL ||                                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_ERRORS_7 != 0x2a2dd9d6UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_ERRORS 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_ERRORS_0 0x30c9b9bcUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_ERRORS_1 0x832f3c49UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_ERRORS_2 0x1ba91c2eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_ERRORS_3 0x49bd1abcUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_ERRORS_4 0x4d3bcf38UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_ERRORS_5 0x76dac957UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_ERRORS_6 0x19270c52UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_ERRORS_7 0x2a2dd9d6UL

/** @brief Complete ROS2 franka_msgs/msg/Errors value; no field projects away native data. */
typedef struct roswasmc_bounded_2_franka_msgs_msg_Errors
{
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/msg/Errors.joint_position_limits_violation; native type bool. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t joint_position_limits_violation;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/msg/Errors.cartesian_position_limits_violation; native type bool.
     * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t cartesian_position_limits_violation;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/msg/Errors.self_collision_avoidance_violation; native type bool.
     * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t self_collision_avoidance_violation;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/msg/Errors.joint_velocity_violation; native type bool. Scalar value.
     * Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t joint_velocity_violation;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/msg/Errors.cartesian_velocity_violation; native type bool. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t cartesian_velocity_violation;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/msg/Errors.force_control_safety_violation; native type bool. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t force_control_safety_violation;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/msg/Errors.joint_reflex; native type bool. Scalar value. Storage
     * belongs to the complete value and acquires no ROS resource.
     */
    uint8_t joint_reflex;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/msg/Errors.cartesian_reflex; native type bool. Scalar value. Storage
     * belongs to the complete value and acquires no ROS resource.
     */
    uint8_t cartesian_reflex;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/msg/Errors.max_goal_pose_deviation_violation; native type bool. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t max_goal_pose_deviation_violation;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/msg/Errors.max_path_pose_deviation_violation; native type bool. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t max_path_pose_deviation_violation;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/msg/Errors.cartesian_velocity_profile_safety_violation; native type
     * bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t cartesian_velocity_profile_safety_violation;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/msg/Errors.joint_position_motion_generator_start_pose_invalid; native
     * type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t joint_position_motion_generator_start_pose_invalid;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/msg/Errors.joint_motion_generator_position_limits_violation; native
     * type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t joint_motion_generator_position_limits_violation;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/msg/Errors.joint_motion_generator_velocity_limits_violation; native
     * type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t joint_motion_generator_velocity_limits_violation;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/msg/Errors.joint_motion_generator_velocity_discontinuity; native type
     * bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t joint_motion_generator_velocity_discontinuity;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/msg/Errors.joint_motion_generator_acceleration_discontinuity; native
     * type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t joint_motion_generator_acceleration_discontinuity;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/msg/Errors.cartesian_position_motion_generator_start_pose_invalid;
     * native type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t cartesian_position_motion_generator_start_pose_invalid;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/msg/Errors.cartesian_motion_generator_elbow_limit_violation; native
     * type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t cartesian_motion_generator_elbow_limit_violation;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/msg/Errors.cartesian_motion_generator_velocity_limits_violation;
     * native type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t cartesian_motion_generator_velocity_limits_violation;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/msg/Errors.cartesian_motion_generator_velocity_discontinuity; native
     * type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t cartesian_motion_generator_velocity_discontinuity;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/msg/Errors.cartesian_motion_generator_acceleration_discontinuity;
     * native type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t cartesian_motion_generator_acceleration_discontinuity;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/msg/Errors.cartesian_motion_generator_elbow_sign_inconsistent; native
     * type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t cartesian_motion_generator_elbow_sign_inconsistent;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/msg/Errors.cartesian_motion_generator_start_elbow_invalid; native type
     * bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t cartesian_motion_generator_start_elbow_invalid;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/msg/Errors.cartesian_motion_generator_joint_position_limits_violation;
     * native type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t cartesian_motion_generator_joint_position_limits_violation;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/msg/Errors.cartesian_motion_generator_joint_velocity_limits_violation;
     * native type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t cartesian_motion_generator_joint_velocity_limits_violation;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/msg/Errors.cartesian_motion_generator_joint_velocity_discontinuity;
     * native type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t cartesian_motion_generator_joint_velocity_discontinuity;
    /**
     * @brief Retain the complete original bool field.
     * @details Original
     * franka_msgs/msg/Errors.cartesian_motion_generator_joint_acceleration_discontinuity; native type
     * bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t cartesian_motion_generator_joint_acceleration_discontinuity;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/msg/Errors.cartesian_position_motion_generator_invalid_frame; native
     * type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t cartesian_position_motion_generator_invalid_frame;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/msg/Errors.force_controller_desired_force_tolerance_violation; native
     * type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t force_controller_desired_force_tolerance_violation;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/msg/Errors.controller_torque_discontinuity; native type bool. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t controller_torque_discontinuity;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/msg/Errors.start_elbow_sign_inconsistent; native type bool. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t start_elbow_sign_inconsistent;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/msg/Errors.communication_constraints_violation; native type bool.
     * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t communication_constraints_violation;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/msg/Errors.power_limit_violation; native type bool. Scalar value.
     * Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t power_limit_violation;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/msg/Errors.joint_p2p_insufficient_torque_for_planning; native type
     * bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t joint_p2p_insufficient_torque_for_planning;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/msg/Errors.tau_j_range_violation; native type bool. Scalar value.
     * Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t tau_j_range_violation;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/msg/Errors.instability_detected; native type bool. Scalar value.
     * Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t instability_detected;
} roswasmc_bounded_2_franka_msgs_msg_Errors;

# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_ERRORS_MAX_WIRE_BYTES 36u
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_ERRORS_MIN_WIRE_BYTES 36u
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_ERRORS_CODEC_IDENTITY "UWVMROS1_c7927af1abe7710bb686574ad6f2459f8425af1d6cdb3189160bb732b5a6bc8c"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_franka_msgs_msg_Errors_valid(roswasmc_bounded_2_franka_msgs_msg_Errors const* value)
{
    if(!value)
    {
        return 0;
    }
    if(value->joint_position_limits_violation > 1)
    {
        return 0;
    }
    if(value->cartesian_position_limits_violation > 1)
    {
        return 0;
    }
    if(value->self_collision_avoidance_violation > 1)
    {
        return 0;
    }
    if(value->joint_velocity_violation > 1)
    {
        return 0;
    }
    if(value->cartesian_velocity_violation > 1)
    {
        return 0;
    }
    if(value->force_control_safety_violation > 1)
    {
        return 0;
    }
    if(value->joint_reflex > 1)
    {
        return 0;
    }
    if(value->cartesian_reflex > 1)
    {
        return 0;
    }
    if(value->max_goal_pose_deviation_violation > 1)
    {
        return 0;
    }
    if(value->max_path_pose_deviation_violation > 1)
    {
        return 0;
    }
    if(value->cartesian_velocity_profile_safety_violation > 1)
    {
        return 0;
    }
    if(value->joint_position_motion_generator_start_pose_invalid > 1)
    {
        return 0;
    }
    if(value->joint_motion_generator_position_limits_violation > 1)
    {
        return 0;
    }
    if(value->joint_motion_generator_velocity_limits_violation > 1)
    {
        return 0;
    }
    if(value->joint_motion_generator_velocity_discontinuity > 1)
    {
        return 0;
    }
    if(value->joint_motion_generator_acceleration_discontinuity > 1)
    {
        return 0;
    }
    if(value->cartesian_position_motion_generator_start_pose_invalid > 1)
    {
        return 0;
    }
    if(value->cartesian_motion_generator_elbow_limit_violation > 1)
    {
        return 0;
    }
    if(value->cartesian_motion_generator_velocity_limits_violation > 1)
    {
        return 0;
    }
    if(value->cartesian_motion_generator_velocity_discontinuity > 1)
    {
        return 0;
    }
    if(value->cartesian_motion_generator_acceleration_discontinuity > 1)
    {
        return 0;
    }
    if(value->cartesian_motion_generator_elbow_sign_inconsistent > 1)
    {
        return 0;
    }
    if(value->cartesian_motion_generator_start_elbow_invalid > 1)
    {
        return 0;
    }
    if(value->cartesian_motion_generator_joint_position_limits_violation > 1)
    {
        return 0;
    }
    if(value->cartesian_motion_generator_joint_velocity_limits_violation > 1)
    {
        return 0;
    }
    if(value->cartesian_motion_generator_joint_velocity_discontinuity > 1)
    {
        return 0;
    }
    if(value->cartesian_motion_generator_joint_acceleration_discontinuity > 1)
    {
        return 0;
    }
    if(value->cartesian_position_motion_generator_invalid_frame > 1)
    {
        return 0;
    }
    if(value->force_controller_desired_force_tolerance_violation > 1)
    {
        return 0;
    }
    if(value->controller_torque_discontinuity > 1)
    {
        return 0;
    }
    if(value->start_elbow_sign_inconsistent > 1)
    {
        return 0;
    }
    if(value->communication_constraints_violation > 1)
    {
        return 0;
    }
    if(value->power_limit_violation > 1)
    {
        return 0;
    }
    if(value->joint_p2p_insufficient_torque_for_planning > 1)
    {
        return 0;
    }
    if(value->tau_j_range_violation > 1)
    {
        return 0;
    }
    if(value->instability_detected > 1)
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_2_franka_msgs_msg_Errors_wire_size(roswasmc_bounded_2_franka_msgs_msg_Errors const* value)
{
    size_t n = 0;
    n += 1;
    n += 1;
    n += 1;
    n += 1;
    n += 1;
    n += 1;
    n += 1;
    n += 1;
    n += 1;
    n += 1;
    n += 1;
    n += 1;
    n += 1;
    n += 1;
    n += 1;
    n += 1;
    n += 1;
    n += 1;
    n += 1;
    n += 1;
    n += 1;
    n += 1;
    n += 1;
    n += 1;
    n += 1;
    n += 1;
    n += 1;
    n += 1;
    n += 1;
    n += 1;
    n += 1;
    n += 1;
    n += 1;
    n += 1;
    n += 1;
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_2_franka_msgs_msg_Errors_write_fields(roswasmc_bounded_2_franka_msgs_msg_Errors const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->joint_position_limits_violation, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->cartesian_position_limits_violation, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->self_collision_avoidance_violation, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->joint_velocity_violation, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->cartesian_velocity_violation, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->force_control_safety_violation, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->joint_reflex, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->cartesian_reflex, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->max_goal_pose_deviation_violation, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->max_path_pose_deviation_violation, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->cartesian_velocity_profile_safety_violation, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->joint_position_motion_generator_start_pose_invalid, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->joint_motion_generator_position_limits_violation, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->joint_motion_generator_velocity_limits_violation, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->joint_motion_generator_velocity_discontinuity, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->joint_motion_generator_acceleration_discontinuity, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->cartesian_position_motion_generator_start_pose_invalid, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->cartesian_motion_generator_elbow_limit_violation, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->cartesian_motion_generator_velocity_limits_violation, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->cartesian_motion_generator_velocity_discontinuity, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->cartesian_motion_generator_acceleration_discontinuity, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->cartesian_motion_generator_elbow_sign_inconsistent, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->cartesian_motion_generator_start_elbow_invalid, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->cartesian_motion_generator_joint_position_limits_violation, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->cartesian_motion_generator_joint_velocity_limits_violation, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->cartesian_motion_generator_joint_velocity_discontinuity, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->cartesian_motion_generator_joint_acceleration_discontinuity, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->cartesian_position_motion_generator_invalid_frame, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->force_controller_desired_force_tolerance_violation, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->controller_torque_discontinuity, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->start_elbow_sign_inconsistent, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->communication_constraints_violation, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->power_limit_violation, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->joint_p2p_insufficient_torque_for_planning, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->tau_j_range_violation, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->instability_detected, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int
    roswasmc_bounded_2_franka_msgs_msg_Errors_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_franka_msgs_msg_Errors* value)
{
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->joint_position_limits_violation, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->cartesian_position_limits_violation, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->self_collision_avoidance_violation, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->joint_velocity_violation, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->cartesian_velocity_violation, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->force_control_safety_violation, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->joint_reflex, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->cartesian_reflex, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->max_goal_pose_deviation_violation, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->max_path_pose_deviation_violation, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->cartesian_velocity_profile_safety_violation, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->joint_position_motion_generator_start_pose_invalid, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->joint_motion_generator_position_limits_violation, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->joint_motion_generator_velocity_limits_violation, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->joint_motion_generator_velocity_discontinuity, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->joint_motion_generator_acceleration_discontinuity, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->cartesian_position_motion_generator_start_pose_invalid, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->cartesian_motion_generator_elbow_limit_violation, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->cartesian_motion_generator_velocity_limits_violation, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->cartesian_motion_generator_velocity_discontinuity, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->cartesian_motion_generator_acceleration_discontinuity, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->cartesian_motion_generator_elbow_sign_inconsistent, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->cartesian_motion_generator_start_elbow_invalid, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->cartesian_motion_generator_joint_position_limits_violation, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->cartesian_motion_generator_joint_velocity_limits_violation, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->cartesian_motion_generator_joint_velocity_discontinuity, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->cartesian_motion_generator_joint_acceleration_discontinuity, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->cartesian_position_motion_generator_invalid_frame, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->force_controller_desired_force_tolerance_violation, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->controller_torque_discontinuity, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->start_elbow_sign_inconsistent, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->communication_constraints_violation, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->power_limit_violation, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->joint_p2p_insufficient_torque_for_planning, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->tau_j_range_violation, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->instability_detected, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_2_franka_msgs_msg_Errors_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_2_franka_msgs_msg_Errors_encode(roswasmc_bounded_2_franka_msgs_msg_Errors const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_franka_msgs_msg_Errors_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_franka_msgs_msg_Errors_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_franka_msgs_msg_Errors_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t roswasmc_bounded_2_franka_msgs_msg_Errors_decode(void const* input, size_t length, roswasmc_bounded_2_franka_msgs_msg_Errors* value)
{
    roswasmc_bounded_2_franka_msgs_msg_Errors next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 36u || length > 36u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_franka_msgs_msg_Errors_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_0 != 0xf89deb28UL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_1 != 0x495e9f85UL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_2 != 0x618c129eUL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_3 != 0x03e5d971UL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_4 != 0x0c3f912aUL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_5 != 0xd9dc7366UL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_6 != 0x13b329d5UL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_7 != 0xe7746562UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_0 0xf89deb28UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_1 0x495e9f85UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_2 0x618c129eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_3 0x03e5d971UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_4 0x0c3f912aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_5 0xd9dc7366UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_6 0x13b329d5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_7 0xe7746562UL

/** @brief UTF-8 byte storage for std_msgs/msg/Header.frame_id; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
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
     * @details Original std_msgs/msg/Header.frame_id; native type string. Scalar value. UTF-8 capacity 128
     * bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_2_std_msgs_msg_Header_frame_id_text frame_id;
} roswasmc_bounded_2_std_msgs_msg_Header;

# define ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_MAX_WIRE_BYTES 140u
# define ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_MIN_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_CODEC_IDENTITY "UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96"

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
    if(value->frame_id.size > 128u || !uwvm_bounded_utf8(value->frame_id.data, value->frame_id.size))
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
    if(value->frame_id.size > 128u || value->frame_id.size > n - *offset)
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
    if(!value || (length && !input) || length < 12u || length > 140u || uwvm_bounded_overlap(value, sizeof *value, input, length))
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
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_0 != 0x62f28e62UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_1 != 0x53d28615UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_2 != 0xd0bdd71fUL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_3 != 0x37b34da2UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_4 != 0x6b793872UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_5 != 0x10304110UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_6 != 0xb40d2837UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_7 != 0x42421f4bUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_0 0x62f28e62UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_1 0x53d28615UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_2 0xd0bdd71fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_3 0x37b34da2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_4 0x6b793872UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_5 0x10304110UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_6 0xb40d2837UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_7 0x42421f4bUL

/** @brief UTF-8 byte storage for sensor_msgs/msg/JointState.name; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_sensor_msgs_msg_JointState_name_text;

/** @brief At most7 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_sensor_msgs_msg_JointState_name_text data[7];
} roswasmc_bounded_2_sensor_msgs_msg_JointState_name_sequence;

/** @brief At most7 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[7];
} roswasmc_bounded_2_sensor_msgs_msg_JointState_position_sequence;

/** @brief At most7 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[7];
} roswasmc_bounded_2_sensor_msgs_msg_JointState_velocity_sequence;

/** @brief At most7 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[7];
} roswasmc_bounded_2_sensor_msgs_msg_JointState_effort_sequence;

/** @brief Complete ROS2 sensor_msgs/msg/JointState value; no field projects away native data. */
typedef struct roswasmc_bounded_2_sensor_msgs_msg_JointState
{
    /**
     * @brief This is a message that holds data to describe the state of a set of torque controlled joints.
     * The state of each joint (revolute or prismatic) is defined by: * the position of the joint (rad or
     * m), * the velocity of the joint (rad/s or m/s) and * the effort that is applied in the joint (Nm or
     * N).  Each joint is uniquely identified by its name The header specifies the time at which the joint
     * states were recorded. All the joint states in one message have to be recorded at the same time.
     * This message consists of a multiple arrays, one for each part of the joint state. The goal is to
     * make each of the fields optional. When e.g. your joints have no effort associated with them, you can
     * leave the effort array empty.  All arrays in this message should have the same size, or be empty.
     * This is the only way to uniquely associate the joint name with the correct states.
     * @details Original sensor_msgs/msg/JointState.header; native type std_msgs/msg/Header. Scalar value.
     * Storage belongs to the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_2_std_msgs_msg_Header header;
    /**
     * @brief Retain the complete original string field.
     * @details Original sensor_msgs/msg/JointState.name; native type string. At most 7 elements. UTF-8
     * capacity 128 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    roswasmc_bounded_2_sensor_msgs_msg_JointState_name_sequence name;
    /**
     * @brief Retain the complete original float64 field.
     * @details Original sensor_msgs/msg/JointState.position; native type float64. At most 7 elements.
     * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    roswasmc_bounded_2_sensor_msgs_msg_JointState_position_sequence position;
    /**
     * @brief Retain the complete original float64 field.
     * @details Original sensor_msgs/msg/JointState.velocity; native type float64. At most 7 elements.
     * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    roswasmc_bounded_2_sensor_msgs_msg_JointState_velocity_sequence velocity;
    /**
     * @brief Retain the complete original float64 field.
     * @details Original sensor_msgs/msg/JointState.effort; native type float64. At most 7 elements. Finite
     * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    roswasmc_bounded_2_sensor_msgs_msg_JointState_effort_sequence effort;
} roswasmc_bounded_2_sensor_msgs_msg_JointState;

# define ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_MAX_WIRE_BYTES 1248u
# define ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_MIN_WIRE_BYTES 28u
# define ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_CODEC_IDENTITY "UWVMROS1_912ba4261e2dfbec0e4a543ea8e5d308ef1d26877b4a7d71162a981ac64c40a3"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_sensor_msgs_msg_JointState_valid(roswasmc_bounded_2_sensor_msgs_msg_JointState const* value)
{
    if(!value)
    {
        return 0;
    }
    if(!roswasmc_bounded_2_std_msgs_msg_Header_valid(&value->header))
    {
        return 0;
    }
    if(value->name.size > 7u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->name.size; ++i)
        {
            if(value->name.data[i].size > 128u || !uwvm_bounded_utf8(value->name.data[i].data, value->name.data[i].size))
            {
                return 0;
            }
        }
    }
    if(value->position.size > 7u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->position.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->position.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    if(value->velocity.size > 7u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->velocity.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->velocity.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    if(value->effort.size > 7u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->effort.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->effort.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    if((value->name.size != 0 && value->position.size != 0 && value->name.size != value->position.size) ||
       (value->name.size != 0 && value->velocity.size != 0 && value->name.size != value->velocity.size) ||
       (value->name.size != 0 && value->effort.size != 0 && value->name.size != value->effort.size) ||
       (value->position.size != 0 && value->velocity.size != 0 && value->position.size != value->velocity.size) ||
       (value->position.size != 0 && value->effort.size != 0 && value->position.size != value->effort.size) ||
       (value->velocity.size != 0 && value->effort.size != 0 && value->velocity.size != value->effort.size))
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_2_sensor_msgs_msg_JointState_wire_size(roswasmc_bounded_2_sensor_msgs_msg_JointState const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&value->header);
    n += 4;
    if(value->name.size > 7u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->name.size; ++i)
        {
            n += 4 + value->name.data[i].size;
        }
    }
    n += 4;
    if(value->position.size > 7u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->position.size; ++i)
        {
            n += 8;
        }
    }
    n += 4;
    if(value->velocity.size > 7u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->velocity.size; ++i)
        {
            n += 8;
        }
    }
    n += 4;
    if(value->effort.size > 7u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->effort.size; ++i)
        {
            n += 8;
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_2_sensor_msgs_msg_JointState_write_fields(roswasmc_bounded_2_sensor_msgs_msg_JointState const* value, unsigned char* p, size_t* offset)
{
    roswasmc_bounded_2_std_msgs_msg_Header_write_fields(&value->header, p, offset);
    uwvm_bounded_put(p + *offset, value->name.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->name.size; ++i)
        {
            uwvm_bounded_put(p + *offset, value->name.data[i].size, 4);
            *offset += 4;
            uwvm_bounded_copy(p + *offset, value->name.data[i].data, value->name.data[i].size);
            *offset += value->name.data[i].size;
        }
    }
    uwvm_bounded_put(p + *offset, value->position.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->position.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->position.data[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    uwvm_bounded_put(p + *offset, value->velocity.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->velocity.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->velocity.data[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    uwvm_bounded_put(p + *offset, value->effort.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->effort.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->effort.data[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_2_sensor_msgs_msg_JointState_read_fields(unsigned char const* p,
                                                                            size_t n,
                                                                            size_t* offset,
                                                                            roswasmc_bounded_2_sensor_msgs_msg_JointState* value)
{
    if(!roswasmc_bounded_2_std_msgs_msg_Header_read_fields(p, n, offset, &value->header))
    {
        return 0;
    }
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->name.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->name.size > 7u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->name.size; ++i)
        {
            if(*offset > n || n - *offset < 4)
            {
                return 0;
            }
            value->name.data[i].size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
            *offset += 4;
            if(value->name.data[i].size > 128u || value->name.data[i].size > n - *offset)
            {
                return 0;
            }
            uwvm_bounded_copy(value->name.data[i].data, p + *offset, value->name.data[i].size);
            *offset += value->name.data[i].size;
        }
    }
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->position.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->position.size > 7u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->position.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->position.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->velocity.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->velocity.size > 7u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->velocity.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->velocity.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->effort.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->effort.size > 7u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->effort.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->effort.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    return roswasmc_bounded_2_sensor_msgs_msg_JointState_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_2_sensor_msgs_msg_JointState_encode(roswasmc_bounded_2_sensor_msgs_msg_JointState const* value,
                                                                            void* output,
                                                                            size_t capacity,
                                                                            size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_sensor_msgs_msg_JointState_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_sensor_msgs_msg_JointState_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_sensor_msgs_msg_JointState_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_sensor_msgs_msg_JointState_decode(void const* input, size_t length, roswasmc_bounded_2_sensor_msgs_msg_JointState* value)
{
    roswasmc_bounded_2_sensor_msgs_msg_JointState next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 28u || length > 1248u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_sensor_msgs_msg_JointState_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
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
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_WRENCHSTAMPED)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_WRENCHSTAMPED_0 != 0xb7886931UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_WRENCHSTAMPED_1 != 0xbea1ebdeUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_WRENCHSTAMPED_2 != 0x5adc0b4fUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_WRENCHSTAMPED_3 != 0xb1579a23UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_WRENCHSTAMPED_4 != 0x71ca394dUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_WRENCHSTAMPED_5 != 0x9024db43UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_WRENCHSTAMPED_6 != 0xb6137c39UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_WRENCHSTAMPED_7 != 0x218d93a3UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_WRENCHSTAMPED 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_WRENCHSTAMPED_0 0xb7886931UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_WRENCHSTAMPED_1 0xbea1ebdeUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_WRENCHSTAMPED_2 0x5adc0b4fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_WRENCHSTAMPED_3 0xb1579a23UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_WRENCHSTAMPED_4 0x71ca394dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_WRENCHSTAMPED_5 0x9024db43UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_WRENCHSTAMPED_6 0xb6137c39UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_WRENCHSTAMPED_7 0x218d93a3UL

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

# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_WRENCHSTAMPED_MAX_WIRE_BYTES 188u
# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_WRENCHSTAMPED_MIN_WIRE_BYTES 60u
# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_WRENCHSTAMPED_CODEC_IDENTITY "UWVMROS1_e23600874a626ba9d52f043e14ed04beb3e316d47c3bca8bd87cfeed3f5d9d66"

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
    if(!value || (length && !input) || length < 60u || length > 188u || uwvm_bounded_overlap(value, sizeof *value, input, length))
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
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_INERTIA)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_INERTIA_0 != 0xc531f872UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_INERTIA_1 != 0x8f3857dbUL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_INERTIA_2 != 0x72c127a9UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_INERTIA_3 != 0xdb851521UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_INERTIA_4 != 0x3283c855UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_INERTIA_5 != 0x2a67b753UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_INERTIA_6 != 0x6f6cb497UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_INERTIA_7 != 0x39eb2959UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_INERTIA 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_INERTIA_0 0xc531f872UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_INERTIA_1 0x8f3857dbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_INERTIA_2 0x72c127a9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_INERTIA_3 0xdb851521UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_INERTIA_4 0x3283c855UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_INERTIA_5 0x2a67b753UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_INERTIA_6 0x6f6cb497UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_INERTIA_7 0x39eb2959UL

/** @brief Complete ROS2 geometry_msgs/msg/Inertia value; no field projects away native data. */
typedef struct roswasmc_bounded_2_geometry_msgs_msg_Inertia
{
    /**
     * @brief Mass [kg]
     * @details Original geometry_msgs/msg/Inertia.m; native type float64. Scalar value. Finite IEEE
     * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double m;
    /**
     * @brief Center of mass [m]
     * @details Original geometry_msgs/msg/Inertia.com; native type geometry_msgs/msg/Vector3. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_2_geometry_msgs_msg_Vector3 com;
    /**
     * @brief Inertia Tensor [kg-m^2] about the center of mass | ixx ixy ixz | I = | ixy iyy iyz | | ixz
     * iyz izz |
     * @details Original geometry_msgs/msg/Inertia.ixx; native type float64. Scalar value. Finite IEEE
     * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double ixx;
    /**
     * @brief Retain the complete original float64 field.
     * @details Original geometry_msgs/msg/Inertia.ixy; native type float64. Scalar value. Finite IEEE
     * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double ixy;
    /**
     * @brief Retain the complete original float64 field.
     * @details Original geometry_msgs/msg/Inertia.ixz; native type float64. Scalar value. Finite IEEE
     * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double ixz;
    /**
     * @brief Retain the complete original float64 field.
     * @details Original geometry_msgs/msg/Inertia.iyy; native type float64. Scalar value. Finite IEEE
     * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double iyy;
    /**
     * @brief Retain the complete original float64 field.
     * @details Original geometry_msgs/msg/Inertia.iyz; native type float64. Scalar value. Finite IEEE
     * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double iyz;
    /**
     * @brief Retain the complete original float64 field.
     * @details Original geometry_msgs/msg/Inertia.izz; native type float64. Scalar value. Finite IEEE
     * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double izz;
} roswasmc_bounded_2_geometry_msgs_msg_Inertia;

# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_INERTIA_MAX_WIRE_BYTES 80u
# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_INERTIA_MIN_WIRE_BYTES 80u
# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_INERTIA_CODEC_IDENTITY "UWVMROS1_4a1b7a6a2516724a9a12e5eb166a85cd73d33fc6075c8d517ff2a279fd29e12a"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_geometry_msgs_msg_Inertia_valid(roswasmc_bounded_2_geometry_msgs_msg_Inertia const* value)
{
    if(!value)
    {
        return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->m, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
        {
            return 0;
        }
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_Vector3_valid(&value->com))
    {
        return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->ixx, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
        {
            return 0;
        }
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->ixy, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
        {
            return 0;
        }
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->ixz, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
        {
            return 0;
        }
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->iyy, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
        {
            return 0;
        }
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->iyz, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
        {
            return 0;
        }
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->izz, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
        {
            return 0;
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_2_geometry_msgs_msg_Inertia_wire_size(roswasmc_bounded_2_geometry_msgs_msg_Inertia const* value)
{
    size_t n = 0;
    n += 8;
    n += roswasmc_bounded_2_geometry_msgs_msg_Vector3_wire_size(&value->com);
    n += 8;
    n += 8;
    n += 8;
    n += 8;
    n += 8;
    n += 8;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_2_geometry_msgs_msg_Inertia_write_fields(roswasmc_bounded_2_geometry_msgs_msg_Inertia const* value, unsigned char* p, size_t* offset)
{
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->m, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    roswasmc_bounded_2_geometry_msgs_msg_Vector3_write_fields(&value->com, p, offset);
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->ixx, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->ixy, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->ixz, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->iyy, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->iyz, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->izz, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_2_geometry_msgs_msg_Inertia_read_fields(unsigned char const* p,
                                                                           size_t n,
                                                                           size_t* offset,
                                                                           roswasmc_bounded_2_geometry_msgs_msg_Inertia* value)
{
    if(*offset > n || n - *offset < 8)
    {
        return 0;
    }
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->m, &bits, 8);
    }
    *offset += 8;
    if(!roswasmc_bounded_2_geometry_msgs_msg_Vector3_read_fields(p, n, offset, &value->com))
    {
        return 0;
    }
    if(*offset > n || n - *offset < 8)
    {
        return 0;
    }
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->ixx, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
    {
        return 0;
    }
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->ixy, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
    {
        return 0;
    }
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->ixz, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
    {
        return 0;
    }
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->iyy, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
    {
        return 0;
    }
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->iyz, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
    {
        return 0;
    }
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->izz, &bits, 8);
    }
    *offset += 8;
    return roswasmc_bounded_2_geometry_msgs_msg_Inertia_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_2_geometry_msgs_msg_Inertia_encode(roswasmc_bounded_2_geometry_msgs_msg_Inertia const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_geometry_msgs_msg_Inertia_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_geometry_msgs_msg_Inertia_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_geometry_msgs_msg_Inertia_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_geometry_msgs_msg_Inertia_decode(void const* input, size_t length, roswasmc_bounded_2_geometry_msgs_msg_Inertia* value)
{
    roswasmc_bounded_2_geometry_msgs_msg_Inertia next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 80u || length > 80u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_Inertia_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_INERTIASTAMPED)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_INERTIASTAMPED_0 != 0x74398ef0UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_INERTIASTAMPED_1 != 0xdbbfeea8UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_INERTIASTAMPED_2 != 0x2d52e591UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_INERTIASTAMPED_3 != 0xbb806bacUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_INERTIASTAMPED_4 != 0x80a2f192UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_INERTIASTAMPED_5 != 0x2bf28b06UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_INERTIASTAMPED_6 != 0xa7aaa258UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_INERTIASTAMPED_7 != 0xe0b57f13UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_INERTIASTAMPED 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_INERTIASTAMPED_0 0x74398ef0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_INERTIASTAMPED_1 0xdbbfeea8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_INERTIASTAMPED_2 0x2d52e591UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_INERTIASTAMPED_3 0xbb806bacUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_INERTIASTAMPED_4 0x80a2f192UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_INERTIASTAMPED_5 0x2bf28b06UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_INERTIASTAMPED_6 0xa7aaa258UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_INERTIASTAMPED_7 0xe0b57f13UL

/** @brief Complete ROS2 geometry_msgs/msg/InertiaStamped value; no field projects away native data. */
typedef struct roswasmc_bounded_2_geometry_msgs_msg_InertiaStamped
{
    /**
     * @brief An Inertia with a time stamp and reference frame.
     * @details Original geometry_msgs/msg/InertiaStamped.header; native type std_msgs/msg/Header. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_2_std_msgs_msg_Header header;
    /**
     * @brief Retain the complete original geometry_msgs/msg/Inertia field.
     * @details Original geometry_msgs/msg/InertiaStamped.inertia; native type geometry_msgs/msg/Inertia.
     * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_2_geometry_msgs_msg_Inertia inertia;
} roswasmc_bounded_2_geometry_msgs_msg_InertiaStamped;

# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_INERTIASTAMPED_MAX_WIRE_BYTES 220u
# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_INERTIASTAMPED_MIN_WIRE_BYTES 92u
# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_INERTIASTAMPED_CODEC_IDENTITY "UWVMROS1_19b0b442c5858ff1eee20e4658ecc3a2b76fdd64c4a21a1642fae5ab38198576"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_geometry_msgs_msg_InertiaStamped_valid(roswasmc_bounded_2_geometry_msgs_msg_InertiaStamped const* value)
{
    if(!value)
    {
        return 0;
    }
    if(!roswasmc_bounded_2_std_msgs_msg_Header_valid(&value->header))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_Inertia_valid(&value->inertia))
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_2_geometry_msgs_msg_InertiaStamped_wire_size(roswasmc_bounded_2_geometry_msgs_msg_InertiaStamped const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&value->header);
    n += roswasmc_bounded_2_geometry_msgs_msg_Inertia_wire_size(&value->inertia);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_2_geometry_msgs_msg_InertiaStamped_write_fields(roswasmc_bounded_2_geometry_msgs_msg_InertiaStamped const* value,
                                                                                    unsigned char* p,
                                                                                    size_t* offset)
{
    roswasmc_bounded_2_std_msgs_msg_Header_write_fields(&value->header, p, offset);
    roswasmc_bounded_2_geometry_msgs_msg_Inertia_write_fields(&value->inertia, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_2_geometry_msgs_msg_InertiaStamped_read_fields(unsigned char const* p,
                                                                                  size_t n,
                                                                                  size_t* offset,
                                                                                  roswasmc_bounded_2_geometry_msgs_msg_InertiaStamped* value)
{
    if(!roswasmc_bounded_2_std_msgs_msg_Header_read_fields(p, n, offset, &value->header))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_Inertia_read_fields(p, n, offset, &value->inertia))
    {
        return 0;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_InertiaStamped_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_2_geometry_msgs_msg_InertiaStamped_encode(roswasmc_bounded_2_geometry_msgs_msg_InertiaStamped const* value,
                                                                                  void* output,
                                                                                  size_t capacity,
                                                                                  size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_geometry_msgs_msg_InertiaStamped_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_geometry_msgs_msg_InertiaStamped_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_geometry_msgs_msg_InertiaStamped_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_geometry_msgs_msg_InertiaStamped_decode(void const* input, size_t length, roswasmc_bounded_2_geometry_msgs_msg_InertiaStamped* value)
{
    roswasmc_bounded_2_geometry_msgs_msg_InertiaStamped next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 92u || length > 220u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_InertiaStamped_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
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
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSESTAMPED)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSESTAMPED_0 != 0x1aeb56a4UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSESTAMPED_1 != 0xcb997298UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSESTAMPED_2 != 0x9e4a0898UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSESTAMPED_3 != 0x58010893UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSESTAMPED_4 != 0x10e16b48UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSESTAMPED_5 != 0xd6fac7feUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSESTAMPED_6 != 0xee32eda1UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSESTAMPED_7 != 0x884f68d5UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSESTAMPED 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSESTAMPED_0 0x1aeb56a4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSESTAMPED_1 0xcb997298UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSESTAMPED_2 0x9e4a0898UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSESTAMPED_3 0x58010893UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSESTAMPED_4 0x10e16b48UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSESTAMPED_5 0xd6fac7feUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSESTAMPED_6 0xee32eda1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSESTAMPED_7 0x884f68d5UL

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

# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSESTAMPED_MAX_WIRE_BYTES 196u
# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSESTAMPED_MIN_WIRE_BYTES 68u
# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSESTAMPED_CODEC_IDENTITY "UWVMROS1_71abdc844f18f02f45a354967a5f1c644fb20dc14cbc61c64aa41b927e0712a2"

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
    if(!value || (length && !input) || length < 68u || length > 196u || uwvm_bounded_overlap(value, sizeof *value, input, length))
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
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTSTAMPED)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTSTAMPED_0 != 0xd748cabbUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTSTAMPED_1 != 0x1a79b1c0UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTSTAMPED_2 != 0x749bbac5UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTSTAMPED_3 != 0xfd198407UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTSTAMPED_4 != 0xb6a2bf54UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTSTAMPED_5 != 0x02a5435fUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTSTAMPED_6 != 0x5e3f2640UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTSTAMPED_7 != 0xe657d9f5UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTSTAMPED 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTSTAMPED_0 0xd748cabbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTSTAMPED_1 0x1a79b1c0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTSTAMPED_2 0x749bbac5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTSTAMPED_3 0xfd198407UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTSTAMPED_4 0xb6a2bf54UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTSTAMPED_5 0x02a5435fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTSTAMPED_6 0x5e3f2640UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTSTAMPED_7 0xe657d9f5UL

/** @brief Complete ROS2 geometry_msgs/msg/TwistStamped value; no field projects away native data. */
typedef struct roswasmc_bounded_2_geometry_msgs_msg_TwistStamped
{
    /**
     * @brief A twist with reference coordinate frame and timestamp
     * @details Original geometry_msgs/msg/TwistStamped.header; native type std_msgs/msg/Header. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_2_std_msgs_msg_Header header;
    /**
     * @brief Retain the complete original geometry_msgs/msg/Twist field.
     * @details Original geometry_msgs/msg/TwistStamped.twist; native type geometry_msgs/msg/Twist. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_2_geometry_msgs_msg_Twist twist;
} roswasmc_bounded_2_geometry_msgs_msg_TwistStamped;

# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTSTAMPED_MAX_WIRE_BYTES 188u
# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTSTAMPED_MIN_WIRE_BYTES 60u
# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTSTAMPED_CODEC_IDENTITY "UWVMROS1_7448b885388ff3454de1a35b8c5c895ee58b791267b435df1e4cf7c1eee0f573"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_geometry_msgs_msg_TwistStamped_valid(roswasmc_bounded_2_geometry_msgs_msg_TwistStamped const* value)
{
    if(!value)
    {
        return 0;
    }
    if(!roswasmc_bounded_2_std_msgs_msg_Header_valid(&value->header))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_Twist_valid(&value->twist))
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_2_geometry_msgs_msg_TwistStamped_wire_size(roswasmc_bounded_2_geometry_msgs_msg_TwistStamped const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&value->header);
    n += roswasmc_bounded_2_geometry_msgs_msg_Twist_wire_size(&value->twist);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_2_geometry_msgs_msg_TwistStamped_write_fields(roswasmc_bounded_2_geometry_msgs_msg_TwistStamped const* value,
                                                                                  unsigned char* p,
                                                                                  size_t* offset)
{
    roswasmc_bounded_2_std_msgs_msg_Header_write_fields(&value->header, p, offset);
    roswasmc_bounded_2_geometry_msgs_msg_Twist_write_fields(&value->twist, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_2_geometry_msgs_msg_TwistStamped_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_2_geometry_msgs_msg_TwistStamped* value)
{
    if(!roswasmc_bounded_2_std_msgs_msg_Header_read_fields(p, n, offset, &value->header))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_Twist_read_fields(p, n, offset, &value->twist))
    {
        return 0;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_TwistStamped_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_2_geometry_msgs_msg_TwistStamped_encode(roswasmc_bounded_2_geometry_msgs_msg_TwistStamped const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_geometry_msgs_msg_TwistStamped_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_geometry_msgs_msg_TwistStamped_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_geometry_msgs_msg_TwistStamped_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_geometry_msgs_msg_TwistStamped_decode(void const* input, size_t length, roswasmc_bounded_2_geometry_msgs_msg_TwistStamped* value)
{
    roswasmc_bounded_2_geometry_msgs_msg_TwistStamped next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 60u || length > 188u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_TwistStamped_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
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
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_ACCELSTAMPED_0 != 0x9b6d51f3UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_ACCELSTAMPED_1 != 0xfbbdecc9UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_ACCELSTAMPED_2 != 0xaf853de5UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_ACCELSTAMPED_3 != 0xb2b7190cUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_ACCELSTAMPED_4 != 0x5c8c0c17UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_ACCELSTAMPED_5 != 0x4e7e3d64UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_ACCELSTAMPED_6 != 0x9b978ca6UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_ACCELSTAMPED_7 != 0xcbc18ebcUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_ACCELSTAMPED 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_ACCELSTAMPED_0 0x9b6d51f3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_ACCELSTAMPED_1 0xfbbdecc9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_ACCELSTAMPED_2 0xaf853de5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_ACCELSTAMPED_3 0xb2b7190cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_ACCELSTAMPED_4 0x5c8c0c17UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_ACCELSTAMPED_5 0x4e7e3d64UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_ACCELSTAMPED_6 0x9b978ca6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_ACCELSTAMPED_7 0xcbc18ebcUL

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

# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_ACCELSTAMPED_MAX_WIRE_BYTES 188u
# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_ACCELSTAMPED_MIN_WIRE_BYTES 60u
# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_ACCELSTAMPED_CODEC_IDENTITY "UWVMROS1_c04d3ae310bd82f7c4c9f30c2ff185ab54989aa3adcc759c7d3eb19853819899"

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
    if(!value || (length && !input) || length < 60u || length > 188u || uwvm_bounded_overlap(value, sizeof *value, input, length))
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
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3STAMPED)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3STAMPED_0 != 0x1fb33c32UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3STAMPED_1 != 0xa40245faUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3STAMPED_2 != 0xf83f57aaUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3STAMPED_3 != 0xc11067f8UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3STAMPED_4 != 0x1269912cUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3STAMPED_5 != 0xbac15d38UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3STAMPED_6 != 0xe912d15dUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3STAMPED_7 != 0x5075206dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3STAMPED 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3STAMPED_0 0x1fb33c32UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3STAMPED_1 0xa40245faUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3STAMPED_2 0xf83f57aaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3STAMPED_3 0xc11067f8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3STAMPED_4 0x1269912cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3STAMPED_5 0xbac15d38UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3STAMPED_6 0xe912d15dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3STAMPED_7 0x5075206dUL

/** @brief Complete ROS2 geometry_msgs/msg/Vector3Stamped value; no field projects away native data. */
typedef struct roswasmc_bounded_2_geometry_msgs_msg_Vector3Stamped
{
    /**
     * @brief This represents a Vector3 with reference coordinate frame and timestamp Note that this
     * follows vector semantics with it always anchored at the origin, so the rotational elements of a
     * transform are the only parts applied when transforming.
     * @details Original geometry_msgs/msg/Vector3Stamped.header; native type std_msgs/msg/Header. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_2_std_msgs_msg_Header header;
    /**
     * @brief Retain the complete original geometry_msgs/msg/Vector3 field.
     * @details Original geometry_msgs/msg/Vector3Stamped.vector; native type geometry_msgs/msg/Vector3.
     * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_2_geometry_msgs_msg_Vector3 vector;
} roswasmc_bounded_2_geometry_msgs_msg_Vector3Stamped;

# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3STAMPED_MAX_WIRE_BYTES 164u
# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3STAMPED_MIN_WIRE_BYTES 36u
# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3STAMPED_CODEC_IDENTITY "UWVMROS1_c6b67646d3fc6d29c195637ea353dafa7085b2bdb55a15a8b65009200b5ed31b"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_geometry_msgs_msg_Vector3Stamped_valid(roswasmc_bounded_2_geometry_msgs_msg_Vector3Stamped const* value)
{
    if(!value)
    {
        return 0;
    }
    if(!roswasmc_bounded_2_std_msgs_msg_Header_valid(&value->header))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_Vector3_valid(&value->vector))
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_2_geometry_msgs_msg_Vector3Stamped_wire_size(roswasmc_bounded_2_geometry_msgs_msg_Vector3Stamped const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&value->header);
    n += roswasmc_bounded_2_geometry_msgs_msg_Vector3_wire_size(&value->vector);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_2_geometry_msgs_msg_Vector3Stamped_write_fields(roswasmc_bounded_2_geometry_msgs_msg_Vector3Stamped const* value,
                                                                                    unsigned char* p,
                                                                                    size_t* offset)
{
    roswasmc_bounded_2_std_msgs_msg_Header_write_fields(&value->header, p, offset);
    roswasmc_bounded_2_geometry_msgs_msg_Vector3_write_fields(&value->vector, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_2_geometry_msgs_msg_Vector3Stamped_read_fields(unsigned char const* p,
                                                                                  size_t n,
                                                                                  size_t* offset,
                                                                                  roswasmc_bounded_2_geometry_msgs_msg_Vector3Stamped* value)
{
    if(!roswasmc_bounded_2_std_msgs_msg_Header_read_fields(p, n, offset, &value->header))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_Vector3_read_fields(p, n, offset, &value->vector))
    {
        return 0;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_Vector3Stamped_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_2_geometry_msgs_msg_Vector3Stamped_encode(roswasmc_bounded_2_geometry_msgs_msg_Vector3Stamped const* value,
                                                                                  void* output,
                                                                                  size_t capacity,
                                                                                  size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_geometry_msgs_msg_Vector3Stamped_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_geometry_msgs_msg_Vector3Stamped_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_geometry_msgs_msg_Vector3Stamped_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_geometry_msgs_msg_Vector3Stamped_decode(void const* input, size_t length, roswasmc_bounded_2_geometry_msgs_msg_Vector3Stamped* value)
{
    roswasmc_bounded_2_geometry_msgs_msg_Vector3Stamped next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 36u || length > 164u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_Vector3Stamped_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_FRANKAROBOTSTATE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_FRANKAROBOTSTATE_0 != 0x756deb44UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_FRANKAROBOTSTATE_1 != 0x1fd93682UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_FRANKAROBOTSTATE_2 != 0x0f9b7f49UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_FRANKAROBOTSTATE_3 != 0xccbaf924UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_FRANKAROBOTSTATE_4 != 0xfd203de4UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_FRANKAROBOTSTATE_5 != 0x9e74e736UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_FRANKAROBOTSTATE_6 != 0xb7da20b2UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_FRANKAROBOTSTATE_7 != 0x68b024b1UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_FRANKAROBOTSTATE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_FRANKAROBOTSTATE_0 0x756deb44UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_FRANKAROBOTSTATE_1 0x1fd93682UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_FRANKAROBOTSTATE_2 0x0f9b7f49UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_FRANKAROBOTSTATE_3 0xccbaf924UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_FRANKAROBOTSTATE_4 0xfd203de4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_FRANKAROBOTSTATE_5 0x9e74e736UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_FRANKAROBOTSTATE_6 0xb7da20b2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_FRANKAROBOTSTATE_7 0x68b024b1UL

/** @brief Complete ROS2 franka_msgs/msg/FrankaRobotState value; no field projects away native data. */
typedef struct roswasmc_bounded_2_franka_msgs_msg_FrankaRobotState
{
    /**
     * @brief ## Default parts of the message
     * @details Original franka_msgs/msg/FrankaRobotState.header; native type std_msgs/msg/Header. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_2_std_msgs_msg_Header header;
    /**
     * @brief ## Indicates which dimensions have an active contact/collision flag raised
     * @details Original franka_msgs/msg/FrankaRobotState.collision_indicators; native type
     * franka_msgs/msg/CollisionIndicators. Scalar value. Storage belongs to the complete value and
     * acquires no ROS resource.
     */
    roswasmc_bounded_2_franka_msgs_msg_CollisionIndicators collision_indicators;
    /**
     * @brief ## The state of the arm in joint space The joint state consisting out of position (q),
     * velocity (dq) and effort (tau_J)
     * @details Original franka_msgs/msg/FrankaRobotState.measured_joint_state; native type
     * sensor_msgs/msg/JointState. Scalar value. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    roswasmc_bounded_2_sensor_msgs_msg_JointState measured_joint_state;
    /**
     * @brief The desired joint state consisting out of position (q_d), velocity (dq_d) and effort
     * (tau_J_d)
     * @details Original franka_msgs/msg/FrankaRobotState.desired_joint_state; native type
     * sensor_msgs/msg/JointState. Scalar value. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    roswasmc_bounded_2_sensor_msgs_msg_JointState desired_joint_state;
    /**
     * @brief The measured motor state of the joints consisting out of position (theta) and velocity
     * (dtheta)
     * @details Original franka_msgs/msg/FrankaRobotState.measured_joint_motor_state; native type
     * sensor_msgs/msg/JointState. Scalar value. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    roswasmc_bounded_2_sensor_msgs_msg_JointState measured_joint_motor_state;
    /**
     * @brief The desired joint acceleration
     * @details Original franka_msgs/msg/FrankaRobotState.ddq_d; native type float64. Exactly 7 elements.
     * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    double ddq_d[7];
    /**
     * @brief The derivative of the measured torque signal
     * @details Original franka_msgs/msg/FrankaRobotState.dtau_j; native type float64. Exactly 7 elements.
     * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    double dtau_j[7];
    /**
     * @brief Filtered external torque. The JointState consists out of effort (tau_ext_hat_filtered)
     * @details Original franka_msgs/msg/FrankaRobotState.tau_ext_hat_filtered; native type
     * sensor_msgs/msg/JointState. Scalar value. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    roswasmc_bounded_2_sensor_msgs_msg_JointState tau_ext_hat_filtered;
    /**
     * @brief ## The state of the elbow
     * @details Original franka_msgs/msg/FrankaRobotState.elbow; native type franka_msgs/msg/Elbow. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_2_franka_msgs_msg_Elbow elbow;
    /**
     * @brief ## The active wrenches acting on the stiffness frame expressed relative to stiffness frame
     * @details Original franka_msgs/msg/FrankaRobotState.k_f_ext_hat_k; native type
     * geometry_msgs/msg/WrenchStamped. Scalar value. Storage belongs to the complete value and acquires no
     * ROS resource.
     */
    roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped k_f_ext_hat_k;
    /**
     * @brief base frame
     * @details Original franka_msgs/msg/FrankaRobotState.o_f_ext_hat_k; native type
     * geometry_msgs/msg/WrenchStamped. Scalar value. Storage belongs to the complete value and acquires no
     * ROS resource.
     */
    roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped o_f_ext_hat_k;
    /**
     * @brief ## The different inertias of the arm The end-effector inertia
     * @details Original franka_msgs/msg/FrankaRobotState.inertia_ee; native type
     * geometry_msgs/msg/InertiaStamped. Scalar value. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    roswasmc_bounded_2_geometry_msgs_msg_InertiaStamped inertia_ee;
    /**
     * @brief The load inertia
     * @details Original franka_msgs/msg/FrankaRobotState.inertia_load; native type
     * geometry_msgs/msg/InertiaStamped. Scalar value. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    roswasmc_bounded_2_geometry_msgs_msg_InertiaStamped inertia_load;
    /**
     * @brief The total (end-effector + load) inertia
     * @details Original franka_msgs/msg/FrankaRobotState.inertia_total; native type
     * geometry_msgs/msg/InertiaStamped. Scalar value. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    roswasmc_bounded_2_geometry_msgs_msg_InertiaStamped inertia_total;
    /**
     * @brief ## The poses describing the transformations between different frames of the arm Measured end-
     * effector pose in base frame
     * @details Original franka_msgs/msg/FrankaRobotState.o_t_ee; native type
     * geometry_msgs/msg/PoseStamped. Scalar value. Storage belongs to the complete value and acquires no
     * ROS resource.
     */
    roswasmc_bounded_2_geometry_msgs_msg_PoseStamped o_t_ee;
    /**
     * @brief Last desired end-effector pose of motion generation in base frame
     * @details Original franka_msgs/msg/FrankaRobotState.o_t_ee_d; native type
     * geometry_msgs/msg/PoseStamped. Scalar value. Storage belongs to the complete value and acquires no
     * ROS resource.
     */
    roswasmc_bounded_2_geometry_msgs_msg_PoseStamped o_t_ee_d;
    /**
     * @brief Last commanded end-effector pose of motion generation in base frame
     * @details Original franka_msgs/msg/FrankaRobotState.o_t_ee_c; native type
     * geometry_msgs/msg/PoseStamped. Scalar value. Storage belongs to the complete value and acquires no
     * ROS resource.
     */
    roswasmc_bounded_2_geometry_msgs_msg_PoseStamped o_t_ee_c;
    /**
     * @brief Flange to end-effector frame
     * @details Original franka_msgs/msg/FrankaRobotState.f_t_ee; native type
     * geometry_msgs/msg/PoseStamped. Scalar value. Storage belongs to the complete value and acquires no
     * ROS resource.
     */
    roswasmc_bounded_2_geometry_msgs_msg_PoseStamped f_t_ee;
    /**
     * @brief End-effector to stiffness frame
     * @details Original franka_msgs/msg/FrankaRobotState.ee_t_k; native type
     * geometry_msgs/msg/PoseStamped. Scalar value. Storage belongs to the complete value and acquires no
     * ROS resource.
     */
    roswasmc_bounded_2_geometry_msgs_msg_PoseStamped ee_t_k;
    /**
     * @brief Desired end effector twist in base frame
     * @details Original franka_msgs/msg/FrankaRobotState.o_dp_ee_d; native type
     * geometry_msgs/msg/TwistStamped. Scalar value. Storage belongs to the complete value and acquires no
     * ROS resource.
     */
    roswasmc_bounded_2_geometry_msgs_msg_TwistStamped o_dp_ee_d;
    /**
     * @brief Last commanded end effector twist in base frame
     * @details Original franka_msgs/msg/FrankaRobotState.o_dp_ee_c; native type
     * geometry_msgs/msg/TwistStamped. Scalar value. Storage belongs to the complete value and acquires no
     * ROS resource.
     */
    roswasmc_bounded_2_geometry_msgs_msg_TwistStamped o_dp_ee_c;
    /**
     * @brief Last commanded end effector acceleration in base frame
     * @details Original franka_msgs/msg/FrankaRobotState.o_ddp_ee_c; native type
     * geometry_msgs/msg/AccelStamped. Scalar value. Storage belongs to the complete value and acquires no
     * ROS resource.
     */
    roswasmc_bounded_2_geometry_msgs_msg_AccelStamped o_ddp_ee_c;
    /**
     * @brief ## Additional information
     * @details Original franka_msgs/msg/FrankaRobotState.time; native type float64. Scalar value. Finite
     * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double time;
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_msgs/msg/FrankaRobotState.control_command_success_rate; native type
     * float64. Scalar value. Finite IEEE values; no implicit unit conversion. Storage belongs to the
     * complete value and acquires no ROS resource.
     */
    double control_command_success_rate;
    /**
     * @brief Retain the complete original uint8 field.
     * @details Original franka_msgs/msg/FrankaRobotState.robot_mode; native type uint8. Scalar value.
     * Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t robot_mode;
    /**
     * @brief Retain the complete original franka_msgs/msg/Errors field.
     * @details Original franka_msgs/msg/FrankaRobotState.current_errors; native type
     * franka_msgs/msg/Errors. Scalar value. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    roswasmc_bounded_2_franka_msgs_msg_Errors current_errors;
    /**
     * @brief Retain the complete original franka_msgs/msg/Errors field.
     * @details Original franka_msgs/msg/FrankaRobotState.last_motion_errors; native type
     * franka_msgs/msg/Errors. Scalar value. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    roswasmc_bounded_2_franka_msgs_msg_Errors last_motion_errors;
    /**
     * @brief ## Translational acceleration data from the joint-mounted accelerometers, expressed in the
     * "<prefix>link<i>_accelerometer_<side>" frame named in each header (joints 1 through 6, mounted on
     * links 0 through 5; no accelerometer on joint 7)
     * @details Original franka_msgs/msg/FrankaRobotState.accelerometer_top; native type
     * geometry_msgs/msg/Vector3Stamped. Exactly 6 elements. Storage belongs to the complete value and
     * acquires no ROS resource.
     */
    roswasmc_bounded_2_geometry_msgs_msg_Vector3Stamped accelerometer_top[6];
    /**
     * @brief Retain the complete original geometry_msgs/msg/Vector3Stamped field.
     * @details Original franka_msgs/msg/FrankaRobotState.accelerometer_bottom; native type
     * geometry_msgs/msg/Vector3Stamped. Exactly 6 elements. Storage belongs to the complete value and
     * acquires no ROS resource.
     */
    roswasmc_bounded_2_geometry_msgs_msg_Vector3Stamped accelerometer_bottom[6];
} roswasmc_bounded_2_franka_msgs_msg_FrankaRobotState;

# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_FRANKAROBOTSTATE_MAX_WIRE_BYTES 10169u
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_FRANKAROBOTSTATE_MIN_WIRE_BYTES 1961u
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_FRANKAROBOTSTATE_CODEC_IDENTITY "UWVMROS1_0fdc5c99a098f4c891956bb6cd81505995d5dda41a740f88ee456f48f6e07282"
/** @brief Original scalar constant ROBOT_MODE_OTHER=0; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_FRANKAROBOTSTATE_ROBOT_MODE_OTHER UINT32_C(0)
/** @brief Original scalar constant ROBOT_MODE_IDLE=1; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_FRANKAROBOTSTATE_ROBOT_MODE_IDLE UINT32_C(1)
/** @brief Original scalar constant ROBOT_MODE_MOVE=2; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_FRANKAROBOTSTATE_ROBOT_MODE_MOVE UINT32_C(2)
/** @brief Original scalar constant ROBOT_MODE_GUIDING=3; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_FRANKAROBOTSTATE_ROBOT_MODE_GUIDING UINT32_C(3)
/** @brief Original scalar constant ROBOT_MODE_REFLEX=4; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_FRANKAROBOTSTATE_ROBOT_MODE_REFLEX UINT32_C(4)
/** @brief Original scalar constant ROBOT_MODE_USER_STOPPED=5; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_FRANKAROBOTSTATE_ROBOT_MODE_USER_STOPPED UINT32_C(5)
/** @brief Original scalar constant ROBOT_MODE_AUTOMATIC_ERROR_RECOVERY=6; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_FRANKAROBOTSTATE_ROBOT_MODE_AUTOMATIC_ERROR_RECOVERY UINT32_C(6)

/** @brief Explicit declared-default initialization; ordinary C/C++ zero aggregates stay zero.
 * Nested/fixed elements are initialized independently; sequence lengths stay zero.
 * This initializer performs no I/O, registration, allocation or capability operation. */
inline static uint32_t roswasmc_bounded_2_franka_msgs_msg_FrankaRobotState_default(roswasmc_bounded_2_franka_msgs_msg_FrankaRobotState* value)
{
    roswasmc_bounded_2_franka_msgs_msg_FrankaRobotState next = {0};
    if(!value)
    {
        return UWVM_BOUNDED_INVALID;
    }
    (void)roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_default(&next.o_t_ee);
    (void)roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_default(&next.o_t_ee_d);
    (void)roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_default(&next.o_t_ee_c);
    (void)roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_default(&next.f_t_ee);
    (void)roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_default(&next.ee_t_k);
    *value = next;
    return 0;
}

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_franka_msgs_msg_FrankaRobotState_valid(roswasmc_bounded_2_franka_msgs_msg_FrankaRobotState const* value)
{
    if(!value)
    {
        return 0;
    }
    if(!roswasmc_bounded_2_std_msgs_msg_Header_valid(&value->header))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_franka_msgs_msg_CollisionIndicators_valid(&value->collision_indicators))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_sensor_msgs_msg_JointState_valid(&value->measured_joint_state))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_sensor_msgs_msg_JointState_valid(&value->desired_joint_state))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_sensor_msgs_msg_JointState_valid(&value->measured_joint_motor_state))
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->ddq_d[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->dtau_j[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    if(!roswasmc_bounded_2_sensor_msgs_msg_JointState_valid(&value->tau_ext_hat_filtered))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_franka_msgs_msg_Elbow_valid(&value->elbow))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_valid(&value->k_f_ext_hat_k))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_valid(&value->o_f_ext_hat_k))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_InertiaStamped_valid(&value->inertia_ee))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_InertiaStamped_valid(&value->inertia_load))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_InertiaStamped_valid(&value->inertia_total))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_valid(&value->o_t_ee))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_valid(&value->o_t_ee_d))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_valid(&value->o_t_ee_c))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_valid(&value->f_t_ee))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_valid(&value->ee_t_k))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_TwistStamped_valid(&value->o_dp_ee_d))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_TwistStamped_valid(&value->o_dp_ee_c))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_AccelStamped_valid(&value->o_ddp_ee_c))
    {
        return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->time, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
        {
            return 0;
        }
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->control_command_success_rate, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
        {
            return 0;
        }
    }
    if(!roswasmc_bounded_2_franka_msgs_msg_Errors_valid(&value->current_errors))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_franka_msgs_msg_Errors_valid(&value->last_motion_errors))
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            if(!roswasmc_bounded_2_geometry_msgs_msg_Vector3Stamped_valid(&value->accelerometer_top[i]))
            {
                return 0;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            if(!roswasmc_bounded_2_geometry_msgs_msg_Vector3Stamped_valid(&value->accelerometer_bottom[i]))
            {
                return 0;
            }
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_2_franka_msgs_msg_FrankaRobotState_wire_size(roswasmc_bounded_2_franka_msgs_msg_FrankaRobotState const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&value->header);
    n += roswasmc_bounded_2_franka_msgs_msg_CollisionIndicators_wire_size(&value->collision_indicators);
    n += roswasmc_bounded_2_sensor_msgs_msg_JointState_wire_size(&value->measured_joint_state);
    n += roswasmc_bounded_2_sensor_msgs_msg_JointState_wire_size(&value->desired_joint_state);
    n += roswasmc_bounded_2_sensor_msgs_msg_JointState_wire_size(&value->measured_joint_motor_state);
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            n += 8;
        }
    }
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            n += 8;
        }
    }
    n += roswasmc_bounded_2_sensor_msgs_msg_JointState_wire_size(&value->tau_ext_hat_filtered);
    n += roswasmc_bounded_2_franka_msgs_msg_Elbow_wire_size(&value->elbow);
    n += roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_wire_size(&value->k_f_ext_hat_k);
    n += roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_wire_size(&value->o_f_ext_hat_k);
    n += roswasmc_bounded_2_geometry_msgs_msg_InertiaStamped_wire_size(&value->inertia_ee);
    n += roswasmc_bounded_2_geometry_msgs_msg_InertiaStamped_wire_size(&value->inertia_load);
    n += roswasmc_bounded_2_geometry_msgs_msg_InertiaStamped_wire_size(&value->inertia_total);
    n += roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_wire_size(&value->o_t_ee);
    n += roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_wire_size(&value->o_t_ee_d);
    n += roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_wire_size(&value->o_t_ee_c);
    n += roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_wire_size(&value->f_t_ee);
    n += roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_wire_size(&value->ee_t_k);
    n += roswasmc_bounded_2_geometry_msgs_msg_TwistStamped_wire_size(&value->o_dp_ee_d);
    n += roswasmc_bounded_2_geometry_msgs_msg_TwistStamped_wire_size(&value->o_dp_ee_c);
    n += roswasmc_bounded_2_geometry_msgs_msg_AccelStamped_wire_size(&value->o_ddp_ee_c);
    n += 8;
    n += 8;
    n += 1;
    n += roswasmc_bounded_2_franka_msgs_msg_Errors_wire_size(&value->current_errors);
    n += roswasmc_bounded_2_franka_msgs_msg_Errors_wire_size(&value->last_motion_errors);
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            n += roswasmc_bounded_2_geometry_msgs_msg_Vector3Stamped_wire_size(&value->accelerometer_top[i]);
        }
    }
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            n += roswasmc_bounded_2_geometry_msgs_msg_Vector3Stamped_wire_size(&value->accelerometer_bottom[i]);
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_2_franka_msgs_msg_FrankaRobotState_write_fields(roswasmc_bounded_2_franka_msgs_msg_FrankaRobotState const* value,
                                                                                    unsigned char* p,
                                                                                    size_t* offset)
{
    roswasmc_bounded_2_std_msgs_msg_Header_write_fields(&value->header, p, offset);
    roswasmc_bounded_2_franka_msgs_msg_CollisionIndicators_write_fields(&value->collision_indicators, p, offset);
    roswasmc_bounded_2_sensor_msgs_msg_JointState_write_fields(&value->measured_joint_state, p, offset);
    roswasmc_bounded_2_sensor_msgs_msg_JointState_write_fields(&value->desired_joint_state, p, offset);
    roswasmc_bounded_2_sensor_msgs_msg_JointState_write_fields(&value->measured_joint_motor_state, p, offset);
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->ddq_d[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->dtau_j[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    roswasmc_bounded_2_sensor_msgs_msg_JointState_write_fields(&value->tau_ext_hat_filtered, p, offset);
    roswasmc_bounded_2_franka_msgs_msg_Elbow_write_fields(&value->elbow, p, offset);
    roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_write_fields(&value->k_f_ext_hat_k, p, offset);
    roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_write_fields(&value->o_f_ext_hat_k, p, offset);
    roswasmc_bounded_2_geometry_msgs_msg_InertiaStamped_write_fields(&value->inertia_ee, p, offset);
    roswasmc_bounded_2_geometry_msgs_msg_InertiaStamped_write_fields(&value->inertia_load, p, offset);
    roswasmc_bounded_2_geometry_msgs_msg_InertiaStamped_write_fields(&value->inertia_total, p, offset);
    roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_write_fields(&value->o_t_ee, p, offset);
    roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_write_fields(&value->o_t_ee_d, p, offset);
    roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_write_fields(&value->o_t_ee_c, p, offset);
    roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_write_fields(&value->f_t_ee, p, offset);
    roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_write_fields(&value->ee_t_k, p, offset);
    roswasmc_bounded_2_geometry_msgs_msg_TwistStamped_write_fields(&value->o_dp_ee_d, p, offset);
    roswasmc_bounded_2_geometry_msgs_msg_TwistStamped_write_fields(&value->o_dp_ee_c, p, offset);
    roswasmc_bounded_2_geometry_msgs_msg_AccelStamped_write_fields(&value->o_ddp_ee_c, p, offset);
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->time, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->control_command_success_rate, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->robot_mode, 1);
    *offset += 1;
    roswasmc_bounded_2_franka_msgs_msg_Errors_write_fields(&value->current_errors, p, offset);
    roswasmc_bounded_2_franka_msgs_msg_Errors_write_fields(&value->last_motion_errors, p, offset);
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            roswasmc_bounded_2_geometry_msgs_msg_Vector3Stamped_write_fields(&value->accelerometer_top[i], p, offset);
        }
    }
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            roswasmc_bounded_2_geometry_msgs_msg_Vector3Stamped_write_fields(&value->accelerometer_bottom[i], p, offset);
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_2_franka_msgs_msg_FrankaRobotState_read_fields(unsigned char const* p,
                                                                                  size_t n,
                                                                                  size_t* offset,
                                                                                  roswasmc_bounded_2_franka_msgs_msg_FrankaRobotState* value)
{
    if(!roswasmc_bounded_2_std_msgs_msg_Header_read_fields(p, n, offset, &value->header))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_franka_msgs_msg_CollisionIndicators_read_fields(p, n, offset, &value->collision_indicators))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_sensor_msgs_msg_JointState_read_fields(p, n, offset, &value->measured_joint_state))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_sensor_msgs_msg_JointState_read_fields(p, n, offset, &value->desired_joint_state))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_sensor_msgs_msg_JointState_read_fields(p, n, offset, &value->measured_joint_motor_state))
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->ddq_d[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->dtau_j[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    if(!roswasmc_bounded_2_sensor_msgs_msg_JointState_read_fields(p, n, offset, &value->tau_ext_hat_filtered))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_franka_msgs_msg_Elbow_read_fields(p, n, offset, &value->elbow))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_read_fields(p, n, offset, &value->k_f_ext_hat_k))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_read_fields(p, n, offset, &value->o_f_ext_hat_k))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_InertiaStamped_read_fields(p, n, offset, &value->inertia_ee))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_InertiaStamped_read_fields(p, n, offset, &value->inertia_load))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_InertiaStamped_read_fields(p, n, offset, &value->inertia_total))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_read_fields(p, n, offset, &value->o_t_ee))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_read_fields(p, n, offset, &value->o_t_ee_d))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_read_fields(p, n, offset, &value->o_t_ee_c))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_read_fields(p, n, offset, &value->f_t_ee))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_read_fields(p, n, offset, &value->ee_t_k))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_TwistStamped_read_fields(p, n, offset, &value->o_dp_ee_d))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_TwistStamped_read_fields(p, n, offset, &value->o_dp_ee_c))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_AccelStamped_read_fields(p, n, offset, &value->o_ddp_ee_c))
    {
        return 0;
    }
    if(*offset > n || n - *offset < 8)
    {
        return 0;
    }
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->time, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
    {
        return 0;
    }
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->control_command_success_rate, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->robot_mode, &bits, 1);
    }
    *offset += 1;
    if(!roswasmc_bounded_2_franka_msgs_msg_Errors_read_fields(p, n, offset, &value->current_errors))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_franka_msgs_msg_Errors_read_fields(p, n, offset, &value->last_motion_errors))
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            if(!roswasmc_bounded_2_geometry_msgs_msg_Vector3Stamped_read_fields(p, n, offset, &value->accelerometer_top[i]))
            {
                return 0;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            if(!roswasmc_bounded_2_geometry_msgs_msg_Vector3Stamped_read_fields(p, n, offset, &value->accelerometer_bottom[i]))
            {
                return 0;
            }
        }
    }
    return roswasmc_bounded_2_franka_msgs_msg_FrankaRobotState_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_2_franka_msgs_msg_FrankaRobotState_encode(roswasmc_bounded_2_franka_msgs_msg_FrankaRobotState const* value,
                                                                                  void* output,
                                                                                  size_t capacity,
                                                                                  size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_franka_msgs_msg_FrankaRobotState_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_franka_msgs_msg_FrankaRobotState_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_franka_msgs_msg_FrankaRobotState_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_franka_msgs_msg_FrankaRobotState_decode(void const* input, size_t length, roswasmc_bounded_2_franka_msgs_msg_FrankaRobotState* value)
{
    roswasmc_bounded_2_franka_msgs_msg_FrankaRobotState next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 1961u || length > 10169u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_franka_msgs_msg_FrankaRobotState_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETCARTESIANSTIFFNESS_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETCARTESIANSTIFFNESS_REQUEST_0 != 0xd98149b1UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETCARTESIANSTIFFNESS_REQUEST_1 != 0x3586ceb3UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETCARTESIANSTIFFNESS_REQUEST_2 != 0x0677ddd3UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETCARTESIANSTIFFNESS_REQUEST_3 != 0x96fc3848UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETCARTESIANSTIFFNESS_REQUEST_4 != 0x1f04bf2dUL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETCARTESIANSTIFFNESS_REQUEST_5 != 0xa1b6f0e7UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETCARTESIANSTIFFNESS_REQUEST_6 != 0x445da837UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETCARTESIANSTIFFNESS_REQUEST_7 != 0x72e9cfe2UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETCARTESIANSTIFFNESS_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETCARTESIANSTIFFNESS_REQUEST_0 0xd98149b1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETCARTESIANSTIFFNESS_REQUEST_1 0x3586ceb3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETCARTESIANSTIFFNESS_REQUEST_2 0x0677ddd3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETCARTESIANSTIFFNESS_REQUEST_3 0x96fc3848UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETCARTESIANSTIFFNESS_REQUEST_4 0x1f04bf2dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETCARTESIANSTIFFNESS_REQUEST_5 0xa1b6f0e7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETCARTESIANSTIFFNESS_REQUEST_6 0x445da837UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETCARTESIANSTIFFNESS_REQUEST_7 0x72e9cfe2UL

/** @brief Complete ROS2 franka_msgs/srv/SetCartesianStiffness_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Request
{
    /**
     * @brief Cartesian stiffness represented as (x, y, z, roll, pitch, yaw). The values are used in the
     * direction of the stiffness frame.
     * @details Original franka_msgs/srv/SetCartesianStiffness_Request.cartesian_stiffness; native type
     * float64. Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
     * complete value and acquires no ROS resource.
     */
    double cartesian_stiffness[6];
} roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Request;

# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETCARTESIANSTIFFNESS_REQUEST_MAX_WIRE_BYTES 48u
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETCARTESIANSTIFFNESS_REQUEST_MIN_WIRE_BYTES 48u
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETCARTESIANSTIFFNESS_REQUEST_CODEC_IDENTITY                                                                       \
     "UWVMROS1_ae78b9887a5419225cfe0727bac83d8c53f789acd53bd47f024485b02aa98260"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int
    roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Request_valid(roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Request const* value)
{
    if(!value)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->cartesian_stiffness[i], 8);
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
    roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Request_wire_size(roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Request const* value)
{
    size_t n = 0;
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            n += 8;
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Request_write_fields(roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Request const* value,
                                                                                  unsigned char* p,
                                                                                  size_t* offset)
{
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->cartesian_stiffness[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int
    roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Request_read_fields(unsigned char const* p,
                                                                                 size_t n,
                                                                                 size_t* offset,
                                                                                 roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Request* value)
{
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->cartesian_stiffness[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    return roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Request_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Request_encode(roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Request const* value,
                                                                            void* output,
                                                                            size_t capacity,
                                                                            size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Request_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Request_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Request_decode(void const* input,
                                                                            size_t length,
                                                                            roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Request* value)
{
    roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 48u || length > 48u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETCARTESIANSTIFFNESS_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETCARTESIANSTIFFNESS_RESPONSE_0 != 0xdd71e46fUL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETCARTESIANSTIFFNESS_RESPONSE_1 != 0xa696ceffUL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETCARTESIANSTIFFNESS_RESPONSE_2 != 0x82821debUL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETCARTESIANSTIFFNESS_RESPONSE_3 != 0x0f9ddbb3UL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETCARTESIANSTIFFNESS_RESPONSE_4 != 0x69e09687UL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETCARTESIANSTIFFNESS_RESPONSE_5 != 0x9f0b9f0aUL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETCARTESIANSTIFFNESS_RESPONSE_6 != 0x9cffbba2UL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETCARTESIANSTIFFNESS_RESPONSE_7 != 0x3e078565UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETCARTESIANSTIFFNESS_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETCARTESIANSTIFFNESS_RESPONSE_0 0xdd71e46fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETCARTESIANSTIFFNESS_RESPONSE_1 0xa696ceffUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETCARTESIANSTIFFNESS_RESPONSE_2 0x82821debUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETCARTESIANSTIFFNESS_RESPONSE_3 0x0f9ddbb3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETCARTESIANSTIFFNESS_RESPONSE_4 0x69e09687UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETCARTESIANSTIFFNESS_RESPONSE_5 0x9f0b9f0aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETCARTESIANSTIFFNESS_RESPONSE_6 0x9cffbba2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETCARTESIANSTIFFNESS_RESPONSE_7 0x3e078565UL

/** @brief UTF-8 byte storage for franka_msgs/srv/SetCartesianStiffness_Response.error; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Response_error_text;

/** @brief Complete ROS2 franka_msgs/srv/SetCartesianStiffness_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Response
{
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/srv/SetCartesianStiffness_Response.success; native type bool. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t success;
    /**
     * @brief Retain the complete original string field.
     * @details Original franka_msgs/srv/SetCartesianStiffness_Response.error; native type string. Scalar
     * value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Response_error_text error;
} roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Response;

# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETCARTESIANSTIFFNESS_RESPONSE_MAX_WIRE_BYTES 261u
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETCARTESIANSTIFFNESS_RESPONSE_MIN_WIRE_BYTES 5u
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETCARTESIANSTIFFNESS_RESPONSE_CODEC_IDENTITY                                                                      \
     "UWVMROS1_3194f7469bbf228e653f5a93336fd5de4a1b2d7c1fe9542f3fadc8ad4fd51afa"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int
    roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Response_valid(roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Response const* value)
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
inline static size_t
    roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Response_wire_size(roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Response const* value)
{
    size_t n = 0;
    n += 1;
    n += 4 + value->error.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Response_write_fields(
    roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Response const* value,
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
inline static int
    roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Response_read_fields(unsigned char const* p,
                                                                                  size_t n,
                                                                                  size_t* offset,
                                                                                  roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Response* value)
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
    return roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Response_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Response_encode(roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Response const* value,
                                                                             void* output,
                                                                             size_t capacity,
                                                                             size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Response_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Response_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Response_decode(void const* input,
                                                                             size_t length,
                                                                             roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Response* value)
{
    roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 5u || length > 261u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFORCETORQUECOLLISIONBEHAVIOR_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFORCETORQUECOLLISIONBEHAVIOR_REQUEST_0 != 0xecdcd1a1UL ||                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFORCETORQUECOLLISIONBEHAVIOR_REQUEST_1 != 0x1475b23eUL ||                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFORCETORQUECOLLISIONBEHAVIOR_REQUEST_2 != 0x22482b5cUL ||                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFORCETORQUECOLLISIONBEHAVIOR_REQUEST_3 != 0x8945213bUL ||                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFORCETORQUECOLLISIONBEHAVIOR_REQUEST_4 != 0x90bd83c3UL ||                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFORCETORQUECOLLISIONBEHAVIOR_REQUEST_5 != 0x428271c3UL ||                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFORCETORQUECOLLISIONBEHAVIOR_REQUEST_6 != 0xdff2c55fUL ||                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFORCETORQUECOLLISIONBEHAVIOR_REQUEST_7 != 0xafd78358UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFORCETORQUECOLLISIONBEHAVIOR_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFORCETORQUECOLLISIONBEHAVIOR_REQUEST_0 0xecdcd1a1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFORCETORQUECOLLISIONBEHAVIOR_REQUEST_1 0x1475b23eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFORCETORQUECOLLISIONBEHAVIOR_REQUEST_2 0x22482b5cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFORCETORQUECOLLISIONBEHAVIOR_REQUEST_3 0x8945213bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFORCETORQUECOLLISIONBEHAVIOR_REQUEST_4 0x90bd83c3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFORCETORQUECOLLISIONBEHAVIOR_REQUEST_5 0x428271c3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFORCETORQUECOLLISIONBEHAVIOR_REQUEST_6 0xdff2c55fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFORCETORQUECOLLISIONBEHAVIOR_REQUEST_7 0xafd78358UL

/** @brief Complete ROS2 franka_msgs/srv/SetForceTorqueCollisionBehavior_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Request
{
    /**
     * @brief Retain the complete original float64 field.
     * @details Original
     * franka_msgs/srv/SetForceTorqueCollisionBehavior_Request.lower_torque_thresholds_nominal; native type
     * float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
     * complete value and acquires no ROS resource.
     */
    double lower_torque_thresholds_nominal[7];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original
     * franka_msgs/srv/SetForceTorqueCollisionBehavior_Request.upper_torque_thresholds_nominal; native type
     * float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
     * complete value and acquires no ROS resource.
     */
    double upper_torque_thresholds_nominal[7];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original
     * franka_msgs/srv/SetForceTorqueCollisionBehavior_Request.lower_force_thresholds_nominal; native type
     * float64. Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
     * complete value and acquires no ROS resource.
     */
    double lower_force_thresholds_nominal[6];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original
     * franka_msgs/srv/SetForceTorqueCollisionBehavior_Request.upper_force_thresholds_nominal; native type
     * float64. Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
     * complete value and acquires no ROS resource.
     */
    double upper_force_thresholds_nominal[6];
} roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Request;

# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFORCETORQUECOLLISIONBEHAVIOR_REQUEST_MAX_WIRE_BYTES 208u
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFORCETORQUECOLLISIONBEHAVIOR_REQUEST_MIN_WIRE_BYTES 208u
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFORCETORQUECOLLISIONBEHAVIOR_REQUEST_CODEC_IDENTITY                                                             \
     "UWVMROS1_829642a9ea418a53f7252f7489bd7f5ed976bf3689443012daf216db895cf99c"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Request_valid(
    roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Request const* value)
{
    if(!value)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->lower_torque_thresholds_nominal[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->upper_torque_thresholds_nominal[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->lower_force_thresholds_nominal[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->upper_force_thresholds_nominal[i], 8);
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
inline static size_t roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Request_wire_size(
    roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Request const* value)
{
    size_t n = 0;
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            n += 8;
        }
    }
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            n += 8;
        }
    }
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            n += 8;
        }
    }
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            n += 8;
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Request_write_fields(
    roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Request const* value,
    unsigned char* p,
    size_t* offset)
{
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->lower_torque_thresholds_nominal[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->upper_torque_thresholds_nominal[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->lower_force_thresholds_nominal[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->upper_force_thresholds_nominal[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Request_read_fields(
    unsigned char const* p,
    size_t n,
    size_t* offset,
    roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Request* value)
{
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->lower_torque_thresholds_nominal[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->upper_torque_thresholds_nominal[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->lower_force_thresholds_nominal[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->upper_force_thresholds_nominal[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    return roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Request_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Request_encode(
    roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Request const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Request_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Request_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Request_decode(
    void const* input,
    size_t length,
    roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Request* value)
{
    roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 208u || length > 208u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Request_read_fields((unsigned char const*)input, length, &offset, &next) ||
       offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFORCETORQUECOLLISIONBEHAVIOR_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFORCETORQUECOLLISIONBEHAVIOR_RESPONSE_0 != 0x7ca48e69UL ||                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFORCETORQUECOLLISIONBEHAVIOR_RESPONSE_1 != 0x10907c62UL ||                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFORCETORQUECOLLISIONBEHAVIOR_RESPONSE_2 != 0xb8c1abe9UL ||                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFORCETORQUECOLLISIONBEHAVIOR_RESPONSE_3 != 0x40dee25eUL ||                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFORCETORQUECOLLISIONBEHAVIOR_RESPONSE_4 != 0x7412b515UL ||                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFORCETORQUECOLLISIONBEHAVIOR_RESPONSE_5 != 0x07a43276UL ||                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFORCETORQUECOLLISIONBEHAVIOR_RESPONSE_6 != 0x3d6fbb8bUL ||                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFORCETORQUECOLLISIONBEHAVIOR_RESPONSE_7 != 0x19944a73UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFORCETORQUECOLLISIONBEHAVIOR_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFORCETORQUECOLLISIONBEHAVIOR_RESPONSE_0 0x7ca48e69UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFORCETORQUECOLLISIONBEHAVIOR_RESPONSE_1 0x10907c62UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFORCETORQUECOLLISIONBEHAVIOR_RESPONSE_2 0xb8c1abe9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFORCETORQUECOLLISIONBEHAVIOR_RESPONSE_3 0x40dee25eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFORCETORQUECOLLISIONBEHAVIOR_RESPONSE_4 0x7412b515UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFORCETORQUECOLLISIONBEHAVIOR_RESPONSE_5 0x07a43276UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFORCETORQUECOLLISIONBEHAVIOR_RESPONSE_6 0x3d6fbb8bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFORCETORQUECOLLISIONBEHAVIOR_RESPONSE_7 0x19944a73UL

/** @brief UTF-8 byte storage for franka_msgs/srv/SetForceTorqueCollisionBehavior_Response.error; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Response_error_text;

/** @brief Complete ROS2 franka_msgs/srv/SetForceTorqueCollisionBehavior_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Response
{
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/srv/SetForceTorqueCollisionBehavior_Response.success; native type
     * bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t success;
    /**
     * @brief Retain the complete original string field.
     * @details Original franka_msgs/srv/SetForceTorqueCollisionBehavior_Response.error; native type
     * string. Scalar value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete
     * value and acquires no ROS resource.
     */
    roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Response_error_text error;
} roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Response;

# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFORCETORQUECOLLISIONBEHAVIOR_RESPONSE_MAX_WIRE_BYTES 261u
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFORCETORQUECOLLISIONBEHAVIOR_RESPONSE_MIN_WIRE_BYTES 5u
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFORCETORQUECOLLISIONBEHAVIOR_RESPONSE_CODEC_IDENTITY                                                            \
     "UWVMROS1_7d5640c34446e4262a8c00f0b242b68c0095688f0208fd692f21d855003eb47a"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Response_valid(
    roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Response const* value)
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
inline static size_t roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Response_wire_size(
    roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Response const* value)
{
    size_t n = 0;
    n += 1;
    n += 4 + value->error.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Response_write_fields(
    roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Response const* value,
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
inline static int roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Response_read_fields(
    unsigned char const* p,
    size_t n,
    size_t* offset,
    roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Response* value)
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
    return roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Response_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Response_encode(
    roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Response const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Response_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Response_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Response_decode(
    void const* input,
    size_t length,
    roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Response* value)
{
    roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 5u || length > 261u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Response_read_fields((unsigned char const*)input, length, &offset, &next) ||
       offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFULLCOLLISIONBEHAVIOR_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFULLCOLLISIONBEHAVIOR_REQUEST_0 != 0xfeac604fUL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFULLCOLLISIONBEHAVIOR_REQUEST_1 != 0x89800f07UL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFULLCOLLISIONBEHAVIOR_REQUEST_2 != 0x8bfe3f3eUL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFULLCOLLISIONBEHAVIOR_REQUEST_3 != 0x2c6b0a65UL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFULLCOLLISIONBEHAVIOR_REQUEST_4 != 0x708c8295UL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFULLCOLLISIONBEHAVIOR_REQUEST_5 != 0x51806ff5UL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFULLCOLLISIONBEHAVIOR_REQUEST_6 != 0xf976d73bUL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFULLCOLLISIONBEHAVIOR_REQUEST_7 != 0x35484e5eUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFULLCOLLISIONBEHAVIOR_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFULLCOLLISIONBEHAVIOR_REQUEST_0 0xfeac604fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFULLCOLLISIONBEHAVIOR_REQUEST_1 0x89800f07UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFULLCOLLISIONBEHAVIOR_REQUEST_2 0x8bfe3f3eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFULLCOLLISIONBEHAVIOR_REQUEST_3 0x2c6b0a65UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFULLCOLLISIONBEHAVIOR_REQUEST_4 0x708c8295UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFULLCOLLISIONBEHAVIOR_REQUEST_5 0x51806ff5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFULLCOLLISIONBEHAVIOR_REQUEST_6 0xf976d73bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFULLCOLLISIONBEHAVIOR_REQUEST_7 0x35484e5eUL

/** @brief Complete ROS2 franka_msgs/srv/SetFullCollisionBehavior_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Request
{
    /**
     * @brief Retain the complete original float64 field.
     * @details Original
     * franka_msgs/srv/SetFullCollisionBehavior_Request.lower_torque_thresholds_acceleration; native type
     * float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
     * complete value and acquires no ROS resource.
     */
    double lower_torque_thresholds_acceleration[7];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original
     * franka_msgs/srv/SetFullCollisionBehavior_Request.upper_torque_thresholds_acceleration; native type
     * float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
     * complete value and acquires no ROS resource.
     */
    double upper_torque_thresholds_acceleration[7];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_msgs/srv/SetFullCollisionBehavior_Request.lower_torque_thresholds_nominal;
     * native type float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage
     * belongs to the complete value and acquires no ROS resource.
     */
    double lower_torque_thresholds_nominal[7];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_msgs/srv/SetFullCollisionBehavior_Request.upper_torque_thresholds_nominal;
     * native type float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage
     * belongs to the complete value and acquires no ROS resource.
     */
    double upper_torque_thresholds_nominal[7];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original
     * franka_msgs/srv/SetFullCollisionBehavior_Request.lower_force_thresholds_acceleration; native type
     * float64. Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
     * complete value and acquires no ROS resource.
     */
    double lower_force_thresholds_acceleration[6];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original
     * franka_msgs/srv/SetFullCollisionBehavior_Request.upper_force_thresholds_acceleration; native type
     * float64. Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
     * complete value and acquires no ROS resource.
     */
    double upper_force_thresholds_acceleration[6];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_msgs/srv/SetFullCollisionBehavior_Request.lower_force_thresholds_nominal;
     * native type float64. Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage
     * belongs to the complete value and acquires no ROS resource.
     */
    double lower_force_thresholds_nominal[6];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_msgs/srv/SetFullCollisionBehavior_Request.upper_force_thresholds_nominal;
     * native type float64. Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage
     * belongs to the complete value and acquires no ROS resource.
     */
    double upper_force_thresholds_nominal[6];
} roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Request;

# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFULLCOLLISIONBEHAVIOR_REQUEST_MAX_WIRE_BYTES 416u
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFULLCOLLISIONBEHAVIOR_REQUEST_MIN_WIRE_BYTES 416u
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFULLCOLLISIONBEHAVIOR_REQUEST_CODEC_IDENTITY                                                                    \
     "UWVMROS1_d6898555d931aee3a5b4f5f97830cb9982f2e378c59c40bcaa0201840d2f2824"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int
    roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Request_valid(roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Request const* value)
{
    if(!value)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->lower_torque_thresholds_acceleration[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->upper_torque_thresholds_acceleration[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->lower_torque_thresholds_nominal[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->upper_torque_thresholds_nominal[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->lower_force_thresholds_acceleration[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->upper_force_thresholds_acceleration[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->lower_force_thresholds_nominal[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->upper_force_thresholds_nominal[i], 8);
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
inline static size_t roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Request_wire_size(
    roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Request const* value)
{
    size_t n = 0;
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            n += 8;
        }
    }
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            n += 8;
        }
    }
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            n += 8;
        }
    }
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            n += 8;
        }
    }
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            n += 8;
        }
    }
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            n += 8;
        }
    }
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            n += 8;
        }
    }
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            n += 8;
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Request_write_fields(
    roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Request const* value,
    unsigned char* p,
    size_t* offset)
{
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->lower_torque_thresholds_acceleration[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->upper_torque_thresholds_acceleration[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->lower_torque_thresholds_nominal[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->upper_torque_thresholds_nominal[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->lower_force_thresholds_acceleration[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->upper_force_thresholds_acceleration[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->lower_force_thresholds_nominal[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->upper_force_thresholds_nominal[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int
    roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Request_read_fields(unsigned char const* p,
                                                                                    size_t n,
                                                                                    size_t* offset,
                                                                                    roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Request* value)
{
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->lower_torque_thresholds_acceleration[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->upper_torque_thresholds_acceleration[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->lower_torque_thresholds_nominal[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->upper_torque_thresholds_nominal[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->lower_force_thresholds_acceleration[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->upper_force_thresholds_acceleration[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->lower_force_thresholds_nominal[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->upper_force_thresholds_nominal[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    return roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Request_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Request_encode(roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Request const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Request_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Request_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Request_decode(void const* input,
                                                                               size_t length,
                                                                               roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Request* value)
{
    roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 416u || length > 416u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Request_read_fields((unsigned char const*)input, length, &offset, &next) ||
       offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFULLCOLLISIONBEHAVIOR_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFULLCOLLISIONBEHAVIOR_RESPONSE_0 != 0xfb86da49UL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFULLCOLLISIONBEHAVIOR_RESPONSE_1 != 0x50c580f5UL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFULLCOLLISIONBEHAVIOR_RESPONSE_2 != 0x55c3bfbeUL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFULLCOLLISIONBEHAVIOR_RESPONSE_3 != 0xaa64a41cUL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFULLCOLLISIONBEHAVIOR_RESPONSE_4 != 0x1923e5c8UL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFULLCOLLISIONBEHAVIOR_RESPONSE_5 != 0xea4060e3UL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFULLCOLLISIONBEHAVIOR_RESPONSE_6 != 0x0d2574a4UL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFULLCOLLISIONBEHAVIOR_RESPONSE_7 != 0xa37a80c4UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFULLCOLLISIONBEHAVIOR_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFULLCOLLISIONBEHAVIOR_RESPONSE_0 0xfb86da49UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFULLCOLLISIONBEHAVIOR_RESPONSE_1 0x50c580f5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFULLCOLLISIONBEHAVIOR_RESPONSE_2 0x55c3bfbeUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFULLCOLLISIONBEHAVIOR_RESPONSE_3 0xaa64a41cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFULLCOLLISIONBEHAVIOR_RESPONSE_4 0x1923e5c8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFULLCOLLISIONBEHAVIOR_RESPONSE_5 0xea4060e3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFULLCOLLISIONBEHAVIOR_RESPONSE_6 0x0d2574a4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFULLCOLLISIONBEHAVIOR_RESPONSE_7 0xa37a80c4UL

/** @brief UTF-8 byte storage for franka_msgs/srv/SetFullCollisionBehavior_Response.error; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Response_error_text;

/** @brief Complete ROS2 franka_msgs/srv/SetFullCollisionBehavior_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Response
{
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/srv/SetFullCollisionBehavior_Response.success; native type bool.
     * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t success;
    /**
     * @brief Retain the complete original string field.
     * @details Original franka_msgs/srv/SetFullCollisionBehavior_Response.error; native type string.
     * Scalar value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
     * acquires no ROS resource.
     */
    roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Response_error_text error;
} roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Response;

# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFULLCOLLISIONBEHAVIOR_RESPONSE_MAX_WIRE_BYTES 261u
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFULLCOLLISIONBEHAVIOR_RESPONSE_MIN_WIRE_BYTES 5u
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFULLCOLLISIONBEHAVIOR_RESPONSE_CODEC_IDENTITY                                                                   \
     "UWVMROS1_76430e384e9ad8b3f3c937e3004e8dc15a51d28abecd108c698e60d39c54f300"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Response_valid(
    roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Response const* value)
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
inline static size_t roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Response_wire_size(
    roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Response const* value)
{
    size_t n = 0;
    n += 1;
    n += 4 + value->error.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Response_write_fields(
    roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Response const* value,
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
inline static int roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Response_read_fields(
    unsigned char const* p,
    size_t n,
    size_t* offset,
    roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Response* value)
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
    return roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Response_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Response_encode(
    roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Response const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Response_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Response_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Response_decode(void const* input,
                                                                                size_t length,
                                                                                roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Response* value)
{
    roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 5u || length > 261u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Response_read_fields((unsigned char const*)input, length, &offset, &next) ||
       offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETJOINTSTIFFNESS_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETJOINTSTIFFNESS_REQUEST_0 != 0x47a21eecUL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETJOINTSTIFFNESS_REQUEST_1 != 0xd5a22ad0UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETJOINTSTIFFNESS_REQUEST_2 != 0x939bd616UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETJOINTSTIFFNESS_REQUEST_3 != 0x7c8e0846UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETJOINTSTIFFNESS_REQUEST_4 != 0x017ebd82UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETJOINTSTIFFNESS_REQUEST_5 != 0x3d357e59UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETJOINTSTIFFNESS_REQUEST_6 != 0xcbaeff13UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETJOINTSTIFFNESS_REQUEST_7 != 0xc928b21dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETJOINTSTIFFNESS_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETJOINTSTIFFNESS_REQUEST_0 0x47a21eecUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETJOINTSTIFFNESS_REQUEST_1 0xd5a22ad0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETJOINTSTIFFNESS_REQUEST_2 0x939bd616UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETJOINTSTIFFNESS_REQUEST_3 0x7c8e0846UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETJOINTSTIFFNESS_REQUEST_4 0x017ebd82UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETJOINTSTIFFNESS_REQUEST_5 0x3d357e59UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETJOINTSTIFFNESS_REQUEST_6 0xcbaeff13UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETJOINTSTIFFNESS_REQUEST_7 0xc928b21dUL

/** @brief Complete ROS2 franka_msgs/srv/SetJointStiffness_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Request
{
    /**
     * @brief Impedance for each joint in the internal controller
     * @details Original franka_msgs/srv/SetJointStiffness_Request.joint_stiffness; native type float64.
     * Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete
     * value and acquires no ROS resource.
     */
    double joint_stiffness[7];
} roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Request;

# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETJOINTSTIFFNESS_REQUEST_MAX_WIRE_BYTES 56u
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETJOINTSTIFFNESS_REQUEST_MIN_WIRE_BYTES 56u
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETJOINTSTIFFNESS_REQUEST_CODEC_IDENTITY "UWVMROS1_65b5d6599d1b97a0356f599102c22e0ae8c33b85f14c5a49b6c097eb227d334c"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Request_valid(roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Request const* value)
{
    if(!value)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->joint_stiffness[i], 8);
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
    roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Request_wire_size(roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Request const* value)
{
    size_t n = 0;
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            n += 8;
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Request_write_fields(roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Request const* value,
                                                                              unsigned char* p,
                                                                              size_t* offset)
{
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->joint_stiffness[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Request_read_fields(unsigned char const* p,
                                                                                           size_t n,
                                                                                           size_t* offset,
                                                                                           roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Request* value)
{
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->joint_stiffness[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    return roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Request_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Request_encode(roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Request const* value,
                                                                        void* output,
                                                                        size_t capacity,
                                                                        size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Request_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Request_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Request_decode(void const* input,
                                                                                           size_t length,
                                                                                           roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Request* value)
{
    roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 56u || length > 56u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETJOINTSTIFFNESS_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETJOINTSTIFFNESS_RESPONSE_0 != 0x396ceacfUL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETJOINTSTIFFNESS_RESPONSE_1 != 0x408e1cb9UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETJOINTSTIFFNESS_RESPONSE_2 != 0xca31e52eUL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETJOINTSTIFFNESS_RESPONSE_3 != 0x79fd5769UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETJOINTSTIFFNESS_RESPONSE_4 != 0xa12f746fUL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETJOINTSTIFFNESS_RESPONSE_5 != 0x0c509288UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETJOINTSTIFFNESS_RESPONSE_6 != 0x524738caUL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETJOINTSTIFFNESS_RESPONSE_7 != 0x54083691UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETJOINTSTIFFNESS_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETJOINTSTIFFNESS_RESPONSE_0 0x396ceacfUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETJOINTSTIFFNESS_RESPONSE_1 0x408e1cb9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETJOINTSTIFFNESS_RESPONSE_2 0xca31e52eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETJOINTSTIFFNESS_RESPONSE_3 0x79fd5769UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETJOINTSTIFFNESS_RESPONSE_4 0xa12f746fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETJOINTSTIFFNESS_RESPONSE_5 0x0c509288UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETJOINTSTIFFNESS_RESPONSE_6 0x524738caUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETJOINTSTIFFNESS_RESPONSE_7 0x54083691UL

/** @brief UTF-8 byte storage for franka_msgs/srv/SetJointStiffness_Response.error; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Response_error_text;

/** @brief Complete ROS2 franka_msgs/srv/SetJointStiffness_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Response
{
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/srv/SetJointStiffness_Response.success; native type bool. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t success;
    /**
     * @brief Retain the complete original string field.
     * @details Original franka_msgs/srv/SetJointStiffness_Response.error; native type string. Scalar
     * value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Response_error_text error;
} roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Response;

# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETJOINTSTIFFNESS_RESPONSE_MAX_WIRE_BYTES 261u
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETJOINTSTIFFNESS_RESPONSE_MIN_WIRE_BYTES 5u
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETJOINTSTIFFNESS_RESPONSE_CODEC_IDENTITY                                                                          \
     "UWVMROS1_1a857ab809079e0eec664250a9521ddc1cdf66e61aa2e0f22eae8442f5231c4d"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int
    roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Response_valid(roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Response const* value)
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
inline static size_t
    roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Response_wire_size(roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Response const* value)
{
    size_t n = 0;
    n += 1;
    n += 4 + value->error.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Response_write_fields(roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Response const* value,
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
inline static int
    roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Response_read_fields(unsigned char const* p,
                                                                              size_t n,
                                                                              size_t* offset,
                                                                              roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Response* value)
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
    return roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Response_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Response_encode(roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Response const* value,
                                                                         void* output,
                                                                         size_t capacity,
                                                                         size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Response_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Response_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Response_decode(void const* input,
                                                                         size_t length,
                                                                         roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Response* value)
{
    roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 5u || length > 261u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETLOAD_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETLOAD_REQUEST_0 != 0x495443d3UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETLOAD_REQUEST_1 != 0x9f7f5a38UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETLOAD_REQUEST_2 != 0xcc60f9a1UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETLOAD_REQUEST_3 != 0xe090338cUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETLOAD_REQUEST_4 != 0x46fdc7d7UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETLOAD_REQUEST_5 != 0xcc531385UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETLOAD_REQUEST_6 != 0x757157dcUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETLOAD_REQUEST_7 != 0x448c2d37UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETLOAD_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETLOAD_REQUEST_0 0x495443d3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETLOAD_REQUEST_1 0x9f7f5a38UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETLOAD_REQUEST_2 0xcc60f9a1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETLOAD_REQUEST_3 0xe090338cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETLOAD_REQUEST_4 0x46fdc7d7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETLOAD_REQUEST_5 0xcc531385UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETLOAD_REQUEST_6 0x757157dcUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETLOAD_REQUEST_7 0x448c2d37UL

/** @brief Complete ROS2 franka_msgs/srv/SetLoad_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_franka_msgs_srv_SetLoad_Request
{
    /**
     * @brief The mass of the object
     * @details Original franka_msgs/srv/SetLoad_Request.mass; native type float64. Scalar value. Finite
     * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double mass;
    /**
     * @brief Position of the center of mass
     * @details Original franka_msgs/srv/SetLoad_Request.center_of_mass; native type float64. Exactly 3
     * elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
     * acquires no ROS resource.
     */
    double center_of_mass[3];
    /**
     * @brief Inertia of the object - the provided 3x3 matrix is in column major form.
     * @details Original franka_msgs/srv/SetLoad_Request.load_inertia; native type float64. Exactly 9
     * elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
     * acquires no ROS resource.
     */
    double load_inertia[9];
} roswasmc_bounded_2_franka_msgs_srv_SetLoad_Request;

# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETLOAD_REQUEST_MAX_WIRE_BYTES 104u
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETLOAD_REQUEST_MIN_WIRE_BYTES 104u
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETLOAD_REQUEST_CODEC_IDENTITY "UWVMROS1_a616a844864b7bbf4ee18ac481ddd8406bec47354b4519a0e17f8a305635b7f8"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_franka_msgs_srv_SetLoad_Request_valid(roswasmc_bounded_2_franka_msgs_srv_SetLoad_Request const* value)
{
    if(!value)
    {
        return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->mass, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
        {
            return 0;
        }
    }
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->center_of_mass[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 9u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->load_inertia[i], 8);
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
inline static size_t roswasmc_bounded_2_franka_msgs_srv_SetLoad_Request_wire_size(roswasmc_bounded_2_franka_msgs_srv_SetLoad_Request const* value)
{
    size_t n = 0;
    n += 8;
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            n += 8;
        }
    }
    {
        size_t i;
        for(i = 0; i < 9u; ++i)
        {
            n += 8;
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_2_franka_msgs_srv_SetLoad_Request_write_fields(roswasmc_bounded_2_franka_msgs_srv_SetLoad_Request const* value,
                                                                                   unsigned char* p,
                                                                                   size_t* offset)
{
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->mass, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->center_of_mass[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 9u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->load_inertia[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_2_franka_msgs_srv_SetLoad_Request_read_fields(unsigned char const* p,
                                                                                 size_t n,
                                                                                 size_t* offset,
                                                                                 roswasmc_bounded_2_franka_msgs_srv_SetLoad_Request* value)
{
    if(*offset > n || n - *offset < 8)
    {
        return 0;
    }
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->mass, &bits, 8);
    }
    *offset += 8;
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->center_of_mass[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    {
        size_t i;
        for(i = 0; i < 9u; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->load_inertia[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    return roswasmc_bounded_2_franka_msgs_srv_SetLoad_Request_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_2_franka_msgs_srv_SetLoad_Request_encode(roswasmc_bounded_2_franka_msgs_srv_SetLoad_Request const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_franka_msgs_srv_SetLoad_Request_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_franka_msgs_srv_SetLoad_Request_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_franka_msgs_srv_SetLoad_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_franka_msgs_srv_SetLoad_Request_decode(void const* input, size_t length, roswasmc_bounded_2_franka_msgs_srv_SetLoad_Request* value)
{
    roswasmc_bounded_2_franka_msgs_srv_SetLoad_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 104u || length > 104u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_franka_msgs_srv_SetLoad_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETLOAD_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETLOAD_RESPONSE_0 != 0x63bf08beUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETLOAD_RESPONSE_1 != 0x49262cb5UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETLOAD_RESPONSE_2 != 0xbc3fe6edUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETLOAD_RESPONSE_3 != 0x632b6c9eUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETLOAD_RESPONSE_4 != 0xb381ac69UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETLOAD_RESPONSE_5 != 0xbac3ecbbUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETLOAD_RESPONSE_6 != 0x8a3d316bUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETLOAD_RESPONSE_7 != 0xa2f65b47UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETLOAD_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETLOAD_RESPONSE_0 0x63bf08beUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETLOAD_RESPONSE_1 0x49262cb5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETLOAD_RESPONSE_2 0xbc3fe6edUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETLOAD_RESPONSE_3 0x632b6c9eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETLOAD_RESPONSE_4 0xb381ac69UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETLOAD_RESPONSE_5 0xbac3ecbbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETLOAD_RESPONSE_6 0x8a3d316bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETLOAD_RESPONSE_7 0xa2f65b47UL

/** @brief UTF-8 byte storage for franka_msgs/srv/SetLoad_Response.error; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_2_franka_msgs_srv_SetLoad_Response_error_text;

/** @brief Complete ROS2 franka_msgs/srv/SetLoad_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_franka_msgs_srv_SetLoad_Response
{
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/srv/SetLoad_Response.success; native type bool. Scalar value. Storage
     * belongs to the complete value and acquires no ROS resource.
     */
    uint8_t success;
    /**
     * @brief Retain the complete original string field.
     * @details Original franka_msgs/srv/SetLoad_Response.error; native type string. Scalar value. UTF-8
     * capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    roswasmc_bounded_2_franka_msgs_srv_SetLoad_Response_error_text error;
} roswasmc_bounded_2_franka_msgs_srv_SetLoad_Response;

# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETLOAD_RESPONSE_MAX_WIRE_BYTES 261u
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETLOAD_RESPONSE_MIN_WIRE_BYTES 5u
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETLOAD_RESPONSE_CODEC_IDENTITY "UWVMROS1_991ff575719ef9442063a13c45a9660c672f5607e6e40cf6ab5c7a3173fa00bf"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_franka_msgs_srv_SetLoad_Response_valid(roswasmc_bounded_2_franka_msgs_srv_SetLoad_Response const* value)
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
inline static size_t roswasmc_bounded_2_franka_msgs_srv_SetLoad_Response_wire_size(roswasmc_bounded_2_franka_msgs_srv_SetLoad_Response const* value)
{
    size_t n = 0;
    n += 1;
    n += 4 + value->error.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_2_franka_msgs_srv_SetLoad_Response_write_fields(roswasmc_bounded_2_franka_msgs_srv_SetLoad_Response const* value,
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
inline static int roswasmc_bounded_2_franka_msgs_srv_SetLoad_Response_read_fields(unsigned char const* p,
                                                                                  size_t n,
                                                                                  size_t* offset,
                                                                                  roswasmc_bounded_2_franka_msgs_srv_SetLoad_Response* value)
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
    return roswasmc_bounded_2_franka_msgs_srv_SetLoad_Response_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_2_franka_msgs_srv_SetLoad_Response_encode(roswasmc_bounded_2_franka_msgs_srv_SetLoad_Response const* value,
                                                                                  void* output,
                                                                                  size_t capacity,
                                                                                  size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_franka_msgs_srv_SetLoad_Response_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_franka_msgs_srv_SetLoad_Response_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_franka_msgs_srv_SetLoad_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_franka_msgs_srv_SetLoad_Response_decode(void const* input, size_t length, roswasmc_bounded_2_franka_msgs_srv_SetLoad_Response* value)
{
    roswasmc_bounded_2_franka_msgs_srv_SetLoad_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 5u || length > 261u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_franka_msgs_srv_SetLoad_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETSTIFFNESSFRAME_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETSTIFFNESSFRAME_REQUEST_0 != 0x51d083d2UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETSTIFFNESSFRAME_REQUEST_1 != 0x77b45396UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETSTIFFNESSFRAME_REQUEST_2 != 0xeb1c1ec0UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETSTIFFNESSFRAME_REQUEST_3 != 0xcb86d70aUL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETSTIFFNESSFRAME_REQUEST_4 != 0xbfc369ceUL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETSTIFFNESSFRAME_REQUEST_5 != 0xd80f7d5aUL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETSTIFFNESSFRAME_REQUEST_6 != 0x18e84ac0UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETSTIFFNESSFRAME_REQUEST_7 != 0x534cd42dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETSTIFFNESSFRAME_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETSTIFFNESSFRAME_REQUEST_0 0x51d083d2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETSTIFFNESSFRAME_REQUEST_1 0x77b45396UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETSTIFFNESSFRAME_REQUEST_2 0xeb1c1ec0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETSTIFFNESSFRAME_REQUEST_3 0xcb86d70aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETSTIFFNESSFRAME_REQUEST_4 0xbfc369ceUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETSTIFFNESSFRAME_REQUEST_5 0xd80f7d5aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETSTIFFNESSFRAME_REQUEST_6 0x18e84ac0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETSTIFFNESSFRAME_REQUEST_7 0x534cd42dUL

/** @brief Complete ROS2 franka_msgs/srv/SetStiffnessFrame_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Request
{
    /**
     * @brief Sets the transformation matrix describing the stiffness frame relative to the TCP frame. A
     * 4x4 column-major transformation matrix representing the position and orientation.
     * @details Original franka_msgs/srv/SetStiffnessFrame_Request.transformation; native type float64.
     * Exactly 16 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
     * complete value and acquires no ROS resource.
     */
    double transformation[16];
} roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Request;

# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETSTIFFNESSFRAME_REQUEST_MAX_WIRE_BYTES 128u
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETSTIFFNESSFRAME_REQUEST_MIN_WIRE_BYTES 128u
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETSTIFFNESSFRAME_REQUEST_CODEC_IDENTITY "UWVMROS1_f8ee91daba1642286b63178c18bf2a005597e94951f11a185241193132c9f402"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Request_valid(roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Request const* value)
{
    if(!value)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < 16u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->transformation[i], 8);
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
    roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Request_wire_size(roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Request const* value)
{
    size_t n = 0;
    {
        size_t i;
        for(i = 0; i < 16u; ++i)
        {
            n += 8;
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Request_write_fields(roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Request const* value,
                                                                              unsigned char* p,
                                                                              size_t* offset)
{
    {
        size_t i;
        for(i = 0; i < 16u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->transformation[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Request_read_fields(unsigned char const* p,
                                                                                           size_t n,
                                                                                           size_t* offset,
                                                                                           roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Request* value)
{
    {
        size_t i;
        for(i = 0; i < 16u; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->transformation[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    return roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Request_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Request_encode(roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Request const* value,
                                                                        void* output,
                                                                        size_t capacity,
                                                                        size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Request_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Request_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Request_decode(void const* input,
                                                                                           size_t length,
                                                                                           roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Request* value)
{
    roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 128u || length > 128u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETSTIFFNESSFRAME_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETSTIFFNESSFRAME_RESPONSE_0 != 0x10f5f463UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETSTIFFNESSFRAME_RESPONSE_1 != 0xd3ffdc55UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETSTIFFNESSFRAME_RESPONSE_2 != 0x526200d8UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETSTIFFNESSFRAME_RESPONSE_3 != 0x352d076bUL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETSTIFFNESSFRAME_RESPONSE_4 != 0x479016d1UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETSTIFFNESSFRAME_RESPONSE_5 != 0xf0b10226UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETSTIFFNESSFRAME_RESPONSE_6 != 0x2ce63425UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETSTIFFNESSFRAME_RESPONSE_7 != 0xe5708032UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETSTIFFNESSFRAME_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETSTIFFNESSFRAME_RESPONSE_0 0x10f5f463UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETSTIFFNESSFRAME_RESPONSE_1 0xd3ffdc55UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETSTIFFNESSFRAME_RESPONSE_2 0x526200d8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETSTIFFNESSFRAME_RESPONSE_3 0x352d076bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETSTIFFNESSFRAME_RESPONSE_4 0x479016d1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETSTIFFNESSFRAME_RESPONSE_5 0xf0b10226UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETSTIFFNESSFRAME_RESPONSE_6 0x2ce63425UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETSTIFFNESSFRAME_RESPONSE_7 0xe5708032UL

/** @brief UTF-8 byte storage for franka_msgs/srv/SetStiffnessFrame_Response.error; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Response_error_text;

/** @brief Complete ROS2 franka_msgs/srv/SetStiffnessFrame_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Response
{
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/srv/SetStiffnessFrame_Response.success; native type bool. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t success;
    /**
     * @brief Retain the complete original string field.
     * @details Original franka_msgs/srv/SetStiffnessFrame_Response.error; native type string. Scalar
     * value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Response_error_text error;
} roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Response;

# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETSTIFFNESSFRAME_RESPONSE_MAX_WIRE_BYTES 261u
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETSTIFFNESSFRAME_RESPONSE_MIN_WIRE_BYTES 5u
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETSTIFFNESSFRAME_RESPONSE_CODEC_IDENTITY                                                                          \
     "UWVMROS1_e32cb83b1f0f3cda363566525c0b1fe367190f2e66f68282b330f4517f6ea744"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int
    roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Response_valid(roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Response const* value)
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
inline static size_t
    roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Response_wire_size(roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Response const* value)
{
    size_t n = 0;
    n += 1;
    n += 4 + value->error.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Response_write_fields(roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Response const* value,
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
inline static int
    roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Response_read_fields(unsigned char const* p,
                                                                              size_t n,
                                                                              size_t* offset,
                                                                              roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Response* value)
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
    return roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Response_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Response_encode(roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Response const* value,
                                                                         void* output,
                                                                         size_t capacity,
                                                                         size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Response_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Response_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Response_decode(void const* input,
                                                                         size_t length,
                                                                         roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Response* value)
{
    roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 5u || length > 261u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETTCPFRAME_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETTCPFRAME_REQUEST_0 != 0x587a2446UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETTCPFRAME_REQUEST_1 != 0xb48d71f4UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETTCPFRAME_REQUEST_2 != 0x9c834b37UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETTCPFRAME_REQUEST_3 != 0x131c8670UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETTCPFRAME_REQUEST_4 != 0x5a672e52UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETTCPFRAME_REQUEST_5 != 0x541de321UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETTCPFRAME_REQUEST_6 != 0x0b2a0d72UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETTCPFRAME_REQUEST_7 != 0xe6ac2bebUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETTCPFRAME_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETTCPFRAME_REQUEST_0 0x587a2446UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETTCPFRAME_REQUEST_1 0xb48d71f4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETTCPFRAME_REQUEST_2 0x9c834b37UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETTCPFRAME_REQUEST_3 0x131c8670UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETTCPFRAME_REQUEST_4 0x5a672e52UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETTCPFRAME_REQUEST_5 0x541de321UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETTCPFRAME_REQUEST_6 0x0b2a0d72UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETTCPFRAME_REQUEST_7 0xe6ac2bebUL

/** @brief Complete ROS2 franka_msgs/srv/SetTCPFrame_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Request
{
    /**
     * @brief Sets the transformation matrix describing the tcp frame to the end-effector frame. A 4x4
     * column-major transformation matrix representing the position and orientation.
     * @details Original franka_msgs/srv/SetTCPFrame_Request.transformation; native type float64. Exactly
     * 16 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value
     * and acquires no ROS resource.
     */
    double transformation[16];
} roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Request;

# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETTCPFRAME_REQUEST_MAX_WIRE_BYTES 128u
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETTCPFRAME_REQUEST_MIN_WIRE_BYTES 128u
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETTCPFRAME_REQUEST_CODEC_IDENTITY "UWVMROS1_2ef445bfa494a6bc50ee3337695562255c06890216c30ba17df95e691871441f"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Request_valid(roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Request const* value)
{
    if(!value)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < 16u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->transformation[i], 8);
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
inline static size_t roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Request_wire_size(roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Request const* value)
{
    size_t n = 0;
    {
        size_t i;
        for(i = 0; i < 16u; ++i)
        {
            n += 8;
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Request_write_fields(roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Request const* value,
                                                                                       unsigned char* p,
                                                                                       size_t* offset)
{
    {
        size_t i;
        for(i = 0; i < 16u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->transformation[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Request_read_fields(unsigned char const* p,
                                                                                     size_t n,
                                                                                     size_t* offset,
                                                                                     roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Request* value)
{
    {
        size_t i;
        for(i = 0; i < 16u; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->transformation[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    return roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Request_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Request_encode(roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Request const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Request_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Request_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Request_decode(void const* input,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Request* value)
{
    roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 128u || length > 128u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETTCPFRAME_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETTCPFRAME_RESPONSE_0 != 0xebe3ee4dUL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETTCPFRAME_RESPONSE_1 != 0xea11c8e1UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETTCPFRAME_RESPONSE_2 != 0x18df657fUL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETTCPFRAME_RESPONSE_3 != 0xc835f2edUL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETTCPFRAME_RESPONSE_4 != 0xcd654017UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETTCPFRAME_RESPONSE_5 != 0x7453b48aUL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETTCPFRAME_RESPONSE_6 != 0x3d329544UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETTCPFRAME_RESPONSE_7 != 0x60fe51c1UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETTCPFRAME_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETTCPFRAME_RESPONSE_0 0xebe3ee4dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETTCPFRAME_RESPONSE_1 0xea11c8e1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETTCPFRAME_RESPONSE_2 0x18df657fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETTCPFRAME_RESPONSE_3 0xc835f2edUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETTCPFRAME_RESPONSE_4 0xcd654017UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETTCPFRAME_RESPONSE_5 0x7453b48aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETTCPFRAME_RESPONSE_6 0x3d329544UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETTCPFRAME_RESPONSE_7 0x60fe51c1UL

/** @brief UTF-8 byte storage for franka_msgs/srv/SetTCPFrame_Response.error; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Response_error_text;

/** @brief Complete ROS2 franka_msgs/srv/SetTCPFrame_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Response
{
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/srv/SetTCPFrame_Response.success; native type bool. Scalar value.
     * Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t success;
    /**
     * @brief Retain the complete original string field.
     * @details Original franka_msgs/srv/SetTCPFrame_Response.error; native type string. Scalar value.
     * UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Response_error_text error;
} roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Response;

# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETTCPFRAME_RESPONSE_MAX_WIRE_BYTES 261u
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETTCPFRAME_RESPONSE_MIN_WIRE_BYTES 5u
# define ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETTCPFRAME_RESPONSE_CODEC_IDENTITY "UWVMROS1_87e4f5556c292289fe17898a40f1f5dd6161e7cc87ca570c86e9f69080d1df38"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Response_valid(roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Response const* value)
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
inline static size_t roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Response_wire_size(roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Response const* value)
{
    size_t n = 0;
    n += 1;
    n += 4 + value->error.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Response_write_fields(roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Response const* value,
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
inline static int roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Response_read_fields(unsigned char const* p,
                                                                                      size_t n,
                                                                                      size_t* offset,
                                                                                      roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Response* value)
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
    return roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Response_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Response_encode(roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Response const* value,
                                                                                      void* output,
                                                                                      size_t capacity,
                                                                                      size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Response_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Response_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Response_decode(void const* input,
                                                                                      size_t length,
                                                                                      roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Response* value)
{
    roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 5u || length > 261u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_GOAL)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_GOAL_0 != 0xefbe98b6UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_GOAL_1 != 0x9cd7cabdUL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_GOAL_2 != 0x2cf4ccb0UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_GOAL_3 != 0x04ff73b7UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_GOAL_4 != 0xb3daf235UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_GOAL_5 != 0xed18a520UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_GOAL_6 != 0x7e55c9edUL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_GOAL_7 != 0xbf86a0bdUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_GOAL 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_GOAL_0 0xefbe98b6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_GOAL_1 0x9cd7cabdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_GOAL_2 0x2cf4ccb0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_GOAL_3 0x04ff73b7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_GOAL_4 0xb3daf235UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_GOAL_5 0xed18a520UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_GOAL_6 0x7e55c9edUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_GOAL_7 0xbf86a0bdUL

/** @brief Complete ROS2 franka_spine_msgs/action/MoveAbsolute_Goal value; no field projects away native data. */
typedef struct roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Goal
{
    /**
     * @brief Command an absolute move of the Franka Spine. Target position [m]
     * @details Original franka_spine_msgs/action/MoveAbsolute_Goal.position; native type float64. Scalar
     * value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
     * acquires no ROS resource.
     */
    double position;
    /**
     * @brief Motion velocity [m/s], must be > 0
     * @details Original franka_spine_msgs/action/MoveAbsolute_Goal.velocity; native type float64. Scalar
     * value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
     * acquires no ROS resource.
     */
    double velocity;
    /**
     * @brief Motion acceleration [m/s²], must be > 0
     * @details Original franka_spine_msgs/action/MoveAbsolute_Goal.acceleration; native type float64.
     * Scalar value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value
     * and acquires no ROS resource.
     */
    double acceleration;
    /**
     * @brief Motion deceleration [m/s²], must be > 0
     * @details Original franka_spine_msgs/action/MoveAbsolute_Goal.deceleration; native type float64.
     * Scalar value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value
     * and acquires no ROS resource.
     */
    double deceleration;
} roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Goal;

# define ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_GOAL_MAX_WIRE_BYTES 32u
# define ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_GOAL_MIN_WIRE_BYTES 32u
# define ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_GOAL_CODEC_IDENTITY                                                                          \
     "UWVMROS1_a0c2f9037fd6730641b19b6da6ce1c6ca03bbd517fdd791c159effc93290cf13"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int
    roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Goal_valid(roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Goal const* value)
{
    if(!value)
    {
        return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->position, 8);
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
        uwvm_bounded_copy(&bits, &value->acceleration, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
        {
            return 0;
        }
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->deceleration, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
        {
            return 0;
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t
    roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Goal_wire_size(roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Goal const* value)
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
    roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Goal_write_fields(roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Goal const* value,
                                                                               unsigned char* p,
                                                                               size_t* offset)
{
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->position, 8);
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
        uwvm_bounded_copy(&bits, &value->acceleration, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->deceleration, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int
    roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Goal_read_fields(unsigned char const* p,
                                                                              size_t n,
                                                                              size_t* offset,
                                                                              roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Goal* value)
{
    if(*offset > n || n - *offset < 8)
    {
        return 0;
    }
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->position, &bits, 8);
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
        uwvm_bounded_copy(&value->acceleration, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
    {
        return 0;
    }
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->deceleration, &bits, 8);
    }
    *offset += 8;
    return roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Goal_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Goal_encode(roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Goal const* value,
                                                                         void* output,
                                                                         size_t capacity,
                                                                         size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Goal_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Goal_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Goal_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Goal_decode(void const* input,
                                                                         size_t length,
                                                                         roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Goal* value)
{
    roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Goal next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 32u || length > 32u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Goal_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_RESULT)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_RESULT_0 != 0x5c17d4daUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_RESULT_1 != 0xd767e73eUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_RESULT_2 != 0xc4f19104UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_RESULT_3 != 0x85c86871UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_RESULT_4 != 0x8a09a2ccUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_RESULT_5 != 0x771ad2e1UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_RESULT_6 != 0xf43a77c5UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_RESULT_7 != 0x81f05640UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_RESULT 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_RESULT_0 0x5c17d4daUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_RESULT_1 0xd767e73eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_RESULT_2 0xc4f19104UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_RESULT_3 0x85c86871UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_RESULT_4 0x8a09a2ccUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_RESULT_5 0x771ad2e1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_RESULT_6 0xf43a77c5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_RESULT_7 0x81f05640UL

/** @brief UTF-8 byte storage for franka_spine_msgs/action/MoveAbsolute_Result.stop_by; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Result_stop_by_text;

/** @brief UTF-8 byte storage for franka_spine_msgs/action/MoveAbsolute_Result.error; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Result_error_text;

/** @brief Complete ROS2 franka_spine_msgs/action/MoveAbsolute_Result value; no field projects away native data. */
typedef struct roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Result
{
    /**
     * @brief True if the target position was reached
     * @details Original franka_spine_msgs/action/MoveAbsolute_Result.success; native type bool. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t success;
    /**
     * @brief How the motion was stopped (from spine response)
     * @details Original franka_spine_msgs/action/MoveAbsolute_Result.stop_by; native type string. Scalar
     * value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Result_stop_by_text stop_by;
    /**
     * @brief Error description if success is false
     * @details Original franka_spine_msgs/action/MoveAbsolute_Result.error; native type string. Scalar
     * value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Result_error_text error;
} roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Result;

# define ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_RESULT_MAX_WIRE_BYTES 521u
# define ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_RESULT_MIN_WIRE_BYTES 9u
# define ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_RESULT_CODEC_IDENTITY                                                                        \
     "UWVMROS1_86b5c823e6e6604595462a76cd259daef420b2dff169f6dbe00f742f079155d5"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int
    roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Result_valid(roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Result const* value)
{
    if(!value)
    {
        return 0;
    }
    if(value->success > 1)
    {
        return 0;
    }
    if(value->stop_by.size > 256u || !uwvm_bounded_utf8(value->stop_by.data, value->stop_by.size))
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
inline static size_t
    roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Result_wire_size(roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Result const* value)
{
    size_t n = 0;
    n += 1;
    n += 4 + value->stop_by.size;
    n += 4 + value->error.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Result_write_fields(roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Result const* value,
                                                                                 unsigned char* p,
                                                                                 size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->success, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, value->stop_by.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->stop_by.data, value->stop_by.size);
    *offset += value->stop_by.size;
    uwvm_bounded_put(p + *offset, value->error.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->error.data, value->error.size);
    *offset += value->error.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int
    roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Result_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Result* value)
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
    value->stop_by.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->stop_by.size > 256u || value->stop_by.size > n - *offset)
    {
        return 0;
    }
    uwvm_bounded_copy(value->stop_by.data, p + *offset, value->stop_by.size);
    *offset += value->stop_by.size;
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
    return roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Result_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Result_encode(roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Result const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Result_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Result_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Result_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Result_decode(void const* input,
                                                                           size_t length,
                                                                           roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Result* value)
{
    roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Result next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 9u || length > 521u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Result_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_FEEDBACK)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_FEEDBACK_0 != 0x21dc6f65UL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_FEEDBACK_1 != 0xfdb46db8UL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_FEEDBACK_2 != 0x39dc5f76UL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_FEEDBACK_3 != 0xdd66ffb5UL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_FEEDBACK_4 != 0xb5209cb5UL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_FEEDBACK_5 != 0xc7584fe9UL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_FEEDBACK_6 != 0x2bbd8abcUL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_FEEDBACK_7 != 0x3a49d5f3UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_FEEDBACK 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_FEEDBACK_0 0x21dc6f65UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_FEEDBACK_1 0xfdb46db8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_FEEDBACK_2 0x39dc5f76UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_FEEDBACK_3 0xdd66ffb5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_FEEDBACK_4 0xb5209cb5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_FEEDBACK_5 0xc7584fe9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_FEEDBACK_6 0x2bbd8abcUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_FEEDBACK_7 0x3a49d5f3UL

/** @brief Complete ROS2 franka_spine_msgs/action/MoveAbsolute_Feedback value; no field projects away native data. */
typedef struct roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Feedback
{
    /**
     * @brief Current spine position [m]
     * @details Original franka_spine_msgs/action/MoveAbsolute_Feedback.current_position; native type
     * float64. Scalar value. Finite IEEE values; no implicit unit conversion. Storage belongs to the
     * complete value and acquires no ROS resource.
     */
    double current_position;
} roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Feedback;

# define ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_FEEDBACK_MAX_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_FEEDBACK_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_FEEDBACK_CODEC_IDENTITY                                                                      \
     "UWVMROS1_cf2f760313ab8c6cc01dd79271619926320021746451f376e56d18f63ffad929"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int
    roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Feedback_valid(roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Feedback const* value)
{
    if(!value)
    {
        return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->current_position, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
        {
            return 0;
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t
    roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Feedback_wire_size(roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Feedback const* value)
{
    size_t n = 0;
    n += 8;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Feedback_write_fields(
    roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Feedback const* value,
    unsigned char* p,
    size_t* offset)
{
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->current_position, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int
    roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Feedback_read_fields(unsigned char const* p,
                                                                                  size_t n,
                                                                                  size_t* offset,
                                                                                  roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Feedback* value)
{
    if(*offset > n || n - *offset < 8)
    {
        return 0;
    }
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->current_position, &bits, 8);
    }
    *offset += 8;
    return roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Feedback_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Feedback_encode(roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Feedback const* value,
                                                                             void* output,
                                                                             size_t capacity,
                                                                             size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Feedback_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Feedback_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Feedback_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Feedback_decode(void const* input,
                                                                             size_t length,
                                                                             roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Feedback* value)
{
    roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Feedback next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 8u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Feedback_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_USERLIMITS)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_USERLIMITS_0 != 0x7f5d91bbUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_USERLIMITS_1 != 0x2be89543UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_USERLIMITS_2 != 0x400eb64bUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_USERLIMITS_3 != 0x029a37f1UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_USERLIMITS_4 != 0x6f6fe8e3UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_USERLIMITS_5 != 0xc10ef73bUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_USERLIMITS_6 != 0x588bf055UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_USERLIMITS_7 != 0x9b121c85UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_USERLIMITS 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_USERLIMITS_0 0x7f5d91bbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_USERLIMITS_1 0x2be89543UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_USERLIMITS_2 0x400eb64bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_USERLIMITS_3 0x029a37f1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_USERLIMITS_4 0x6f6fe8e3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_USERLIMITS_5 0xc10ef73bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_USERLIMITS_6 0x588bf055UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_USERLIMITS_7 0x9b121c85UL

/** @brief Complete ROS2 franka_spine_msgs/msg/UserLimits value; no field projects away native data. */
typedef struct roswasmc_bounded_2_franka_spine_msgs_msg_UserLimits
{
    /**
     * @brief User-defined soft motion limits for the spine. Lower motion limit [m]
     * @details Original franka_spine_msgs/msg/UserLimits.lower_limit; native type float64. Scalar value.
     * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    double lower_limit;
    /**
     * @brief Upper motion limit [m]
     * @details Original franka_spine_msgs/msg/UserLimits.upper_limit; native type float64. Scalar value.
     * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    double upper_limit;
} roswasmc_bounded_2_franka_spine_msgs_msg_UserLimits;

# define ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_USERLIMITS_MAX_WIRE_BYTES 16u
# define ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_USERLIMITS_MIN_WIRE_BYTES 16u
# define ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_USERLIMITS_CODEC_IDENTITY "UWVMROS1_20256e37f0ae710b5cb9ab9438b5ff8144ce2ab6fc606c5335d0f5de5384e368"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_franka_spine_msgs_msg_UserLimits_valid(roswasmc_bounded_2_franka_spine_msgs_msg_UserLimits const* value)
{
    if(!value)
    {
        return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->lower_limit, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
        {
            return 0;
        }
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->upper_limit, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
        {
            return 0;
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_2_franka_spine_msgs_msg_UserLimits_wire_size(roswasmc_bounded_2_franka_spine_msgs_msg_UserLimits const* value)
{
    size_t n = 0;
    n += 8;
    n += 8;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_2_franka_spine_msgs_msg_UserLimits_write_fields(roswasmc_bounded_2_franka_spine_msgs_msg_UserLimits const* value,
                                                                                    unsigned char* p,
                                                                                    size_t* offset)
{
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->lower_limit, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->upper_limit, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_2_franka_spine_msgs_msg_UserLimits_read_fields(unsigned char const* p,
                                                                                  size_t n,
                                                                                  size_t* offset,
                                                                                  roswasmc_bounded_2_franka_spine_msgs_msg_UserLimits* value)
{
    if(*offset > n || n - *offset < 8)
    {
        return 0;
    }
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->lower_limit, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
    {
        return 0;
    }
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->upper_limit, &bits, 8);
    }
    *offset += 8;
    return roswasmc_bounded_2_franka_spine_msgs_msg_UserLimits_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_2_franka_spine_msgs_msg_UserLimits_encode(roswasmc_bounded_2_franka_spine_msgs_msg_UserLimits const* value,
                                                                                  void* output,
                                                                                  size_t capacity,
                                                                                  size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_franka_spine_msgs_msg_UserLimits_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_franka_spine_msgs_msg_UserLimits_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_franka_spine_msgs_msg_UserLimits_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_franka_spine_msgs_msg_UserLimits_decode(void const* input, size_t length, roswasmc_bounded_2_franka_spine_msgs_msg_UserLimits* value)
{
    roswasmc_bounded_2_franka_spine_msgs_msg_UserLimits next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 16u || length > 16u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_franka_spine_msgs_msg_UserLimits_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_SPINEPARAMETERS)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_SPINEPARAMETERS_0 != 0xa48e18edUL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_SPINEPARAMETERS_1 != 0x9dc5dae4UL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_SPINEPARAMETERS_2 != 0x644e1d1eUL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_SPINEPARAMETERS_3 != 0xac071e51UL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_SPINEPARAMETERS_4 != 0x053f87d5UL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_SPINEPARAMETERS_5 != 0xe00d9b45UL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_SPINEPARAMETERS_6 != 0xe82d10f5UL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_SPINEPARAMETERS_7 != 0x25488315UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_SPINEPARAMETERS 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_SPINEPARAMETERS_0 0xa48e18edUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_SPINEPARAMETERS_1 0x9dc5dae4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_SPINEPARAMETERS_2 0x644e1d1eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_SPINEPARAMETERS_3 0xac071e51UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_SPINEPARAMETERS_4 0x053f87d5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_SPINEPARAMETERS_5 0xe00d9b45UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_SPINEPARAMETERS_6 0xe82d10f5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_SPINEPARAMETERS_7 0x25488315UL

/** @brief Complete ROS2 franka_spine_msgs/msg/SpineParameters value; no field projects away native data. */
typedef struct roswasmc_bounded_2_franka_spine_msgs_msg_SpineParameters
{
    /**
     * @brief Aggregated spine parameters returned by the GetParameters service. User-defined motion limits
     * @details Original franka_spine_msgs/msg/SpineParameters.user_limits; native type
     * franka_spine_msgs/msg/UserLimits. Scalar value. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    roswasmc_bounded_2_franka_spine_msgs_msg_UserLimits user_limits;
} roswasmc_bounded_2_franka_spine_msgs_msg_SpineParameters;

# define ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_SPINEPARAMETERS_MAX_WIRE_BYTES 16u
# define ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_SPINEPARAMETERS_MIN_WIRE_BYTES 16u
# define ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_SPINEPARAMETERS_CODEC_IDENTITY "UWVMROS1_4d4c45cfccf278c99a189e92d438d0b11b2b693012cb0f76b65b6822eb816223"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_franka_spine_msgs_msg_SpineParameters_valid(roswasmc_bounded_2_franka_spine_msgs_msg_SpineParameters const* value)
{
    if(!value)
    {
        return 0;
    }
    if(!roswasmc_bounded_2_franka_spine_msgs_msg_UserLimits_valid(&value->user_limits))
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_2_franka_spine_msgs_msg_SpineParameters_wire_size(roswasmc_bounded_2_franka_spine_msgs_msg_SpineParameters const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_franka_spine_msgs_msg_UserLimits_wire_size(&value->user_limits);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_2_franka_spine_msgs_msg_SpineParameters_write_fields(roswasmc_bounded_2_franka_spine_msgs_msg_SpineParameters const* value,
                                                                                         unsigned char* p,
                                                                                         size_t* offset)
{
    roswasmc_bounded_2_franka_spine_msgs_msg_UserLimits_write_fields(&value->user_limits, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_2_franka_spine_msgs_msg_SpineParameters_read_fields(unsigned char const* p,
                                                                                       size_t n,
                                                                                       size_t* offset,
                                                                                       roswasmc_bounded_2_franka_spine_msgs_msg_SpineParameters* value)
{
    if(!roswasmc_bounded_2_franka_spine_msgs_msg_UserLimits_read_fields(p, n, offset, &value->user_limits))
    {
        return 0;
    }
    return roswasmc_bounded_2_franka_spine_msgs_msg_SpineParameters_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_2_franka_spine_msgs_msg_SpineParameters_encode(roswasmc_bounded_2_franka_spine_msgs_msg_SpineParameters const* value,
                                                                                       void* output,
                                                                                       size_t capacity,
                                                                                       size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_franka_spine_msgs_msg_SpineParameters_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_franka_spine_msgs_msg_SpineParameters_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_franka_spine_msgs_msg_SpineParameters_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t roswasmc_bounded_2_franka_spine_msgs_msg_SpineParameters_decode(void const* input,
                                                                                       size_t length,
                                                                                       roswasmc_bounded_2_franka_spine_msgs_msg_SpineParameters* value)
{
    roswasmc_bounded_2_franka_spine_msgs_msg_SpineParameters next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 16u || length > 16u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_franka_spine_msgs_msg_SpineParameters_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_SPINEPOSITION)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_SPINEPOSITION_0 != 0xc0137ab0UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_SPINEPOSITION_1 != 0x3884b216UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_SPINEPOSITION_2 != 0xf9b8f172UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_SPINEPOSITION_3 != 0x635718b8UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_SPINEPOSITION_4 != 0xe91046f9UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_SPINEPOSITION_5 != 0x03898e1cUL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_SPINEPOSITION_6 != 0xd0439859UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_SPINEPOSITION_7 != 0x7508b313UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_SPINEPOSITION 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_SPINEPOSITION_0 0xc0137ab0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_SPINEPOSITION_1 0x3884b216UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_SPINEPOSITION_2 0xf9b8f172UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_SPINEPOSITION_3 0x635718b8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_SPINEPOSITION_4 0xe91046f9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_SPINEPOSITION_5 0x03898e1cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_SPINEPOSITION_6 0xd0439859UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_SPINEPOSITION_7 0x7508b313UL

/** @brief Complete ROS2 franka_spine_msgs/msg/SpinePosition value; no field projects away native data. */
typedef struct roswasmc_bounded_2_franka_spine_msgs_msg_SpinePosition
{
    /**
     * @brief Periodic spine position sample published on ~/position. Subscribe to this instead of polling
     * the GetPosition service in a loop.
     * @details Original franka_spine_msgs/msg/SpinePosition.header; native type std_msgs/msg/Header.
     * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_2_std_msgs_msg_Header header;
    /**
     * @brief Last known position [m]
     * @details Original franka_spine_msgs/msg/SpinePosition.position; native type float64. Scalar value.
     * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    double position;
    /**
     * @brief False when the sample is stale because the REST read failed
     * @details Original franka_spine_msgs/msg/SpinePosition.valid; native type bool. Scalar value. Storage
     * belongs to the complete value and acquires no ROS resource.
     */
    uint8_t valid;
} roswasmc_bounded_2_franka_spine_msgs_msg_SpinePosition;

# define ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_SPINEPOSITION_MAX_WIRE_BYTES 149u
# define ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_SPINEPOSITION_MIN_WIRE_BYTES 21u
# define ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_SPINEPOSITION_CODEC_IDENTITY "UWVMROS1_71be15c40f39074dfdbe79a3587847ae512c5a3c8df23cc9415d5bfe59d05775"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_franka_spine_msgs_msg_SpinePosition_valid(roswasmc_bounded_2_franka_spine_msgs_msg_SpinePosition const* value)
{
    if(!value)
    {
        return 0;
    }
    if(!roswasmc_bounded_2_std_msgs_msg_Header_valid(&value->header))
    {
        return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->position, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
        {
            return 0;
        }
    }
    if(value->valid > 1)
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_2_franka_spine_msgs_msg_SpinePosition_wire_size(roswasmc_bounded_2_franka_spine_msgs_msg_SpinePosition const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&value->header);
    n += 8;
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_2_franka_spine_msgs_msg_SpinePosition_write_fields(roswasmc_bounded_2_franka_spine_msgs_msg_SpinePosition const* value,
                                                                                       unsigned char* p,
                                                                                       size_t* offset)
{
    roswasmc_bounded_2_std_msgs_msg_Header_write_fields(&value->header, p, offset);
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->position, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->valid, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_2_franka_spine_msgs_msg_SpinePosition_read_fields(unsigned char const* p,
                                                                                     size_t n,
                                                                                     size_t* offset,
                                                                                     roswasmc_bounded_2_franka_spine_msgs_msg_SpinePosition* value)
{
    if(!roswasmc_bounded_2_std_msgs_msg_Header_read_fields(p, n, offset, &value->header))
    {
        return 0;
    }
    if(*offset > n || n - *offset < 8)
    {
        return 0;
    }
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->position, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->valid, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_2_franka_spine_msgs_msg_SpinePosition_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_2_franka_spine_msgs_msg_SpinePosition_encode(roswasmc_bounded_2_franka_spine_msgs_msg_SpinePosition const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_franka_spine_msgs_msg_SpinePosition_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_franka_spine_msgs_msg_SpinePosition_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_franka_spine_msgs_msg_SpinePosition_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t roswasmc_bounded_2_franka_spine_msgs_msg_SpinePosition_decode(void const* input,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_2_franka_spine_msgs_msg_SpinePosition* value)
{
    roswasmc_bounded_2_franka_spine_msgs_msg_SpinePosition next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 21u || length > 149u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_franka_spine_msgs_msg_SpinePosition_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_SPINESTATE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_SPINESTATE_0 != 0xad2e2cd6UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_SPINESTATE_1 != 0xff31dfd0UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_SPINESTATE_2 != 0x14f41b1aUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_SPINESTATE_3 != 0x0997f5fdUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_SPINESTATE_4 != 0xdd307815UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_SPINESTATE_5 != 0xf458dd6eUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_SPINESTATE_6 != 0xd4a88fd8UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_SPINESTATE_7 != 0x9d0a8490UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_SPINESTATE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_SPINESTATE_0 0xad2e2cd6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_SPINESTATE_1 0xff31dfd0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_SPINESTATE_2 0x14f41b1aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_SPINESTATE_3 0x0997f5fdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_SPINESTATE_4 0xdd307815UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_SPINESTATE_5 0xf458dd6eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_SPINESTATE_6 0xd4a88fd8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_SPINESTATE_7 0x9d0a8490UL

/** @brief UTF-8 byte storage for franka_spine_msgs/msg/SpineState.state; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_2_franka_spine_msgs_msg_SpineState_state_text;

/** @brief UTF-8 byte storage for franka_spine_msgs/msg/SpineState.error_code; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_2_franka_spine_msgs_msg_SpineState_error_code_text;

/** @brief UTF-8 byte storage for franka_spine_msgs/msg/SpineState.error_description; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_2_franka_spine_msgs_msg_SpineState_error_description_text;

/** @brief Complete ROS2 franka_spine_msgs/msg/SpineState value; no field projects away native data. */
typedef struct roswasmc_bounded_2_franka_spine_msgs_msg_SpineState
{
    /**
     * @brief Periodic spine state sample published on ~/state. Subscribe to this instead of polling the
     * GetSpineState service in a loop. Possible states: NotReadyToSwitchOn, SwitchedOff, ReadyToSwitchOn,
     * MotorOff, SwitchedOn, QuickStopActive, FaultReactionActive, Fault, Unknown.
     * @details Original franka_spine_msgs/msg/SpineState.header; native type std_msgs/msg/Header. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_2_std_msgs_msg_Header header;
    /**
     * @brief Current spine state
     * @details Original franka_spine_msgs/msg/SpineState.state; native type string. Scalar value. UTF-8
     * capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    roswasmc_bounded_2_franka_spine_msgs_msg_SpineState_state_text state;
    /**
     * @brief Error code (empty when no error)
     * @details Original franka_spine_msgs/msg/SpineState.error_code; native type string. Scalar value.
     * UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    roswasmc_bounded_2_franka_spine_msgs_msg_SpineState_error_code_text error_code;
    /**
     * @brief Human-readable error description
     * @details Original franka_spine_msgs/msg/SpineState.error_description; native type string. Scalar
     * value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    roswasmc_bounded_2_franka_spine_msgs_msg_SpineState_error_description_text error_description;
    /**
     * @brief False when the sample is stale because the REST read failed
     * @details Original franka_spine_msgs/msg/SpineState.valid; native type bool. Scalar value. Storage
     * belongs to the complete value and acquires no ROS resource.
     */
    uint8_t valid;
} roswasmc_bounded_2_franka_spine_msgs_msg_SpineState;

# define ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_SPINESTATE_MAX_WIRE_BYTES 921u
# define ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_SPINESTATE_MIN_WIRE_BYTES 25u
# define ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_SPINESTATE_CODEC_IDENTITY "UWVMROS1_ad0b5dc5d79956da854582765c147d3d33edab569c4829e69cc7990edfb89441"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_franka_spine_msgs_msg_SpineState_valid(roswasmc_bounded_2_franka_spine_msgs_msg_SpineState const* value)
{
    if(!value)
    {
        return 0;
    }
    if(!roswasmc_bounded_2_std_msgs_msg_Header_valid(&value->header))
    {
        return 0;
    }
    if(value->state.size > 256u || !uwvm_bounded_utf8(value->state.data, value->state.size))
    {
        return 0;
    }
    if(value->error_code.size > 256u || !uwvm_bounded_utf8(value->error_code.data, value->error_code.size))
    {
        return 0;
    }
    if(value->error_description.size > 256u || !uwvm_bounded_utf8(value->error_description.data, value->error_description.size))
    {
        return 0;
    }
    if(value->valid > 1)
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_2_franka_spine_msgs_msg_SpineState_wire_size(roswasmc_bounded_2_franka_spine_msgs_msg_SpineState const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&value->header);
    n += 4 + value->state.size;
    n += 4 + value->error_code.size;
    n += 4 + value->error_description.size;
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_2_franka_spine_msgs_msg_SpineState_write_fields(roswasmc_bounded_2_franka_spine_msgs_msg_SpineState const* value,
                                                                                    unsigned char* p,
                                                                                    size_t* offset)
{
    roswasmc_bounded_2_std_msgs_msg_Header_write_fields(&value->header, p, offset);
    uwvm_bounded_put(p + *offset, value->state.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->state.data, value->state.size);
    *offset += value->state.size;
    uwvm_bounded_put(p + *offset, value->error_code.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->error_code.data, value->error_code.size);
    *offset += value->error_code.size;
    uwvm_bounded_put(p + *offset, value->error_description.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->error_description.data, value->error_description.size);
    *offset += value->error_description.size;
    uwvm_bounded_put(p + *offset, (uint64_t)value->valid, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_2_franka_spine_msgs_msg_SpineState_read_fields(unsigned char const* p,
                                                                                  size_t n,
                                                                                  size_t* offset,
                                                                                  roswasmc_bounded_2_franka_spine_msgs_msg_SpineState* value)
{
    if(!roswasmc_bounded_2_std_msgs_msg_Header_read_fields(p, n, offset, &value->header))
    {
        return 0;
    }
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->state.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->state.size > 256u || value->state.size > n - *offset)
    {
        return 0;
    }
    uwvm_bounded_copy(value->state.data, p + *offset, value->state.size);
    *offset += value->state.size;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->error_code.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->error_code.size > 256u || value->error_code.size > n - *offset)
    {
        return 0;
    }
    uwvm_bounded_copy(value->error_code.data, p + *offset, value->error_code.size);
    *offset += value->error_code.size;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->error_description.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->error_description.size > 256u || value->error_description.size > n - *offset)
    {
        return 0;
    }
    uwvm_bounded_copy(value->error_description.data, p + *offset, value->error_description.size);
    *offset += value->error_description.size;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->valid, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_2_franka_spine_msgs_msg_SpineState_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_2_franka_spine_msgs_msg_SpineState_encode(roswasmc_bounded_2_franka_spine_msgs_msg_SpineState const* value,
                                                                                  void* output,
                                                                                  size_t capacity,
                                                                                  size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_franka_spine_msgs_msg_SpineState_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_franka_spine_msgs_msg_SpineState_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_franka_spine_msgs_msg_SpineState_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_franka_spine_msgs_msg_SpineState_decode(void const* input, size_t length, roswasmc_bounded_2_franka_spine_msgs_msg_SpineState* value)
{
    roswasmc_bounded_2_franka_spine_msgs_msg_SpineState next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 25u || length > 921u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_franka_spine_msgs_msg_SpineState_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_FAULTRESET_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_FAULTRESET_REQUEST_0 != 0x58c86f3bUL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_FAULTRESET_REQUEST_1 != 0xe8d5e877UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_FAULTRESET_REQUEST_2 != 0xf89ca81cUL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_FAULTRESET_REQUEST_3 != 0x8a41c38dUL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_FAULTRESET_REQUEST_4 != 0xd3ad0637UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_FAULTRESET_REQUEST_5 != 0xc572654aUL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_FAULTRESET_REQUEST_6 != 0xad46262bUL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_FAULTRESET_REQUEST_7 != 0x5199f4e7UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_FAULTRESET_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_FAULTRESET_REQUEST_0 0x58c86f3bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_FAULTRESET_REQUEST_1 0xe8d5e877UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_FAULTRESET_REQUEST_2 0xf89ca81cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_FAULTRESET_REQUEST_3 0x8a41c38dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_FAULTRESET_REQUEST_4 0xd3ad0637UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_FAULTRESET_REQUEST_5 0xc572654aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_FAULTRESET_REQUEST_6 0xad46262bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_FAULTRESET_REQUEST_7 0x5199f4e7UL

/** @brief Complete ROS2 franka_spine_msgs/srv/FaultReset_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Request
{
    /** @brief Local C layout placeholder; empty native component has exactly zero canonical bytes. */
    unsigned char local_empty_placeholder;
} roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Request;

# define ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_FAULTRESET_REQUEST_MAX_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_FAULTRESET_REQUEST_MIN_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_FAULTRESET_REQUEST_CODEC_IDENTITY "UWVMROS1_0f836229e8e8a1713b9e9a8d7f0f43677ad93380e1f7350ff1597d25067b7f33"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Request_valid(roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Request const* value)
{
    if(!value)
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t
    roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Request_wire_size(roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Request const* value)
{
    size_t n = 0;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Request_write_fields(roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Request const* value,
                                                                             unsigned char* p,
                                                                             size_t* offset)
{
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Request_read_fields(unsigned char const* p,
                                                                                          size_t n,
                                                                                          size_t* offset,
                                                                                          roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Request* value)
{
    return roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Request_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Request_encode(roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Request const* value,
                                                                       void* output,
                                                                       size_t capacity,
                                                                       size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Request_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Request_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Request_decode(void const* input,
                                                                                          size_t length,
                                                                                          roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Request* value)
{
    roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 0u || length > 0u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_FAULTRESET_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_FAULTRESET_RESPONSE_0 != 0x533f8510UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_FAULTRESET_RESPONSE_1 != 0xb0580d69UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_FAULTRESET_RESPONSE_2 != 0x019e2294UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_FAULTRESET_RESPONSE_3 != 0xd2bbeac9UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_FAULTRESET_RESPONSE_4 != 0x49354dbaUL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_FAULTRESET_RESPONSE_5 != 0x82d730ddUL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_FAULTRESET_RESPONSE_6 != 0xcbde6f7cUL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_FAULTRESET_RESPONSE_7 != 0x3e8fa14dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_FAULTRESET_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_FAULTRESET_RESPONSE_0 0x533f8510UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_FAULTRESET_RESPONSE_1 0xb0580d69UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_FAULTRESET_RESPONSE_2 0x019e2294UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_FAULTRESET_RESPONSE_3 0xd2bbeac9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_FAULTRESET_RESPONSE_4 0x49354dbaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_FAULTRESET_RESPONSE_5 0x82d730ddUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_FAULTRESET_RESPONSE_6 0xcbde6f7cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_FAULTRESET_RESPONSE_7 0x3e8fa14dUL

/** @brief UTF-8 byte storage for franka_spine_msgs/srv/FaultReset_Response.state; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Response_state_text;

/** @brief UTF-8 byte storage for franka_spine_msgs/srv/FaultReset_Response.message; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Response_message_text;

/** @brief Complete ROS2 franka_spine_msgs/srv/FaultReset_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Response
{
    /**
     * @brief Spine state after the reset
     * @details Original franka_spine_msgs/srv/FaultReset_Response.state; native type string. Scalar value.
     * UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Response_state_text state;
    /**
     * @brief True if the fault was cleared
     * @details Original franka_spine_msgs/srv/FaultReset_Response.success; native type bool. Scalar value.
     * Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t success;
    /**
     * @brief Human-readable status or error description
     * @details Original franka_spine_msgs/srv/FaultReset_Response.message; native type string. Scalar
     * value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Response_message_text message;
} roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Response;

# define ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_FAULTRESET_RESPONSE_MAX_WIRE_BYTES 521u
# define ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_FAULTRESET_RESPONSE_MIN_WIRE_BYTES 9u
# define ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_FAULTRESET_RESPONSE_CODEC_IDENTITY "UWVMROS1_1ebeded0dbe4a4197a52de3fa43dc57fa372bd4e6ef5e2ded2558ccbf691410c"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Response_valid(roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Response const* value)
{
    if(!value)
    {
        return 0;
    }
    if(value->state.size > 256u || !uwvm_bounded_utf8(value->state.data, value->state.size))
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
    roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Response_wire_size(roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Response const* value)
{
    size_t n = 0;
    n += 4 + value->state.size;
    n += 1;
    n += 4 + value->message.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Response_write_fields(roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Response const* value,
                                                                              unsigned char* p,
                                                                              size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->state.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->state.data, value->state.size);
    *offset += value->state.size;
    uwvm_bounded_put(p + *offset, (uint64_t)value->success, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, value->message.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->message.data, value->message.size);
    *offset += value->message.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Response_read_fields(unsigned char const* p,
                                                                                           size_t n,
                                                                                           size_t* offset,
                                                                                           roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Response* value)
{
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->state.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->state.size > 256u || value->state.size > n - *offset)
    {
        return 0;
    }
    uwvm_bounded_copy(value->state.data, p + *offset, value->state.size);
    *offset += value->state.size;
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
    return roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Response_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Response_encode(roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Response const* value,
                                                                        void* output,
                                                                        size_t capacity,
                                                                        size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Response_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Response_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Response_decode(void const* input,
                                                                                           size_t length,
                                                                                           roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Response* value)
{
    roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 9u || length > 521u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPARAMETERS_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPARAMETERS_REQUEST_0 != 0x472ad432UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPARAMETERS_REQUEST_1 != 0x0d5e333cUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPARAMETERS_REQUEST_2 != 0xab309fa7UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPARAMETERS_REQUEST_3 != 0xfdd06f84UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPARAMETERS_REQUEST_4 != 0xe7b1f120UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPARAMETERS_REQUEST_5 != 0x073c8029UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPARAMETERS_REQUEST_6 != 0xea20bb2eUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPARAMETERS_REQUEST_7 != 0xd10e2f48UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPARAMETERS_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPARAMETERS_REQUEST_0 0x472ad432UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPARAMETERS_REQUEST_1 0x0d5e333cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPARAMETERS_REQUEST_2 0xab309fa7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPARAMETERS_REQUEST_3 0xfdd06f84UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPARAMETERS_REQUEST_4 0xe7b1f120UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPARAMETERS_REQUEST_5 0x073c8029UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPARAMETERS_REQUEST_6 0xea20bb2eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPARAMETERS_REQUEST_7 0xd10e2f48UL

/** @brief Complete ROS2 franka_spine_msgs/srv/GetParameters_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Request
{
    /** @brief Local C layout placeholder; empty native component has exactly zero canonical bytes. */
    unsigned char local_empty_placeholder;
} roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Request;

# define ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPARAMETERS_REQUEST_MAX_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPARAMETERS_REQUEST_MIN_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPARAMETERS_REQUEST_CODEC_IDENTITY                                                                         \
     "UWVMROS1_80ef5d2ef6ff2df9d14f29417d1928429315c0b7be9ec59513b9b3943a970b14"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int
    roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Request_valid(roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Request const* value)
{
    if(!value)
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t
    roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Request_wire_size(roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Request const* value)
{
    size_t n = 0;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Request_write_fields(roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Request const* value,
                                                                                unsigned char* p,
                                                                                size_t* offset)
{
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int
    roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Request_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Request* value)
{
    return roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Request_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Request_encode(roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Request const* value,
                                                                          void* output,
                                                                          size_t capacity,
                                                                          size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Request_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Request_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Request_decode(void const* input,
                                                                          size_t length,
                                                                          roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Request* value)
{
    roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 0u || length > 0u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPARAMETERS_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPARAMETERS_RESPONSE_0 != 0xccf0abc0UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPARAMETERS_RESPONSE_1 != 0x6afee8ddUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPARAMETERS_RESPONSE_2 != 0xd9c59edbUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPARAMETERS_RESPONSE_3 != 0x6bf267beUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPARAMETERS_RESPONSE_4 != 0xe41205f9UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPARAMETERS_RESPONSE_5 != 0x269ccf09UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPARAMETERS_RESPONSE_6 != 0x9a7e38b8UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPARAMETERS_RESPONSE_7 != 0xddf88f22UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPARAMETERS_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPARAMETERS_RESPONSE_0 0xccf0abc0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPARAMETERS_RESPONSE_1 0x6afee8ddUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPARAMETERS_RESPONSE_2 0xd9c59edbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPARAMETERS_RESPONSE_3 0x6bf267beUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPARAMETERS_RESPONSE_4 0xe41205f9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPARAMETERS_RESPONSE_5 0x269ccf09UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPARAMETERS_RESPONSE_6 0x9a7e38b8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPARAMETERS_RESPONSE_7 0xddf88f22UL

/** @brief UTF-8 byte storage for franka_spine_msgs/srv/GetParameters_Response.message; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Response_message_text;

/** @brief Complete ROS2 franka_spine_msgs/srv/GetParameters_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Response
{
    /**
     * @brief Calibration and limit values
     * @details Original franka_spine_msgs/srv/GetParameters_Response.parameters; native type
     * franka_spine_msgs/msg/SpineParameters. Scalar value. Storage belongs to the complete value and
     * acquires no ROS resource.
     */
    roswasmc_bounded_2_franka_spine_msgs_msg_SpineParameters parameters;
    /**
     * @brief True if the REST call succeeded
     * @details Original franka_spine_msgs/srv/GetParameters_Response.success; native type bool. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t success;
    /**
     * @brief Human-readable status or error description
     * @details Original franka_spine_msgs/srv/GetParameters_Response.message; native type string. Scalar
     * value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Response_message_text message;
} roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Response;

# define ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPARAMETERS_RESPONSE_MAX_WIRE_BYTES 277u
# define ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPARAMETERS_RESPONSE_MIN_WIRE_BYTES 21u
# define ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPARAMETERS_RESPONSE_CODEC_IDENTITY                                                                        \
     "UWVMROS1_8e648792534d7f4996179f31d353d2594cf63031edef4451fd20a3838dc896ed"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int
    roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Response_valid(roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Response const* value)
{
    if(!value)
    {
        return 0;
    }
    if(!roswasmc_bounded_2_franka_spine_msgs_msg_SpineParameters_valid(&value->parameters))
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
    roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Response_wire_size(roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Response const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_franka_spine_msgs_msg_SpineParameters_wire_size(&value->parameters);
    n += 1;
    n += 4 + value->message.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Response_write_fields(roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Response const* value,
                                                                                 unsigned char* p,
                                                                                 size_t* offset)
{
    roswasmc_bounded_2_franka_spine_msgs_msg_SpineParameters_write_fields(&value->parameters, p, offset);
    uwvm_bounded_put(p + *offset, (uint64_t)value->success, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, value->message.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->message.data, value->message.size);
    *offset += value->message.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int
    roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Response_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Response* value)
{
    if(!roswasmc_bounded_2_franka_spine_msgs_msg_SpineParameters_read_fields(p, n, offset, &value->parameters))
    {
        return 0;
    }
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
    return roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Response_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Response_encode(roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Response const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Response_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Response_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Response_decode(void const* input,
                                                                           size_t length,
                                                                           roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Response* value)
{
    roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 21u || length > 277u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPOSITION_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPOSITION_REQUEST_0 != 0x3f5c764dUL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPOSITION_REQUEST_1 != 0x1ab55b4cUL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPOSITION_REQUEST_2 != 0x1ca78adaUL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPOSITION_REQUEST_3 != 0x68b04718UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPOSITION_REQUEST_4 != 0xdedaac45UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPOSITION_REQUEST_5 != 0xab3f8c8aUL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPOSITION_REQUEST_6 != 0x08c7e398UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPOSITION_REQUEST_7 != 0x20152851UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPOSITION_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPOSITION_REQUEST_0 0x3f5c764dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPOSITION_REQUEST_1 0x1ab55b4cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPOSITION_REQUEST_2 0x1ca78adaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPOSITION_REQUEST_3 0x68b04718UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPOSITION_REQUEST_4 0xdedaac45UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPOSITION_REQUEST_5 0xab3f8c8aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPOSITION_REQUEST_6 0x08c7e398UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPOSITION_REQUEST_7 0x20152851UL

/** @brief Complete ROS2 franka_spine_msgs/srv/GetPosition_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Request
{
    /** @brief Local C layout placeholder; empty native component has exactly zero canonical bytes. */
    unsigned char local_empty_placeholder;
} roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Request;

# define ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPOSITION_REQUEST_MAX_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPOSITION_REQUEST_MIN_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPOSITION_REQUEST_CODEC_IDENTITY "UWVMROS1_66b05d1f08331161cafed301b3ab95a60dbb16aeb1a930ee780db163cb37c6c2"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Request_valid(roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Request const* value)
{
    if(!value)
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t
    roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Request_wire_size(roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Request const* value)
{
    size_t n = 0;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Request_write_fields(roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Request const* value,
                                                                              unsigned char* p,
                                                                              size_t* offset)
{
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Request_read_fields(unsigned char const* p,
                                                                                           size_t n,
                                                                                           size_t* offset,
                                                                                           roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Request* value)
{
    return roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Request_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Request_encode(roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Request const* value,
                                                                        void* output,
                                                                        size_t capacity,
                                                                        size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Request_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Request_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Request_decode(void const* input,
                                                                                           size_t length,
                                                                                           roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Request* value)
{
    roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 0u || length > 0u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPOSITION_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPOSITION_RESPONSE_0 != 0x2e647ef0UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPOSITION_RESPONSE_1 != 0x518adea6UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPOSITION_RESPONSE_2 != 0x37efaf42UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPOSITION_RESPONSE_3 != 0xacbf5504UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPOSITION_RESPONSE_4 != 0xa8da6212UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPOSITION_RESPONSE_5 != 0x13f70ec4UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPOSITION_RESPONSE_6 != 0x922cb47eUL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPOSITION_RESPONSE_7 != 0xa54299f6UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPOSITION_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPOSITION_RESPONSE_0 0x2e647ef0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPOSITION_RESPONSE_1 0x518adea6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPOSITION_RESPONSE_2 0x37efaf42UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPOSITION_RESPONSE_3 0xacbf5504UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPOSITION_RESPONSE_4 0xa8da6212UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPOSITION_RESPONSE_5 0x13f70ec4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPOSITION_RESPONSE_6 0x922cb47eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPOSITION_RESPONSE_7 0xa54299f6UL

/** @brief Complete ROS2 franka_spine_msgs/srv/GetPosition_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Response
{
    /**
     * @brief Current position [m]
     * @details Original franka_spine_msgs/srv/GetPosition_Response.position; native type float64. Scalar
     * value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
     * acquires no ROS resource.
     */
    double position;
    /**
     * @brief True if the REST call succeeded
     * @details Original franka_spine_msgs/srv/GetPosition_Response.success; native type bool. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t success;
} roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Response;

# define ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPOSITION_RESPONSE_MAX_WIRE_BYTES 9u
# define ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPOSITION_RESPONSE_MIN_WIRE_BYTES 9u
# define ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPOSITION_RESPONSE_CODEC_IDENTITY                                                                          \
     "UWVMROS1_18d9af57cc9f82c3c03d01e850da254e9431820b8291f03dafd2e8f74e849ab8"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int
    roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Response_valid(roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Response const* value)
{
    if(!value)
    {
        return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->position, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
        {
            return 0;
        }
    }
    if(value->success > 1)
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t
    roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Response_wire_size(roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Response const* value)
{
    size_t n = 0;
    n += 8;
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Response_write_fields(roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Response const* value,
                                                                               unsigned char* p,
                                                                               size_t* offset)
{
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->position, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->success, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int
    roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Response_read_fields(unsigned char const* p,
                                                                              size_t n,
                                                                              size_t* offset,
                                                                              roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Response* value)
{
    if(*offset > n || n - *offset < 8)
    {
        return 0;
    }
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->position, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->success, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Response_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Response_encode(roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Response const* value,
                                                                         void* output,
                                                                         size_t capacity,
                                                                         size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Response_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Response_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Response_decode(void const* input,
                                                                         size_t length,
                                                                         roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Response* value)
{
    roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 9u || length > 9u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETSPINESTATE_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETSPINESTATE_REQUEST_0 != 0x2a76fe09UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETSPINESTATE_REQUEST_1 != 0x50e92917UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETSPINESTATE_REQUEST_2 != 0x3fbe6fdeUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETSPINESTATE_REQUEST_3 != 0x204917cdUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETSPINESTATE_REQUEST_4 != 0x80a4ed11UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETSPINESTATE_REQUEST_5 != 0x1a46d5e2UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETSPINESTATE_REQUEST_6 != 0xa295cfc7UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETSPINESTATE_REQUEST_7 != 0xefcc1dd8UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETSPINESTATE_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETSPINESTATE_REQUEST_0 0x2a76fe09UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETSPINESTATE_REQUEST_1 0x50e92917UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETSPINESTATE_REQUEST_2 0x3fbe6fdeUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETSPINESTATE_REQUEST_3 0x204917cdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETSPINESTATE_REQUEST_4 0x80a4ed11UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETSPINESTATE_REQUEST_5 0x1a46d5e2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETSPINESTATE_REQUEST_6 0xa295cfc7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETSPINESTATE_REQUEST_7 0xefcc1dd8UL

/** @brief Complete ROS2 franka_spine_msgs/srv/GetSpineState_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Request
{
    /** @brief Local C layout placeholder; empty native component has exactly zero canonical bytes. */
    unsigned char local_empty_placeholder;
} roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Request;

# define ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETSPINESTATE_REQUEST_MAX_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETSPINESTATE_REQUEST_MIN_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETSPINESTATE_REQUEST_CODEC_IDENTITY                                                                         \
     "UWVMROS1_c4c456174d7b6647d09d986d37c041b942418941a5e01c447486727e919b8a67"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int
    roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Request_valid(roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Request const* value)
{
    if(!value)
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t
    roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Request_wire_size(roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Request const* value)
{
    size_t n = 0;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Request_write_fields(roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Request const* value,
                                                                                unsigned char* p,
                                                                                size_t* offset)
{
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int
    roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Request_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Request* value)
{
    return roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Request_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Request_encode(roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Request const* value,
                                                                          void* output,
                                                                          size_t capacity,
                                                                          size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Request_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Request_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Request_decode(void const* input,
                                                                          size_t length,
                                                                          roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Request* value)
{
    roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 0u || length > 0u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETSPINESTATE_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETSPINESTATE_RESPONSE_0 != 0x8e13cd00UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETSPINESTATE_RESPONSE_1 != 0x3b3de4afUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETSPINESTATE_RESPONSE_2 != 0xae470907UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETSPINESTATE_RESPONSE_3 != 0xd7d36ab0UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETSPINESTATE_RESPONSE_4 != 0x5bcc516aUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETSPINESTATE_RESPONSE_5 != 0x8a6acbaaUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETSPINESTATE_RESPONSE_6 != 0x646e204dUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETSPINESTATE_RESPONSE_7 != 0x90b00bedUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETSPINESTATE_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETSPINESTATE_RESPONSE_0 0x8e13cd00UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETSPINESTATE_RESPONSE_1 0x3b3de4afUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETSPINESTATE_RESPONSE_2 0xae470907UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETSPINESTATE_RESPONSE_3 0xd7d36ab0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETSPINESTATE_RESPONSE_4 0x5bcc516aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETSPINESTATE_RESPONSE_5 0x8a6acbaaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETSPINESTATE_RESPONSE_6 0x646e204dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETSPINESTATE_RESPONSE_7 0x90b00bedUL

/** @brief UTF-8 byte storage for franka_spine_msgs/srv/GetSpineState_Response.state; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Response_state_text;

/** @brief UTF-8 byte storage for franka_spine_msgs/srv/GetSpineState_Response.error_code; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Response_error_code_text;

/** @brief UTF-8 byte storage for franka_spine_msgs/srv/GetSpineState_Response.error_description; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Response_error_description_text;

/** @brief Complete ROS2 franka_spine_msgs/srv/GetSpineState_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Response
{
    /**
     * @brief Current spine state
     * @details Original franka_spine_msgs/srv/GetSpineState_Response.state; native type string. Scalar
     * value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Response_state_text state;
    /**
     * @brief Error code (empty when no error)
     * @details Original franka_spine_msgs/srv/GetSpineState_Response.error_code; native type string.
     * Scalar value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
     * acquires no ROS resource.
     */
    roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Response_error_code_text error_code;
    /**
     * @brief Human-readable error description
     * @details Original franka_spine_msgs/srv/GetSpineState_Response.error_description; native type
     * string. Scalar value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete
     * value and acquires no ROS resource.
     */
    roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Response_error_description_text error_description;
    /**
     * @brief True if the REST call succeeded
     * @details Original franka_spine_msgs/srv/GetSpineState_Response.success; native type bool. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t success;
} roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Response;

# define ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETSPINESTATE_RESPONSE_MAX_WIRE_BYTES 781u
# define ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETSPINESTATE_RESPONSE_MIN_WIRE_BYTES 13u
# define ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETSPINESTATE_RESPONSE_CODEC_IDENTITY                                                                        \
     "UWVMROS1_297d70e2c5c24dcea4bdf8c5f9e5c8c32256e8f35f1900d8afd914ab2acfdcd1"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int
    roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Response_valid(roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Response const* value)
{
    if(!value)
    {
        return 0;
    }
    if(value->state.size > 256u || !uwvm_bounded_utf8(value->state.data, value->state.size))
    {
        return 0;
    }
    if(value->error_code.size > 256u || !uwvm_bounded_utf8(value->error_code.data, value->error_code.size))
    {
        return 0;
    }
    if(value->error_description.size > 256u || !uwvm_bounded_utf8(value->error_description.data, value->error_description.size))
    {
        return 0;
    }
    if(value->success > 1)
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t
    roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Response_wire_size(roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Response const* value)
{
    size_t n = 0;
    n += 4 + value->state.size;
    n += 4 + value->error_code.size;
    n += 4 + value->error_description.size;
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Response_write_fields(roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Response const* value,
                                                                                 unsigned char* p,
                                                                                 size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->state.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->state.data, value->state.size);
    *offset += value->state.size;
    uwvm_bounded_put(p + *offset, value->error_code.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->error_code.data, value->error_code.size);
    *offset += value->error_code.size;
    uwvm_bounded_put(p + *offset, value->error_description.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->error_description.data, value->error_description.size);
    *offset += value->error_description.size;
    uwvm_bounded_put(p + *offset, (uint64_t)value->success, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int
    roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Response_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Response* value)
{
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->state.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->state.size > 256u || value->state.size > n - *offset)
    {
        return 0;
    }
    uwvm_bounded_copy(value->state.data, p + *offset, value->state.size);
    *offset += value->state.size;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->error_code.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->error_code.size > 256u || value->error_code.size > n - *offset)
    {
        return 0;
    }
    uwvm_bounded_copy(value->error_code.data, p + *offset, value->error_code.size);
    *offset += value->error_code.size;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->error_description.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->error_description.size > 256u || value->error_description.size > n - *offset)
    {
        return 0;
    }
    uwvm_bounded_copy(value->error_description.data, p + *offset, value->error_description.size);
    *offset += value->error_description.size;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->success, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Response_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Response_encode(roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Response const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Response_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Response_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Response_decode(void const* input,
                                                                           size_t length,
                                                                           roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Response* value)
{
    roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 13u || length > 781u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_HALT_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_HALT_REQUEST_0 != 0x020f0341UL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_HALT_REQUEST_1 != 0x07898ceaUL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_HALT_REQUEST_2 != 0xe6f381bfUL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_HALT_REQUEST_3 != 0xb3a23449UL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_HALT_REQUEST_4 != 0x3e561b50UL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_HALT_REQUEST_5 != 0xdd535252UL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_HALT_REQUEST_6 != 0xe02ba94fUL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_HALT_REQUEST_7 != 0xf68b9d9cUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_HALT_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_HALT_REQUEST_0 0x020f0341UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_HALT_REQUEST_1 0x07898ceaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_HALT_REQUEST_2 0xe6f381bfUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_HALT_REQUEST_3 0xb3a23449UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_HALT_REQUEST_4 0x3e561b50UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_HALT_REQUEST_5 0xdd535252UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_HALT_REQUEST_6 0xe02ba94fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_HALT_REQUEST_7 0xf68b9d9cUL

/** @brief Complete ROS2 franka_spine_msgs/srv/Halt_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Request
{
    /** @brief Local C layout placeholder; empty native component has exactly zero canonical bytes. */
    unsigned char local_empty_placeholder;
} roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Request;

# define ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_HALT_REQUEST_MAX_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_HALT_REQUEST_MIN_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_HALT_REQUEST_CODEC_IDENTITY "UWVMROS1_50af7625abf7ec20a30ec49b01e8d32de2ee0d4710820c8de659df211be8c111"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Request_valid(roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Request const* value)
{
    if(!value)
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Request_wire_size(roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Request const* value)
{
    size_t n = 0;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Request_write_fields(roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Request const* value,
                                                                                      unsigned char* p,
                                                                                      size_t* offset)
{
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Request_read_fields(unsigned char const* p,
                                                                                    size_t n,
                                                                                    size_t* offset,
                                                                                    roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Request* value)
{
    return roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Request_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Request_encode(roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Request const* value,
                                                                                    void* output,
                                                                                    size_t capacity,
                                                                                    size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Request_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Request_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Request_decode(void const* input, size_t length, roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Request* value)
{
    roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 0u || length > 0u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_HALT_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_HALT_RESPONSE_0 != 0x2cee12aaUL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_HALT_RESPONSE_1 != 0x2c47228dUL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_HALT_RESPONSE_2 != 0x5cbc9c0dUL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_HALT_RESPONSE_3 != 0xb6649915UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_HALT_RESPONSE_4 != 0xb9320eb1UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_HALT_RESPONSE_5 != 0xf7307b95UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_HALT_RESPONSE_6 != 0x1227c8d3UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_HALT_RESPONSE_7 != 0xe5542b62UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_HALT_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_HALT_RESPONSE_0 0x2cee12aaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_HALT_RESPONSE_1 0x2c47228dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_HALT_RESPONSE_2 0x5cbc9c0dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_HALT_RESPONSE_3 0xb6649915UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_HALT_RESPONSE_4 0xb9320eb1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_HALT_RESPONSE_5 0xf7307b95UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_HALT_RESPONSE_6 0x1227c8d3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_HALT_RESPONSE_7 0xe5542b62UL

/** @brief UTF-8 byte storage for franka_spine_msgs/srv/Halt_Response.state; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Response_state_text;

/** @brief UTF-8 byte storage for franka_spine_msgs/srv/Halt_Response.message; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Response_message_text;

/** @brief Complete ROS2 franka_spine_msgs/srv/Halt_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Response
{
    /**
     * @brief Spine state after the halt
     * @details Original franka_spine_msgs/srv/Halt_Response.state; native type string. Scalar value. UTF-8
     * capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Response_state_text state;
    /**
     * @brief True if the halt was executed
     * @details Original franka_spine_msgs/srv/Halt_Response.success; native type bool. Scalar value.
     * Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t success;
    /**
     * @brief Human-readable status or error description
     * @details Original franka_spine_msgs/srv/Halt_Response.message; native type string. Scalar value.
     * UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Response_message_text message;
} roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Response;

# define ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_HALT_RESPONSE_MAX_WIRE_BYTES 521u
# define ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_HALT_RESPONSE_MIN_WIRE_BYTES 9u
# define ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_HALT_RESPONSE_CODEC_IDENTITY "UWVMROS1_150e1d90b485a6ddf79f771379a0e1d3f99a77f88ab1cf1f569d614a63ac3d77"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Response_valid(roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Response const* value)
{
    if(!value)
    {
        return 0;
    }
    if(value->state.size > 256u || !uwvm_bounded_utf8(value->state.data, value->state.size))
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
inline static size_t roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Response_wire_size(roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Response const* value)
{
    size_t n = 0;
    n += 4 + value->state.size;
    n += 1;
    n += 4 + value->message.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Response_write_fields(roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Response const* value,
                                                                                       unsigned char* p,
                                                                                       size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->state.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->state.data, value->state.size);
    *offset += value->state.size;
    uwvm_bounded_put(p + *offset, (uint64_t)value->success, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, value->message.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->message.data, value->message.size);
    *offset += value->message.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Response_read_fields(unsigned char const* p,
                                                                                     size_t n,
                                                                                     size_t* offset,
                                                                                     roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Response* value)
{
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->state.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->state.size > 256u || value->state.size > n - *offset)
    {
        return 0;
    }
    uwvm_bounded_copy(value->state.data, p + *offset, value->state.size);
    *offset += value->state.size;
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
    return roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Response_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Response_encode(roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Response const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Response_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Response_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Response_decode(void const* input,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Response* value)
{
    roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 9u || length > 521u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHOFF_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHOFF_REQUEST_0 != 0x5a059216UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHOFF_REQUEST_1 != 0x3c22281bUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHOFF_REQUEST_2 != 0x0ad028a7UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHOFF_REQUEST_3 != 0xc1a36661UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHOFF_REQUEST_4 != 0x246a126fUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHOFF_REQUEST_5 != 0x5f8b0ff5UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHOFF_REQUEST_6 != 0xce550943UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHOFF_REQUEST_7 != 0x9fe06dddUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHOFF_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHOFF_REQUEST_0 0x5a059216UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHOFF_REQUEST_1 0x3c22281bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHOFF_REQUEST_2 0x0ad028a7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHOFF_REQUEST_3 0xc1a36661UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHOFF_REQUEST_4 0x246a126fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHOFF_REQUEST_5 0x5f8b0ff5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHOFF_REQUEST_6 0xce550943UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHOFF_REQUEST_7 0x9fe06dddUL

/** @brief Complete ROS2 franka_spine_msgs/srv/SwitchOff_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Request
{
    /** @brief Local C layout placeholder; empty native component has exactly zero canonical bytes. */
    unsigned char local_empty_placeholder;
} roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Request;

# define ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHOFF_REQUEST_MAX_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHOFF_REQUEST_MIN_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHOFF_REQUEST_CODEC_IDENTITY "UWVMROS1_097f00adfdc8d1a49615792158a36052917c41385683b39de6686f591964fc16"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Request_valid(roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Request const* value)
{
    if(!value)
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t
    roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Request_wire_size(roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Request const* value)
{
    size_t n = 0;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Request_write_fields(roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Request const* value,
                                                                            unsigned char* p,
                                                                            size_t* offset)
{
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Request_read_fields(unsigned char const* p,
                                                                                         size_t n,
                                                                                         size_t* offset,
                                                                                         roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Request* value)
{
    return roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Request_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Request_encode(roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Request const* value,
                                                                      void* output,
                                                                      size_t capacity,
                                                                      size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Request_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Request_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Request_decode(void const* input,
                                                                                         size_t length,
                                                                                         roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Request* value)
{
    roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 0u || length > 0u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHOFF_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHOFF_RESPONSE_0 != 0x99afa2c5UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHOFF_RESPONSE_1 != 0x2e35d040UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHOFF_RESPONSE_2 != 0x466c8e6cUL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHOFF_RESPONSE_3 != 0x967bc231UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHOFF_RESPONSE_4 != 0x4fe4c0daUL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHOFF_RESPONSE_5 != 0x050a1a42UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHOFF_RESPONSE_6 != 0x739741ceUL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHOFF_RESPONSE_7 != 0xea450bd5UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHOFF_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHOFF_RESPONSE_0 0x99afa2c5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHOFF_RESPONSE_1 0x2e35d040UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHOFF_RESPONSE_2 0x466c8e6cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHOFF_RESPONSE_3 0x967bc231UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHOFF_RESPONSE_4 0x4fe4c0daUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHOFF_RESPONSE_5 0x050a1a42UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHOFF_RESPONSE_6 0x739741ceUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHOFF_RESPONSE_7 0xea450bd5UL

/** @brief UTF-8 byte storage for franka_spine_msgs/srv/SwitchOff_Response.state; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Response_state_text;

/** @brief UTF-8 byte storage for franka_spine_msgs/srv/SwitchOff_Response.message; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Response_message_text;

/** @brief Complete ROS2 franka_spine_msgs/srv/SwitchOff_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Response
{
    /**
     * @brief Spine state after switching off
     * @details Original franka_spine_msgs/srv/SwitchOff_Response.state; native type string. Scalar value.
     * UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Response_state_text state;
    /**
     * @brief True if the transition succeeded
     * @details Original franka_spine_msgs/srv/SwitchOff_Response.success; native type bool. Scalar value.
     * Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t success;
    /**
     * @brief Human-readable status or error description
     * @details Original franka_spine_msgs/srv/SwitchOff_Response.message; native type string. Scalar
     * value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Response_message_text message;
} roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Response;

# define ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHOFF_RESPONSE_MAX_WIRE_BYTES 521u
# define ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHOFF_RESPONSE_MIN_WIRE_BYTES 9u
# define ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHOFF_RESPONSE_CODEC_IDENTITY "UWVMROS1_d3ab8516e62428b2caf71673f398ccc7199b7b25aac4c37b42c15a79878e54ad"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Response_valid(roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Response const* value)
{
    if(!value)
    {
        return 0;
    }
    if(value->state.size > 256u || !uwvm_bounded_utf8(value->state.data, value->state.size))
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
    roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Response_wire_size(roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Response const* value)
{
    size_t n = 0;
    n += 4 + value->state.size;
    n += 1;
    n += 4 + value->message.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Response_write_fields(roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Response const* value,
                                                                             unsigned char* p,
                                                                             size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->state.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->state.data, value->state.size);
    *offset += value->state.size;
    uwvm_bounded_put(p + *offset, (uint64_t)value->success, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, value->message.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->message.data, value->message.size);
    *offset += value->message.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Response_read_fields(unsigned char const* p,
                                                                                          size_t n,
                                                                                          size_t* offset,
                                                                                          roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Response* value)
{
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->state.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->state.size > 256u || value->state.size > n - *offset)
    {
        return 0;
    }
    uwvm_bounded_copy(value->state.data, p + *offset, value->state.size);
    *offset += value->state.size;
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
    return roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Response_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Response_encode(roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Response const* value,
                                                                       void* output,
                                                                       size_t capacity,
                                                                       size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Response_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Response_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Response_decode(void const* input,
                                                                                          size_t length,
                                                                                          roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Response* value)
{
    roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 9u || length > 521u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHON_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHON_REQUEST_0 != 0x47e7d215UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHON_REQUEST_1 != 0xdcd9a2b6UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHON_REQUEST_2 != 0x3069c2c6UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHON_REQUEST_3 != 0x5c6608beUL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHON_REQUEST_4 != 0x8e13c964UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHON_REQUEST_5 != 0x8711855aUL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHON_REQUEST_6 != 0x30c35854UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHON_REQUEST_7 != 0x2c7471ffUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHON_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHON_REQUEST_0 0x47e7d215UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHON_REQUEST_1 0xdcd9a2b6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHON_REQUEST_2 0x3069c2c6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHON_REQUEST_3 0x5c6608beUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHON_REQUEST_4 0x8e13c964UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHON_REQUEST_5 0x8711855aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHON_REQUEST_6 0x30c35854UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHON_REQUEST_7 0x2c7471ffUL

/** @brief Complete ROS2 franka_spine_msgs/srv/SwitchOn_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Request
{
    /** @brief Local C layout placeholder; empty native component has exactly zero canonical bytes. */
    unsigned char local_empty_placeholder;
} roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Request;

# define ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHON_REQUEST_MAX_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHON_REQUEST_MIN_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHON_REQUEST_CODEC_IDENTITY "UWVMROS1_840d12dbe4d4a8558e72c2facbccfc547de35536f749573b6de60ce9a9238a56"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Request_valid(roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Request const* value)
{
    if(!value)
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Request_wire_size(roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Request const* value)
{
    size_t n = 0;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Request_write_fields(roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Request const* value,
                                                                           unsigned char* p,
                                                                           size_t* offset)
{
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Request_read_fields(unsigned char const* p,
                                                                                        size_t n,
                                                                                        size_t* offset,
                                                                                        roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Request* value)
{
    return roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Request_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Request_encode(roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Request const* value,
                                                                                        void* output,
                                                                                        size_t capacity,
                                                                                        size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Request_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Request_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Request_decode(void const* input,
                                                                                        size_t length,
                                                                                        roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Request* value)
{
    roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 0u || length > 0u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHON_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHON_RESPONSE_0 != 0x62ed8f08UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHON_RESPONSE_1 != 0x0ffd5f86UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHON_RESPONSE_2 != 0x08aef75fUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHON_RESPONSE_3 != 0xf5b03630UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHON_RESPONSE_4 != 0xb5a5a488UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHON_RESPONSE_5 != 0xdedd0112UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHON_RESPONSE_6 != 0x0dc1e901UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHON_RESPONSE_7 != 0x4480962aUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHON_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHON_RESPONSE_0 0x62ed8f08UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHON_RESPONSE_1 0x0ffd5f86UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHON_RESPONSE_2 0x08aef75fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHON_RESPONSE_3 0xf5b03630UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHON_RESPONSE_4 0xb5a5a488UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHON_RESPONSE_5 0xdedd0112UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHON_RESPONSE_6 0x0dc1e901UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHON_RESPONSE_7 0x4480962aUL

/** @brief UTF-8 byte storage for franka_spine_msgs/srv/SwitchOn_Response.state; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Response_state_text;

/** @brief UTF-8 byte storage for franka_spine_msgs/srv/SwitchOn_Response.message; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Response_message_text;

/** @brief Complete ROS2 franka_spine_msgs/srv/SwitchOn_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Response
{
    /**
     * @brief Spine state after switching on
     * @details Original franka_spine_msgs/srv/SwitchOn_Response.state; native type string. Scalar value.
     * UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Response_state_text state;
    /**
     * @brief True if the transition succeeded
     * @details Original franka_spine_msgs/srv/SwitchOn_Response.success; native type bool. Scalar value.
     * Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t success;
    /**
     * @brief Human-readable status or error description
     * @details Original franka_spine_msgs/srv/SwitchOn_Response.message; native type string. Scalar value.
     * UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Response_message_text message;
} roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Response;

# define ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHON_RESPONSE_MAX_WIRE_BYTES 521u
# define ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHON_RESPONSE_MIN_WIRE_BYTES 9u
# define ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHON_RESPONSE_CODEC_IDENTITY "UWVMROS1_8c58d63385a5fc6f160585504b3c9c5ca5375c6187f7a494c3db696c5cc7a37d"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Response_valid(roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Response const* value)
{
    if(!value)
    {
        return 0;
    }
    if(value->state.size > 256u || !uwvm_bounded_utf8(value->state.data, value->state.size))
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
    roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Response_wire_size(roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Response const* value)
{
    size_t n = 0;
    n += 4 + value->state.size;
    n += 1;
    n += 4 + value->message.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Response_write_fields(roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Response const* value,
                                                                            unsigned char* p,
                                                                            size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->state.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->state.data, value->state.size);
    *offset += value->state.size;
    uwvm_bounded_put(p + *offset, (uint64_t)value->success, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, value->message.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->message.data, value->message.size);
    *offset += value->message.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Response_read_fields(unsigned char const* p,
                                                                                         size_t n,
                                                                                         size_t* offset,
                                                                                         roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Response* value)
{
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->state.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->state.size > 256u || value->state.size > n - *offset)
    {
        return 0;
    }
    uwvm_bounded_copy(value->state.data, p + *offset, value->state.size);
    *offset += value->state.size;
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
    return roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Response_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Response_encode(roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Response const* value,
                                                                      void* output,
                                                                      size_t capacity,
                                                                      size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Response_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Response_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Response_decode(void const* input,
                                                                                         size_t length,
                                                                                         roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Response* value)
{
    roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 9u || length > 521u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#undef UWVM_BOUNDED_ASSERT
#endif
