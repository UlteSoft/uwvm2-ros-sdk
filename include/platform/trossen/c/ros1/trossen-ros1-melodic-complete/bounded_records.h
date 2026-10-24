/** @file Generated bounded-v2 canonical values; no native ROS serialization or authority.
 * Every dynamic field has inline caller-owned capacity. Encode validates and measures
 * the full value before writes; decode commits one temporary only after full validation.
 * Supply distinct record, byte and size-output storage; overlap is explicitly refused.
 * Empty Service/Action components use a C layout dummy that is never a wire field. */
#ifndef UWVM_ROS_BOUNDED_RECORDS_7BA4576C2166228B5DE1F27BBE5EDFB49357F4667680F5433825722171088AFD
#define UWVM_ROS_BOUNDED_RECORDS_7BA4576C2166228B5DE1F27BBE5EDFB49357F4667680F5433825722171088AFD
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
static inline void uwvm_bounded_copy(void* out, void const* in, size_t n)
{
# if defined(__GNUC__) || defined(__clang__)
    __builtin_memcpy(out, in, n);
# else
    size_t i;
    for(i = 0; i < n; ++i)
        ((unsigned char*)out)[i] = ((unsigned char const*)in)[i];
# endif
}

static inline uint64_t uwvm_bounded_get(unsigned char const* p, unsigned n)
{
    uint64_t v = 0;
    unsigned i;
    for(i = 0; i < n; ++i)
        v |= (uint64_t)p[i] << (8 * i);
    return v;
}

static inline void uwvm_bounded_put(unsigned char* p, uint64_t v, unsigned n)
{
    unsigned i;
    for(i = 0; i < n; ++i)
        p[i] = (unsigned char)(v >> (8 * i));
}

/** @brief Strict Unicode scalar UTF-8, rejecting embedded NUL as required by this profile. */
static inline int uwvm_bounded_utf8(unsigned char const* p, size_t n)
{
    size_t i = 0;
    while(i < n)
    {
        unsigned b = p[i++], k, code, minimum;
        if(!b)
            return 0;
        if(b < 128)
            continue;
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
            return 0;
        if(k > n - i)
            return 0;
        while(k--)
        {
            b = p[i++];
            if((b & 192) != 128)
                return 0;
            code = (code << 6) | (b & 63);
        }
        if(code < minimum || code > 1114111 || (code >= 55296 && code <= 57343))
            return 0;
    }
    return 1;
}

static inline int uwvm_bounded_overlap(void const* a, size_t an, void const* b, size_t bn)
{
    uintptr_t x = (uintptr_t)a, y = (uintptr_t)b;
    if((an && !a) || (bn && !b) || an > UINTPTR_MAX - x || bn > UINTPTR_MAX - y)
        return 1;
    return an && bn && x < y + bn && y < x + an;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ARMJOY)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ARMJOY_0 != 0x42183380UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ARMJOY_1 != 0x2338e32aUL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ARMJOY_2 != 0x3defb003UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ARMJOY_3 != 0xc240308cUL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ARMJOY_4 != 0x34992d48UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ARMJOY_5 != 0x94e5264bUL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ARMJOY_6 != 0x49f34833UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ARMJOY_7 != 0xdd642bb8UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ARMJOY 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ARMJOY_0 0x42183380UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ARMJOY_1 0x2338e32aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ARMJOY_2 0x3defb003UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ARMJOY_3 0xc240308cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ARMJOY_4 0x34992d48UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ARMJOY_5 0x94e5264bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ARMJOY_6 0x49f34833UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ARMJOY_7 0xdd642bb8UL

