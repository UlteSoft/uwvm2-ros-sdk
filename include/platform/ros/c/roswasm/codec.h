/** @file
 * @brief Allocation-free canonical ABI codecs for C89 and later C and freestanding guests.
 *
 * These encode ROS ABI values, not native ROS serialization or C struct layout.
 * All fixed-width integers use little endian; strings use u32 byte length plus
 * bytes without a terminator. Callers own every buffer and choose its maximum.
 * Encoding never obtains authority. The runtime independently validates types,
 * UTF-8, finite numbers, quotas, frames, bounds, ownership and operation rights.
 */
#ifndef ROSWASMC_CODEC_H
#define ROSWASMC_CODEC_H
#include <platform/ros/c/roswasm/roswasmc.h>
#include <float.h>
/** @brief The canonical Float64 codec requires this actual representation. */
#define ROSWASMC_HAS_BINARY64 (sizeof(double) == 8 && FLT_RADIX == 2 && DBL_MANT_DIG == 53 && DBL_MAX_EXP == 1024)

/**
 * @brief Copy object representation bytes without requiring a hosted C library.
 * Only small fixed-width bit representations use this helper; it performs no I/O.
 *
 * @details Operate on the complete canonical representation described above, using caller-owned
 * storage. Preserve exact field order, signed integer bits and borrowed-view lifetimes; never
 * serialize C padding or native ROS objects.
 *
 * @par C storage and execution contract
 * @param[out] output Caller-owned byte storage for the complete documented range; keep borrowed
 * decode views alive and respect nonoverlap rules.
 * @param[in] input Caller-owned byte storage for the complete documented range; keep borrowed
 * decode views alive and respect nonoverlap rules.
 * @param[in] size Explicit value in the domain described above; no implicit unit conversion,
 * policy grant or retry.
 * @return No return value. Observe the documented local state change; no hidden wait, retry or
 * allocation occurs.
 * @par Permissions
 * None for this local codec operation; encoding/decoding does not authorize publication or
 * mutation.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_writer_init(), roswasmc_reader_init()
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE void roswasmc_copy_object(void* output, void const* input, size_t size)
{
    size_t i;
    for(i = 0; i < size; ++i)
    {
        ((unsigned char*)output)[i] = ((unsigned char const*)input)[i];
    }
}

/**
 * @brief Borrowed canonical byte range; its backing storage must outlive use.
 *
 * @details data borrows exactly size readable bytes. The view owns no allocation; backing storage
 * must outlive every access, including decoded nested values. No native pointer crosses the wire.
 * @par C type contract
 * Use the declared complete value and exact representation. Caller-owned storage and any borrowed
 * members retain the lifetimes documented above; no implicit allocation or ownership duplication
 * occurs.
 * @see roswasmc_bytes_init(), roswasmc_reader_init()
 * @see @ref roswasmc_c_contracts
 */
typedef struct roswasmc_bytes
{
    unsigned char const* data;
    size_t size;
} roswasmc_bytes;

/**
 * @brief Borrowed UTF-8 range. It is not NUL terminated and may be empty.
 *
 * @details data borrows size UTF-8 bytes without an implicit terminator. Empty views can use null
 * data. The backing byte range must remain alive while any decoded String view is used.
 * @par C type contract
 * Use the declared complete value and exact representation. Caller-owned storage and any borrowed
 * members retain the lifetimes documented above; no implicit allocation or ownership duplication
 * occurs.
 * @see roswasmc_string_init(), roswasmc_utf8(), roswasmc_decode_string()
 * @see @ref roswasmc_c_contracts
 */
typedef struct roswasmc_string
{
    char const* data;
    size_t size;
} roswasmc_string;

/**
 * @brief Construct a counted borrowed String without a C99 compound literal.
 *
 * @details Operate on the complete canonical representation described above, using caller-owned
 * storage. Preserve exact field order, signed integer bits and borrowed-view lifetimes; never
 * serialize C padding or native ROS objects.
 *
 * @par C storage and execution contract
 * @param[in] data Live caller-owned object/storage with the extent and state described above; no
 * implicit allocation or ownership duplication.
 * @param[in] size Explicit value in the domain described above; no implicit unit conversion,
 * policy grant or retry.
 * @return Complete local value described above; any borrowed pointers retain their original
 * storage lifetime and transfer no ownership.
 * @par Permissions
 * None for this local codec operation; encoding/decoding does not authorize publication or
 * mutation.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_writer_init(), roswasmc_reader_init()
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE roswasmc_string roswasmc_string_init(char const* data, size_t size)
{
    roswasmc_string value;
    value.data = data;
    value.size = size;
    return value;
}

/**
 * @brief Construct a counted borrowed byte range; storage is never retained by the host.
 *
 * @details Operate on the complete canonical representation described above, using caller-owned
 * storage. Preserve exact field order, signed integer bits and borrowed-view lifetimes; never
 * serialize C padding or native ROS objects.
 *
 * @par C storage and execution contract
 * @param[in] data Live caller-owned object/storage with the extent and state described above; no
 * implicit allocation or ownership duplication.
 * @param[in] size Explicit value in the domain described above; no implicit unit conversion,
 * policy grant or retry.
 * @return Complete local value described above; any borrowed pointers retain their original
 * storage lifetime and transfer no ownership.
 * @par Permissions
 * None for this local codec operation; encoding/decoding does not authorize publication or
 * mutation.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_writer_init(), roswasmc_reader_init()
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE roswasmc_bytes roswasmc_bytes_init(void const* data, size_t size)
{
    roswasmc_bytes value;
    value.data = (unsigned char const*)data;
    value.size = size;
    return value;
}

/**
 * @brief Twist fields: linear XYZ followed by angular XYZ.
 *
 * @details linear XYZ uses metres/second and angular XYZ radians/second. All six fields must be
 * finite IEEE754 binary64 values; the codec enforces representation, not physical motion limits or
 * authority.
 * @par C type contract
 * Use the declared complete value and exact representation. Caller-owned storage and any borrowed
 * members retain the lifetimes documented above; no implicit allocation or ownership duplication
 * occurs.
 * @see roswasmc_encode_twist(), roswasmc_decode_twist()
 * @see @ref roswasmc_c_contracts
 */
typedef struct roswasmc_twist
{
    double linear[3];
    double angular[3];
} roswasmc_twist;

/**
 * @brief Bounded wire writer. Once failed, later writes remain failed.
 *
 * @details data borrows capacity writable bytes, size counts committed bytes and valid latches
 * failure. Initialize before use. Failed steps never become successful merely because later writes
 * fit.
 * @par C type contract
 * Use the declared complete value and exact representation. Caller-owned storage and any borrowed
 * members retain the lifetimes documented above; no implicit allocation or ownership duplication
 * occurs.
 * @see roswasmc_writer_init(), roswasmc_write_bytes()
 * @see @ref roswasmc_c_contracts
 */
typedef struct roswasmc_writer
{
    unsigned char* data;
    size_t capacity;
    size_t size;
    int valid;
} roswasmc_writer;

/**
 * @brief Bounded wire reader. Failure never advances past the supplied range.
 *
 * @details data borrows exactly size readable bytes; position is a byte cursor and valid latches
 * framing failure. Decoded subviews borrow this storage. Require exact consumption before exposing
 * a complete value.
 * @par C type contract
 * Use the declared complete value and exact representation. Caller-owned storage and any borrowed
 * members retain the lifetimes documented above; no implicit allocation or ownership duplication
 * occurs.
 * @see roswasmc_reader_init(), roswasmc_reader_done()
 * @see @ref roswasmc_c_contracts
 */
typedef struct roswasmc_reader
{
    unsigned char const* data;
    size_t size;
    size_t position;
    int valid;
} roswasmc_reader;

