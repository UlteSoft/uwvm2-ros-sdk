/** @file Generated bounded-v2 canonical values; no native ROS serialization or authority.
 * Every dynamic field has inline caller-owned capacity. Encode validates and measures
 * the full value before writes; decode commits one temporary only after full validation.
 * Supply distinct record, byte and size-output storage; overlap is explicitly refused.
 * Empty Service/Action components use a C layout dummy that is never a wire field. */
#ifndef UWVM_ROS_BOUNDED_RECORDS_H
#define UWVM_ROS_BOUNDED_RECORDS_H
#include <stdint.h>
#include <stddef.h>
#include <float.h>
#include <limits.h>
#define UWVM_BOUNDED_INVALID 22u
#define UWVM_BOUNDED_TOO_LARGE 90u
#if defined(__cplusplus)
# define UWVM_BOUNDED_ASSERT(x) static_assert(x, "canonical representation required")
#else
# define UWVM_BOUNDED_ASSERT(x) _Static_assert(x, "canonical representation required")
#endif
UWVM_BOUNDED_ASSERT(CHAR_BIT == 8 && sizeof(float) == 4 && sizeof(double) == 8 && FLT_RADIX == 2 && FLT_MANT_DIG == 24 && DBL_MANT_DIG == 53 &&
                    FLT_MAX_EXP == 128 && DBL_MAX_EXP == 1024);

