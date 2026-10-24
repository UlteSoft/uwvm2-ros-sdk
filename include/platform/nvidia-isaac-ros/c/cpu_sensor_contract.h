/* SPDX-License-Identifier: Apache-2.0
 * Complete borrowed CPU sensor views. C99 or later; no imports or grants.
 *
 * The caller must first establish every referenced memory extent and retain
 * its ownership throughout validation/use. These are local views, NOT a wire
 * ABI, ROS native layout, Wasm memory validator, CUDA buffer or GPU capability.
 * Padding and endian flags are preserved. No image/cloud data is truncated.
 */
#ifndef UWVM_NVIDIA_CPU_SENSOR_CONTRACT_H
#define UWVM_NVIDIA_CPU_SENSOR_CONTRACT_H
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

#if CHAR_BIT != 8
# error "The canonical CPU sensor contract requires eight-bit bytes"
#endif

/**
 * @brief Results of local complete-value sensor validation.
 * @details Values match the SDK's numeric error convention. Validators never
 * modify the input, allocate, synchronize CUDA, open ROS, or grant authority.
 * Concurrent calls are allowed only while all referenced input remains immutable.
 * Available in C99 and later and C++98 and later; this header defines no wire ABI.
 * @see uwvm_nvidia_validate_apriltag_cpu_image
 * @see uwvm_nvidia_validate_cpu_pointcloud2
 */
enum uwvm_nvidia_sensor_status
{
    /** The complete local view satisfies the selected profile and quotas. */
    UWVM_NVIDIA_SENSOR_OK = 0,
    /** Null, malformed, inconsistent or unrepresentable local metadata. */
    UWVM_NVIDIA_SENSOR_INVALID = 22,
    /** A caller quota or size_t multiplication bound would be exceeded. */
    UWVM_NVIDIA_SENSOR_QUOTA = 90,
    /** An encoding or datatype lies outside the explicitly selected profile. */
    UWVM_NVIDIA_SENSOR_UNSUPPORTED = 95
};

/**
 * @brief Explicit ROS PointField constant set used by a cloud view.
 * @details LEGACY_8 admits datatypes 1..8. LYRICAL_11 additionally admits INT64,
 * UINT64 and BOOL from the pinned modern ROS interfaces. Choosing a profile does
 * not convert an older native message or establish native SDK compatibility.
 * @see uwvm_nvidia_pointfield_datatype
 * @see uwvm_nvidia_pointfield_width
 */
enum uwvm_nvidia_pointfield_profile
{
    UWVM_NVIDIA_POINTFIELD_LEGACY_8 = 8,
    UWVM_NVIDIA_POINTFIELD_LYRICAL_11 = 11
};

/**
 * @brief Exact PointField numeric identities, including the modern extensions.
 * @details Payload bytes retain their original endian flag; validators inspect
 * layout only and never reinterpret numeric samples. BOOL occupies one byte.
 * @see uwvm_nvidia_pointfield_profile
 * @see uwvm_nvidia_validate_cpu_pointcloud2
 */
enum uwvm_nvidia_pointfield_datatype
{
    UWVM_NVIDIA_POINTFIELD_INT8 = 1,
    UWVM_NVIDIA_POINTFIELD_UINT8 = 2,
    UWVM_NVIDIA_POINTFIELD_INT16 = 3,
    UWVM_NVIDIA_POINTFIELD_UINT16 = 4,
    UWVM_NVIDIA_POINTFIELD_INT32 = 5,
    UWVM_NVIDIA_POINTFIELD_UINT32 = 6,
    UWVM_NVIDIA_POINTFIELD_FLOAT32 = 7,
    UWVM_NVIDIA_POINTFIELD_FLOAT64 = 8,
    UWVM_NVIDIA_POINTFIELD_INT64 = 9,
    UWVM_NVIDIA_POINTFIELD_UINT64 = 10,
    UWVM_NVIDIA_POINTFIELD_BOOL = 11
};

/**
 * @brief Borrowed counted UTF-8 text without an implicit terminator.
 * @details data must cover size readable bytes until every consumer returns.
 * Empty text may have a null pointer. Embedded NUL and malformed UTF-8 fail
 * validation; ownership remains with the caller and no permission is granted.
 * @see uwvm_nvidia_sensor_text
 */