/** @brief Complete ROS1 interbotix_xs_msgs/ArmJoy value; no field projects away native data. */
typedef struct roswasmc_bounded_1_interbotix_xs_msgs_ArmJoy
{
    /** @brief Declared field ee_x_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t ee_x_cmd;
    /** @brief Declared field ee_y_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t ee_y_cmd;
    /** @brief Declared field ee_z_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t ee_z_cmd;
    /** @brief Declared field ee_roll_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t ee_roll_cmd;
    /** @brief Declared field ee_pitch_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t ee_pitch_cmd;
    /** @brief Declared field waist_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t waist_cmd;
    /** @brief Declared field gripper_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t gripper_cmd;
    /** @brief Declared field pose_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t pose_cmd;
    /** @brief Declared field speed_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t speed_cmd;
    /** @brief Declared field speed_toggle_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t speed_toggle_cmd;
    /** @brief Declared field gripper_pwm_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t gripper_pwm_cmd;
    /** @brief Declared field torque_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t torque_cmd;
} roswasmc_bounded_1_interbotix_xs_msgs_ArmJoy;

# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ARMJOY_MAX_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ARMJOY_MIN_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ARMJOY_CODEC_IDENTITY "UWVMROS1_f8a971ff01593f420de167c62e0f606fd3762866cc108659edcac50972cd3ea3"
/** @brief Original scalar constant EE_X_INC=1; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ARMJOY_EE_X_INC INT32_C(1)
/** @brief Original scalar constant EE_X_DEC=2; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ARMJOY_EE_X_DEC INT32_C(2)
/** @brief Original scalar constant EE_Y_INC=3; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ARMJOY_EE_Y_INC INT32_C(3)
/** @brief Original scalar constant EE_Y_DEC=4; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ARMJOY_EE_Y_DEC INT32_C(4)
/** @brief Original scalar constant EE_Z_INC=5; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ARMJOY_EE_Z_INC INT32_C(5)
/** @brief Original scalar constant EE_Z_DEC=6; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ARMJOY_EE_Z_DEC INT32_C(6)
/** @brief Original scalar constant EE_ROLL_CCW=7; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ARMJOY_EE_ROLL_CCW INT32_C(7)
/** @brief Original scalar constant EE_ROLL_CW=8; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ARMJOY_EE_ROLL_CW INT32_C(8)
/** @brief Original scalar constant EE_PITCH_UP=9; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ARMJOY_EE_PITCH_UP INT32_C(9)
/** @brief Original scalar constant EE_PITCH_DOWN=10; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ARMJOY_EE_PITCH_DOWN INT32_C(10)
/** @brief Original scalar constant WAIST_CCW=11; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ARMJOY_WAIST_CCW INT32_C(11)
/** @brief Original scalar constant WAIST_CW=12; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ARMJOY_WAIST_CW INT32_C(12)
/** @brief Original scalar constant GRIPPER_OPEN=13; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ARMJOY_GRIPPER_OPEN INT32_C(13)
/** @brief Original scalar constant GRIPPER_CLOSE=14; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ARMJOY_GRIPPER_CLOSE INT32_C(14)
/** @brief Original scalar constant HOME_POSE=15; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ARMJOY_HOME_POSE INT32_C(15)
/** @brief Original scalar constant SLEEP_POSE=16; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ARMJOY_SLEEP_POSE INT32_C(16)
/** @brief Original scalar constant SPEED_INC=17; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ARMJOY_SPEED_INC INT32_C(17)
/** @brief Original scalar constant SPEED_DEC=18; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ARMJOY_SPEED_DEC INT32_C(18)
/** @brief Original scalar constant SPEED_COURSE=19; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ARMJOY_SPEED_COURSE INT32_C(19)
/** @brief Original scalar constant SPEED_FINE=20; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ARMJOY_SPEED_FINE INT32_C(20)
/** @brief Original scalar constant GRIPPER_PWM_INC=21; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ARMJOY_GRIPPER_PWM_INC INT32_C(21)
/** @brief Original scalar constant GRIPPER_PWM_DEC=22; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ARMJOY_GRIPPER_PWM_DEC INT32_C(22)
/** @brief Original scalar constant TORQUE_ON=23; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ARMJOY_TORQUE_ON INT32_C(23)
/** @brief Original scalar constant TORQUE_OFF=24; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ARMJOY_TORQUE_OFF INT32_C(24)

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_interbotix_xs_msgs_ArmJoy_valid(roswasmc_bounded_1_interbotix_xs_msgs_ArmJoy const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_interbotix_xs_msgs_ArmJoy_wire_size(roswasmc_bounded_1_interbotix_xs_msgs_ArmJoy const* value)
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
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_interbotix_xs_msgs_ArmJoy_write_fields(roswasmc_bounded_1_interbotix_xs_msgs_ArmJoy const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->ee_x_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->ee_y_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->ee_z_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->ee_roll_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->ee_pitch_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->waist_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->gripper_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->pose_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->speed_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->speed_toggle_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->gripper_pwm_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->torque_cmd, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_interbotix_xs_msgs_ArmJoy_read_fields(unsigned char const* p,
                                                                           size_t n,
                                                                           size_t* offset,
                                                                           roswasmc_bounded_1_interbotix_xs_msgs_ArmJoy* value)
{
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->ee_x_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->ee_y_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->ee_z_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->ee_roll_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->ee_pitch_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->waist_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->gripper_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->pose_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->speed_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->speed_toggle_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->gripper_pwm_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->torque_cmd, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_1_interbotix_xs_msgs_ArmJoy_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_interbotix_xs_msgs_ArmJoy_encode(roswasmc_bounded_1_interbotix_xs_msgs_ArmJoy const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_interbotix_xs_msgs_ArmJoy_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_interbotix_xs_msgs_ArmJoy_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_interbotix_xs_msgs_ArmJoy_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_interbotix_xs_msgs_ArmJoy_decode(void const* input, size_t length, roswasmc_bounded_1_interbotix_xs_msgs_ArmJoy* value)
{
    roswasmc_bounded_1_interbotix_xs_msgs_ArmJoy next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 12u || length > 12u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_interbotix_xs_msgs_ArmJoy_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_HEXJOY)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_HEXJOY_0 != 0x202139e6UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_HEXJOY_1 != 0x948e28bcUL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_HEXJOY_2 != 0x23f55a35UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_HEXJOY_3 != 0x580e2fedUL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_HEXJOY_4 != 0x912d1a42UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_HEXJOY_5 != 0xf78876d6UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_HEXJOY_6 != 0xacedb550UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_HEXJOY_7 != 0xb415c296UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_HEXJOY 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_HEXJOY_0 0x202139e6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_HEXJOY_1 0x948e28bcUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_HEXJOY_2 0x23f55a35UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_HEXJOY_3 0x580e2fedUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_HEXJOY_4 0x912d1a42UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_HEXJOY_5 0xf78876d6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_HEXJOY_6 0xacedb550UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_HEXJOY_7 0xb415c296UL

/** @brief Complete ROS1 interbotix_xs_msgs/HexJoy value; no field projects away native data. */
typedef struct roswasmc_bounded_1_interbotix_xs_msgs_HexJoy
{
    /** @brief Declared field world_x_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t world_x_cmd;
    /** @brief Declared field world_y_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t world_y_cmd;
    /** @brief Declared field world_yaw_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t world_yaw_cmd;
    /** @brief Declared field place_x_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t place_x_cmd;
    /** @brief Declared field place_y_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t place_y_cmd;
    /** @brief Declared field place_z_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t place_z_cmd;
    /** @brief Declared field place_roll_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t place_roll_cmd;
    /** @brief Declared field place_pitch_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t place_pitch_cmd;
    /** @brief Declared field pose_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t pose_cmd;
    /** @brief Declared field move_type_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t move_type_cmd;
    /** @brief Declared field gait_toggle_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t gait_toggle_cmd;
    /** @brief Declared field leg_toggle_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t leg_toggle_cmd;
    /** @brief Declared field stance_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t stance_cmd;
    /** @brief Declared field reboot_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t reboot_cmd;
    /** @brief Declared field set_home_pose_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t set_home_pose_cmd;
    /** @brief Declared field speed_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t speed_cmd;
    /** @brief Declared field speed_toggle_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t speed_toggle_cmd;
} roswasmc_bounded_1_interbotix_xs_msgs_HexJoy;

# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_HEXJOY_MAX_WIRE_BYTES 17u
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_HEXJOY_MIN_WIRE_BYTES 17u
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_HEXJOY_CODEC_IDENTITY "UWVMROS1_b37a8bd136e63b066c12429e68af0721bb314a0b1131cb7e0e806faa56e04b37"
/** @brief Original scalar constant WORLD_X_INC=1; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_HEXJOY_WORLD_X_INC INT32_C(1)
/** @brief Original scalar constant WORLD_X_DEC=2; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_HEXJOY_WORLD_X_DEC INT32_C(2)
/** @brief Original scalar constant WORLD_Y_INC=3; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_HEXJOY_WORLD_Y_INC INT32_C(3)
/** @brief Original scalar constant WORLD_Y_DEC=4; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_HEXJOY_WORLD_Y_DEC INT32_C(4)
/** @brief Original scalar constant WORLD_YAW_CCW=5; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_HEXJOY_WORLD_YAW_CCW INT32_C(5)
/** @brief Original scalar constant WORLD_YAW_CW=6; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_HEXJOY_WORLD_YAW_CW INT32_C(6)
/** @brief Original scalar constant PLACE_X_INC=7; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_HEXJOY_PLACE_X_INC INT32_C(7)
/** @brief Original scalar constant PLACE_X_DEC=8; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_HEXJOY_PLACE_X_DEC INT32_C(8)
/** @brief Original scalar constant PLACE_Y_INC=9; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_HEXJOY_PLACE_Y_INC INT32_C(9)
/** @brief Original scalar constant PLACE_Y_DEC=10; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_HEXJOY_PLACE_Y_DEC INT32_C(10)
/** @brief Original scalar constant PLACE_Z_INC=11; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_HEXJOY_PLACE_Z_INC INT32_C(11)
/** @brief Original scalar constant PLACE_Z_DEC=12; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_HEXJOY_PLACE_Z_DEC INT32_C(12)
/** @brief Original scalar constant PLACE_ROLL_CCW=13; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_HEXJOY_PLACE_ROLL_CCW INT32_C(13)
/** @brief Original scalar constant PLACE_ROLL_CW=14; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_HEXJOY_PLACE_ROLL_CW INT32_C(14)
/** @brief Original scalar constant PLACE_PITCH_UP=15; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_HEXJOY_PLACE_PITCH_UP INT32_C(15)
/** @brief Original scalar constant PLACE_PITCH_DOWN=16; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_HEXJOY_PLACE_PITCH_DOWN INT32_C(16)
/** @brief Original scalar constant MOVE_HEXAPOD=17; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_HEXJOY_MOVE_HEXAPOD INT32_C(17)
/** @brief Original scalar constant MOVE_LEG=18; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_HEXJOY_MOVE_LEG INT32_C(18)
/** @brief Original scalar constant HOME_POSE=19; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_HEXJOY_HOME_POSE INT32_C(19)
/** @brief Original scalar constant SLEEP_POSE=20; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_HEXJOY_SLEEP_POSE INT32_C(20)
/** @brief Original scalar constant GAIT_NEXT=21; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_HEXJOY_GAIT_NEXT INT32_C(21)
/** @brief Original scalar constant GAIT_PREVIOUS=22; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_HEXJOY_GAIT_PREVIOUS INT32_C(22)
/** @brief Original scalar constant LEG_NEXT=23; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_HEXJOY_LEG_NEXT INT32_C(23)
/** @brief Original scalar constant LEG_PREVIOUS=24; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_HEXJOY_LEG_PREVIOUS INT32_C(24)
/** @brief Original scalar constant WIDEN_STANCE=25; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_HEXJOY_WIDEN_STANCE INT32_C(25)
/** @brief Original scalar constant NARROW_STANCE=26; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_HEXJOY_NARROW_STANCE INT32_C(26)
/** @brief Original scalar constant REBOOT_MOTORS=27; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_HEXJOY_REBOOT_MOTORS INT32_C(27)
/** @brief Original scalar constant SET_HOME_POSE=28; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_HEXJOY_SET_HOME_POSE INT32_C(28)
/** @brief Original scalar constant SPEED_INC=29; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_HEXJOY_SPEED_INC INT32_C(29)
/** @brief Original scalar constant SPEED_DEC=30; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_HEXJOY_SPEED_DEC INT32_C(30)
/** @brief Original scalar constant SPEED_COURSE=31; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_HEXJOY_SPEED_COURSE INT32_C(31)
/** @brief Original scalar constant SPEED_FINE=32; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_HEXJOY_SPEED_FINE INT32_C(32)

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_interbotix_xs_msgs_HexJoy_valid(roswasmc_bounded_1_interbotix_xs_msgs_HexJoy const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_interbotix_xs_msgs_HexJoy_wire_size(roswasmc_bounded_1_interbotix_xs_msgs_HexJoy const* value)
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
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_interbotix_xs_msgs_HexJoy_write_fields(roswasmc_bounded_1_interbotix_xs_msgs_HexJoy const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->world_x_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->world_y_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->world_yaw_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->place_x_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->place_y_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->place_z_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->place_roll_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->place_pitch_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->pose_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->move_type_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->gait_toggle_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->leg_toggle_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->stance_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->reboot_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->set_home_pose_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->speed_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->speed_toggle_cmd, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_interbotix_xs_msgs_HexJoy_read_fields(unsigned char const* p,
                                                                           size_t n,
                                                                           size_t* offset,
                                                                           roswasmc_bounded_1_interbotix_xs_msgs_HexJoy* value)
{
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->world_x_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->world_y_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->world_yaw_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->place_x_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->place_y_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->place_z_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->place_roll_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->place_pitch_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->pose_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->move_type_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->gait_toggle_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->leg_toggle_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->stance_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->reboot_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->set_home_pose_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->speed_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->speed_toggle_cmd, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_1_interbotix_xs_msgs_HexJoy_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_interbotix_xs_msgs_HexJoy_encode(roswasmc_bounded_1_interbotix_xs_msgs_HexJoy const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_interbotix_xs_msgs_HexJoy_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_interbotix_xs_msgs_HexJoy_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_interbotix_xs_msgs_HexJoy_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_interbotix_xs_msgs_HexJoy_decode(void const* input, size_t length, roswasmc_bounded_1_interbotix_xs_msgs_HexJoy* value)
{
    roswasmc_bounded_1_interbotix_xs_msgs_HexJoy next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 17u || length > 17u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_interbotix_xs_msgs_HexJoy_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTGROUPCOMMAND)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTGROUPCOMMAND_0 != 0xabb1113eUL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTGROUPCOMMAND_1 != 0x7408e02eUL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTGROUPCOMMAND_2 != 0x8bf9a67bUL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTGROUPCOMMAND_3 != 0x992350c0UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTGROUPCOMMAND_4 != 0x18ed27d9UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTGROUPCOMMAND_5 != 0xdd00ce80UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTGROUPCOMMAND_6 != 0x0932572eUL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTGROUPCOMMAND_7 != 0x37588ddaUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTGROUPCOMMAND 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTGROUPCOMMAND_0 0xabb1113eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTGROUPCOMMAND_1 0x7408e02eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTGROUPCOMMAND_2 0x8bf9a67bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTGROUPCOMMAND_3 0x992350c0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTGROUPCOMMAND_4 0x18ed27d9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTGROUPCOMMAND_5 0xdd00ce80UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTGROUPCOMMAND_6 0x0932572eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTGROUPCOMMAND_7 0x37588ddaUL

/** @brief UTF-8 byte storage for interbotix_xs_msgs/JointGroupCommand.name; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_interbotix_xs_msgs_JointGroupCommand_name_text;

/** @brief At most64 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    float data[64];
} roswasmc_bounded_1_interbotix_xs_msgs_JointGroupCommand_cmd_sequence;

/** @brief Complete ROS1 interbotix_xs_msgs/JointGroupCommand value; no field projects away native data. */
typedef struct roswasmc_bounded_1_interbotix_xs_msgs_JointGroupCommand
{
    /** @brief Declared field name; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_interbotix_xs_msgs_JointGroupCommand_name_text name;
    /** @brief Declared field cmd; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_interbotix_xs_msgs_JointGroupCommand_cmd_sequence cmd;
} roswasmc_bounded_1_interbotix_xs_msgs_JointGroupCommand;

# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTGROUPCOMMAND_MAX_WIRE_BYTES 392u
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTGROUPCOMMAND_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTGROUPCOMMAND_CODEC_IDENTITY "UWVMROS1_4fc3c13db66a0c916112022ddf02bd4be872e1b6124c7f2db43271b3a7b186ec"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_interbotix_xs_msgs_JointGroupCommand_valid(roswasmc_bounded_1_interbotix_xs_msgs_JointGroupCommand const* value)
{
    if(!value)
        return 0;
    if(value->name.size > 128u || !uwvm_bounded_utf8(value->name.data, value->name.size))
        return 0;
    if(value->cmd.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->cmd.size; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->cmd.data[i], 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                    return 0;
            }
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_interbotix_xs_msgs_JointGroupCommand_wire_size(roswasmc_bounded_1_interbotix_xs_msgs_JointGroupCommand const* value)
{
    size_t n = 0;
    n += 4 + value->name.size;
    n += 4;
    if(value->cmd.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->cmd.size; ++i)
        {
            n += 4;
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_1_interbotix_xs_msgs_JointGroupCommand_write_fields(roswasmc_bounded_1_interbotix_xs_msgs_JointGroupCommand const* value,
                                                                                        unsigned char* p,
                                                                                        size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->name.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->name.data, value->name.size);
    *offset += value->name.size;
    uwvm_bounded_put(p + *offset, value->cmd.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->cmd.size; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->cmd.data[i], 4);
                uwvm_bounded_put(p + *offset, bits, 4);
                *offset += 4;
            }
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_interbotix_xs_msgs_JointGroupCommand_read_fields(unsigned char const* p,
                                                                                      size_t n,
                                                                                      size_t* offset,
                                                                                      roswasmc_bounded_1_interbotix_xs_msgs_JointGroupCommand* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    value->name.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->name.size > 128u || value->name.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->name.data, p + *offset, value->name.size);
    *offset += value->name.size;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->cmd.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->cmd.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->cmd.size; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->cmd.data[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    return roswasmc_bounded_1_interbotix_xs_msgs_JointGroupCommand_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_interbotix_xs_msgs_JointGroupCommand_encode(roswasmc_bounded_1_interbotix_xs_msgs_JointGroupCommand const* value,
                                                                                      void* output,
                                                                                      size_t capacity,
                                                                                      size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_interbotix_xs_msgs_JointGroupCommand_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_interbotix_xs_msgs_JointGroupCommand_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_interbotix_xs_msgs_JointGroupCommand_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_interbotix_xs_msgs_JointGroupCommand_decode(void const* input,
                                                                                      size_t length,
                                                                                      roswasmc_bounded_1_interbotix_xs_msgs_JointGroupCommand* value)
{
    roswasmc_bounded_1_interbotix_xs_msgs_JointGroupCommand next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 392u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_interbotix_xs_msgs_JointGroupCommand_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTSINGLECOMMAND)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTSINGLECOMMAND_0 != 0xb9052d89UL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTSINGLECOMMAND_1 != 0x68bdc724UL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTSINGLECOMMAND_2 != 0xbcd14eb2UL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTSINGLECOMMAND_3 != 0xfef989e7UL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTSINGLECOMMAND_4 != 0xab641500UL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTSINGLECOMMAND_5 != 0x094de847UL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTSINGLECOMMAND_6 != 0xfce5d42bUL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTSINGLECOMMAND_7 != 0x3a1bcf43UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTSINGLECOMMAND 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTSINGLECOMMAND_0 0xb9052d89UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTSINGLECOMMAND_1 0x68bdc724UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTSINGLECOMMAND_2 0xbcd14eb2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTSINGLECOMMAND_3 0xfef989e7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTSINGLECOMMAND_4 0xab641500UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTSINGLECOMMAND_5 0x094de847UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTSINGLECOMMAND_6 0xfce5d42bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTSINGLECOMMAND_7 0x3a1bcf43UL

/** @brief UTF-8 byte storage for interbotix_xs_msgs/JointSingleCommand.name; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_interbotix_xs_msgs_JointSingleCommand_name_text;

/** @brief Complete ROS1 interbotix_xs_msgs/JointSingleCommand value; no field projects away native data. */
typedef struct roswasmc_bounded_1_interbotix_xs_msgs_JointSingleCommand
{
    /** @brief Declared field name; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_interbotix_xs_msgs_JointSingleCommand_name_text name;
    /** @brief Declared field cmd; canonical capacity is part of CODEC_IDENTITY. */
    float cmd;
} roswasmc_bounded_1_interbotix_xs_msgs_JointSingleCommand;

# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTSINGLECOMMAND_MAX_WIRE_BYTES 136u
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTSINGLECOMMAND_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTSINGLECOMMAND_CODEC_IDENTITY "UWVMROS1_6852cc1330e9c60378a89981a25fc2b01338a71225e57478c824a3aebc8b1af0"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_interbotix_xs_msgs_JointSingleCommand_valid(roswasmc_bounded_1_interbotix_xs_msgs_JointSingleCommand const* value)
{
    if(!value)
        return 0;
    if(value->name.size > 128u || !uwvm_bounded_utf8(value->name.data, value->name.size))
        return 0;
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->cmd, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_interbotix_xs_msgs_JointSingleCommand_wire_size(roswasmc_bounded_1_interbotix_xs_msgs_JointSingleCommand const* value)
{
    size_t n = 0;
    n += 4 + value->name.size;
    n += 4;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_1_interbotix_xs_msgs_JointSingleCommand_write_fields(roswasmc_bounded_1_interbotix_xs_msgs_JointSingleCommand const* value,
                                                                                         unsigned char* p,
                                                                                         size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->name.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->name.data, value->name.size);
    *offset += value->name.size;
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->cmd, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_interbotix_xs_msgs_JointSingleCommand_read_fields(unsigned char const* p,
                                                                                       size_t n,
                                                                                       size_t* offset,
                                                                                       roswasmc_bounded_1_interbotix_xs_msgs_JointSingleCommand* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    value->name.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->name.size > 128u || value->name.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->name.data, p + *offset, value->name.size);
    *offset += value->name.size;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->cmd, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_1_interbotix_xs_msgs_JointSingleCommand_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_interbotix_xs_msgs_JointSingleCommand_encode(roswasmc_bounded_1_interbotix_xs_msgs_JointSingleCommand const* value,
                                                                                       void* output,
                                                                                       size_t capacity,
                                                                                       size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_interbotix_xs_msgs_JointSingleCommand_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_interbotix_xs_msgs_JointSingleCommand_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_interbotix_xs_msgs_JointSingleCommand_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_interbotix_xs_msgs_JointSingleCommand_decode(void const* input,
                                                                                       size_t length,
                                                                                       roswasmc_bounded_1_interbotix_xs_msgs_JointSingleCommand* value)
{
    roswasmc_bounded_1_interbotix_xs_msgs_JointSingleCommand next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 136u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_interbotix_xs_msgs_JointSingleCommand_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTTEMPS)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTTEMPS_0 != 0x67d45f66UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTTEMPS_1 != 0x4ebcc659UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTTEMPS_2 != 0x6b18ab5bUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTTEMPS_3 != 0x13ac582cUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTTEMPS_4 != 0xb82d367dUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTTEMPS_5 != 0xee8f7a38UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTTEMPS_6 != 0x8cb2555fUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTTEMPS_7 != 0x5ae4960bUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTTEMPS 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTTEMPS_0 0x67d45f66UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTTEMPS_1 0x4ebcc659UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTTEMPS_2 0x6b18ab5bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTTEMPS_3 0x13ac582cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTTEMPS_4 0xb82d367dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTTEMPS_5 0xee8f7a38UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTTEMPS_6 0x8cb2555fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTTEMPS_7 0x5ae4960bUL

/** @brief UTF-8 byte storage for interbotix_xs_msgs/JointTemps.names; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_interbotix_xs_msgs_JointTemps_names_text;

/** @brief At most64 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_1_interbotix_xs_msgs_JointTemps_names_text data[64];
} roswasmc_bounded_1_interbotix_xs_msgs_JointTemps_names_sequence;

/** @brief At most64 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    int32_t data[64];
} roswasmc_bounded_1_interbotix_xs_msgs_JointTemps_temps_sequence;

/** @brief Complete ROS1 interbotix_xs_msgs/JointTemps value; no field projects away native data. */
typedef struct roswasmc_bounded_1_interbotix_xs_msgs_JointTemps
{
    /** @brief Declared field names; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_interbotix_xs_msgs_JointTemps_names_sequence names;
    /** @brief Declared field temps; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_interbotix_xs_msgs_JointTemps_temps_sequence temps;
} roswasmc_bounded_1_interbotix_xs_msgs_JointTemps;

# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTTEMPS_MAX_WIRE_BYTES 8712u
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTTEMPS_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTTEMPS_CODEC_IDENTITY "UWVMROS1_054409e3e97b0797e9c82e5c9d0dd5d7be1d421d3c78924dca8097e9ceb1a511"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_interbotix_xs_msgs_JointTemps_valid(roswasmc_bounded_1_interbotix_xs_msgs_JointTemps const* value)
{
    if(!value)
        return 0;
    if(value->names.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->names.size; ++i)
        {
            if(value->names.data[i].size > 128u || !uwvm_bounded_utf8(value->names.data[i].data, value->names.data[i].size))
                return 0;
        }
    }
    if(value->temps.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->temps.size; ++i)
        {
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_interbotix_xs_msgs_JointTemps_wire_size(roswasmc_bounded_1_interbotix_xs_msgs_JointTemps const* value)
{
    size_t n = 0;
    n += 4;
    if(value->names.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->names.size; ++i)
        {
            n += 4 + value->names.data[i].size;
        }
    }
    n += 4;
    if(value->temps.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->temps.size; ++i)
        {
            n += 4;
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_1_interbotix_xs_msgs_JointTemps_write_fields(roswasmc_bounded_1_interbotix_xs_msgs_JointTemps const* value,
                                                                                 unsigned char* p,
                                                                                 size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->names.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->names.size; ++i)
        {
            uwvm_bounded_put(p + *offset, value->names.data[i].size, 4);
            *offset += 4;
            uwvm_bounded_copy(p + *offset, value->names.data[i].data, value->names.data[i].size);
            *offset += value->names.data[i].size;
        }
    }
    uwvm_bounded_put(p + *offset, value->temps.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->temps.size; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->temps.data[i], 4);
            *offset += 4;
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_interbotix_xs_msgs_JointTemps_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_1_interbotix_xs_msgs_JointTemps* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    value->names.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->names.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->names.size; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            value->names.data[i].size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
            *offset += 4;
            if(value->names.data[i].size > 128u || value->names.data[i].size > n - *offset)
                return 0;
            uwvm_bounded_copy(value->names.data[i].data, p + *offset, value->names.data[i].size);
            *offset += value->names.data[i].size;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->temps.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->temps.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->temps.size; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->temps.data[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    return roswasmc_bounded_1_interbotix_xs_msgs_JointTemps_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_interbotix_xs_msgs_JointTemps_encode(roswasmc_bounded_1_interbotix_xs_msgs_JointTemps const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_interbotix_xs_msgs_JointTemps_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_interbotix_xs_msgs_JointTemps_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_interbotix_xs_msgs_JointTemps_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_interbotix_xs_msgs_JointTemps_decode(void const* input, size_t length, roswasmc_bounded_1_interbotix_xs_msgs_JointTemps* value)
{
    roswasmc_bounded_1_interbotix_xs_msgs_JointTemps next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 8712u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_interbotix_xs_msgs_JointTemps_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
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
    /** @brief Declared field sec; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t sec;
    /** @brief Declared field nsec; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t nsec;
} roswasmc_bounded_1_time;

# define ROSWASMC_BOUNDED_1_TIME_MAX_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_1_TIME_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_1_TIME_CODEC_IDENTITY "UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_time_valid(roswasmc_bounded_1_time const* value)
{
    if(!value)
        return 0;
    if(value->nsec >= 1000000000)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_time_wire_size(roswasmc_bounded_1_time const* value)
{
    size_t n = 0;
    n += 4;
    n += 4;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_1_time_write_fields(roswasmc_bounded_1_time const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->sec, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->nsec, 4);
    *offset += 4;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_time_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_1_time* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->sec, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->nsec, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_1_time_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_time_encode(roswasmc_bounded_1_time const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_time_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_time_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_time_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_time_decode(void const* input, size_t length, roswasmc_bounded_1_time* value)
{
    roswasmc_bounded_1_time next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 8u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_time_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
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
    /** @brief Declared field seq; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t seq;
    /** @brief Declared field stamp; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_time stamp;
    /** @brief Declared field frame_id; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_std_msgs_Header_frame_id_text frame_id;
} roswasmc_bounded_1_std_msgs_Header;

# define ROSWASMC_BOUNDED_1_STD_MSGS_HEADER_MAX_WIRE_BYTES 144u
# define ROSWASMC_BOUNDED_1_STD_MSGS_HEADER_MIN_WIRE_BYTES 16u
# define ROSWASMC_BOUNDED_1_STD_MSGS_HEADER_CODEC_IDENTITY "UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_std_msgs_Header_valid(roswasmc_bounded_1_std_msgs_Header const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_1_time_valid(&value->stamp))
        return 0;
    if(value->frame_id.size > 128u || !uwvm_bounded_utf8(value->frame_id.data, value->frame_id.size))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_std_msgs_Header_wire_size(roswasmc_bounded_1_std_msgs_Header const* value)
{
    size_t n = 0;
    n += 4;
    n += roswasmc_bounded_1_time_wire_size(&value->stamp);
    n += 4 + value->frame_id.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_1_std_msgs_Header_write_fields(roswasmc_bounded_1_std_msgs_Header const* value, unsigned char* p, size_t* offset)
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
static inline int roswasmc_bounded_1_std_msgs_Header_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_1_std_msgs_Header* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->seq, &bits, 4);
    }
    *offset += 4;
    if(!roswasmc_bounded_1_time_read_fields(p, n, offset, &value->stamp))
        return 0;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->frame_id.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->frame_id.size > 128u || value->frame_id.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->frame_id.data, p + *offset, value->frame_id.size);
    *offset += value->frame_id.size;
    return roswasmc_bounded_1_std_msgs_Header_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_std_msgs_Header_encode(roswasmc_bounded_1_std_msgs_Header const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_std_msgs_Header_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_std_msgs_Header_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_std_msgs_Header_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_std_msgs_Header_decode(void const* input, size_t length, roswasmc_bounded_1_std_msgs_Header* value)
{
    roswasmc_bounded_1_std_msgs_Header next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 16u || length > 144u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_std_msgs_Header_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_DURATION)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_DURATION_0 != 0xe80ae74dUL || UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_DURATION_1 != 0x11d8b0d6UL ||         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_DURATION_2 != 0x6d5440e4UL || UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_DURATION_3 != 0xd3238109UL ||         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_DURATION_4 != 0xd573a24dUL || UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_DURATION_5 != 0xf3bf4e12UL ||         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_DURATION_6 != 0x9fc5eac0UL || UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_DURATION_7 != 0x7046527cUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_DURATION 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_DURATION_0 0xe80ae74dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_DURATION_1 0x11d8b0d6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_DURATION_2 0x6d5440e4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_DURATION_3 0xd3238109UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_DURATION_4 0xd573a24dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_DURATION_5 0xf3bf4e12UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_DURATION_6 0x9fc5eac0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_DURATION_7 0x7046527cUL

/** @brief Complete ROS1 duration value; no field projects away native data. */
typedef struct roswasmc_bounded_1_duration
{
    /** @brief Declared field sec; canonical capacity is part of CODEC_IDENTITY. */
    int32_t sec;
    /** @brief Declared field nsec; canonical capacity is part of CODEC_IDENTITY. */
    int32_t nsec;
} roswasmc_bounded_1_duration;

# define ROSWASMC_BOUNDED_1_DURATION_MAX_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_1_DURATION_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_1_DURATION_CODEC_IDENTITY "UWVMROS1_8dbec6cdfef79495208abb358c5e8283ec8d9d471f984424afcda997d142cca8"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_duration_valid(roswasmc_bounded_1_duration const* value)
{
    if(!value)
        return 0;
    if(value->nsec < 0 || value->nsec >= 1000000000)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_duration_wire_size(roswasmc_bounded_1_duration const* value)
{
    size_t n = 0;
    n += 4;
    n += 4;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_1_duration_write_fields(roswasmc_bounded_1_duration const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->sec, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->nsec, 4);
    *offset += 4;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_duration_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_1_duration* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->sec, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->nsec, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_1_duration_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_duration_encode(roswasmc_bounded_1_duration const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_duration_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_duration_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_duration_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_duration_decode(void const* input, size_t length, roswasmc_bounded_1_duration* value)
{
    roswasmc_bounded_1_duration next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 8u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_duration_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TRAJECTORY_MSGS_JOINTTRAJECTORYPOINT)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TRAJECTORY_MSGS_JOINTTRAJECTORYPOINT_0 != 0xe8f038dfUL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TRAJECTORY_MSGS_JOINTTRAJECTORYPOINT_1 != 0x3fa9ffacUL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TRAJECTORY_MSGS_JOINTTRAJECTORYPOINT_2 != 0xc316067fUL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TRAJECTORY_MSGS_JOINTTRAJECTORYPOINT_3 != 0xaf478772UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TRAJECTORY_MSGS_JOINTTRAJECTORYPOINT_4 != 0x9ee56be3UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TRAJECTORY_MSGS_JOINTTRAJECTORYPOINT_5 != 0x23bb3f80UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TRAJECTORY_MSGS_JOINTTRAJECTORYPOINT_6 != 0x145b2743UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TRAJECTORY_MSGS_JOINTTRAJECTORYPOINT_7 != 0x1fab8d53UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TRAJECTORY_MSGS_JOINTTRAJECTORYPOINT 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TRAJECTORY_MSGS_JOINTTRAJECTORYPOINT_0 0xe8f038dfUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TRAJECTORY_MSGS_JOINTTRAJECTORYPOINT_1 0x3fa9ffacUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TRAJECTORY_MSGS_JOINTTRAJECTORYPOINT_2 0xc316067fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TRAJECTORY_MSGS_JOINTTRAJECTORYPOINT_3 0xaf478772UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TRAJECTORY_MSGS_JOINTTRAJECTORYPOINT_4 0x9ee56be3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TRAJECTORY_MSGS_JOINTTRAJECTORYPOINT_5 0x23bb3f80UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TRAJECTORY_MSGS_JOINTTRAJECTORYPOINT_6 0x145b2743UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TRAJECTORY_MSGS_JOINTTRAJECTORYPOINT_7 0x1fab8d53UL

/** @brief At most16 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[16];
} roswasmc_bounded_1_trajectory_msgs_JointTrajectoryPoint_positions_sequence;

/** @brief At most16 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[16];
} roswasmc_bounded_1_trajectory_msgs_JointTrajectoryPoint_velocities_sequence;

/** @brief At most16 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[16];
} roswasmc_bounded_1_trajectory_msgs_JointTrajectoryPoint_accelerations_sequence;

/** @brief At most16 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[16];
} roswasmc_bounded_1_trajectory_msgs_JointTrajectoryPoint_effort_sequence;

/** @brief Complete ROS1 trajectory_msgs/JointTrajectoryPoint value; no field projects away native data. */
typedef struct roswasmc_bounded_1_trajectory_msgs_JointTrajectoryPoint
{
    /** @brief Declared field positions; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_trajectory_msgs_JointTrajectoryPoint_positions_sequence positions;
    /** @brief Declared field velocities; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_trajectory_msgs_JointTrajectoryPoint_velocities_sequence velocities;
    /** @brief Declared field accelerations; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_trajectory_msgs_JointTrajectoryPoint_accelerations_sequence accelerations;
    /** @brief Declared field effort; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_trajectory_msgs_JointTrajectoryPoint_effort_sequence effort;
    /** @brief Declared field time_from_start; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_duration time_from_start;
} roswasmc_bounded_1_trajectory_msgs_JointTrajectoryPoint;

# define ROSWASMC_BOUNDED_1_TRAJECTORY_MSGS_JOINTTRAJECTORYPOINT_MAX_WIRE_BYTES 536u
# define ROSWASMC_BOUNDED_1_TRAJECTORY_MSGS_JOINTTRAJECTORYPOINT_MIN_WIRE_BYTES 24u
# define ROSWASMC_BOUNDED_1_TRAJECTORY_MSGS_JOINTTRAJECTORYPOINT_CODEC_IDENTITY "UWVMROS1_e93c84b6980a95c9695bd13be2bf9ebc4b2f400fc8a39909578e59f3dd03db81"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_trajectory_msgs_JointTrajectoryPoint_valid(roswasmc_bounded_1_trajectory_msgs_JointTrajectoryPoint const* value)
{
    if(!value)
        return 0;
    if(value->positions.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->positions.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->positions.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                    return 0;
            }
        }
    }
    if(value->velocities.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->velocities.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->velocities.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                    return 0;
            }
        }
    }
    if(value->accelerations.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->accelerations.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->accelerations.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                    return 0;
            }
        }
    }
    if(value->effort.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->effort.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->effort.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                    return 0;
            }
        }
    }
    if(!roswasmc_bounded_1_duration_valid(&value->time_from_start))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_trajectory_msgs_JointTrajectoryPoint_wire_size(roswasmc_bounded_1_trajectory_msgs_JointTrajectoryPoint const* value)
{
    size_t n = 0;
    n += 4;
    if(value->positions.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->positions.size; ++i)
        {
            n += 8;
        }
    }
    n += 4;
    if(value->velocities.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->velocities.size; ++i)
        {
            n += 8;
        }
    }
    n += 4;
    if(value->accelerations.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->accelerations.size; ++i)
        {
            n += 8;
        }
    }
    n += 4;
    if(value->effort.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->effort.size; ++i)
        {
            n += 8;
        }
    }
    n += roswasmc_bounded_1_duration_wire_size(&value->time_from_start);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_1_trajectory_msgs_JointTrajectoryPoint_write_fields(roswasmc_bounded_1_trajectory_msgs_JointTrajectoryPoint const* value,
                                                                                        unsigned char* p,
                                                                                        size_t* offset)
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
    uwvm_bounded_put(p + *offset, value->accelerations.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->accelerations.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->accelerations.data[i], 8);
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
    roswasmc_bounded_1_duration_write_fields(&value->time_from_start, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_trajectory_msgs_JointTrajectoryPoint_read_fields(unsigned char const* p,
                                                                                      size_t n,
                                                                                      size_t* offset,
                                                                                      roswasmc_bounded_1_trajectory_msgs_JointTrajectoryPoint* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    value->positions.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->positions.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->positions.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
                return 0;
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->positions.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->velocities.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->velocities.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->velocities.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
                return 0;
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->velocities.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->accelerations.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->accelerations.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->accelerations.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
                return 0;
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->accelerations.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->effort.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->effort.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->effort.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
                return 0;
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->effort.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    if(!roswasmc_bounded_1_duration_read_fields(p, n, offset, &value->time_from_start))
        return 0;
    return roswasmc_bounded_1_trajectory_msgs_JointTrajectoryPoint_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_trajectory_msgs_JointTrajectoryPoint_encode(roswasmc_bounded_1_trajectory_msgs_JointTrajectoryPoint const* value,
                                                                                      void* output,
                                                                                      size_t capacity,
                                                                                      size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_trajectory_msgs_JointTrajectoryPoint_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_trajectory_msgs_JointTrajectoryPoint_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_trajectory_msgs_JointTrajectoryPoint_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_trajectory_msgs_JointTrajectoryPoint_decode(void const* input,
                                                                                      size_t length,
                                                                                      roswasmc_bounded_1_trajectory_msgs_JointTrajectoryPoint* value)
{
    roswasmc_bounded_1_trajectory_msgs_JointTrajectoryPoint next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 24u || length > 536u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_trajectory_msgs_JointTrajectoryPoint_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TRAJECTORY_MSGS_JOINTTRAJECTORY)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TRAJECTORY_MSGS_JOINTTRAJECTORY_0 != 0xd1e73c0fUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TRAJECTORY_MSGS_JOINTTRAJECTORY_1 != 0xd79afcedUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TRAJECTORY_MSGS_JOINTTRAJECTORY_2 != 0x0534542eUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TRAJECTORY_MSGS_JOINTTRAJECTORY_3 != 0x3e6a788fUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TRAJECTORY_MSGS_JOINTTRAJECTORY_4 != 0xe7629de8UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TRAJECTORY_MSGS_JOINTTRAJECTORY_5 != 0xb48827b9UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TRAJECTORY_MSGS_JOINTTRAJECTORY_6 != 0xf6672321UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TRAJECTORY_MSGS_JOINTTRAJECTORY_7 != 0x61c68aeeUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TRAJECTORY_MSGS_JOINTTRAJECTORY 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TRAJECTORY_MSGS_JOINTTRAJECTORY_0 0xd1e73c0fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TRAJECTORY_MSGS_JOINTTRAJECTORY_1 0xd79afcedUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TRAJECTORY_MSGS_JOINTTRAJECTORY_2 0x0534542eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TRAJECTORY_MSGS_JOINTTRAJECTORY_3 0x3e6a788fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TRAJECTORY_MSGS_JOINTTRAJECTORY_4 0xe7629de8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TRAJECTORY_MSGS_JOINTTRAJECTORY_5 0xb48827b9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TRAJECTORY_MSGS_JOINTTRAJECTORY_6 0xf6672321UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TRAJECTORY_MSGS_JOINTTRAJECTORY_7 0x61c68aeeUL

/** @brief UTF-8 byte storage for trajectory_msgs/JointTrajectory.joint_names; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_trajectory_msgs_JointTrajectory_joint_names_text;

/** @brief At most16 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_1_trajectory_msgs_JointTrajectory_joint_names_text data[16];
} roswasmc_bounded_1_trajectory_msgs_JointTrajectory_joint_names_sequence;

/** @brief At most4 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_1_trajectory_msgs_JointTrajectoryPoint data[4];
} roswasmc_bounded_1_trajectory_msgs_JointTrajectory_points_sequence;

/** @brief Complete ROS1 trajectory_msgs/JointTrajectory value; no field projects away native data. */
typedef struct roswasmc_bounded_1_trajectory_msgs_JointTrajectory
{
    /** @brief Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_std_msgs_Header header;
    /** @brief Declared field joint_names; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_trajectory_msgs_JointTrajectory_joint_names_sequence joint_names;
    /** @brief Declared field points; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_trajectory_msgs_JointTrajectory_points_sequence points;
} roswasmc_bounded_1_trajectory_msgs_JointTrajectory;

# define ROSWASMC_BOUNDED_1_TRAJECTORY_MSGS_JOINTTRAJECTORY_MAX_WIRE_BYTES 4408u
# define ROSWASMC_BOUNDED_1_TRAJECTORY_MSGS_JOINTTRAJECTORY_MIN_WIRE_BYTES 24u
# define ROSWASMC_BOUNDED_1_TRAJECTORY_MSGS_JOINTTRAJECTORY_CODEC_IDENTITY "UWVMROS1_2fd934a09c8256baeb450d670d83acc51bad97dc2e7ad750126353964fa6c2b9"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_trajectory_msgs_JointTrajectory_valid(roswasmc_bounded_1_trajectory_msgs_JointTrajectory const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_1_std_msgs_Header_valid(&value->header))
        return 0;
    if(value->joint_names.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joint_names.size; ++i)
        {
            if(value->joint_names.data[i].size > 128u || !uwvm_bounded_utf8(value->joint_names.data[i].data, value->joint_names.data[i].size))
                return 0;
        }
    }
    if(value->points.size > 4u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->points.size; ++i)
        {
            if(!roswasmc_bounded_1_trajectory_msgs_JointTrajectoryPoint_valid(&value->points.data[i]))
                return 0;
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_trajectory_msgs_JointTrajectory_wire_size(roswasmc_bounded_1_trajectory_msgs_JointTrajectory const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_1_std_msgs_Header_wire_size(&value->header);
    n += 4;
    if(value->joint_names.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joint_names.size; ++i)
        {
            n += 4 + value->joint_names.data[i].size;
        }
    }
    n += 4;
    if(value->points.size > 4u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->points.size; ++i)
        {
            n += roswasmc_bounded_1_trajectory_msgs_JointTrajectoryPoint_wire_size(&value->points.data[i]);
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_1_trajectory_msgs_JointTrajectory_write_fields(roswasmc_bounded_1_trajectory_msgs_JointTrajectory const* value,
                                                                                   unsigned char* p,
                                                                                   size_t* offset)
{
    roswasmc_bounded_1_std_msgs_Header_write_fields(&value->header, p, offset);
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
    uwvm_bounded_put(p + *offset, value->points.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->points.size; ++i)
        {
            roswasmc_bounded_1_trajectory_msgs_JointTrajectoryPoint_write_fields(&value->points.data[i], p, offset);
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_trajectory_msgs_JointTrajectory_read_fields(unsigned char const* p,
                                                                                 size_t n,
                                                                                 size_t* offset,
                                                                                 roswasmc_bounded_1_trajectory_msgs_JointTrajectory* value)
{
    if(!roswasmc_bounded_1_std_msgs_Header_read_fields(p, n, offset, &value->header))
        return 0;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->joint_names.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->joint_names.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joint_names.size; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            value->joint_names.data[i].size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
            *offset += 4;
            if(value->joint_names.data[i].size > 128u || value->joint_names.data[i].size > n - *offset)
                return 0;
            uwvm_bounded_copy(value->joint_names.data[i].data, p + *offset, value->joint_names.data[i].size);
            *offset += value->joint_names.data[i].size;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->points.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->points.size > 4u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->points.size; ++i)
        {
            if(!roswasmc_bounded_1_trajectory_msgs_JointTrajectoryPoint_read_fields(p, n, offset, &value->points.data[i]))
                return 0;
        }
    }
    return roswasmc_bounded_1_trajectory_msgs_JointTrajectory_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_trajectory_msgs_JointTrajectory_encode(roswasmc_bounded_1_trajectory_msgs_JointTrajectory const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_trajectory_msgs_JointTrajectory_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_trajectory_msgs_JointTrajectory_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_trajectory_msgs_JointTrajectory_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_trajectory_msgs_JointTrajectory_decode(void const* input, size_t length, roswasmc_bounded_1_trajectory_msgs_JointTrajectory* value)
{
    roswasmc_bounded_1_trajectory_msgs_JointTrajectory next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 24u || length > 4408u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_trajectory_msgs_JointTrajectory_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTTRAJECTORYCOMMAND)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTTRAJECTORYCOMMAND_0 != 0x6740bc0dUL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTTRAJECTORYCOMMAND_1 != 0x4956ce95UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTTRAJECTORYCOMMAND_2 != 0x3f92936eUL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTTRAJECTORYCOMMAND_3 != 0x678d6a84UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTTRAJECTORYCOMMAND_4 != 0xe61fa230UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTTRAJECTORYCOMMAND_5 != 0xdf6ba52bUL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTTRAJECTORYCOMMAND_6 != 0x33a1a8f3UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTTRAJECTORYCOMMAND_7 != 0x316eb594UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTTRAJECTORYCOMMAND 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTTRAJECTORYCOMMAND_0 0x6740bc0dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTTRAJECTORYCOMMAND_1 0x4956ce95UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTTRAJECTORYCOMMAND_2 0x3f92936eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTTRAJECTORYCOMMAND_3 0x678d6a84UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTTRAJECTORYCOMMAND_4 0xe61fa230UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTTRAJECTORYCOMMAND_5 0xdf6ba52bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTTRAJECTORYCOMMAND_6 0x33a1a8f3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTTRAJECTORYCOMMAND_7 0x316eb594UL

/** @brief UTF-8 byte storage for interbotix_xs_msgs/JointTrajectoryCommand.cmd_type; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_interbotix_xs_msgs_JointTrajectoryCommand_cmd_type_text;

/** @brief UTF-8 byte storage for interbotix_xs_msgs/JointTrajectoryCommand.name; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_interbotix_xs_msgs_JointTrajectoryCommand_name_text;

/** @brief Complete ROS1 interbotix_xs_msgs/JointTrajectoryCommand value; no field projects away native data. */
typedef struct roswasmc_bounded_1_interbotix_xs_msgs_JointTrajectoryCommand
{
    /** @brief Declared field cmd_type; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_interbotix_xs_msgs_JointTrajectoryCommand_cmd_type_text cmd_type;
    /** @brief Declared field name; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_interbotix_xs_msgs_JointTrajectoryCommand_name_text name;
    /** @brief Declared field traj; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_trajectory_msgs_JointTrajectory traj;
} roswasmc_bounded_1_interbotix_xs_msgs_JointTrajectoryCommand;

# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTTRAJECTORYCOMMAND_MAX_WIRE_BYTES 4672u
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTTRAJECTORYCOMMAND_MIN_WIRE_BYTES 32u
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_JOINTTRAJECTORYCOMMAND_CODEC_IDENTITY "UWVMROS1_e14b0742b1f9fa372adf0af54f8e3493add79d33b1edd46cdf63c8b936f465d7"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_interbotix_xs_msgs_JointTrajectoryCommand_valid(roswasmc_bounded_1_interbotix_xs_msgs_JointTrajectoryCommand const* value)
{
    if(!value)
        return 0;
    if(value->cmd_type.size > 128u || !uwvm_bounded_utf8(value->cmd_type.data, value->cmd_type.size))
        return 0;
    if(value->name.size > 128u || !uwvm_bounded_utf8(value->name.data, value->name.size))
        return 0;
    if(!roswasmc_bounded_1_trajectory_msgs_JointTrajectory_valid(&value->traj))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_1_interbotix_xs_msgs_JointTrajectoryCommand_wire_size(roswasmc_bounded_1_interbotix_xs_msgs_JointTrajectoryCommand const* value)
{
    size_t n = 0;
    n += 4 + value->cmd_type.size;
    n += 4 + value->name.size;
    n += roswasmc_bounded_1_trajectory_msgs_JointTrajectory_wire_size(&value->traj);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_interbotix_xs_msgs_JointTrajectoryCommand_write_fields(roswasmc_bounded_1_interbotix_xs_msgs_JointTrajectoryCommand const* value,
                                                                              unsigned char* p,
                                                                              size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->cmd_type.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->cmd_type.data, value->cmd_type.size);
    *offset += value->cmd_type.size;
    uwvm_bounded_put(p + *offset, value->name.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->name.data, value->name.size);
    *offset += value->name.size;
    roswasmc_bounded_1_trajectory_msgs_JointTrajectory_write_fields(&value->traj, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_interbotix_xs_msgs_JointTrajectoryCommand_read_fields(unsigned char const* p,
                                                                                           size_t n,
                                                                                           size_t* offset,
                                                                                           roswasmc_bounded_1_interbotix_xs_msgs_JointTrajectoryCommand* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    value->cmd_type.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->cmd_type.size > 128u || value->cmd_type.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->cmd_type.data, p + *offset, value->cmd_type.size);
    *offset += value->cmd_type.size;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->name.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->name.size > 128u || value->name.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->name.data, p + *offset, value->name.size);
    *offset += value->name.size;
    if(!roswasmc_bounded_1_trajectory_msgs_JointTrajectory_read_fields(p, n, offset, &value->traj))
        return 0;
    return roswasmc_bounded_1_interbotix_xs_msgs_JointTrajectoryCommand_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_1_interbotix_xs_msgs_JointTrajectoryCommand_encode(roswasmc_bounded_1_interbotix_xs_msgs_JointTrajectoryCommand const* value,
                                                                        void* output,
                                                                        size_t capacity,
                                                                        size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_interbotix_xs_msgs_JointTrajectoryCommand_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_interbotix_xs_msgs_JointTrajectoryCommand_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_interbotix_xs_msgs_JointTrajectoryCommand_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_interbotix_xs_msgs_JointTrajectoryCommand_decode(void const* input,
                                                                                           size_t length,
                                                                                           roswasmc_bounded_1_interbotix_xs_msgs_JointTrajectoryCommand* value)
{
    roswasmc_bounded_1_interbotix_xs_msgs_JointTrajectoryCommand next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 32u || length > 4672u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_interbotix_xs_msgs_JointTrajectoryCommand_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_LOCOBOTJOY)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_LOCOBOTJOY_0 != 0x49ac3a67UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_LOCOBOTJOY_1 != 0x6fd161e6UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_LOCOBOTJOY_2 != 0x254c02c3UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_LOCOBOTJOY_3 != 0x9104a9b2UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_LOCOBOTJOY_4 != 0xe7c525c5UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_LOCOBOTJOY_5 != 0x10a21036UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_LOCOBOTJOY_6 != 0xdf206ba1UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_LOCOBOTJOY_7 != 0x129ab35dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_LOCOBOTJOY 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_LOCOBOTJOY_0 0x49ac3a67UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_LOCOBOTJOY_1 0x6fd161e6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_LOCOBOTJOY_2 0x254c02c3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_LOCOBOTJOY_3 0x9104a9b2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_LOCOBOTJOY_4 0xe7c525c5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_LOCOBOTJOY_5 0x10a21036UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_LOCOBOTJOY_6 0xdf206ba1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_LOCOBOTJOY_7 0x129ab35dUL

/** @brief Complete ROS1 interbotix_xs_msgs/LocobotJoy value; no field projects away native data. */
typedef struct roswasmc_bounded_1_interbotix_xs_msgs_LocobotJoy
{
    /** @brief Declared field base_x_cmd; canonical capacity is part of CODEC_IDENTITY. */
    double base_x_cmd;
    /** @brief Declared field base_theta_cmd; canonical capacity is part of CODEC_IDENTITY. */
    double base_theta_cmd;
    /** @brief Declared field base_reset_odom_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t base_reset_odom_cmd;
    /** @brief Declared field pan_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t pan_cmd;
    /** @brief Declared field tilt_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t tilt_cmd;
    /** @brief Declared field ee_x_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t ee_x_cmd;
    /** @brief Declared field ee_y_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t ee_y_cmd;
    /** @brief Declared field ee_z_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t ee_z_cmd;
    /** @brief Declared field ee_roll_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t ee_roll_cmd;
    /** @brief Declared field ee_pitch_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t ee_pitch_cmd;
    /** @brief Declared field waist_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t waist_cmd;
    /** @brief Declared field gripper_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t gripper_cmd;
    /** @brief Declared field pose_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t pose_cmd;
    /** @brief Declared field speed_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t speed_cmd;
    /** @brief Declared field speed_toggle_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t speed_toggle_cmd;
    /** @brief Declared field gripper_pwm_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t gripper_pwm_cmd;
} roswasmc_bounded_1_interbotix_xs_msgs_LocobotJoy;

# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_LOCOBOTJOY_MAX_WIRE_BYTES 30u
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_LOCOBOTJOY_MIN_WIRE_BYTES 30u
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_LOCOBOTJOY_CODEC_IDENTITY "UWVMROS1_6463e76903b4bd46f2cc65e2bc902d65d0d1424258f965b25e519c1e4a012613"
/** @brief Original scalar constant RESET_ODOM=1; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_LOCOBOTJOY_RESET_ODOM INT32_C(1)
/** @brief Original scalar constant PAN_CCW=2; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_LOCOBOTJOY_PAN_CCW INT32_C(2)
/** @brief Original scalar constant PAN_CW=3; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_LOCOBOTJOY_PAN_CW INT32_C(3)
/** @brief Original scalar constant TILT_UP=4; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_LOCOBOTJOY_TILT_UP INT32_C(4)
/** @brief Original scalar constant TILT_DOWN=5; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_LOCOBOTJOY_TILT_DOWN INT32_C(5)
/** @brief Original scalar constant PAN_TILT_HOME=6; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_LOCOBOTJOY_PAN_TILT_HOME INT32_C(6)
/** @brief Original scalar constant EE_X_INC=7; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_LOCOBOTJOY_EE_X_INC INT32_C(7)
/** @brief Original scalar constant EE_X_DEC=8; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_LOCOBOTJOY_EE_X_DEC INT32_C(8)
/** @brief Original scalar constant EE_Y_INC=9; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_LOCOBOTJOY_EE_Y_INC INT32_C(9)
/** @brief Original scalar constant EE_Y_DEC=10; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_LOCOBOTJOY_EE_Y_DEC INT32_C(10)
/** @brief Original scalar constant EE_Z_INC=11; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_LOCOBOTJOY_EE_Z_INC INT32_C(11)
/** @brief Original scalar constant EE_Z_DEC=12; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_LOCOBOTJOY_EE_Z_DEC INT32_C(12)
/** @brief Original scalar constant EE_ROLL_CCW=13; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_LOCOBOTJOY_EE_ROLL_CCW INT32_C(13)
/** @brief Original scalar constant EE_ROLL_CW=14; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_LOCOBOTJOY_EE_ROLL_CW INT32_C(14)
/** @brief Original scalar constant EE_PITCH_UP=15; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_LOCOBOTJOY_EE_PITCH_UP INT32_C(15)
/** @brief Original scalar constant EE_PITCH_DOWN=16; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_LOCOBOTJOY_EE_PITCH_DOWN INT32_C(16)
/** @brief Original scalar constant WAIST_CCW=17; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_LOCOBOTJOY_WAIST_CCW INT32_C(17)
/** @brief Original scalar constant WAIST_CW=18; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_LOCOBOTJOY_WAIST_CW INT32_C(18)
/** @brief Original scalar constant GRIPPER_OPEN=19; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_LOCOBOTJOY_GRIPPER_OPEN INT32_C(19)
/** @brief Original scalar constant GRIPPER_CLOSE=20; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_LOCOBOTJOY_GRIPPER_CLOSE INT32_C(20)
/** @brief Original scalar constant HOME_POSE=21; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_LOCOBOTJOY_HOME_POSE INT32_C(21)
/** @brief Original scalar constant SLEEP_POSE=22; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_LOCOBOTJOY_SLEEP_POSE INT32_C(22)
/** @brief Original scalar constant SPEED_INC=23; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_LOCOBOTJOY_SPEED_INC INT32_C(23)
/** @brief Original scalar constant SPEED_DEC=24; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_LOCOBOTJOY_SPEED_DEC INT32_C(24)
/** @brief Original scalar constant SPEED_COURSE=25; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_LOCOBOTJOY_SPEED_COURSE INT32_C(25)
/** @brief Original scalar constant SPEED_FINE=26; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_LOCOBOTJOY_SPEED_FINE INT32_C(26)
/** @brief Original scalar constant GRIPPER_PWM_INC=27; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_LOCOBOTJOY_GRIPPER_PWM_INC INT32_C(27)
/** @brief Original scalar constant GRIPPER_PWM_DEC=28; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_LOCOBOTJOY_GRIPPER_PWM_DEC INT32_C(28)

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_interbotix_xs_msgs_LocobotJoy_valid(roswasmc_bounded_1_interbotix_xs_msgs_LocobotJoy const* value)
{
    if(!value)
        return 0;
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->base_x_cmd, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->base_theta_cmd, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_interbotix_xs_msgs_LocobotJoy_wire_size(roswasmc_bounded_1_interbotix_xs_msgs_LocobotJoy const* value)
{
    size_t n = 0;
    n += 8;
    n += 8;
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
static inline void roswasmc_bounded_1_interbotix_xs_msgs_LocobotJoy_write_fields(roswasmc_bounded_1_interbotix_xs_msgs_LocobotJoy const* value,
                                                                                 unsigned char* p,
                                                                                 size_t* offset)
{
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->base_x_cmd, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->base_theta_cmd, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->base_reset_odom_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->pan_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->tilt_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->ee_x_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->ee_y_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->ee_z_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->ee_roll_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->ee_pitch_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->waist_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->gripper_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->pose_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->speed_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->speed_toggle_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->gripper_pwm_cmd, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_interbotix_xs_msgs_LocobotJoy_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_1_interbotix_xs_msgs_LocobotJoy* value)
{
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->base_x_cmd, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->base_theta_cmd, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->base_reset_odom_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->pan_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->tilt_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->ee_x_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->ee_y_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->ee_z_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->ee_roll_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->ee_pitch_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->waist_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->gripper_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->pose_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->speed_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->speed_toggle_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->gripper_pwm_cmd, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_1_interbotix_xs_msgs_LocobotJoy_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_interbotix_xs_msgs_LocobotJoy_encode(roswasmc_bounded_1_interbotix_xs_msgs_LocobotJoy const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_interbotix_xs_msgs_LocobotJoy_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_interbotix_xs_msgs_LocobotJoy_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_interbotix_xs_msgs_LocobotJoy_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_interbotix_xs_msgs_LocobotJoy_decode(void const* input, size_t length, roswasmc_bounded_1_interbotix_xs_msgs_LocobotJoy* value)
{
    roswasmc_bounded_1_interbotix_xs_msgs_LocobotJoy next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 30u || length > 30u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_interbotix_xs_msgs_LocobotJoy_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_MOTORGAINSREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_MOTORGAINSREQUEST_0 != 0xeafa2d42UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_MOTORGAINSREQUEST_1 != 0x9b002611UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_MOTORGAINSREQUEST_2 != 0x6cdaec8eUL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_MOTORGAINSREQUEST_3 != 0x97213c2bUL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_MOTORGAINSREQUEST_4 != 0x367cfc97UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_MOTORGAINSREQUEST_5 != 0x6a8f0373UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_MOTORGAINSREQUEST_6 != 0x7291749dUL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_MOTORGAINSREQUEST_7 != 0xf1669ba3UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_MOTORGAINSREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_MOTORGAINSREQUEST_0 0xeafa2d42UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_MOTORGAINSREQUEST_1 0x9b002611UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_MOTORGAINSREQUEST_2 0x6cdaec8eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_MOTORGAINSREQUEST_3 0x97213c2bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_MOTORGAINSREQUEST_4 0x367cfc97UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_MOTORGAINSREQUEST_5 0x6a8f0373UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_MOTORGAINSREQUEST_6 0x7291749dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_MOTORGAINSREQUEST_7 0xf1669ba3UL

/** @brief UTF-8 byte storage for interbotix_xs_msgs/MotorGainsRequest.cmd_type; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsRequest_cmd_type_text;

/** @brief UTF-8 byte storage for interbotix_xs_msgs/MotorGainsRequest.name; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsRequest_name_text;

/** @brief Complete ROS1 interbotix_xs_msgs/MotorGainsRequest value; no field projects away native data. */
typedef struct roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsRequest
{
    /** @brief Declared field cmd_type; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsRequest_cmd_type_text cmd_type;
    /** @brief Declared field name; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsRequest_name_text name;
    /** @brief Declared field kp_pos; canonical capacity is part of CODEC_IDENTITY. */
    int32_t kp_pos;
    /** @brief Declared field ki_pos; canonical capacity is part of CODEC_IDENTITY. */
    int32_t ki_pos;
    /** @brief Declared field kd_pos; canonical capacity is part of CODEC_IDENTITY. */
    int32_t kd_pos;
    /** @brief Declared field k1; canonical capacity is part of CODEC_IDENTITY. */
    int32_t k1;
    /** @brief Declared field k2; canonical capacity is part of CODEC_IDENTITY. */
    int32_t k2;
    /** @brief Declared field kp_vel; canonical capacity is part of CODEC_IDENTITY. */
    int32_t kp_vel;
    /** @brief Declared field ki_vel; canonical capacity is part of CODEC_IDENTITY. */
    int32_t ki_vel;
} roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsRequest;

# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_MOTORGAINSREQUEST_MAX_WIRE_BYTES 292u
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_MOTORGAINSREQUEST_MIN_WIRE_BYTES 36u
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_MOTORGAINSREQUEST_CODEC_IDENTITY "UWVMROS1_76fb61f914b65b53579fdbf64eb545a997f38c9b51111e6ae462c95169596009"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsRequest_valid(roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsRequest const* value)
{
    if(!value)
        return 0;
    if(value->cmd_type.size > 128u || !uwvm_bounded_utf8(value->cmd_type.data, value->cmd_type.size))
        return 0;
    if(value->name.size > 128u || !uwvm_bounded_utf8(value->name.data, value->name.size))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsRequest_wire_size(roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsRequest const* value)
{
    size_t n = 0;
    n += 4 + value->cmd_type.size;
    n += 4 + value->name.size;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsRequest_write_fields(roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsRequest const* value,
                                                                                        unsigned char* p,
                                                                                        size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->cmd_type.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->cmd_type.data, value->cmd_type.size);
    *offset += value->cmd_type.size;
    uwvm_bounded_put(p + *offset, value->name.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->name.data, value->name.size);
    *offset += value->name.size;
    uwvm_bounded_put(p + *offset, (uint64_t)value->kp_pos, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->ki_pos, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->kd_pos, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->k1, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->k2, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->kp_vel, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->ki_vel, 4);
    *offset += 4;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsRequest_read_fields(unsigned char const* p,
                                                                                      size_t n,
                                                                                      size_t* offset,
                                                                                      roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsRequest* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    value->cmd_type.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->cmd_type.size > 128u || value->cmd_type.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->cmd_type.data, p + *offset, value->cmd_type.size);
    *offset += value->cmd_type.size;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->name.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->name.size > 128u || value->name.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->name.data, p + *offset, value->name.size);
    *offset += value->name.size;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->kp_pos, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->ki_pos, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->kd_pos, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->k1, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->k2, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->kp_vel, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->ki_vel, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsRequest_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsRequest_encode(roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsRequest const* value,
                                                                                      void* output,
                                                                                      size_t capacity,
                                                                                      size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsRequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsRequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsRequest_decode(void const* input,
                                                                                      size_t length,
                                                                                      roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsRequest* value)
{
    roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsRequest next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 36u || length > 292u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsRequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_MOTORGAINSRESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_MOTORGAINSRESPONSE_0 != 0xbda8fb58UL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_MOTORGAINSRESPONSE_1 != 0x3a9c3c16UL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_MOTORGAINSRESPONSE_2 != 0x45470563UL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_MOTORGAINSRESPONSE_3 != 0xb5551297UL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_MOTORGAINSRESPONSE_4 != 0x1516a775UL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_MOTORGAINSRESPONSE_5 != 0x422963b5UL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_MOTORGAINSRESPONSE_6 != 0x68cb5b08UL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_MOTORGAINSRESPONSE_7 != 0x95cea104UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_MOTORGAINSRESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_MOTORGAINSRESPONSE_0 0xbda8fb58UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_MOTORGAINSRESPONSE_1 0x3a9c3c16UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_MOTORGAINSRESPONSE_2 0x45470563UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_MOTORGAINSRESPONSE_3 0xb5551297UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_MOTORGAINSRESPONSE_4 0x1516a775UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_MOTORGAINSRESPONSE_5 0x422963b5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_MOTORGAINSRESPONSE_6 0x68cb5b08UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_MOTORGAINSRESPONSE_7 0x95cea104UL

/** @brief Complete ROS1 interbotix_xs_msgs/MotorGainsResponse value; no field projects away native data. */
typedef struct roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsResponse
{
    /** @brief Local C layout placeholder; empty native component has exactly zero canonical bytes. */
    unsigned char local_empty_placeholder;
} roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsResponse;

# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_MOTORGAINSRESPONSE_MAX_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_MOTORGAINSRESPONSE_MIN_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_MOTORGAINSRESPONSE_CODEC_IDENTITY "UWVMROS1_813a545cdc27f32aad5d4716a649832feebeeaddae69abdf8f64d552f757fd89"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsResponse_valid(roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsResponse const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsResponse_wire_size(roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsResponse const* value)
{
    size_t n = 0;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsResponse_write_fields(roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsResponse const* value,
                                                                                         unsigned char* p,
                                                                                         size_t* offset)
{
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsResponse_read_fields(unsigned char const* p,
                                                                                       size_t n,
                                                                                       size_t* offset,
                                                                                       roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsResponse* value)
{
    return roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsResponse_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsResponse_encode(roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsResponse const* value,
                                                                                       void* output,
                                                                                       size_t capacity,
                                                                                       size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsResponse_decode(void const* input,
                                                                                       size_t length,
                                                                                       roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsResponse* value)
{
    roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsResponse next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 0u || length > 0u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_OPERATINGMODESREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_OPERATINGMODESREQUEST_0 != 0x5ef414dfUL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_OPERATINGMODESREQUEST_1 != 0xa180d628UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_OPERATINGMODESREQUEST_2 != 0x66c84b4bUL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_OPERATINGMODESREQUEST_3 != 0xb687ee33UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_OPERATINGMODESREQUEST_4 != 0x5f9f72bdUL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_OPERATINGMODESREQUEST_5 != 0x95f90ddcUL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_OPERATINGMODESREQUEST_6 != 0x46990c67UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_OPERATINGMODESREQUEST_7 != 0x2c9012c6UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_OPERATINGMODESREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_OPERATINGMODESREQUEST_0 0x5ef414dfUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_OPERATINGMODESREQUEST_1 0xa180d628UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_OPERATINGMODESREQUEST_2 0x66c84b4bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_OPERATINGMODESREQUEST_3 0xb687ee33UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_OPERATINGMODESREQUEST_4 0x5f9f72bdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_OPERATINGMODESREQUEST_5 0x95f90ddcUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_OPERATINGMODESREQUEST_6 0x46990c67UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_OPERATINGMODESREQUEST_7 0x2c9012c6UL

/** @brief UTF-8 byte storage for interbotix_xs_msgs/OperatingModesRequest.cmd_type; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesRequest_cmd_type_text;

/** @brief UTF-8 byte storage for interbotix_xs_msgs/OperatingModesRequest.name; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesRequest_name_text;

/** @brief UTF-8 byte storage for interbotix_xs_msgs/OperatingModesRequest.mode; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesRequest_mode_text;

/** @brief UTF-8 byte storage for interbotix_xs_msgs/OperatingModesRequest.profile_type; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesRequest_profile_type_text;

/** @brief Complete ROS1 interbotix_xs_msgs/OperatingModesRequest value; no field projects away native data. */
typedef struct roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesRequest
{
    /** @brief Declared field cmd_type; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesRequest_cmd_type_text cmd_type;
    /** @brief Declared field name; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesRequest_name_text name;
    /** @brief Declared field mode; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesRequest_mode_text mode;
    /** @brief Declared field profile_type; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesRequest_profile_type_text profile_type;
    /** @brief Declared field profile_velocity; canonical capacity is part of CODEC_IDENTITY. */
    int32_t profile_velocity;
    /** @brief Declared field profile_acceleration; canonical capacity is part of CODEC_IDENTITY. */
    int32_t profile_acceleration;
} roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesRequest;

# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_OPERATINGMODESREQUEST_MAX_WIRE_BYTES 536u
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_OPERATINGMODESREQUEST_MIN_WIRE_BYTES 24u
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_OPERATINGMODESREQUEST_CODEC_IDENTITY "UWVMROS1_cc0defc5d8cb4c230ea3b0f3bc50a6d271bc395621792897d1e80aae62adb7b3"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesRequest_valid(roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesRequest const* value)
{
    if(!value)
        return 0;
    if(value->cmd_type.size > 128u || !uwvm_bounded_utf8(value->cmd_type.data, value->cmd_type.size))
        return 0;
    if(value->name.size > 128u || !uwvm_bounded_utf8(value->name.data, value->name.size))
        return 0;
    if(value->mode.size > 128u || !uwvm_bounded_utf8(value->mode.data, value->mode.size))
        return 0;
    if(value->profile_type.size > 128u || !uwvm_bounded_utf8(value->profile_type.data, value->profile_type.size))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesRequest_wire_size(roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesRequest const* value)
{
    size_t n = 0;
    n += 4 + value->cmd_type.size;
    n += 4 + value->name.size;
    n += 4 + value->mode.size;
    n += 4 + value->profile_type.size;
    n += 4;
    n += 4;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesRequest_write_fields(roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesRequest const* value,
                                                                             unsigned char* p,
                                                                             size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->cmd_type.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->cmd_type.data, value->cmd_type.size);
    *offset += value->cmd_type.size;
    uwvm_bounded_put(p + *offset, value->name.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->name.data, value->name.size);
    *offset += value->name.size;
    uwvm_bounded_put(p + *offset, value->mode.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->mode.data, value->mode.size);
    *offset += value->mode.size;
    uwvm_bounded_put(p + *offset, value->profile_type.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->profile_type.data, value->profile_type.size);
    *offset += value->profile_type.size;
    uwvm_bounded_put(p + *offset, (uint64_t)value->profile_velocity, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->profile_acceleration, 4);
    *offset += 4;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesRequest_read_fields(unsigned char const* p,
                                                                                          size_t n,
                                                                                          size_t* offset,
                                                                                          roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesRequest* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    value->cmd_type.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->cmd_type.size > 128u || value->cmd_type.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->cmd_type.data, p + *offset, value->cmd_type.size);
    *offset += value->cmd_type.size;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->name.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->name.size > 128u || value->name.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->name.data, p + *offset, value->name.size);
    *offset += value->name.size;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->mode.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->mode.size > 128u || value->mode.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->mode.data, p + *offset, value->mode.size);
    *offset += value->mode.size;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->profile_type.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->profile_type.size > 128u || value->profile_type.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->profile_type.data, p + *offset, value->profile_type.size);
    *offset += value->profile_type.size;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->profile_velocity, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->profile_acceleration, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesRequest_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesRequest_encode(roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesRequest const* value,
                                                                       void* output,
                                                                       size_t capacity,
                                                                       size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesRequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesRequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesRequest_decode(void const* input,
                                                                                          size_t length,
                                                                                          roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesRequest* value)
{
    roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesRequest next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 24u || length > 536u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesRequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_OPERATINGMODESRESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_OPERATINGMODESRESPONSE_0 != 0x08469b95UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_OPERATINGMODESRESPONSE_1 != 0x67b93b45UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_OPERATINGMODESRESPONSE_2 != 0x634625feUL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_OPERATINGMODESRESPONSE_3 != 0xddf35a7bUL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_OPERATINGMODESRESPONSE_4 != 0xcee63791UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_OPERATINGMODESRESPONSE_5 != 0x65cd3b22UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_OPERATINGMODESRESPONSE_6 != 0x6b327105UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_OPERATINGMODESRESPONSE_7 != 0x23d174f0UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_OPERATINGMODESRESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_OPERATINGMODESRESPONSE_0 0x08469b95UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_OPERATINGMODESRESPONSE_1 0x67b93b45UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_OPERATINGMODESRESPONSE_2 0x634625feUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_OPERATINGMODESRESPONSE_3 0xddf35a7bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_OPERATINGMODESRESPONSE_4 0xcee63791UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_OPERATINGMODESRESPONSE_5 0x65cd3b22UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_OPERATINGMODESRESPONSE_6 0x6b327105UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_OPERATINGMODESRESPONSE_7 0x23d174f0UL

/** @brief Complete ROS1 interbotix_xs_msgs/OperatingModesResponse value; no field projects away native data. */
typedef struct roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesResponse
{
    /** @brief Local C layout placeholder; empty native component has exactly zero canonical bytes. */
    unsigned char local_empty_placeholder;
} roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesResponse;

# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_OPERATINGMODESRESPONSE_MAX_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_OPERATINGMODESRESPONSE_MIN_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_OPERATINGMODESRESPONSE_CODEC_IDENTITY "UWVMROS1_5249025c535de294ab7e25ed0089749a891cd55451811dbac7aeef7daa75347e"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesResponse_valid(roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesResponse const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesResponse_wire_size(roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesResponse const* value)
{
    size_t n = 0;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesResponse_write_fields(roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesResponse const* value,
                                                                              unsigned char* p,
                                                                              size_t* offset)
{
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesResponse_read_fields(unsigned char const* p,
                                                                                           size_t n,
                                                                                           size_t* offset,
                                                                                           roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesResponse* value)
{
    return roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesResponse_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesResponse_encode(roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesResponse const* value,
                                                                        void* output,
                                                                        size_t capacity,
                                                                        size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesResponse_decode(void const* input,
                                                                                           size_t length,
                                                                                           roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesResponse* value)
{
    roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesResponse next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 0u || length > 0u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REBOOTREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REBOOTREQUEST_0 != 0x740b669dUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REBOOTREQUEST_1 != 0xaf19f235UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REBOOTREQUEST_2 != 0xa29bebd3UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REBOOTREQUEST_3 != 0x6b4bd2f4UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REBOOTREQUEST_4 != 0xfd4b19bcUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REBOOTREQUEST_5 != 0x5fabf043UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REBOOTREQUEST_6 != 0x633bbc4bUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REBOOTREQUEST_7 != 0x1a91dd8dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REBOOTREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REBOOTREQUEST_0 0x740b669dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REBOOTREQUEST_1 0xaf19f235UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REBOOTREQUEST_2 0xa29bebd3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REBOOTREQUEST_3 0x6b4bd2f4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REBOOTREQUEST_4 0xfd4b19bcUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REBOOTREQUEST_5 0x5fabf043UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REBOOTREQUEST_6 0x633bbc4bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REBOOTREQUEST_7 0x1a91dd8dUL

/** @brief UTF-8 byte storage for interbotix_xs_msgs/RebootRequest.cmd_type; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_interbotix_xs_msgs_RebootRequest_cmd_type_text;

/** @brief UTF-8 byte storage for interbotix_xs_msgs/RebootRequest.name; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_interbotix_xs_msgs_RebootRequest_name_text;

/** @brief Complete ROS1 interbotix_xs_msgs/RebootRequest value; no field projects away native data. */
typedef struct roswasmc_bounded_1_interbotix_xs_msgs_RebootRequest
{
    /** @brief Declared field cmd_type; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_interbotix_xs_msgs_RebootRequest_cmd_type_text cmd_type;
    /** @brief Declared field name; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_interbotix_xs_msgs_RebootRequest_name_text name;
    /** @brief Declared field enable; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t enable;
    /** @brief Declared field smart_reboot; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t smart_reboot;
} roswasmc_bounded_1_interbotix_xs_msgs_RebootRequest;

# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REBOOTREQUEST_MAX_WIRE_BYTES 266u
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REBOOTREQUEST_MIN_WIRE_BYTES 10u
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REBOOTREQUEST_CODEC_IDENTITY "UWVMROS1_5098fab3302fc6de5c2e24e82ca6f57ee4f358d9862ceb3a20c09435aa563f0a"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_interbotix_xs_msgs_RebootRequest_valid(roswasmc_bounded_1_interbotix_xs_msgs_RebootRequest const* value)
{
    if(!value)
        return 0;
    if(value->cmd_type.size > 128u || !uwvm_bounded_utf8(value->cmd_type.data, value->cmd_type.size))
        return 0;
    if(value->name.size > 128u || !uwvm_bounded_utf8(value->name.data, value->name.size))
        return 0;
    if(value->enable > 1)
        return 0;
    if(value->smart_reboot > 1)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_interbotix_xs_msgs_RebootRequest_wire_size(roswasmc_bounded_1_interbotix_xs_msgs_RebootRequest const* value)
{
    size_t n = 0;
    n += 4 + value->cmd_type.size;
    n += 4 + value->name.size;
    n += 1;
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_1_interbotix_xs_msgs_RebootRequest_write_fields(roswasmc_bounded_1_interbotix_xs_msgs_RebootRequest const* value,
                                                                                    unsigned char* p,
                                                                                    size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->cmd_type.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->cmd_type.data, value->cmd_type.size);
    *offset += value->cmd_type.size;
    uwvm_bounded_put(p + *offset, value->name.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->name.data, value->name.size);
    *offset += value->name.size;
    uwvm_bounded_put(p + *offset, (uint64_t)value->enable, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->smart_reboot, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_interbotix_xs_msgs_RebootRequest_read_fields(unsigned char const* p,
                                                                                  size_t n,
                                                                                  size_t* offset,
                                                                                  roswasmc_bounded_1_interbotix_xs_msgs_RebootRequest* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    value->cmd_type.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->cmd_type.size > 128u || value->cmd_type.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->cmd_type.data, p + *offset, value->cmd_type.size);
    *offset += value->cmd_type.size;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->name.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->name.size > 128u || value->name.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->name.data, p + *offset, value->name.size);
    *offset += value->name.size;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->enable, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->smart_reboot, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_1_interbotix_xs_msgs_RebootRequest_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_interbotix_xs_msgs_RebootRequest_encode(roswasmc_bounded_1_interbotix_xs_msgs_RebootRequest const* value,
                                                                                  void* output,
                                                                                  size_t capacity,
                                                                                  size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_interbotix_xs_msgs_RebootRequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_interbotix_xs_msgs_RebootRequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_interbotix_xs_msgs_RebootRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_interbotix_xs_msgs_RebootRequest_decode(void const* input, size_t length, roswasmc_bounded_1_interbotix_xs_msgs_RebootRequest* value)
{
    roswasmc_bounded_1_interbotix_xs_msgs_RebootRequest next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 10u || length > 266u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_interbotix_xs_msgs_RebootRequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REBOOTRESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REBOOTRESPONSE_0 != 0xac4895f4UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REBOOTRESPONSE_1 != 0x158de12bUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REBOOTRESPONSE_2 != 0x2825d2caUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REBOOTRESPONSE_3 != 0xfc5ac350UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REBOOTRESPONSE_4 != 0x8ddd502aUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REBOOTRESPONSE_5 != 0x2701d1ddUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REBOOTRESPONSE_6 != 0x7689296bUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REBOOTRESPONSE_7 != 0x94e56debUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REBOOTRESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REBOOTRESPONSE_0 0xac4895f4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REBOOTRESPONSE_1 0x158de12bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REBOOTRESPONSE_2 0x2825d2caUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REBOOTRESPONSE_3 0xfc5ac350UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REBOOTRESPONSE_4 0x8ddd502aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REBOOTRESPONSE_5 0x2701d1ddUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REBOOTRESPONSE_6 0x7689296bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REBOOTRESPONSE_7 0x94e56debUL

/** @brief Complete ROS1 interbotix_xs_msgs/RebootResponse value; no field projects away native data. */
typedef struct roswasmc_bounded_1_interbotix_xs_msgs_RebootResponse
{
    /** @brief Local C layout placeholder; empty native component has exactly zero canonical bytes. */
    unsigned char local_empty_placeholder;
} roswasmc_bounded_1_interbotix_xs_msgs_RebootResponse;

# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REBOOTRESPONSE_MAX_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REBOOTRESPONSE_MIN_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REBOOTRESPONSE_CODEC_IDENTITY "UWVMROS1_06aedc58f7bb6f26d5e54cd905f3d223ba297806e914a84a8fff02fe307a97a4"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_interbotix_xs_msgs_RebootResponse_valid(roswasmc_bounded_1_interbotix_xs_msgs_RebootResponse const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_interbotix_xs_msgs_RebootResponse_wire_size(roswasmc_bounded_1_interbotix_xs_msgs_RebootResponse const* value)
{
    size_t n = 0;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_1_interbotix_xs_msgs_RebootResponse_write_fields(roswasmc_bounded_1_interbotix_xs_msgs_RebootResponse const* value,
                                                                                     unsigned char* p,
                                                                                     size_t* offset)
{
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_interbotix_xs_msgs_RebootResponse_read_fields(unsigned char const* p,
                                                                                   size_t n,
                                                                                   size_t* offset,
                                                                                   roswasmc_bounded_1_interbotix_xs_msgs_RebootResponse* value)
{
    return roswasmc_bounded_1_interbotix_xs_msgs_RebootResponse_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_interbotix_xs_msgs_RebootResponse_encode(roswasmc_bounded_1_interbotix_xs_msgs_RebootResponse const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_interbotix_xs_msgs_RebootResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_interbotix_xs_msgs_RebootResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_interbotix_xs_msgs_RebootResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_interbotix_xs_msgs_RebootResponse_decode(void const* input, size_t length, roswasmc_bounded_1_interbotix_xs_msgs_RebootResponse* value)
{
    roswasmc_bounded_1_interbotix_xs_msgs_RebootResponse next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 0u || length > 0u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_interbotix_xs_msgs_RebootResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REGISTERVALUESREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REGISTERVALUESREQUEST_0 != 0x32933465UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REGISTERVALUESREQUEST_1 != 0x0aff3f15UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REGISTERVALUESREQUEST_2 != 0xa138d0e3UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REGISTERVALUESREQUEST_3 != 0xd709fda8UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REGISTERVALUESREQUEST_4 != 0xd3d2ec25UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REGISTERVALUESREQUEST_5 != 0x1c098bf3UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REGISTERVALUESREQUEST_6 != 0x54ac1f98UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REGISTERVALUESREQUEST_7 != 0xf72a2c27UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REGISTERVALUESREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REGISTERVALUESREQUEST_0 0x32933465UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REGISTERVALUESREQUEST_1 0x0aff3f15UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REGISTERVALUESREQUEST_2 0xa138d0e3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REGISTERVALUESREQUEST_3 0xd709fda8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REGISTERVALUESREQUEST_4 0xd3d2ec25UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REGISTERVALUESREQUEST_5 0x1c098bf3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REGISTERVALUESREQUEST_6 0x54ac1f98UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REGISTERVALUESREQUEST_7 0xf72a2c27UL

/** @brief UTF-8 byte storage for interbotix_xs_msgs/RegisterValuesRequest.cmd_type; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesRequest_cmd_type_text;

/** @brief UTF-8 byte storage for interbotix_xs_msgs/RegisterValuesRequest.name; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesRequest_name_text;

/** @brief UTF-8 byte storage for interbotix_xs_msgs/RegisterValuesRequest.reg; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesRequest_reg_text;

/** @brief Complete ROS1 interbotix_xs_msgs/RegisterValuesRequest value; no field projects away native data. */
typedef struct roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesRequest
{
    /** @brief Declared field cmd_type; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesRequest_cmd_type_text cmd_type;
    /** @brief Declared field name; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesRequest_name_text name;
    /** @brief Declared field reg; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesRequest_reg_text reg;
    /** @brief Declared field value; canonical capacity is part of CODEC_IDENTITY. */
    int32_t value;
} roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesRequest;

# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REGISTERVALUESREQUEST_MAX_WIRE_BYTES 400u
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REGISTERVALUESREQUEST_MIN_WIRE_BYTES 16u
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REGISTERVALUESREQUEST_CODEC_IDENTITY "UWVMROS1_e36f16bc2726f62b78852f690f13540ff9ba93c9ee4363624c007e7819312a4a"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesRequest_valid(roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesRequest const* value)
{
    if(!value)
        return 0;
    if(value->cmd_type.size > 128u || !uwvm_bounded_utf8(value->cmd_type.data, value->cmd_type.size))
        return 0;
    if(value->name.size > 128u || !uwvm_bounded_utf8(value->name.data, value->name.size))
        return 0;
    if(value->reg.size > 128u || !uwvm_bounded_utf8(value->reg.data, value->reg.size))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesRequest_wire_size(roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesRequest const* value)
{
    size_t n = 0;
    n += 4 + value->cmd_type.size;
    n += 4 + value->name.size;
    n += 4 + value->reg.size;
    n += 4;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesRequest_write_fields(roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesRequest const* value,
                                                                             unsigned char* p,
                                                                             size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->cmd_type.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->cmd_type.data, value->cmd_type.size);
    *offset += value->cmd_type.size;
    uwvm_bounded_put(p + *offset, value->name.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->name.data, value->name.size);
    *offset += value->name.size;
    uwvm_bounded_put(p + *offset, value->reg.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->reg.data, value->reg.size);
    *offset += value->reg.size;
    uwvm_bounded_put(p + *offset, (uint64_t)value->value, 4);
    *offset += 4;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesRequest_read_fields(unsigned char const* p,
                                                                                          size_t n,
                                                                                          size_t* offset,
                                                                                          roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesRequest* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    value->cmd_type.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->cmd_type.size > 128u || value->cmd_type.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->cmd_type.data, p + *offset, value->cmd_type.size);
    *offset += value->cmd_type.size;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->name.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->name.size > 128u || value->name.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->name.data, p + *offset, value->name.size);
    *offset += value->name.size;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->reg.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->reg.size > 128u || value->reg.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->reg.data, p + *offset, value->reg.size);
    *offset += value->reg.size;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->value, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesRequest_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesRequest_encode(roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesRequest const* value,
                                                                       void* output,
                                                                       size_t capacity,
                                                                       size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesRequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesRequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesRequest_decode(void const* input,
                                                                                          size_t length,
                                                                                          roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesRequest* value)
{
    roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesRequest next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 16u || length > 400u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesRequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REGISTERVALUESRESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REGISTERVALUESRESPONSE_0 != 0xc6e4e297UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REGISTERVALUESRESPONSE_1 != 0xcbc52197UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REGISTERVALUESRESPONSE_2 != 0x2844370fUL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REGISTERVALUESRESPONSE_3 != 0xcae5e33dUL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REGISTERVALUESRESPONSE_4 != 0x447a2ffaUL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REGISTERVALUESRESPONSE_5 != 0x0fdf686cUL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REGISTERVALUESRESPONSE_6 != 0xce139b99UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REGISTERVALUESRESPONSE_7 != 0xd169e8a8UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REGISTERVALUESRESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REGISTERVALUESRESPONSE_0 0xc6e4e297UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REGISTERVALUESRESPONSE_1 0xcbc52197UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REGISTERVALUESRESPONSE_2 0x2844370fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REGISTERVALUESRESPONSE_3 0xcae5e33dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REGISTERVALUESRESPONSE_4 0x447a2ffaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REGISTERVALUESRESPONSE_5 0x0fdf686cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REGISTERVALUESRESPONSE_6 0xce139b99UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REGISTERVALUESRESPONSE_7 0xd169e8a8UL

/** @brief At most16 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    int32_t data[16];
} roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesResponse_values_sequence;

/** @brief Complete ROS1 interbotix_xs_msgs/RegisterValuesResponse value; no field projects away native data. */
typedef struct roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesResponse
{
    /** @brief Declared field values; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesResponse_values_sequence values;
} roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesResponse;

# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REGISTERVALUESRESPONSE_MAX_WIRE_BYTES 68u
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REGISTERVALUESRESPONSE_MIN_WIRE_BYTES 4u
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REGISTERVALUESRESPONSE_CODEC_IDENTITY "UWVMROS1_9c7d3492c5d51a8d05f4fa0c4218e00194dabfb602271ec8ffc3075af9d2e659"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesResponse_valid(roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesResponse const* value)
{
    if(!value)
        return 0;
    if(value->values.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->values.size; ++i)
        {
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesResponse_wire_size(roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesResponse const* value)
{
    size_t n = 0;
    n += 4;
    if(value->values.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->values.size; ++i)
        {
            n += 4;
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesResponse_write_fields(roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesResponse const* value,
                                                                              unsigned char* p,
                                                                              size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->values.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->values.size; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->values.data[i], 4);
            *offset += 4;
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesResponse_read_fields(unsigned char const* p,
                                                                                           size_t n,
                                                                                           size_t* offset,
                                                                                           roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesResponse* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    value->values.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->values.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->values.size; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->values.data[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    return roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesResponse_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesResponse_encode(roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesResponse const* value,
                                                                        void* output,
                                                                        size_t capacity,
                                                                        size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesResponse_decode(void const* input,
                                                                                           size_t length,
                                                                                           roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesResponse* value)
{
    roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesResponse next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 4u || length > 68u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ROBOTINFOREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ROBOTINFOREQUEST_0 != 0x22a3e752UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ROBOTINFOREQUEST_1 != 0x3a8800c8UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ROBOTINFOREQUEST_2 != 0x3d91a865UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ROBOTINFOREQUEST_3 != 0x74f3faafUL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ROBOTINFOREQUEST_4 != 0x35a3e334UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ROBOTINFOREQUEST_5 != 0xfdf79f59UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ROBOTINFOREQUEST_6 != 0x5386b507UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ROBOTINFOREQUEST_7 != 0x3d757b0eUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ROBOTINFOREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ROBOTINFOREQUEST_0 0x22a3e752UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ROBOTINFOREQUEST_1 0x3a8800c8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ROBOTINFOREQUEST_2 0x3d91a865UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ROBOTINFOREQUEST_3 0x74f3faafUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ROBOTINFOREQUEST_4 0x35a3e334UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ROBOTINFOREQUEST_5 0xfdf79f59UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ROBOTINFOREQUEST_6 0x5386b507UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ROBOTINFOREQUEST_7 0x3d757b0eUL

/** @brief UTF-8 byte storage for interbotix_xs_msgs/RobotInfoRequest.cmd_type; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoRequest_cmd_type_text;

/** @brief UTF-8 byte storage for interbotix_xs_msgs/RobotInfoRequest.name; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoRequest_name_text;

/** @brief Complete ROS1 interbotix_xs_msgs/RobotInfoRequest value; no field projects away native data. */
typedef struct roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoRequest
{
    /** @brief Declared field cmd_type; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoRequest_cmd_type_text cmd_type;
    /** @brief Declared field name; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoRequest_name_text name;
} roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoRequest;

# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ROBOTINFOREQUEST_MAX_WIRE_BYTES 264u
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ROBOTINFOREQUEST_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ROBOTINFOREQUEST_CODEC_IDENTITY "UWVMROS1_ead86305c002d1012c8779f9e7296776e27a3b00b4e3193acfdac16f79081176"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoRequest_valid(roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoRequest const* value)
{
    if(!value)
        return 0;
    if(value->cmd_type.size > 128u || !uwvm_bounded_utf8(value->cmd_type.data, value->cmd_type.size))
        return 0;
    if(value->name.size > 128u || !uwvm_bounded_utf8(value->name.data, value->name.size))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoRequest_wire_size(roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoRequest const* value)
{
    size_t n = 0;
    n += 4 + value->cmd_type.size;
    n += 4 + value->name.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoRequest_write_fields(roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoRequest const* value,
                                                                                       unsigned char* p,
                                                                                       size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->cmd_type.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->cmd_type.data, value->cmd_type.size);
    *offset += value->cmd_type.size;
    uwvm_bounded_put(p + *offset, value->name.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->name.data, value->name.size);
    *offset += value->name.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoRequest_read_fields(unsigned char const* p,
                                                                                     size_t n,
                                                                                     size_t* offset,
                                                                                     roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoRequest* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    value->cmd_type.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->cmd_type.size > 128u || value->cmd_type.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->cmd_type.data, p + *offset, value->cmd_type.size);
    *offset += value->cmd_type.size;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->name.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->name.size > 128u || value->name.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->name.data, p + *offset, value->name.size);
    *offset += value->name.size;
    return roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoRequest_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoRequest_encode(roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoRequest const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoRequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoRequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoRequest_decode(void const* input,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoRequest* value)
{
    roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoRequest next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 264u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoRequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ROBOTINFORESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ROBOTINFORESPONSE_0 != 0xb26d2572UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ROBOTINFORESPONSE_1 != 0x794afb29UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ROBOTINFORESPONSE_2 != 0x7bf9b19dUL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ROBOTINFORESPONSE_3 != 0xb0be7a23UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ROBOTINFORESPONSE_4 != 0xed59376aUL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ROBOTINFORESPONSE_5 != 0x8ad1fa4bUL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ROBOTINFORESPONSE_6 != 0xc0b1f4d6UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ROBOTINFORESPONSE_7 != 0x993d3e4fUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ROBOTINFORESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ROBOTINFORESPONSE_0 0xb26d2572UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ROBOTINFORESPONSE_1 0x794afb29UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ROBOTINFORESPONSE_2 0x7bf9b19dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ROBOTINFORESPONSE_3 0xb0be7a23UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ROBOTINFORESPONSE_4 0xed59376aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ROBOTINFORESPONSE_5 0x8ad1fa4bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ROBOTINFORESPONSE_6 0xc0b1f4d6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ROBOTINFORESPONSE_7 0x993d3e4fUL

/** @brief UTF-8 byte storage for interbotix_xs_msgs/RobotInfoResponse.mode; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoResponse_mode_text;

/** @brief UTF-8 byte storage for interbotix_xs_msgs/RobotInfoResponse.profile_type; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoResponse_profile_type_text;

/** @brief UTF-8 byte storage for interbotix_xs_msgs/RobotInfoResponse.joint_names; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoResponse_joint_names_text;

/** @brief At most64 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoResponse_joint_names_text data[64];
} roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoResponse_joint_names_sequence;

/** @brief At most64 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    int16_t data[64];
} roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoResponse_joint_ids_sequence;

/** @brief At most64 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    float data[64];
} roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoResponse_joint_lower_limits_sequence;

/** @brief At most64 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    float data[64];
} roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoResponse_joint_upper_limits_sequence;

/** @brief At most64 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    float data[64];
} roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoResponse_joint_velocity_limits_sequence;

/** @brief At most64 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    float data[64];
} roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoResponse_joint_sleep_positions_sequence;

/** @brief At most64 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    int16_t data[64];
} roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoResponse_joint_state_indices_sequence;

/** @brief UTF-8 byte storage for interbotix_xs_msgs/RobotInfoResponse.name; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoResponse_name_text;

/** @brief At most64 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoResponse_name_text data[64];
} roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoResponse_name_sequence;

/** @brief Complete ROS1 interbotix_xs_msgs/RobotInfoResponse value; no field projects away native data. */
typedef struct roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoResponse
{
    /** @brief Declared field mode; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoResponse_mode_text mode;
    /** @brief Declared field profile_type; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoResponse_profile_type_text profile_type;
    /** @brief Declared field joint_names; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoResponse_joint_names_sequence joint_names;
    /** @brief Declared field joint_ids; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoResponse_joint_ids_sequence joint_ids;
    /** @brief Declared field joint_lower_limits; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoResponse_joint_lower_limits_sequence joint_lower_limits;
    /** @brief Declared field joint_upper_limits; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoResponse_joint_upper_limits_sequence joint_upper_limits;
    /** @brief Declared field joint_velocity_limits; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoResponse_joint_velocity_limits_sequence joint_velocity_limits;
    /** @brief Declared field joint_sleep_positions; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoResponse_joint_sleep_positions_sequence joint_sleep_positions;
    /** @brief Declared field joint_state_indices; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoResponse_joint_state_indices_sequence joint_state_indices;
    /** @brief Declared field num_joints; canonical capacity is part of CODEC_IDENTITY. */
    int16_t num_joints;
    /** @brief Declared field name; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoResponse_name_sequence name;
} roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoResponse;

# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ROBOTINFORESPONSE_MAX_WIRE_BYTES 18474u
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ROBOTINFORESPONSE_MIN_WIRE_BYTES 42u
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ROBOTINFORESPONSE_CODEC_IDENTITY "UWVMROS1_0dfb738c428366ca7450d932212e3cc69d86042432b2ddd7cd58da3c0b6b6d5d"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoResponse_valid(roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoResponse const* value)
{
    if(!value)
        return 0;
    if(value->mode.size > 128u || !uwvm_bounded_utf8(value->mode.data, value->mode.size))
        return 0;
    if(value->profile_type.size > 128u || !uwvm_bounded_utf8(value->profile_type.data, value->profile_type.size))
        return 0;
    if(value->joint_names.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joint_names.size; ++i)
        {
            if(value->joint_names.data[i].size > 128u || !uwvm_bounded_utf8(value->joint_names.data[i].data, value->joint_names.data[i].size))
                return 0;
        }
    }
    if(value->joint_ids.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joint_ids.size; ++i)
        {
        }
    }
    if(value->joint_lower_limits.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joint_lower_limits.size; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->joint_lower_limits.data[i], 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                    return 0;
            }
        }
    }
    if(value->joint_upper_limits.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joint_upper_limits.size; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->joint_upper_limits.data[i], 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                    return 0;
            }
        }
    }
    if(value->joint_velocity_limits.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joint_velocity_limits.size; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->joint_velocity_limits.data[i], 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                    return 0;
            }
        }
    }
    if(value->joint_sleep_positions.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joint_sleep_positions.size; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->joint_sleep_positions.data[i], 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                    return 0;
            }
        }
    }
    if(value->joint_state_indices.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joint_state_indices.size; ++i)
        {
        }
    }
    if(value->name.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->name.size; ++i)
        {
            if(value->name.data[i].size > 128u || !uwvm_bounded_utf8(value->name.data[i].data, value->name.data[i].size))
                return 0;
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoResponse_wire_size(roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoResponse const* value)
{
    size_t n = 0;
    n += 4 + value->mode.size;
    n += 4 + value->profile_type.size;
    n += 4;
    if(value->joint_names.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joint_names.size; ++i)
        {
            n += 4 + value->joint_names.data[i].size;
        }
    }
    n += 4;
    if(value->joint_ids.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joint_ids.size; ++i)
        {
            n += 2;
        }
    }
    n += 4;
    if(value->joint_lower_limits.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joint_lower_limits.size; ++i)
        {
            n += 4;
        }
    }
    n += 4;
    if(value->joint_upper_limits.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joint_upper_limits.size; ++i)
        {
            n += 4;
        }
    }
    n += 4;
    if(value->joint_velocity_limits.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joint_velocity_limits.size; ++i)
        {
            n += 4;
        }
    }
    n += 4;
    if(value->joint_sleep_positions.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joint_sleep_positions.size; ++i)
        {
            n += 4;
        }
    }
    n += 4;
    if(value->joint_state_indices.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joint_state_indices.size; ++i)
        {
            n += 2;
        }
    }
    n += 2;
    n += 4;
    if(value->name.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->name.size; ++i)
        {
            n += 4 + value->name.data[i].size;
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoResponse_write_fields(roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoResponse const* value,
                                                                                        unsigned char* p,
                                                                                        size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->mode.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->mode.data, value->mode.size);
    *offset += value->mode.size;
    uwvm_bounded_put(p + *offset, value->profile_type.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->profile_type.data, value->profile_type.size);
    *offset += value->profile_type.size;
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
    uwvm_bounded_put(p + *offset, value->joint_ids.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->joint_ids.size; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->joint_ids.data[i], 2);
            *offset += 2;
        }
    }
    uwvm_bounded_put(p + *offset, value->joint_lower_limits.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->joint_lower_limits.size; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->joint_lower_limits.data[i], 4);
                uwvm_bounded_put(p + *offset, bits, 4);
                *offset += 4;
            }
        }
    }
    uwvm_bounded_put(p + *offset, value->joint_upper_limits.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->joint_upper_limits.size; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->joint_upper_limits.data[i], 4);
                uwvm_bounded_put(p + *offset, bits, 4);
                *offset += 4;
            }
        }
    }
    uwvm_bounded_put(p + *offset, value->joint_velocity_limits.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->joint_velocity_limits.size; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->joint_velocity_limits.data[i], 4);
                uwvm_bounded_put(p + *offset, bits, 4);
                *offset += 4;
            }
        }
    }
    uwvm_bounded_put(p + *offset, value->joint_sleep_positions.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->joint_sleep_positions.size; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->joint_sleep_positions.data[i], 4);
                uwvm_bounded_put(p + *offset, bits, 4);
                *offset += 4;
            }
        }
    }
    uwvm_bounded_put(p + *offset, value->joint_state_indices.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->joint_state_indices.size; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->joint_state_indices.data[i], 2);
            *offset += 2;
        }
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->num_joints, 2);
    *offset += 2;
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
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoResponse_read_fields(unsigned char const* p,
                                                                                      size_t n,
                                                                                      size_t* offset,
                                                                                      roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoResponse* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    value->mode.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->mode.size > 128u || value->mode.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->mode.data, p + *offset, value->mode.size);
    *offset += value->mode.size;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->profile_type.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->profile_type.size > 128u || value->profile_type.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->profile_type.data, p + *offset, value->profile_type.size);
    *offset += value->profile_type.size;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->joint_names.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->joint_names.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joint_names.size; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            value->joint_names.data[i].size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
            *offset += 4;
            if(value->joint_names.data[i].size > 128u || value->joint_names.data[i].size > n - *offset)
                return 0;
            uwvm_bounded_copy(value->joint_names.data[i].data, p + *offset, value->joint_names.data[i].size);
            *offset += value->joint_names.data[i].size;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->joint_ids.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->joint_ids.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joint_ids.size; ++i)
        {
            if(*offset > n || n - *offset < 2)
                return 0;
            {
                uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
                uwvm_bounded_copy(&value->joint_ids.data[i], &bits, 2);
            }
            *offset += 2;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->joint_lower_limits.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->joint_lower_limits.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joint_lower_limits.size; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->joint_lower_limits.data[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->joint_upper_limits.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->joint_upper_limits.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joint_upper_limits.size; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->joint_upper_limits.data[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->joint_velocity_limits.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->joint_velocity_limits.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joint_velocity_limits.size; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->joint_velocity_limits.data[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->joint_sleep_positions.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->joint_sleep_positions.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joint_sleep_positions.size; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->joint_sleep_positions.data[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->joint_state_indices.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->joint_state_indices.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joint_state_indices.size; ++i)
        {
            if(*offset > n || n - *offset < 2)
                return 0;
            {
                uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
                uwvm_bounded_copy(&value->joint_state_indices.data[i], &bits, 2);
            }
            *offset += 2;
        }
    }
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
        uwvm_bounded_copy(&value->num_joints, &bits, 2);
    }
    *offset += 2;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->name.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->name.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->name.size; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            value->name.data[i].size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
            *offset += 4;
            if(value->name.data[i].size > 128u || value->name.data[i].size > n - *offset)
                return 0;
            uwvm_bounded_copy(value->name.data[i].data, p + *offset, value->name.data[i].size);
            *offset += value->name.data[i].size;
        }
    }
    return roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoResponse_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoResponse_encode(roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoResponse const* value,
                                                                                      void* output,
                                                                                      size_t capacity,
                                                                                      size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoResponse_decode(void const* input,
                                                                                      size_t length,
                                                                                      roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoResponse* value)
{
    roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoResponse next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 42u || length > 18474u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TORQUEENABLEREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TORQUEENABLEREQUEST_0 != 0x90c37505UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TORQUEENABLEREQUEST_1 != 0x67965395UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TORQUEENABLEREQUEST_2 != 0xba9f1377UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TORQUEENABLEREQUEST_3 != 0x3436b793UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TORQUEENABLEREQUEST_4 != 0x4d41ca98UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TORQUEENABLEREQUEST_5 != 0x847fd390UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TORQUEENABLEREQUEST_6 != 0x31d4bd94UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TORQUEENABLEREQUEST_7 != 0x5d8e756dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TORQUEENABLEREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TORQUEENABLEREQUEST_0 0x90c37505UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TORQUEENABLEREQUEST_1 0x67965395UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TORQUEENABLEREQUEST_2 0xba9f1377UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TORQUEENABLEREQUEST_3 0x3436b793UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TORQUEENABLEREQUEST_4 0x4d41ca98UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TORQUEENABLEREQUEST_5 0x847fd390UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TORQUEENABLEREQUEST_6 0x31d4bd94UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TORQUEENABLEREQUEST_7 0x5d8e756dUL

/** @brief UTF-8 byte storage for interbotix_xs_msgs/TorqueEnableRequest.cmd_type; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableRequest_cmd_type_text;

/** @brief UTF-8 byte storage for interbotix_xs_msgs/TorqueEnableRequest.name; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableRequest_name_text;

/** @brief Complete ROS1 interbotix_xs_msgs/TorqueEnableRequest value; no field projects away native data. */
typedef struct roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableRequest
{
    /** @brief Declared field cmd_type; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableRequest_cmd_type_text cmd_type;
    /** @brief Declared field name; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableRequest_name_text name;
    /** @brief Declared field enable; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t enable;
} roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableRequest;

# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TORQUEENABLEREQUEST_MAX_WIRE_BYTES 265u
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TORQUEENABLEREQUEST_MIN_WIRE_BYTES 9u
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TORQUEENABLEREQUEST_CODEC_IDENTITY "UWVMROS1_0586e2a4917ddf684f7834ada07775ccc118f0b2abbfd7fda72d4b76be8a146a"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableRequest_valid(roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableRequest const* value)
{
    if(!value)
        return 0;
    if(value->cmd_type.size > 128u || !uwvm_bounded_utf8(value->cmd_type.data, value->cmd_type.size))
        return 0;
    if(value->name.size > 128u || !uwvm_bounded_utf8(value->name.data, value->name.size))
        return 0;
    if(value->enable > 1)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableRequest_wire_size(roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableRequest const* value)
{
    size_t n = 0;
    n += 4 + value->cmd_type.size;
    n += 4 + value->name.size;
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableRequest_write_fields(roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableRequest const* value,
                                                                           unsigned char* p,
                                                                           size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->cmd_type.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->cmd_type.data, value->cmd_type.size);
    *offset += value->cmd_type.size;
    uwvm_bounded_put(p + *offset, value->name.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->name.data, value->name.size);
    *offset += value->name.size;
    uwvm_bounded_put(p + *offset, (uint64_t)value->enable, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableRequest_read_fields(unsigned char const* p,
                                                                                        size_t n,
                                                                                        size_t* offset,
                                                                                        roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableRequest* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    value->cmd_type.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->cmd_type.size > 128u || value->cmd_type.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->cmd_type.data, p + *offset, value->cmd_type.size);
    *offset += value->cmd_type.size;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->name.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->name.size > 128u || value->name.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->name.data, p + *offset, value->name.size);
    *offset += value->name.size;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->enable, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableRequest_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableRequest_encode(roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableRequest const* value,
                                                                                        void* output,
                                                                                        size_t capacity,
                                                                                        size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableRequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableRequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableRequest_decode(void const* input,
                                                                                        size_t length,
                                                                                        roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableRequest* value)
{
    roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableRequest next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 9u || length > 265u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableRequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TORQUEENABLERESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TORQUEENABLERESPONSE_0 != 0xf739c696UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TORQUEENABLERESPONSE_1 != 0x779411bbUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TORQUEENABLERESPONSE_2 != 0xb1300b3fUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TORQUEENABLERESPONSE_3 != 0x8faa7eb0UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TORQUEENABLERESPONSE_4 != 0x59dd69bcUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TORQUEENABLERESPONSE_5 != 0xb3d22d4dUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TORQUEENABLERESPONSE_6 != 0x2a50b92cUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TORQUEENABLERESPONSE_7 != 0xb5b41497UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TORQUEENABLERESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TORQUEENABLERESPONSE_0 0xf739c696UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TORQUEENABLERESPONSE_1 0x779411bbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TORQUEENABLERESPONSE_2 0xb1300b3fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TORQUEENABLERESPONSE_3 0x8faa7eb0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TORQUEENABLERESPONSE_4 0x59dd69bcUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TORQUEENABLERESPONSE_5 0xb3d22d4dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TORQUEENABLERESPONSE_6 0x2a50b92cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TORQUEENABLERESPONSE_7 0xb5b41497UL

/** @brief Complete ROS1 interbotix_xs_msgs/TorqueEnableResponse value; no field projects away native data. */
typedef struct roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableResponse
{
    /** @brief Local C layout placeholder; empty native component has exactly zero canonical bytes. */
    unsigned char local_empty_placeholder;
} roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableResponse;

# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TORQUEENABLERESPONSE_MAX_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TORQUEENABLERESPONSE_MIN_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TORQUEENABLERESPONSE_CODEC_IDENTITY "UWVMROS1_6f010bb51e876d2e66fa7a227f13d4484ae800dd5ae256cfe770ad2b58f6ad44"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableResponse_valid(roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableResponse const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableResponse_wire_size(roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableResponse const* value)
{
    size_t n = 0;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableResponse_write_fields(roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableResponse const* value,
                                                                            unsigned char* p,
                                                                            size_t* offset)
{
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableResponse_read_fields(unsigned char const* p,
                                                                                         size_t n,
                                                                                         size_t* offset,
                                                                                         roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableResponse* value)
{
    return roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableResponse_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableResponse_encode(roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableResponse const* value,
                                                                      void* output,
                                                                      size_t capacity,
                                                                      size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableResponse_decode(void const* input,
                                                                                         size_t length,
                                                                                         roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableResponse* value)
{
    roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableResponse next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 0u || length > 0u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TURRETJOY)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TURRETJOY_0 != 0xcf97b911UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TURRETJOY_1 != 0xd7eeb243UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TURRETJOY_2 != 0x46a46decUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TURRETJOY_3 != 0xdfe7fb49UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TURRETJOY_4 != 0x3bfa7c02UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TURRETJOY_5 != 0xaa9fef6fUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TURRETJOY_6 != 0x2b1a5f79UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TURRETJOY_7 != 0x44650562UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TURRETJOY 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TURRETJOY_0 0xcf97b911UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TURRETJOY_1 0xd7eeb243UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TURRETJOY_2 0x46a46decUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TURRETJOY_3 0xdfe7fb49UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TURRETJOY_4 0x3bfa7c02UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TURRETJOY_5 0xaa9fef6fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TURRETJOY_6 0x2b1a5f79UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TURRETJOY_7 0x44650562UL

/** @brief Complete ROS1 interbotix_xs_msgs/TurretJoy value; no field projects away native data. */
typedef struct roswasmc_bounded_1_interbotix_xs_msgs_TurretJoy
{
    /** @brief Declared field pan_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t pan_cmd;
    /** @brief Declared field tilt_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t tilt_cmd;
    /** @brief Declared field speed_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t speed_cmd;
    /** @brief Declared field speed_toggle_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t speed_toggle_cmd;
} roswasmc_bounded_1_interbotix_xs_msgs_TurretJoy;

# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TURRETJOY_MAX_WIRE_BYTES 4u
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TURRETJOY_MIN_WIRE_BYTES 4u
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TURRETJOY_CODEC_IDENTITY "UWVMROS1_723dfe84ba93acb0acee9131da0af65fe5b508f33e43d5ff9d30d2137b102b70"
/** @brief Original scalar constant PAN_CCW=1; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TURRETJOY_PAN_CCW INT32_C(1)
/** @brief Original scalar constant PAN_CW=2; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TURRETJOY_PAN_CW INT32_C(2)
/** @brief Original scalar constant TILT_UP=3; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TURRETJOY_TILT_UP INT32_C(3)
/** @brief Original scalar constant TILT_DOWN=4; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TURRETJOY_TILT_DOWN INT32_C(4)
/** @brief Original scalar constant PAN_TILT_HOME=5; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TURRETJOY_PAN_TILT_HOME INT32_C(5)
/** @brief Original scalar constant SPEED_INC=6; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TURRETJOY_SPEED_INC INT32_C(6)
/** @brief Original scalar constant SPEED_DEC=7; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TURRETJOY_SPEED_DEC INT32_C(7)
/** @brief Original scalar constant SPEED_COURSE=8; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TURRETJOY_SPEED_COURSE INT32_C(8)
/** @brief Original scalar constant SPEED_FINE=9; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TURRETJOY_SPEED_FINE INT32_C(9)

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_interbotix_xs_msgs_TurretJoy_valid(roswasmc_bounded_1_interbotix_xs_msgs_TurretJoy const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_interbotix_xs_msgs_TurretJoy_wire_size(roswasmc_bounded_1_interbotix_xs_msgs_TurretJoy const* value)
{
    size_t n = 0;
    n += 1;
    n += 1;
    n += 1;
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_interbotix_xs_msgs_TurretJoy_write_fields(roswasmc_bounded_1_interbotix_xs_msgs_TurretJoy const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->pan_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->tilt_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->speed_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->speed_toggle_cmd, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_interbotix_xs_msgs_TurretJoy_read_fields(unsigned char const* p,
                                                                              size_t n,
                                                                              size_t* offset,
                                                                              roswasmc_bounded_1_interbotix_xs_msgs_TurretJoy* value)
{
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->pan_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->tilt_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->speed_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->speed_toggle_cmd, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_1_interbotix_xs_msgs_TurretJoy_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_interbotix_xs_msgs_TurretJoy_encode(roswasmc_bounded_1_interbotix_xs_msgs_TurretJoy const* value,
                                                                              void* output,
                                                                              size_t capacity,
                                                                              size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_interbotix_xs_msgs_TurretJoy_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_interbotix_xs_msgs_TurretJoy_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_interbotix_xs_msgs_TurretJoy_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_interbotix_xs_msgs_TurretJoy_decode(void const* input, size_t length, roswasmc_bounded_1_interbotix_xs_msgs_TurretJoy* value)
{
    roswasmc_bounded_1_interbotix_xs_msgs_TurretJoy next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 4u || length > 4u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_interbotix_xs_msgs_TurretJoy_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRREQUEST_0 != 0x9a117fd0UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRREQUEST_1 != 0x6aecaa12UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRREQUEST_2 != 0xdf4f5feeUL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRREQUEST_3 != 0x465cb797UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRREQUEST_4 != 0x31e8123eUL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRREQUEST_5 != 0x8e4a9198UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRREQUEST_6 != 0x926e0bc6UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRREQUEST_7 != 0xe09e1c1bUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRREQUEST_0 0x9a117fd0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRREQUEST_1 0x6aecaa12UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRREQUEST_2 0xdf4f5feeUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRREQUEST_3 0x465cb797UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRREQUEST_4 0x31e8123eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRREQUEST_5 0x8e4a9198UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRREQUEST_6 0x926e0bc6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRREQUEST_7 0xe09e1c1bUL

/** @brief Complete ROS1 xarm_msgs/ClearErrRequest value; no field projects away native data. */
typedef struct roswasmc_bounded_1_xarm_msgs_ClearErrRequest
{
    /** @brief Local C layout placeholder; empty native component has exactly zero canonical bytes. */
    unsigned char local_empty_placeholder;
} roswasmc_bounded_1_xarm_msgs_ClearErrRequest;

# define ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRREQUEST_MAX_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRREQUEST_MIN_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRREQUEST_CODEC_IDENTITY "UWVMROS1_ce83a45aee719e0916f27f8caab41c12bb15d04942bfdd0489047e7b79f3b9e8"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_xarm_msgs_ClearErrRequest_valid(roswasmc_bounded_1_xarm_msgs_ClearErrRequest const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_xarm_msgs_ClearErrRequest_wire_size(roswasmc_bounded_1_xarm_msgs_ClearErrRequest const* value)
{
    size_t n = 0;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_xarm_msgs_ClearErrRequest_write_fields(roswasmc_bounded_1_xarm_msgs_ClearErrRequest const* value, unsigned char* p, size_t* offset)
{
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_xarm_msgs_ClearErrRequest_read_fields(unsigned char const* p,
                                                                           size_t n,
                                                                           size_t* offset,
                                                                           roswasmc_bounded_1_xarm_msgs_ClearErrRequest* value)
{
    return roswasmc_bounded_1_xarm_msgs_ClearErrRequest_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_xarm_msgs_ClearErrRequest_encode(roswasmc_bounded_1_xarm_msgs_ClearErrRequest const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_xarm_msgs_ClearErrRequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_xarm_msgs_ClearErrRequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_xarm_msgs_ClearErrRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_xarm_msgs_ClearErrRequest_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_ClearErrRequest* value)
{
    roswasmc_bounded_1_xarm_msgs_ClearErrRequest next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 0u || length > 0u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_xarm_msgs_ClearErrRequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRRESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRRESPONSE_0 != 0xd8c4f04eUL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRRESPONSE_1 != 0xbafbd2baUL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRRESPONSE_2 != 0xeea51d52UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRRESPONSE_3 != 0x2f76265cUL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRRESPONSE_4 != 0xf04e6ccbUL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRRESPONSE_5 != 0xfd12e026UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRRESPONSE_6 != 0x7ae08556UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRRESPONSE_7 != 0x0e40ef07UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRRESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRRESPONSE_0 0xd8c4f04eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRRESPONSE_1 0xbafbd2baUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRRESPONSE_2 0xeea51d52UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRRESPONSE_3 0x2f76265cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRRESPONSE_4 0xf04e6ccbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRRESPONSE_5 0xfd12e026UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRRESPONSE_6 0x7ae08556UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRRESPONSE_7 0x0e40ef07UL

/** @brief UTF-8 byte storage for xarm_msgs/ClearErrResponse.message; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_xarm_msgs_ClearErrResponse_message_text;

/** @brief Complete ROS1 xarm_msgs/ClearErrResponse value; no field projects away native data. */
typedef struct roswasmc_bounded_1_xarm_msgs_ClearErrResponse
{
    /** @brief Declared field ret; canonical capacity is part of CODEC_IDENTITY. */
    int16_t ret;
    /** @brief Declared field message; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_xarm_msgs_ClearErrResponse_message_text message;
} roswasmc_bounded_1_xarm_msgs_ClearErrResponse;

# define ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRRESPONSE_MAX_WIRE_BYTES 134u
# define ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRRESPONSE_MIN_WIRE_BYTES 6u
# define ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRRESPONSE_CODEC_IDENTITY "UWVMROS1_8edb7089d54f07c68008fdf769fa42d37da738066fce87da976c4888adf8a1a1"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_xarm_msgs_ClearErrResponse_valid(roswasmc_bounded_1_xarm_msgs_ClearErrResponse const* value)
{
    if(!value)
        return 0;
    if(value->message.size > 128u || !uwvm_bounded_utf8(value->message.data, value->message.size))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_xarm_msgs_ClearErrResponse_wire_size(roswasmc_bounded_1_xarm_msgs_ClearErrResponse const* value)
{
    size_t n = 0;
    n += 2;
    n += 4 + value->message.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_xarm_msgs_ClearErrResponse_write_fields(roswasmc_bounded_1_xarm_msgs_ClearErrResponse const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->ret, 2);
    *offset += 2;
    uwvm_bounded_put(p + *offset, value->message.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->message.data, value->message.size);
    *offset += value->message.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_xarm_msgs_ClearErrResponse_read_fields(unsigned char const* p,
                                                                            size_t n,
                                                                            size_t* offset,
                                                                            roswasmc_bounded_1_xarm_msgs_ClearErrResponse* value)
{
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
        uwvm_bounded_copy(&value->ret, &bits, 2);
    }
    *offset += 2;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->message.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->message.size > 128u || value->message.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->message.data, p + *offset, value->message.size);
    *offset += value->message.size;
    return roswasmc_bounded_1_xarm_msgs_ClearErrResponse_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_xarm_msgs_ClearErrResponse_encode(roswasmc_bounded_1_xarm_msgs_ClearErrResponse const* value,
                                                                            void* output,
                                                                            size_t capacity,
                                                                            size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_xarm_msgs_ClearErrResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_xarm_msgs_ClearErrResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_xarm_msgs_ClearErrResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_xarm_msgs_ClearErrResponse_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_ClearErrResponse* value)
{
    roswasmc_bounded_1_xarm_msgs_ClearErrResponse next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 6u || length > 134u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_xarm_msgs_ClearErrResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CONFIGTOOLMODBUSREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CONFIGTOOLMODBUSREQUEST_0 != 0xee9ccaf9UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CONFIGTOOLMODBUSREQUEST_1 != 0x95e5aac3UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CONFIGTOOLMODBUSREQUEST_2 != 0xc734dd4fUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CONFIGTOOLMODBUSREQUEST_3 != 0x5bbfb30cUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CONFIGTOOLMODBUSREQUEST_4 != 0xa976e0fbUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CONFIGTOOLMODBUSREQUEST_5 != 0xa8065277UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CONFIGTOOLMODBUSREQUEST_6 != 0x3a7bb807UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CONFIGTOOLMODBUSREQUEST_7 != 0x11c44f7bUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CONFIGTOOLMODBUSREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CONFIGTOOLMODBUSREQUEST_0 0xee9ccaf9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CONFIGTOOLMODBUSREQUEST_1 0x95e5aac3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CONFIGTOOLMODBUSREQUEST_2 0xc734dd4fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CONFIGTOOLMODBUSREQUEST_3 0x5bbfb30cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CONFIGTOOLMODBUSREQUEST_4 0xa976e0fbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CONFIGTOOLMODBUSREQUEST_5 0xa8065277UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CONFIGTOOLMODBUSREQUEST_6 0x3a7bb807UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CONFIGTOOLMODBUSREQUEST_7 0x11c44f7bUL

/** @brief Complete ROS1 xarm_msgs/ConfigToolModbusRequest value; no field projects away native data. */
typedef struct roswasmc_bounded_1_xarm_msgs_ConfigToolModbusRequest
{
    /** @brief Declared field baud_rate; canonical capacity is part of CODEC_IDENTITY. */
    int32_t baud_rate;
    /** @brief Declared field timeout_ms; canonical capacity is part of CODEC_IDENTITY. */
    int32_t timeout_ms;
} roswasmc_bounded_1_xarm_msgs_ConfigToolModbusRequest;

# define ROSWASMC_BOUNDED_1_XARM_MSGS_CONFIGTOOLMODBUSREQUEST_MAX_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_1_XARM_MSGS_CONFIGTOOLMODBUSREQUEST_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_1_XARM_MSGS_CONFIGTOOLMODBUSREQUEST_CODEC_IDENTITY "UWVMROS1_2a1e6f98ac1ec94f8d670177cee7aa7ba3b60249b4311f42c518cf90f8575ae5"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_xarm_msgs_ConfigToolModbusRequest_valid(roswasmc_bounded_1_xarm_msgs_ConfigToolModbusRequest const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_xarm_msgs_ConfigToolModbusRequest_wire_size(roswasmc_bounded_1_xarm_msgs_ConfigToolModbusRequest const* value)
{
    size_t n = 0;
    n += 4;
    n += 4;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_1_xarm_msgs_ConfigToolModbusRequest_write_fields(roswasmc_bounded_1_xarm_msgs_ConfigToolModbusRequest const* value,
                                                                                     unsigned char* p,
                                                                                     size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->baud_rate, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->timeout_ms, 4);
    *offset += 4;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_xarm_msgs_ConfigToolModbusRequest_read_fields(unsigned char const* p,
                                                                                   size_t n,
                                                                                   size_t* offset,
                                                                                   roswasmc_bounded_1_xarm_msgs_ConfigToolModbusRequest* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->baud_rate, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->timeout_ms, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_1_xarm_msgs_ConfigToolModbusRequest_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_xarm_msgs_ConfigToolModbusRequest_encode(roswasmc_bounded_1_xarm_msgs_ConfigToolModbusRequest const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_xarm_msgs_ConfigToolModbusRequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_xarm_msgs_ConfigToolModbusRequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_xarm_msgs_ConfigToolModbusRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_xarm_msgs_ConfigToolModbusRequest_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_ConfigToolModbusRequest* value)
{
    roswasmc_bounded_1_xarm_msgs_ConfigToolModbusRequest next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 8u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_xarm_msgs_ConfigToolModbusRequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CONFIGTOOLMODBUSRESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CONFIGTOOLMODBUSRESPONSE_0 != 0xf8c647d4UL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CONFIGTOOLMODBUSRESPONSE_1 != 0x31c46c10UL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CONFIGTOOLMODBUSRESPONSE_2 != 0x8ed6f3e1UL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CONFIGTOOLMODBUSRESPONSE_3 != 0xdd5770fbUL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CONFIGTOOLMODBUSRESPONSE_4 != 0x4c7234b9UL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CONFIGTOOLMODBUSRESPONSE_5 != 0xd31caef8UL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CONFIGTOOLMODBUSRESPONSE_6 != 0x5f17d8aeUL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CONFIGTOOLMODBUSRESPONSE_7 != 0x77e2778aUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CONFIGTOOLMODBUSRESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CONFIGTOOLMODBUSRESPONSE_0 0xf8c647d4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CONFIGTOOLMODBUSRESPONSE_1 0x31c46c10UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CONFIGTOOLMODBUSRESPONSE_2 0x8ed6f3e1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CONFIGTOOLMODBUSRESPONSE_3 0xdd5770fbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CONFIGTOOLMODBUSRESPONSE_4 0x4c7234b9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CONFIGTOOLMODBUSRESPONSE_5 0xd31caef8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CONFIGTOOLMODBUSRESPONSE_6 0x5f17d8aeUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CONFIGTOOLMODBUSRESPONSE_7 0x77e2778aUL

/** @brief UTF-8 byte storage for xarm_msgs/ConfigToolModbusResponse.message; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_xarm_msgs_ConfigToolModbusResponse_message_text;

/** @brief Complete ROS1 xarm_msgs/ConfigToolModbusResponse value; no field projects away native data. */
typedef struct roswasmc_bounded_1_xarm_msgs_ConfigToolModbusResponse
{
    /** @brief Declared field message; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_xarm_msgs_ConfigToolModbusResponse_message_text message;
    /** @brief Declared field ret; canonical capacity is part of CODEC_IDENTITY. */
    int16_t ret;
} roswasmc_bounded_1_xarm_msgs_ConfigToolModbusResponse;

# define ROSWASMC_BOUNDED_1_XARM_MSGS_CONFIGTOOLMODBUSRESPONSE_MAX_WIRE_BYTES 134u
# define ROSWASMC_BOUNDED_1_XARM_MSGS_CONFIGTOOLMODBUSRESPONSE_MIN_WIRE_BYTES 6u
# define ROSWASMC_BOUNDED_1_XARM_MSGS_CONFIGTOOLMODBUSRESPONSE_CODEC_IDENTITY "UWVMROS1_1080c7a283e1a9406bc5e04432f074732d7b0f175e5e04d87c3ea811e4e9503b"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_xarm_msgs_ConfigToolModbusResponse_valid(roswasmc_bounded_1_xarm_msgs_ConfigToolModbusResponse const* value)
{
    if(!value)
        return 0;
    if(value->message.size > 128u || !uwvm_bounded_utf8(value->message.data, value->message.size))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_xarm_msgs_ConfigToolModbusResponse_wire_size(roswasmc_bounded_1_xarm_msgs_ConfigToolModbusResponse const* value)
{
    size_t n = 0;
    n += 4 + value->message.size;
    n += 2;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_1_xarm_msgs_ConfigToolModbusResponse_write_fields(roswasmc_bounded_1_xarm_msgs_ConfigToolModbusResponse const* value,
                                                                                      unsigned char* p,
                                                                                      size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->message.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->message.data, value->message.size);
    *offset += value->message.size;
    uwvm_bounded_put(p + *offset, (uint64_t)value->ret, 2);
    *offset += 2;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_xarm_msgs_ConfigToolModbusResponse_read_fields(unsigned char const* p,
                                                                                    size_t n,
                                                                                    size_t* offset,
                                                                                    roswasmc_bounded_1_xarm_msgs_ConfigToolModbusResponse* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    value->message.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->message.size > 128u || value->message.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->message.data, p + *offset, value->message.size);
    *offset += value->message.size;
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
        uwvm_bounded_copy(&value->ret, &bits, 2);
    }
    *offset += 2;
    return roswasmc_bounded_1_xarm_msgs_ConfigToolModbusResponse_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_xarm_msgs_ConfigToolModbusResponse_encode(roswasmc_bounded_1_xarm_msgs_ConfigToolModbusResponse const* value,
                                                                                    void* output,
                                                                                    size_t capacity,
                                                                                    size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_xarm_msgs_ConfigToolModbusResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_xarm_msgs_ConfigToolModbusResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_xarm_msgs_ConfigToolModbusResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_xarm_msgs_ConfigToolModbusResponse_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_ConfigToolModbusResponse* value)
{
    roswasmc_bounded_1_xarm_msgs_ConfigToolModbusResponse next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 6u || length > 134u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_xarm_msgs_ConfigToolModbusResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIOREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIOREQUEST_0 != 0x04d8ec98UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIOREQUEST_1 != 0x5fbbc15dUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIOREQUEST_2 != 0x27b7e75fUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIOREQUEST_3 != 0x6bffe299UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIOREQUEST_4 != 0x525e49dfUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIOREQUEST_5 != 0xf1a7fb47UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIOREQUEST_6 != 0xbb6ef3a3UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIOREQUEST_7 != 0xf81211ebUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIOREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIOREQUEST_0 0x04d8ec98UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIOREQUEST_1 0x5fbbc15dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIOREQUEST_2 0x27b7e75fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIOREQUEST_3 0x6bffe299UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIOREQUEST_4 0x525e49dfUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIOREQUEST_5 0xf1a7fb47UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIOREQUEST_6 0xbb6ef3a3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIOREQUEST_7 0xf81211ebUL

/** @brief Complete ROS1 xarm_msgs/GetAnalogIORequest value; no field projects away native data. */
typedef struct roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest
{
    /** @brief Declared field port_num; canonical capacity is part of CODEC_IDENTITY. */
    int16_t port_num;
} roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest;

# define ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIOREQUEST_MAX_WIRE_BYTES 2u
# define ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIOREQUEST_MIN_WIRE_BYTES 2u
# define ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIOREQUEST_CODEC_IDENTITY "UWVMROS1_08bf2816e784cc03d6d2ea33d71e457038f9071f8d80726d05f566d60ab961e8"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest_valid(roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest_wire_size(roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest const* value)
{
    size_t n = 0;
    n += 2;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest_write_fields(roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->port_num, 2);
    *offset += 2;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest_read_fields(unsigned char const* p,
                                                                              size_t n,
                                                                              size_t* offset,
                                                                              roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest* value)
{
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
        uwvm_bounded_copy(&value->port_num, &bits, 2);
    }
    *offset += 2;
    return roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest_encode(roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest const* value,
                                                                              void* output,
                                                                              size_t capacity,
                                                                              size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest* value)
{
    roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 2u || length > 2u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIORESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIORESPONSE_0 != 0xdfad10a0UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIORESPONSE_1 != 0xc6bc0187UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIORESPONSE_2 != 0xf6b200bfUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIORESPONSE_3 != 0x88fbf08eUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIORESPONSE_4 != 0x4a530389UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIORESPONSE_5 != 0xee931e2bUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIORESPONSE_6 != 0xff72ac3fUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIORESPONSE_7 != 0xa1bb3f56UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIORESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIORESPONSE_0 0xdfad10a0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIORESPONSE_1 0xc6bc0187UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIORESPONSE_2 0xf6b200bfUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIORESPONSE_3 0x88fbf08eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIORESPONSE_4 0x4a530389UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIORESPONSE_5 0xee931e2bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIORESPONSE_6 0xff72ac3fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIORESPONSE_7 0xa1bb3f56UL

/** @brief UTF-8 byte storage for xarm_msgs/GetAnalogIOResponse.message; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse_message_text;

/** @brief Complete ROS1 xarm_msgs/GetAnalogIOResponse value; no field projects away native data. */
typedef struct roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse
{
    /** @brief Declared field analog_value; canonical capacity is part of CODEC_IDENTITY. */
    float analog_value;
    /** @brief Declared field ret; canonical capacity is part of CODEC_IDENTITY. */
    int16_t ret;
    /** @brief Declared field message; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse_message_text message;
} roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse;

# define ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIORESPONSE_MAX_WIRE_BYTES 138u
# define ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIORESPONSE_MIN_WIRE_BYTES 10u
# define ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIORESPONSE_CODEC_IDENTITY "UWVMROS1_7a70c05e7e63840aa7ba045fff4ae119046a0f438d8f3d9dcc436daa93bf7968"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse_valid(roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse const* value)
{
    if(!value)
        return 0;
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->analog_value, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    if(value->message.size > 128u || !uwvm_bounded_utf8(value->message.data, value->message.size))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse_wire_size(roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse const* value)
{
    size_t n = 0;
    n += 4;
    n += 2;
    n += 4 + value->message.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse_write_fields(roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse const* value,
                                                                                 unsigned char* p,
                                                                                 size_t* offset)
{
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->analog_value, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->ret, 2);
    *offset += 2;
    uwvm_bounded_put(p + *offset, value->message.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->message.data, value->message.size);
    *offset += value->message.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->analog_value, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
        uwvm_bounded_copy(&value->ret, &bits, 2);
    }
    *offset += 2;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->message.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->message.size > 128u || value->message.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->message.data, p + *offset, value->message.size);
    *offset += value->message.size;
    return roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse_encode(roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse* value)
{
    roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 10u || length > 138u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETCONTROLLERDIGITALIOREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETCONTROLLERDIGITALIOREQUEST_0 != 0x6165ffc6UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETCONTROLLERDIGITALIOREQUEST_1 != 0x1eb1b59eUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETCONTROLLERDIGITALIOREQUEST_2 != 0xf0261f26UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETCONTROLLERDIGITALIOREQUEST_3 != 0x3f733d70UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETCONTROLLERDIGITALIOREQUEST_4 != 0x79303041UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETCONTROLLERDIGITALIOREQUEST_5 != 0x2a149b0fUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETCONTROLLERDIGITALIOREQUEST_6 != 0xd0fd2c5bUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETCONTROLLERDIGITALIOREQUEST_7 != 0x99bc00c0UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETCONTROLLERDIGITALIOREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETCONTROLLERDIGITALIOREQUEST_0 0x6165ffc6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETCONTROLLERDIGITALIOREQUEST_1 0x1eb1b59eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETCONTROLLERDIGITALIOREQUEST_2 0xf0261f26UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETCONTROLLERDIGITALIOREQUEST_3 0x3f733d70UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETCONTROLLERDIGITALIOREQUEST_4 0x79303041UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETCONTROLLERDIGITALIOREQUEST_5 0x2a149b0fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETCONTROLLERDIGITALIOREQUEST_6 0xd0fd2c5bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETCONTROLLERDIGITALIOREQUEST_7 0x99bc00c0UL

/** @brief Complete ROS1 xarm_msgs/GetControllerDigitalIORequest value; no field projects away native data. */
typedef struct roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIORequest
{
    /** @brief Declared field io_num; canonical capacity is part of CODEC_IDENTITY. */
    int16_t io_num;
} roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIORequest;

# define ROSWASMC_BOUNDED_1_XARM_MSGS_GETCONTROLLERDIGITALIOREQUEST_MAX_WIRE_BYTES 2u
# define ROSWASMC_BOUNDED_1_XARM_MSGS_GETCONTROLLERDIGITALIOREQUEST_MIN_WIRE_BYTES 2u
# define ROSWASMC_BOUNDED_1_XARM_MSGS_GETCONTROLLERDIGITALIOREQUEST_CODEC_IDENTITY "UWVMROS1_122db0972339f94d0bf6f4028643a020e85b286a46fa69dec71e7e998bf43f3c"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIORequest_valid(roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIORequest const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIORequest_wire_size(roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIORequest const* value)
{
    size_t n = 0;
    n += 2;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIORequest_write_fields(roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIORequest const* value,
                                                                            unsigned char* p,
                                                                            size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->io_num, 2);
    *offset += 2;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIORequest_read_fields(unsigned char const* p,
                                                                                         size_t n,
                                                                                         size_t* offset,
                                                                                         roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIORequest* value)
{
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
        uwvm_bounded_copy(&value->io_num, &bits, 2);
    }
    *offset += 2;
    return roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIORequest_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIORequest_encode(roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIORequest const* value,
                                                                      void* output,
                                                                      size_t capacity,
                                                                      size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIORequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIORequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIORequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIORequest_decode(void const* input,
                                                                                         size_t length,
                                                                                         roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIORequest* value)
{
    roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIORequest next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 2u || length > 2u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIORequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETCONTROLLERDIGITALIORESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETCONTROLLERDIGITALIORESPONSE_0 != 0xbee0b1ceUL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETCONTROLLERDIGITALIORESPONSE_1 != 0xe537cfc2UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETCONTROLLERDIGITALIORESPONSE_2 != 0x56b7e268UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETCONTROLLERDIGITALIORESPONSE_3 != 0x50906bf5UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETCONTROLLERDIGITALIORESPONSE_4 != 0xdb60ab32UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETCONTROLLERDIGITALIORESPONSE_5 != 0x10242ff4UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETCONTROLLERDIGITALIORESPONSE_6 != 0xffab366bUL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETCONTROLLERDIGITALIORESPONSE_7 != 0x019ac270UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETCONTROLLERDIGITALIORESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETCONTROLLERDIGITALIORESPONSE_0 0xbee0b1ceUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETCONTROLLERDIGITALIORESPONSE_1 0xe537cfc2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETCONTROLLERDIGITALIORESPONSE_2 0x56b7e268UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETCONTROLLERDIGITALIORESPONSE_3 0x50906bf5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETCONTROLLERDIGITALIORESPONSE_4 0xdb60ab32UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETCONTROLLERDIGITALIORESPONSE_5 0x10242ff4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETCONTROLLERDIGITALIORESPONSE_6 0xffab366bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETCONTROLLERDIGITALIORESPONSE_7 0x019ac270UL

/** @brief UTF-8 byte storage for xarm_msgs/GetControllerDigitalIOResponse.message; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIOResponse_message_text;

/** @brief Complete ROS1 xarm_msgs/GetControllerDigitalIOResponse value; no field projects away native data. */
typedef struct roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIOResponse
{
    /** @brief Declared field ret; canonical capacity is part of CODEC_IDENTITY. */
    int16_t ret;
    /** @brief Declared field value; canonical capacity is part of CODEC_IDENTITY. */
    int16_t value;
    /** @brief Declared field message; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIOResponse_message_text message;
} roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIOResponse;

# define ROSWASMC_BOUNDED_1_XARM_MSGS_GETCONTROLLERDIGITALIORESPONSE_MAX_WIRE_BYTES 136u
# define ROSWASMC_BOUNDED_1_XARM_MSGS_GETCONTROLLERDIGITALIORESPONSE_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_1_XARM_MSGS_GETCONTROLLERDIGITALIORESPONSE_CODEC_IDENTITY "UWVMROS1_b3ec2406480ce53df0f0c307ab2060db95b9aec06ff4883bbf5779a602d385a3"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIOResponse_valid(roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIOResponse const* value)
{
    if(!value)
        return 0;
    if(value->message.size > 128u || !uwvm_bounded_utf8(value->message.data, value->message.size))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIOResponse_wire_size(roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIOResponse const* value)
{
    size_t n = 0;
    n += 2;
    n += 2;
    n += 4 + value->message.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIOResponse_write_fields(roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIOResponse const* value,
                                                                             unsigned char* p,
                                                                             size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->ret, 2);
    *offset += 2;
    uwvm_bounded_put(p + *offset, (uint64_t)value->value, 2);
    *offset += 2;
    uwvm_bounded_put(p + *offset, value->message.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->message.data, value->message.size);
    *offset += value->message.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIOResponse_read_fields(unsigned char const* p,
                                                                                          size_t n,
                                                                                          size_t* offset,
                                                                                          roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIOResponse* value)
{
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
        uwvm_bounded_copy(&value->ret, &bits, 2);
    }
    *offset += 2;
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
        uwvm_bounded_copy(&value->value, &bits, 2);
    }
    *offset += 2;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->message.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->message.size > 128u || value->message.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->message.data, p + *offset, value->message.size);
    *offset += value->message.size;
    return roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIOResponse_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIOResponse_encode(roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIOResponse const* value,
                                                                       void* output,
                                                                       size_t capacity,
                                                                       size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIOResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIOResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIOResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIOResponse_decode(void const* input,
                                                                                          size_t length,
                                                                                          roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIOResponse* value)
{
    roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIOResponse next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 136u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIOResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIOREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIOREQUEST_0 != 0xb8962a45UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIOREQUEST_1 != 0x15f8a98fUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIOREQUEST_2 != 0xe10fddfeUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIOREQUEST_3 != 0x3412349fUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIOREQUEST_4 != 0x0683aee2UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIOREQUEST_5 != 0x49973feeUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIOREQUEST_6 != 0xb891b0c0UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIOREQUEST_7 != 0xe8fe68b2UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIOREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIOREQUEST_0 0xb8962a45UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIOREQUEST_1 0x15f8a98fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIOREQUEST_2 0xe10fddfeUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIOREQUEST_3 0x3412349fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIOREQUEST_4 0x0683aee2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIOREQUEST_5 0x49973feeUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIOREQUEST_6 0xb891b0c0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIOREQUEST_7 0xe8fe68b2UL

/** @brief Complete ROS1 xarm_msgs/GetDigitalIORequest value; no field projects away native data. */
typedef struct roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest
{
    /** @brief Local C layout placeholder; empty native component has exactly zero canonical bytes. */
    unsigned char local_empty_placeholder;
} roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest;

# define ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIOREQUEST_MAX_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIOREQUEST_MIN_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIOREQUEST_CODEC_IDENTITY "UWVMROS1_edd78f1a2ed7ab9fc8541c8b5f0f9ff32713c949c03b66728ef7c41ed50a23da"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest_valid(roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest_wire_size(roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest const* value)
{
    size_t n = 0;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest_write_fields(roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest const* value,
                                                                                 unsigned char* p,
                                                                                 size_t* offset)
{
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest* value)
{
    return roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest_encode(roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest* value)
{
    roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 0u || length > 0u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIORESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIORESPONSE_0 != 0x51f0b928UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIORESPONSE_1 != 0x8d42c13dUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIORESPONSE_2 != 0x09ff47a0UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIORESPONSE_3 != 0x9c966eacUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIORESPONSE_4 != 0x6a339866UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIORESPONSE_5 != 0xdeb54eefUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIORESPONSE_6 != 0xf57af44aUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIORESPONSE_7 != 0x816f74c0UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIORESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIORESPONSE_0 0x51f0b928UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIORESPONSE_1 0x8d42c13dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIORESPONSE_2 0x09ff47a0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIORESPONSE_3 0x9c966eacUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIORESPONSE_4 0x6a339866UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIORESPONSE_5 0xdeb54eefUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIORESPONSE_6 0xf57af44aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIORESPONSE_7 0x816f74c0UL

/** @brief UTF-8 byte storage for xarm_msgs/GetDigitalIOResponse.message; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse_message_text;

/** @brief Complete ROS1 xarm_msgs/GetDigitalIOResponse value; no field projects away native data. */
typedef struct roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse
{
    /** @brief Declared field digital_1; canonical capacity is part of CODEC_IDENTITY. */
    int32_t digital_1;
    /** @brief Declared field digital_2; canonical capacity is part of CODEC_IDENTITY. */
    int32_t digital_2;
    /** @brief Declared field ret; canonical capacity is part of CODEC_IDENTITY. */
    int16_t ret;
    /** @brief Declared field message; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse_message_text message;
} roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse;

# define ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIORESPONSE_MAX_WIRE_BYTES 142u
# define ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIORESPONSE_MIN_WIRE_BYTES 14u
# define ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIORESPONSE_CODEC_IDENTITY "UWVMROS1_7b727d69650d14f14d18d42f2cf5157062d21b2edb1ff856c3d3545c971a07b2"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse_valid(roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse const* value)
{
    if(!value)
        return 0;
    if(value->message.size > 128u || !uwvm_bounded_utf8(value->message.data, value->message.size))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse_wire_size(roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse const* value)
{
    size_t n = 0;
    n += 4;
    n += 4;
    n += 2;
    n += 4 + value->message.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse_write_fields(roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse const* value,
                                                                                  unsigned char* p,
                                                                                  size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->digital_1, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->digital_2, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->ret, 2);
    *offset += 2;
    uwvm_bounded_put(p + *offset, value->message.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->message.data, value->message.size);
    *offset += value->message.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->digital_1, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->digital_2, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
        uwvm_bounded_copy(&value->ret, &bits, 2);
    }
    *offset += 2;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->message.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->message.size > 128u || value->message.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->message.data, p + *offset, value->message.size);
    *offset += value->message.size;
    return roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse_encode(roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse* value)
{
    roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 14u || length > 142u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETERRREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETERRREQUEST_0 != 0xb2f122b8UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETERRREQUEST_1 != 0xa82710bdUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETERRREQUEST_2 != 0x46e581efUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETERRREQUEST_3 != 0xab12bd68UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETERRREQUEST_4 != 0xbef842ddUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETERRREQUEST_5 != 0xf8561da5UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETERRREQUEST_6 != 0xd24e2dbaUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETERRREQUEST_7 != 0xb1785217UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETERRREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETERRREQUEST_0 0xb2f122b8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETERRREQUEST_1 0xa82710bdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETERRREQUEST_2 0x46e581efUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETERRREQUEST_3 0xab12bd68UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETERRREQUEST_4 0xbef842ddUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETERRREQUEST_5 0xf8561da5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETERRREQUEST_6 0xd24e2dbaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETERRREQUEST_7 0xb1785217UL

/** @brief Complete ROS1 xarm_msgs/GetErrRequest value; no field projects away native data. */
typedef struct roswasmc_bounded_1_xarm_msgs_GetErrRequest
{
    /** @brief Local C layout placeholder; empty native component has exactly zero canonical bytes. */
    unsigned char local_empty_placeholder;
} roswasmc_bounded_1_xarm_msgs_GetErrRequest;

# define ROSWASMC_BOUNDED_1_XARM_MSGS_GETERRREQUEST_MAX_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_1_XARM_MSGS_GETERRREQUEST_MIN_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_1_XARM_MSGS_GETERRREQUEST_CODEC_IDENTITY "UWVMROS1_80135f34c2643001ed9d387e3665176a01c44b651c9db7ca0d549472c7f2f531"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_xarm_msgs_GetErrRequest_valid(roswasmc_bounded_1_xarm_msgs_GetErrRequest const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_xarm_msgs_GetErrRequest_wire_size(roswasmc_bounded_1_xarm_msgs_GetErrRequest const* value)
{
    size_t n = 0;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_xarm_msgs_GetErrRequest_write_fields(roswasmc_bounded_1_xarm_msgs_GetErrRequest const* value, unsigned char* p, size_t* offset)
{
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_1_xarm_msgs_GetErrRequest_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_1_xarm_msgs_GetErrRequest* value)
{
    return roswasmc_bounded_1_xarm_msgs_GetErrRequest_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_1_xarm_msgs_GetErrRequest_encode(roswasmc_bounded_1_xarm_msgs_GetErrRequest const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_xarm_msgs_GetErrRequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_xarm_msgs_GetErrRequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_xarm_msgs_GetErrRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_xarm_msgs_GetErrRequest_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_GetErrRequest* value)
{
    roswasmc_bounded_1_xarm_msgs_GetErrRequest next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 0u || length > 0u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_xarm_msgs_GetErrRequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETERRRESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETERRRESPONSE_0 != 0xc4492f2cUL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETERRRESPONSE_1 != 0x52c74795UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETERRRESPONSE_2 != 0xdd14c9fcUL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETERRRESPONSE_3 != 0xa964d683UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETERRRESPONSE_4 != 0x0c8d5a79UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETERRRESPONSE_5 != 0xed00213cUL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETERRRESPONSE_6 != 0xa52711c7UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETERRRESPONSE_7 != 0xa1e3ce92UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETERRRESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETERRRESPONSE_0 0xc4492f2cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETERRRESPONSE_1 0x52c74795UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETERRRESPONSE_2 0xdd14c9fcUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETERRRESPONSE_3 0xa964d683UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETERRRESPONSE_4 0x0c8d5a79UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETERRRESPONSE_5 0xed00213cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETERRRESPONSE_6 0xa52711c7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETERRRESPONSE_7 0xa1e3ce92UL

/** @brief UTF-8 byte storage for xarm_msgs/GetErrResponse.message; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_xarm_msgs_GetErrResponse_message_text;

/** @brief Complete ROS1 xarm_msgs/GetErrResponse value; no field projects away native data. */
typedef struct roswasmc_bounded_1_xarm_msgs_GetErrResponse
{
    /** @brief Declared field err; canonical capacity is part of CODEC_IDENTITY. */
    int16_t err;
    /** @brief Declared field message; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_xarm_msgs_GetErrResponse_message_text message;
} roswasmc_bounded_1_xarm_msgs_GetErrResponse;

# define ROSWASMC_BOUNDED_1_XARM_MSGS_GETERRRESPONSE_MAX_WIRE_BYTES 134u
# define ROSWASMC_BOUNDED_1_XARM_MSGS_GETERRRESPONSE_MIN_WIRE_BYTES 6u
# define ROSWASMC_BOUNDED_1_XARM_MSGS_GETERRRESPONSE_CODEC_IDENTITY "UWVMROS1_4ea68a3d0983f04f6e7dada0885d456544ee4fa9ef0d2abc60a92cc18bda5037"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_xarm_msgs_GetErrResponse_valid(roswasmc_bounded_1_xarm_msgs_GetErrResponse const* value)
{
    if(!value)
        return 0;
    if(value->message.size > 128u || !uwvm_bounded_utf8(value->message.data, value->message.size))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_xarm_msgs_GetErrResponse_wire_size(roswasmc_bounded_1_xarm_msgs_GetErrResponse const* value)
{
    size_t n = 0;
    n += 2;
    n += 4 + value->message.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_xarm_msgs_GetErrResponse_write_fields(roswasmc_bounded_1_xarm_msgs_GetErrResponse const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->err, 2);
    *offset += 2;
    uwvm_bounded_put(p + *offset, value->message.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->message.data, value->message.size);
    *offset += value->message.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_xarm_msgs_GetErrResponse_read_fields(unsigned char const* p,
                                                                          size_t n,
                                                                          size_t* offset,
                                                                          roswasmc_bounded_1_xarm_msgs_GetErrResponse* value)
{
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
        uwvm_bounded_copy(&value->err, &bits, 2);
    }
    *offset += 2;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->message.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->message.size > 128u || value->message.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->message.data, p + *offset, value->message.size);
    *offset += value->message.size;
    return roswasmc_bounded_1_xarm_msgs_GetErrResponse_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_1_xarm_msgs_GetErrResponse_encode(roswasmc_bounded_1_xarm_msgs_GetErrResponse const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_xarm_msgs_GetErrResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_xarm_msgs_GetErrResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_xarm_msgs_GetErrResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_xarm_msgs_GetErrResponse_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_GetErrResponse* value)
{
    roswasmc_bounded_1_xarm_msgs_GetErrResponse next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 6u || length > 134u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_xarm_msgs_GetErrResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERCONFIGREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERCONFIGREQUEST_0 != 0xc6481edcUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERCONFIGREQUEST_1 != 0xdb9be494UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERCONFIGREQUEST_2 != 0x48c8a21eUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERCONFIGREQUEST_3 != 0x58157f1eUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERCONFIGREQUEST_4 != 0xf7d6f44dUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERCONFIGREQUEST_5 != 0x7fe85e00UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERCONFIGREQUEST_6 != 0x157a592aUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERCONFIGREQUEST_7 != 0x75e20fe0UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERCONFIGREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERCONFIGREQUEST_0 0xc6481edcUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERCONFIGREQUEST_1 0xdb9be494UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERCONFIGREQUEST_2 0x48c8a21eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERCONFIGREQUEST_3 0x58157f1eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERCONFIGREQUEST_4 0xf7d6f44dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERCONFIGREQUEST_5 0x7fe85e00UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERCONFIGREQUEST_6 0x157a592aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERCONFIGREQUEST_7 0x75e20fe0UL

/** @brief Complete ROS1 xarm_msgs/GripperConfigRequest value; no field projects away native data. */
typedef struct roswasmc_bounded_1_xarm_msgs_GripperConfigRequest
{
    /** @brief Declared field pulse_vel; canonical capacity is part of CODEC_IDENTITY. */
    float pulse_vel;
} roswasmc_bounded_1_xarm_msgs_GripperConfigRequest;

# define ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERCONFIGREQUEST_MAX_WIRE_BYTES 4u
# define ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERCONFIGREQUEST_MIN_WIRE_BYTES 4u
# define ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERCONFIGREQUEST_CODEC_IDENTITY "UWVMROS1_b82ba6fd59917a738ec433efd16f238d6538dfcaa3b6718f8f8fa1fa1d01c8c4"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_xarm_msgs_GripperConfigRequest_valid(roswasmc_bounded_1_xarm_msgs_GripperConfigRequest const* value)
{
    if(!value)
        return 0;
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->pulse_vel, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_xarm_msgs_GripperConfigRequest_wire_size(roswasmc_bounded_1_xarm_msgs_GripperConfigRequest const* value)
{
    size_t n = 0;
    n += 4;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_1_xarm_msgs_GripperConfigRequest_write_fields(roswasmc_bounded_1_xarm_msgs_GripperConfigRequest const* value,
                                                                                  unsigned char* p,
                                                                                  size_t* offset)
{
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->pulse_vel, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_xarm_msgs_GripperConfigRequest_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_1_xarm_msgs_GripperConfigRequest* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->pulse_vel, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_1_xarm_msgs_GripperConfigRequest_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_xarm_msgs_GripperConfigRequest_encode(roswasmc_bounded_1_xarm_msgs_GripperConfigRequest const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_xarm_msgs_GripperConfigRequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_xarm_msgs_GripperConfigRequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_xarm_msgs_GripperConfigRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_xarm_msgs_GripperConfigRequest_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_GripperConfigRequest* value)
{
    roswasmc_bounded_1_xarm_msgs_GripperConfigRequest next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 4u || length > 4u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_xarm_msgs_GripperConfigRequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERCONFIGRESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERCONFIGRESPONSE_0 != 0xda791abcUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERCONFIGRESPONSE_1 != 0xa38ef33fUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERCONFIGRESPONSE_2 != 0x11aeb014UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERCONFIGRESPONSE_3 != 0x8a048ecfUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERCONFIGRESPONSE_4 != 0x94d1508fUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERCONFIGRESPONSE_5 != 0x563b2d62UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERCONFIGRESPONSE_6 != 0x28360414UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERCONFIGRESPONSE_7 != 0xb620b3b4UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERCONFIGRESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERCONFIGRESPONSE_0 0xda791abcUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERCONFIGRESPONSE_1 0xa38ef33fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERCONFIGRESPONSE_2 0x11aeb014UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERCONFIGRESPONSE_3 0x8a048ecfUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERCONFIGRESPONSE_4 0x94d1508fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERCONFIGRESPONSE_5 0x563b2d62UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERCONFIGRESPONSE_6 0x28360414UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERCONFIGRESPONSE_7 0xb620b3b4UL

/** @brief UTF-8 byte storage for xarm_msgs/GripperConfigResponse.message; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_xarm_msgs_GripperConfigResponse_message_text;

/** @brief Complete ROS1 xarm_msgs/GripperConfigResponse value; no field projects away native data. */
typedef struct roswasmc_bounded_1_xarm_msgs_GripperConfigResponse
{
    /** @brief Declared field ret; canonical capacity is part of CODEC_IDENTITY. */
    int16_t ret;
    /** @brief Declared field message; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_xarm_msgs_GripperConfigResponse_message_text message;
} roswasmc_bounded_1_xarm_msgs_GripperConfigResponse;

# define ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERCONFIGRESPONSE_MAX_WIRE_BYTES 134u
# define ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERCONFIGRESPONSE_MIN_WIRE_BYTES 6u
# define ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERCONFIGRESPONSE_CODEC_IDENTITY "UWVMROS1_5e74e8890eda1059018d78fd4bddd8ae8154115268ee6197ef9369397f82dbb5"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_xarm_msgs_GripperConfigResponse_valid(roswasmc_bounded_1_xarm_msgs_GripperConfigResponse const* value)
{
    if(!value)
        return 0;
    if(value->message.size > 128u || !uwvm_bounded_utf8(value->message.data, value->message.size))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_xarm_msgs_GripperConfigResponse_wire_size(roswasmc_bounded_1_xarm_msgs_GripperConfigResponse const* value)
{
    size_t n = 0;
    n += 2;
    n += 4 + value->message.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_1_xarm_msgs_GripperConfigResponse_write_fields(roswasmc_bounded_1_xarm_msgs_GripperConfigResponse const* value,
                                                                                   unsigned char* p,
                                                                                   size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->ret, 2);
    *offset += 2;
    uwvm_bounded_put(p + *offset, value->message.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->message.data, value->message.size);
    *offset += value->message.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_xarm_msgs_GripperConfigResponse_read_fields(unsigned char const* p,
                                                                                 size_t n,
                                                                                 size_t* offset,
                                                                                 roswasmc_bounded_1_xarm_msgs_GripperConfigResponse* value)
{
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
        uwvm_bounded_copy(&value->ret, &bits, 2);
    }
    *offset += 2;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->message.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->message.size > 128u || value->message.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->message.data, p + *offset, value->message.size);
    *offset += value->message.size;
    return roswasmc_bounded_1_xarm_msgs_GripperConfigResponse_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_xarm_msgs_GripperConfigResponse_encode(roswasmc_bounded_1_xarm_msgs_GripperConfigResponse const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_xarm_msgs_GripperConfigResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_xarm_msgs_GripperConfigResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_xarm_msgs_GripperConfigResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_xarm_msgs_GripperConfigResponse_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_GripperConfigResponse* value)
{
    roswasmc_bounded_1_xarm_msgs_GripperConfigResponse next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 6u || length > 134u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_xarm_msgs_GripperConfigResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERMOVEREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERMOVEREQUEST_0 != 0x143df9d9UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERMOVEREQUEST_1 != 0x9b60cea2UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERMOVEREQUEST_2 != 0xb26ea630UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERMOVEREQUEST_3 != 0xaf732f8bUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERMOVEREQUEST_4 != 0xc0189c86UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERMOVEREQUEST_5 != 0x495742a3UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERMOVEREQUEST_6 != 0xa202fffeUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERMOVEREQUEST_7 != 0x30e1e8e1UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERMOVEREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERMOVEREQUEST_0 0x143df9d9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERMOVEREQUEST_1 0x9b60cea2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERMOVEREQUEST_2 0xb26ea630UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERMOVEREQUEST_3 0xaf732f8bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERMOVEREQUEST_4 0xc0189c86UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERMOVEREQUEST_5 0x495742a3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERMOVEREQUEST_6 0xa202fffeUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERMOVEREQUEST_7 0x30e1e8e1UL

/** @brief Complete ROS1 xarm_msgs/GripperMoveRequest value; no field projects away native data. */
typedef struct roswasmc_bounded_1_xarm_msgs_GripperMoveRequest
{
    /** @brief Declared field pulse_pos; canonical capacity is part of CODEC_IDENTITY. */
    float pulse_pos;
} roswasmc_bounded_1_xarm_msgs_GripperMoveRequest;

# define ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERMOVEREQUEST_MAX_WIRE_BYTES 4u
# define ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERMOVEREQUEST_MIN_WIRE_BYTES 4u
# define ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERMOVEREQUEST_CODEC_IDENTITY "UWVMROS1_cd6b6852054385df9f6a65c12f8d887adbb1e5d01e9ba5367fef38c738ffbae2"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_xarm_msgs_GripperMoveRequest_valid(roswasmc_bounded_1_xarm_msgs_GripperMoveRequest const* value)
{
    if(!value)
        return 0;
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->pulse_pos, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_xarm_msgs_GripperMoveRequest_wire_size(roswasmc_bounded_1_xarm_msgs_GripperMoveRequest const* value)
{
    size_t n = 0;
    n += 4;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_xarm_msgs_GripperMoveRequest_write_fields(roswasmc_bounded_1_xarm_msgs_GripperMoveRequest const* value, unsigned char* p, size_t* offset)
{
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->pulse_pos, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_xarm_msgs_GripperMoveRequest_read_fields(unsigned char const* p,
                                                                              size_t n,
                                                                              size_t* offset,
                                                                              roswasmc_bounded_1_xarm_msgs_GripperMoveRequest* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->pulse_pos, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_1_xarm_msgs_GripperMoveRequest_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_xarm_msgs_GripperMoveRequest_encode(roswasmc_bounded_1_xarm_msgs_GripperMoveRequest const* value,
                                                                              void* output,
                                                                              size_t capacity,
                                                                              size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_xarm_msgs_GripperMoveRequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_xarm_msgs_GripperMoveRequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_xarm_msgs_GripperMoveRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_xarm_msgs_GripperMoveRequest_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_GripperMoveRequest* value)
{
    roswasmc_bounded_1_xarm_msgs_GripperMoveRequest next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 4u || length > 4u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_xarm_msgs_GripperMoveRequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERMOVERESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERMOVERESPONSE_0 != 0xf41d44d1UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERMOVERESPONSE_1 != 0xb6d4e7b8UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERMOVERESPONSE_2 != 0x99b5b4ccUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERMOVERESPONSE_3 != 0x47af893fUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERMOVERESPONSE_4 != 0xece69a42UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERMOVERESPONSE_5 != 0x9d4599b7UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERMOVERESPONSE_6 != 0x96ed44fbUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERMOVERESPONSE_7 != 0x89d9c567UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERMOVERESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERMOVERESPONSE_0 0xf41d44d1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERMOVERESPONSE_1 0xb6d4e7b8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERMOVERESPONSE_2 0x99b5b4ccUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERMOVERESPONSE_3 0x47af893fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERMOVERESPONSE_4 0xece69a42UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERMOVERESPONSE_5 0x9d4599b7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERMOVERESPONSE_6 0x96ed44fbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERMOVERESPONSE_7 0x89d9c567UL

/** @brief UTF-8 byte storage for xarm_msgs/GripperMoveResponse.message; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_xarm_msgs_GripperMoveResponse_message_text;

/** @brief Complete ROS1 xarm_msgs/GripperMoveResponse value; no field projects away native data. */
typedef struct roswasmc_bounded_1_xarm_msgs_GripperMoveResponse
{
    /** @brief Declared field ret; canonical capacity is part of CODEC_IDENTITY. */
    int16_t ret;
    /** @brief Declared field message; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_xarm_msgs_GripperMoveResponse_message_text message;
} roswasmc_bounded_1_xarm_msgs_GripperMoveResponse;

# define ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERMOVERESPONSE_MAX_WIRE_BYTES 134u
# define ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERMOVERESPONSE_MIN_WIRE_BYTES 6u
# define ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERMOVERESPONSE_CODEC_IDENTITY "UWVMROS1_2802739906ad3231f0f4e2a60340dda1a5459be25907d68f4981e62faa6b2998"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_xarm_msgs_GripperMoveResponse_valid(roswasmc_bounded_1_xarm_msgs_GripperMoveResponse const* value)
{
    if(!value)
        return 0;
    if(value->message.size > 128u || !uwvm_bounded_utf8(value->message.data, value->message.size))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_xarm_msgs_GripperMoveResponse_wire_size(roswasmc_bounded_1_xarm_msgs_GripperMoveResponse const* value)
{
    size_t n = 0;
    n += 2;
    n += 4 + value->message.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_1_xarm_msgs_GripperMoveResponse_write_fields(roswasmc_bounded_1_xarm_msgs_GripperMoveResponse const* value,
                                                                                 unsigned char* p,
                                                                                 size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->ret, 2);
    *offset += 2;
    uwvm_bounded_put(p + *offset, value->message.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->message.data, value->message.size);
    *offset += value->message.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_xarm_msgs_GripperMoveResponse_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_1_xarm_msgs_GripperMoveResponse* value)
{
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
        uwvm_bounded_copy(&value->ret, &bits, 2);
    }
    *offset += 2;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->message.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->message.size > 128u || value->message.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->message.data, p + *offset, value->message.size);
    *offset += value->message.size;
    return roswasmc_bounded_1_xarm_msgs_GripperMoveResponse_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_xarm_msgs_GripperMoveResponse_encode(roswasmc_bounded_1_xarm_msgs_GripperMoveResponse const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_xarm_msgs_GripperMoveResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_xarm_msgs_GripperMoveResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_xarm_msgs_GripperMoveResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_xarm_msgs_GripperMoveResponse_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_GripperMoveResponse* value)
{
    roswasmc_bounded_1_xarm_msgs_GripperMoveResponse next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 6u || length > 134u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_xarm_msgs_GripperMoveResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERSTATEREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERSTATEREQUEST_0 != 0x2067555dUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERSTATEREQUEST_1 != 0xf1699fb8UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERSTATEREQUEST_2 != 0x512896bdUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERSTATEREQUEST_3 != 0xf8d32b3dUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERSTATEREQUEST_4 != 0xd734d294UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERSTATEREQUEST_5 != 0x8cfecf0eUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERSTATEREQUEST_6 != 0x9f362e8cUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERSTATEREQUEST_7 != 0x78545d47UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERSTATEREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERSTATEREQUEST_0 0x2067555dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERSTATEREQUEST_1 0xf1699fb8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERSTATEREQUEST_2 0x512896bdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERSTATEREQUEST_3 0xf8d32b3dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERSTATEREQUEST_4 0xd734d294UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERSTATEREQUEST_5 0x8cfecf0eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERSTATEREQUEST_6 0x9f362e8cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERSTATEREQUEST_7 0x78545d47UL

/** @brief Complete ROS1 xarm_msgs/GripperStateRequest value; no field projects away native data. */
typedef struct roswasmc_bounded_1_xarm_msgs_GripperStateRequest
{
    /** @brief Local C layout placeholder; empty native component has exactly zero canonical bytes. */
    unsigned char local_empty_placeholder;
} roswasmc_bounded_1_xarm_msgs_GripperStateRequest;

# define ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERSTATEREQUEST_MAX_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERSTATEREQUEST_MIN_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERSTATEREQUEST_CODEC_IDENTITY "UWVMROS1_96f47b84fe0876daf4cfb6cb46df97783ba7d38a4b3cef749e699d029db59d5d"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_xarm_msgs_GripperStateRequest_valid(roswasmc_bounded_1_xarm_msgs_GripperStateRequest const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_xarm_msgs_GripperStateRequest_wire_size(roswasmc_bounded_1_xarm_msgs_GripperStateRequest const* value)
{
    size_t n = 0;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_1_xarm_msgs_GripperStateRequest_write_fields(roswasmc_bounded_1_xarm_msgs_GripperStateRequest const* value,
                                                                                 unsigned char* p,
                                                                                 size_t* offset)
{
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_xarm_msgs_GripperStateRequest_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_1_xarm_msgs_GripperStateRequest* value)
{
    return roswasmc_bounded_1_xarm_msgs_GripperStateRequest_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_xarm_msgs_GripperStateRequest_encode(roswasmc_bounded_1_xarm_msgs_GripperStateRequest const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_xarm_msgs_GripperStateRequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_xarm_msgs_GripperStateRequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_xarm_msgs_GripperStateRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_xarm_msgs_GripperStateRequest_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_GripperStateRequest* value)
{
    roswasmc_bounded_1_xarm_msgs_GripperStateRequest next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 0u || length > 0u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_xarm_msgs_GripperStateRequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERSTATERESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERSTATERESPONSE_0 != 0xcdc2c534UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERSTATERESPONSE_1 != 0x07e4e145UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERSTATERESPONSE_2 != 0x6673c4f7UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERSTATERESPONSE_3 != 0x614f3ceaUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERSTATERESPONSE_4 != 0x231522b0UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERSTATERESPONSE_5 != 0x163fa35cUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERSTATERESPONSE_6 != 0x30640a1fUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERSTATERESPONSE_7 != 0xd97ebad9UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERSTATERESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERSTATERESPONSE_0 0xcdc2c534UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERSTATERESPONSE_1 0x07e4e145UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERSTATERESPONSE_2 0x6673c4f7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERSTATERESPONSE_3 0x614f3ceaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERSTATERESPONSE_4 0x231522b0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERSTATERESPONSE_5 0x163fa35cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERSTATERESPONSE_6 0x30640a1fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERSTATERESPONSE_7 0xd97ebad9UL

/** @brief Complete ROS1 xarm_msgs/GripperStateResponse value; no field projects away native data. */
typedef struct roswasmc_bounded_1_xarm_msgs_GripperStateResponse
{
    /** @brief Declared field curr_pos; canonical capacity is part of CODEC_IDENTITY. */
    float curr_pos;
    /** @brief Declared field err_code; canonical capacity is part of CODEC_IDENTITY. */
    int16_t err_code;
} roswasmc_bounded_1_xarm_msgs_GripperStateResponse;

# define ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERSTATERESPONSE_MAX_WIRE_BYTES 6u
# define ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERSTATERESPONSE_MIN_WIRE_BYTES 6u
# define ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERSTATERESPONSE_CODEC_IDENTITY "UWVMROS1_781669bd7ab4a0189b137cf07ab98b3382f17ad088a8818616caeaa70e27a0e4"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_xarm_msgs_GripperStateResponse_valid(roswasmc_bounded_1_xarm_msgs_GripperStateResponse const* value)
{
    if(!value)
        return 0;
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->curr_pos, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_xarm_msgs_GripperStateResponse_wire_size(roswasmc_bounded_1_xarm_msgs_GripperStateResponse const* value)
{
    size_t n = 0;
    n += 4;
    n += 2;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_1_xarm_msgs_GripperStateResponse_write_fields(roswasmc_bounded_1_xarm_msgs_GripperStateResponse const* value,
                                                                                  unsigned char* p,
                                                                                  size_t* offset)
{
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->curr_pos, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->err_code, 2);
    *offset += 2;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_xarm_msgs_GripperStateResponse_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_1_xarm_msgs_GripperStateResponse* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->curr_pos, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
        uwvm_bounded_copy(&value->err_code, &bits, 2);
    }
    *offset += 2;
    return roswasmc_bounded_1_xarm_msgs_GripperStateResponse_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_xarm_msgs_GripperStateResponse_encode(roswasmc_bounded_1_xarm_msgs_GripperStateResponse const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_xarm_msgs_GripperStateResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_xarm_msgs_GripperStateResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_xarm_msgs_GripperStateResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_xarm_msgs_GripperStateResponse_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_GripperStateResponse* value)
{
    roswasmc_bounded_1_xarm_msgs_GripperStateResponse next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 6u || length > 6u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_xarm_msgs_GripperStateResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_IOSTATE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_IOSTATE_0 != 0xaeb351e4UL ||                                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_IOSTATE_1 != 0xd75d31bdUL ||                                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_IOSTATE_2 != 0x6d57a420UL ||                                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_IOSTATE_3 != 0xcb876877UL ||                                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_IOSTATE_4 != 0xc94efe67UL ||                                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_IOSTATE_5 != 0x6201eda4UL ||                                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_IOSTATE_6 != 0xbaa7eb19UL ||                                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_IOSTATE_7 != 0x311110f5UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_IOSTATE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_IOSTATE_0 0xaeb351e4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_IOSTATE_1 0xd75d31bdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_IOSTATE_2 0x6d57a420UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_IOSTATE_3 0xcb876877UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_IOSTATE_4 0xc94efe67UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_IOSTATE_5 0x6201eda4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_IOSTATE_6 0xbaa7eb19UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_IOSTATE_7 0x311110f5UL

/** @brief Complete ROS1 xarm_msgs/IOState value; no field projects away native data. */
typedef struct roswasmc_bounded_1_xarm_msgs_IOState
{
    /** @brief Declared field digital_1; canonical capacity is part of CODEC_IDENTITY. */
    int32_t digital_1;
    /** @brief Declared field digital_2; canonical capacity is part of CODEC_IDENTITY. */
    int32_t digital_2;
    /** @brief Declared field analog_1; canonical capacity is part of CODEC_IDENTITY. */
    float analog_1;
    /** @brief Declared field analog_2; canonical capacity is part of CODEC_IDENTITY. */
    float analog_2;
} roswasmc_bounded_1_xarm_msgs_IOState;

# define ROSWASMC_BOUNDED_1_XARM_MSGS_IOSTATE_MAX_WIRE_BYTES 16u
# define ROSWASMC_BOUNDED_1_XARM_MSGS_IOSTATE_MIN_WIRE_BYTES 16u
# define ROSWASMC_BOUNDED_1_XARM_MSGS_IOSTATE_CODEC_IDENTITY "UWVMROS1_93ef0c71a5fed6eaa7c8e87447b280778ffd05c376cf41a577c71acfeb02d996"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_xarm_msgs_IOState_valid(roswasmc_bounded_1_xarm_msgs_IOState const* value)
{
    if(!value)
        return 0;
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->analog_1, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->analog_2, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_xarm_msgs_IOState_wire_size(roswasmc_bounded_1_xarm_msgs_IOState const* value)
{
    size_t n = 0;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_1_xarm_msgs_IOState_write_fields(roswasmc_bounded_1_xarm_msgs_IOState const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->digital_1, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->digital_2, 4);
    *offset += 4;
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->analog_1, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->analog_2, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_1_xarm_msgs_IOState_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_1_xarm_msgs_IOState* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->digital_1, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->digital_2, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->analog_1, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->analog_2, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_1_xarm_msgs_IOState_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_1_xarm_msgs_IOState_encode(roswasmc_bounded_1_xarm_msgs_IOState const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_xarm_msgs_IOState_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_xarm_msgs_IOState_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_xarm_msgs_IOState_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_xarm_msgs_IOState_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_IOState* value)
{
    roswasmc_bounded_1_xarm_msgs_IOState next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 16u || length > 16u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_xarm_msgs_IOState_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVEREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVEREQUEST_0 != 0xf3e04d52UL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVEREQUEST_1 != 0x835f182dUL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVEREQUEST_2 != 0x61c1847cUL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVEREQUEST_3 != 0x71c38591UL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVEREQUEST_4 != 0x995f8d3cUL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVEREQUEST_5 != 0x7d1307e7UL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVEREQUEST_6 != 0x8ed7ac82UL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVEREQUEST_7 != 0x1081f777UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVEREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVEREQUEST_0 0xf3e04d52UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVEREQUEST_1 0x835f182dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVEREQUEST_2 0x61c1847cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVEREQUEST_3 0x71c38591UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVEREQUEST_4 0x995f8d3cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVEREQUEST_5 0x7d1307e7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVEREQUEST_6 0x8ed7ac82UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVEREQUEST_7 0x1081f777UL

/** @brief At most16 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    float data[16];
} roswasmc_bounded_1_xarm_msgs_MoveRequest_pose_sequence;

/** @brief Complete ROS1 xarm_msgs/MoveRequest value; no field projects away native data. */
typedef struct roswasmc_bounded_1_xarm_msgs_MoveRequest
{
    /** @brief Declared field pose; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_xarm_msgs_MoveRequest_pose_sequence pose;
    /** @brief Declared field mvvelo; canonical capacity is part of CODEC_IDENTITY. */
    float mvvelo;
    /** @brief Declared field mvacc; canonical capacity is part of CODEC_IDENTITY. */
    float mvacc;
    /** @brief Declared field mvtime; canonical capacity is part of CODEC_IDENTITY. */
    float mvtime;
    /** @brief Declared field mvradii; canonical capacity is part of CODEC_IDENTITY. */
    float mvradii;
} roswasmc_bounded_1_xarm_msgs_MoveRequest;

# define ROSWASMC_BOUNDED_1_XARM_MSGS_MOVEREQUEST_MAX_WIRE_BYTES 84u
# define ROSWASMC_BOUNDED_1_XARM_MSGS_MOVEREQUEST_MIN_WIRE_BYTES 20u
# define ROSWASMC_BOUNDED_1_XARM_MSGS_MOVEREQUEST_CODEC_IDENTITY "UWVMROS1_b0e6f307ca9a12c92e3b2a6acbc79b0aba223e67788a060e5dc443240c9235e5"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_xarm_msgs_MoveRequest_valid(roswasmc_bounded_1_xarm_msgs_MoveRequest const* value)
{
    if(!value)
        return 0;
    if(value->pose.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->pose.size; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->pose.data[i], 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                    return 0;
            }
        }
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->mvvelo, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->mvacc, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->mvtime, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->mvradii, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_xarm_msgs_MoveRequest_wire_size(roswasmc_bounded_1_xarm_msgs_MoveRequest const* value)
{
    size_t n = 0;
    n += 4;
    if(value->pose.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->pose.size; ++i)
        {
            n += 4;
        }
    }
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_xarm_msgs_MoveRequest_write_fields(roswasmc_bounded_1_xarm_msgs_MoveRequest const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->pose.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->pose.size; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->pose.data[i], 4);
                uwvm_bounded_put(p + *offset, bits, 4);
                *offset += 4;
            }
        }
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->mvvelo, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->mvacc, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->mvtime, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->mvradii, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_1_xarm_msgs_MoveRequest_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_1_xarm_msgs_MoveRequest* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    value->pose.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->pose.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->pose.size; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->pose.data[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->mvvelo, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->mvacc, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->mvtime, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->mvradii, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_1_xarm_msgs_MoveRequest_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_1_xarm_msgs_MoveRequest_encode(roswasmc_bounded_1_xarm_msgs_MoveRequest const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_xarm_msgs_MoveRequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_xarm_msgs_MoveRequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_xarm_msgs_MoveRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_xarm_msgs_MoveRequest_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_MoveRequest* value)
{
    roswasmc_bounded_1_xarm_msgs_MoveRequest next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 20u || length > 84u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_xarm_msgs_MoveRequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVERESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVERESPONSE_0 != 0x58708e25UL ||                                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVERESPONSE_1 != 0x2851729eUL ||                                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVERESPONSE_2 != 0x83180eb0UL ||                                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVERESPONSE_3 != 0xd26789cdUL ||                                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVERESPONSE_4 != 0x0e06515eUL ||                                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVERESPONSE_5 != 0x3ac0d563UL ||                                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVERESPONSE_6 != 0xfd29245dUL ||                                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVERESPONSE_7 != 0xfacb0aa6UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVERESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVERESPONSE_0 0x58708e25UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVERESPONSE_1 0x2851729eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVERESPONSE_2 0x83180eb0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVERESPONSE_3 0xd26789cdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVERESPONSE_4 0x0e06515eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVERESPONSE_5 0x3ac0d563UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVERESPONSE_6 0xfd29245dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVERESPONSE_7 0xfacb0aa6UL

/** @brief UTF-8 byte storage for xarm_msgs/MoveResponse.message; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_xarm_msgs_MoveResponse_message_text;

/** @brief Complete ROS1 xarm_msgs/MoveResponse value; no field projects away native data. */
typedef struct roswasmc_bounded_1_xarm_msgs_MoveResponse
{
    /** @brief Declared field ret; canonical capacity is part of CODEC_IDENTITY. */
    int16_t ret;
    /** @brief Declared field message; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_xarm_msgs_MoveResponse_message_text message;
} roswasmc_bounded_1_xarm_msgs_MoveResponse;

# define ROSWASMC_BOUNDED_1_XARM_MSGS_MOVERESPONSE_MAX_WIRE_BYTES 134u
# define ROSWASMC_BOUNDED_1_XARM_MSGS_MOVERESPONSE_MIN_WIRE_BYTES 6u
# define ROSWASMC_BOUNDED_1_XARM_MSGS_MOVERESPONSE_CODEC_IDENTITY "UWVMROS1_5ebf8749e513dcb301f91344890ee5d60e5a8e60fab37dbfe88360f68ba0b658"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_xarm_msgs_MoveResponse_valid(roswasmc_bounded_1_xarm_msgs_MoveResponse const* value)
{
    if(!value)
        return 0;
    if(value->message.size > 128u || !uwvm_bounded_utf8(value->message.data, value->message.size))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_xarm_msgs_MoveResponse_wire_size(roswasmc_bounded_1_xarm_msgs_MoveResponse const* value)
{
    size_t n = 0;
    n += 2;
    n += 4 + value->message.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_xarm_msgs_MoveResponse_write_fields(roswasmc_bounded_1_xarm_msgs_MoveResponse const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->ret, 2);
    *offset += 2;
    uwvm_bounded_put(p + *offset, value->message.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->message.data, value->message.size);
    *offset += value->message.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_1_xarm_msgs_MoveResponse_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_1_xarm_msgs_MoveResponse* value)
{
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
        uwvm_bounded_copy(&value->ret, &bits, 2);
    }
    *offset += 2;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->message.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->message.size > 128u || value->message.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->message.data, p + *offset, value->message.size);
    *offset += value->message.size;
    return roswasmc_bounded_1_xarm_msgs_MoveResponse_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_1_xarm_msgs_MoveResponse_encode(roswasmc_bounded_1_xarm_msgs_MoveResponse const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_xarm_msgs_MoveResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_xarm_msgs_MoveResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_xarm_msgs_MoveResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_xarm_msgs_MoveResponse_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_MoveResponse* value)
{
    roswasmc_bounded_1_xarm_msgs_MoveResponse next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 6u || length > 134u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_xarm_msgs_MoveResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_ROBOTMSG)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_ROBOTMSG_0 != 0x821f537cUL ||                                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_ROBOTMSG_1 != 0xe8a792c7UL ||                                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_ROBOTMSG_2 != 0xf627c589UL ||                                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_ROBOTMSG_3 != 0x3b780278UL ||                                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_ROBOTMSG_4 != 0x3035b4f2UL ||                                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_ROBOTMSG_5 != 0x1d52baa8UL ||                                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_ROBOTMSG_6 != 0xc79c4fb4UL ||                                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_ROBOTMSG_7 != 0xbff06387UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_ROBOTMSG 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_ROBOTMSG_0 0x821f537cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_ROBOTMSG_1 0xe8a792c7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_ROBOTMSG_2 0xf627c589UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_ROBOTMSG_3 0x3b780278UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_ROBOTMSG_4 0x3035b4f2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_ROBOTMSG_5 0x1d52baa8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_ROBOTMSG_6 0xc79c4fb4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_ROBOTMSG_7 0xbff06387UL

/** @brief At most16 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    float data[16];
} roswasmc_bounded_1_xarm_msgs_RobotMsg_angle_sequence;

/** @brief Complete ROS1 xarm_msgs/RobotMsg value; no field projects away native data. */
typedef struct roswasmc_bounded_1_xarm_msgs_RobotMsg
{
    /** @brief Declared field state; canonical capacity is part of CODEC_IDENTITY. */
    int16_t state;
    /** @brief Declared field mode; canonical capacity is part of CODEC_IDENTITY. */
    int16_t mode;
    /** @brief Declared field cmdnum; canonical capacity is part of CODEC_IDENTITY. */
    int16_t cmdnum;
    /** @brief Declared field mt_brake; canonical capacity is part of CODEC_IDENTITY. */
    int16_t mt_brake;
    /** @brief Declared field mt_able; canonical capacity is part of CODEC_IDENTITY. */
    int16_t mt_able;
    /** @brief Declared field err; canonical capacity is part of CODEC_IDENTITY. */
    int16_t err;
    /** @brief Declared field warn; canonical capacity is part of CODEC_IDENTITY. */
    int16_t warn;
    /** @brief Declared field angle; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_xarm_msgs_RobotMsg_angle_sequence angle;
    /** @brief Declared field pose; canonical capacity is part of CODEC_IDENTITY. */
    float pose[6];
    /** @brief Declared field offset; canonical capacity is part of CODEC_IDENTITY. */
    float offset[6];
} roswasmc_bounded_1_xarm_msgs_RobotMsg;

# define ROSWASMC_BOUNDED_1_XARM_MSGS_ROBOTMSG_MAX_WIRE_BYTES 130u
# define ROSWASMC_BOUNDED_1_XARM_MSGS_ROBOTMSG_MIN_WIRE_BYTES 66u
# define ROSWASMC_BOUNDED_1_XARM_MSGS_ROBOTMSG_CODEC_IDENTITY "UWVMROS1_0e645cbe57caece23f38f4a23ca610d3be2f4367841c2f493317d23b39df9e41"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_xarm_msgs_RobotMsg_valid(roswasmc_bounded_1_xarm_msgs_RobotMsg const* value)
{
    if(!value)
        return 0;
    if(value->angle.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->angle.size; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->angle.data[i], 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                    return 0;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->pose[i], 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                    return 0;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->offset[i], 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                    return 0;
            }
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_xarm_msgs_RobotMsg_wire_size(roswasmc_bounded_1_xarm_msgs_RobotMsg const* value)
{
    size_t n = 0;
    n += 2;
    n += 2;
    n += 2;
    n += 2;
    n += 2;
    n += 2;
    n += 2;
    n += 4;
    if(value->angle.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->angle.size; ++i)
        {
            n += 4;
        }
    }
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            n += 4;
        }
    }
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            n += 4;
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_1_xarm_msgs_RobotMsg_write_fields(roswasmc_bounded_1_xarm_msgs_RobotMsg const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->state, 2);
    *offset += 2;
    uwvm_bounded_put(p + *offset, (uint64_t)value->mode, 2);
    *offset += 2;
    uwvm_bounded_put(p + *offset, (uint64_t)value->cmdnum, 2);
    *offset += 2;
    uwvm_bounded_put(p + *offset, (uint64_t)value->mt_brake, 2);
    *offset += 2;
    uwvm_bounded_put(p + *offset, (uint64_t)value->mt_able, 2);
    *offset += 2;
    uwvm_bounded_put(p + *offset, (uint64_t)value->err, 2);
    *offset += 2;
    uwvm_bounded_put(p + *offset, (uint64_t)value->warn, 2);
    *offset += 2;
    uwvm_bounded_put(p + *offset, value->angle.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->angle.size; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->angle.data[i], 4);
                uwvm_bounded_put(p + *offset, bits, 4);
                *offset += 4;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->pose[i], 4);
                uwvm_bounded_put(p + *offset, bits, 4);
                *offset += 4;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->offset[i], 4);
                uwvm_bounded_put(p + *offset, bits, 4);
                *offset += 4;
            }
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_1_xarm_msgs_RobotMsg_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_1_xarm_msgs_RobotMsg* value)
{
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
        uwvm_bounded_copy(&value->state, &bits, 2);
    }
    *offset += 2;
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
        uwvm_bounded_copy(&value->mode, &bits, 2);
    }
    *offset += 2;
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
        uwvm_bounded_copy(&value->cmdnum, &bits, 2);
    }
    *offset += 2;
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
        uwvm_bounded_copy(&value->mt_brake, &bits, 2);
    }
    *offset += 2;
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
        uwvm_bounded_copy(&value->mt_able, &bits, 2);
    }
    *offset += 2;
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
        uwvm_bounded_copy(&value->err, &bits, 2);
    }
    *offset += 2;
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
        uwvm_bounded_copy(&value->warn, &bits, 2);
    }
    *offset += 2;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->angle.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->angle.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->angle.size; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->angle.data[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->pose[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->offset[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    return roswasmc_bounded_1_xarm_msgs_RobotMsg_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_1_xarm_msgs_RobotMsg_encode(roswasmc_bounded_1_xarm_msgs_RobotMsg const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_xarm_msgs_RobotMsg_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_xarm_msgs_RobotMsg_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_xarm_msgs_RobotMsg_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_xarm_msgs_RobotMsg_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_RobotMsg* value)
{
    roswasmc_bounded_1_xarm_msgs_RobotMsg next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 66u || length > 130u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_xarm_msgs_RobotMsg_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISREQUEST_0 != 0x1e677929UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISREQUEST_1 != 0x475d68f6UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISREQUEST_2 != 0x27670082UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISREQUEST_3 != 0x61f6d61bUL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISREQUEST_4 != 0xc24ef7b2UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISREQUEST_5 != 0x719166f2UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISREQUEST_6 != 0x5c75bbf6UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISREQUEST_7 != 0x9071b8b2UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISREQUEST_0 0x1e677929UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISREQUEST_1 0x475d68f6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISREQUEST_2 0x27670082UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISREQUEST_3 0x61f6d61bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISREQUEST_4 0xc24ef7b2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISREQUEST_5 0x719166f2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISREQUEST_6 0x5c75bbf6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISREQUEST_7 0x9071b8b2UL

/** @brief Complete ROS1 xarm_msgs/SetAxisRequest value; no field projects away native data. */
typedef struct roswasmc_bounded_1_xarm_msgs_SetAxisRequest
{
    /** @brief Declared field id; canonical capacity is part of CODEC_IDENTITY. */
    int16_t id;
    /** @brief Declared field data; canonical capacity is part of CODEC_IDENTITY. */
    int16_t data;
} roswasmc_bounded_1_xarm_msgs_SetAxisRequest;

# define ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISREQUEST_MAX_WIRE_BYTES 4u
# define ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISREQUEST_MIN_WIRE_BYTES 4u
# define ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISREQUEST_CODEC_IDENTITY "UWVMROS1_e9c45f00c83898744975890928756584b0646cf287024b3cb841380c368639f6"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_xarm_msgs_SetAxisRequest_valid(roswasmc_bounded_1_xarm_msgs_SetAxisRequest const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_xarm_msgs_SetAxisRequest_wire_size(roswasmc_bounded_1_xarm_msgs_SetAxisRequest const* value)
{
    size_t n = 0;
    n += 2;
    n += 2;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_xarm_msgs_SetAxisRequest_write_fields(roswasmc_bounded_1_xarm_msgs_SetAxisRequest const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->id, 2);
    *offset += 2;
    uwvm_bounded_put(p + *offset, (uint64_t)value->data, 2);
    *offset += 2;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_xarm_msgs_SetAxisRequest_read_fields(unsigned char const* p,
                                                                          size_t n,
                                                                          size_t* offset,
                                                                          roswasmc_bounded_1_xarm_msgs_SetAxisRequest* value)
{
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
        uwvm_bounded_copy(&value->id, &bits, 2);
    }
    *offset += 2;
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
        uwvm_bounded_copy(&value->data, &bits, 2);
    }
    *offset += 2;
    return roswasmc_bounded_1_xarm_msgs_SetAxisRequest_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_1_xarm_msgs_SetAxisRequest_encode(roswasmc_bounded_1_xarm_msgs_SetAxisRequest const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_xarm_msgs_SetAxisRequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_xarm_msgs_SetAxisRequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_xarm_msgs_SetAxisRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_xarm_msgs_SetAxisRequest_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_SetAxisRequest* value)
{
    roswasmc_bounded_1_xarm_msgs_SetAxisRequest next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 4u || length > 4u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_xarm_msgs_SetAxisRequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISRESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISRESPONSE_0 != 0x62dca77fUL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISRESPONSE_1 != 0xb5d52c51UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISRESPONSE_2 != 0xbff69400UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISRESPONSE_3 != 0x3e077cdfUL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISRESPONSE_4 != 0x2a3f829dUL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISRESPONSE_5 != 0x92ad8924UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISRESPONSE_6 != 0x9898cd66UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISRESPONSE_7 != 0x32bef065UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISRESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISRESPONSE_0 0x62dca77fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISRESPONSE_1 0xb5d52c51UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISRESPONSE_2 0xbff69400UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISRESPONSE_3 0x3e077cdfUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISRESPONSE_4 0x2a3f829dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISRESPONSE_5 0x92ad8924UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISRESPONSE_6 0x9898cd66UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISRESPONSE_7 0x32bef065UL

/** @brief UTF-8 byte storage for xarm_msgs/SetAxisResponse.message; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_xarm_msgs_SetAxisResponse_message_text;

/** @brief Complete ROS1 xarm_msgs/SetAxisResponse value; no field projects away native data. */
typedef struct roswasmc_bounded_1_xarm_msgs_SetAxisResponse
{
    /** @brief Declared field ret; canonical capacity is part of CODEC_IDENTITY. */
    int16_t ret;
    /** @brief Declared field message; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_xarm_msgs_SetAxisResponse_message_text message;
} roswasmc_bounded_1_xarm_msgs_SetAxisResponse;

# define ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISRESPONSE_MAX_WIRE_BYTES 134u
# define ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISRESPONSE_MIN_WIRE_BYTES 6u
# define ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISRESPONSE_CODEC_IDENTITY "UWVMROS1_7f383a428f1792369302fb7fef16b4b5c0cc9645e5d835472d2721448979daa7"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_xarm_msgs_SetAxisResponse_valid(roswasmc_bounded_1_xarm_msgs_SetAxisResponse const* value)
{
    if(!value)
        return 0;
    if(value->message.size > 128u || !uwvm_bounded_utf8(value->message.data, value->message.size))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_xarm_msgs_SetAxisResponse_wire_size(roswasmc_bounded_1_xarm_msgs_SetAxisResponse const* value)
{
    size_t n = 0;
    n += 2;
    n += 4 + value->message.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_xarm_msgs_SetAxisResponse_write_fields(roswasmc_bounded_1_xarm_msgs_SetAxisResponse const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->ret, 2);
    *offset += 2;
    uwvm_bounded_put(p + *offset, value->message.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->message.data, value->message.size);
    *offset += value->message.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_xarm_msgs_SetAxisResponse_read_fields(unsigned char const* p,
                                                                           size_t n,
                                                                           size_t* offset,
                                                                           roswasmc_bounded_1_xarm_msgs_SetAxisResponse* value)
{
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
        uwvm_bounded_copy(&value->ret, &bits, 2);
    }
    *offset += 2;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->message.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->message.size > 128u || value->message.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->message.data, p + *offset, value->message.size);
    *offset += value->message.size;
    return roswasmc_bounded_1_xarm_msgs_SetAxisResponse_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_xarm_msgs_SetAxisResponse_encode(roswasmc_bounded_1_xarm_msgs_SetAxisResponse const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_xarm_msgs_SetAxisResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_xarm_msgs_SetAxisResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_xarm_msgs_SetAxisResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_xarm_msgs_SetAxisResponse_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_SetAxisResponse* value)
{
    roswasmc_bounded_1_xarm_msgs_SetAxisResponse next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 6u || length > 134u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_xarm_msgs_SetAxisResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIOREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIOREQUEST_0 != 0x9cda1e62UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIOREQUEST_1 != 0x449cc900UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIOREQUEST_2 != 0xe3e4f4d1UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIOREQUEST_3 != 0xfe92d00eUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIOREQUEST_4 != 0x7fa4d487UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIOREQUEST_5 != 0x48560ebdUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIOREQUEST_6 != 0xf7d66a13UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIOREQUEST_7 != 0xde235662UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIOREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIOREQUEST_0 0x9cda1e62UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIOREQUEST_1 0x449cc900UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIOREQUEST_2 0xe3e4f4d1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIOREQUEST_3 0xfe92d00eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIOREQUEST_4 0x7fa4d487UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIOREQUEST_5 0x48560ebdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIOREQUEST_6 0xf7d66a13UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIOREQUEST_7 0xde235662UL

/** @brief Complete ROS1 xarm_msgs/SetDigitalIORequest value; no field projects away native data. */
typedef struct roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest
{
    /** @brief Declared field io_num; canonical capacity is part of CODEC_IDENTITY. */
    int16_t io_num;
    /** @brief Declared field value; canonical capacity is part of CODEC_IDENTITY. */
    int16_t value;
} roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest;

# define ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIOREQUEST_MAX_WIRE_BYTES 4u
# define ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIOREQUEST_MIN_WIRE_BYTES 4u
# define ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIOREQUEST_CODEC_IDENTITY "UWVMROS1_ac50ddbde487936e79606cb389b9bc074249136b4187a1334da6f09866cc3959"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest_valid(roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest_wire_size(roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest const* value)
{
    size_t n = 0;
    n += 2;
    n += 2;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest_write_fields(roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest const* value,
                                                                                 unsigned char* p,
                                                                                 size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->io_num, 2);
    *offset += 2;
    uwvm_bounded_put(p + *offset, (uint64_t)value->value, 2);
    *offset += 2;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest* value)
{
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
        uwvm_bounded_copy(&value->io_num, &bits, 2);
    }
    *offset += 2;
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
        uwvm_bounded_copy(&value->value, &bits, 2);
    }
    *offset += 2;
    return roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest_encode(roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest* value)
{
    roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 4u || length > 4u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIORESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIORESPONSE_0 != 0x14d24fe1UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIORESPONSE_1 != 0x27d75fccUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIORESPONSE_2 != 0xb2584cb0UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIORESPONSE_3 != 0xbe12dc40UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIORESPONSE_4 != 0xdc665e58UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIORESPONSE_5 != 0x4fce2a51UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIORESPONSE_6 != 0xf9302fceUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIORESPONSE_7 != 0x37d9330eUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIORESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIORESPONSE_0 0x14d24fe1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIORESPONSE_1 0x27d75fccUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIORESPONSE_2 0xb2584cb0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIORESPONSE_3 0xbe12dc40UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIORESPONSE_4 0xdc665e58UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIORESPONSE_5 0x4fce2a51UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIORESPONSE_6 0xf9302fceUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIORESPONSE_7 0x37d9330eUL

/** @brief UTF-8 byte storage for xarm_msgs/SetDigitalIOResponse.message; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse_message_text;

/** @brief Complete ROS1 xarm_msgs/SetDigitalIOResponse value; no field projects away native data. */
typedef struct roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse
{
    /** @brief Declared field ret; canonical capacity is part of CODEC_IDENTITY. */
    int16_t ret;
    /** @brief Declared field message; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse_message_text message;
} roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse;

# define ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIORESPONSE_MAX_WIRE_BYTES 134u
# define ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIORESPONSE_MIN_WIRE_BYTES 6u
# define ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIORESPONSE_CODEC_IDENTITY "UWVMROS1_baca234a5695612047ed3dfb828ac1cae5b26bdd6c117a02824f4fd8e39f1a4c"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse_valid(roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse const* value)
{
    if(!value)
        return 0;
    if(value->message.size > 128u || !uwvm_bounded_utf8(value->message.data, value->message.size))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse_wire_size(roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse const* value)
{
    size_t n = 0;
    n += 2;
    n += 4 + value->message.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse_write_fields(roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse const* value,
                                                                                  unsigned char* p,
                                                                                  size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->ret, 2);
    *offset += 2;
    uwvm_bounded_put(p + *offset, value->message.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->message.data, value->message.size);
    *offset += value->message.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse* value)
{
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
        uwvm_bounded_copy(&value->ret, &bits, 2);
    }
    *offset += 2;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->message.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->message.size > 128u || value->message.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->message.data, p + *offset, value->message.size);
    *offset += value->message.size;
    return roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse_encode(roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse* value)
{
    roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 6u || length > 134u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16REQUEST_0 != 0x45f651a2UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16REQUEST_1 != 0x9f0c2518UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16REQUEST_2 != 0x5a5ea1dfUL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16REQUEST_3 != 0x509ee761UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16REQUEST_4 != 0x823db8b9UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16REQUEST_5 != 0x6738a384UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16REQUEST_6 != 0x4ee07536UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16REQUEST_7 != 0x12fb1d92UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16REQUEST_0 0x45f651a2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16REQUEST_1 0x9f0c2518UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16REQUEST_2 0x5a5ea1dfUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16REQUEST_3 0x509ee761UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16REQUEST_4 0x823db8b9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16REQUEST_5 0x6738a384UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16REQUEST_6 0x4ee07536UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16REQUEST_7 0x12fb1d92UL

/** @brief Complete ROS1 xarm_msgs/SetInt16Request value; no field projects away native data. */
typedef struct roswasmc_bounded_1_xarm_msgs_SetInt16Request
{
    /** @brief Declared field data; canonical capacity is part of CODEC_IDENTITY. */
    int16_t data;
} roswasmc_bounded_1_xarm_msgs_SetInt16Request;

# define ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16REQUEST_MAX_WIRE_BYTES 2u
# define ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16REQUEST_MIN_WIRE_BYTES 2u
# define ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16REQUEST_CODEC_IDENTITY "UWVMROS1_a218118282ed14fca33c7529762ce9849398540f031ad6e18e3a99a90226c5c7"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_xarm_msgs_SetInt16Request_valid(roswasmc_bounded_1_xarm_msgs_SetInt16Request const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_xarm_msgs_SetInt16Request_wire_size(roswasmc_bounded_1_xarm_msgs_SetInt16Request const* value)
{
    size_t n = 0;
    n += 2;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_xarm_msgs_SetInt16Request_write_fields(roswasmc_bounded_1_xarm_msgs_SetInt16Request const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->data, 2);
    *offset += 2;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_xarm_msgs_SetInt16Request_read_fields(unsigned char const* p,
                                                                           size_t n,
                                                                           size_t* offset,
                                                                           roswasmc_bounded_1_xarm_msgs_SetInt16Request* value)
{
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
        uwvm_bounded_copy(&value->data, &bits, 2);
    }
    *offset += 2;
    return roswasmc_bounded_1_xarm_msgs_SetInt16Request_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_xarm_msgs_SetInt16Request_encode(roswasmc_bounded_1_xarm_msgs_SetInt16Request const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_xarm_msgs_SetInt16Request_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_xarm_msgs_SetInt16Request_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_xarm_msgs_SetInt16Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_xarm_msgs_SetInt16Request_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_SetInt16Request* value)
{
    roswasmc_bounded_1_xarm_msgs_SetInt16Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 2u || length > 2u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_xarm_msgs_SetInt16Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16RESPONSE_0 != 0xeabb4d59UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16RESPONSE_1 != 0x6a57eb0fUL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16RESPONSE_2 != 0x16a3557aUL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16RESPONSE_3 != 0xf0c15283UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16RESPONSE_4 != 0xaeac29deUL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16RESPONSE_5 != 0xa362956fUL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16RESPONSE_6 != 0x020f2180UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16RESPONSE_7 != 0x3cb9c134UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16RESPONSE_0 0xeabb4d59UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16RESPONSE_1 0x6a57eb0fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16RESPONSE_2 0x16a3557aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16RESPONSE_3 0xf0c15283UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16RESPONSE_4 0xaeac29deUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16RESPONSE_5 0xa362956fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16RESPONSE_6 0x020f2180UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16RESPONSE_7 0x3cb9c134UL

/** @brief UTF-8 byte storage for xarm_msgs/SetInt16Response.message; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_xarm_msgs_SetInt16Response_message_text;

/** @brief Complete ROS1 xarm_msgs/SetInt16Response value; no field projects away native data. */
typedef struct roswasmc_bounded_1_xarm_msgs_SetInt16Response
{
    /** @brief Declared field ret; canonical capacity is part of CODEC_IDENTITY. */
    int16_t ret;
    /** @brief Declared field message; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_xarm_msgs_SetInt16Response_message_text message;
} roswasmc_bounded_1_xarm_msgs_SetInt16Response;

# define ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16RESPONSE_MAX_WIRE_BYTES 134u
# define ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16RESPONSE_MIN_WIRE_BYTES 6u
# define ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16RESPONSE_CODEC_IDENTITY "UWVMROS1_3b619ed23839ab6aa86a83898af3de7ed7cdcafd04f6528afd48fe1c2d58fd7d"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_xarm_msgs_SetInt16Response_valid(roswasmc_bounded_1_xarm_msgs_SetInt16Response const* value)
{
    if(!value)
        return 0;
    if(value->message.size > 128u || !uwvm_bounded_utf8(value->message.data, value->message.size))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_xarm_msgs_SetInt16Response_wire_size(roswasmc_bounded_1_xarm_msgs_SetInt16Response const* value)
{
    size_t n = 0;
    n += 2;
    n += 4 + value->message.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_xarm_msgs_SetInt16Response_write_fields(roswasmc_bounded_1_xarm_msgs_SetInt16Response const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->ret, 2);
    *offset += 2;
    uwvm_bounded_put(p + *offset, value->message.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->message.data, value->message.size);
    *offset += value->message.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_xarm_msgs_SetInt16Response_read_fields(unsigned char const* p,
                                                                            size_t n,
                                                                            size_t* offset,
                                                                            roswasmc_bounded_1_xarm_msgs_SetInt16Response* value)
{
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
        uwvm_bounded_copy(&value->ret, &bits, 2);
    }
    *offset += 2;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->message.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->message.size > 128u || value->message.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->message.data, p + *offset, value->message.size);
    *offset += value->message.size;
    return roswasmc_bounded_1_xarm_msgs_SetInt16Response_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_xarm_msgs_SetInt16Response_encode(roswasmc_bounded_1_xarm_msgs_SetInt16Response const* value,
                                                                            void* output,
                                                                            size_t capacity,
                                                                            size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_xarm_msgs_SetInt16Response_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_xarm_msgs_SetInt16Response_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_xarm_msgs_SetInt16Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_xarm_msgs_SetInt16Response_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_SetInt16Response* value)
{
    roswasmc_bounded_1_xarm_msgs_SetInt16Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 6u || length > 134u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_xarm_msgs_SetInt16Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETLOADREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETLOADREQUEST_0 != 0xe726e64bUL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETLOADREQUEST_1 != 0xdec5cdbbUL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETLOADREQUEST_2 != 0x55ebf8cfUL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETLOADREQUEST_3 != 0xd265d9f0UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETLOADREQUEST_4 != 0xe1e7d9bdUL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETLOADREQUEST_5 != 0x400c32fbUL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETLOADREQUEST_6 != 0xa8681a2bUL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETLOADREQUEST_7 != 0x9f77fef5UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETLOADREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETLOADREQUEST_0 0xe726e64bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETLOADREQUEST_1 0xdec5cdbbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETLOADREQUEST_2 0x55ebf8cfUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETLOADREQUEST_3 0xd265d9f0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETLOADREQUEST_4 0xe1e7d9bdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETLOADREQUEST_5 0x400c32fbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETLOADREQUEST_6 0xa8681a2bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETLOADREQUEST_7 0x9f77fef5UL

/** @brief Complete ROS1 xarm_msgs/SetLoadRequest value; no field projects away native data. */
typedef struct roswasmc_bounded_1_xarm_msgs_SetLoadRequest
{
    /** @brief Declared field mass; canonical capacity is part of CODEC_IDENTITY. */
    float mass;
    /** @brief Declared field xc; canonical capacity is part of CODEC_IDENTITY. */
    float xc;
    /** @brief Declared field yc; canonical capacity is part of CODEC_IDENTITY. */
    float yc;
    /** @brief Declared field zc; canonical capacity is part of CODEC_IDENTITY. */
    float zc;
} roswasmc_bounded_1_xarm_msgs_SetLoadRequest;

# define ROSWASMC_BOUNDED_1_XARM_MSGS_SETLOADREQUEST_MAX_WIRE_BYTES 16u
# define ROSWASMC_BOUNDED_1_XARM_MSGS_SETLOADREQUEST_MIN_WIRE_BYTES 16u
# define ROSWASMC_BOUNDED_1_XARM_MSGS_SETLOADREQUEST_CODEC_IDENTITY "UWVMROS1_47f2147c37956f007e24d79ddcdc080fb185aca0b30f5f2394f9c74bd00ee077"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_xarm_msgs_SetLoadRequest_valid(roswasmc_bounded_1_xarm_msgs_SetLoadRequest const* value)
{
    if(!value)
        return 0;
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->mass, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->xc, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->yc, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->zc, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_xarm_msgs_SetLoadRequest_wire_size(roswasmc_bounded_1_xarm_msgs_SetLoadRequest const* value)
{
    size_t n = 0;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_xarm_msgs_SetLoadRequest_write_fields(roswasmc_bounded_1_xarm_msgs_SetLoadRequest const* value, unsigned char* p, size_t* offset)
{
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->mass, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->xc, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->yc, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->zc, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_xarm_msgs_SetLoadRequest_read_fields(unsigned char const* p,
                                                                          size_t n,
                                                                          size_t* offset,
                                                                          roswasmc_bounded_1_xarm_msgs_SetLoadRequest* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->mass, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->xc, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->yc, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->zc, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_1_xarm_msgs_SetLoadRequest_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_1_xarm_msgs_SetLoadRequest_encode(roswasmc_bounded_1_xarm_msgs_SetLoadRequest const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_xarm_msgs_SetLoadRequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_xarm_msgs_SetLoadRequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_xarm_msgs_SetLoadRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_xarm_msgs_SetLoadRequest_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_SetLoadRequest* value)
{
    roswasmc_bounded_1_xarm_msgs_SetLoadRequest next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 16u || length > 16u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_xarm_msgs_SetLoadRequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETLOADRESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETLOADRESPONSE_0 != 0x22a0f475UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETLOADRESPONSE_1 != 0x0e820d9eUL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETLOADRESPONSE_2 != 0xea59bd6aUL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETLOADRESPONSE_3 != 0xe9945f91UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETLOADRESPONSE_4 != 0x0d8ad7c9UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETLOADRESPONSE_5 != 0xf247f4b9UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETLOADRESPONSE_6 != 0x4cab510eUL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETLOADRESPONSE_7 != 0x1b31de45UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETLOADRESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETLOADRESPONSE_0 0x22a0f475UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETLOADRESPONSE_1 0x0e820d9eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETLOADRESPONSE_2 0xea59bd6aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETLOADRESPONSE_3 0xe9945f91UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETLOADRESPONSE_4 0x0d8ad7c9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETLOADRESPONSE_5 0xf247f4b9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETLOADRESPONSE_6 0x4cab510eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETLOADRESPONSE_7 0x1b31de45UL

/** @brief UTF-8 byte storage for xarm_msgs/SetLoadResponse.message; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_xarm_msgs_SetLoadResponse_message_text;

/** @brief Complete ROS1 xarm_msgs/SetLoadResponse value; no field projects away native data. */
typedef struct roswasmc_bounded_1_xarm_msgs_SetLoadResponse
{
    /** @brief Declared field ret; canonical capacity is part of CODEC_IDENTITY. */
    int16_t ret;
    /** @brief Declared field message; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_xarm_msgs_SetLoadResponse_message_text message;
} roswasmc_bounded_1_xarm_msgs_SetLoadResponse;

# define ROSWASMC_BOUNDED_1_XARM_MSGS_SETLOADRESPONSE_MAX_WIRE_BYTES 134u
# define ROSWASMC_BOUNDED_1_XARM_MSGS_SETLOADRESPONSE_MIN_WIRE_BYTES 6u
# define ROSWASMC_BOUNDED_1_XARM_MSGS_SETLOADRESPONSE_CODEC_IDENTITY "UWVMROS1_ceea0b74ec65c7f3208f594ddb9180db48213a62764524e1b7eec866752ed2e3"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_xarm_msgs_SetLoadResponse_valid(roswasmc_bounded_1_xarm_msgs_SetLoadResponse const* value)
{
    if(!value)
        return 0;
    if(value->message.size > 128u || !uwvm_bounded_utf8(value->message.data, value->message.size))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_xarm_msgs_SetLoadResponse_wire_size(roswasmc_bounded_1_xarm_msgs_SetLoadResponse const* value)
{
    size_t n = 0;
    n += 2;
    n += 4 + value->message.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_xarm_msgs_SetLoadResponse_write_fields(roswasmc_bounded_1_xarm_msgs_SetLoadResponse const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->ret, 2);
    *offset += 2;
    uwvm_bounded_put(p + *offset, value->message.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->message.data, value->message.size);
    *offset += value->message.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_xarm_msgs_SetLoadResponse_read_fields(unsigned char const* p,
                                                                           size_t n,
                                                                           size_t* offset,
                                                                           roswasmc_bounded_1_xarm_msgs_SetLoadResponse* value)
{
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
        uwvm_bounded_copy(&value->ret, &bits, 2);
    }
    *offset += 2;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->message.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->message.size > 128u || value->message.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->message.data, p + *offset, value->message.size);
    *offset += value->message.size;
    return roswasmc_bounded_1_xarm_msgs_SetLoadResponse_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_xarm_msgs_SetLoadResponse_encode(roswasmc_bounded_1_xarm_msgs_SetLoadResponse const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_xarm_msgs_SetLoadResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_xarm_msgs_SetLoadResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_xarm_msgs_SetLoadResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_xarm_msgs_SetLoadResponse_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_SetLoadResponse* value)
{
    roswasmc_bounded_1_xarm_msgs_SetLoadResponse next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 6u || length > 134u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_xarm_msgs_SetLoadResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETTOOLMODBUSREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETTOOLMODBUSREQUEST_0 != 0x43ffd077UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETTOOLMODBUSREQUEST_1 != 0x6af193bdUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETTOOLMODBUSREQUEST_2 != 0x59dbf9a1UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETTOOLMODBUSREQUEST_3 != 0xcfdd72efUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETTOOLMODBUSREQUEST_4 != 0x810478f8UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETTOOLMODBUSREQUEST_5 != 0x6e1deb6dUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETTOOLMODBUSREQUEST_6 != 0x87fdb34aUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETTOOLMODBUSREQUEST_7 != 0xa11cfef8UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETTOOLMODBUSREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETTOOLMODBUSREQUEST_0 0x43ffd077UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETTOOLMODBUSREQUEST_1 0x6af193bdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETTOOLMODBUSREQUEST_2 0x59dbf9a1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETTOOLMODBUSREQUEST_3 0xcfdd72efUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETTOOLMODBUSREQUEST_4 0x810478f8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETTOOLMODBUSREQUEST_5 0x6e1deb6dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETTOOLMODBUSREQUEST_6 0x87fdb34aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETTOOLMODBUSREQUEST_7 0xa11cfef8UL

/** @brief At most256 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    uint8_t data[256];
} roswasmc_bounded_1_xarm_msgs_SetToolModbusRequest_send_data_sequence;

/** @brief Complete ROS1 xarm_msgs/SetToolModbusRequest value; no field projects away native data. */
typedef struct roswasmc_bounded_1_xarm_msgs_SetToolModbusRequest
{
    /** @brief Declared field send_data; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_xarm_msgs_SetToolModbusRequest_send_data_sequence send_data;
    /** @brief Declared field respond_len; canonical capacity is part of CODEC_IDENTITY. */
    int16_t respond_len;
} roswasmc_bounded_1_xarm_msgs_SetToolModbusRequest;

# define ROSWASMC_BOUNDED_1_XARM_MSGS_SETTOOLMODBUSREQUEST_MAX_WIRE_BYTES 262u
# define ROSWASMC_BOUNDED_1_XARM_MSGS_SETTOOLMODBUSREQUEST_MIN_WIRE_BYTES 6u
# define ROSWASMC_BOUNDED_1_XARM_MSGS_SETTOOLMODBUSREQUEST_CODEC_IDENTITY "UWVMROS1_f7201be7ca91c7cbc137d4d634a939e037f3fd070446ee174169563e00af3c5a"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_xarm_msgs_SetToolModbusRequest_valid(roswasmc_bounded_1_xarm_msgs_SetToolModbusRequest const* value)
{
    if(!value)
        return 0;
    if(value->send_data.size > 256u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->send_data.size; ++i)
        {
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_xarm_msgs_SetToolModbusRequest_wire_size(roswasmc_bounded_1_xarm_msgs_SetToolModbusRequest const* value)
{
    size_t n = 0;
    n += 4;
    if(value->send_data.size > 256u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->send_data.size; ++i)
        {
            n += 1;
        }
    }
    n += 2;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_1_xarm_msgs_SetToolModbusRequest_write_fields(roswasmc_bounded_1_xarm_msgs_SetToolModbusRequest const* value,
                                                                                  unsigned char* p,
                                                                                  size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->send_data.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->send_data.size; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->send_data.data[i], 1);
            *offset += 1;
        }
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->respond_len, 2);
    *offset += 2;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_xarm_msgs_SetToolModbusRequest_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_1_xarm_msgs_SetToolModbusRequest* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    value->send_data.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->send_data.size > 256u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->send_data.size; ++i)
        {
            if(*offset > n || n - *offset < 1)
                return 0;
            {
                uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
                uwvm_bounded_copy(&value->send_data.data[i], &bits, 1);
            }
            *offset += 1;
        }
    }
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
        uwvm_bounded_copy(&value->respond_len, &bits, 2);
    }
    *offset += 2;
    return roswasmc_bounded_1_xarm_msgs_SetToolModbusRequest_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_xarm_msgs_SetToolModbusRequest_encode(roswasmc_bounded_1_xarm_msgs_SetToolModbusRequest const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_xarm_msgs_SetToolModbusRequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_xarm_msgs_SetToolModbusRequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_xarm_msgs_SetToolModbusRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_xarm_msgs_SetToolModbusRequest_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_SetToolModbusRequest* value)
{
    roswasmc_bounded_1_xarm_msgs_SetToolModbusRequest next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 6u || length > 262u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_xarm_msgs_SetToolModbusRequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETTOOLMODBUSRESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETTOOLMODBUSRESPONSE_0 != 0x7eb4ad4aUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETTOOLMODBUSRESPONSE_1 != 0xea49e126UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETTOOLMODBUSRESPONSE_2 != 0x68ce81e9UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETTOOLMODBUSRESPONSE_3 != 0x54a98d08UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETTOOLMODBUSRESPONSE_4 != 0xcd87f93fUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETTOOLMODBUSRESPONSE_5 != 0x9ac6dc7bUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETTOOLMODBUSRESPONSE_6 != 0x07f89ef2UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETTOOLMODBUSRESPONSE_7 != 0x613f3fb4UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETTOOLMODBUSRESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETTOOLMODBUSRESPONSE_0 0x7eb4ad4aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETTOOLMODBUSRESPONSE_1 0xea49e126UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETTOOLMODBUSRESPONSE_2 0x68ce81e9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETTOOLMODBUSRESPONSE_3 0x54a98d08UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETTOOLMODBUSRESPONSE_4 0xcd87f93fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETTOOLMODBUSRESPONSE_5 0x9ac6dc7bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETTOOLMODBUSRESPONSE_6 0x07f89ef2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETTOOLMODBUSRESPONSE_7 0x613f3fb4UL

/** @brief At most256 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    uint8_t data[256];
} roswasmc_bounded_1_xarm_msgs_SetToolModbusResponse_respond_data_sequence;

/** @brief Complete ROS1 xarm_msgs/SetToolModbusResponse value; no field projects away native data. */
typedef struct roswasmc_bounded_1_xarm_msgs_SetToolModbusResponse
{
    /** @brief Declared field ret; canonical capacity is part of CODEC_IDENTITY. */
    int16_t ret;
    /** @brief Declared field respond_data; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_xarm_msgs_SetToolModbusResponse_respond_data_sequence respond_data;
} roswasmc_bounded_1_xarm_msgs_SetToolModbusResponse;

# define ROSWASMC_BOUNDED_1_XARM_MSGS_SETTOOLMODBUSRESPONSE_MAX_WIRE_BYTES 262u
# define ROSWASMC_BOUNDED_1_XARM_MSGS_SETTOOLMODBUSRESPONSE_MIN_WIRE_BYTES 6u
# define ROSWASMC_BOUNDED_1_XARM_MSGS_SETTOOLMODBUSRESPONSE_CODEC_IDENTITY "UWVMROS1_685b6def078eaf41d45a4e43cfe037498224efca187275680a77b6068372ce15"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_xarm_msgs_SetToolModbusResponse_valid(roswasmc_bounded_1_xarm_msgs_SetToolModbusResponse const* value)
{
    if(!value)
        return 0;
    if(value->respond_data.size > 256u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->respond_data.size; ++i)
        {
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_xarm_msgs_SetToolModbusResponse_wire_size(roswasmc_bounded_1_xarm_msgs_SetToolModbusResponse const* value)
{
    size_t n = 0;
    n += 2;
    n += 4;
    if(value->respond_data.size > 256u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->respond_data.size; ++i)
        {
            n += 1;
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_1_xarm_msgs_SetToolModbusResponse_write_fields(roswasmc_bounded_1_xarm_msgs_SetToolModbusResponse const* value,
                                                                                   unsigned char* p,
                                                                                   size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->ret, 2);
    *offset += 2;
    uwvm_bounded_put(p + *offset, value->respond_data.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->respond_data.size; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->respond_data.data[i], 1);
            *offset += 1;
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_xarm_msgs_SetToolModbusResponse_read_fields(unsigned char const* p,
                                                                                 size_t n,
                                                                                 size_t* offset,
                                                                                 roswasmc_bounded_1_xarm_msgs_SetToolModbusResponse* value)
{
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
        uwvm_bounded_copy(&value->ret, &bits, 2);
    }
    *offset += 2;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->respond_data.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->respond_data.size > 256u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->respond_data.size; ++i)
        {
            if(*offset > n || n - *offset < 1)
                return 0;
            {
                uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
                uwvm_bounded_copy(&value->respond_data.data[i], &bits, 1);
            }
            *offset += 1;
        }
    }
    return roswasmc_bounded_1_xarm_msgs_SetToolModbusResponse_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_xarm_msgs_SetToolModbusResponse_encode(roswasmc_bounded_1_xarm_msgs_SetToolModbusResponse const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_xarm_msgs_SetToolModbusResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_xarm_msgs_SetToolModbusResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_xarm_msgs_SetToolModbusResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_xarm_msgs_SetToolModbusResponse_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_SetToolModbusResponse* value)
{
    roswasmc_bounded_1_xarm_msgs_SetToolModbusResponse next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 6u || length > 262u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_xarm_msgs_SetToolModbusResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETREQUEST_0 != 0x4efd5628UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETREQUEST_1 != 0x927b90daUL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETREQUEST_2 != 0x2e113e67UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETREQUEST_3 != 0x8bbdf820UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETREQUEST_4 != 0xfd1922eaUL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETREQUEST_5 != 0xa09e051fUL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETREQUEST_6 != 0xd8b1b0cbUL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETREQUEST_7 != 0x00989055UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETREQUEST_0 0x4efd5628UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETREQUEST_1 0x927b90daUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETREQUEST_2 0x2e113e67UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETREQUEST_3 0x8bbdf820UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETREQUEST_4 0xfd1922eaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETREQUEST_5 0xa09e051fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETREQUEST_6 0xd8b1b0cbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETREQUEST_7 0x00989055UL

/** @brief Complete ROS1 xarm_msgs/TCPOffsetRequest value; no field projects away native data. */
typedef struct roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest
{
    /** @brief Declared field x; canonical capacity is part of CODEC_IDENTITY. */
    float x;
    /** @brief Declared field y; canonical capacity is part of CODEC_IDENTITY. */
    float y;
    /** @brief Declared field z; canonical capacity is part of CODEC_IDENTITY. */
    float z;
    /** @brief Declared field roll; canonical capacity is part of CODEC_IDENTITY. */
    float roll;
    /** @brief Declared field pitch; canonical capacity is part of CODEC_IDENTITY. */
    float pitch;
    /** @brief Declared field yaw; canonical capacity is part of CODEC_IDENTITY. */
    float yaw;
} roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest;

# define ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETREQUEST_MAX_WIRE_BYTES 24u
# define ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETREQUEST_MIN_WIRE_BYTES 24u
# define ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETREQUEST_CODEC_IDENTITY "UWVMROS1_588f23b909cce18cc490801b9d2f0960335362b0c823651cda6d5c8a27ee0afd"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest_valid(roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest const* value)
{
    if(!value)
        return 0;
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->x, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->y, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->z, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->roll, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->pitch, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->yaw, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest_wire_size(roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest const* value)
{
    size_t n = 0;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest_write_fields(roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest const* value, unsigned char* p, size_t* offset)
{
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->x, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->y, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->z, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->roll, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->pitch, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->yaw, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest_read_fields(unsigned char const* p,
                                                                            size_t n,
                                                                            size_t* offset,
                                                                            roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->x, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->y, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->z, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->roll, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->pitch, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->yaw, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest_encode(roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest const* value,
                                                                            void* output,
                                                                            size_t capacity,
                                                                            size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest* value)
{
    roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 24u || length > 24u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETRESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETRESPONSE_0 != 0xd58f547fUL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETRESPONSE_1 != 0x76d5d03aUL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETRESPONSE_2 != 0xe5ea45e1UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETRESPONSE_3 != 0xb11406d3UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETRESPONSE_4 != 0x54554f4aUL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETRESPONSE_5 != 0x25caf254UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETRESPONSE_6 != 0x229c61b0UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETRESPONSE_7 != 0x856b8309UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETRESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETRESPONSE_0 0xd58f547fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETRESPONSE_1 0x76d5d03aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETRESPONSE_2 0xe5ea45e1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETRESPONSE_3 0xb11406d3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETRESPONSE_4 0x54554f4aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETRESPONSE_5 0x25caf254UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETRESPONSE_6 0x229c61b0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETRESPONSE_7 0x856b8309UL

/** @brief UTF-8 byte storage for xarm_msgs/TCPOffsetResponse.message; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse_message_text;

/** @brief Complete ROS1 xarm_msgs/TCPOffsetResponse value; no field projects away native data. */
typedef struct roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse
{
    /** @brief Declared field ret; canonical capacity is part of CODEC_IDENTITY. */
    int16_t ret;
    /** @brief Declared field message; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse_message_text message;
} roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse;

# define ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETRESPONSE_MAX_WIRE_BYTES 134u
# define ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETRESPONSE_MIN_WIRE_BYTES 6u
# define ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETRESPONSE_CODEC_IDENTITY "UWVMROS1_c61a6473a9eb1371fa56cbf60d6468fcac19197b9be04dd507b80f59e2d80773"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse_valid(roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse const* value)
{
    if(!value)
        return 0;
    if(value->message.size > 128u || !uwvm_bounded_utf8(value->message.data, value->message.size))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse_wire_size(roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse const* value)
{
    size_t n = 0;
    n += 2;
    n += 4 + value->message.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse_write_fields(roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->ret, 2);
    *offset += 2;
    uwvm_bounded_put(p + *offset, value->message.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->message.data, value->message.size);
    *offset += value->message.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse_read_fields(unsigned char const* p,
                                                                             size_t n,
                                                                             size_t* offset,
                                                                             roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse* value)
{
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
        uwvm_bounded_copy(&value->ret, &bits, 2);
    }
    *offset += 2;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->message.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->message.size > 128u || value->message.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->message.data, p + *offset, value->message.size);
    *offset += value->message.size;
    return roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse_encode(roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse const* value,
                                                                             void* output,
                                                                             size_t capacity,
                                                                             size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse* value)
{
    roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 6u || length > 134u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#undef UWVM_BOUNDED_ASSERT
#endif