/**
 * @brief Initialize caller-owned output storage; a NULL nonempty buffer is invalid.
 *
 * @details Operate on the complete canonical representation described above, using caller-owned
 * storage. Preserve exact field order, signed integer bits and borrowed-view lifetimes; never
 * serialize C padding or native ROS objects.
 *
 * @par C storage and execution contract
 * @param[in,out] bytes Caller-owned byte storage for the complete documented range; keep borrowed
 * decode views alive and respect nonoverlap rules.
 * @param[in] capacity Available caller output capacity in bytes; this is not a Host quota
 * override.
 * @return Complete local value described above; any borrowed pointers retain their original
 * storage lifetime and transfer no ownership.
 * @par Permissions
 * None for this local codec operation; encoding/decoding does not authorize publication or
 * mutation.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_writer_init(), roswasmc_reader_init()
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE roswasmc_writer roswasmc_writer_init(void* bytes, size_t capacity)
{
    roswasmc_writer out;
    out.data = (unsigned char*)bytes;
    out.capacity = capacity;
    out.size = 0;
    out.valid = bytes != 0 || capacity == 0;
    return out;
}

/**
 * @brief Initialize a reader over the exact import-returned bytes.
 *
 * @details Operate on the complete canonical representation described above, using caller-owned
 * storage. Preserve exact field order, signed integer bits and borrowed-view lifetimes; never
 * serialize C padding or native ROS objects.
 *
 * @par C storage and execution contract
 * @param[in] bytes Caller-owned byte storage for the complete documented range; keep borrowed
 * decode views alive and respect nonoverlap rules.
 * @param[in] length Byte count or byte-count destination as specified above; only successful
 * documented commits make output valid.
 * @return Complete local value described above; any borrowed pointers retain their original
 * storage lifetime and transfer no ownership.
 * @par Permissions
 * None for this local codec operation; encoding/decoding does not authorize publication or
 * mutation.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_writer_init(), roswasmc_reader_init()
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE roswasmc_reader roswasmc_reader_init(void const* bytes, size_t length)
{
    roswasmc_reader in;
    in.data = (unsigned char const*)bytes;
    in.size = length;
    in.position = 0;
    in.valid = bytes != 0 || length == 0;
    return in;
}

/**
 * @brief Append raw bytes; buffer overflow changes valid to zero.
 *
 * @details Operate on the complete canonical representation described above, using caller-owned
 * storage. Preserve exact field order, signed integer bits and borrowed-view lifetimes; never
 * serialize C padding or native ROS objects.
 *
 * @par C storage and execution contract
 * @param[out] out Live caller-owned object/storage with the extent and state described above; no
 * implicit allocation or ownership duplication.
 * @param[in] bytes Caller-owned byte storage for the complete documented range; keep borrowed
 * decode views alive and respect nonoverlap rules.
 * @param[in] length Byte count or byte-count destination as specified above; only successful
 * documented commits make output valid.
 * @return Nonzero when the documented local predicate/codec step succeeds, otherwise0; this is not
 * a Host permission decision.
 * @par Permissions
 * None for this local codec operation; encoding/decoding does not authorize publication or
 * mutation.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_writer_init(), roswasmc_reader_init()
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE int roswasmc_write_bytes(roswasmc_writer* out, void const* bytes, size_t length)
{
    size_t i;
    if(!out)
    {
        return 0;
    }
    if(!out->valid || out->size > out->capacity || length > out->capacity - out->size || (!out->data && length) || (!bytes && length))
    {
        out->valid = 0;
        return 0;
    }
    for(i = 0; i < length; ++i)
    {
        out->data[out->size + i] = ((unsigned char const*)bytes)[i];
    }
    out->size += length;
    return 1;
}

/**
 * @brief Append an unsigned LE integer of width 1..8, rejecting truncation.
 *
 * @details Operate on the complete canonical representation described above, using caller-owned
 * storage. Preserve exact field order, signed integer bits and borrowed-view lifetimes; never
 * serialize C padding or native ROS objects.
 *
 * @par C storage and execution contract
 * @param[out] out Live caller-owned object/storage with the extent and state described above; no
 * implicit allocation or ownership duplication.
 * @param[in] value Complete initialized canonical value or documented destination; borrowed
 * subviews retain the backing buffer's lifetime.
 * @param[in] width Canonical integer width in bytes,1..8; truncating writes are rejected.
 * @return Nonzero when the documented local predicate/codec step succeeds, otherwise0; this is not
 * a Host permission decision.
 * @par Permissions
 * None for this local codec operation; encoding/decoding does not authorize publication or
 * mutation.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_writer_init(), roswasmc_reader_init()
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE int roswasmc_write_integer(roswasmc_writer* out, uwvm_ros_u64 value, unsigned width)
{
    unsigned char bytes[8];
    unsigned i;
    if(!out)
    {
        return 0;
    }
    if(!width || width > 8 || (width < 8 && (value >> (width * 8))))
    {
        out->valid = 0;
        return 0;
    }
    for(i = 0; i < width; ++i)
    {
        bytes[i] = (unsigned char)(value >> (i * 8));
    }
    return roswasmc_write_bytes(out, bytes, width);
}

/**
 * @brief Append one canonical u32-length UTF-8 string; host validates UTF-8 separately.
 *
 * @details Operate on the complete canonical representation described above, using caller-owned
 * storage. Preserve exact field order, signed integer bits and borrowed-view lifetimes; never
 * serialize C padding or native ROS objects.
 *
 * @par C storage and execution contract
 * @param[out] out Live caller-owned object/storage with the extent and state described above; no
 * implicit allocation or ownership duplication.
 * @param[in] text Complete initialized canonical value or documented destination; borrowed
 * subviews retain the backing buffer's lifetime.
 * @return Nonzero when the documented local predicate/codec step succeeds, otherwise0; this is not
 * a Host permission decision.
 * @par Permissions
 * None for this local codec operation; encoding/decoding does not authorize publication or
 * mutation.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_writer_init(), roswasmc_reader_init()
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE int roswasmc_write_string(roswasmc_writer* out, roswasmc_string text)
{
    if(!out)
    {
        return 0;
    }
    if(!out->valid || out->size > out->capacity || text.size > UWVM_ROS_U32_MAX || out->capacity - out->size < 4 || text.size > out->capacity - out->size - 4 ||
       (!text.data && text.size))
    {
        out->valid = 0;
        return 0;
    }
    return roswasmc_write_integer(out, (uwvm_ros_u32)text.size, 4) && roswasmc_write_bytes(out, text.data, text.size);
}

/**
 * @brief Append one IEEE754 binary64 value using portable byte copies.
 * The WebAssembly target must use eight-byte IEEE754 doubles. Finite values are
 * required by the host; this codec rejects exponent-all-ones before writing.
 *
 * @details Operate on the complete canonical representation described above, using caller-owned
 * storage. Preserve exact field order, signed integer bits and borrowed-view lifetimes; never
 * serialize C padding or native ROS objects.
 *
 * @par C storage and execution contract
 * @param[out] out Live caller-owned object/storage with the extent and state described above; no
 * implicit allocation or ownership duplication.
 * @param[in] value Complete initialized canonical value or documented destination; borrowed
 * subviews retain the backing buffer's lifetime.
 * @return Nonzero when the documented local predicate/codec step succeeds, otherwise0; this is not
 * a Host permission decision.
 * @par Permissions
 * None for this local codec operation; encoding/decoding does not authorize publication or
 * mutation.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_writer_init(), roswasmc_reader_init()
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE int roswasmc_write_float64(roswasmc_writer* out, double value)
{
    uwvm_ros_u64 bits = 0;
    if(!out)
    {
        return 0;
    }
    if(!ROSWASMC_HAS_BINARY64)
    {
        out->valid = 0;
        return 0;
    }
    roswasmc_copy_object(&bits, &value, 8);
    if((bits & UWVM_ROS_U64_C(0x7ff0000000000000)) == UWVM_ROS_U64_C(0x7ff0000000000000))
    {
        out->valid = 0;
        return 0;
    }
    return roswasmc_write_integer(out, bits, 8);
}

/**
 * @brief Read one LE integer; preserve the destination when truncated.
 *
 * @details Operate on the complete canonical representation described above, using caller-owned
 * storage. Preserve exact field order, signed integer bits and borrowed-view lifetimes; never
 * serialize C padding or native ROS objects.
 *
 * @par C storage and execution contract
 * @param[in,out] in Live caller-owned object/storage with the extent and state described above; no
 * implicit allocation or ownership duplication.
 * @param[in,out] value Complete initialized canonical value or documented destination; borrowed
 * subviews retain the backing buffer's lifetime.
 * @param[in] width Canonical integer width in bytes,1..8; truncating writes are rejected.
 * @return Nonzero when the documented local predicate/codec step succeeds, otherwise0; this is not
 * a Host permission decision.
 * @par Permissions
 * None for this local codec operation; encoding/decoding does not authorize publication or
 * mutation.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_writer_init(), roswasmc_reader_init()
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE int roswasmc_read_integer(roswasmc_reader* in, uwvm_ros_u64* value, unsigned width)
{
    uwvm_ros_u64 next = 0;
    unsigned i;
    if(!in)
    {
        return 0;
    }
    if(!in->valid || in->position > in->size || !width || width > 8 || width > in->size - in->position || !in->data || !value)
    {
        in->valid = 0;
        return 0;
    }
    for(i = 0; i < width; ++i)
    {
        next |= (uwvm_ros_u64)in->data[in->position + i] << (i * 8);
    }
    in->position += width;
    *value = next;
    return 1;
}

/**
 * @brief Read one borrowed length-prefixed string; no allocation or terminator is added.
 *
 * @details Operate on the complete canonical representation described above, using caller-owned
 * storage. Preserve exact field order, signed integer bits and borrowed-view lifetimes; never
 * serialize C padding or native ROS objects.
 *
 * @par C storage and execution contract
 * @param[in,out] in Live caller-owned object/storage with the extent and state described above; no
 * implicit allocation or ownership duplication.
 * @param[in,out] text Complete initialized canonical value or documented destination; borrowed
 * subviews retain the backing buffer's lifetime.
 * @return Nonzero when the documented local predicate/codec step succeeds, otherwise0; this is not
 * a Host permission decision.
 * @par Permissions
 * None for this local codec operation; encoding/decoding does not authorize publication or
 * mutation.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_writer_init(), roswasmc_reader_init()
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE int roswasmc_read_string(roswasmc_reader* in, roswasmc_string* text)
{
    uwvm_ros_u64 length;
    if(!in)
    {
        return 0;
    }
    if(!text || !roswasmc_read_integer(in, &length, 4) || length > in->size - in->position)
    {
        in->valid = 0;
        return 0;
    }
    text->data = (char const*)(in->data + in->position);
    text->size = (size_t)length;
    in->position += (size_t)length;
    return 1;
}

/**
 * @brief Read a finite IEEE754 binary64 field, preserving destination on failure.
 *
 * @details Operate on the complete canonical representation described above, using caller-owned
 * storage. Preserve exact field order, signed integer bits and borrowed-view lifetimes; never
 * serialize C padding or native ROS objects.
 *
 * @par C storage and execution contract
 * @param[in,out] in Live caller-owned object/storage with the extent and state described above; no
 * implicit allocation or ownership duplication.
 * @param[in,out] value Complete initialized canonical value or documented destination; borrowed
 * subviews retain the backing buffer's lifetime.
 * @return Nonzero when the documented local predicate/codec step succeeds, otherwise0; this is not
 * a Host permission decision.
 * @par Permissions
 * None for this local codec operation; encoding/decoding does not authorize publication or
 * mutation.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_writer_init(), roswasmc_reader_init()
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE int roswasmc_read_float64(roswasmc_reader* in, double* value)
{
    uwvm_ros_u64 bits;
    if(!in)
    {
        return 0;
    }
    if(!value || !ROSWASMC_HAS_BINARY64 || !roswasmc_read_integer(in, &bits, 8) ||
       (bits & UWVM_ROS_U64_C(0x7ff0000000000000)) == UWVM_ROS_U64_C(0x7ff0000000000000))
    {
        in->valid = 0;
        return 0;
    }
    roswasmc_copy_object(value, &bits, 8);
    return 1;
}

/**
 * @brief Require exact consumption: trailing bytes are invalid canonical values.
 *
 * @details Operate on the complete canonical representation described above, using caller-owned
 * storage. Preserve exact field order, signed integer bits and borrowed-view lifetimes; never
 * serialize C padding or native ROS objects.
 *
 * @par C storage and execution contract
 * @param[in] in Live caller-owned object/storage with the extent and state described above; no
 * implicit allocation or ownership duplication.
 * @return Nonzero when the documented local predicate/codec step succeeds, otherwise0; this is not
 * a Host permission decision.
 * @par Permissions
 * None for this local codec operation; encoding/decoding does not authorize publication or
 * mutation.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_writer_init(), roswasmc_reader_init()
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE int roswasmc_reader_done(roswasmc_reader const* in)
{
    return in && in->valid && in->position == in->size;
}

/**
 * @brief Validate well-formed UTF-8, optionally allowing scalar-string NUL.
 * This performs bounded borrowed reads and rejects overlong/surrogate sequences.
 *
 * @details Operate on the complete canonical representation described above, using caller-owned
 * storage. Preserve exact field order, signed integer bits and borrowed-view lifetimes; never
 * serialize C padding or native ROS objects.
 *
 * @par C storage and execution contract
 * @param[in] value Complete initialized canonical value or documented destination; borrowed
 * subviews retain the backing buffer's lifetime.
 * @param[in] allow_nul Explicit value in the domain described above; no implicit unit conversion,
 * policy grant or retry.
 * @return Nonzero when the documented local predicate/codec step succeeds, otherwise0; this is not
 * a Host permission decision.
 * @par Permissions
 * None for this local codec operation; encoding/decoding does not authorize publication or
 * mutation.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_writer_init(), roswasmc_reader_init()
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE int roswasmc_utf8(roswasmc_string value, int allow_nul)
{
    size_t pos = 0;
    if(!value.data && value.size)
    {
        return 0;
    }
    while(pos < value.size)
    {
        unsigned lead = (unsigned char)value.data[pos++], n = 0;
        uwvm_ros_u32 cp = 0, min = 0;
        if(lead < 128)
        {
            if(!lead && !allow_nul)
            {
                return 0;
            }
            continue;
        }
        if(lead >= 0xc2 && lead <= 0xdf)
        {
            n = 1;
            cp = lead & 31;
            min = 128;
        }
        else if(lead >= 0xe0 && lead <= 0xef)
        {
            n = 2;
            cp = lead & 15;
            min = 2048;
        }
        else if(lead >= 0xf0 && lead <= 0xf4)
        {
            n = 3;
            cp = lead & 7;
            min = 65536;
        }
        else
        {
            return 0;
        }
        if(n > value.size - pos)
        {
            return 0;
        }
        while(n--)
        {
            unsigned b = (unsigned char)value.data[pos++];
            if((b & 0xc0) != 0x80)
            {
                return 0;
            }
            cp = (cp << 6) | (b & 63);
        }
        if(cp < min || cp > 0x10ffff || (cp >= 0xd800 && cp <= 0xdfff))
        {
            return 0;
        }
    }
    return 1;
}

/**
 * @brief Encode std_msgs String; on failure length is preserved but scratch bytes may change.
 *
 * @details Operate on the complete canonical representation described above, using caller-owned
 * storage. Preserve exact field order, signed integer bits and borrowed-view lifetimes; never
 * serialize C padding or native ROS objects.
 *
 * @par C storage and execution contract
 * @param[in] value Complete initialized canonical value or documented destination; borrowed
 * subviews retain the backing buffer's lifetime.
 * @param[out] output Caller-owned byte storage for the complete documented range; keep borrowed
 * decode views alive and respect nonoverlap rules.
 * @param[in] capacity Available caller output capacity in bytes; this is not a Host quota
 * override.
 * @param[out] length Byte count or byte-count destination as specified above; only successful
 * documented commits make output valid.
 * @return 0 on a complete canonical value, otherwise22 for invalid fields, framing, representation
 * or storage; preserve the specific scratch/destination rules documented above.
 * @par Permissions
 * None for this local codec operation; encoding/decoding does not authorize publication or
 * mutation.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_writer_init(), roswasmc_reader_init()
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE uwvm_ros_u32 roswasmc_encode_string(roswasmc_string value, void* output, size_t capacity, size_t* length)
{
    roswasmc_writer out = roswasmc_writer_init(output, capacity);
    if(!length || !roswasmc_utf8(value, 1) || !roswasmc_write_string(&out, value))
    {
        return UWVM_ROS_INVALID;
    }
    *length = out.size;
    return 0;
}

/**
 * @brief Decode std_msgs String and preserve the destination on failure.
 *
 * @details Operate on the complete canonical representation described above, using caller-owned
 * storage. Preserve exact field order, signed integer bits and borrowed-view lifetimes; never
 * serialize C padding or native ROS objects.
 *
 * @par C storage and execution contract
 * @param[in] bytes Caller-owned byte storage for the complete documented range; keep borrowed
 * decode views alive and respect nonoverlap rules.
 * @param[in] length Byte count or byte-count destination as specified above; only successful
 * documented commits make output valid.
 * @param[in,out] value Complete initialized canonical value or documented destination; borrowed
 * subviews retain the backing buffer's lifetime.
 * @return 0 on a complete canonical value, otherwise22 for invalid fields, framing, representation
 * or storage; preserve the specific scratch/destination rules documented above.
 * @par Permissions
 * None for this local codec operation; encoding/decoding does not authorize publication or
 * mutation.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_writer_init(), roswasmc_reader_init()
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE uwvm_ros_u32 roswasmc_decode_string(void const* bytes, size_t length, roswasmc_string* value)
{
    roswasmc_reader in = roswasmc_reader_init(bytes, length);
    roswasmc_string next;
    if(!value || !roswasmc_read_string(&in, &next) || !roswasmc_utf8(next, 1) || !roswasmc_reader_done(&in))
    {
        return UWVM_ROS_INVALID;
    }
    *value = next;
    return 0;
}

/**
 * @brief Encode Bool as exactly one byte (0 or 1), rejecting other C integer values.
 *
 * @details Operate on the complete canonical representation described above, using caller-owned
 * storage. Preserve exact field order, signed integer bits and borrowed-view lifetimes; never
 * serialize C padding or native ROS objects.
 *
 * @par C storage and execution contract
 * @param[in] value Complete initialized canonical value or documented destination; borrowed
 * subviews retain the backing buffer's lifetime.
 * @param[out] output Caller-owned byte storage for the complete documented range; keep borrowed
 * decode views alive and respect nonoverlap rules.
 * @param[in] capacity Available caller output capacity in bytes; this is not a Host quota
 * override.
 * @param[out] length Byte count or byte-count destination as specified above; only successful
 * documented commits make output valid.
 * @return 0 on a complete canonical value, otherwise22 for invalid fields, framing, representation
 * or storage; preserve the specific scratch/destination rules documented above.
 * @par Permissions
 * None for this local codec operation; encoding/decoding does not authorize publication or
 * mutation.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_writer_init(), roswasmc_reader_init()
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE uwvm_ros_u32 roswasmc_encode_bool(int value, void* output, size_t capacity, size_t* length)
{
    if((value != 0 && value != 1) || !output || !capacity || !length)
    {
        return UWVM_ROS_INVALID;
    }
    ((unsigned char*)output)[0] = (unsigned char)value;
    *length = 1;
    return 0;
}

/**
 * @brief Decode canonical Bool; destination remains unchanged on failure.
 *
 * @details Operate on the complete canonical representation described above, using caller-owned
 * storage. Preserve exact field order, signed integer bits and borrowed-view lifetimes; never
 * serialize C padding or native ROS objects.
 *
 * @par C storage and execution contract
 * @param[in] bytes Caller-owned byte storage for the complete documented range; keep borrowed
 * decode views alive and respect nonoverlap rules.
 * @param[in] length Byte count or byte-count destination as specified above; only successful
 * documented commits make output valid.
 * @param[in,out] value Complete initialized canonical value or documented destination; borrowed
 * subviews retain the backing buffer's lifetime.
 * @return 0 on a complete canonical value, otherwise22 for invalid fields, framing, representation
 * or storage; preserve the specific scratch/destination rules documented above.
 * @par Permissions
 * None for this local codec operation; encoding/decoding does not authorize publication or
 * mutation.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_writer_init(), roswasmc_reader_init()
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE uwvm_ros_u32 roswasmc_decode_bool(void const* bytes, size_t length, int* value)
{
    if(!bytes || length != 1 || !value || ((unsigned char const*)bytes)[0] > 1)
    {
        return UWVM_ROS_INVALID;
    }
    *value = ((unsigned char const*)bytes)[0] != 0;
    return 0;
}

/**
 * @brief Encode six finite Twist doubles; capacity must cover exactly 48 bytes.
 *
 * @details Operate on the complete canonical representation described above, using caller-owned
 * storage. Preserve exact field order, signed integer bits and borrowed-view lifetimes; never
 * serialize C padding or native ROS objects.
 *
 * @par C storage and execution contract
 * @param[in] value Complete initialized canonical value or documented destination; borrowed
 * subviews retain the backing buffer's lifetime.
 * @param[out] output Caller-owned byte storage for the complete documented range; keep borrowed
 * decode views alive and respect nonoverlap rules.
 * @param[in] capacity Available caller output capacity in bytes; this is not a Host quota
 * override.
 * @param[out] length Byte count or byte-count destination as specified above; only successful
 * documented commits make output valid.
 * @return 0 on a complete canonical value, otherwise22 for invalid fields, framing, representation
 * or storage; preserve the specific scratch/destination rules documented above.
 * @par Permissions
 * None for this local codec operation; encoding/decoding does not authorize publication or
 * mutation.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_writer_init(), roswasmc_reader_init()
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE uwvm_ros_u32 roswasmc_encode_twist(roswasmc_twist const* value, void* output, size_t capacity, size_t* length)
{
    roswasmc_writer out = roswasmc_writer_init(output, capacity);
    unsigned i;
    if(!value || !length)
    {
        return UWVM_ROS_INVALID;
    }
    for(i = 0; i < 3; ++i)
    {
        if(!roswasmc_write_float64(&out, value->linear[i]))
        {
            return UWVM_ROS_INVALID;
        }
    }
    for(i = 0; i < 3; ++i)
    {
        if(!roswasmc_write_float64(&out, value->angular[i]))
        {
            return UWVM_ROS_INVALID;
        }
    }
    *length = out.size;
    return 0;
}

/**
 * @brief Decode a Twist transactionally; exact length and all finite fields are required.
 *
 * @details Operate on the complete canonical representation described above, using caller-owned
 * storage. Preserve exact field order, signed integer bits and borrowed-view lifetimes; never
 * serialize C padding or native ROS objects.
 *
 * @par C storage and execution contract
 * @param[in] bytes Caller-owned byte storage for the complete documented range; keep borrowed
 * decode views alive and respect nonoverlap rules.
 * @param[in] length Byte count or byte-count destination as specified above; only successful
 * documented commits make output valid.
 * @param[in,out] value Complete initialized canonical value or documented destination; borrowed
 * subviews retain the backing buffer's lifetime.
 * @return 0 on a complete canonical value, otherwise22 for invalid fields, framing, representation
 * or storage; preserve the specific scratch/destination rules documented above.
 * @par Permissions
 * None for this local codec operation; encoding/decoding does not authorize publication or
 * mutation.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_writer_init(), roswasmc_reader_init()
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE uwvm_ros_u32 roswasmc_decode_twist(void const* bytes, size_t length, roswasmc_twist* value)
{
    roswasmc_reader in = roswasmc_reader_init(bytes, length);
    roswasmc_twist next;
    unsigned i;
    if(!value)
    {
        return UWVM_ROS_INVALID;
    }
    for(i = 0; i < 3; ++i)
    {
        if(!roswasmc_read_float64(&in, &next.linear[i]))
        {
            return UWVM_ROS_INVALID;
        }
    }
    for(i = 0; i < 3; ++i)
    {
        if(!roswasmc_read_float64(&in, &next.angular[i]))
        {
            return UWVM_ROS_INVALID;
        }
    }
    if(!roswasmc_reader_done(&in))
    {
        return UWVM_ROS_INVALID;
    }
    *value = next;
    return 0;
}

/**
 * @brief Publish a typed String using caller-owned encoding scratch storage.
 *
 * @details Execute the bounded operation described above with the supplied complete values and
 * stable owners. Inspect its actual result before using output; do not implicitly retry a consumed
 * event or uncertain external operation.
 *
 * @par C storage and execution contract
 * @param[in] cap Initialized capability owner; keep its context/backend alive for the complete
 * operation.
 * @param[in] value Complete initialized canonical value or documented destination; borrowed
 * subviews retain the backing buffer's lifetime.
 * @param[in,out] scratch Caller-owned byte storage for the complete documented range; keep
 * borrowed decode views alive and respect nonoverlap rules.
 * @param[in] capacity Available caller output capacity in bytes; this is not a Host quota
 * override.
 * @return Numeric ABI/local error:0 on success. Preserve the documented output/owner state on
 * rejection;95 means unsupported, never a fabricated result.
 * @par Permissions
 * The matching operation-specific aliases must already be explicitly granted; this facade never
 * supplies Host policy, endpoints or native identity.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_open(), roswasmc_result
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE uwvm_ros_u32 roswasmc_publish_string(roswasmc_capability const* cap, roswasmc_string value, void* scratch, size_t capacity)
{
    size_t length;
    uwvm_ros_u32 error = roswasmc_encode_string(value, scratch, capacity, &length);
    return error ? error : roswasmc_publish(cap, scratch, length);
}

/**
 * @brief Publish a typed Bool; the one-byte scratch value is copied during the import.
 *
 * @details Execute the bounded operation described above with the supplied complete values and
 * stable owners. Inspect its actual result before using output; do not implicitly retry a consumed
 * event or uncertain external operation.
 *
 * @par C storage and execution contract
 * @param[in] cap Initialized capability owner; keep its context/backend alive for the complete
 * operation.
 * @param[in] value Complete initialized canonical value or documented destination; borrowed
 * subviews retain the backing buffer's lifetime.
 * @return Numeric ABI/local error:0 on success. Preserve the documented output/owner state on
 * rejection;95 means unsupported, never a fabricated result.
 * @par Permissions
 * The matching operation-specific aliases must already be explicitly granted; this facade never
 * supplies Host policy, endpoints or native identity.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_open(), roswasmc_result
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE uwvm_ros_u32 roswasmc_publish_bool(roswasmc_capability const* cap, int value)
{
    unsigned char bytes[1];
    size_t length;
    uwvm_ros_u32 error = roswasmc_encode_bool(value, bytes, 1, &length);
    return error ? error : roswasmc_publish(cap, bytes, length);
}

/**
 * @brief Publish typed Twist using a fixed 48-byte local scratch array.
 *
 * @details Execute the bounded operation described above with the supplied complete values and
 * stable owners. Inspect its actual result before using output; do not implicitly retry a consumed
 * event or uncertain external operation.
 *
 * @par C storage and execution contract
 * @param[in] cap Initialized capability owner; keep its context/backend alive for the complete
 * operation.
 * @param[in] value Complete initialized canonical value or documented destination; borrowed
 * subviews retain the backing buffer's lifetime.
 * @return Numeric ABI/local error:0 on success. Preserve the documented output/owner state on
 * rejection;95 means unsupported, never a fabricated result.
 * @par Permissions
 * The matching operation-specific aliases must already be explicitly granted; this facade never
 * supplies Host policy, endpoints or native identity.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_open(), roswasmc_result
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE uwvm_ros_u32 roswasmc_publish_twist(roswasmc_capability const* cap, roswasmc_twist const* value)
{
    unsigned char bytes[48];
    size_t length;
    uwvm_ros_u32 error = roswasmc_encode_twist(value, bytes, 48, &length);
    return error ? error : roswasmc_publish(cap, bytes, length);
}

/**
 * @brief Supported Trigger/SetBool response with borrowed UTF-8 message.
 *
 * @details success is canonical Bool0/1 and message is a borrowed UTF-8 String. The message view
 * shares the response buffer's lifetime; native failure and transport errno are separate facts.
 * @par C type contract
 * Use the declared complete value and exact representation. Caller-owned storage and any borrowed
 * members retain the lifetimes documented above; no implicit allocation or ownership duplication
 * occurs.
 * @see roswasmc_decode_service_response(), roswasmc_trigger_call()
 * @see @ref roswasmc_c_contracts
 */