struct uwvm_nvidia_text_view
{
    const unsigned char* data;
    size_t size;
};

/**
 * @brief Borrowed complete CPU payload, including all row and point padding.
 * @details data must cover size readable immutable bytes for the whole use.
 * A null pointer is permitted only for an empty extent. This is a host-local
 * view, not a Wasm offset, CUDA address or memory-safety validator.
 * @see uwvm_nvidia_cpu_image
 * @see uwvm_nvidia_cpu_pointcloud2
 */
struct uwvm_nvidia_bytes_view
{
    const unsigned char* data;
    size_t size;
};

/**
 * @brief ROS timestamp with signed seconds and a normalized nanosecond fraction.
 * @details sec retains the complete int32 range, including negative times.
 * nanosec must be in [0, 1000000000); no clock, epoch or timestamp is synthesized.
 * @see uwvm_nvidia_sensor_header
 */
struct uwvm_nvidia_time
{
    int32_t sec;
    uint32_t nanosec;
};

/**
 * @brief Full timestamp and borrowed frame identifier of a sensor message.
 * @details Empty frame identifiers remain empty. The owner must retain the
 * frame text and avoid mutation while any validator or consumer reads it.
 * @see uwvm_nvidia_header
 * @see uwvm_nvidia_sensor_header
 */
struct uwvm_nvidia_header
{
    struct uwvm_nvidia_time stamp;
    struct uwvm_nvidia_text_view frame_id;
};

/**
 * @brief Full CPU-visible Image metadata and complete borrowed payload.
 * @details Dimensions count pixels; step and data.size count bytes. step may
 * exceed the packed row size, and all padding bytes remain part of the image.
 * is_bigendian is exactly 0 or 1. No native ROS layout compatibility is implied.
 * @see uwvm_nvidia_validate_apriltag_cpu_image
 */
struct uwvm_nvidia_cpu_image
{
    struct uwvm_nvidia_header header;
    uint32_t height, width;
    struct uwvm_nvidia_text_view encoding;
    uint8_t is_bigendian;
    uint32_t step;
    struct uwvm_nvidia_bytes_view data;
};

/**
 * @brief One complete named PointCloud2 field descriptor.
 * @details offset counts bytes within each point, count is a positive number
 * of datatype elements, and name is borrowed UTF-8. Overlap is preserved;
 * this contract does not impose a packed or XYZ-only field arrangement.
 * @see uwvm_nvidia_pointfield_width
 * @see uwvm_nvidia_validate_cpu_pointcloud2
 */
struct uwvm_nvidia_pointfield
{
    struct uwvm_nvidia_text_view name;
    uint32_t offset;
    uint8_t datatype;
    uint32_t count;
};

/**
 * @brief Full organized or unorganized CPU PointCloud2 view.
 * @details fields points to fields_size immutable descriptors. Dimensions count
 * points; point_step and row_step count bytes. data includes every row/point
 * padding byte. is_bigendian and is_dense are retained 0/1 metadata, not inferred
 * from samples. The caller owns every referenced descriptor, text and byte.
 * @see uwvm_nvidia_validate_cpu_pointcloud2
 */
struct uwvm_nvidia_cpu_pointcloud2
{
    struct uwvm_nvidia_header header;
    uint32_t height, width;
    const struct uwvm_nvidia_pointfield* fields;
    size_t fields_size;
    uint8_t is_bigendian;
    uint32_t point_step, row_step;
    struct uwvm_nvidia_bytes_view data;
    uint8_t is_dense;
};

/**
 * @brief Validate one borrowed UTF-8 string against a byte quota.
 * @details Rejects embedded NUL, overlong encodings, surrogates, truncated
 * sequences and code points above U+10FFFF. Does not read data when size is zero.
 * The caller must prove the memory extent first. Calls allocate nothing, require
 * no permissions and are reentrant with immutable input in C99/C++98 or later.
 * @param[in] s Counted readable text, retained unchanged through return.
 * @param[in] maximum Maximum admitted encoded byte length, including zero.
 * @return OK, QUOTA when size exceeds maximum, or INVALID for malformed text.
 * @see uwvm_nvidia_text_view
 * @see uwvm_nvidia_sensor_status
 */
