/** @file Generated bounded-v2 canonical values; no native ROS serialization or authority.
 * Every dynamic field has inline caller-owned capacity. Encode validates and measures
 * the full value before writes; decode commits one temporary only after full validation.
 * Supply distinct record, byte and size-output storage; overlap is explicitly refused.
 * Empty Service/Action components use a C layout dummy that is never a wire field. */
#ifndef UWVM_ROS_BOUNDED_RECORDS_5B11F068F9674152B0CF0A7706E6BAC70BDAB241F02C43CAC4F4667BB25F6FFF
#define UWVM_ROS_BOUNDED_RECORDS_5B11F068F9674152B0CF0A7706E6BAC70BDAB241F02C43CAC4F4667BB25F6FFF
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
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_EXAMPLE_CONTROLLERS_JOINTTORQUECOMPARISON)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_EXAMPLE_CONTROLLERS_JOINTTORQUECOMPARISON_0 != 0x5173efa9UL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_EXAMPLE_CONTROLLERS_JOINTTORQUECOMPARISON_1 != 0xeacaa512UL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_EXAMPLE_CONTROLLERS_JOINTTORQUECOMPARISON_2 != 0xf38daffaUL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_EXAMPLE_CONTROLLERS_JOINTTORQUECOMPARISON_3 != 0x4b12658cUL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_EXAMPLE_CONTROLLERS_JOINTTORQUECOMPARISON_4 != 0xf41ff7dbUL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_EXAMPLE_CONTROLLERS_JOINTTORQUECOMPARISON_5 != 0x326091eaUL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_EXAMPLE_CONTROLLERS_JOINTTORQUECOMPARISON_6 != 0xe331587cUL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_EXAMPLE_CONTROLLERS_JOINTTORQUECOMPARISON_7 != 0xe46bbaf2UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_EXAMPLE_CONTROLLERS_JOINTTORQUECOMPARISON 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_EXAMPLE_CONTROLLERS_JOINTTORQUECOMPARISON_0 0x5173efa9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_EXAMPLE_CONTROLLERS_JOINTTORQUECOMPARISON_1 0xeacaa512UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_EXAMPLE_CONTROLLERS_JOINTTORQUECOMPARISON_2 0xf38daffaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_EXAMPLE_CONTROLLERS_JOINTTORQUECOMPARISON_3 0x4b12658cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_EXAMPLE_CONTROLLERS_JOINTTORQUECOMPARISON_4 0xf41ff7dbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_EXAMPLE_CONTROLLERS_JOINTTORQUECOMPARISON_5 0x326091eaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_EXAMPLE_CONTROLLERS_JOINTTORQUECOMPARISON_6 0xe331587cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_EXAMPLE_CONTROLLERS_JOINTTORQUECOMPARISON_7 0xe46bbaf2UL

/** @brief Complete ROS1 franka_example_controllers/JointTorqueComparison value; no field projects away native data. */
typedef struct roswasmc_bounded_1_franka_example_controllers_JointTorqueComparison
{
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_example_controllers/JointTorqueComparison.tau_error; native type float64.
     * Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete
     * value and acquires no ROS resource.
     */
    double tau_error[7];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_example_controllers/JointTorqueComparison.tau_commanded; native type
     * float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
     * complete value and acquires no ROS resource.
     */
    double tau_commanded[7];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_example_controllers/JointTorqueComparison.tau_measured; native type
     * float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
     * complete value and acquires no ROS resource.
     */
    double tau_measured[7];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_example_controllers/JointTorqueComparison.root_mean_square_error; native
     * type float64. Scalar value. Finite IEEE values; no implicit unit conversion. Storage belongs to the
     * complete value and acquires no ROS resource.
     */
    double root_mean_square_error;
} roswasmc_bounded_1_franka_example_controllers_JointTorqueComparison;