typedef struct roswasmc_service_response
{
    int success;
    roswasmc_string message;
} roswasmc_service_response;

/**
 * @brief Decode the common Trigger/SetBool response (Bool followed by String).
 *
 * @details Operate on the complete canonical representation described above, using caller-owned
 * storage. Preserve exact field order, signed integer bits and borrowed-view lifetimes; never
 * serialize C padding or native ROS objects.
 *
 * @par C storage and execution contract
 * @param[in] bytes Caller-owned byte storage for the complete documented range; keep borrowed
 * decode views alive and respect nonoverlap rules.
 * @param[in] length Byte count or byte-count destination as specified above; only successful
 * documented commits make output valid.
 * @param[in,out] response Complete initialized canonical value or documented destination; borrowed
 * subviews retain the backing buffer's lifetime.
 * @return 0 on a complete canonical value, otherwise22 for invalid fields, framing, representation
 * or storage; preserve the specific scratch/destination rules documented above.
 * @par Permissions
 * None for this local codec operation; encoding/decoding does not authorize publication or
 * mutation.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_writer_init(), roswasmc_reader_init()
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE uwvm_ros_u32 roswasmc_decode_service_response(void const* bytes, size_t length, roswasmc_service_response* response)
{
    roswasmc_reader in = roswasmc_reader_init(bytes, length);
    roswasmc_service_response next;
    uwvm_ros_u64 success;
    if(!response || !roswasmc_read_integer(&in, &success, 1) || success > 1 || !roswasmc_read_string(&in, &next.message) || !roswasmc_utf8(next.message, 1) ||
       !roswasmc_reader_done(&in))
    {
        return UWVM_ROS_INVALID;
    }
    next.success = (int)success;
    *response = next;
    return 0;
}

/**
 * @brief Reply to one owned service request using its eight-byte ID prefix.
 * The separate response alias must match the advertise resource and type.
 *
 * @details Execute the bounded operation described above with the supplied complete values and
 * stable owners. Inspect its actual result before using output; do not implicitly retry a consumed
 * event or uncertain external operation.
 *
 * @par C storage and execution contract
 * @param[in] respond Live caller-owned object/storage with the extent and state described above;
 * no implicit allocation or ownership duplication.
 * @param[in] request_id Owned nonzero Service request ID; encoding it does not establish
 * ownership.
 * @param[in] response Complete initialized canonical value or documented destination; borrowed
 * subviews retain the backing buffer's lifetime.
 * @param[in,out] scratch Caller-owned byte storage for the complete documented range; keep
 * borrowed decode views alive and respect nonoverlap rules.
 * @param[in] capacity Available caller output capacity in bytes; this is not a Host quota
 * override.
 * @return Numeric ABI/local error:0 on success. Preserve the documented output/owner state on
 * rejection;95 means unsupported, never a fabricated result.
 * @par Permissions
 * The matching operation-specific aliases must already be explicitly granted; this facade never
 * supplies Host policy, endpoints or native identity.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_open(), roswasmc_result
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE uwvm_ros_u32
    roswasmc_service_reply(roswasmc_capability const* respond, uwvm_ros_u64 request_id, roswasmc_service_response response, void* scratch, size_t capacity)
{
    roswasmc_writer out = roswasmc_writer_init(scratch, capacity);
    roswasmc_result result;
    if(!request_id || (response.success != 0 && response.success != 1) || !roswasmc_utf8(response.message, 1) || !roswasmc_write_integer(&out, request_id, 8) ||
       !roswasmc_write_integer(&out, (uwvm_ros_u64)response.success, 1) || !roswasmc_write_string(&out, response.message))
    {
        return UWVM_ROS_INVALID;
    }
    result = roswasmc_service_respond(respond, out.data, out.size, 0, 0);
    return result.error;
}

/**
 * @brief Send a Fibonacci goal; the goal output is changed only after a valid successful reply.
 *
 * @details Execute the bounded operation described above with the supplied complete values and
 * stable owners. Inspect its actual result before using output; do not implicitly retry a consumed
 * event or uncertain external operation.
 *
 * @par C storage and execution contract
 * @param[in] send Live caller-owned object/storage with the extent and state described above; no
 * implicit allocation or ownership duplication.
 * @param[in] order Explicit value in the domain described above; no implicit unit conversion,
 * policy grant or retry.
 * @param[in,out] goal Native-correlated goal ID, not a capability; zero is accepted only by the
 * explicitly documented all-goals operation.
 * @return Numeric ABI/local error:0 on success. Preserve the documented output/owner state on
 * rejection;95 means unsupported, never a fabricated result.
 * @par Permissions
 * The matching operation-specific aliases must already be explicitly granted; this facade never
 * supplies Host policy, endpoints or native identity.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_open(), roswasmc_result
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE uwvm_ros_u32 roswasmc_fibonacci_send_goal(roswasmc_capability const* send, uwvm_ros_i32 order, uwvm_ros_u64* goal)
{
    unsigned char request[4], response[8];
    roswasmc_result result;
    uwvm_ros_store_u32(request, (uwvm_ros_u32)order);
    if(!goal)
    {
        return UWVM_ROS_INVALID;
    }
    result = roswasmc_action_send_goal(send, request, 4, response, 8);
    if(result.error)
    {
        return result.error;
    }
    if(!result.has_length || result.length != 8 || !uwvm_ros_load_u64(response))
    {
        return UWVM_ROS_INVALID;
    }
    *goal = uwvm_ros_load_u64(response);
    return 0;
}

/**
 * @brief Read a granted ROS/system/wall/steady clock; no WASI clock grant is inferred.
 *
 * @details Execute the bounded operation described above with the supplied complete values and
 * stable owners. Inspect its actual result before using output; do not implicitly retry a consumed
 * event or uncertain external operation.
 *
 * @par C storage and execution contract
 * @param[in] cap Initialized capability owner; keep its context/backend alive for the complete
 * operation.
 * @param[in] clock One supported clock operation selector; the capability must independently
 * authorize that clock.
 * @param[out] nanoseconds Unsigned nanosecond value/destination in the selected clock or transform
 * domain.
 * @return Numeric ABI/local error:0 on success. Preserve the documented output/owner state on
 * rejection;95 means unsupported, never a fabricated result.
 * @par Permissions
 * The matching operation-specific aliases must already be explicitly granted; this facade never
 * supplies Host policy, endpoints or native identity.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_open(), roswasmc_result
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE uwvm_ros_u32 roswasmc_clock_read(roswasmc_capability const* cap, roswasmc_operation clock, uwvm_ros_u64* nanoseconds)
{
    unsigned char response[8];
    roswasmc_result result;
    if(!nanoseconds)
    {
        return UWVM_ROS_INVALID;
    }
    if(clock != ROSWASMC_TIME_READ_ROS && clock != ROSWASMC_TIME_READ_WALL && clock != ROSWASMC_TIME_READ_SYSTEM && clock != ROSWASMC_TIME_READ_STEADY)
    {
        return UWVM_ROS_INVALID;
    }
    result = roswasmc_request(cap, clock, 0, 0, response, 8);
    if(result.error)
    {
        return result.error;
    }
    if(!result.has_length || result.length != 8)
    {
        return UWVM_ROS_INVALID;
    }
    *nanoseconds = uwvm_ros_load_u64(response);
    return 0;
}

/**
 * @brief Complete borrowed canonical Image fields. ROS2 requires sequence zero.
 * encoding/frame_id/data remain borrowed from caller or the decode buffer.
 *
 * @details Represents every supported Image field, including pixel dimensions, row stride in
 * bytes, encoding and complete active data. Header/frame and payload views borrow backing storage;
 * native struct layout is never the wire representation.
 * @par C type contract
 * Use the declared complete value and exact representation. Caller-owned storage and any borrowed
 * members retain the lifetimes documented above; no implicit allocation or ownership duplication
 * occurs.
 * @see roswasmc_encode_image(), roswasmc_decode_image()
 * @see @ref roswasmc_c_contracts
 */
