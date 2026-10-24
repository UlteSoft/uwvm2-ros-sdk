/** @file Generated bounded-v2 canonical values; no native ROS serialization or authority.
 * Every dynamic field has inline caller-owned capacity. Encode validates and measures
 * the full value before writes; decode commits one temporary only after full validation.
 * Supply distinct record, byte and size-output storage; overlap is explicitly refused.
 * Empty Service/Action components use a C layout dummy that is never a wire field. */
#ifndef UWVM_ROS_BOUNDED_RECORDS_E8426818ACD6D44493891A0286A5E7AA6EDE103E4B40BF8A712DD7AA9151A786
#define UWVM_ROS_BOUNDED_RECORDS_E8426818ACD6D44493891A0286A5E7AA6EDE103E4B40BF8A712DD7AA9151A786
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
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MODE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MODE_0 != 0x45fd313bUL ||                                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MODE_1 != 0x011e739aUL ||                                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MODE_2 != 0x036580d7UL ||                                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MODE_3 != 0xa127bd2fUL ||                                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MODE_4 != 0xa24fed5eUL ||                                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MODE_5 != 0x74fdce70UL ||                                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MODE_6 != 0x71e20b32UL ||                                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MODE_7 != 0xc9678e13UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MODE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MODE_0 0x45fd313bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MODE_1 0x011e739aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MODE_2 0x036580d7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MODE_3 0xa127bd2fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MODE_4 0xa24fed5eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MODE_5 0x74fdce70UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MODE_6 0x71e20b32UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MODE_7 0xc9678e13UL

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
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MODE_CODEC_IDENTITY "UWVMROS1_cccac829b8021d3eed69844ee81fbef0b785486d73a16ac212fd38b8100eb6d6"
/** @brief Original scalar constant MODE_UNKNOWN=-1; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MODE_MODE_UNKNOWN -INT32_C(1)
/** @brief Original scalar constant MODE_IDLE=0; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MODE_MODE_IDLE INT32_C(0)
/** @brief Original scalar constant MODE_RT_JOINT_TORQUE=1; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MODE_MODE_RT_JOINT_TORQUE INT32_C(1)
/** @brief Original scalar constant MODE_RT_JOINT_IMPEDANCE=2; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MODE_MODE_RT_JOINT_IMPEDANCE INT32_C(2)
/** @brief Original scalar constant MODE_NRT_JOINT_IMPEDANCE=3; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MODE_MODE_NRT_JOINT_IMPEDANCE INT32_C(3)
/** @brief Original scalar constant MODE_RT_JOINT_POSITION=4; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MODE_MODE_RT_JOINT_POSITION INT32_C(4)
/** @brief Original scalar constant MODE_NRT_JOINT_POSITION=5; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MODE_MODE_NRT_JOINT_POSITION INT32_C(5)
/** @brief Original scalar constant MODE_NRT_PLAN_EXECUTION=6; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MODE_MODE_NRT_PLAN_EXECUTION INT32_C(6)
/** @brief Original scalar constant MODE_NRT_PRIMITIVE_EXECUTION=7; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MODE_MODE_NRT_PRIMITIVE_EXECUTION INT32_C(7)
/** @brief Original scalar constant MODE_RT_CARTESIAN_MOTION_FORCE=8; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MODE_MODE_RT_CARTESIAN_MOTION_FORCE INT32_C(8)
/** @brief Original scalar constant MODE_NRT_CARTESIAN_MOTION_FORCE=9; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MODE_MODE_NRT_CARTESIAN_MOTION_FORCE INT32_C(9)
/** @brief Original scalar constant MODE_NRT_SUPER_PRIMITIVE=10; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MODE_MODE_NRT_SUPER_PRIMITIVE INT32_C(10)

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
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTSTAMPED_0 != 0xe40d9fa9UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTSTAMPED_1 != 0xed60bd57UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTSTAMPED_2 != 0x92152543UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTSTAMPED_3 != 0x86d27292UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTSTAMPED_4 != 0x043815e7UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTSTAMPED_5 != 0x100feb89UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTSTAMPED_6 != 0xbf8dba42UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTSTAMPED_7 != 0x0e66d75dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTSTAMPED 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTSTAMPED_0 0xe40d9fa9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTSTAMPED_1 0xed60bd57UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTSTAMPED_2 0x92152543UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTSTAMPED_3 0x86d27292UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTSTAMPED_4 0x043815e7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTSTAMPED_5 0x100feb89UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTSTAMPED_6 0xbf8dba42UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTSTAMPED_7 0x0e66d75dUL

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

# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTSTAMPED_MAX_WIRE_BYTES 316u
# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTSTAMPED_MIN_WIRE_BYTES 60u
# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTSTAMPED_CODEC_IDENTITY "UWVMROS1_e26c5749f60e59245f541ae7c9d66b0d5fc47eef38fa163338aa39316751e308"

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
    if(!value || (length && !input) || length < 60u || length > 316u || uwvm_bounded_overlap(value, sizeof *value, input, length))
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
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTSTATES_0 != 0x7e9b6477UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTSTATES_1 != 0x5f847887UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTSTATES_2 != 0x645179f7UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTSTATES_3 != 0x4d86e0c5UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTSTATES_4 != 0xef8a02a4UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTSTATES_5 != 0x93af4373UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTSTATES_6 != 0xf74dfb07UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTSTATES_7 != 0xe87fefa4UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTSTATES 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTSTATES_0 0x7e9b6477UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTSTATES_1 0x5f847887UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTSTATES_2 0x645179f7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTSTATES_3 0x4d86e0c5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTSTATES_4 0xef8a02a4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTSTATES_5 0x93af4373UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTSTATES_6 0xf74dfb07UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTSTATES_7 0xe87fefa4UL

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
     * @brief Measured TCP twist expressed in world frame
     * @details Original flexiv_msgs/msg/RobotStates.tcp_twist; native type geometry_msgs/msg/TwistStamped.
     * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_2_geometry_msgs_msg_TwistStamped tcp_twist;
    /**
     * @brief Measured flange pose expressed in world frame
     * @details Original flexiv_msgs/msg/RobotStates.flange_pose; native type
     * geometry_msgs/msg/PoseStamped. Scalar value. Storage belongs to the complete value and acquires no
     * ROS resource.
     */
    roswasmc_bounded_2_geometry_msgs_msg_PoseStamped flange_pose;
    /**
     * @brief Raw force-torque (FT) sensor reading in flange frame
     * @details Original flexiv_msgs/msg/RobotStates.raw_ft_sensor; native type
     * geometry_msgs/msg/WrenchStamped. Scalar value. Storage belongs to the complete value and acquires no
     * ROS resource.
     */
    roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped raw_ft_sensor;
    /**
     * @brief Estimated external wrench applied on TCP and expressed in TCP frame
     * @details Original flexiv_msgs/msg/RobotStates.tcp_wrench_local; native type
     * geometry_msgs/msg/WrenchStamped. Scalar value. Storage belongs to the complete value and acquires no
     * ROS resource.
     */
    roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped tcp_wrench_local;
    /**
     * @brief Estimated external wrench applied on TCP and expressed in world frame
     * @details Original flexiv_msgs/msg/RobotStates.tcp_wrench; native type
     * geometry_msgs/msg/WrenchStamped. Scalar value. Storage belongs to the complete value and acquires no
     * ROS resource.
     */
    roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped tcp_wrench;
    /**
     * @brief Unfiltered external wrench applied on TCP and expressed in TCP frame
     * @details Original flexiv_msgs/msg/RobotStates.raw_tcp_wrench_local; native type
     * geometry_msgs/msg/WrenchStamped. Scalar value. Storage belongs to the complete value and acquires no
     * ROS resource.
     */
    roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped raw_tcp_wrench_local;
    /**
     * @brief Unfiltered external wrench applied on TCP and expressed in world frame
     * @details Original flexiv_msgs/msg/RobotStates.raw_tcp_wrench; native type
     * geometry_msgs/msg/WrenchStamped. Scalar value. Storage belongs to the complete value and acquires no
     * ROS resource.
     */
    roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped raw_tcp_wrench;
} roswasmc_bounded_2_flexiv_msgs_msg_RobotStates;

# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTSTATES_MAX_WIRE_BYTES 5160u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTSTATES_MIN_WIRE_BYTES 552u
# define ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTSTATES_CODEC_IDENTITY "UWVMROS1_3faeb145bd2ce50b6478e44c55400cc484e619eb66783f56a4a0801d51af708a"

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
    if(!roswasmc_bounded_2_geometry_msgs_msg_TwistStamped_valid(&value->tcp_twist))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_valid(&value->flange_pose))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_valid(&value->raw_ft_sensor))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_valid(&value->tcp_wrench_local))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_valid(&value->tcp_wrench))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_valid(&value->raw_tcp_wrench_local))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_valid(&value->raw_tcp_wrench))
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
    n += roswasmc_bounded_2_geometry_msgs_msg_TwistStamped_wire_size(&value->tcp_twist);
    n += roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_wire_size(&value->flange_pose);
    n += roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_wire_size(&value->raw_ft_sensor);
    n += roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_wire_size(&value->tcp_wrench_local);
    n += roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_wire_size(&value->tcp_wrench);
    n += roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_wire_size(&value->raw_tcp_wrench_local);
    n += roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_wire_size(&value->raw_tcp_wrench);
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
    roswasmc_bounded_2_geometry_msgs_msg_TwistStamped_write_fields(&value->tcp_twist, p, offset);
    roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_write_fields(&value->flange_pose, p, offset);
    roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_write_fields(&value->raw_ft_sensor, p, offset);
    roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_write_fields(&value->tcp_wrench_local, p, offset);
    roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_write_fields(&value->tcp_wrench, p, offset);
    roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_write_fields(&value->raw_tcp_wrench_local, p, offset);
    roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_write_fields(&value->raw_tcp_wrench, p, offset);
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
    if(!roswasmc_bounded_2_geometry_msgs_msg_TwistStamped_read_fields(p, n, offset, &value->tcp_twist))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_read_fields(p, n, offset, &value->flange_pose))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_read_fields(p, n, offset, &value->raw_ft_sensor))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_read_fields(p, n, offset, &value->tcp_wrench_local))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_read_fields(p, n, offset, &value->tcp_wrench))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_read_fields(p, n, offset, &value->raw_tcp_wrench_local))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_read_fields(p, n, offset, &value->raw_tcp_wrench))
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
#undef UWVM_BOUNDED_ASSERT
#endif