static inline int uwvm_nvidia_sensor_text(struct uwvm_nvidia_text_view s, size_t maximum)
{
    size_t i = 0;
    if(s.size > maximum)
        return UWVM_NVIDIA_SENSOR_QUOTA;
    if(s.size && !s.data)
        return UWVM_NVIDIA_SENSOR_INVALID;
    while(i < s.size)
    {
        unsigned char a = s.data[i++];
        unsigned needed;
        uint32_t value, minimum;
        if(!a)
            return UWVM_NVIDIA_SENSOR_INVALID;
        if(a < 0x80)
            continue;
        if(a >= 0xc2 && a <= 0xdf)
        {
            needed = 1;
            value = a & 0x1f;
            minimum = 0x80;
        }
        else if(a >= 0xe0 && a <= 0xef)
        {
            needed = 2;
            value = a & 0x0f;
            minimum = 0x800;
        }
        else if(a >= 0xf0 && a <= 0xf4)
        {
            needed = 3;
            value = a & 7;
            minimum = 0x10000;
        }
        else
            return UWVM_NVIDIA_SENSOR_INVALID;
        if(needed > s.size - i)
            return UWVM_NVIDIA_SENSOR_INVALID;
        while(needed--)
        {
            unsigned char b = s.data[i++];
            if((b & 0xc0) != 0x80)
                return UWVM_NVIDIA_SENSOR_INVALID;
            value = (value << 6) | (b & 0x3f);
        }
        if(value < minimum || value > 0x10ffff || (value >= 0xd800 && value <= 0xdfff))
            return UWVM_NVIDIA_SENSOR_INVALID;
    }
    return UWVM_NVIDIA_SENSOR_OK;
}

/**
 * @brief Validate timestamp normalization and complete frame text.
 * @details Signed seconds are retained without restricting the clock domain.
 * This local read-only operation has no clock/ROS permissions or async work;
 * the caller retains h and its frame bytes until return, without concurrent writes.
 * @param[in] h Readable header; null returns INVALID.
 * @param[in] maximum_text Maximum frame_id UTF-8 byte length.
 * @return The first INVALID or text validation status; OK for a complete header.
 * @see uwvm_nvidia_time
 * @see uwvm_nvidia_sensor_text
 */
static inline int uwvm_nvidia_sensor_header(const struct uwvm_nvidia_header* h, size_t maximum_text)
{
    if(!h || h->stamp.nanosec >= 1000000000u)
        return UWVM_NVIDIA_SENSOR_INVALID;
    return uwvm_nvidia_sensor_text(h->frame_id, maximum_text);
}

/**
 * @brief Compare a counted view to an exact nonterminated literal extent.
 * @details Performs a byte comparison only, without UTF-8 validation, allocation,
 * permissions or async activity. Both extents must remain readable and immutable
 * until return; literal must cover count bytes even though no terminator is read.
 * @param[in] text Borrowed bytes; a null data pointer never matches.
 * @param[in] literal Readable reference bytes for the duration of the call.
 * @param[in] count Exact expected byte count; no prefix matching is performed.
 * @return 1 for equal nonnull extents with equal lengths; otherwise 0.
 * @see uwvm_nvidia_sensor_text
 * @see uwvm_nvidia_validate_apriltag_cpu_image
 */
static inline int uwvm_nvidia_sensor_literal(struct uwvm_nvidia_text_view text, const char* literal, size_t count)
{
    size_t i;
    if(text.size != count || !text.data)
        return 0;
    for(i = 0; i < count; ++i)
        if(text.data[i] != (unsigned char)literal[i])
            return 0;
    return 1;
}