typedef struct roswasmc_image
{
    uwvm_ros_u32 sequence, seconds, nanoseconds, height, width, step;
    roswasmc_string frame_id, encoding;
    int bigendian;
    roswasmc_bytes data;
} roswasmc_image;

/**
 * @brief Complete borrowed TransformStamped fields; host policy owns allowed frame pairs.
 *
 * @details Carries complete frame IDs, timestamp, translation in metres and unitless quaternion
 * components. Preserve all fields and timestamp nanoseconds; the codec validates the documented
 * canonical representation without granting TF authority.
 * @par C type contract
 * Use the declared complete value and exact representation. Caller-owned storage and any borrowed
 * members retain the lifetimes documented above; no implicit allocation or ownership duplication
 * occurs.
 * @see roswasmc_encode_transform(), roswasmc_decode_transform()
 * @see @ref roswasmc_c_contracts
 */
typedef struct roswasmc_transform
{
    uwvm_ros_u32 sequence, seconds, nanoseconds;
    roswasmc_string parent_frame, child_frame;
    double translation[3], quaternion[4];
} roswasmc_transform;

/**
 * @brief Encode Image fields in canonical order. Host still checks geometry/stride/encoding
 * quotas.
 *
 * @details Operate on the complete canonical representation described above, using caller-owned
 * storage. Preserve exact field order, signed integer bits and borrowed-view lifetimes; never
 * serialize C padding or native ROS objects.
 *
 * @par C storage and execution contract
 * @param[in] value Complete initialized canonical value or documented destination; borrowed
 * subviews retain the backing buffer's lifetime.
 * @param[in,out] bytes Caller-owned byte storage for the complete documented range; keep borrowed
 * decode views alive and respect nonoverlap rules.
 * @param[in] capacity Available caller output capacity in bytes; this is not a Host quota
 * override.
 * @param[out] length Byte count or byte-count destination as specified above; only successful
 * documented commits make output valid.
 * @return 0 on a complete canonical value, otherwise22 for invalid fields, framing, representation
 * or storage; preserve the specific scratch/destination rules documented above.
 * @par Permissions
 * None for this local codec operation; encoding/decoding does not authorize publication or
 * mutation.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_writer_init(), roswasmc_reader_init()
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE uwvm_ros_u32 roswasmc_encode_image(roswasmc_image const* value, void* bytes, size_t capacity, size_t* length)
{
    roswasmc_writer out = roswasmc_writer_init(bytes, capacity);
    if(!value || !length || (value->bigendian != 0 && value->bigendian != 1) || value->data.size > UWVM_ROS_U32_MAX)
    {
        return UWVM_ROS_INVALID;
    }
    if(!roswasmc_write_integer(&out, value->sequence, 4) || !roswasmc_write_integer(&out, value->seconds, 4) ||
       !roswasmc_write_integer(&out, value->nanoseconds, 4) || !roswasmc_write_string(&out, value->frame_id) ||
       !roswasmc_write_integer(&out, value->height, 4) || !roswasmc_write_integer(&out, value->width, 4) || !roswasmc_write_string(&out, value->encoding) ||
       !roswasmc_write_integer(&out, (uwvm_ros_u64)value->bigendian, 1) || !roswasmc_write_integer(&out, value->step, 4) ||
       !roswasmc_write_integer(&out, value->data.size, 4) || !roswasmc_write_bytes(&out, value->data.data, value->data.size))
    {
        return UWVM_ROS_INVALID;
    }
    *length = out.size;
    return 0;
}

/**
 * @brief Decode Image transactionally into views borrowed from the exact input buffer.
 *
 * @details Operate on the complete canonical representation described above, using caller-owned
 * storage. Preserve exact field order, signed integer bits and borrowed-view lifetimes; never
 * serialize C padding or native ROS objects.
 *
 * @par C storage and execution contract
 * @param[in] bytes Caller-owned byte storage for the complete documented range; keep borrowed
 * decode views alive and respect nonoverlap rules.
 * @param[in] length Byte count or byte-count destination as specified above; only successful
 * documented commits make output valid.
 * @param[in,out] value Complete initialized canonical value or documented destination; borrowed
 * subviews retain the backing buffer's lifetime.
 * @return 0 on a complete canonical value, otherwise22 for invalid fields, framing, representation
 * or storage; preserve the specific scratch/destination rules documented above.
 * @par Permissions
 * None for this local codec operation; encoding/decoding does not authorize publication or
 * mutation.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_writer_init(), roswasmc_reader_init()
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE uwvm_ros_u32 roswasmc_decode_image(void const* bytes, size_t length, roswasmc_image* value)
{
    roswasmc_reader in = roswasmc_reader_init(bytes, length);
    roswasmc_image next;
    uwvm_ros_u64 n;
    if(!value || !roswasmc_read_integer(&in, &n, 4))
    {
        return UWVM_ROS_INVALID;
    }
    next.sequence = (uwvm_ros_u32)n;
    if(!roswasmc_read_integer(&in, &n, 4))
    {
        return UWVM_ROS_INVALID;
    }
    next.seconds = (uwvm_ros_u32)n;
    if(!roswasmc_read_integer(&in, &n, 4))
    {
        return UWVM_ROS_INVALID;
    }
    next.nanoseconds = (uwvm_ros_u32)n;
    if(!roswasmc_read_string(&in, &next.frame_id) || !roswasmc_read_integer(&in, &n, 4))
    {
        return UWVM_ROS_INVALID;
    }
    next.height = (uwvm_ros_u32)n;
    if(!roswasmc_read_integer(&in, &n, 4))
    {
        return UWVM_ROS_INVALID;
    }
    next.width = (uwvm_ros_u32)n;
    if(!roswasmc_read_string(&in, &next.encoding) || !roswasmc_read_integer(&in, &n, 1) || n > 1)
    {
        return UWVM_ROS_INVALID;
    }
    next.bigendian = (int)n;
    if(!roswasmc_read_integer(&in, &n, 4))
    {
        return UWVM_ROS_INVALID;
    }
    next.step = (uwvm_ros_u32)n;
    if(!roswasmc_read_integer(&in, &n, 4) || n > in.size - in.position)
    {
        return UWVM_ROS_INVALID;
    }
    next.data.data = in.data + in.position;
    next.data.size = (size_t)n;
    in.position += (size_t)n;
    if(!roswasmc_reader_done(&in))
    {
        return UWVM_ROS_INVALID;
    }
    *value = next;
    return 0;
}

/**
 * @brief Encode all Transform fields; rejects nonfinite doubles before import.
 *
 * @details Operate on the complete canonical representation described above, using caller-owned
 * storage. Preserve exact field order, signed integer bits and borrowed-view lifetimes; never
 * serialize C padding or native ROS objects.
 *
 * @par C storage and execution contract
 * @param[in] value Complete initialized canonical value or documented destination; borrowed
 * subviews retain the backing buffer's lifetime.
 * @param[in,out] bytes Caller-owned byte storage for the complete documented range; keep borrowed
 * decode views alive and respect nonoverlap rules.
 * @param[in] capacity Available caller output capacity in bytes; this is not a Host quota
 * override.
 * @param[out] length Byte count or byte-count destination as specified above; only successful
 * documented commits make output valid.
 * @return 0 on a complete canonical value, otherwise22 for invalid fields, framing, representation
 * or storage; preserve the specific scratch/destination rules documented above.
 * @par Permissions
 * None for this local codec operation; encoding/decoding does not authorize publication or
 * mutation.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_writer_init(), roswasmc_reader_init()
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE uwvm_ros_u32 roswasmc_encode_transform(roswasmc_transform const* value, void* bytes, size_t capacity, size_t* length)
{
    roswasmc_writer out = roswasmc_writer_init(bytes, capacity);
    unsigned i;
    if(!value || !length)
    {
        return UWVM_ROS_INVALID;
    }
    if(!roswasmc_write_integer(&out, value->sequence, 4) || !roswasmc_write_integer(&out, value->seconds, 4) ||
       !roswasmc_write_integer(&out, value->nanoseconds, 4) || !roswasmc_write_string(&out, value->parent_frame) ||
       !roswasmc_write_string(&out, value->child_frame))
    {
        return UWVM_ROS_INVALID;
    }
    for(i = 0; i < 3; ++i)
    {
        if(!roswasmc_write_float64(&out, value->translation[i]))
        {
            return UWVM_ROS_INVALID;
        }
    }
    for(i = 0; i < 4; ++i)
    {
        if(!roswasmc_write_float64(&out, value->quaternion[i]))
        {
            return UWVM_ROS_INVALID;
        }
    }
    *length = out.size;
    return 0;
}

/**
 * @brief Decode Transform transactionally; destination strings borrow input storage.
 *
 * @details Operate on the complete canonical representation described above, using caller-owned
 * storage. Preserve exact field order, signed integer bits and borrowed-view lifetimes; never
 * serialize C padding or native ROS objects.
 *
 * @par C storage and execution contract
 * @param[in] bytes Caller-owned byte storage for the complete documented range; keep borrowed
 * decode views alive and respect nonoverlap rules.
 * @param[in] length Byte count or byte-count destination as specified above; only successful
 * documented commits make output valid.
 * @param[in,out] value Complete initialized canonical value or documented destination; borrowed
 * subviews retain the backing buffer's lifetime.
 * @return 0 on a complete canonical value, otherwise22 for invalid fields, framing, representation
 * or storage; preserve the specific scratch/destination rules documented above.
 * @par Permissions
 * None for this local codec operation; encoding/decoding does not authorize publication or
 * mutation.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_writer_init(), roswasmc_reader_init()
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE uwvm_ros_u32 roswasmc_decode_transform(void const* bytes, size_t length, roswasmc_transform* value)
{
    roswasmc_reader in = roswasmc_reader_init(bytes, length);
    roswasmc_transform next;
    uwvm_ros_u64 n;
    unsigned i;
    if(!value || !roswasmc_read_integer(&in, &n, 4))
    {
        return UWVM_ROS_INVALID;
    }
    next.sequence = (uwvm_ros_u32)n;
    if(!roswasmc_read_integer(&in, &n, 4))
    {
        return UWVM_ROS_INVALID;
    }
    next.seconds = (uwvm_ros_u32)n;
    if(!roswasmc_read_integer(&in, &n, 4))
    {
        return UWVM_ROS_INVALID;
    }
    next.nanoseconds = (uwvm_ros_u32)n;
    if(!roswasmc_read_string(&in, &next.parent_frame) || !roswasmc_read_string(&in, &next.child_frame))
    {
        return UWVM_ROS_INVALID;
    }
    for(i = 0; i < 3; ++i)
    {
        if(!roswasmc_read_float64(&in, &next.translation[i]))
        {
            return UWVM_ROS_INVALID;
        }
    }
    for(i = 0; i < 4; ++i)
    {
        if(!roswasmc_read_float64(&in, &next.quaternion[i]))
        {
            return UWVM_ROS_INVALID;
        }
    }
    if(!roswasmc_reader_done(&in))
    {
        return UWVM_ROS_INVALID;
    }
    *value = next;
    return 0;
}

/**
 * @brief Parameter tag values match typed-event v2 tags; int32=10 is scalar ROS1-only.
 *
 * @details Exact wire type discriminator. ROS2 tags0..9 and ROS1 int32 additions retain their
 * original numeric identities; do not infer a type from C storage or project away array members.
 * @par C type contract
 * Use the declared complete value and exact representation. Caller-owned storage and any borrowed
 * members retain the lifetimes documented above; no implicit allocation or ownership duplication
 * occurs.
 * @see roswasmc_parameter_value, roswasmc_decode_parameter()
 * @see @ref roswasmc_c_contracts
 */