/** @brief Copy exact primitive/string bytes; compiler intrinsics avoid byte-at-a-time copies. */
static inline void uwvm_bounded_copy(void* out, void const* in, size_t n)
{
#if defined(__GNUC__) || defined(__clang__)
    __builtin_memcpy(out, in, n);
#else
    size_t i;
    for(i = 0; i < n; ++i)
        ((unsigned char*)out)[i] = ((unsigned char const*)in)[i];
#endif
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

/** @brief Complete ROS1 interbotix_uxarm_joy/ArmJoy value; no field projects away native data. */
typedef struct roswasmc_bounded_1_interbotix_uxarm_joy_ArmJoy
{
    /** @brief Declared field ee_x_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t ee_x_cmd;
    /** @brief Declared field ee_y_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t ee_y_cmd;
    /** @brief Declared field ee_z_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t ee_z_cmd;
    /** @brief Declared field ee_yaw_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t ee_yaw_cmd;
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
    /** @brief Declared field gripper_speed_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t gripper_speed_cmd;
    /** @brief Declared field mode_cmd; canonical capacity is part of CODEC_IDENTITY. */
    int8_t mode_cmd;
} roswasmc_bounded_1_interbotix_uxarm_joy_ArmJoy;

#define ROSWASMC_BOUNDED_1_INTERBOTIX_UXARM_JOY_ARMJOY_MAX_WIRE_BYTES 12u
#define ROSWASMC_BOUNDED_1_INTERBOTIX_UXARM_JOY_ARMJOY_MIN_WIRE_BYTES 12u
#define ROSWASMC_BOUNDED_1_INTERBOTIX_UXARM_JOY_ARMJOY_CODEC_IDENTITY "UWVMROS1_70a9d567a462413c9a5c6ec9f44e79ee772a9327c22a2dc308fe6446fdb27d53"
/** @brief Original scalar constant EE_X_INC=1; no instance/wire field. */
#define ROSWASMC_BOUNDED_1_INTERBOTIX_UXARM_JOY_ARMJOY_EE_X_INC INT32_C(1)
/** @brief Original scalar constant EE_X_DEC=2; no instance/wire field. */
#define ROSWASMC_BOUNDED_1_INTERBOTIX_UXARM_JOY_ARMJOY_EE_X_DEC INT32_C(2)
/** @brief Original scalar constant EE_Y_INC=3; no instance/wire field. */
#define ROSWASMC_BOUNDED_1_INTERBOTIX_UXARM_JOY_ARMJOY_EE_Y_INC INT32_C(3)
/** @brief Original scalar constant EE_Y_DEC=4; no instance/wire field. */
#define ROSWASMC_BOUNDED_1_INTERBOTIX_UXARM_JOY_ARMJOY_EE_Y_DEC INT32_C(4)
/** @brief Original scalar constant EE_Z_INC=5; no instance/wire field. */
#define ROSWASMC_BOUNDED_1_INTERBOTIX_UXARM_JOY_ARMJOY_EE_Z_INC INT32_C(5)
/** @brief Original scalar constant EE_Z_DEC=6; no instance/wire field. */
#define ROSWASMC_BOUNDED_1_INTERBOTIX_UXARM_JOY_ARMJOY_EE_Z_DEC INT32_C(6)
/** @brief Original scalar constant EE_YAW_CCW=7; no instance/wire field. */
#define ROSWASMC_BOUNDED_1_INTERBOTIX_UXARM_JOY_ARMJOY_EE_YAW_CCW INT32_C(7)
/** @brief Original scalar constant EE_YAW_CW=8; no instance/wire field. */
#define ROSWASMC_BOUNDED_1_INTERBOTIX_UXARM_JOY_ARMJOY_EE_YAW_CW INT32_C(8)
/** @brief Original scalar constant EE_PITCH_UP=9; no instance/wire field. */
#define ROSWASMC_BOUNDED_1_INTERBOTIX_UXARM_JOY_ARMJOY_EE_PITCH_UP INT32_C(9)
/** @brief Original scalar constant EE_PITCH_DOWN=10; no instance/wire field. */
#define ROSWASMC_BOUNDED_1_INTERBOTIX_UXARM_JOY_ARMJOY_EE_PITCH_DOWN INT32_C(10)
/** @brief Original scalar constant WAIST_CCW=11; no instance/wire field. */
#define ROSWASMC_BOUNDED_1_INTERBOTIX_UXARM_JOY_ARMJOY_WAIST_CCW INT32_C(11)
/** @brief Original scalar constant WAIST_CW=12; no instance/wire field. */
#define ROSWASMC_BOUNDED_1_INTERBOTIX_UXARM_JOY_ARMJOY_WAIST_CW INT32_C(12)
/** @brief Original scalar constant GRIPPER_OPEN=13; no instance/wire field. */
#define ROSWASMC_BOUNDED_1_INTERBOTIX_UXARM_JOY_ARMJOY_GRIPPER_OPEN INT32_C(13)
/** @brief Original scalar constant GRIPPER_CLOSE=14; no instance/wire field. */
#define ROSWASMC_BOUNDED_1_INTERBOTIX_UXARM_JOY_ARMJOY_GRIPPER_CLOSE INT32_C(14)
/** @brief Original scalar constant HOME_POSE=15; no instance/wire field. */
#define ROSWASMC_BOUNDED_1_INTERBOTIX_UXARM_JOY_ARMJOY_HOME_POSE INT32_C(15)
/** @brief Original scalar constant HOLDUP_POSE=16; no instance/wire field. */
#define ROSWASMC_BOUNDED_1_INTERBOTIX_UXARM_JOY_ARMJOY_HOLDUP_POSE INT32_C(16)
/** @brief Original scalar constant SPEED_INC=17; no instance/wire field. */
#define ROSWASMC_BOUNDED_1_INTERBOTIX_UXARM_JOY_ARMJOY_SPEED_INC INT32_C(17)
/** @brief Original scalar constant SPEED_DEC=18; no instance/wire field. */
#define ROSWASMC_BOUNDED_1_INTERBOTIX_UXARM_JOY_ARMJOY_SPEED_DEC INT32_C(18)
/** @brief Original scalar constant SPEED_COARSE=19; no instance/wire field. */
#define ROSWASMC_BOUNDED_1_INTERBOTIX_UXARM_JOY_ARMJOY_SPEED_COARSE INT32_C(19)
/** @brief Original scalar constant SPEED_FINE=20; no instance/wire field. */
#define ROSWASMC_BOUNDED_1_INTERBOTIX_UXARM_JOY_ARMJOY_SPEED_FINE INT32_C(20)
/** @brief Original scalar constant GRIPPER_SPEED_INC=21; no instance/wire field. */
#define ROSWASMC_BOUNDED_1_INTERBOTIX_UXARM_JOY_ARMJOY_GRIPPER_SPEED_INC INT32_C(21)
/** @brief Original scalar constant GRIPPER_SPEED_DEC=22; no instance/wire field. */
#define ROSWASMC_BOUNDED_1_INTERBOTIX_UXARM_JOY_ARMJOY_GRIPPER_SPEED_DEC INT32_C(22)
/** @brief Original scalar constant MODE_SERVO=23; no instance/wire field. */
#define ROSWASMC_BOUNDED_1_INTERBOTIX_UXARM_JOY_ARMJOY_MODE_SERVO INT32_C(23)
/** @brief Original scalar constant MODE_TEACH=24; no instance/wire field. */
#define ROSWASMC_BOUNDED_1_INTERBOTIX_UXARM_JOY_ARMJOY_MODE_TEACH INT32_C(24)

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_interbotix_uxarm_joy_ArmJoy_valid(roswasmc_bounded_1_interbotix_uxarm_joy_ArmJoy const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_interbotix_uxarm_joy_ArmJoy_wire_size(roswasmc_bounded_1_interbotix_uxarm_joy_ArmJoy const* value)
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
    roswasmc_bounded_1_interbotix_uxarm_joy_ArmJoy_write_fields(roswasmc_bounded_1_interbotix_uxarm_joy_ArmJoy const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->ee_x_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->ee_y_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->ee_z_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->ee_yaw_cmd, 1);
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
    uwvm_bounded_put(p + *offset, (uint64_t)value->gripper_speed_cmd, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->mode_cmd, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_interbotix_uxarm_joy_ArmJoy_read_fields(unsigned char const* p,
                                                                             size_t n,
                                                                             size_t* offset,
                                                                             roswasmc_bounded_1_interbotix_uxarm_joy_ArmJoy* value)
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
        uwvm_bounded_copy(&value->ee_yaw_cmd, &bits, 1);
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
        uwvm_bounded_copy(&value->gripper_speed_cmd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->mode_cmd, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_1_interbotix_uxarm_joy_ArmJoy_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_interbotix_uxarm_joy_ArmJoy_encode(roswasmc_bounded_1_interbotix_uxarm_joy_ArmJoy const* value,
                                                                             void* output,
                                                                             size_t capacity,
                                                                             size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_interbotix_uxarm_joy_ArmJoy_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_interbotix_uxarm_joy_ArmJoy_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_interbotix_uxarm_joy_ArmJoy_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_interbotix_uxarm_joy_ArmJoy_decode(void const* input, size_t length, roswasmc_bounded_1_interbotix_uxarm_joy_ArmJoy* value)
{
    roswasmc_bounded_1_interbotix_uxarm_joy_ArmJoy next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 12u || length > 12u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_interbotix_uxarm_joy_ArmJoy_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

#undef UWVM_BOUNDED_ASSERT
#endif