/**
 * @brief Validate a complete CPU Image for the pinned AprilTag input profile.
 * @details Admits exactly rgb8, bgr8, rgba8, bgra8 and mono8. Validates the full
 * header, positive dimensions, 0/1 endian flag, packed minimum row width,
 * overflow-safe step*height and exact payload length, including padding. Never
 * truncates, converts encodings or dereferences payload samples. The owner must
 * establish all memory extents before calling and retain them unchanged through
 * use. A native rosidl::Buffer must already be synchronized and copied by its
 * trusted owner. This synchronous reentrant function needs no permissions and
 * grants no ROS, CUDA, device or stream rights. Available from C99/C++98.
 * @param[in] image Complete readable borrowed view; null returns INVALID.
 * @param[in] maximum_bytes Maximum total padded payload bytes.
 * @param[in] maximum_text Maximum bytes in each frame_id and encoding string.
 * @return OK, INVALID, QUOTA, or UNSUPPORTED for an unlisted encoding. Earlier
 * metadata failures take precedence; the input is unchanged on every result.
 * @see uwvm_nvidia_cpu_image
 * @see uwvm_nvidia_sensor_status
 * @see ../../../../example/platform/nvidia-isaac-ros/c/cpu_values.c
 */
static inline int uwvm_nvidia_validate_apriltag_cpu_image(const struct uwvm_nvidia_cpu_image* image, size_t maximum_bytes, size_t maximum_text)
{
    size_t channels, row_bytes, bytes;
    int status;
    if(!image)
        return UWVM_NVIDIA_SENSOR_INVALID;
    status = uwvm_nvidia_sensor_header(&image->header, maximum_text);
    if(status)
        return status;
    status = uwvm_nvidia_sensor_text(image->encoding, maximum_text);
    if(status)
        return status;
    if(uwvm_nvidia_sensor_literal(image->encoding, "rgb8", 4) || uwvm_nvidia_sensor_literal(image->encoding, "bgr8", 4))
        channels = 3;
    else if(uwvm_nvidia_sensor_literal(image->encoding, "rgba8", 5) || uwvm_nvidia_sensor_literal(image->encoding, "bgra8", 5))
        channels = 4;
    else if(uwvm_nvidia_sensor_literal(image->encoding, "mono8", 5))
        channels = 1;
    else
        return UWVM_NVIDIA_SENSOR_UNSUPPORTED;
    if(!image->width || !image->height || image->is_bigendian > 1)
        return UWVM_NVIDIA_SENSOR_INVALID;
    if(image->width > SIZE_MAX / channels)
        return UWVM_NVIDIA_SENSOR_QUOTA;
    row_bytes = (size_t)image->width * channels;
    if(row_bytes > image->step)
        return UWVM_NVIDIA_SENSOR_INVALID;
    if(image->height > SIZE_MAX / image->step)
        return UWVM_NVIDIA_SENSOR_QUOTA;
    bytes = (size_t)image->step * image->height;
    if(bytes > maximum_bytes)
        return UWVM_NVIDIA_SENSOR_QUOTA;
    if(image->data.size != bytes || (bytes && !image->data.data))
        return UWVM_NVIDIA_SENSOR_INVALID;
    return UWVM_NVIDIA_SENSOR_OK;
}

/**
 * @brief Resolve the byte width of a datatype under an explicit ROS profile.
 * @details This pure C99/C++98 lookup does not access data, swap byte order,
 * allocate, grant permissions or launch async work. It is safe across threads.
 * @param[in] datatype Exact numeric PointField constant; zero is unsupported.
 * @param[in] profile LEGACY_8 or LYRICAL_11; other values are unsupported.
 * @return Width 1, 2, 4 or 8 bytes; 0 for an unknown profile or datatype.
 * @see uwvm_nvidia_pointfield_datatype
 * @see uwvm_nvidia_validate_cpu_pointcloud2
 */
static inline size_t uwvm_nvidia_pointfield_width(uint8_t datatype, enum uwvm_nvidia_pointfield_profile profile)
{
    if(profile != UWVM_NVIDIA_POINTFIELD_LEGACY_8 && profile != UWVM_NVIDIA_POINTFIELD_LYRICAL_11)
        return 0;
    if(datatype > (unsigned)profile)
        return 0;
    switch(datatype)
    {
        case UWVM_NVIDIA_POINTFIELD_INT8:
        case UWVM_NVIDIA_POINTFIELD_UINT8:
        case UWVM_NVIDIA_POINTFIELD_BOOL: return 1;
        case UWVM_NVIDIA_POINTFIELD_INT16:
        case UWVM_NVIDIA_POINTFIELD_UINT16: return 2;
        case UWVM_NVIDIA_POINTFIELD_INT32:
        case UWVM_NVIDIA_POINTFIELD_UINT32:
        case UWVM_NVIDIA_POINTFIELD_FLOAT32: return 4;
        case UWVM_NVIDIA_POINTFIELD_FLOAT64:
        case UWVM_NVIDIA_POINTFIELD_INT64:
        case UWVM_NVIDIA_POINTFIELD_UINT64: return 8;
        default: return 0;
    }
}