typedef enum roswasmc_parameter_tag
{

    /**
     * @brief Canonical selector: param deletion.
     *
     * @details Stable canonical discriminator or size constant whose exact value and valid range
     * are declared here. Preserve it across backend/profile changes; it grants no native
     * operation.
     * @par C type contract
     * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
     * owner nor a substitute for explicit Host policy.
     * @see roswasmc_parameter_tag, roswasmc_event_kind
     * @see @ref roswasmc_c_contracts
     */
    ROSWASMC_PARAM_DELETION = 0,
    /**
     * @brief Canonical selector: param bool.
     *
     * @details Stable canonical discriminator or size constant whose exact value and valid range
     * are declared here. Preserve it across backend/profile changes; it grants no native
     * operation.
     * @par C type contract
     * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
     * owner nor a substitute for explicit Host policy.
     * @see roswasmc_parameter_tag, roswasmc_event_kind
     * @see @ref roswasmc_c_contracts
     */
    ROSWASMC_PARAM_BOOL = 1,
    /**
     * @brief Canonical selector: param int64.
     *
     * @details Stable canonical discriminator or size constant whose exact value and valid range
     * are declared here. Preserve it across backend/profile changes; it grants no native
     * operation.
     * @par C type contract
     * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
     * owner nor a substitute for explicit Host policy.
     * @see roswasmc_parameter_tag, roswasmc_event_kind
     * @see @ref roswasmc_c_contracts
     */
    ROSWASMC_PARAM_INT64 = 2,
    /**
     * @brief Canonical selector: param float64.
     *
     * @details Stable canonical discriminator or size constant whose exact value and valid range
     * are declared here. Preserve it across backend/profile changes; it grants no native
     * operation.
     * @par C type contract
     * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
     * owner nor a substitute for explicit Host policy.
     * @see roswasmc_parameter_tag, roswasmc_event_kind
     * @see @ref roswasmc_c_contracts
     */
    ROSWASMC_PARAM_FLOAT64 = 3,

    /**
     * @brief Canonical selector: param string.
     *
     * @details Stable canonical discriminator or size constant whose exact value and valid range
     * are declared here. Preserve it across backend/profile changes; it grants no native
     * operation.
     * @par C type contract
     * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
     * owner nor a substitute for explicit Host policy.
     * @see roswasmc_parameter_tag, roswasmc_event_kind
     * @see @ref roswasmc_c_contracts
     */
    ROSWASMC_PARAM_STRING = 4,
    /**
     * @brief Canonical selector: param bytes.
     *
     * @details Stable canonical discriminator or size constant whose exact value and valid range
     * are declared here. Preserve it across backend/profile changes; it grants no native
     * operation.
     * @par C type contract
     * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
     * owner nor a substitute for explicit Host policy.
     * @see roswasmc_parameter_tag, roswasmc_event_kind
     * @see @ref roswasmc_c_contracts
     */
    ROSWASMC_PARAM_BYTES = 5,
    /**
     * @brief Canonical selector: param bools.
     *
     * @details Stable canonical discriminator or size constant whose exact value and valid range
     * are declared here. Preserve it across backend/profile changes; it grants no native
     * operation.
     * @par C type contract
     * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
     * owner nor a substitute for explicit Host policy.
     * @see roswasmc_parameter_tag, roswasmc_event_kind
     * @see @ref roswasmc_c_contracts
     */
    ROSWASMC_PARAM_BOOLS = 6,
    /**
     * @brief Canonical selector: param int64s.
     *
     * @details Stable canonical discriminator or size constant whose exact value and valid range
     * are declared here. Preserve it across backend/profile changes; it grants no native
     * operation.
     * @par C type contract
     * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
     * owner nor a substitute for explicit Host policy.
     * @see roswasmc_parameter_tag, roswasmc_event_kind
     * @see @ref roswasmc_c_contracts
     */
    ROSWASMC_PARAM_INT64S = 7,

    /**
     * @brief Canonical selector: param float64s.
     *
     * @details Stable canonical discriminator or size constant whose exact value and valid range
     * are declared here. Preserve it across backend/profile changes; it grants no native
     * operation.
     * @par C type contract
     * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
     * owner nor a substitute for explicit Host policy.
     * @see roswasmc_parameter_tag, roswasmc_event_kind
     * @see @ref roswasmc_c_contracts
     */
    ROSWASMC_PARAM_FLOAT64S = 8,
    /**
     * @brief Canonical selector: param strings.
     *
     * @details Stable canonical discriminator or size constant whose exact value and valid range
     * are declared here. Preserve it across backend/profile changes; it grants no native
     * operation.
     * @par C type contract
     * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
     * owner nor a substitute for explicit Host policy.
     * @see roswasmc_parameter_tag, roswasmc_event_kind
     * @see @ref roswasmc_c_contracts
     */
    ROSWASMC_PARAM_STRINGS = 9,
    /**
     * @brief Canonical selector: param int32.
     *
     * @details Stable canonical discriminator or size constant whose exact value and valid range
     * are declared here. Preserve it across backend/profile changes; it grants no native
     * operation.
     * @par C type contract
     * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
     * owner nor a substitute for explicit Host policy.
     * @see roswasmc_parameter_tag, roswasmc_event_kind
     * @see @ref roswasmc_c_contracts
     */
    ROSWASMC_PARAM_INT32 = 10,
    /**
     * @brief Canonical selector: param int32s.
     *
     * @details Stable canonical discriminator or size constant whose exact value and valid range
     * are declared here. Preserve it across backend/profile changes; it grants no native
     * operation.
     * @par C type contract
     * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
     * owner nor a substitute for explicit Host policy.
     * @see roswasmc_parameter_tag, roswasmc_event_kind
     * @see @ref roswasmc_c_contracts
     */
    ROSWASMC_PARAM_INT32S = 11
} roswasmc_parameter_tag;

/**
 * @brief Borrowed typed parameter value. integer_bits preserves signed two's-complement bits.
 * Arrays use complete canonical count-prefixed bytes in array_wire. Construct
 * them using write_integer/write_string/write_float64, then decode to validate.
 * They remain borrowed; this keeps C freestanding code allocation-free.
 *
 * @details tag selects the complete scalar/array union. Dynamic array/String elements are borrowed
 * canonical ranges, not native pointers on the wire. Preserve active element counts and use the
 * checked element accessor before reading a nested value.
 * @par C type contract
 * Use the declared complete value and exact representation. Caller-owned storage and any borrowed
 * members retain the lifetimes documented above; no implicit allocation or ownership duplication
 * occurs.
 * @see roswasmc_decode_parameter(), roswasmc_parameter_element()
 * @see @ref roswasmc_c_contracts
 */
typedef struct roswasmc_parameter_value
{
    roswasmc_parameter_tag tag;
    int boolean;
    uwvm_ros_u64 integer_bits;
    double real;
    roswasmc_string text;
    roswasmc_bytes array_wire;
    uwvm_ros_u32 element_count;
} roswasmc_parameter_value;