# define ROSWASMC_BOUNDED_1_FRANKA_EXAMPLE_CONTROLLERS_JOINTTORQUECOMPARISON_MAX_WIRE_BYTES 176u
# define ROSWASMC_BOUNDED_1_FRANKA_EXAMPLE_CONTROLLERS_JOINTTORQUECOMPARISON_MIN_WIRE_BYTES 176u
# define ROSWASMC_BOUNDED_1_FRANKA_EXAMPLE_CONTROLLERS_JOINTTORQUECOMPARISON_CODEC_IDENTITY                                                                    \
     "UWVMROS1_dde6eaf404002642e64af59eb5367948b00bc07c0b2fd8a57e359e9df3084254"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int
    roswasmc_bounded_1_franka_example_controllers_JointTorqueComparison_valid(roswasmc_bounded_1_franka_example_controllers_JointTorqueComparison const* value)
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
                uwvm_bounded_copy(&bits, &value->tau_error[i], 8);
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
                uwvm_bounded_copy(&bits, &value->tau_commanded[i], 8);
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
                uwvm_bounded_copy(&bits, &value->tau_measured[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->root_mean_square_error, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
        {
            return 0;
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_1_franka_example_controllers_JointTorqueComparison_wire_size(
    roswasmc_bounded_1_franka_example_controllers_JointTorqueComparison const* value)
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
    n += 8;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_1_franka_example_controllers_JointTorqueComparison_write_fields(
    roswasmc_bounded_1_franka_example_controllers_JointTorqueComparison const* value,
    unsigned char* p,
    size_t* offset)
{
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->tau_error[i], 8);
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
                uwvm_bounded_copy(&bits, &value->tau_commanded[i], 8);
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
                uwvm_bounded_copy(&bits, &value->tau_measured[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->root_mean_square_error, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int
    roswasmc_bounded_1_franka_example_controllers_JointTorqueComparison_read_fields(unsigned char const* p,
                                                                                    size_t n,
                                                                                    size_t* offset,
                                                                                    roswasmc_bounded_1_franka_example_controllers_JointTorqueComparison* value)
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
                uwvm_bounded_copy(&value->tau_error[i], &bits, 8);
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
                uwvm_bounded_copy(&value->tau_commanded[i], &bits, 8);
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
                uwvm_bounded_copy(&value->tau_measured[i], &bits, 8);
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
        uwvm_bounded_copy(&value->root_mean_square_error, &bits, 8);
    }
    *offset += 8;
    return roswasmc_bounded_1_franka_example_controllers_JointTorqueComparison_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_1_franka_example_controllers_JointTorqueComparison_encode(roswasmc_bounded_1_franka_example_controllers_JointTorqueComparison const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_franka_example_controllers_JointTorqueComparison_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_1_franka_example_controllers_JointTorqueComparison_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_1_franka_example_controllers_JointTorqueComparison_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_1_franka_example_controllers_JointTorqueComparison_decode(void const* input,
                                                                               size_t length,
                                                                               roswasmc_bounded_1_franka_example_controllers_JointTorqueComparison* value)
{
    roswasmc_bounded_1_franka_example_controllers_JointTorqueComparison next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 176u || length > 176u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_1_franka_example_controllers_JointTorqueComparison_read_fields((unsigned char const*)input, length, &offset, &next) ||
       offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPEPSILON)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPEPSILON_0 != 0xb9834eebUL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPEPSILON_1 != 0x57c63248UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPEPSILON_2 != 0x5dc051e0UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPEPSILON_3 != 0x3000363cUL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPEPSILON_4 != 0x05ef40c9UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPEPSILON_5 != 0x2a244d35UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPEPSILON_6 != 0x6e5d12d7UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPEPSILON_7 != 0xf679ac0cUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPEPSILON 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPEPSILON_0 0xb9834eebUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPEPSILON_1 0x57c63248UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPEPSILON_2 0x5dc051e0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPEPSILON_3 0x3000363cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPEPSILON_4 0x05ef40c9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPEPSILON_5 0x2a244d35UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPEPSILON_6 0x6e5d12d7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPEPSILON_7 0xf679ac0cUL

/** @brief Complete ROS1 franka_gripper/GraspEpsilon value; no field projects away native data. */
typedef struct roswasmc_bounded_1_franka_gripper_GraspEpsilon
{
    /**
     * @brief [m]
     * @details Original franka_gripper/GraspEpsilon.inner; native type float64. Scalar value. Finite IEEE
     * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double inner;
    /**
     * @brief [m]
     * @details Original franka_gripper/GraspEpsilon.outer; native type float64. Scalar value. Finite IEEE
     * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double outer;
} roswasmc_bounded_1_franka_gripper_GraspEpsilon;

# define ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPEPSILON_MAX_WIRE_BYTES 16u
# define ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPEPSILON_MIN_WIRE_BYTES 16u
# define ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPEPSILON_CODEC_IDENTITY "UWVMROS1_538ac801e9874841f232909d2d9a16893a8d29c8380cd623c00c408690f978f9"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_1_franka_gripper_GraspEpsilon_valid(roswasmc_bounded_1_franka_gripper_GraspEpsilon const* value)
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
inline static size_t roswasmc_bounded_1_franka_gripper_GraspEpsilon_wire_size(roswasmc_bounded_1_franka_gripper_GraspEpsilon const* value)
{
    size_t n = 0;
    n += 8;
    n += 8;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_1_franka_gripper_GraspEpsilon_write_fields(roswasmc_bounded_1_franka_gripper_GraspEpsilon const* value, unsigned char* p, size_t* offset)
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
inline static int roswasmc_bounded_1_franka_gripper_GraspEpsilon_read_fields(unsigned char const* p,
                                                                             size_t n,
                                                                             size_t* offset,
                                                                             roswasmc_bounded_1_franka_gripper_GraspEpsilon* value)
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
    return roswasmc_bounded_1_franka_gripper_GraspEpsilon_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_1_franka_gripper_GraspEpsilon_encode(roswasmc_bounded_1_franka_gripper_GraspEpsilon const* value,
                                                                             void* output,
                                                                             size_t capacity,
                                                                             size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_franka_gripper_GraspEpsilon_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_1_franka_gripper_GraspEpsilon_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_1_franka_gripper_GraspEpsilon_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_1_franka_gripper_GraspEpsilon_decode(void const* input, size_t length, roswasmc_bounded_1_franka_gripper_GraspEpsilon* value)
{
    roswasmc_bounded_1_franka_gripper_GraspEpsilon next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 16u || length > 16u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_1_franka_gripper_GraspEpsilon_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPGOAL)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPGOAL_0 != 0x27fe5824UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPGOAL_1 != 0x45b4cb85UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPGOAL_2 != 0x35584685UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPGOAL_3 != 0x074a89adUL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPGOAL_4 != 0x589888ffUL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPGOAL_5 != 0x7bc282abUL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPGOAL_6 != 0x32e8145eUL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPGOAL_7 != 0x1223de45UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPGOAL 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPGOAL_0 0x27fe5824UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPGOAL_1 0x45b4cb85UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPGOAL_2 0x35584685UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPGOAL_3 0x074a89adUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPGOAL_4 0x589888ffUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPGOAL_5 0x7bc282abUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPGOAL_6 0x32e8145eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPGOAL_7 0x1223de45UL

/** @brief Complete ROS1 franka_gripper/GraspGoal value; no field projects away native data. */
typedef struct roswasmc_bounded_1_franka_gripper_GraspGoal
{
    /**
     * @brief [m]
     * @details Original franka_gripper/GraspGoal.width; native type float64. Scalar value. Finite IEEE
     * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double width;
    /**
     * @brief Retain the complete original franka_gripper/GraspEpsilon field.
     * @details Original franka_gripper/GraspGoal.epsilon; native type franka_gripper/GraspEpsilon. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_1_franka_gripper_GraspEpsilon epsilon;
    /**
     * @brief [m/s]
     * @details Original franka_gripper/GraspGoal.speed; native type float64. Scalar value. Finite IEEE
     * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double speed;
    /**
     * @brief [N]
     * @details Original franka_gripper/GraspGoal.force; native type float64. Scalar value. Finite IEEE
     * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double force;
} roswasmc_bounded_1_franka_gripper_GraspGoal;

# define ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPGOAL_MAX_WIRE_BYTES 40u
# define ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPGOAL_MIN_WIRE_BYTES 40u
# define ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPGOAL_CODEC_IDENTITY "UWVMROS1_d3dd0d3f47e49e06a95d907a6219335b35234749518ab645e102257595ed7bcf"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_1_franka_gripper_GraspGoal_valid(roswasmc_bounded_1_franka_gripper_GraspGoal const* value)
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
    if(!roswasmc_bounded_1_franka_gripper_GraspEpsilon_valid(&value->epsilon))
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
inline static size_t roswasmc_bounded_1_franka_gripper_GraspGoal_wire_size(roswasmc_bounded_1_franka_gripper_GraspGoal const* value)
{
    size_t n = 0;
    n += 8;
    n += roswasmc_bounded_1_franka_gripper_GraspEpsilon_wire_size(&value->epsilon);
    n += 8;
    n += 8;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_1_franka_gripper_GraspGoal_write_fields(roswasmc_bounded_1_franka_gripper_GraspGoal const* value, unsigned char* p, size_t* offset)
{
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->width, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    roswasmc_bounded_1_franka_gripper_GraspEpsilon_write_fields(&value->epsilon, p, offset);
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
inline static int roswasmc_bounded_1_franka_gripper_GraspGoal_read_fields(unsigned char const* p,
                                                                          size_t n,
                                                                          size_t* offset,
                                                                          roswasmc_bounded_1_franka_gripper_GraspGoal* value)
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
    if(!roswasmc_bounded_1_franka_gripper_GraspEpsilon_read_fields(p, n, offset, &value->epsilon))
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
    return roswasmc_bounded_1_franka_gripper_GraspGoal_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_1_franka_gripper_GraspGoal_encode(roswasmc_bounded_1_franka_gripper_GraspGoal const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_franka_gripper_GraspGoal_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_1_franka_gripper_GraspGoal_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_1_franka_gripper_GraspGoal_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t roswasmc_bounded_1_franka_gripper_GraspGoal_decode(void const* input, size_t length, roswasmc_bounded_1_franka_gripper_GraspGoal* value)
{
    roswasmc_bounded_1_franka_gripper_GraspGoal next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 40u || length > 40u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_1_franka_gripper_GraspGoal_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPRESULT)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPRESULT_0 != 0x1e8d2952UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPRESULT_1 != 0xa0c7326dUL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPRESULT_2 != 0xfa71d702UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPRESULT_3 != 0x59c469b9UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPRESULT_4 != 0xf4f4a744UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPRESULT_5 != 0x2614e701UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPRESULT_6 != 0x605e8051UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPRESULT_7 != 0x76fb9006UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPRESULT 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPRESULT_0 0x1e8d2952UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPRESULT_1 0xa0c7326dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPRESULT_2 0xfa71d702UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPRESULT_3 0x59c469b9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPRESULT_4 0xf4f4a744UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPRESULT_5 0x2614e701UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPRESULT_6 0x605e8051UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPRESULT_7 0x76fb9006UL

/** @brief UTF-8 byte storage for franka_gripper/GraspResult.error; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_1_franka_gripper_GraspResult_error_text;

/** @brief Complete ROS1 franka_gripper/GraspResult value; no field projects away native data. */
typedef struct roswasmc_bounded_1_franka_gripper_GraspResult
{
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_gripper/GraspResult.success; native type bool. Scalar value. Storage
     * belongs to the complete value and acquires no ROS resource.
     */
    uint8_t success;
    /**
     * @brief Retain the complete original string field.
     * @details Original franka_gripper/GraspResult.error; native type string. Scalar value. UTF-8 capacity
     * 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_1_franka_gripper_GraspResult_error_text error;
} roswasmc_bounded_1_franka_gripper_GraspResult;

# define ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPRESULT_MAX_WIRE_BYTES 261u
# define ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPRESULT_MIN_WIRE_BYTES 5u
# define ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPRESULT_CODEC_IDENTITY "UWVMROS1_9ce1e4f95f16fd6c1603f0b30a9fcc33e4f8436cdb96710ea91eb20b38a1e02e"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_1_franka_gripper_GraspResult_valid(roswasmc_bounded_1_franka_gripper_GraspResult const* value)
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
inline static size_t roswasmc_bounded_1_franka_gripper_GraspResult_wire_size(roswasmc_bounded_1_franka_gripper_GraspResult const* value)
{
    size_t n = 0;
    n += 1;
    n += 4 + value->error.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_1_franka_gripper_GraspResult_write_fields(roswasmc_bounded_1_franka_gripper_GraspResult const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->success, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, value->error.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->error.data, value->error.size);
    *offset += value->error.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_1_franka_gripper_GraspResult_read_fields(unsigned char const* p,
                                                                            size_t n,
                                                                            size_t* offset,
                                                                            roswasmc_bounded_1_franka_gripper_GraspResult* value)
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
    return roswasmc_bounded_1_franka_gripper_GraspResult_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_1_franka_gripper_GraspResult_encode(roswasmc_bounded_1_franka_gripper_GraspResult const* value,
                                                                            void* output,
                                                                            size_t capacity,
                                                                            size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_franka_gripper_GraspResult_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_1_franka_gripper_GraspResult_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_1_franka_gripper_GraspResult_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_1_franka_gripper_GraspResult_decode(void const* input, size_t length, roswasmc_bounded_1_franka_gripper_GraspResult* value)
{
    roswasmc_bounded_1_franka_gripper_GraspResult next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 5u || length > 261u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_1_franka_gripper_GraspResult_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPFEEDBACK)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPFEEDBACK_0 != 0x6810aa28UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPFEEDBACK_1 != 0x11bf123eUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPFEEDBACK_2 != 0x2bc7ebe2UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPFEEDBACK_3 != 0xfcf35b8eUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPFEEDBACK_4 != 0x90920249UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPFEEDBACK_5 != 0xc223686bUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPFEEDBACK_6 != 0x242666f4UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPFEEDBACK_7 != 0x64fa49dcUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPFEEDBACK 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPFEEDBACK_0 0x6810aa28UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPFEEDBACK_1 0x11bf123eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPFEEDBACK_2 0x2bc7ebe2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPFEEDBACK_3 0xfcf35b8eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPFEEDBACK_4 0x90920249UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPFEEDBACK_5 0xc223686bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPFEEDBACK_6 0x242666f4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPFEEDBACK_7 0x64fa49dcUL

/** @brief Complete ROS1 franka_gripper/GraspFeedback value; no field projects away native data. */
typedef struct roswasmc_bounded_1_franka_gripper_GraspFeedback
{
    /** @brief Local C layout placeholder; empty native component has exactly zero canonical bytes. */
    unsigned char local_empty_placeholder;
} roswasmc_bounded_1_franka_gripper_GraspFeedback;

# define ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPFEEDBACK_MAX_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPFEEDBACK_MIN_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPFEEDBACK_CODEC_IDENTITY "UWVMROS1_24ca23625df0bd9fb984e65c8ecd7a3af162a3db00c15951225df5e18d3a4d0d"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_1_franka_gripper_GraspFeedback_valid(roswasmc_bounded_1_franka_gripper_GraspFeedback const* value)
{
    if(!value)
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_1_franka_gripper_GraspFeedback_wire_size(roswasmc_bounded_1_franka_gripper_GraspFeedback const* value)
{
    size_t n = 0;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_1_franka_gripper_GraspFeedback_write_fields(roswasmc_bounded_1_franka_gripper_GraspFeedback const* value, unsigned char* p, size_t* offset)
{
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_1_franka_gripper_GraspFeedback_read_fields(unsigned char const* p,
                                                                              size_t n,
                                                                              size_t* offset,
                                                                              roswasmc_bounded_1_franka_gripper_GraspFeedback* value)
{
    return roswasmc_bounded_1_franka_gripper_GraspFeedback_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_1_franka_gripper_GraspFeedback_encode(roswasmc_bounded_1_franka_gripper_GraspFeedback const* value,
                                                                              void* output,
                                                                              size_t capacity,
                                                                              size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_franka_gripper_GraspFeedback_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_1_franka_gripper_GraspFeedback_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_1_franka_gripper_GraspFeedback_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_1_franka_gripper_GraspFeedback_decode(void const* input, size_t length, roswasmc_bounded_1_franka_gripper_GraspFeedback* value)
{
    roswasmc_bounded_1_franka_gripper_GraspFeedback next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 0u || length > 0u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_1_franka_gripper_GraspFeedback_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMINGGOAL)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMINGGOAL_0 != 0x75dceae8UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMINGGOAL_1 != 0x7be62935UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMINGGOAL_2 != 0x0c492a59UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMINGGOAL_3 != 0xa3a5f6ccUL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMINGGOAL_4 != 0x4e86dec6UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMINGGOAL_5 != 0x92928b10UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMINGGOAL_6 != 0xfd66500aUL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMINGGOAL_7 != 0xe0d47ceaUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMINGGOAL 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMINGGOAL_0 0x75dceae8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMINGGOAL_1 0x7be62935UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMINGGOAL_2 0x0c492a59UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMINGGOAL_3 0xa3a5f6ccUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMINGGOAL_4 0x4e86dec6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMINGGOAL_5 0x92928b10UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMINGGOAL_6 0xfd66500aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMINGGOAL_7 0xe0d47ceaUL

/** @brief Complete ROS1 franka_gripper/HomingGoal value; no field projects away native data. */
typedef struct roswasmc_bounded_1_franka_gripper_HomingGoal
{
    /** @brief Local C layout placeholder; empty native component has exactly zero canonical bytes. */
    unsigned char local_empty_placeholder;
} roswasmc_bounded_1_franka_gripper_HomingGoal;

# define ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMINGGOAL_MAX_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMINGGOAL_MIN_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMINGGOAL_CODEC_IDENTITY "UWVMROS1_4b4f861fa9ff44afda4217cf613720e90353b0d43c1fc3425d5937157353910f"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_1_franka_gripper_HomingGoal_valid(roswasmc_bounded_1_franka_gripper_HomingGoal const* value)
{
    if(!value)
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_1_franka_gripper_HomingGoal_wire_size(roswasmc_bounded_1_franka_gripper_HomingGoal const* value)
{
    size_t n = 0;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_1_franka_gripper_HomingGoal_write_fields(roswasmc_bounded_1_franka_gripper_HomingGoal const* value, unsigned char* p, size_t* offset)
{
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_1_franka_gripper_HomingGoal_read_fields(unsigned char const* p,
                                                                           size_t n,
                                                                           size_t* offset,
                                                                           roswasmc_bounded_1_franka_gripper_HomingGoal* value)
{
    return roswasmc_bounded_1_franka_gripper_HomingGoal_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_1_franka_gripper_HomingGoal_encode(roswasmc_bounded_1_franka_gripper_HomingGoal const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_franka_gripper_HomingGoal_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_1_franka_gripper_HomingGoal_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_1_franka_gripper_HomingGoal_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_1_franka_gripper_HomingGoal_decode(void const* input, size_t length, roswasmc_bounded_1_franka_gripper_HomingGoal* value)
{
    roswasmc_bounded_1_franka_gripper_HomingGoal next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 0u || length > 0u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_1_franka_gripper_HomingGoal_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMINGRESULT)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMINGRESULT_0 != 0xe0987be7UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMINGRESULT_1 != 0x48c9d989UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMINGRESULT_2 != 0xf700ef25UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMINGRESULT_3 != 0x589459faUL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMINGRESULT_4 != 0xf177729fUL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMINGRESULT_5 != 0x3ed4c860UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMINGRESULT_6 != 0xd456eb0eUL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMINGRESULT_7 != 0x6bc77515UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMINGRESULT 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMINGRESULT_0 0xe0987be7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMINGRESULT_1 0x48c9d989UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMINGRESULT_2 0xf700ef25UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMINGRESULT_3 0x589459faUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMINGRESULT_4 0xf177729fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMINGRESULT_5 0x3ed4c860UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMINGRESULT_6 0xd456eb0eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMINGRESULT_7 0x6bc77515UL

/** @brief UTF-8 byte storage for franka_gripper/HomingResult.error; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_1_franka_gripper_HomingResult_error_text;

/** @brief Complete ROS1 franka_gripper/HomingResult value; no field projects away native data. */
typedef struct roswasmc_bounded_1_franka_gripper_HomingResult
{
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_gripper/HomingResult.success; native type bool. Scalar value. Storage
     * belongs to the complete value and acquires no ROS resource.
     */
    uint8_t success;
    /**
     * @brief Retain the complete original string field.
     * @details Original franka_gripper/HomingResult.error; native type string. Scalar value. UTF-8
     * capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    roswasmc_bounded_1_franka_gripper_HomingResult_error_text error;
} roswasmc_bounded_1_franka_gripper_HomingResult;

# define ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMINGRESULT_MAX_WIRE_BYTES 261u
# define ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMINGRESULT_MIN_WIRE_BYTES 5u
# define ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMINGRESULT_CODEC_IDENTITY "UWVMROS1_1ddf202b4e7dbf100d304b4eb32aa0ce8dca6ffadcf720820f2d7932af056477"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_1_franka_gripper_HomingResult_valid(roswasmc_bounded_1_franka_gripper_HomingResult const* value)
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
inline static size_t roswasmc_bounded_1_franka_gripper_HomingResult_wire_size(roswasmc_bounded_1_franka_gripper_HomingResult const* value)
{
    size_t n = 0;
    n += 1;
    n += 4 + value->error.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_1_franka_gripper_HomingResult_write_fields(roswasmc_bounded_1_franka_gripper_HomingResult const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->success, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, value->error.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->error.data, value->error.size);
    *offset += value->error.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_1_franka_gripper_HomingResult_read_fields(unsigned char const* p,
                                                                             size_t n,
                                                                             size_t* offset,
                                                                             roswasmc_bounded_1_franka_gripper_HomingResult* value)
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
    return roswasmc_bounded_1_franka_gripper_HomingResult_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_1_franka_gripper_HomingResult_encode(roswasmc_bounded_1_franka_gripper_HomingResult const* value,
                                                                             void* output,
                                                                             size_t capacity,
                                                                             size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_franka_gripper_HomingResult_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_1_franka_gripper_HomingResult_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_1_franka_gripper_HomingResult_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_1_franka_gripper_HomingResult_decode(void const* input, size_t length, roswasmc_bounded_1_franka_gripper_HomingResult* value)
{
    roswasmc_bounded_1_franka_gripper_HomingResult next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 5u || length > 261u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_1_franka_gripper_HomingResult_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMINGFEEDBACK)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMINGFEEDBACK_0 != 0xecd8d31cUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMINGFEEDBACK_1 != 0x0ad139c1UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMINGFEEDBACK_2 != 0xaa4fb50cUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMINGFEEDBACK_3 != 0xfe034803UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMINGFEEDBACK_4 != 0x015f8bf4UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMINGFEEDBACK_5 != 0x9a54a015UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMINGFEEDBACK_6 != 0x714ef008UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMINGFEEDBACK_7 != 0xf4dc60c2UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMINGFEEDBACK 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMINGFEEDBACK_0 0xecd8d31cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMINGFEEDBACK_1 0x0ad139c1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMINGFEEDBACK_2 0xaa4fb50cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMINGFEEDBACK_3 0xfe034803UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMINGFEEDBACK_4 0x015f8bf4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMINGFEEDBACK_5 0x9a54a015UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMINGFEEDBACK_6 0x714ef008UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMINGFEEDBACK_7 0xf4dc60c2UL

/** @brief Complete ROS1 franka_gripper/HomingFeedback value; no field projects away native data. */
typedef struct roswasmc_bounded_1_franka_gripper_HomingFeedback
{
    /** @brief Local C layout placeholder; empty native component has exactly zero canonical bytes. */
    unsigned char local_empty_placeholder;
} roswasmc_bounded_1_franka_gripper_HomingFeedback;

# define ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMINGFEEDBACK_MAX_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMINGFEEDBACK_MIN_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMINGFEEDBACK_CODEC_IDENTITY "UWVMROS1_4a1118d8ab544b2bc99ff878356aae49b4d3ecb4cb5ba7e2f93f7c0c7a29512e"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_1_franka_gripper_HomingFeedback_valid(roswasmc_bounded_1_franka_gripper_HomingFeedback const* value)
{
    if(!value)
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_1_franka_gripper_HomingFeedback_wire_size(roswasmc_bounded_1_franka_gripper_HomingFeedback const* value)
{
    size_t n = 0;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_1_franka_gripper_HomingFeedback_write_fields(roswasmc_bounded_1_franka_gripper_HomingFeedback const* value,
                                                                                 unsigned char* p,
                                                                                 size_t* offset)
{
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_1_franka_gripper_HomingFeedback_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_1_franka_gripper_HomingFeedback* value)
{
    return roswasmc_bounded_1_franka_gripper_HomingFeedback_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_1_franka_gripper_HomingFeedback_encode(roswasmc_bounded_1_franka_gripper_HomingFeedback const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_franka_gripper_HomingFeedback_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_1_franka_gripper_HomingFeedback_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_1_franka_gripper_HomingFeedback_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_1_franka_gripper_HomingFeedback_decode(void const* input, size_t length, roswasmc_bounded_1_franka_gripper_HomingFeedback* value)
{
    roswasmc_bounded_1_franka_gripper_HomingFeedback next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 0u || length > 0u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_1_franka_gripper_HomingFeedback_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVEGOAL)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVEGOAL_0 != 0x8a2ca609UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVEGOAL_1 != 0xdcaf7602UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVEGOAL_2 != 0x32257bfbUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVEGOAL_3 != 0x1523bf5aUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVEGOAL_4 != 0x1f1a92d7UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVEGOAL_5 != 0x7eb7567eUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVEGOAL_6 != 0x86bdcdecUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVEGOAL_7 != 0xc98eedacUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVEGOAL 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVEGOAL_0 0x8a2ca609UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVEGOAL_1 0xdcaf7602UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVEGOAL_2 0x32257bfbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVEGOAL_3 0x1523bf5aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVEGOAL_4 0x1f1a92d7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVEGOAL_5 0x7eb7567eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVEGOAL_6 0x86bdcdecUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVEGOAL_7 0xc98eedacUL

/** @brief Complete ROS1 franka_gripper/MoveGoal value; no field projects away native data. */
typedef struct roswasmc_bounded_1_franka_gripper_MoveGoal
{
    /**
     * @brief [m]
     * @details Original franka_gripper/MoveGoal.width; native type float64. Scalar value. Finite IEEE
     * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double width;
    /**
     * @brief [m/s]
     * @details Original franka_gripper/MoveGoal.speed; native type float64. Scalar value. Finite IEEE
     * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double speed;
} roswasmc_bounded_1_franka_gripper_MoveGoal;

# define ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVEGOAL_MAX_WIRE_BYTES 16u
# define ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVEGOAL_MIN_WIRE_BYTES 16u
# define ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVEGOAL_CODEC_IDENTITY "UWVMROS1_c83296f2540854e78cc159691c229f5d50267b3fdb31789e325a55fcd7d6830a"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_1_franka_gripper_MoveGoal_valid(roswasmc_bounded_1_franka_gripper_MoveGoal const* value)
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
inline static size_t roswasmc_bounded_1_franka_gripper_MoveGoal_wire_size(roswasmc_bounded_1_franka_gripper_MoveGoal const* value)
{
    size_t n = 0;
    n += 8;
    n += 8;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_1_franka_gripper_MoveGoal_write_fields(roswasmc_bounded_1_franka_gripper_MoveGoal const* value, unsigned char* p, size_t* offset)
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
inline static int
    roswasmc_bounded_1_franka_gripper_MoveGoal_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_1_franka_gripper_MoveGoal* value)
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
    return roswasmc_bounded_1_franka_gripper_MoveGoal_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_1_franka_gripper_MoveGoal_encode(roswasmc_bounded_1_franka_gripper_MoveGoal const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_franka_gripper_MoveGoal_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_1_franka_gripper_MoveGoal_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_1_franka_gripper_MoveGoal_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t roswasmc_bounded_1_franka_gripper_MoveGoal_decode(void const* input, size_t length, roswasmc_bounded_1_franka_gripper_MoveGoal* value)
{
    roswasmc_bounded_1_franka_gripper_MoveGoal next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 16u || length > 16u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_1_franka_gripper_MoveGoal_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVERESULT)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVERESULT_0 != 0x59f39ef7UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVERESULT_1 != 0xf935c634UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVERESULT_2 != 0x2b9d73d2UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVERESULT_3 != 0x0bad7191UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVERESULT_4 != 0xeeb8ce3cUL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVERESULT_5 != 0x4f3d1a3aUL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVERESULT_6 != 0xfb4a0144UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVERESULT_7 != 0x81684cceUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVERESULT 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVERESULT_0 0x59f39ef7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVERESULT_1 0xf935c634UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVERESULT_2 0x2b9d73d2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVERESULT_3 0x0bad7191UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVERESULT_4 0xeeb8ce3cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVERESULT_5 0x4f3d1a3aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVERESULT_6 0xfb4a0144UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVERESULT_7 0x81684cceUL

/** @brief UTF-8 byte storage for franka_gripper/MoveResult.error; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_1_franka_gripper_MoveResult_error_text;

/** @brief Complete ROS1 franka_gripper/MoveResult value; no field projects away native data. */
typedef struct roswasmc_bounded_1_franka_gripper_MoveResult
{
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_gripper/MoveResult.success; native type bool. Scalar value. Storage belongs
     * to the complete value and acquires no ROS resource.
     */
    uint8_t success;
    /**
     * @brief Retain the complete original string field.
     * @details Original franka_gripper/MoveResult.error; native type string. Scalar value. UTF-8 capacity
     * 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_1_franka_gripper_MoveResult_error_text error;
} roswasmc_bounded_1_franka_gripper_MoveResult;

# define ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVERESULT_MAX_WIRE_BYTES 261u
# define ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVERESULT_MIN_WIRE_BYTES 5u
# define ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVERESULT_CODEC_IDENTITY "UWVMROS1_527adf0720dabcc91866a0858cddfbfae1ed4203d4eb34a3965ebe085d0ac3b3"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_1_franka_gripper_MoveResult_valid(roswasmc_bounded_1_franka_gripper_MoveResult const* value)
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
inline static size_t roswasmc_bounded_1_franka_gripper_MoveResult_wire_size(roswasmc_bounded_1_franka_gripper_MoveResult const* value)
{
    size_t n = 0;
    n += 1;
    n += 4 + value->error.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_1_franka_gripper_MoveResult_write_fields(roswasmc_bounded_1_franka_gripper_MoveResult const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->success, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, value->error.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->error.data, value->error.size);
    *offset += value->error.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_1_franka_gripper_MoveResult_read_fields(unsigned char const* p,
                                                                           size_t n,
                                                                           size_t* offset,
                                                                           roswasmc_bounded_1_franka_gripper_MoveResult* value)
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
    return roswasmc_bounded_1_franka_gripper_MoveResult_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_1_franka_gripper_MoveResult_encode(roswasmc_bounded_1_franka_gripper_MoveResult const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_franka_gripper_MoveResult_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_1_franka_gripper_MoveResult_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_1_franka_gripper_MoveResult_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_1_franka_gripper_MoveResult_decode(void const* input, size_t length, roswasmc_bounded_1_franka_gripper_MoveResult* value)
{
    roswasmc_bounded_1_franka_gripper_MoveResult next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 5u || length > 261u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_1_franka_gripper_MoveResult_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVEFEEDBACK)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVEFEEDBACK_0 != 0x49232703UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVEFEEDBACK_1 != 0x3049b208UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVEFEEDBACK_2 != 0xecb7733fUL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVEFEEDBACK_3 != 0x4837f587UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVEFEEDBACK_4 != 0x28379fafUL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVEFEEDBACK_5 != 0x449fa498UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVEFEEDBACK_6 != 0xbb2bccb0UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVEFEEDBACK_7 != 0xcc32d7e8UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVEFEEDBACK 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVEFEEDBACK_0 0x49232703UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVEFEEDBACK_1 0x3049b208UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVEFEEDBACK_2 0xecb7733fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVEFEEDBACK_3 0x4837f587UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVEFEEDBACK_4 0x28379fafUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVEFEEDBACK_5 0x449fa498UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVEFEEDBACK_6 0xbb2bccb0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVEFEEDBACK_7 0xcc32d7e8UL

/** @brief Complete ROS1 franka_gripper/MoveFeedback value; no field projects away native data. */
typedef struct roswasmc_bounded_1_franka_gripper_MoveFeedback
{
    /** @brief Local C layout placeholder; empty native component has exactly zero canonical bytes. */
    unsigned char local_empty_placeholder;
} roswasmc_bounded_1_franka_gripper_MoveFeedback;

# define ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVEFEEDBACK_MAX_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVEFEEDBACK_MIN_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVEFEEDBACK_CODEC_IDENTITY "UWVMROS1_8e02ca1d66ae38a5d71ca5f708aa2c57bb3df573d37b692e24986dba384c5f80"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_1_franka_gripper_MoveFeedback_valid(roswasmc_bounded_1_franka_gripper_MoveFeedback const* value)
{
    if(!value)
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_1_franka_gripper_MoveFeedback_wire_size(roswasmc_bounded_1_franka_gripper_MoveFeedback const* value)
{
    size_t n = 0;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_1_franka_gripper_MoveFeedback_write_fields(roswasmc_bounded_1_franka_gripper_MoveFeedback const* value, unsigned char* p, size_t* offset)
{
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_1_franka_gripper_MoveFeedback_read_fields(unsigned char const* p,
                                                                             size_t n,
                                                                             size_t* offset,
                                                                             roswasmc_bounded_1_franka_gripper_MoveFeedback* value)
{
    return roswasmc_bounded_1_franka_gripper_MoveFeedback_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_1_franka_gripper_MoveFeedback_encode(roswasmc_bounded_1_franka_gripper_MoveFeedback const* value,
                                                                             void* output,
                                                                             size_t capacity,
                                                                             size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_franka_gripper_MoveFeedback_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_1_franka_gripper_MoveFeedback_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_1_franka_gripper_MoveFeedback_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_1_franka_gripper_MoveFeedback_decode(void const* input, size_t length, roswasmc_bounded_1_franka_gripper_MoveFeedback* value)
{
    roswasmc_bounded_1_franka_gripper_MoveFeedback next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 0u || length > 0u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_1_franka_gripper_MoveFeedback_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOPGOAL)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOPGOAL_0 != 0xfed6b4c6UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOPGOAL_1 != 0x6d3aaf8dUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOPGOAL_2 != 0x858523d4UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOPGOAL_3 != 0x4b41aae1UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOPGOAL_4 != 0x686d9fa8UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOPGOAL_5 != 0x505a75bfUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOPGOAL_6 != 0xe8d9bfa8UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOPGOAL_7 != 0x4ff863dbUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOPGOAL 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOPGOAL_0 0xfed6b4c6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOPGOAL_1 0x6d3aaf8dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOPGOAL_2 0x858523d4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOPGOAL_3 0x4b41aae1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOPGOAL_4 0x686d9fa8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOPGOAL_5 0x505a75bfUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOPGOAL_6 0xe8d9bfa8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOPGOAL_7 0x4ff863dbUL

/** @brief Complete ROS1 franka_gripper/StopGoal value; no field projects away native data. */
typedef struct roswasmc_bounded_1_franka_gripper_StopGoal
{
    /** @brief Local C layout placeholder; empty native component has exactly zero canonical bytes. */
    unsigned char local_empty_placeholder;
} roswasmc_bounded_1_franka_gripper_StopGoal;

# define ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOPGOAL_MAX_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOPGOAL_MIN_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOPGOAL_CODEC_IDENTITY "UWVMROS1_ecb09ccc03cb2140a457a11c174a614392ce1f9263e46c5b82427a99f7ff0245"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_1_franka_gripper_StopGoal_valid(roswasmc_bounded_1_franka_gripper_StopGoal const* value)
{
    if(!value)
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_1_franka_gripper_StopGoal_wire_size(roswasmc_bounded_1_franka_gripper_StopGoal const* value)
{
    size_t n = 0;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_1_franka_gripper_StopGoal_write_fields(roswasmc_bounded_1_franka_gripper_StopGoal const* value, unsigned char* p, size_t* offset)
{
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int
    roswasmc_bounded_1_franka_gripper_StopGoal_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_1_franka_gripper_StopGoal* value)
{
    return roswasmc_bounded_1_franka_gripper_StopGoal_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_1_franka_gripper_StopGoal_encode(roswasmc_bounded_1_franka_gripper_StopGoal const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_franka_gripper_StopGoal_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_1_franka_gripper_StopGoal_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_1_franka_gripper_StopGoal_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t roswasmc_bounded_1_franka_gripper_StopGoal_decode(void const* input, size_t length, roswasmc_bounded_1_franka_gripper_StopGoal* value)
{
    roswasmc_bounded_1_franka_gripper_StopGoal next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 0u || length > 0u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_1_franka_gripper_StopGoal_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOPRESULT)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOPRESULT_0 != 0x6675cf97UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOPRESULT_1 != 0x42f22a90UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOPRESULT_2 != 0xc6f15f15UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOPRESULT_3 != 0x7ebbd38cUL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOPRESULT_4 != 0x195ce795UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOPRESULT_5 != 0x0edbbb47UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOPRESULT_6 != 0xed4cf224UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOPRESULT_7 != 0x82fbce36UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOPRESULT 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOPRESULT_0 0x6675cf97UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOPRESULT_1 0x42f22a90UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOPRESULT_2 0xc6f15f15UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOPRESULT_3 0x7ebbd38cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOPRESULT_4 0x195ce795UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOPRESULT_5 0x0edbbb47UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOPRESULT_6 0xed4cf224UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOPRESULT_7 0x82fbce36UL

/** @brief UTF-8 byte storage for franka_gripper/StopResult.error; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_1_franka_gripper_StopResult_error_text;

/** @brief Complete ROS1 franka_gripper/StopResult value; no field projects away native data. */
typedef struct roswasmc_bounded_1_franka_gripper_StopResult
{
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_gripper/StopResult.success; native type bool. Scalar value. Storage belongs
     * to the complete value and acquires no ROS resource.
     */
    uint8_t success;
    /**
     * @brief Retain the complete original string field.
     * @details Original franka_gripper/StopResult.error; native type string. Scalar value. UTF-8 capacity
     * 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_1_franka_gripper_StopResult_error_text error;
} roswasmc_bounded_1_franka_gripper_StopResult;

# define ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOPRESULT_MAX_WIRE_BYTES 261u
# define ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOPRESULT_MIN_WIRE_BYTES 5u
# define ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOPRESULT_CODEC_IDENTITY "UWVMROS1_343e16d9b839b61ed8f8c1ce93005cb3a21511a220095200eb075dfb62a40c61"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_1_franka_gripper_StopResult_valid(roswasmc_bounded_1_franka_gripper_StopResult const* value)
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
inline static size_t roswasmc_bounded_1_franka_gripper_StopResult_wire_size(roswasmc_bounded_1_franka_gripper_StopResult const* value)
{
    size_t n = 0;
    n += 1;
    n += 4 + value->error.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_1_franka_gripper_StopResult_write_fields(roswasmc_bounded_1_franka_gripper_StopResult const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->success, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, value->error.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->error.data, value->error.size);
    *offset += value->error.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_1_franka_gripper_StopResult_read_fields(unsigned char const* p,
                                                                           size_t n,
                                                                           size_t* offset,
                                                                           roswasmc_bounded_1_franka_gripper_StopResult* value)
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
    return roswasmc_bounded_1_franka_gripper_StopResult_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_1_franka_gripper_StopResult_encode(roswasmc_bounded_1_franka_gripper_StopResult const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_franka_gripper_StopResult_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_1_franka_gripper_StopResult_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_1_franka_gripper_StopResult_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_1_franka_gripper_StopResult_decode(void const* input, size_t length, roswasmc_bounded_1_franka_gripper_StopResult* value)
{
    roswasmc_bounded_1_franka_gripper_StopResult next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 5u || length > 261u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_1_franka_gripper_StopResult_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOPFEEDBACK)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOPFEEDBACK_0 != 0x6c5954b8UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOPFEEDBACK_1 != 0x0369eee5UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOPFEEDBACK_2 != 0xb5833f87UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOPFEEDBACK_3 != 0xcfb94845UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOPFEEDBACK_4 != 0xc1c9ed21UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOPFEEDBACK_5 != 0x90b07788UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOPFEEDBACK_6 != 0xab209324UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOPFEEDBACK_7 != 0xbf08f83bUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOPFEEDBACK 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOPFEEDBACK_0 0x6c5954b8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOPFEEDBACK_1 0x0369eee5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOPFEEDBACK_2 0xb5833f87UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOPFEEDBACK_3 0xcfb94845UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOPFEEDBACK_4 0xc1c9ed21UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOPFEEDBACK_5 0x90b07788UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOPFEEDBACK_6 0xab209324UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOPFEEDBACK_7 0xbf08f83bUL

/** @brief Complete ROS1 franka_gripper/StopFeedback value; no field projects away native data. */
typedef struct roswasmc_bounded_1_franka_gripper_StopFeedback
{
    /** @brief Local C layout placeholder; empty native component has exactly zero canonical bytes. */
    unsigned char local_empty_placeholder;
} roswasmc_bounded_1_franka_gripper_StopFeedback;

# define ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOPFEEDBACK_MAX_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOPFEEDBACK_MIN_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOPFEEDBACK_CODEC_IDENTITY "UWVMROS1_62b637081e95f59df491f71b0ca84394a7e1f36137ca389a8f6d0d3a0f19038d"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_1_franka_gripper_StopFeedback_valid(roswasmc_bounded_1_franka_gripper_StopFeedback const* value)
{
    if(!value)
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_1_franka_gripper_StopFeedback_wire_size(roswasmc_bounded_1_franka_gripper_StopFeedback const* value)
{
    size_t n = 0;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_1_franka_gripper_StopFeedback_write_fields(roswasmc_bounded_1_franka_gripper_StopFeedback const* value, unsigned char* p, size_t* offset)
{
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_1_franka_gripper_StopFeedback_read_fields(unsigned char const* p,
                                                                             size_t n,
                                                                             size_t* offset,
                                                                             roswasmc_bounded_1_franka_gripper_StopFeedback* value)
{
    return roswasmc_bounded_1_franka_gripper_StopFeedback_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_1_franka_gripper_StopFeedback_encode(roswasmc_bounded_1_franka_gripper_StopFeedback const* value,
                                                                             void* output,
                                                                             size_t capacity,
                                                                             size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_franka_gripper_StopFeedback_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_1_franka_gripper_StopFeedback_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_1_franka_gripper_StopFeedback_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_1_franka_gripper_StopFeedback_decode(void const* input, size_t length, roswasmc_bounded_1_franka_gripper_StopFeedback* value)
{
    roswasmc_bounded_1_franka_gripper_StopFeedback next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 0u || length > 0u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_1_franka_gripper_StopFeedback_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERYGOAL)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERYGOAL_0 != 0x03af6928UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERYGOAL_1 != 0xa55015faUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERYGOAL_2 != 0x5049c9d9UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERYGOAL_3 != 0xa109ba89UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERYGOAL_4 != 0xe28e78acUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERYGOAL_5 != 0xf70f8447UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERYGOAL_6 != 0x6c604b05UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERYGOAL_7 != 0xbcb183edUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERYGOAL 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERYGOAL_0 0x03af6928UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERYGOAL_1 0xa55015faUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERYGOAL_2 0x5049c9d9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERYGOAL_3 0xa109ba89UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERYGOAL_4 0xe28e78acUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERYGOAL_5 0xf70f8447UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERYGOAL_6 0x6c604b05UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERYGOAL_7 0xbcb183edUL

/** @brief Complete ROS1 franka_msgs/ErrorRecoveryGoal value; no field projects away native data. */
typedef struct roswasmc_bounded_1_franka_msgs_ErrorRecoveryGoal
{
    /** @brief Local C layout placeholder; empty native component has exactly zero canonical bytes. */
    unsigned char local_empty_placeholder;
} roswasmc_bounded_1_franka_msgs_ErrorRecoveryGoal;

# define ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERYGOAL_MAX_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERYGOAL_MIN_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERYGOAL_CODEC_IDENTITY "UWVMROS1_b4f11555bc4919bf59aa548bd21046bdc7b1e2ed5cce6dc46298eb7486ef7b64"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_1_franka_msgs_ErrorRecoveryGoal_valid(roswasmc_bounded_1_franka_msgs_ErrorRecoveryGoal const* value)
{
    if(!value)
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_1_franka_msgs_ErrorRecoveryGoal_wire_size(roswasmc_bounded_1_franka_msgs_ErrorRecoveryGoal const* value)
{
    size_t n = 0;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_1_franka_msgs_ErrorRecoveryGoal_write_fields(roswasmc_bounded_1_franka_msgs_ErrorRecoveryGoal const* value,
                                                                                 unsigned char* p,
                                                                                 size_t* offset)
{
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_1_franka_msgs_ErrorRecoveryGoal_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_1_franka_msgs_ErrorRecoveryGoal* value)
{
    return roswasmc_bounded_1_franka_msgs_ErrorRecoveryGoal_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_1_franka_msgs_ErrorRecoveryGoal_encode(roswasmc_bounded_1_franka_msgs_ErrorRecoveryGoal const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_franka_msgs_ErrorRecoveryGoal_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_1_franka_msgs_ErrorRecoveryGoal_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_1_franka_msgs_ErrorRecoveryGoal_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_1_franka_msgs_ErrorRecoveryGoal_decode(void const* input, size_t length, roswasmc_bounded_1_franka_msgs_ErrorRecoveryGoal* value)
{
    roswasmc_bounded_1_franka_msgs_ErrorRecoveryGoal next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 0u || length > 0u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_1_franka_msgs_ErrorRecoveryGoal_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERYRESULT)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERYRESULT_0 != 0xb2d74d02UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERYRESULT_1 != 0x93d52536UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERYRESULT_2 != 0xb7470c18UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERYRESULT_3 != 0x3862adf0UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERYRESULT_4 != 0x6554c5bdUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERYRESULT_5 != 0x68f9e5d4UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERYRESULT_6 != 0xa3cc983aUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERYRESULT_7 != 0x85416c06UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERYRESULT 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERYRESULT_0 0xb2d74d02UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERYRESULT_1 0x93d52536UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERYRESULT_2 0xb7470c18UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERYRESULT_3 0x3862adf0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERYRESULT_4 0x6554c5bdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERYRESULT_5 0x68f9e5d4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERYRESULT_6 0xa3cc983aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERYRESULT_7 0x85416c06UL

/** @brief Complete ROS1 franka_msgs/ErrorRecoveryResult value; no field projects away native data. */
typedef struct roswasmc_bounded_1_franka_msgs_ErrorRecoveryResult
{
    /** @brief Local C layout placeholder; empty native component has exactly zero canonical bytes. */
    unsigned char local_empty_placeholder;
} roswasmc_bounded_1_franka_msgs_ErrorRecoveryResult;

# define ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERYRESULT_MAX_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERYRESULT_MIN_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERYRESULT_CODEC_IDENTITY "UWVMROS1_6f06297f59f06dc46e3f983b72101ae3c25cd054bca44cea1f6dd11a9aaa7794"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_1_franka_msgs_ErrorRecoveryResult_valid(roswasmc_bounded_1_franka_msgs_ErrorRecoveryResult const* value)
{
    if(!value)
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_1_franka_msgs_ErrorRecoveryResult_wire_size(roswasmc_bounded_1_franka_msgs_ErrorRecoveryResult const* value)
{
    size_t n = 0;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_1_franka_msgs_ErrorRecoveryResult_write_fields(roswasmc_bounded_1_franka_msgs_ErrorRecoveryResult const* value,
                                                                                   unsigned char* p,
                                                                                   size_t* offset)
{
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_1_franka_msgs_ErrorRecoveryResult_read_fields(unsigned char const* p,
                                                                                 size_t n,
                                                                                 size_t* offset,
                                                                                 roswasmc_bounded_1_franka_msgs_ErrorRecoveryResult* value)
{
    return roswasmc_bounded_1_franka_msgs_ErrorRecoveryResult_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_1_franka_msgs_ErrorRecoveryResult_encode(roswasmc_bounded_1_franka_msgs_ErrorRecoveryResult const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_franka_msgs_ErrorRecoveryResult_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_1_franka_msgs_ErrorRecoveryResult_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_1_franka_msgs_ErrorRecoveryResult_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_1_franka_msgs_ErrorRecoveryResult_decode(void const* input, size_t length, roswasmc_bounded_1_franka_msgs_ErrorRecoveryResult* value)
{
    roswasmc_bounded_1_franka_msgs_ErrorRecoveryResult next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 0u || length > 0u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_1_franka_msgs_ErrorRecoveryResult_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERYFEEDBACK)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERYFEEDBACK_0 != 0x1b4d8b8fUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERYFEEDBACK_1 != 0x6b363559UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERYFEEDBACK_2 != 0x3cbe287eUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERYFEEDBACK_3 != 0xc922673eUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERYFEEDBACK_4 != 0x3c97eecbUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERYFEEDBACK_5 != 0x4d57dc51UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERYFEEDBACK_6 != 0x5d298953UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERYFEEDBACK_7 != 0xe6e75ce1UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERYFEEDBACK 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERYFEEDBACK_0 0x1b4d8b8fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERYFEEDBACK_1 0x6b363559UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERYFEEDBACK_2 0x3cbe287eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERYFEEDBACK_3 0xc922673eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERYFEEDBACK_4 0x3c97eecbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERYFEEDBACK_5 0x4d57dc51UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERYFEEDBACK_6 0x5d298953UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERYFEEDBACK_7 0xe6e75ce1UL

/** @brief Complete ROS1 franka_msgs/ErrorRecoveryFeedback value; no field projects away native data. */
typedef struct roswasmc_bounded_1_franka_msgs_ErrorRecoveryFeedback
{
    /** @brief Local C layout placeholder; empty native component has exactly zero canonical bytes. */
    unsigned char local_empty_placeholder;
} roswasmc_bounded_1_franka_msgs_ErrorRecoveryFeedback;

# define ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERYFEEDBACK_MAX_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERYFEEDBACK_MIN_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERYFEEDBACK_CODEC_IDENTITY "UWVMROS1_3faee6d8afdc0524598cec0fe30fd51bd723e8e44849f035368723e59be87a21"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_1_franka_msgs_ErrorRecoveryFeedback_valid(roswasmc_bounded_1_franka_msgs_ErrorRecoveryFeedback const* value)
{
    if(!value)
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_1_franka_msgs_ErrorRecoveryFeedback_wire_size(roswasmc_bounded_1_franka_msgs_ErrorRecoveryFeedback const* value)
{
    size_t n = 0;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_1_franka_msgs_ErrorRecoveryFeedback_write_fields(roswasmc_bounded_1_franka_msgs_ErrorRecoveryFeedback const* value,
                                                                                     unsigned char* p,
                                                                                     size_t* offset)
{
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_1_franka_msgs_ErrorRecoveryFeedback_read_fields(unsigned char const* p,
                                                                                   size_t n,
                                                                                   size_t* offset,
                                                                                   roswasmc_bounded_1_franka_msgs_ErrorRecoveryFeedback* value)
{
    return roswasmc_bounded_1_franka_msgs_ErrorRecoveryFeedback_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_1_franka_msgs_ErrorRecoveryFeedback_encode(roswasmc_bounded_1_franka_msgs_ErrorRecoveryFeedback const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_franka_msgs_ErrorRecoveryFeedback_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_1_franka_msgs_ErrorRecoveryFeedback_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_1_franka_msgs_ErrorRecoveryFeedback_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_1_franka_msgs_ErrorRecoveryFeedback_decode(void const* input, size_t length, roswasmc_bounded_1_franka_msgs_ErrorRecoveryFeedback* value)
{
    roswasmc_bounded_1_franka_msgs_ErrorRecoveryFeedback next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 0u || length > 0u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_1_franka_msgs_ErrorRecoveryFeedback_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORS)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORS_0 != 0x3d55088bUL ||                                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORS_1 != 0x317baf79UL ||                                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORS_2 != 0xb6a29c1fUL ||                                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORS_3 != 0x7f7bf351UL ||                                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORS_4 != 0x3af0578dUL ||                                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORS_5 != 0x1622207eUL ||                                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORS_6 != 0x794b5e1fUL ||                                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORS_7 != 0x6f995f71UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORS 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORS_0 0x3d55088bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORS_1 0x317baf79UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORS_2 0xb6a29c1fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORS_3 0x7f7bf351UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORS_4 0x3af0578dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORS_5 0x1622207eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORS_6 0x794b5e1fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORS_7 0x6f995f71UL

/** @brief Complete ROS1 franka_msgs/Errors value; no field projects away native data. */
typedef struct roswasmc_bounded_1_franka_msgs_Errors
{
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/Errors.joint_position_limits_violation; native type bool. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t joint_position_limits_violation;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/Errors.cartesian_position_limits_violation; native type bool. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t cartesian_position_limits_violation;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/Errors.self_collision_avoidance_violation; native type bool. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t self_collision_avoidance_violation;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/Errors.joint_velocity_violation; native type bool. Scalar value.
     * Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t joint_velocity_violation;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/Errors.cartesian_velocity_violation; native type bool. Scalar value.
     * Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t cartesian_velocity_violation;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/Errors.force_control_safety_violation; native type bool. Scalar value.
     * Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t force_control_safety_violation;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/Errors.joint_reflex; native type bool. Scalar value. Storage belongs
     * to the complete value and acquires no ROS resource.
     */
    uint8_t joint_reflex;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/Errors.cartesian_reflex; native type bool. Scalar value. Storage
     * belongs to the complete value and acquires no ROS resource.
     */
    uint8_t cartesian_reflex;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/Errors.max_goal_pose_deviation_violation; native type bool. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t max_goal_pose_deviation_violation;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/Errors.max_path_pose_deviation_violation; native type bool. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t max_path_pose_deviation_violation;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/Errors.cartesian_velocity_profile_safety_violation; native type bool.
     * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t cartesian_velocity_profile_safety_violation;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/Errors.joint_position_motion_generator_start_pose_invalid; native type
     * bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t joint_position_motion_generator_start_pose_invalid;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/Errors.joint_motion_generator_position_limits_violation; native type
     * bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t joint_motion_generator_position_limits_violation;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/Errors.joint_motion_generator_velocity_limits_violation; native type
     * bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t joint_motion_generator_velocity_limits_violation;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/Errors.joint_motion_generator_velocity_discontinuity; native type
     * bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t joint_motion_generator_velocity_discontinuity;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/Errors.joint_motion_generator_acceleration_discontinuity; native type
     * bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t joint_motion_generator_acceleration_discontinuity;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/Errors.cartesian_position_motion_generator_start_pose_invalid; native
     * type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t cartesian_position_motion_generator_start_pose_invalid;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/Errors.cartesian_motion_generator_elbow_limit_violation; native type
     * bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t cartesian_motion_generator_elbow_limit_violation;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/Errors.cartesian_motion_generator_velocity_limits_violation; native
     * type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t cartesian_motion_generator_velocity_limits_violation;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/Errors.cartesian_motion_generator_velocity_discontinuity; native type
     * bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t cartesian_motion_generator_velocity_discontinuity;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/Errors.cartesian_motion_generator_acceleration_discontinuity; native
     * type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t cartesian_motion_generator_acceleration_discontinuity;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/Errors.cartesian_motion_generator_elbow_sign_inconsistent; native type
     * bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t cartesian_motion_generator_elbow_sign_inconsistent;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/Errors.cartesian_motion_generator_start_elbow_invalid; native type
     * bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t cartesian_motion_generator_start_elbow_invalid;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/Errors.cartesian_motion_generator_joint_position_limits_violation;
     * native type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t cartesian_motion_generator_joint_position_limits_violation;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/Errors.cartesian_motion_generator_joint_velocity_limits_violation;
     * native type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t cartesian_motion_generator_joint_velocity_limits_violation;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/Errors.cartesian_motion_generator_joint_velocity_discontinuity; native
     * type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t cartesian_motion_generator_joint_velocity_discontinuity;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/Errors.cartesian_motion_generator_joint_acceleration_discontinuity;
     * native type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t cartesian_motion_generator_joint_acceleration_discontinuity;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/Errors.cartesian_position_motion_generator_invalid_frame; native type
     * bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t cartesian_position_motion_generator_invalid_frame;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/Errors.force_controller_desired_force_tolerance_violation; native type
     * bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t force_controller_desired_force_tolerance_violation;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/Errors.controller_torque_discontinuity; native type bool. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t controller_torque_discontinuity;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/Errors.start_elbow_sign_inconsistent; native type bool. Scalar value.
     * Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t start_elbow_sign_inconsistent;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/Errors.communication_constraints_violation; native type bool. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t communication_constraints_violation;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/Errors.power_limit_violation; native type bool. Scalar value. Storage
     * belongs to the complete value and acquires no ROS resource.
     */
    uint8_t power_limit_violation;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/Errors.joint_p2p_insufficient_torque_for_planning; native type bool.
     * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t joint_p2p_insufficient_torque_for_planning;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/Errors.tau_j_range_violation; native type bool. Scalar value. Storage
     * belongs to the complete value and acquires no ROS resource.
     */
    uint8_t tau_j_range_violation;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/Errors.instability_detected; native type bool. Scalar value. Storage
     * belongs to the complete value and acquires no ROS resource.
     */
    uint8_t instability_detected;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/Errors.joint_move_in_wrong_direction; native type bool. Scalar value.
     * Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t joint_move_in_wrong_direction;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/Errors.cartesian_spline_motion_generator_violation; native type bool.
     * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t cartesian_spline_motion_generator_violation;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/Errors.joint_via_motion_generator_planning_joint_limit_violation;
     * native type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t joint_via_motion_generator_planning_joint_limit_violation;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/Errors.base_acceleration_initialization_timeout; native type bool.
     * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t base_acceleration_initialization_timeout;
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/Errors.base_acceleration_invalid_reading; native type bool. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t base_acceleration_invalid_reading;
} roswasmc_bounded_1_franka_msgs_Errors;

# define ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORS_MAX_WIRE_BYTES 41u
# define ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORS_MIN_WIRE_BYTES 41u
# define ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORS_CODEC_IDENTITY "UWVMROS1_80e3d1157d53bf80d4db3621f9f22b35a1ef665382974599ff016709c6a629ca"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_1_franka_msgs_Errors_valid(roswasmc_bounded_1_franka_msgs_Errors const* value)
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
    if(value->joint_move_in_wrong_direction > 1)
    {
        return 0;
    }
    if(value->cartesian_spline_motion_generator_violation > 1)
    {
        return 0;
    }
    if(value->joint_via_motion_generator_planning_joint_limit_violation > 1)
    {
        return 0;
    }
    if(value->base_acceleration_initialization_timeout > 1)
    {
        return 0;
    }
    if(value->base_acceleration_invalid_reading > 1)
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_1_franka_msgs_Errors_wire_size(roswasmc_bounded_1_franka_msgs_Errors const* value)
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
    n += 1;
    n += 1;
    n += 1;
    n += 1;
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_1_franka_msgs_Errors_write_fields(roswasmc_bounded_1_franka_msgs_Errors const* value, unsigned char* p, size_t* offset)
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
    uwvm_bounded_put(p + *offset, (uint64_t)value->joint_move_in_wrong_direction, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->cartesian_spline_motion_generator_violation, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->joint_via_motion_generator_planning_joint_limit_violation, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->base_acceleration_initialization_timeout, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->base_acceleration_invalid_reading, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int
    roswasmc_bounded_1_franka_msgs_Errors_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_1_franka_msgs_Errors* value)
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
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->joint_move_in_wrong_direction, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->cartesian_spline_motion_generator_violation, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->joint_via_motion_generator_planning_joint_limit_violation, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->base_acceleration_initialization_timeout, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->base_acceleration_invalid_reading, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_1_franka_msgs_Errors_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_1_franka_msgs_Errors_encode(roswasmc_bounded_1_franka_msgs_Errors const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_franka_msgs_Errors_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_1_franka_msgs_Errors_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_1_franka_msgs_Errors_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t roswasmc_bounded_1_franka_msgs_Errors_decode(void const* input, size_t length, roswasmc_bounded_1_franka_msgs_Errors* value)
{
    roswasmc_bounded_1_franka_msgs_Errors next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 41u || length > 41u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_1_franka_msgs_Errors_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TIME)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TIME_0 != 0x230564cdUL || UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TIME_1 != 0x73d83bdaUL ||                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TIME_2 != 0x3c9e449dUL || UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TIME_3 != 0x3d16038eUL ||                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TIME_4 != 0x53dba45aUL || UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TIME_5 != 0x8c5fb8a0UL ||                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TIME_6 != 0xfc5b0b8aUL || UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TIME_7 != 0x9538341fUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TIME 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TIME_0 0x230564cdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TIME_1 0x73d83bdaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TIME_2 0x3c9e449dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TIME_3 0x3d16038eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TIME_4 0x53dba45aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TIME_5 0x8c5fb8a0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TIME_6 0xfc5b0b8aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TIME_7 0x9538341fUL

/** @brief Complete ROS1 time value; no field projects away native data. */
typedef struct roswasmc_bounded_1_time
{
    /**
     * @brief Retain the complete original uint32 field.
     * @details Original time.sec; native type uint32. Scalar value. Storage belongs to the complete value
     * and acquires no ROS resource.
     */
    uint32_t sec;
    /**
     * @brief Retain the complete original uint32 field.
     * @details Original time.nsec; native type uint32. Scalar value. Storage belongs to the complete value
     * and acquires no ROS resource.
     */
    uint32_t nsec;
} roswasmc_bounded_1_time;

# define ROSWASMC_BOUNDED_1_TIME_MAX_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_1_TIME_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_1_TIME_CODEC_IDENTITY "UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_1_time_valid(roswasmc_bounded_1_time const* value)
{
    if(!value)
    {
        return 0;
    }
    if(value->nsec >= 1000000000)
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_1_time_wire_size(roswasmc_bounded_1_time const* value)
{
    size_t n = 0;
    n += 4;
    n += 4;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_1_time_write_fields(roswasmc_bounded_1_time const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->sec, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->nsec, 4);
    *offset += 4;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_1_time_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_1_time* value)
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
        uwvm_bounded_copy(&value->nsec, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_1_time_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_1_time_encode(roswasmc_bounded_1_time const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_time_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_1_time_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_1_time_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t roswasmc_bounded_1_time_decode(void const* input, size_t length, roswasmc_bounded_1_time* value)
{
    roswasmc_bounded_1_time next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 8u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_1_time_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_MSGS_HEADER)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_MSGS_HEADER_0 != 0x708b5550UL ||                                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_MSGS_HEADER_1 != 0x16ddb9e1UL ||                                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_MSGS_HEADER_2 != 0x1bf29141UL ||                                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_MSGS_HEADER_3 != 0xd4312551UL ||                                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_MSGS_HEADER_4 != 0xa5f20741UL ||                                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_MSGS_HEADER_5 != 0xeedfd9b3UL ||                                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_MSGS_HEADER_6 != 0x0278a587UL ||                                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_MSGS_HEADER_7 != 0xb5ff5554UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_MSGS_HEADER 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_MSGS_HEADER_0 0x708b5550UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_MSGS_HEADER_1 0x16ddb9e1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_MSGS_HEADER_2 0x1bf29141UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_MSGS_HEADER_3 0xd4312551UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_MSGS_HEADER_4 0xa5f20741UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_MSGS_HEADER_5 0xeedfd9b3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_MSGS_HEADER_6 0x0278a587UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_MSGS_HEADER_7 0xb5ff5554UL

/** @brief UTF-8 byte storage for std_msgs/Header.frame_id; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_std_msgs_Header_frame_id_text;

/** @brief Complete ROS1 std_msgs/Header value; no field projects away native data. */
typedef struct roswasmc_bounded_1_std_msgs_Header
{
    /**
     * @brief Standard metadata for higher-level stamped data types. This is generally used to communicate
     * timestamped data in a particular coordinate frame.  sequence ID: consecutively increasing ID
     * @details Original std_msgs/Header.seq; native type uint32. Scalar value. Storage belongs to the
     * complete value and acquires no ROS resource.
     */
    uint32_t seq;
    /**
     * @brief Two-integer timestamp that is expressed as: * stamp.sec: seconds (stamp_secs) since epoch (in
     * Python the variable is called 'secs') * stamp.nsec: nanoseconds since stamp_secs (in Python the
     * variable is called 'nsecs') time-handling sugar is provided by the client library
     * @details Original std_msgs/Header.stamp; native type time. Scalar value. Storage belongs to the
     * complete value and acquires no ROS resource.
     */
    roswasmc_bounded_1_time stamp;
    /**
     * @brief Frame this data is associated with
     * @details Original std_msgs/Header.frame_id; native type string. Scalar value. UTF-8 capacity 128
     * bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_1_std_msgs_Header_frame_id_text frame_id;
} roswasmc_bounded_1_std_msgs_Header;

# define ROSWASMC_BOUNDED_1_STD_MSGS_HEADER_MAX_WIRE_BYTES 144u
# define ROSWASMC_BOUNDED_1_STD_MSGS_HEADER_MIN_WIRE_BYTES 16u
# define ROSWASMC_BOUNDED_1_STD_MSGS_HEADER_CODEC_IDENTITY "UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_1_std_msgs_Header_valid(roswasmc_bounded_1_std_msgs_Header const* value)
{
    if(!value)
    {
        return 0;
    }
    if(!roswasmc_bounded_1_time_valid(&value->stamp))
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
inline static size_t roswasmc_bounded_1_std_msgs_Header_wire_size(roswasmc_bounded_1_std_msgs_Header const* value)
{
    size_t n = 0;
    n += 4;
    n += roswasmc_bounded_1_time_wire_size(&value->stamp);
    n += 4 + value->frame_id.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_1_std_msgs_Header_write_fields(roswasmc_bounded_1_std_msgs_Header const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->seq, 4);
    *offset += 4;
    roswasmc_bounded_1_time_write_fields(&value->stamp, p, offset);
    uwvm_bounded_put(p + *offset, value->frame_id.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->frame_id.data, value->frame_id.size);
    *offset += value->frame_id.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_1_std_msgs_Header_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_1_std_msgs_Header* value)
{
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->seq, &bits, 4);
    }
    *offset += 4;
    if(!roswasmc_bounded_1_time_read_fields(p, n, offset, &value->stamp))
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
    return roswasmc_bounded_1_std_msgs_Header_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_1_std_msgs_Header_encode(roswasmc_bounded_1_std_msgs_Header const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_std_msgs_Header_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_1_std_msgs_Header_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_1_std_msgs_Header_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t roswasmc_bounded_1_std_msgs_Header_decode(void const* input, size_t length, roswasmc_bounded_1_std_msgs_Header* value)
{
    roswasmc_bounded_1_std_msgs_Header next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 16u || length > 144u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_1_std_msgs_Header_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_FRANKASTATE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_FRANKASTATE_0 != 0x7625438eUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_FRANKASTATE_1 != 0xedd13d08UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_FRANKASTATE_2 != 0x4e1fcbfcUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_FRANKASTATE_3 != 0x19513cc8UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_FRANKASTATE_4 != 0x663e6653UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_FRANKASTATE_5 != 0x7be5bf8dUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_FRANKASTATE_6 != 0xd65b73d0UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_FRANKASTATE_7 != 0xbe69353bUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_FRANKASTATE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_FRANKASTATE_0 0x7625438eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_FRANKASTATE_1 0xedd13d08UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_FRANKASTATE_2 0x4e1fcbfcUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_FRANKASTATE_3 0x19513cc8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_FRANKASTATE_4 0x663e6653UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_FRANKASTATE_5 0x7be5bf8dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_FRANKASTATE_6 0xd65b73d0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_FRANKASTATE_7 0xbe69353bUL

/** @brief Complete ROS1 franka_msgs/FrankaState value; no field projects away native data. */
typedef struct roswasmc_bounded_1_franka_msgs_FrankaState
{
    /**
     * @brief Retain the complete original std_msgs/Header field.
     * @details Original franka_msgs/FrankaState.header; native type std_msgs/Header. Scalar value. Storage
     * belongs to the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_1_std_msgs_Header header;
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_msgs/FrankaState.cartesian_collision; native type float64. Exactly 6
     * elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
     * acquires no ROS resource.
     */
    double cartesian_collision[6];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_msgs/FrankaState.cartesian_contact; native type float64. Exactly 6
     * elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
     * acquires no ROS resource.
     */
    double cartesian_contact[6];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_msgs/FrankaState.q; native type float64. Exactly 7 elements. Finite IEEE
     * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double q[7];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_msgs/FrankaState.q_d; native type float64. Exactly 7 elements. Finite IEEE
     * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double q_d[7];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_msgs/FrankaState.dq; native type float64. Exactly 7 elements. Finite IEEE
     * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double dq[7];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_msgs/FrankaState.dq_d; native type float64. Exactly 7 elements. Finite IEEE
     * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double dq_d[7];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_msgs/FrankaState.ddq_d; native type float64. Exactly 7 elements. Finite
     * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double ddq_d[7];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_msgs/FrankaState.theta; native type float64. Exactly 7 elements. Finite
     * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double theta[7];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_msgs/FrankaState.dtheta; native type float64. Exactly 7 elements. Finite
     * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double dtheta[7];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_msgs/FrankaState.tau_J; native type float64. Exactly 7 elements. Finite
     * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double tau_J[7];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_msgs/FrankaState.dtau_J; native type float64. Exactly 7 elements. Finite
     * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double dtau_J[7];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_msgs/FrankaState.tau_J_d; native type float64. Exactly 7 elements. Finite
     * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double tau_J_d[7];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_msgs/FrankaState.K_F_ext_hat_K; native type float64. Exactly 6 elements.
     * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    double K_F_ext_hat_K[6];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_msgs/FrankaState.elbow; native type float64. Exactly 2 elements. Finite
     * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double elbow[2];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_msgs/FrankaState.elbow_d; native type float64. Exactly 2 elements. Finite
     * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double elbow_d[2];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_msgs/FrankaState.elbow_c; native type float64. Exactly 2 elements. Finite
     * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double elbow_c[2];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_msgs/FrankaState.delbow_c; native type float64. Exactly 2 elements. Finite
     * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double delbow_c[2];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_msgs/FrankaState.ddelbow_c; native type float64. Exactly 2 elements. Finite
     * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double ddelbow_c[2];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_msgs/FrankaState.joint_collision; native type float64. Exactly 7 elements.
     * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    double joint_collision[7];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_msgs/FrankaState.joint_contact; native type float64. Exactly 7 elements.
     * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    double joint_contact[7];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_msgs/FrankaState.O_F_ext_hat_K; native type float64. Exactly 6 elements.
     * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    double O_F_ext_hat_K[6];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_msgs/FrankaState.O_dP_EE_d; native type float64. Exactly 6 elements. Finite
     * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double O_dP_EE_d[6];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_msgs/FrankaState.O_ddP_O; native type float64. Exactly 3 elements. Finite
     * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double O_ddP_O[3];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_msgs/FrankaState.O_dP_EE_c; native type float64. Exactly 6 elements. Finite
     * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double O_dP_EE_c[6];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_msgs/FrankaState.O_ddP_EE_c; native type float64. Exactly 6 elements.
     * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    double O_ddP_EE_c[6];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_msgs/FrankaState.tau_ext_hat_filtered; native type float64. Exactly 7
     * elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
     * acquires no ROS resource.
     */
    double tau_ext_hat_filtered[7];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_msgs/FrankaState.m_ee; native type float64. Scalar value. Finite IEEE
     * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double m_ee;
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_msgs/FrankaState.F_x_Cee; native type float64. Exactly 3 elements. Finite
     * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double F_x_Cee[3];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_msgs/FrankaState.I_ee; native type float64. Exactly 9 elements. Finite IEEE
     * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double I_ee[9];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_msgs/FrankaState.m_load; native type float64. Scalar value. Finite IEEE
     * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double m_load;
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_msgs/FrankaState.F_x_Cload; native type float64. Exactly 3 elements. Finite
     * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double F_x_Cload[3];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_msgs/FrankaState.I_load; native type float64. Exactly 9 elements. Finite
     * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double I_load[9];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_msgs/FrankaState.m_total; native type float64. Scalar value. Finite IEEE
     * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double m_total;
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_msgs/FrankaState.F_x_Ctotal; native type float64. Exactly 3 elements.
     * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    double F_x_Ctotal[3];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_msgs/FrankaState.I_total; native type float64. Exactly 9 elements. Finite
     * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double I_total[9];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_msgs/FrankaState.O_T_EE; native type float64. Exactly 16 elements. Finite
     * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double O_T_EE[16];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_msgs/FrankaState.O_T_EE_d; native type float64. Exactly 16 elements. Finite
     * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double O_T_EE_d[16];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_msgs/FrankaState.O_T_EE_c; native type float64. Exactly 16 elements. Finite
     * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double O_T_EE_c[16];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_msgs/FrankaState.F_T_EE; native type float64. Exactly 16 elements. Finite
     * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double F_T_EE[16];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_msgs/FrankaState.F_T_NE; native type float64. Exactly 16 elements. Finite
     * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double F_T_NE[16];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_msgs/FrankaState.NE_T_EE; native type float64. Exactly 16 elements. Finite
     * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double NE_T_EE[16];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_msgs/FrankaState.EE_T_K; native type float64. Exactly 16 elements. Finite
     * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double EE_T_K[16];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_msgs/FrankaState.time; native type float64. Scalar value. Finite IEEE
     * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double time;
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_msgs/FrankaState.control_command_success_rate; native type float64. Scalar
     * value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
     * acquires no ROS resource.
     */
    double control_command_success_rate;
    /**
     * @brief Retain the complete original uint8 field.
     * @details Original franka_msgs/FrankaState.robot_mode; native type uint8. Scalar value. Storage
     * belongs to the complete value and acquires no ROS resource.
     */
    uint8_t robot_mode;
    /**
     * @brief Retain the complete original franka_msgs/Errors field.
     * @details Original franka_msgs/FrankaState.current_errors; native type franka_msgs/Errors. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_1_franka_msgs_Errors current_errors;
    /**
     * @brief Retain the complete original franka_msgs/Errors field.
     * @details Original franka_msgs/FrankaState.last_motion_errors; native type franka_msgs/Errors. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_1_franka_msgs_Errors last_motion_errors;
} roswasmc_bounded_1_franka_msgs_FrankaState;

# define ROSWASMC_BOUNDED_1_FRANKA_MSGS_FRANKASTATE_MAX_WIRE_BYTES 2619u
# define ROSWASMC_BOUNDED_1_FRANKA_MSGS_FRANKASTATE_MIN_WIRE_BYTES 2491u
# define ROSWASMC_BOUNDED_1_FRANKA_MSGS_FRANKASTATE_CODEC_IDENTITY "UWVMROS1_79f22f36ce2c11f519ee29e65a248ec1b67240e27712b2667e9b803a2562ee71"
/** @brief Original scalar constant ROBOT_MODE_OTHER=0; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_FRANKA_MSGS_FRANKASTATE_ROBOT_MODE_OTHER UINT32_C(0)
/** @brief Original scalar constant ROBOT_MODE_IDLE=1; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_FRANKA_MSGS_FRANKASTATE_ROBOT_MODE_IDLE UINT32_C(1)
/** @brief Original scalar constant ROBOT_MODE_MOVE=2; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_FRANKA_MSGS_FRANKASTATE_ROBOT_MODE_MOVE UINT32_C(2)
/** @brief Original scalar constant ROBOT_MODE_GUIDING=3; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_FRANKA_MSGS_FRANKASTATE_ROBOT_MODE_GUIDING UINT32_C(3)
/** @brief Original scalar constant ROBOT_MODE_REFLEX=4; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_FRANKA_MSGS_FRANKASTATE_ROBOT_MODE_REFLEX UINT32_C(4)
/** @brief Original scalar constant ROBOT_MODE_USER_STOPPED=5; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_FRANKA_MSGS_FRANKASTATE_ROBOT_MODE_USER_STOPPED UINT32_C(5)
/** @brief Original scalar constant ROBOT_MODE_AUTOMATIC_ERROR_RECOVERY=6; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_FRANKA_MSGS_FRANKASTATE_ROBOT_MODE_AUTOMATIC_ERROR_RECOVERY UINT32_C(6)

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_1_franka_msgs_FrankaState_valid(roswasmc_bounded_1_franka_msgs_FrankaState const* value)
{
    if(!value)
    {
        return 0;
    }
    if(!roswasmc_bounded_1_std_msgs_Header_valid(&value->header))
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->cartesian_collision[i], 8);
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
                uwvm_bounded_copy(&bits, &value->cartesian_contact[i], 8);
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
                uwvm_bounded_copy(&bits, &value->q[i], 8);
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
                uwvm_bounded_copy(&bits, &value->q_d[i], 8);
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
                uwvm_bounded_copy(&bits, &value->dq[i], 8);
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
                uwvm_bounded_copy(&bits, &value->dq_d[i], 8);
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
                uwvm_bounded_copy(&bits, &value->theta[i], 8);
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
                uwvm_bounded_copy(&bits, &value->dtheta[i], 8);
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
                uwvm_bounded_copy(&bits, &value->tau_J[i], 8);
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
                uwvm_bounded_copy(&bits, &value->dtau_J[i], 8);
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
                uwvm_bounded_copy(&bits, &value->tau_J_d[i], 8);
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
                uwvm_bounded_copy(&bits, &value->K_F_ext_hat_K[i], 8);
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
                uwvm_bounded_copy(&bits, &value->elbow[i], 8);
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
                uwvm_bounded_copy(&bits, &value->elbow_d[i], 8);
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
                uwvm_bounded_copy(&bits, &value->elbow_c[i], 8);
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
                uwvm_bounded_copy(&bits, &value->delbow_c[i], 8);
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
                uwvm_bounded_copy(&bits, &value->ddelbow_c[i], 8);
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
                uwvm_bounded_copy(&bits, &value->joint_collision[i], 8);
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
                uwvm_bounded_copy(&bits, &value->joint_contact[i], 8);
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
                uwvm_bounded_copy(&bits, &value->O_F_ext_hat_K[i], 8);
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
                uwvm_bounded_copy(&bits, &value->O_dP_EE_d[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->O_ddP_O[i], 8);
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
                uwvm_bounded_copy(&bits, &value->O_dP_EE_c[i], 8);
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
                uwvm_bounded_copy(&bits, &value->O_ddP_EE_c[i], 8);
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
                uwvm_bounded_copy(&bits, &value->tau_ext_hat_filtered[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->m_ee, 8);
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
                uwvm_bounded_copy(&bits, &value->F_x_Cee[i], 8);
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
                uwvm_bounded_copy(&bits, &value->I_ee[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->m_load, 8);
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
                uwvm_bounded_copy(&bits, &value->F_x_Cload[i], 8);
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
                uwvm_bounded_copy(&bits, &value->I_load[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->m_total, 8);
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
                uwvm_bounded_copy(&bits, &value->F_x_Ctotal[i], 8);
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
                uwvm_bounded_copy(&bits, &value->I_total[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 16u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->O_T_EE[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 16u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->O_T_EE_d[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 16u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->O_T_EE_c[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 16u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->F_T_EE[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 16u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->F_T_NE[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 16u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->NE_T_EE[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 16u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->EE_T_K[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
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
    if(!roswasmc_bounded_1_franka_msgs_Errors_valid(&value->current_errors))
    {
        return 0;
    }
    if(!roswasmc_bounded_1_franka_msgs_Errors_valid(&value->last_motion_errors))
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_1_franka_msgs_FrankaState_wire_size(roswasmc_bounded_1_franka_msgs_FrankaState const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_1_std_msgs_Header_wire_size(&value->header);
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
        for(i = 0; i < 3u; ++i)
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
        for(i = 0; i < 7u; ++i)
        {
            n += 8;
        }
    }
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
    {
        size_t i;
        for(i = 0; i < 16u; ++i)
        {
            n += 8;
        }
    }
    {
        size_t i;
        for(i = 0; i < 16u; ++i)
        {
            n += 8;
        }
    }
    {
        size_t i;
        for(i = 0; i < 16u; ++i)
        {
            n += 8;
        }
    }
    {
        size_t i;
        for(i = 0; i < 16u; ++i)
        {
            n += 8;
        }
    }
    {
        size_t i;
        for(i = 0; i < 16u; ++i)
        {
            n += 8;
        }
    }
    {
        size_t i;
        for(i = 0; i < 16u; ++i)
        {
            n += 8;
        }
    }
    {
        size_t i;
        for(i = 0; i < 16u; ++i)
        {
            n += 8;
        }
    }
    n += 8;
    n += 8;
    n += 1;
    n += roswasmc_bounded_1_franka_msgs_Errors_wire_size(&value->current_errors);
    n += roswasmc_bounded_1_franka_msgs_Errors_wire_size(&value->last_motion_errors);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_1_franka_msgs_FrankaState_write_fields(roswasmc_bounded_1_franka_msgs_FrankaState const* value, unsigned char* p, size_t* offset)
{
    roswasmc_bounded_1_std_msgs_Header_write_fields(&value->header, p, offset);
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->cartesian_collision[i], 8);
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
                uwvm_bounded_copy(&bits, &value->cartesian_contact[i], 8);
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
                uwvm_bounded_copy(&bits, &value->q[i], 8);
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
                uwvm_bounded_copy(&bits, &value->q_d[i], 8);
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
                uwvm_bounded_copy(&bits, &value->dq[i], 8);
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
                uwvm_bounded_copy(&bits, &value->dq_d[i], 8);
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
                uwvm_bounded_copy(&bits, &value->theta[i], 8);
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
                uwvm_bounded_copy(&bits, &value->dtheta[i], 8);
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
                uwvm_bounded_copy(&bits, &value->tau_J[i], 8);
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
                uwvm_bounded_copy(&bits, &value->dtau_J[i], 8);
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
                uwvm_bounded_copy(&bits, &value->tau_J_d[i], 8);
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
                uwvm_bounded_copy(&bits, &value->K_F_ext_hat_K[i], 8);
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
                uwvm_bounded_copy(&bits, &value->elbow[i], 8);
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
                uwvm_bounded_copy(&bits, &value->elbow_d[i], 8);
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
                uwvm_bounded_copy(&bits, &value->elbow_c[i], 8);
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
                uwvm_bounded_copy(&bits, &value->delbow_c[i], 8);
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
                uwvm_bounded_copy(&bits, &value->ddelbow_c[i], 8);
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
                uwvm_bounded_copy(&bits, &value->joint_collision[i], 8);
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
                uwvm_bounded_copy(&bits, &value->joint_contact[i], 8);
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
                uwvm_bounded_copy(&bits, &value->O_F_ext_hat_K[i], 8);
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
                uwvm_bounded_copy(&bits, &value->O_dP_EE_d[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->O_ddP_O[i], 8);
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
                uwvm_bounded_copy(&bits, &value->O_dP_EE_c[i], 8);
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
                uwvm_bounded_copy(&bits, &value->O_ddP_EE_c[i], 8);
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
                uwvm_bounded_copy(&bits, &value->tau_ext_hat_filtered[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->m_ee, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->F_x_Cee[i], 8);
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
                uwvm_bounded_copy(&bits, &value->I_ee[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->m_load, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->F_x_Cload[i], 8);
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
                uwvm_bounded_copy(&bits, &value->I_load[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->m_total, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->F_x_Ctotal[i], 8);
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
                uwvm_bounded_copy(&bits, &value->I_total[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 16u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->O_T_EE[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 16u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->O_T_EE_d[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 16u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->O_T_EE_c[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 16u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->F_T_EE[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 16u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->F_T_NE[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 16u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->NE_T_EE[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 16u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->EE_T_K[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
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
    roswasmc_bounded_1_franka_msgs_Errors_write_fields(&value->current_errors, p, offset);
    roswasmc_bounded_1_franka_msgs_Errors_write_fields(&value->last_motion_errors, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int
    roswasmc_bounded_1_franka_msgs_FrankaState_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_1_franka_msgs_FrankaState* value)
{
    if(!roswasmc_bounded_1_std_msgs_Header_read_fields(p, n, offset, &value->header))
    {
        return 0;
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
                uwvm_bounded_copy(&value->cartesian_collision[i], &bits, 8);
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
                uwvm_bounded_copy(&value->cartesian_contact[i], &bits, 8);
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
                uwvm_bounded_copy(&value->q[i], &bits, 8);
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
                uwvm_bounded_copy(&value->q_d[i], &bits, 8);
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
                uwvm_bounded_copy(&value->dq[i], &bits, 8);
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
                uwvm_bounded_copy(&value->dq_d[i], &bits, 8);
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
                uwvm_bounded_copy(&value->theta[i], &bits, 8);
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
                uwvm_bounded_copy(&value->dtheta[i], &bits, 8);
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
                uwvm_bounded_copy(&value->tau_J[i], &bits, 8);
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
                uwvm_bounded_copy(&value->dtau_J[i], &bits, 8);
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
                uwvm_bounded_copy(&value->tau_J_d[i], &bits, 8);
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
                uwvm_bounded_copy(&value->K_F_ext_hat_K[i], &bits, 8);
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
                uwvm_bounded_copy(&value->elbow[i], &bits, 8);
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
                uwvm_bounded_copy(&value->elbow_d[i], &bits, 8);
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
                uwvm_bounded_copy(&value->elbow_c[i], &bits, 8);
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
                uwvm_bounded_copy(&value->delbow_c[i], &bits, 8);
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
                uwvm_bounded_copy(&value->ddelbow_c[i], &bits, 8);
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
                uwvm_bounded_copy(&value->joint_collision[i], &bits, 8);
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
                uwvm_bounded_copy(&value->joint_contact[i], &bits, 8);
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
                uwvm_bounded_copy(&value->O_F_ext_hat_K[i], &bits, 8);
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
                uwvm_bounded_copy(&value->O_dP_EE_d[i], &bits, 8);
            }
            *offset += 8;
        }
    }
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
                uwvm_bounded_copy(&value->O_ddP_O[i], &bits, 8);
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
                uwvm_bounded_copy(&value->O_dP_EE_c[i], &bits, 8);
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
                uwvm_bounded_copy(&value->O_ddP_EE_c[i], &bits, 8);
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
                uwvm_bounded_copy(&value->tau_ext_hat_filtered[i], &bits, 8);
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
        uwvm_bounded_copy(&value->m_ee, &bits, 8);
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
                uwvm_bounded_copy(&value->F_x_Cee[i], &bits, 8);
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
                uwvm_bounded_copy(&value->I_ee[i], &bits, 8);
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
        uwvm_bounded_copy(&value->m_load, &bits, 8);
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
                uwvm_bounded_copy(&value->F_x_Cload[i], &bits, 8);
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
                uwvm_bounded_copy(&value->I_load[i], &bits, 8);
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
        uwvm_bounded_copy(&value->m_total, &bits, 8);
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
                uwvm_bounded_copy(&value->F_x_Ctotal[i], &bits, 8);
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
                uwvm_bounded_copy(&value->I_total[i], &bits, 8);
            }
            *offset += 8;
        }
    }
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
                uwvm_bounded_copy(&value->O_T_EE[i], &bits, 8);
            }
            *offset += 8;
        }
    }
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
                uwvm_bounded_copy(&value->O_T_EE_d[i], &bits, 8);
            }
            *offset += 8;
        }
    }
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
                uwvm_bounded_copy(&value->O_T_EE_c[i], &bits, 8);
            }
            *offset += 8;
        }
    }
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
                uwvm_bounded_copy(&value->F_T_EE[i], &bits, 8);
            }
            *offset += 8;
        }
    }
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
                uwvm_bounded_copy(&value->F_T_NE[i], &bits, 8);
            }
            *offset += 8;
        }
    }
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
                uwvm_bounded_copy(&value->NE_T_EE[i], &bits, 8);
            }
            *offset += 8;
        }
    }
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
                uwvm_bounded_copy(&value->EE_T_K[i], &bits, 8);
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
    if(!roswasmc_bounded_1_franka_msgs_Errors_read_fields(p, n, offset, &value->current_errors))
    {
        return 0;
    }
    if(!roswasmc_bounded_1_franka_msgs_Errors_read_fields(p, n, offset, &value->last_motion_errors))
    {
        return 0;
    }
    return roswasmc_bounded_1_franka_msgs_FrankaState_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_1_franka_msgs_FrankaState_encode(roswasmc_bounded_1_franka_msgs_FrankaState const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_franka_msgs_FrankaState_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_1_franka_msgs_FrankaState_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_1_franka_msgs_FrankaState_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t roswasmc_bounded_1_franka_msgs_FrankaState_decode(void const* input, size_t length, roswasmc_bounded_1_franka_msgs_FrankaState* value)
{
    roswasmc_bounded_1_franka_msgs_FrankaState next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 2491u || length > 2619u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_1_franka_msgs_FrankaState_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETCARTESIANIMPEDANCEREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETCARTESIANIMPEDANCEREQUEST_0 != 0xcb795fe9UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETCARTESIANIMPEDANCEREQUEST_1 != 0xa9b770c3UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETCARTESIANIMPEDANCEREQUEST_2 != 0xcc421751UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETCARTESIANIMPEDANCEREQUEST_3 != 0xf15b493fUL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETCARTESIANIMPEDANCEREQUEST_4 != 0x059c9d88UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETCARTESIANIMPEDANCEREQUEST_5 != 0xe4839cc3UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETCARTESIANIMPEDANCEREQUEST_6 != 0x884553cdUL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETCARTESIANIMPEDANCEREQUEST_7 != 0x660b103fUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETCARTESIANIMPEDANCEREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETCARTESIANIMPEDANCEREQUEST_0 0xcb795fe9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETCARTESIANIMPEDANCEREQUEST_1 0xa9b770c3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETCARTESIANIMPEDANCEREQUEST_2 0xcc421751UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETCARTESIANIMPEDANCEREQUEST_3 0xf15b493fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETCARTESIANIMPEDANCEREQUEST_4 0x059c9d88UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETCARTESIANIMPEDANCEREQUEST_5 0xe4839cc3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETCARTESIANIMPEDANCEREQUEST_6 0x884553cdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETCARTESIANIMPEDANCEREQUEST_7 0x660b103fUL

/** @brief Complete ROS1 franka_msgs/SetCartesianImpedanceRequest value; no field projects away native data. */
typedef struct roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceRequest
{
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_msgs/SetCartesianImpedanceRequest.cartesian_stiffness; native type float64.
     * Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete
     * value and acquires no ROS resource.
     */
    double cartesian_stiffness[6];
} roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceRequest;

# define ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETCARTESIANIMPEDANCEREQUEST_MAX_WIRE_BYTES 48u
# define ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETCARTESIANIMPEDANCEREQUEST_MIN_WIRE_BYTES 48u
# define ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETCARTESIANIMPEDANCEREQUEST_CODEC_IDENTITY "UWVMROS1_ff604aae9ab1ef36b5af107966e64ee2115ee17618a4ece6f15997c889cacbdf"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceRequest_valid(roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceRequest const* value)
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
    roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceRequest_wire_size(roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceRequest const* value)
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
    roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceRequest_write_fields(roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceRequest const* value,
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
inline static int roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceRequest_read_fields(unsigned char const* p,
                                                                                          size_t n,
                                                                                          size_t* offset,
                                                                                          roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceRequest* value)
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
    return roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceRequest_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceRequest_encode(roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceRequest const* value,
                                                                       void* output,
                                                                       size_t capacity,
                                                                       size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceRequest_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceRequest_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceRequest_decode(void const* input,
                                                                                          size_t length,
                                                                                          roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceRequest* value)
{
    roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceRequest next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 48u || length > 48u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceRequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETCARTESIANIMPEDANCERESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETCARTESIANIMPEDANCERESPONSE_0 != 0x68feaac8UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETCARTESIANIMPEDANCERESPONSE_1 != 0xff88059fUL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETCARTESIANIMPEDANCERESPONSE_2 != 0x01b1af23UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETCARTESIANIMPEDANCERESPONSE_3 != 0xe37847b8UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETCARTESIANIMPEDANCERESPONSE_4 != 0x2954bb5bUL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETCARTESIANIMPEDANCERESPONSE_5 != 0xe274b15dUL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETCARTESIANIMPEDANCERESPONSE_6 != 0xb3439b99UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETCARTESIANIMPEDANCERESPONSE_7 != 0x5194f20fUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETCARTESIANIMPEDANCERESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETCARTESIANIMPEDANCERESPONSE_0 0x68feaac8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETCARTESIANIMPEDANCERESPONSE_1 0xff88059fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETCARTESIANIMPEDANCERESPONSE_2 0x01b1af23UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETCARTESIANIMPEDANCERESPONSE_3 0xe37847b8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETCARTESIANIMPEDANCERESPONSE_4 0x2954bb5bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETCARTESIANIMPEDANCERESPONSE_5 0xe274b15dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETCARTESIANIMPEDANCERESPONSE_6 0xb3439b99UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETCARTESIANIMPEDANCERESPONSE_7 0x5194f20fUL

/** @brief UTF-8 byte storage for franka_msgs/SetCartesianImpedanceResponse.error; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceResponse_error_text;

/** @brief Complete ROS1 franka_msgs/SetCartesianImpedanceResponse value; no field projects away native data. */
typedef struct roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceResponse
{
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/SetCartesianImpedanceResponse.success; native type bool. Scalar value.
     * Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t success;
    /**
     * @brief Retain the complete original string field.
     * @details Original franka_msgs/SetCartesianImpedanceResponse.error; native type string. Scalar value.
     * UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceResponse_error_text error;
} roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceResponse;

# define ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETCARTESIANIMPEDANCERESPONSE_MAX_WIRE_BYTES 261u
# define ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETCARTESIANIMPEDANCERESPONSE_MIN_WIRE_BYTES 5u
# define ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETCARTESIANIMPEDANCERESPONSE_CODEC_IDENTITY "UWVMROS1_b091d2fe98c84528460ba3d84524c38355e725c161456edf0034e62c6f63ab5b"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceResponse_valid(roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceResponse const* value)
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
    roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceResponse_wire_size(roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceResponse const* value)
{
    size_t n = 0;
    n += 1;
    n += 4 + value->error.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceResponse_write_fields(roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceResponse const* value,
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
inline static int roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceResponse_read_fields(unsigned char const* p,
                                                                                           size_t n,
                                                                                           size_t* offset,
                                                                                           roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceResponse* value)
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
    return roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceResponse_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceResponse_encode(roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceResponse const* value,
                                                                        void* output,
                                                                        size_t capacity,
                                                                        size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceResponse_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceResponse_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceResponse_decode(void const* input,
                                                                                           size_t length,
                                                                                           roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceResponse* value)
{
    roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceResponse next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 5u || length > 261u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETEEFRAMEREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETEEFRAMEREQUEST_0 != 0x4d74b63cUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETEEFRAMEREQUEST_1 != 0x277c9c42UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETEEFRAMEREQUEST_2 != 0xf907d233UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETEEFRAMEREQUEST_3 != 0x8051e4bfUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETEEFRAMEREQUEST_4 != 0x311571cdUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETEEFRAMEREQUEST_5 != 0x84b2087eUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETEEFRAMEREQUEST_6 != 0xf6db8ea1UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETEEFRAMEREQUEST_7 != 0x08c7d1f0UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETEEFRAMEREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETEEFRAMEREQUEST_0 0x4d74b63cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETEEFRAMEREQUEST_1 0x277c9c42UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETEEFRAMEREQUEST_2 0xf907d233UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETEEFRAMEREQUEST_3 0x8051e4bfUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETEEFRAMEREQUEST_4 0x311571cdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETEEFRAMEREQUEST_5 0x84b2087eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETEEFRAMEREQUEST_6 0xf6db8ea1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETEEFRAMEREQUEST_7 0x08c7d1f0UL

/** @brief Complete ROS1 franka_msgs/SetEEFrameRequest value; no field projects away native data. */
typedef struct roswasmc_bounded_1_franka_msgs_SetEEFrameRequest
{
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_msgs/SetEEFrameRequest.NE_T_EE; native type float64. Exactly 16 elements.
     * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    double NE_T_EE[16];
} roswasmc_bounded_1_franka_msgs_SetEEFrameRequest;

# define ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETEEFRAMEREQUEST_MAX_WIRE_BYTES 128u
# define ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETEEFRAMEREQUEST_MIN_WIRE_BYTES 128u
# define ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETEEFRAMEREQUEST_CODEC_IDENTITY "UWVMROS1_1bc740d3998a14dd6c0604d5024ebda2b4916a8497950841b14a8073c6c1ecfc"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_1_franka_msgs_SetEEFrameRequest_valid(roswasmc_bounded_1_franka_msgs_SetEEFrameRequest const* value)
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
                uwvm_bounded_copy(&bits, &value->NE_T_EE[i], 8);
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
inline static size_t roswasmc_bounded_1_franka_msgs_SetEEFrameRequest_wire_size(roswasmc_bounded_1_franka_msgs_SetEEFrameRequest const* value)
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
inline static void roswasmc_bounded_1_franka_msgs_SetEEFrameRequest_write_fields(roswasmc_bounded_1_franka_msgs_SetEEFrameRequest const* value,
                                                                                 unsigned char* p,
                                                                                 size_t* offset)
{
    {
        size_t i;
        for(i = 0; i < 16u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->NE_T_EE[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_1_franka_msgs_SetEEFrameRequest_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_1_franka_msgs_SetEEFrameRequest* value)
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
                uwvm_bounded_copy(&value->NE_T_EE[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    return roswasmc_bounded_1_franka_msgs_SetEEFrameRequest_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_1_franka_msgs_SetEEFrameRequest_encode(roswasmc_bounded_1_franka_msgs_SetEEFrameRequest const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_franka_msgs_SetEEFrameRequest_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_1_franka_msgs_SetEEFrameRequest_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_1_franka_msgs_SetEEFrameRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_1_franka_msgs_SetEEFrameRequest_decode(void const* input, size_t length, roswasmc_bounded_1_franka_msgs_SetEEFrameRequest* value)
{
    roswasmc_bounded_1_franka_msgs_SetEEFrameRequest next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 128u || length > 128u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_1_franka_msgs_SetEEFrameRequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETEEFRAMERESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETEEFRAMERESPONSE_0 != 0x71c6c6b4UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETEEFRAMERESPONSE_1 != 0x0e8eb803UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETEEFRAMERESPONSE_2 != 0x4c929ca1UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETEEFRAMERESPONSE_3 != 0x3ab3781cUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETEEFRAMERESPONSE_4 != 0x1be86d53UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETEEFRAMERESPONSE_5 != 0xec0a415cUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETEEFRAMERESPONSE_6 != 0x116010d3UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETEEFRAMERESPONSE_7 != 0x26f11b81UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETEEFRAMERESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETEEFRAMERESPONSE_0 0x71c6c6b4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETEEFRAMERESPONSE_1 0x0e8eb803UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETEEFRAMERESPONSE_2 0x4c929ca1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETEEFRAMERESPONSE_3 0x3ab3781cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETEEFRAMERESPONSE_4 0x1be86d53UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETEEFRAMERESPONSE_5 0xec0a415cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETEEFRAMERESPONSE_6 0x116010d3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETEEFRAMERESPONSE_7 0x26f11b81UL

/** @brief UTF-8 byte storage for franka_msgs/SetEEFrameResponse.error; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_1_franka_msgs_SetEEFrameResponse_error_text;

/** @brief Complete ROS1 franka_msgs/SetEEFrameResponse value; no field projects away native data. */
typedef struct roswasmc_bounded_1_franka_msgs_SetEEFrameResponse
{
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/SetEEFrameResponse.success; native type bool. Scalar value. Storage
     * belongs to the complete value and acquires no ROS resource.
     */
    uint8_t success;
    /**
     * @brief Retain the complete original string field.
     * @details Original franka_msgs/SetEEFrameResponse.error; native type string. Scalar value. UTF-8
     * capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    roswasmc_bounded_1_franka_msgs_SetEEFrameResponse_error_text error;
} roswasmc_bounded_1_franka_msgs_SetEEFrameResponse;

# define ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETEEFRAMERESPONSE_MAX_WIRE_BYTES 261u
# define ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETEEFRAMERESPONSE_MIN_WIRE_BYTES 5u
# define ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETEEFRAMERESPONSE_CODEC_IDENTITY "UWVMROS1_b40c9595d57d6ed52ea4eca78e21f2c3d81f5a0afaad2420511211931f7d1c67"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_1_franka_msgs_SetEEFrameResponse_valid(roswasmc_bounded_1_franka_msgs_SetEEFrameResponse const* value)
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
inline static size_t roswasmc_bounded_1_franka_msgs_SetEEFrameResponse_wire_size(roswasmc_bounded_1_franka_msgs_SetEEFrameResponse const* value)
{
    size_t n = 0;
    n += 1;
    n += 4 + value->error.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_1_franka_msgs_SetEEFrameResponse_write_fields(roswasmc_bounded_1_franka_msgs_SetEEFrameResponse const* value,
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
inline static int roswasmc_bounded_1_franka_msgs_SetEEFrameResponse_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_1_franka_msgs_SetEEFrameResponse* value)
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
    return roswasmc_bounded_1_franka_msgs_SetEEFrameResponse_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_1_franka_msgs_SetEEFrameResponse_encode(roswasmc_bounded_1_franka_msgs_SetEEFrameResponse const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_franka_msgs_SetEEFrameResponse_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_1_franka_msgs_SetEEFrameResponse_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_1_franka_msgs_SetEEFrameResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_1_franka_msgs_SetEEFrameResponse_decode(void const* input, size_t length, roswasmc_bounded_1_franka_msgs_SetEEFrameResponse* value)
{
    roswasmc_bounded_1_franka_msgs_SetEEFrameResponse next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 5u || length > 261u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_1_franka_msgs_SetEEFrameResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFORCETORQUECOLLISIONBEHAVIORREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFORCETORQUECOLLISIONBEHAVIORREQUEST_0 != 0xfbe4f6f1UL ||                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFORCETORQUECOLLISIONBEHAVIORREQUEST_1 != 0x9694dad4UL ||                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFORCETORQUECOLLISIONBEHAVIORREQUEST_2 != 0x381bebd7UL ||                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFORCETORQUECOLLISIONBEHAVIORREQUEST_3 != 0x49312a45UL ||                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFORCETORQUECOLLISIONBEHAVIORREQUEST_4 != 0xcd9e6286UL ||                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFORCETORQUECOLLISIONBEHAVIORREQUEST_5 != 0x2f42e0e5UL ||                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFORCETORQUECOLLISIONBEHAVIORREQUEST_6 != 0x9627d02bUL ||                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFORCETORQUECOLLISIONBEHAVIORREQUEST_7 != 0xbd085e76UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFORCETORQUECOLLISIONBEHAVIORREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFORCETORQUECOLLISIONBEHAVIORREQUEST_0 0xfbe4f6f1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFORCETORQUECOLLISIONBEHAVIORREQUEST_1 0x9694dad4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFORCETORQUECOLLISIONBEHAVIORREQUEST_2 0x381bebd7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFORCETORQUECOLLISIONBEHAVIORREQUEST_3 0x49312a45UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFORCETORQUECOLLISIONBEHAVIORREQUEST_4 0xcd9e6286UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFORCETORQUECOLLISIONBEHAVIORREQUEST_5 0x2f42e0e5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFORCETORQUECOLLISIONBEHAVIORREQUEST_6 0x9627d02bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFORCETORQUECOLLISIONBEHAVIORREQUEST_7 0xbd085e76UL

/** @brief Complete ROS1 franka_msgs/SetForceTorqueCollisionBehaviorRequest value; no field projects away native data. */
typedef struct roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorRequest
{
    /**
     * @brief Retain the complete original float64 field.
     * @details Original
     * franka_msgs/SetForceTorqueCollisionBehaviorRequest.lower_torque_thresholds_nominal; native type
     * float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
     * complete value and acquires no ROS resource.
     */
    double lower_torque_thresholds_nominal[7];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original
     * franka_msgs/SetForceTorqueCollisionBehaviorRequest.upper_torque_thresholds_nominal; native type
     * float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
     * complete value and acquires no ROS resource.
     */
    double upper_torque_thresholds_nominal[7];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_msgs/SetForceTorqueCollisionBehaviorRequest.lower_force_thresholds_nominal;
     * native type float64. Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage
     * belongs to the complete value and acquires no ROS resource.
     */
    double lower_force_thresholds_nominal[6];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_msgs/SetForceTorqueCollisionBehaviorRequest.upper_force_thresholds_nominal;
     * native type float64. Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage
     * belongs to the complete value and acquires no ROS resource.
     */
    double upper_force_thresholds_nominal[6];
} roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorRequest;

# define ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFORCETORQUECOLLISIONBEHAVIORREQUEST_MAX_WIRE_BYTES 208u
# define ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFORCETORQUECOLLISIONBEHAVIORREQUEST_MIN_WIRE_BYTES 208u
# define ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFORCETORQUECOLLISIONBEHAVIORREQUEST_CODEC_IDENTITY                                                                  \
     "UWVMROS1_2513f0ea74bf6a871a85ce00c0f822891f2c0bed890b87e35d25a637aa62c4b5"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorRequest_valid(
    roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorRequest const* value)
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
inline static size_t roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorRequest_wire_size(
    roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorRequest const* value)
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
inline static void roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorRequest_write_fields(
    roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorRequest const* value,
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
inline static int roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorRequest_read_fields(
    unsigned char const* p,
    size_t n,
    size_t* offset,
    roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorRequest* value)
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
    return roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorRequest_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorRequest_encode(
    roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorRequest const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorRequest_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorRequest_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorRequest_decode(void const* input,
                                                                                 size_t length,
                                                                                 roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorRequest* value)
{
    roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorRequest next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 208u || length > 208u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorRequest_read_fields((unsigned char const*)input, length, &offset, &next) ||
       offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFORCETORQUECOLLISIONBEHAVIORRESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFORCETORQUECOLLISIONBEHAVIORRESPONSE_0 != 0x043eacc7UL ||                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFORCETORQUECOLLISIONBEHAVIORRESPONSE_1 != 0x7a62dd02UL ||                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFORCETORQUECOLLISIONBEHAVIORRESPONSE_2 != 0x9c98f904UL ||                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFORCETORQUECOLLISIONBEHAVIORRESPONSE_3 != 0x3dccb7bdUL ||                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFORCETORQUECOLLISIONBEHAVIORRESPONSE_4 != 0x51c8f605UL ||                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFORCETORQUECOLLISIONBEHAVIORRESPONSE_5 != 0xd3303214UL ||                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFORCETORQUECOLLISIONBEHAVIORRESPONSE_6 != 0x5197414bUL ||                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFORCETORQUECOLLISIONBEHAVIORRESPONSE_7 != 0x2940de6eUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFORCETORQUECOLLISIONBEHAVIORRESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFORCETORQUECOLLISIONBEHAVIORRESPONSE_0 0x043eacc7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFORCETORQUECOLLISIONBEHAVIORRESPONSE_1 0x7a62dd02UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFORCETORQUECOLLISIONBEHAVIORRESPONSE_2 0x9c98f904UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFORCETORQUECOLLISIONBEHAVIORRESPONSE_3 0x3dccb7bdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFORCETORQUECOLLISIONBEHAVIORRESPONSE_4 0x51c8f605UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFORCETORQUECOLLISIONBEHAVIORRESPONSE_5 0xd3303214UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFORCETORQUECOLLISIONBEHAVIORRESPONSE_6 0x5197414bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFORCETORQUECOLLISIONBEHAVIORRESPONSE_7 0x2940de6eUL

/** @brief UTF-8 byte storage for franka_msgs/SetForceTorqueCollisionBehaviorResponse.error; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorResponse_error_text;

/** @brief Complete ROS1 franka_msgs/SetForceTorqueCollisionBehaviorResponse value; no field projects away native data. */
typedef struct roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorResponse
{
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/SetForceTorqueCollisionBehaviorResponse.success; native type bool.
     * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t success;
    /**
     * @brief Retain the complete original string field.
     * @details Original franka_msgs/SetForceTorqueCollisionBehaviorResponse.error; native type string.
     * Scalar value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
     * acquires no ROS resource.
     */
    roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorResponse_error_text error;
} roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorResponse;

# define ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFORCETORQUECOLLISIONBEHAVIORRESPONSE_MAX_WIRE_BYTES 261u
# define ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFORCETORQUECOLLISIONBEHAVIORRESPONSE_MIN_WIRE_BYTES 5u
# define ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFORCETORQUECOLLISIONBEHAVIORRESPONSE_CODEC_IDENTITY                                                                 \
     "UWVMROS1_72418d73d504ae385d7ddce7e3cef859a104346dbfea7fc9da82e0f7e33ca2f5"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorResponse_valid(
    roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorResponse const* value)
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
inline static size_t roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorResponse_wire_size(
    roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorResponse const* value)
{
    size_t n = 0;
    n += 1;
    n += 4 + value->error.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorResponse_write_fields(
    roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorResponse const* value,
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
inline static int roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorResponse_read_fields(
    unsigned char const* p,
    size_t n,
    size_t* offset,
    roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorResponse* value)
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
    return roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorResponse_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorResponse_encode(
    roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorResponse const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorResponse_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorResponse_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorResponse_decode(void const* input,
                                                                                  size_t length,
                                                                                  roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorResponse* value)
{
    roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorResponse next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 5u || length > 261u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorResponse_read_fields((unsigned char const*)input, length, &offset, &next) ||
       offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFULLCOLLISIONBEHAVIORREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFULLCOLLISIONBEHAVIORREQUEST_0 != 0xc3a7bc9dUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFULLCOLLISIONBEHAVIORREQUEST_1 != 0x4fa56912UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFULLCOLLISIONBEHAVIORREQUEST_2 != 0x42233d74UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFULLCOLLISIONBEHAVIORREQUEST_3 != 0x43037320UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFULLCOLLISIONBEHAVIORREQUEST_4 != 0xf108cf10UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFULLCOLLISIONBEHAVIORREQUEST_5 != 0x53188a44UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFULLCOLLISIONBEHAVIORREQUEST_6 != 0x977953efUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFULLCOLLISIONBEHAVIORREQUEST_7 != 0x2ca0c490UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFULLCOLLISIONBEHAVIORREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFULLCOLLISIONBEHAVIORREQUEST_0 0xc3a7bc9dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFULLCOLLISIONBEHAVIORREQUEST_1 0x4fa56912UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFULLCOLLISIONBEHAVIORREQUEST_2 0x42233d74UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFULLCOLLISIONBEHAVIORREQUEST_3 0x43037320UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFULLCOLLISIONBEHAVIORREQUEST_4 0xf108cf10UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFULLCOLLISIONBEHAVIORREQUEST_5 0x53188a44UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFULLCOLLISIONBEHAVIORREQUEST_6 0x977953efUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFULLCOLLISIONBEHAVIORREQUEST_7 0x2ca0c490UL

/** @brief Complete ROS1 franka_msgs/SetFullCollisionBehaviorRequest value; no field projects away native data. */
typedef struct roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorRequest
{
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_msgs/SetFullCollisionBehaviorRequest.lower_torque_thresholds_acceleration;
     * native type float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage
     * belongs to the complete value and acquires no ROS resource.
     */
    double lower_torque_thresholds_acceleration[7];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_msgs/SetFullCollisionBehaviorRequest.upper_torque_thresholds_acceleration;
     * native type float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage
     * belongs to the complete value and acquires no ROS resource.
     */
    double upper_torque_thresholds_acceleration[7];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_msgs/SetFullCollisionBehaviorRequest.lower_torque_thresholds_nominal;
     * native type float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage
     * belongs to the complete value and acquires no ROS resource.
     */
    double lower_torque_thresholds_nominal[7];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_msgs/SetFullCollisionBehaviorRequest.upper_torque_thresholds_nominal;
     * native type float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage
     * belongs to the complete value and acquires no ROS resource.
     */
    double upper_torque_thresholds_nominal[7];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_msgs/SetFullCollisionBehaviorRequest.lower_force_thresholds_acceleration;
     * native type float64. Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage
     * belongs to the complete value and acquires no ROS resource.
     */
    double lower_force_thresholds_acceleration[6];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_msgs/SetFullCollisionBehaviorRequest.upper_force_thresholds_acceleration;
     * native type float64. Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage
     * belongs to the complete value and acquires no ROS resource.
     */
    double upper_force_thresholds_acceleration[6];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_msgs/SetFullCollisionBehaviorRequest.lower_force_thresholds_nominal; native
     * type float64. Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage belongs
     * to the complete value and acquires no ROS resource.
     */
    double lower_force_thresholds_nominal[6];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_msgs/SetFullCollisionBehaviorRequest.upper_force_thresholds_nominal; native
     * type float64. Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage belongs
     * to the complete value and acquires no ROS resource.
     */
    double upper_force_thresholds_nominal[6];
} roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorRequest;

# define ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFULLCOLLISIONBEHAVIORREQUEST_MAX_WIRE_BYTES 416u
# define ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFULLCOLLISIONBEHAVIORREQUEST_MIN_WIRE_BYTES 416u
# define ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFULLCOLLISIONBEHAVIORREQUEST_CODEC_IDENTITY                                                                         \
     "UWVMROS1_47a86620ec5abdd6cc820b095d8f5f4214c1d9af00ac1ff0740137bbdda7217c"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int
    roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorRequest_valid(roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorRequest const* value)
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
inline static size_t
    roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorRequest_wire_size(roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorRequest const* value)
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
inline static void
    roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorRequest_write_fields(roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorRequest const* value,
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
    roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorRequest_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorRequest* value)
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
    return roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorRequest_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorRequest_encode(roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorRequest const* value,
                                                                          void* output,
                                                                          size_t capacity,
                                                                          size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorRequest_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorRequest_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorRequest_decode(void const* input,
                                                                          size_t length,
                                                                          roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorRequest* value)
{
    roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorRequest next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 416u || length > 416u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorRequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFULLCOLLISIONBEHAVIORRESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFULLCOLLISIONBEHAVIORRESPONSE_0 != 0x6e6b0462UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFULLCOLLISIONBEHAVIORRESPONSE_1 != 0x24d1db83UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFULLCOLLISIONBEHAVIORRESPONSE_2 != 0x8625fb74UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFULLCOLLISIONBEHAVIORRESPONSE_3 != 0x140f5683UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFULLCOLLISIONBEHAVIORRESPONSE_4 != 0xb7cf8ec1UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFULLCOLLISIONBEHAVIORRESPONSE_5 != 0x47b89b9cUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFULLCOLLISIONBEHAVIORRESPONSE_6 != 0x6d7d5adfUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFULLCOLLISIONBEHAVIORRESPONSE_7 != 0x78f1880bUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFULLCOLLISIONBEHAVIORRESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFULLCOLLISIONBEHAVIORRESPONSE_0 0x6e6b0462UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFULLCOLLISIONBEHAVIORRESPONSE_1 0x24d1db83UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFULLCOLLISIONBEHAVIORRESPONSE_2 0x8625fb74UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFULLCOLLISIONBEHAVIORRESPONSE_3 0x140f5683UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFULLCOLLISIONBEHAVIORRESPONSE_4 0xb7cf8ec1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFULLCOLLISIONBEHAVIORRESPONSE_5 0x47b89b9cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFULLCOLLISIONBEHAVIORRESPONSE_6 0x6d7d5adfUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFULLCOLLISIONBEHAVIORRESPONSE_7 0x78f1880bUL

/** @brief UTF-8 byte storage for franka_msgs/SetFullCollisionBehaviorResponse.error; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorResponse_error_text;

/** @brief Complete ROS1 franka_msgs/SetFullCollisionBehaviorResponse value; no field projects away native data. */
typedef struct roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorResponse
{
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/SetFullCollisionBehaviorResponse.success; native type bool. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t success;
    /**
     * @brief Retain the complete original string field.
     * @details Original franka_msgs/SetFullCollisionBehaviorResponse.error; native type string. Scalar
     * value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorResponse_error_text error;
} roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorResponse;

# define ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFULLCOLLISIONBEHAVIORRESPONSE_MAX_WIRE_BYTES 261u
# define ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFULLCOLLISIONBEHAVIORRESPONSE_MIN_WIRE_BYTES 5u
# define ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFULLCOLLISIONBEHAVIORRESPONSE_CODEC_IDENTITY                                                                        \
     "UWVMROS1_26f46e286c42d51a8ef45db7c8b3bf315fb02faf7b2be5d3741563d43169a0e2"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int
    roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorResponse_valid(roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorResponse const* value)
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
    roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorResponse_wire_size(roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorResponse const* value)
{
    size_t n = 0;
    n += 1;
    n += 4 + value->error.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorResponse_write_fields(roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorResponse const* value,
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
    roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorResponse_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorResponse* value)
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
    return roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorResponse_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorResponse_encode(roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorResponse const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorResponse_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorResponse_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorResponse_decode(void const* input,
                                                                           size_t length,
                                                                           roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorResponse* value)
{
    roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorResponse next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 5u || length > 261u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETJOINTIMPEDANCEREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETJOINTIMPEDANCEREQUEST_0 != 0x580fc871UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETJOINTIMPEDANCEREQUEST_1 != 0x639c9378UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETJOINTIMPEDANCEREQUEST_2 != 0x9a96896aUL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETJOINTIMPEDANCEREQUEST_3 != 0x2c67a7f5UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETJOINTIMPEDANCEREQUEST_4 != 0xcfe45f06UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETJOINTIMPEDANCEREQUEST_5 != 0xb9f7c5f8UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETJOINTIMPEDANCEREQUEST_6 != 0x4ed1e0b3UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETJOINTIMPEDANCEREQUEST_7 != 0x4044a1e9UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETJOINTIMPEDANCEREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETJOINTIMPEDANCEREQUEST_0 0x580fc871UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETJOINTIMPEDANCEREQUEST_1 0x639c9378UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETJOINTIMPEDANCEREQUEST_2 0x9a96896aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETJOINTIMPEDANCEREQUEST_3 0x2c67a7f5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETJOINTIMPEDANCEREQUEST_4 0xcfe45f06UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETJOINTIMPEDANCEREQUEST_5 0xb9f7c5f8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETJOINTIMPEDANCEREQUEST_6 0x4ed1e0b3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETJOINTIMPEDANCEREQUEST_7 0x4044a1e9UL

/** @brief Complete ROS1 franka_msgs/SetJointImpedanceRequest value; no field projects away native data. */
typedef struct roswasmc_bounded_1_franka_msgs_SetJointImpedanceRequest
{
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_msgs/SetJointImpedanceRequest.joint_stiffness; native type float64. Exactly
     * 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value
     * and acquires no ROS resource.
     */
    double joint_stiffness[7];
} roswasmc_bounded_1_franka_msgs_SetJointImpedanceRequest;

# define ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETJOINTIMPEDANCEREQUEST_MAX_WIRE_BYTES 56u
# define ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETJOINTIMPEDANCEREQUEST_MIN_WIRE_BYTES 56u
# define ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETJOINTIMPEDANCEREQUEST_CODEC_IDENTITY "UWVMROS1_29b5419f698b39452d38fbc58a0e3c572b8d285b70c8acf7d326c440eb417c53"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_1_franka_msgs_SetJointImpedanceRequest_valid(roswasmc_bounded_1_franka_msgs_SetJointImpedanceRequest const* value)
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
inline static size_t roswasmc_bounded_1_franka_msgs_SetJointImpedanceRequest_wire_size(roswasmc_bounded_1_franka_msgs_SetJointImpedanceRequest const* value)
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
inline static void roswasmc_bounded_1_franka_msgs_SetJointImpedanceRequest_write_fields(roswasmc_bounded_1_franka_msgs_SetJointImpedanceRequest const* value,
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
inline static int roswasmc_bounded_1_franka_msgs_SetJointImpedanceRequest_read_fields(unsigned char const* p,
                                                                                      size_t n,
                                                                                      size_t* offset,
                                                                                      roswasmc_bounded_1_franka_msgs_SetJointImpedanceRequest* value)
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
    return roswasmc_bounded_1_franka_msgs_SetJointImpedanceRequest_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_1_franka_msgs_SetJointImpedanceRequest_encode(roswasmc_bounded_1_franka_msgs_SetJointImpedanceRequest const* value,
                                                                                      void* output,
                                                                                      size_t capacity,
                                                                                      size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_franka_msgs_SetJointImpedanceRequest_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_1_franka_msgs_SetJointImpedanceRequest_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_1_franka_msgs_SetJointImpedanceRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t roswasmc_bounded_1_franka_msgs_SetJointImpedanceRequest_decode(void const* input,
                                                                                      size_t length,
                                                                                      roswasmc_bounded_1_franka_msgs_SetJointImpedanceRequest* value)
{
    roswasmc_bounded_1_franka_msgs_SetJointImpedanceRequest next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 56u || length > 56u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_1_franka_msgs_SetJointImpedanceRequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETJOINTIMPEDANCERESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETJOINTIMPEDANCERESPONSE_0 != 0x361b3a9bUL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETJOINTIMPEDANCERESPONSE_1 != 0xd0834dd8UL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETJOINTIMPEDANCERESPONSE_2 != 0x0c626b12UL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETJOINTIMPEDANCERESPONSE_3 != 0x2d81dbf3UL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETJOINTIMPEDANCERESPONSE_4 != 0x9ec69f4bUL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETJOINTIMPEDANCERESPONSE_5 != 0xac32eb73UL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETJOINTIMPEDANCERESPONSE_6 != 0x5bc11d26UL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETJOINTIMPEDANCERESPONSE_7 != 0xaa70ece3UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETJOINTIMPEDANCERESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETJOINTIMPEDANCERESPONSE_0 0x361b3a9bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETJOINTIMPEDANCERESPONSE_1 0xd0834dd8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETJOINTIMPEDANCERESPONSE_2 0x0c626b12UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETJOINTIMPEDANCERESPONSE_3 0x2d81dbf3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETJOINTIMPEDANCERESPONSE_4 0x9ec69f4bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETJOINTIMPEDANCERESPONSE_5 0xac32eb73UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETJOINTIMPEDANCERESPONSE_6 0x5bc11d26UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETJOINTIMPEDANCERESPONSE_7 0xaa70ece3UL

/** @brief UTF-8 byte storage for franka_msgs/SetJointImpedanceResponse.error; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_1_franka_msgs_SetJointImpedanceResponse_error_text;

/** @brief Complete ROS1 franka_msgs/SetJointImpedanceResponse value; no field projects away native data. */
typedef struct roswasmc_bounded_1_franka_msgs_SetJointImpedanceResponse
{
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/SetJointImpedanceResponse.success; native type bool. Scalar value.
     * Storage belongs to the complete value and acquires no ROS resource.
     */
    uint8_t success;
    /**
     * @brief Retain the complete original string field.
     * @details Original franka_msgs/SetJointImpedanceResponse.error; native type string. Scalar value.
     * UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    roswasmc_bounded_1_franka_msgs_SetJointImpedanceResponse_error_text error;
} roswasmc_bounded_1_franka_msgs_SetJointImpedanceResponse;

# define ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETJOINTIMPEDANCERESPONSE_MAX_WIRE_BYTES 261u
# define ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETJOINTIMPEDANCERESPONSE_MIN_WIRE_BYTES 5u
# define ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETJOINTIMPEDANCERESPONSE_CODEC_IDENTITY "UWVMROS1_1ae0cd7c4ad89de09ccffd6c4999435fa6965509e99a9adb98b7f3ebb3ea4c55"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_1_franka_msgs_SetJointImpedanceResponse_valid(roswasmc_bounded_1_franka_msgs_SetJointImpedanceResponse const* value)
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
inline static size_t roswasmc_bounded_1_franka_msgs_SetJointImpedanceResponse_wire_size(roswasmc_bounded_1_franka_msgs_SetJointImpedanceResponse const* value)
{
    size_t n = 0;
    n += 1;
    n += 4 + value->error.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_1_franka_msgs_SetJointImpedanceResponse_write_fields(roswasmc_bounded_1_franka_msgs_SetJointImpedanceResponse const* value,
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
inline static int roswasmc_bounded_1_franka_msgs_SetJointImpedanceResponse_read_fields(unsigned char const* p,
                                                                                       size_t n,
                                                                                       size_t* offset,
                                                                                       roswasmc_bounded_1_franka_msgs_SetJointImpedanceResponse* value)
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
    return roswasmc_bounded_1_franka_msgs_SetJointImpedanceResponse_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_1_franka_msgs_SetJointImpedanceResponse_encode(roswasmc_bounded_1_franka_msgs_SetJointImpedanceResponse const* value,
                                                                                       void* output,
                                                                                       size_t capacity,
                                                                                       size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_franka_msgs_SetJointImpedanceResponse_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_1_franka_msgs_SetJointImpedanceResponse_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_1_franka_msgs_SetJointImpedanceResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t roswasmc_bounded_1_franka_msgs_SetJointImpedanceResponse_decode(void const* input,
                                                                                       size_t length,
                                                                                       roswasmc_bounded_1_franka_msgs_SetJointImpedanceResponse* value)
{
    roswasmc_bounded_1_franka_msgs_SetJointImpedanceResponse next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 5u || length > 261u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_1_franka_msgs_SetJointImpedanceResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETKFRAMEREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETKFRAMEREQUEST_0 != 0x6a3ee192UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETKFRAMEREQUEST_1 != 0x12774158UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETKFRAMEREQUEST_2 != 0x097f4925UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETKFRAMEREQUEST_3 != 0x9e1df03fUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETKFRAMEREQUEST_4 != 0xfb2bd592UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETKFRAMEREQUEST_5 != 0x3a931d30UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETKFRAMEREQUEST_6 != 0xa4e4ddedUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETKFRAMEREQUEST_7 != 0xf4e732e4UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETKFRAMEREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETKFRAMEREQUEST_0 0x6a3ee192UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETKFRAMEREQUEST_1 0x12774158UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETKFRAMEREQUEST_2 0x097f4925UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETKFRAMEREQUEST_3 0x9e1df03fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETKFRAMEREQUEST_4 0xfb2bd592UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETKFRAMEREQUEST_5 0x3a931d30UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETKFRAMEREQUEST_6 0xa4e4ddedUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETKFRAMEREQUEST_7 0xf4e732e4UL

/** @brief Complete ROS1 franka_msgs/SetKFrameRequest value; no field projects away native data. */
typedef struct roswasmc_bounded_1_franka_msgs_SetKFrameRequest
{
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_msgs/SetKFrameRequest.EE_T_K; native type float64. Exactly 16 elements.
     * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    double EE_T_K[16];
} roswasmc_bounded_1_franka_msgs_SetKFrameRequest;

# define ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETKFRAMEREQUEST_MAX_WIRE_BYTES 128u
# define ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETKFRAMEREQUEST_MIN_WIRE_BYTES 128u
# define ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETKFRAMEREQUEST_CODEC_IDENTITY "UWVMROS1_36afcdc6402259fb5a71ae1b27be0bb8623a64dd93caffa376adea7862c86446"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_1_franka_msgs_SetKFrameRequest_valid(roswasmc_bounded_1_franka_msgs_SetKFrameRequest const* value)
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
                uwvm_bounded_copy(&bits, &value->EE_T_K[i], 8);
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
inline static size_t roswasmc_bounded_1_franka_msgs_SetKFrameRequest_wire_size(roswasmc_bounded_1_franka_msgs_SetKFrameRequest const* value)
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
    roswasmc_bounded_1_franka_msgs_SetKFrameRequest_write_fields(roswasmc_bounded_1_franka_msgs_SetKFrameRequest const* value, unsigned char* p, size_t* offset)
{
    {
        size_t i;
        for(i = 0; i < 16u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->EE_T_K[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_1_franka_msgs_SetKFrameRequest_read_fields(unsigned char const* p,
                                                                              size_t n,
                                                                              size_t* offset,
                                                                              roswasmc_bounded_1_franka_msgs_SetKFrameRequest* value)
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
                uwvm_bounded_copy(&value->EE_T_K[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    return roswasmc_bounded_1_franka_msgs_SetKFrameRequest_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_1_franka_msgs_SetKFrameRequest_encode(roswasmc_bounded_1_franka_msgs_SetKFrameRequest const* value,
                                                                              void* output,
                                                                              size_t capacity,
                                                                              size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_franka_msgs_SetKFrameRequest_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_1_franka_msgs_SetKFrameRequest_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_1_franka_msgs_SetKFrameRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_1_franka_msgs_SetKFrameRequest_decode(void const* input, size_t length, roswasmc_bounded_1_franka_msgs_SetKFrameRequest* value)
{
    roswasmc_bounded_1_franka_msgs_SetKFrameRequest next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 128u || length > 128u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_1_franka_msgs_SetKFrameRequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETKFRAMERESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETKFRAMERESPONSE_0 != 0x77a5e422UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETKFRAMERESPONSE_1 != 0x35c7518aUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETKFRAMERESPONSE_2 != 0x2decfba6UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETKFRAMERESPONSE_3 != 0x5f9cd445UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETKFRAMERESPONSE_4 != 0xc7095790UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETKFRAMERESPONSE_5 != 0xe3e17b6cUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETKFRAMERESPONSE_6 != 0x70dec9f4UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETKFRAMERESPONSE_7 != 0xbb674de8UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETKFRAMERESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETKFRAMERESPONSE_0 0x77a5e422UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETKFRAMERESPONSE_1 0x35c7518aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETKFRAMERESPONSE_2 0x2decfba6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETKFRAMERESPONSE_3 0x5f9cd445UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETKFRAMERESPONSE_4 0xc7095790UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETKFRAMERESPONSE_5 0xe3e17b6cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETKFRAMERESPONSE_6 0x70dec9f4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETKFRAMERESPONSE_7 0xbb674de8UL

/** @brief UTF-8 byte storage for franka_msgs/SetKFrameResponse.error; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_1_franka_msgs_SetKFrameResponse_error_text;

/** @brief Complete ROS1 franka_msgs/SetKFrameResponse value; no field projects away native data. */
typedef struct roswasmc_bounded_1_franka_msgs_SetKFrameResponse
{
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/SetKFrameResponse.success; native type bool. Scalar value. Storage
     * belongs to the complete value and acquires no ROS resource.
     */
    uint8_t success;
    /**
     * @brief Retain the complete original string field.
     * @details Original franka_msgs/SetKFrameResponse.error; native type string. Scalar value. UTF-8
     * capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    roswasmc_bounded_1_franka_msgs_SetKFrameResponse_error_text error;
} roswasmc_bounded_1_franka_msgs_SetKFrameResponse;

# define ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETKFRAMERESPONSE_MAX_WIRE_BYTES 261u
# define ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETKFRAMERESPONSE_MIN_WIRE_BYTES 5u
# define ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETKFRAMERESPONSE_CODEC_IDENTITY "UWVMROS1_4ea77d3e827a9b9eaf3c3f9805f78c38bfe91789555d0469cffd4ff4266cd443"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_1_franka_msgs_SetKFrameResponse_valid(roswasmc_bounded_1_franka_msgs_SetKFrameResponse const* value)
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
inline static size_t roswasmc_bounded_1_franka_msgs_SetKFrameResponse_wire_size(roswasmc_bounded_1_franka_msgs_SetKFrameResponse const* value)
{
    size_t n = 0;
    n += 1;
    n += 4 + value->error.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_1_franka_msgs_SetKFrameResponse_write_fields(roswasmc_bounded_1_franka_msgs_SetKFrameResponse const* value,
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
inline static int roswasmc_bounded_1_franka_msgs_SetKFrameResponse_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_1_franka_msgs_SetKFrameResponse* value)
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
    return roswasmc_bounded_1_franka_msgs_SetKFrameResponse_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_1_franka_msgs_SetKFrameResponse_encode(roswasmc_bounded_1_franka_msgs_SetKFrameResponse const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_franka_msgs_SetKFrameResponse_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_1_franka_msgs_SetKFrameResponse_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_1_franka_msgs_SetKFrameResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_1_franka_msgs_SetKFrameResponse_decode(void const* input, size_t length, roswasmc_bounded_1_franka_msgs_SetKFrameResponse* value)
{
    roswasmc_bounded_1_franka_msgs_SetKFrameResponse next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 5u || length > 261u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_1_franka_msgs_SetKFrameResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETLOADREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETLOADREQUEST_0 != 0xdfa66df4UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETLOADREQUEST_1 != 0xc198ab7cUL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETLOADREQUEST_2 != 0x577e7a54UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETLOADREQUEST_3 != 0xbdd38cefUL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETLOADREQUEST_4 != 0x0e5ea6b2UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETLOADREQUEST_5 != 0x6644aa0dUL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETLOADREQUEST_6 != 0x5ec3382dUL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETLOADREQUEST_7 != 0xeb777b13UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETLOADREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETLOADREQUEST_0 0xdfa66df4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETLOADREQUEST_1 0xc198ab7cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETLOADREQUEST_2 0x577e7a54UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETLOADREQUEST_3 0xbdd38cefUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETLOADREQUEST_4 0x0e5ea6b2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETLOADREQUEST_5 0x6644aa0dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETLOADREQUEST_6 0x5ec3382dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETLOADREQUEST_7 0xeb777b13UL

/** @brief Complete ROS1 franka_msgs/SetLoadRequest value; no field projects away native data. */
typedef struct roswasmc_bounded_1_franka_msgs_SetLoadRequest
{
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_msgs/SetLoadRequest.mass; native type float64. Scalar value. Finite IEEE
     * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double mass;
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_msgs/SetLoadRequest.F_x_center_load; native type float64. Exactly 3
     * elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
     * acquires no ROS resource.
     */
    double F_x_center_load[3];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original franka_msgs/SetLoadRequest.load_inertia; native type float64. Exactly 9 elements.
     * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    double load_inertia[9];
} roswasmc_bounded_1_franka_msgs_SetLoadRequest;

# define ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETLOADREQUEST_MAX_WIRE_BYTES 104u
# define ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETLOADREQUEST_MIN_WIRE_BYTES 104u
# define ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETLOADREQUEST_CODEC_IDENTITY "UWVMROS1_d7c08dd9105cb7b83cb251e80c7d2dd1e9f7bb2a43f614bff6d00d808cccbcb5"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_1_franka_msgs_SetLoadRequest_valid(roswasmc_bounded_1_franka_msgs_SetLoadRequest const* value)
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
                uwvm_bounded_copy(&bits, &value->F_x_center_load[i], 8);
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
inline static size_t roswasmc_bounded_1_franka_msgs_SetLoadRequest_wire_size(roswasmc_bounded_1_franka_msgs_SetLoadRequest const* value)
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
inline static void
    roswasmc_bounded_1_franka_msgs_SetLoadRequest_write_fields(roswasmc_bounded_1_franka_msgs_SetLoadRequest const* value, unsigned char* p, size_t* offset)
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
                uwvm_bounded_copy(&bits, &value->F_x_center_load[i], 8);
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
inline static int roswasmc_bounded_1_franka_msgs_SetLoadRequest_read_fields(unsigned char const* p,
                                                                            size_t n,
                                                                            size_t* offset,
                                                                            roswasmc_bounded_1_franka_msgs_SetLoadRequest* value)
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
                uwvm_bounded_copy(&value->F_x_center_load[i], &bits, 8);
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
    return roswasmc_bounded_1_franka_msgs_SetLoadRequest_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_1_franka_msgs_SetLoadRequest_encode(roswasmc_bounded_1_franka_msgs_SetLoadRequest const* value,
                                                                            void* output,
                                                                            size_t capacity,
                                                                            size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_franka_msgs_SetLoadRequest_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_1_franka_msgs_SetLoadRequest_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_1_franka_msgs_SetLoadRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_1_franka_msgs_SetLoadRequest_decode(void const* input, size_t length, roswasmc_bounded_1_franka_msgs_SetLoadRequest* value)
{
    roswasmc_bounded_1_franka_msgs_SetLoadRequest next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 104u || length > 104u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_1_franka_msgs_SetLoadRequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETLOADRESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETLOADRESPONSE_0 != 0xac7b90e5UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETLOADRESPONSE_1 != 0xc6053a0bUL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETLOADRESPONSE_2 != 0x55fb1974UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETLOADRESPONSE_3 != 0x6ade0421UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETLOADRESPONSE_4 != 0x31361eaeUL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETLOADRESPONSE_5 != 0x7f2cc7f5UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETLOADRESPONSE_6 != 0x4f109230UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETLOADRESPONSE_7 != 0xdc0005f9UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETLOADRESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETLOADRESPONSE_0 0xac7b90e5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETLOADRESPONSE_1 0xc6053a0bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETLOADRESPONSE_2 0x55fb1974UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETLOADRESPONSE_3 0x6ade0421UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETLOADRESPONSE_4 0x31361eaeUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETLOADRESPONSE_5 0x7f2cc7f5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETLOADRESPONSE_6 0x4f109230UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETLOADRESPONSE_7 0xdc0005f9UL

/** @brief UTF-8 byte storage for franka_msgs/SetLoadResponse.error; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_1_franka_msgs_SetLoadResponse_error_text;

/** @brief Complete ROS1 franka_msgs/SetLoadResponse value; no field projects away native data. */
typedef struct roswasmc_bounded_1_franka_msgs_SetLoadResponse
{
    /**
     * @brief Retain the complete original bool field.
     * @details Original franka_msgs/SetLoadResponse.success; native type bool. Scalar value. Storage
     * belongs to the complete value and acquires no ROS resource.
     */
    uint8_t success;
    /**
     * @brief Retain the complete original string field.
     * @details Original franka_msgs/SetLoadResponse.error; native type string. Scalar value. UTF-8
     * capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    roswasmc_bounded_1_franka_msgs_SetLoadResponse_error_text error;
} roswasmc_bounded_1_franka_msgs_SetLoadResponse;

# define ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETLOADRESPONSE_MAX_WIRE_BYTES 261u
# define ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETLOADRESPONSE_MIN_WIRE_BYTES 5u
# define ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETLOADRESPONSE_CODEC_IDENTITY "UWVMROS1_f18952407bf9e2813deeaa3734a781e90b74cb79892919c1218812ad71255cf3"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_1_franka_msgs_SetLoadResponse_valid(roswasmc_bounded_1_franka_msgs_SetLoadResponse const* value)
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
inline static size_t roswasmc_bounded_1_franka_msgs_SetLoadResponse_wire_size(roswasmc_bounded_1_franka_msgs_SetLoadResponse const* value)
{
    size_t n = 0;
    n += 1;
    n += 4 + value->error.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_1_franka_msgs_SetLoadResponse_write_fields(roswasmc_bounded_1_franka_msgs_SetLoadResponse const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->success, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, value->error.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->error.data, value->error.size);
    *offset += value->error.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_1_franka_msgs_SetLoadResponse_read_fields(unsigned char const* p,
                                                                             size_t n,
                                                                             size_t* offset,
                                                                             roswasmc_bounded_1_franka_msgs_SetLoadResponse* value)
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
    return roswasmc_bounded_1_franka_msgs_SetLoadResponse_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t roswasmc_bounded_1_franka_msgs_SetLoadResponse_encode(roswasmc_bounded_1_franka_msgs_SetLoadResponse const* value,
                                                                             void* output,
                                                                             size_t capacity,
                                                                             size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_franka_msgs_SetLoadResponse_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_1_franka_msgs_SetLoadResponse_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_1_franka_msgs_SetLoadResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t
    roswasmc_bounded_1_franka_msgs_SetLoadResponse_decode(void const* input, size_t length, roswasmc_bounded_1_franka_msgs_SetLoadResponse* value)
{
    roswasmc_bounded_1_franka_msgs_SetLoadResponse next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 5u || length > 261u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_1_franka_msgs_SetLoadResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#undef UWVM_BOUNDED_ASSERT
#endif