/**
 * @brief Validate a complete CPU PointCloud2 layout without dropping fields.
 * @details Checks the header, quotas, 0/1 flags, overflow-safe row/payload sizes
 * and every field's text, datatype, positive count and extent within point_step.
 * Empty dimensions, row padding, overlapping fields and arbitrary field names
 * remain representable when the complete extents are consistent. No XYZ-only
 * projection, sample conversion, allocation or GPU access occurs. The owner
 * proves and retains all referenced memory before this synchronous call and
 * prevents concurrent mutation. No permissions are needed or granted; supports
 * C99/C++98 and later without changing the native ROS or wire ABI.
 * @param[in] cloud Full readable borrowed view; null returns INVALID.
 * @param[in] profile Explicit admitted PointField constant set.
 * @param[in] maximum_bytes Maximum total payload bytes, including padding.
 * @param[in] maximum_fields Maximum number of complete field descriptors.
 * @param[in] maximum_text Maximum encoded bytes for each frame/field name.
 * @return OK; INVALID for inconsistent metadata; QUOTA for an exceeded bound;
 * UNSUPPORTED for an unlisted datatype. No input is changed on failure.
 * @see uwvm_nvidia_cpu_pointcloud2
 * @see uwvm_nvidia_pointfield_width
 */
static inline int uwvm_nvidia_validate_cpu_pointcloud2(const struct uwvm_nvidia_cpu_pointcloud2* cloud,
                                                       enum uwvm_nvidia_pointfield_profile profile,
                                                       size_t maximum_bytes,
                                                       size_t maximum_fields,
                                                       size_t maximum_text)
{
    size_t i, row_bytes, bytes;
    int status;
    if(!cloud || (profile != UWVM_NVIDIA_POINTFIELD_LEGACY_8 && profile != UWVM_NVIDIA_POINTFIELD_LYRICAL_11))
        return UWVM_NVIDIA_SENSOR_INVALID;
    status = uwvm_nvidia_sensor_header(&cloud->header, maximum_text);
    if(status)
        return status;
    if(cloud->fields_size > maximum_fields)
        return UWVM_NVIDIA_SENSOR_QUOTA;
    if((cloud->fields_size && !cloud->fields) || cloud->is_bigendian > 1 || cloud->is_dense > 1)
        return UWVM_NVIDIA_SENSOR_INVALID;
    if(cloud->width && cloud->point_step > SIZE_MAX / cloud->width)
        return UWVM_NVIDIA_SENSOR_QUOTA;
    row_bytes = (size_t)cloud->width * cloud->point_step;
    if(row_bytes > cloud->row_step || (cloud->width && !cloud->point_step))
        return UWVM_NVIDIA_SENSOR_INVALID;
    if(cloud->height && cloud->row_step > SIZE_MAX / cloud->height)
        return UWVM_NVIDIA_SENSOR_QUOTA;
    bytes = (size_t)cloud->height * cloud->row_step;
    if(bytes > maximum_bytes)
        return UWVM_NVIDIA_SENSOR_QUOTA;
    if(cloud->data.size != bytes || (bytes && !cloud->data.data))
        return UWVM_NVIDIA_SENSOR_INVALID;
    for(i = 0; i < cloud->fields_size; ++i)
    {
        const struct uwvm_nvidia_pointfield* field = cloud->fields + i;
        size_t width = uwvm_nvidia_pointfield_width(field->datatype, profile);
        status = uwvm_nvidia_sensor_text(field->name, maximum_text);
        if(status)
            return status;
        if(!width)
            return UWVM_NVIDIA_SENSOR_UNSUPPORTED;
        if(!field->count || field->offset > cloud->point_step)
            return UWVM_NVIDIA_SENSOR_INVALID;
        if(field->count > (cloud->point_step - field->offset) / width)
            return UWVM_NVIDIA_SENSOR_INVALID;
    }
    return UWVM_NVIDIA_SENSOR_OK;
}
#endif