/**
 * @brief Decode all supported scalar/array values, with exact size, finite and UTF-8 checks.
 * Destination is preserved on failure. Tag is supplied from the granted type,
 * never inferred from arbitrary bytes. Array elements remain canonical LE bytes.
 *
 * @details Operate on the complete canonical representation described above, using caller-owned
 * storage. Preserve exact field order, signed integer bits and borrowed-view lifetimes; never
 * serialize C padding or native ROS objects.
 *
 * @par C storage and execution contract
 * @param[in] tag Exact canonical parameter type tag; validate the complete tagged value before
 * accessing its member.
 * @param[in] bytes Caller-owned byte storage for the complete documented range; keep borrowed
 * decode views alive and respect nonoverlap rules.
 * @param[in] length Byte count or byte-count destination as specified above; only successful
 * documented commits make output valid.
 * @param[in,out] value Complete initialized canonical value or documented destination; borrowed
 * subviews retain the backing buffer's lifetime.
 * @return 0 on a complete canonical value, otherwise22 for invalid fields, framing, representation
 * or storage; preserve the specific scratch/destination rules documented above.
 * @par Permissions
 * None for this local codec operation; encoding/decoding does not authorize publication or
 * mutation.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_writer_init(), roswasmc_reader_init()
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE uwvm_ros_u32 roswasmc_decode_parameter(roswasmc_parameter_tag tag, void const* bytes, size_t length, roswasmc_parameter_value* value)
{
    roswasmc_reader in = roswasmc_reader_init(bytes, length);
    roswasmc_parameter_value next = {
        ROSWASMC_PARAM_DELETION,
        0,
        0,
        0.0,
        {0, 0},
        {0, 0},
        0
    };
    uwvm_ros_u64 n, i;
    unsigned width = 0;
    if(!value || length > 4193786u)
    {
        return UWVM_ROS_INVALID;
    }
    next.tag = tag;
    if(tag == ROSWASMC_PARAM_BOOL)
    {
        if(!roswasmc_read_integer(&in, &n, 1) || n > 1)
        {
            return UWVM_ROS_INVALID;
        }
        next.boolean = (int)n;
    }
    else if(tag == ROSWASMC_PARAM_INT64 || tag == ROSWASMC_PARAM_INT32)
    {
        if(!roswasmc_read_integer(&in, &next.integer_bits, tag == ROSWASMC_PARAM_INT32 ? 4 : 8))
        {
            return UWVM_ROS_INVALID;
        }
    }
    else if(tag == ROSWASMC_PARAM_FLOAT64)
    {
        if(!roswasmc_read_float64(&in, &next.real))
        {
            return UWVM_ROS_INVALID;
        }
    }
    else if(tag == ROSWASMC_PARAM_STRING)
    {
        if(!roswasmc_read_string(&in, &next.text) || !roswasmc_utf8(next.text, 1))
        {
            return UWVM_ROS_INVALID;
        }
    }
    else if((tag >= ROSWASMC_PARAM_BYTES && tag <= ROSWASMC_PARAM_STRINGS) || tag == ROSWASMC_PARAM_INT32S)
    {
        if(!roswasmc_read_integer(&in, &n, 4) || n > 1048576u)
        {
            return UWVM_ROS_INVALID;
        }
        next.element_count = (uwvm_ros_u32)n;
        width = (tag == ROSWASMC_PARAM_BYTES || tag == ROSWASMC_PARAM_BOOLS) ? 1 : (tag == ROSWASMC_PARAM_INT32S ? 4 : 8);
        if(tag != ROSWASMC_PARAM_STRINGS && (n > (in.size - in.position) / width || n * width != in.size - in.position))
        {
            return UWVM_ROS_INVALID;
        }
        for(i = 0; i < n; ++i)
        {
            uwvm_ros_u64 bits;
            double real;
            roswasmc_string text;
            if(tag == ROSWASMC_PARAM_STRINGS)
            {
                if(!roswasmc_read_string(&in, &text) || !roswasmc_utf8(text, 0))
                {
                    return UWVM_ROS_INVALID;
                }
            }
            else if(tag == ROSWASMC_PARAM_FLOAT64S)
            {
                if(!roswasmc_read_float64(&in, &real))
                {
                    return UWVM_ROS_INVALID;
                }
            }
            else
            {
                if(!roswasmc_read_integer(&in, &bits, width) || (tag == ROSWASMC_PARAM_BOOLS && bits > 1))
                {
                    return UWVM_ROS_INVALID;
                }
            }
        }
        next.array_wire.data = (unsigned char const*)bytes;
        next.array_wire.size = length;
    }
    else
    {
        return UWVM_ROS_INVALID;
    }
    if(!roswasmc_reader_done(&in))
    {
        return UWVM_ROS_INVALID;
    }
    *value = next;
    return 0;
}

/**
 * @brief Encode a complete scalar/array parameter value into caller-owned storage.
 * Array wire is validated before copying. Failure preserves length, while scratch
 * bytes are unspecified. Policy still enforces backend-specific type support.
 *
 * @details Operate on the complete canonical representation described above, using caller-owned
 * storage. Preserve exact field order, signed integer bits and borrowed-view lifetimes; never
 * serialize C padding or native ROS objects.
 *
 * @par C storage and execution contract
 * @param[in] value Complete initialized canonical value or documented destination; borrowed
 * subviews retain the backing buffer's lifetime.
 * @param[in,out] bytes Caller-owned byte storage for the complete documented range; keep borrowed
 * decode views alive and respect nonoverlap rules.
 * @param[in] capacity Available caller output capacity in bytes; this is not a Host quota
 * override.
 * @param[out] length Byte count or byte-count destination as specified above; only successful
 * documented commits make output valid.
 * @return 0 on a complete canonical value, otherwise22 for invalid fields, framing, representation
 * or storage; preserve the specific scratch/destination rules documented above.
 * @par Permissions
 * None for this local codec operation; encoding/decoding does not authorize publication or
 * mutation.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_writer_init(), roswasmc_reader_init()
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE uwvm_ros_u32 roswasmc_encode_parameter(roswasmc_parameter_value const* value, void* bytes, size_t capacity, size_t* length)
{
    roswasmc_writer out = roswasmc_writer_init(bytes, capacity);
    roswasmc_parameter_value checked;
    if(!value || !length)
    {
        return UWVM_ROS_INVALID;
    }
    if(value->tag == ROSWASMC_PARAM_BOOL)
    {
        if(value->boolean != 0 && value->boolean != 1)
        {
            return UWVM_ROS_INVALID;
        }
        roswasmc_write_integer(&out, (uwvm_ros_u64)value->boolean, 1);
    }
    else if(value->tag == ROSWASMC_PARAM_INT32 || value->tag == ROSWASMC_PARAM_INT64)
    {
        roswasmc_write_integer(&out, value->integer_bits, value->tag == ROSWASMC_PARAM_INT32 ? 4 : 8);
    }
    else if(value->tag == ROSWASMC_PARAM_FLOAT64)
    {
        roswasmc_write_float64(&out, value->real);
    }
    else if(value->tag == ROSWASMC_PARAM_STRING)
    {
        if(!roswasmc_utf8(value->text, 1))
        {
            return UWVM_ROS_INVALID;
        }
        roswasmc_write_string(&out, value->text);
    }
    else
    {
        if(roswasmc_decode_parameter(value->tag, value->array_wire.data, value->array_wire.size, &checked))
        {
            return UWVM_ROS_INVALID;
        }
        roswasmc_write_bytes(&out, value->array_wire.data, value->array_wire.size);
    }
    if(!out.valid || out.size > 4193786u)
    {
        return UWVM_ROS_INVALID;
    }
    *length = out.size;
    return 0;
}

/**
 * @brief Access any typed parameter array element, preserving full integer bits.
 * The complete original array is validated first. Strings are borrowed UTF-8
 * views; bytes use integer_bits and tag INT32, integer arrays keep their original
 * scalar width, Bool uses boolean and Float64 uses real. No allocation occurs.
 * An invalid array/index preserves the output. Runtime type/authority checks
 * remain independent. Access is bounded but linear for a String array.
 *
 * @details Operate on the complete canonical representation described above, using caller-owned
 * storage. Preserve exact field order, signed integer bits and borrowed-view lifetimes; never
 * serialize C padding or native ROS objects.
 *
 * @par C storage and execution contract
 * @param[in] value Complete initialized canonical value or documented destination; borrowed
 * subviews retain the backing buffer's lifetime.
 * @param[in] index Zero-based element index strictly below the validated active element count.
 * @param[in,out] element Complete initialized canonical value or documented destination; borrowed
 * subviews retain the backing buffer's lifetime.
 * @return Numeric ABI/local error:0 on success. Preserve the documented output/owner state on
 * rejection;95 means unsupported, never a fabricated result.
 * @par Permissions
 * None for this local codec operation; encoding/decoding does not authorize publication or
 * mutation.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_writer_init(), roswasmc_reader_init()
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE uwvm_ros_u32 roswasmc_parameter_element(roswasmc_parameter_value const* value, size_t index, roswasmc_parameter_value* element)
{
    roswasmc_parameter_value checked, next = {
                                          ROSWASMC_PARAM_DELETION,
                                          0,
                                          0,
                                          0.0,
                                          {0, 0},
                                          {0, 0},
                                          0
    };
    roswasmc_reader in;
    uwvm_ros_u64 count, bits;
    size_t i;
    unsigned width;
    if(!value || !element || !((value->tag >= ROSWASMC_PARAM_BYTES && value->tag <= ROSWASMC_PARAM_STRINGS) || value->tag == ROSWASMC_PARAM_INT32S))
    {
        return UWVM_ROS_INVALID;
    }
    if(roswasmc_decode_parameter(value->tag, value->array_wire.data, value->array_wire.size, &checked) || index >= checked.element_count)
    {
        return UWVM_ROS_INVALID;
    }
    in = roswasmc_reader_init(checked.array_wire.data, checked.array_wire.size);
    if(!roswasmc_read_integer(&in, &count, 4))
    {
        return UWVM_ROS_INVALID;
    }
    width = value->tag == ROSWASMC_PARAM_BYTES || value->tag == ROSWASMC_PARAM_BOOLS ? 1 : value->tag == ROSWASMC_PARAM_INT32S ? 4 : 8;
    if(value->tag == ROSWASMC_PARAM_STRINGS)
    {
        next.tag = ROSWASMC_PARAM_STRING;
        for(i = 0; i <= index; ++i)
        {
            if(!roswasmc_read_string(&in, &next.text))
            {
                return UWVM_ROS_INVALID;
            }
        }
    }
    else
    {
        in.position += index * width;
        if(value->tag == ROSWASMC_PARAM_FLOAT64S)
        {
            next.tag = ROSWASMC_PARAM_FLOAT64;
            if(!roswasmc_read_float64(&in, &next.real))
            {
                return UWVM_ROS_INVALID;
            }
        }
        else
        {
            if(!roswasmc_read_integer(&in, &bits, width))
            {
                return UWVM_ROS_INVALID;
            }
            next.tag = value->tag == ROSWASMC_PARAM_BOOLS    ? ROSWASMC_PARAM_BOOL
                       : value->tag == ROSWASMC_PARAM_INT64S ? ROSWASMC_PARAM_INT64
                                                             : ROSWASMC_PARAM_INT32;
            next.integer_bits = bits;
            next.boolean = bits != 0;
        }
    }
    *element = next;
    return 0;
}

/**
 * @brief Typed ROS2 parameter event v2; values and strings borrow the input buffer.
 * Deletion has kind3 and an empty outer payload. Tag0 is deletion-only and carries
 * no assertion about a prior native value. Types1..9 keep their exact tags.
 *
 * @details Complete ROS2 event v2: seconds/nanoseconds, change kind, node/name and exact tagged
 * value. A deletion retains its prior tag but has no value payload; all String/array views borrow
 * the event frame.
 * @par C type contract
 * Use the declared complete value and exact representation. Caller-owned storage and any borrowed
 * members retain the lifetimes documented above; no implicit allocation or ownership duplication
 * occurs.
 * @see roswasmc_decode_typed_parameter_event(), roswasmc_encode_typed_parameter_event()
 * @see @ref roswasmc_c_contracts
 */
typedef struct roswasmc_typed_parameter_event
{
    uwvm_ros_u32 seconds, nanoseconds;
    unsigned char kind;
    roswasmc_string node, name;
    roswasmc_parameter_value value;
} roswasmc_typed_parameter_event;

/**
 * @brief Validate the existing canonical ROS2 event node/parameter name grammar.
 *
 * @details Operate on the complete canonical representation described above, using caller-owned
 * storage. Preserve exact field order, signed integer bits and borrowed-view lifetimes; never
 * serialize C padding or native ROS objects.
 *
 * @par C storage and execution contract
 * @param[in] name Complete initialized canonical value or documented destination; borrowed
 * subviews retain the backing buffer's lifetime.
 * @param[in] node Stable Guest-local node descriptor; its label selects no native endpoint or
 * namespace.
 * @return Nonzero when the documented local predicate/codec step succeeds, otherwise0; this is not
 * a Host permission decision.
 * @par Permissions
 * None for this local codec operation; encoding/decoding does not authorize publication or
 * mutation.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_writer_init(), roswasmc_reader_init()
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE int roswasmc_parameter_name(roswasmc_string name, int node)
{
    size_t i = node ? 1 : 0;
    int first = 1;
    if(!name.data || !name.size || name.size > (node ? 1024u : 255u) || (node && (name.size < 2 || name.data[0] != '/')))
    {
        return 0;
    }
    for(; i < name.size; ++i)
    {
        char c = name.data[i];
        int alpha = (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') || c == '_';
        if(c == (node ? '/' : '.'))
        {
            if(first)
            {
                return 0;
            }
            first = 1;
            continue;
        }
        if(!alpha && !(c >= '0' && c <= '9' && !first))
        {
            return 0;
        }
        first = 0;
    }
    return !first;
}

/**
 * @brief Decode the complete typed/deletion parameter-event envelope transactionally.
 *
 * @details Operate on the complete canonical representation described above, using caller-owned
 * storage. Preserve exact field order, signed integer bits and borrowed-view lifetimes; never
 * serialize C padding or native ROS objects.
 *
 * @par C storage and execution contract
 * @param[in] bytes Caller-owned byte storage for the complete documented range; keep borrowed
 * decode views alive and respect nonoverlap rules.
 * @param[in] length Byte count or byte-count destination as specified above; only successful
 * documented commits make output valid.
 * @param[in,out] event Complete initialized canonical value or documented destination; borrowed
 * subviews retain the backing buffer's lifetime.
 * @return 0 on a complete canonical value, otherwise22 for invalid fields, framing, representation
 * or storage; preserve the specific scratch/destination rules documented above.
 * @par Permissions
 * None for this local codec operation; encoding/decoding does not authorize publication or
 * mutation.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_writer_init(), roswasmc_reader_init()
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE uwvm_ros_u32 roswasmc_decode_typed_parameter_event(void const* bytes, size_t length, roswasmc_typed_parameter_event* event)
{
    roswasmc_reader in = roswasmc_reader_init(bytes, length);
    roswasmc_typed_parameter_event next = {
        0,
        0,
        0,
        {0, 0},
        {0, 0},
        {ROSWASMC_PARAM_DELETION, 0, 0, 0.0, {0, 0}, {0, 0}, 0}
    };
    uwvm_ros_u64 n, version, tag, payload;
    if(!event || length > 4193786u || !roswasmc_read_integer(&in, &n, 4) || n > 2147483647u)
    {
        return UWVM_ROS_INVALID;
    }
    next.seconds = (uwvm_ros_u32)n;
    if(!roswasmc_read_integer(&in, &n, 4) || n >= 1000000000u)
    {
        return UWVM_ROS_INVALID;
    }
    next.nanoseconds = (uwvm_ros_u32)n;
    if(!roswasmc_read_integer(&in, &n, 1) || n < 1 || n > 3)
    {
        return UWVM_ROS_INVALID;
    }
    next.kind = (unsigned char)n;
    if(!roswasmc_read_integer(&in, &version, 1) || version != 2 || !roswasmc_read_integer(&in, &tag, 1) || tag > 9 || (tag == 0 && next.kind != 3) ||
       !roswasmc_read_string(&in, &next.node) || !roswasmc_read_string(&in, &next.name) || !roswasmc_read_integer(&in, &payload, 4) ||
       payload != in.size - in.position)
    {
        return UWVM_ROS_INVALID;
    }
    if(!roswasmc_parameter_name(next.node, 1) || !roswasmc_parameter_name(next.name, 0))
    {
        return UWVM_ROS_INVALID;
    }
    next.value.tag = (roswasmc_parameter_tag)tag;
    if(next.kind == 3)
    {
        if(payload)
        {
            return UWVM_ROS_INVALID;
        }
    }
    else if(roswasmc_decode_parameter((roswasmc_parameter_tag)tag, in.data + in.position, (size_t)payload, &next.value))
    {
        return UWVM_ROS_INVALID;
    }
    *event = next;
    return 0;
}

/**
 * @brief Legacy String parameter event; node/name/value views borrow exact input bytes.
 *
 * @details Legacy String event with timestamp, change kind and borrowed node/name/value ranges.
 * This is distinct from typed event v2; a deletion encodes an empty value and never grants
 * parameter mutation.
 * @par C type contract
 * Use the declared complete value and exact representation. Caller-owned storage and any borrowed
 * members retain the lifetimes documented above; no implicit allocation or ownership duplication
 * occurs.
 * @see roswasmc_decode_parameter_event(), roswasmc_encode_parameter_event()
 * @see @ref roswasmc_c_contracts
 */
typedef struct roswasmc_parameter_event
{
    uwvm_ros_u32 seconds, nanoseconds;
    unsigned char kind;
    roswasmc_string node, name, value;
} roswasmc_parameter_event;

/**
 * @brief Decode the legacy String event shape; this grants no mutation authority.
 *
 * @details Operate on the complete canonical representation described above, using caller-owned
 * storage. Preserve exact field order, signed integer bits and borrowed-view lifetimes; never
 * serialize C padding or native ROS objects.
 *
 * @par C storage and execution contract
 * @param[in] bytes Caller-owned byte storage for the complete documented range; keep borrowed
 * decode views alive and respect nonoverlap rules.
 * @param[in] length Byte count or byte-count destination as specified above; only successful
 * documented commits make output valid.
 * @param[in,out] event Complete initialized canonical value or documented destination; borrowed
 * subviews retain the backing buffer's lifetime.
 * @return 0 on a complete canonical value, otherwise22 for invalid fields, framing, representation
 * or storage; preserve the specific scratch/destination rules documented above.
 * @par Permissions
 * None for this local codec operation; encoding/decoding does not authorize publication or
 * mutation.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_writer_init(), roswasmc_reader_init()
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE uwvm_ros_u32 roswasmc_decode_parameter_event(void const* bytes, size_t length, roswasmc_parameter_event* event)
{
    roswasmc_reader in = roswasmc_reader_init(bytes, length);
    roswasmc_parameter_event next;
    uwvm_ros_u64 n;
    if(!event || !roswasmc_read_integer(&in, &n, 4))
    {
        return UWVM_ROS_INVALID;
    }
    next.seconds = (uwvm_ros_u32)n;
    if(!roswasmc_read_integer(&in, &n, 4))
    {
        return UWVM_ROS_INVALID;
    }
    next.nanoseconds = (uwvm_ros_u32)n;
    if(!roswasmc_read_integer(&in, &n, 1) || n < 1 || n > 3)
    {
        return UWVM_ROS_INVALID;
    }
    next.kind = (unsigned char)n;
    if(!roswasmc_read_string(&in, &next.node) || !roswasmc_read_string(&in, &next.name) || !roswasmc_read_string(&in, &next.value) ||
       !roswasmc_reader_done(&in))
    {
        return UWVM_ROS_INVALID;
    }
    *event = next;
    return 0;
}

/**
 * @brief Fibonacci feedback/result sequence with borrowed canonical i32 element bytes.
 *
 * @details goal is a native-correlated ID, kind is the documented feedback/terminal tag and count
 * is at most48. values_le borrows count canonical signed-i32 elements; use the endian-safe
 * accessor while that range stays live.
 * @par C type contract
 * Use the declared complete value and exact representation. Caller-owned storage and any borrowed
 * members retain the lifetimes documented above; no implicit allocation or ownership duplication
 * occurs.
 * @see roswasmc_action_sequence_element(), roswasmc_decode_action_sequence()
 * @see @ref roswasmc_c_contracts
 */
typedef struct roswasmc_action_sequence
{
    uwvm_ros_u64 goal;
    unsigned char kind;
    uwvm_ros_u32 count;
    unsigned char const* values_le;
} roswasmc_action_sequence;

/**
 * @brief Read one complete signed i32 sequence element without alignment or
 * host-endian assumptions. The destination is preserved on malformed input.
 * This local accessor does not establish native goal ownership or authority.
 *
 * @details Operate on the complete canonical representation described above, using caller-owned
 * storage. Preserve exact field order, signed integer bits and borrowed-view lifetimes; never
 * serialize C padding or native ROS objects.
 *
 * @par C storage and execution contract
 * @param[in] sequence Complete initialized canonical value or documented destination; borrowed
 * subviews retain the backing buffer's lifetime.
 * @param[in] index Zero-based element index strictly below the validated active element count.
 * @param[in,out] value Complete initialized canonical value or documented destination; borrowed
 * subviews retain the backing buffer's lifetime.
 * @return Numeric ABI/local error:0 on success. Preserve the documented output/owner state on
 * rejection;95 means unsupported, never a fabricated result.
 * @par Permissions
 * None for this local codec operation; encoding/decoding does not authorize publication or
 * mutation.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_writer_init(), roswasmc_reader_init()
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE uwvm_ros_u32 roswasmc_action_sequence_element(roswasmc_action_sequence const* sequence, size_t index, uwvm_ros_i32* value)
{
    roswasmc_reader in;
    uwvm_ros_u64 bits;
    uwvm_ros_i32 next;
    if(!sequence || !value || !sequence->values_le || sequence->count > 48 || index >= sequence->count)
    {
        return UWVM_ROS_INVALID;
    }
    in = roswasmc_reader_init(sequence->values_le + index * 4, 4);
    if(!roswasmc_read_integer(&in, &bits, 4))
    {
        return UWVM_ROS_INVALID;
    }
    next = bits <= 2147483647u ? (uwvm_ros_i32)bits : (uwvm_ros_i32)(-1 - (uwvm_ros_i32)(UWVM_ROS_U32_MAX - (uwvm_ros_u32)bits));
    *value = next;
    return 0;
}

/**
 * @brief Decode feedback without kind, or result with terminal kind2..4; at most48 elements.
 *
 * @details Operate on the complete canonical representation described above, using caller-owned
 * storage. Preserve exact field order, signed integer bits and borrowed-view lifetimes; never
 * serialize C padding or native ROS objects.
 *
 * @par C storage and execution contract
 * @param[in] bytes Caller-owned byte storage for the complete documented range; keep borrowed
 * decode views alive and respect nonoverlap rules.
 * @param[in] length Byte count or byte-count destination as specified above; only successful
 * documented commits make output valid.
 * @param[in] has_kind Explicit value in the domain described above; no implicit unit conversion,
 * policy grant or retry.
 * @param[in,out] value Complete initialized canonical value or documented destination; borrowed
 * subviews retain the backing buffer's lifetime.
 * @return 0 on a complete canonical value, otherwise22 for invalid fields, framing, representation
 * or storage; preserve the specific scratch/destination rules documented above.
 * @par Permissions
 * None for this local codec operation; encoding/decoding does not authorize publication or
 * mutation.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_writer_init(), roswasmc_reader_init()
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE uwvm_ros_u32 roswasmc_decode_action_sequence(void const* bytes, size_t length, int has_kind, roswasmc_action_sequence* value)
{
    roswasmc_reader in = roswasmc_reader_init(bytes, length);
    roswasmc_action_sequence next;
    uwvm_ros_u64 n;
    next.kind = 0;
    if(!value || !roswasmc_read_integer(&in, &next.goal, 8) || !next.goal)
    {
        return UWVM_ROS_INVALID;
    }
    if(has_kind)
    {
        if(!roswasmc_read_integer(&in, &n, 1) || n < 1 || n > 4)
        {
            return UWVM_ROS_INVALID;
        }
        next.kind = (unsigned char)n;
    }
    if(!roswasmc_read_integer(&in, &n, 4) || n > 48 || n * 4 != in.size - in.position)
    {
        return UWVM_ROS_INVALID;
    }
    next.count = (uwvm_ros_u32)n;
    next.values_le = in.data + in.position;
    *value = next;
    return 0;
}

/**
 * @brief Encode server feedback1/terminalresult2..4, preserving supplied i32 element bits.
 *
 * @details Operate on the complete canonical representation described above, using caller-owned
 * storage. Preserve exact field order, signed integer bits and borrowed-view lifetimes; never
 * serialize C padding or native ROS objects.
 *
 * @par C storage and execution contract
 * @param[in] value Complete initialized canonical value or documented destination; borrowed
 * subviews retain the backing buffer's lifetime.
 * @param[in] include_kind Explicit value in the domain described above; no implicit unit
 * conversion, policy grant or retry.
 * @param[in,out] bytes Caller-owned byte storage for the complete documented range; keep borrowed
 * decode views alive and respect nonoverlap rules.
 * @param[in] capacity Available caller output capacity in bytes; this is not a Host quota
 * override.
 * @param[out] length Byte count or byte-count destination as specified above; only successful
 * documented commits make output valid.
 * @return 0 on a complete canonical value, otherwise22 for invalid fields, framing, representation
 * or storage; preserve the specific scratch/destination rules documented above.
 * @par Permissions
 * None for this local codec operation; encoding/decoding does not authorize publication or
 * mutation.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_writer_init(), roswasmc_reader_init()
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE uwvm_ros_u32
    roswasmc_encode_action_sequence(roswasmc_action_sequence const* value, int include_kind, void* bytes, size_t capacity, size_t* length)
{
    roswasmc_writer out = roswasmc_writer_init(bytes, capacity);
    if(!value || !length || !value->goal || value->count > 48 || (include_kind && (value->kind < 1 || value->kind > 4)))
    {
        return UWVM_ROS_INVALID;
    }
    if(!roswasmc_write_integer(&out, value->goal, 8) || (include_kind && !roswasmc_write_integer(&out, value->kind, 1)) ||
       !roswasmc_write_integer(&out, value->count, 4) || !roswasmc_write_bytes(&out, value->values_le, (size_t)value->count * 4))
    {
        return UWVM_ROS_INVALID;
    }
    *length = out.size;
    return 0;
}

/**
 * @brief ROS2 Lifecycle GetState value with a borrowed label.
 *
 * @details id is the native lifecycle state byte and label is a borrowed UTF-8 String. Decoding a
 * state never authorizes a transition or emulates unsupported ROS1 lifecycle operations.
 * @par C type contract
 * Use the declared complete value and exact representation. Caller-owned storage and any borrowed
 * members retain the lifetimes documented above; no implicit allocation or ownership duplication
 * occurs.
 * @see roswasmc_decode_lifecycle_state(), roswasmc_lifecycle_change()
 * @see @ref roswasmc_c_contracts
 */
typedef struct roswasmc_lifecycle_state
{
    unsigned char id;
    roswasmc_string label;
} roswasmc_lifecycle_state;

/**
 * @brief Decode canonical state byte plus String; unsupported ROS1 is never emulated.
 *
 * @details Operate on the complete canonical representation described above, using caller-owned
 * storage. Preserve exact field order, signed integer bits and borrowed-view lifetimes; never
 * serialize C padding or native ROS objects.
 *
 * @par C storage and execution contract
 * @param[in] bytes Caller-owned byte storage for the complete documented range; keep borrowed
 * decode views alive and respect nonoverlap rules.
 * @param[in] length Byte count or byte-count destination as specified above; only successful
 * documented commits make output valid.
 * @param[in,out] value Complete initialized canonical value or documented destination; borrowed
 * subviews retain the backing buffer's lifetime.
 * @return 0 on a complete canonical value, otherwise22 for invalid fields, framing, representation
 * or storage; preserve the specific scratch/destination rules documented above.
 * @par Permissions
 * None for this local codec operation; encoding/decoding does not authorize publication or
 * mutation.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_writer_init(), roswasmc_reader_init()
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE uwvm_ros_u32 roswasmc_decode_lifecycle_state(void const* bytes, size_t length, roswasmc_lifecycle_state* value)
{
    roswasmc_reader in = roswasmc_reader_init(bytes, length);
    roswasmc_lifecycle_state next;
    uwvm_ros_u64 id;
    if(!value || !roswasmc_read_integer(&in, &id, 1) || !roswasmc_read_string(&in, &next.label) || !roswasmc_utf8(next.label, 1) || !roswasmc_reader_done(&in))
    {
        return UWVM_ROS_INVALID;
    }
    next.id = (unsigned char)id;
    *value = next;
    return 0;
}

/**
 * @brief Encode String and log at the host-selected severity using bounded caller storage.
 *
 * @details Execute the bounded operation described above with the supplied complete values and
 * stable owners. Inspect its actual result before using output; do not implicitly retry a consumed
 * event or uncertain external operation.
 *
 * @par C storage and execution contract
 * @param[in] cap Initialized capability owner; keep its context/backend alive for the complete
 * operation.
 * @param[in] text Complete initialized canonical value or documented destination; borrowed
 * subviews retain the backing buffer's lifetime.
 * @param[in,out] scratch Caller-owned byte storage for the complete documented range; keep
 * borrowed decode views alive and respect nonoverlap rules.
 * @param[in] capacity Available caller output capacity in bytes; this is not a Host quota
 * override.
 * @return Numeric ABI/local error:0 on success. Preserve the documented output/owner state on
 * rejection;95 means unsupported, never a fabricated result.
 * @par Permissions
 * The matching operation-specific aliases must already be explicitly granted; this facade never
 * supplies Host policy, endpoints or native identity.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_open(), roswasmc_result
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE uwvm_ros_u32 roswasmc_log_string(roswasmc_capability const* cap, roswasmc_string text, void* scratch, size_t capacity)
{
    size_t length;
    uwvm_ros_u32 error = roswasmc_encode_string(text, scratch, capacity, &length);
    return error ? error : roswasmc_log(cap, (char const*)scratch, length);
}

/**
 * @brief Encode a complete typed/deletion ROS2 parameter-event v2 with caller scratch.
 * @param[in,out] payload_scratch Distinct storage for the selected scalar/array payload.
 * @param[in,out] bytes Final output storage, which must not overlap payload_scratch.
 * Only tags0..9 exist for typed events; ROS1 int32 tags10/11 are refused.
 * Failure preserves length; caller scratch bytes are unspecified on failure.
 *
 * @details Operate on the complete canonical representation described above, using caller-owned
 * storage. Preserve exact field order, signed integer bits and borrowed-view lifetimes; never
 * serialize C padding or native ROS objects.
 *
 * @par C storage and execution contract
 * @param[in] event Complete initialized canonical value or documented destination; borrowed
 * subviews retain the backing buffer's lifetime.
 * @param[in] payload_capacity Capacity in bytes of the distinct intermediate parameter-payload
 * scratch buffer.
 * @param[in] capacity Available caller output capacity in bytes; this is not a Host quota
 * override.
 * @param[out] length Byte count or byte-count destination as specified above; only successful
 * documented commits make output valid.
 * @return 0 on a complete canonical value, otherwise22 for invalid fields, framing, representation
 * or storage; preserve the specific scratch/destination rules documented above.
 * @par Permissions
 * None for this local codec operation; encoding/decoding does not authorize publication or
 * mutation.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_writer_init(), roswasmc_reader_init()
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE uwvm_ros_u32 roswasmc_encode_typed_parameter_event(roswasmc_typed_parameter_event const* event,
                                                                    void* payload_scratch,
                                                                    size_t payload_capacity,
                                                                    void* bytes,
                                                                    size_t capacity,
                                                                    size_t* length)
{
    roswasmc_writer out = roswasmc_writer_init(bytes, capacity);
    size_t payload_length = 0;
    uwvm_ros_u32 error;
    if(!event || !length || event->seconds > 2147483647u || event->nanoseconds >= 1000000000u || event->kind < 1 || event->kind > 3 || event->value.tag > 9 ||
       (event->value.tag == 0 && event->kind != 3) || !roswasmc_parameter_name(event->node, 1) || !roswasmc_parameter_name(event->name, 0))
    {
        return UWVM_ROS_INVALID;
    }
    if(event->kind != 3)
    {
        error = roswasmc_encode_parameter(&event->value, payload_scratch, payload_capacity, &payload_length);
        if(error)
        {
            return error;
        }
    }
    if(payload_length > UWVM_ROS_U32_MAX || !roswasmc_write_integer(&out, event->seconds, 4) || !roswasmc_write_integer(&out, event->nanoseconds, 4) ||
       !roswasmc_write_integer(&out, event->kind, 1) || !roswasmc_write_integer(&out, 2, 1) || !roswasmc_write_integer(&out, event->value.tag, 1) ||
       !roswasmc_write_string(&out, event->node) || !roswasmc_write_string(&out, event->name) || !roswasmc_write_integer(&out, payload_length, 4) ||
       !roswasmc_write_bytes(&out, payload_scratch, payload_length) || out.size > 4193786u)
    {
        return UWVM_ROS_INVALID;
    }
    *length = out.size;
    return 0;
}

/**
 * @brief Encode the legacy String parameter-event shape; a deletion value must be empty.
 *
 * @details Operate on the complete canonical representation described above, using caller-owned
 * storage. Preserve exact field order, signed integer bits and borrowed-view lifetimes; never
 * serialize C padding or native ROS objects.
 *
 * @par C storage and execution contract
 * @param[in] event Complete initialized canonical value or documented destination; borrowed
 * subviews retain the backing buffer's lifetime.
 * @param[in,out] bytes Caller-owned byte storage for the complete documented range; keep borrowed
 * decode views alive and respect nonoverlap rules.
 * @param[in] capacity Available caller output capacity in bytes; this is not a Host quota
 * override.
 * @param[out] length Byte count or byte-count destination as specified above; only successful
 * documented commits make output valid.
 * @return 0 on a complete canonical value, otherwise22 for invalid fields, framing, representation
 * or storage; preserve the specific scratch/destination rules documented above.
 * @par Permissions
 * None for this local codec operation; encoding/decoding does not authorize publication or
 * mutation.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_writer_init(), roswasmc_reader_init()
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE uwvm_ros_u32 roswasmc_encode_parameter_event(roswasmc_parameter_event const* event, void* bytes, size_t capacity, size_t* length)
{
    roswasmc_writer out = roswasmc_writer_init(bytes, capacity);
    if(!event || !length || event->kind < 1 || event->kind > 3 || (event->kind == 3 && event->value.size) || !roswasmc_utf8(event->node, 0) ||
       !roswasmc_utf8(event->name, 0) || !roswasmc_utf8(event->value, 1) || !roswasmc_write_integer(&out, event->seconds, 4) ||
       !roswasmc_write_integer(&out, event->nanoseconds, 4) || !roswasmc_write_integer(&out, event->kind, 1) || !roswasmc_write_string(&out, event->node) ||
       !roswasmc_write_string(&out, event->name) || !roswasmc_write_string(&out, event->value))
    {
        return UWVM_ROS_INVALID;
    }
    *length = out.size;
    return 0;
}

/**
 * @brief Encode a canonical Trigger/SetBool response without a request-ID envelope.
 *
 * @details Operate on the complete canonical representation described above, using caller-owned
 * storage. Preserve exact field order, signed integer bits and borrowed-view lifetimes; never
 * serialize C padding or native ROS objects.
 *
 * @par C storage and execution contract
 * @param[in] response Complete initialized canonical value or documented destination; borrowed
 * subviews retain the backing buffer's lifetime.
 * @param[in,out] bytes Caller-owned byte storage for the complete documented range; keep borrowed
 * decode views alive and respect nonoverlap rules.
 * @param[in] capacity Available caller output capacity in bytes; this is not a Host quota
 * override.
 * @param[out] length Byte count or byte-count destination as specified above; only successful
 * documented commits make output valid.
 * @return 0 on a complete canonical value, otherwise22 for invalid fields, framing, representation
 * or storage; preserve the specific scratch/destination rules documented above.
 * @par Permissions
 * None for this local codec operation; encoding/decoding does not authorize publication or
 * mutation.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_writer_init(), roswasmc_reader_init()
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE uwvm_ros_u32 roswasmc_encode_service_response(roswasmc_service_response response, void* bytes, size_t capacity, size_t* length)
{
    roswasmc_writer out = roswasmc_writer_init(bytes, capacity);
    if(!length || (response.success != 0 && response.success != 1) || !roswasmc_utf8(response.message, 1) ||
       !roswasmc_write_integer(&out, (uwvm_ros_u64)response.success, 1) || !roswasmc_write_string(&out, response.message))
    {
        return UWVM_ROS_INVALID;
    }
    *length = out.size;
    return 0;
}

/**
 * @brief Encode a gateway-owned service request/response envelope around supplied canonical bytes.
 * This is a wire helper only. It does not make a fabricated request ID valid.
 *
 * @details Operate on the complete canonical representation described above, using caller-owned
 * storage. Preserve exact field order, signed integer bits and borrowed-view lifetimes; never
 * serialize C padding or native ROS objects.
 *
 * @par C storage and execution contract
 * @param[in] request_id Owned nonzero Service request ID; encoding it does not establish
 * ownership.
 * @param[in] payload Explicit value in the domain described above; no implicit unit conversion,
 * policy grant or retry.
 * @param[in,out] bytes Caller-owned byte storage for the complete documented range; keep borrowed
 * decode views alive and respect nonoverlap rules.
 * @param[in] capacity Available caller output capacity in bytes; this is not a Host quota
 * override.
 * @param[out] length Byte count or byte-count destination as specified above; only successful
 * documented commits make output valid.
 * @return 0 on a complete canonical value, otherwise22 for invalid fields, framing, representation
 * or storage; preserve the specific scratch/destination rules documented above.
 * @par Permissions
 * None for this local codec operation; encoding/decoding does not authorize publication or
 * mutation.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_writer_init(), roswasmc_reader_init()
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE uwvm_ros_u32 roswasmc_encode_service_envelope(uwvm_ros_u64 request_id, roswasmc_bytes payload, void* bytes, size_t capacity, size_t* length)
{
    roswasmc_writer out = roswasmc_writer_init(bytes, capacity);
    if(!length || !request_id || !roswasmc_write_integer(&out, request_id, 8) || !roswasmc_write_bytes(&out, payload.data, payload.size))
    {
        return UWVM_ROS_INVALID;
    }
    *length = out.size;
    return 0;
}

/**
 * @brief Encode a signed Fibonacci order into exactly four canonical bytes.
 *
 * @details Operate on the complete canonical representation described above, using caller-owned
 * storage. Preserve exact field order, signed integer bits and borrowed-view lifetimes; never
 * serialize C padding or native ROS objects.
 *
 * @par C storage and execution contract
 * @param[in] order Explicit value in the domain described above; no implicit unit conversion,
 * policy grant or retry.
 * @param[in,out] bytes Caller-owned byte storage for the complete documented range; keep borrowed
 * decode views alive and respect nonoverlap rules.
 * @param[in] capacity Available caller output capacity in bytes; this is not a Host quota
 * override.
 * @param[out] length Byte count or byte-count destination as specified above; only successful
 * documented commits make output valid.
 * @return 0 on a complete canonical value, otherwise22 for invalid fields, framing, representation
 * or storage; preserve the specific scratch/destination rules documented above.
 * @par Permissions
 * None for this local codec operation; encoding/decoding does not authorize publication or
 * mutation.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_writer_init(), roswasmc_reader_init()
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE uwvm_ros_u32 roswasmc_encode_fibonacci_order(uwvm_ros_i32 order, void* bytes, size_t capacity, size_t* length)
{
    roswasmc_writer out = roswasmc_writer_init(bytes, capacity);
    if(!length || !roswasmc_write_integer(&out, (uwvm_ros_u32)order, 4))
    {
        return UWVM_ROS_INVALID;
    }
    *length = out.size;
    return 0;
}

/**
 * @brief Encode a goal ID or nanosecond time into exactly eight canonical bytes.
 * Goal ownership/nonzero rules are operation-specific and still enforced by host.
 *
 * @details Operate on the complete canonical representation described above, using caller-owned
 * storage. Preserve exact field order, signed integer bits and borrowed-view lifetimes; never
 * serialize C padding or native ROS objects.
 *
 * @par C storage and execution contract
 * @param[in] value Complete initialized canonical value or documented destination; borrowed
 * subviews retain the backing buffer's lifetime.
 * @param[in,out] bytes Caller-owned byte storage for the complete documented range; keep borrowed
 * decode views alive and respect nonoverlap rules.
 * @param[in] capacity Available caller output capacity in bytes; this is not a Host quota
 * override.
 * @param[out] length Byte count or byte-count destination as specified above; only successful
 * documented commits make output valid.
 * @return 0 on a complete canonical value, otherwise22 for invalid fields, framing, representation
 * or storage; preserve the specific scratch/destination rules documented above.
 * @par Permissions
 * None for this local codec operation; encoding/decoding does not authorize publication or
 * mutation.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_writer_init(), roswasmc_reader_init()
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE uwvm_ros_u32 roswasmc_encode_u64(uwvm_ros_u64 value, void* bytes, size_t capacity, size_t* length)
{
    roswasmc_writer out = roswasmc_writer_init(bytes, capacity);
    if(!length || !roswasmc_write_integer(&out, value, 8))
    {
        return UWVM_ROS_INVALID;
    }
    *length = out.size;
    return 0;
}

/**
 * @brief Encode a Lifecycle state byte followed by a canonical label String.
 *
 * @details Operate on the complete canonical representation described above, using caller-owned
 * storage. Preserve exact field order, signed integer bits and borrowed-view lifetimes; never
 * serialize C padding or native ROS objects.
 *
 * @par C storage and execution contract
 * @param[in] state Complete initialized canonical value or documented destination; borrowed
 * subviews retain the backing buffer's lifetime.
 * @param[in,out] bytes Caller-owned byte storage for the complete documented range; keep borrowed
 * decode views alive and respect nonoverlap rules.
 * @param[in] capacity Available caller output capacity in bytes; this is not a Host quota
 * override.
 * @param[out] length Byte count or byte-count destination as specified above; only successful
 * documented commits make output valid.
 * @return 0 on a complete canonical value, otherwise22 for invalid fields, framing, representation
 * or storage; preserve the specific scratch/destination rules documented above.
 * @par Permissions
 * None for this local codec operation; encoding/decoding does not authorize publication or
 * mutation.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_writer_init(), roswasmc_reader_init()
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE uwvm_ros_u32 roswasmc_encode_lifecycle_state(roswasmc_lifecycle_state state, void* bytes, size_t capacity, size_t* length)
{
    roswasmc_writer out = roswasmc_writer_init(bytes, capacity);
    if(!length || !roswasmc_utf8(state.label, 1) || !roswasmc_write_integer(&out, state.id, 1) || !roswasmc_write_string(&out, state.label))
    {
        return UWVM_ROS_INVALID;
    }
    *length = out.size;
    return 0;
}
#endif
