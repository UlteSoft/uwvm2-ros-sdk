// SPDX-License-Identifier: Apache-2.0
// Trusted native adapter for the pinned genuine rosidl::Buffer API.
#pragma once
#include <cstdint>
#include <nvidia-isaac-ros/c/cpu_sensor_contract.h>
#include <rosidl_buffer/buffer.hpp>
#include <sensor_msgs/msg/image.hpp>
#include <sensor_msgs/msg/point_cloud2.hpp>
#include <stdexcept>
#include <string>
#include <type_traits>
#include <vector>

namespace uwvm_nvidia_cpu
{
    /**
     * @brief Actual modern ROS Image carrying rosidl::Buffer<uint8_t>.
     * @details This alias retains the installed ROS type identity. Static assertions
     * reject vector-backed releases. Requires C++20 and pinned rosidl_buffer 5.3.1.
     * @see snapshot(Image const &, Limits, bool)
     */
    using Image = sensor_msgs::msg::Image;
    /**
     * @brief Actual modern ROS PointCloud2 with all eleven PointField datatypes.
     * @details No layout, namespace, generated type support or native ABI is replaced.
     * Requires the same pinned modern ROS dependencies as Image.
     * @see snapshot(Cloud const &, Limits, bool)
     */
    using Cloud = sensor_msgs::msg::PointCloud2;
    static_assert(std::is_same<decltype(Image{}.data), rosidl::Buffer<std::uint8_t>>::value, "An actual generated rosidl::Buffer Image is required");
    static_assert(std::is_same<decltype(Cloud{}.data), rosidl::Buffer<std::uint8_t>>::value, "An actual generated rosidl::Buffer PointCloud2 is required");
    static_assert(sensor_msgs::msg::PointField::INT64 == 9 && sensor_msgs::msg::PointField::UINT64 == 10 && sensor_msgs::msg::PointField::BOOL == 11,
                  "This adapter explicitly selects the eleven-type PointField schema");

    /**
     * @brief Complete CPU snapshot quotas, expressed in bytes and descriptor count.
     * @details bytes includes row/point padding, fields counts all descriptors, and
     * text bounds each UTF-8 string. Defaults are 16 MiB, 128 fields and 4096 bytes.
     * Limits constrain full admission rather than truncating a successful snapshot.
     * They grant no ROS, filesystem, CUDA, device or stream authority.
     * @see snapshot
     * @see validate
     */
    struct Limits
    {
        std::size_t bytes = 16 * 1024 * 1024;
        std::size_t fields = 128;
        std::size_t text = 4096;
    };

    /**
     * @brief Native snapshot exception retaining its numeric validation status.
     * @details status is 22 for invalid metadata, 90 for a quota/overflow, or 95 for
     * unsupported encoding/backend/schema. Allocation/backend exceptions propagate
     * separately; catching Error does not prove rollback of an external operation.
     * @see require
     * @see snapshot
     */
    struct Error : std::runtime_error
    {
        int status;

        /**
         * @brief Construct an exception without acquiring any native resource.
         * @details Retains code by value and creates a fixed English diagnostic.
         * Standard exception allocation may itself fail; no ROS/CUDA operation occurs.
         * @param[in] code Numeric failure status from the rejecting operation.
         * @see Error
         */
        explicit Error(int code) : std::runtime_error("complete CPU snapshot refused"), status(code)
        {
        }
    };

    /**
     * @brief Convert a failed native precondition into Error.
     * @details Synchronous and reentrant; performs no I/O, permission change or
     * backend synchronization. Supports C++20 and the same pinned native API.
     * @param[in] condition Already evaluated condition.
     * @param[in] code Failure status, defaulting to INVALID (22).
     * @throws Error when condition is false; returns void otherwise.
     * @see Error
     */
    inline void require(bool condition, int code = UWVM_NVIDIA_SENSOR_INVALID)
    {
        if(!condition)
            throw Error(code);
    }

    /**
     * @brief Borrow the entire byte extent of a native string without conversion.
     * @details The returned view owns nothing and performs no UTF-8 validation.
     * value must outlive every use and must not be mutated concurrently. No
     * permissions, allocations or asynchronous actions are involved.
     * @param[in] value Native string whose exact byte count is retained.
     * @return A borrowed counted view, valid only while value's storage is stable.
     * @see uwvm_nvidia_sensor_text
     */
    inline uwvm_nvidia_text_view text(std::string const& value)
    {
        return {reinterpret_cast<unsigned char const*>(value.data()), value.size()};
    }

    /**
     * @brief Borrow a native Header's complete timestamp and frame identifier.
     * @details No normalization, epoch substitution, allocation or permission
     * change occurs. The owner retains value unchanged until the view is retired.
     * @param[in] value Actual generated std_msgs Header with stable frame storage.
     * @return Local C contract view; it is neither wire data nor a native ABI cast.
     * @see checked_header
     * @see text
     */
    inline uwvm_nvidia_header header(std_msgs::msg::Header const& value)
    {
        return {
            {value.stamp.sec, value.stamp.nanosec},
            text(value.frame_id)
        };
    }

    /**
     * @brief Check the normalized nanosecond fraction and complete UTF-8 frame ID.
     * @details Reads only native metadata, preserves signed seconds and empty frame
     * IDs, allocates nothing and grants no clock/ROS rights. Concurrent readers need
     * an immutable retained value; calls are synchronous.
     * @param[in] value Actual native Header retained until return.
     * @param[in] limits text is the maximum frame_id byte count.
     * @throws Error for invalid text/time or an exceeded byte quota.
     * @see uwvm_nvidia_sensor_header
     */
    inline void checked_header(std_msgs::msg::Header const& value, Limits limits)
    {
        auto view = header(value);
        auto status = uwvm_nvidia_sensor_header(&view, limits.text);
        if(status)
            throw Error(status);
    }

    /**
     * @brief Admit only an explicitly permitted native Buffer backend and size.
     * @details Accepts cpu by default and cuda only with allow_cuda. Does not acquire
     * a handle, synchronize, copy or dereference backend data. The trusted native
     * owner separately admits CUDA device/stream use and keeps value immutable.
     * @param[in] value Genuine pinned rosidl Buffer retained until conversion ends.
     * @param[in] limits bytes bounds the complete buffer, including padding.
     * @param[in] allow_cuda Explicit trusted-owner opt-in; never supplied as Guest
     * authority. Unknown backends always fail even when this is true.
     * @throws Error(90) for quota or Error(95) for an unadmitted backend.
     * @see snapshot
     */
    inline void checked_backend(rosidl::Buffer<std::uint8_t> const& value, Limits limits, bool allow_cuda)
    {
        require(value.size() <= limits.bytes, UWVM_NVIDIA_SENSOR_QUOTA);
        auto backend = value.get_backend_type();
        require(backend == "cpu" || (allow_cuda && backend == "cuda"), UWVM_NVIDIA_SENSOR_UNSUPPORTED);
    }

    /**
     * @brief Validate every field and byte extent of an actual CPU Image.
     * @details Requires the cpu backend, five pinned AprilTag encodings and the
     * complete padded row layout. Reads metadata and a borrowed CPU pointer only;
     * it does not copy, decode pixels or acquire CUDA/ROS authority. The owner keeps
     * value and its Buffer immutable throughout this synchronous call.
     * @param[in] value Actual native Image; no generated substitute type is accepted.
     * @param[in] limits Whole payload and per-string admission quotas.
     * @throws Error(22/90/95) for malformed, oversized or unsupported input.
     * @see uwvm_nvidia_validate_apriltag_cpu_image
     * @see snapshot(Image const &, Limits, bool)
     */
    inline void validate(Image const& value, Limits limits = {})
    {
        require(value.data.get_backend_type() == "cpu", UWVM_NVIDIA_SENSOR_UNSUPPORTED);
        uwvm_nvidia_cpu_image view{
            header(value.header),
            value.height,
            value.width,
            text(value.encoding),
            value.is_bigendian,
            value.step,
            {value.data.data(), value.data.size()}
        };
        int status = uwvm_nvidia_validate_apriltag_cpu_image(&view, limits.bytes, limits.text);
        if(status)
            throw Error(status);
    }

    /**
     * @brief Validate the full CPU cloud, all descriptors and all padded extents.
     * @details Requires cpu Buffer and the eleven-type PointField schema. Allocates
     * temporary descriptor views but never projects to XYZ or changes endian/dense
     * flags. No backend conversion, permissions or async work occur. Keep value
     * immutable through return; standard allocation failures propagate unchanged.
     * @param[in] value Actual native PointCloud2 retained for the call.
     * @param[in] limits Payload, descriptor-count and per-string quotas.
     * @throws Error(22/90/95) for invalid layout, quota or unsupported datatype.
     * @see uwvm_nvidia_validate_cpu_pointcloud2
     * @see snapshot(Cloud const &, Limits, bool)
     */
    inline void validate(Cloud const& value, Limits limits = {})
    {
        require(value.data.get_backend_type() == "cpu", UWVM_NVIDIA_SENSOR_UNSUPPORTED);
        require(value.fields.size() <= limits.fields, UWVM_NVIDIA_SENSOR_QUOTA);
        std::vector<uwvm_nvidia_pointfield> fields;
        fields.reserve(value.fields.size());
        for(auto const& field: value.fields)
            fields.push_back({text(field.name), field.offset, field.datatype, field.count});
        uwvm_nvidia_cpu_pointcloud2 view{
            header(value.header),
            value.height,
            value.width,
            fields.data(),
            fields.size(),
            static_cast<std::uint8_t>(value.is_bigendian),
            value.point_step,
            value.row_step,
            {value.data.data(), value.data.size()},
            static_cast<std::uint8_t>(value.is_dense)
        };
        int status = uwvm_nvidia_validate_cpu_pointcloud2(&view, UWVM_NVIDIA_POINTFIELD_LYRICAL_11, limits.bytes, limits.fields, limits.text);
        if(status)
            throw Error(status);
    }

    /**
     * @brief Deep-copy a complete actual Image into independent CPU-owned storage.
     * @details Checks metadata/quotas before conversion, preserves the full header,
     * encoding, endian flag, stride and every padding byte, and revalidates the copy.
     * Uses genuine Buffer::to_vector. The pinned CUDA implementation acquires a
     * ReadHandle, enqueues D2H and synchronizes before return; this requires separate
     * trusted device/stream admission. No raw backend pointer or Guest right escapes.
     * Keep the original native message, CUDA streams and producer lifetime valid and
     * immutable through return. This synchronous call cannot preempt a blocked GPU;
     * an external finite process owner is still required. Requires C++20 and the
     * verified rosidl_buffer 5.3.1 / selected CUDA backend API.
     * @param[in] input Actual complete native Image, retained until return.
     * @param[in] limits Full payload/text quotas; exceeding them never truncates.
     * @param[in] allow_cuda Explicit independent native CUDA opt-in, false by default.
     * @return Independent cpu-backed Image, valid after input retirement.
     * @throws Error(22/90/95); allocation or backend errors propagate without a
     * partial returned object. Native CUDA work may have started before failure.
     * @see checked_backend
     * @see validate(Image const &, Limits)
     */
    inline Image snapshot(Image const& input, Limits limits = {}, bool allow_cuda = false)
    {
        checked_backend(input.data, limits, allow_cuda);
        checked_header(input.header, limits);
        int status = uwvm_nvidia_sensor_text(text(input.encoding), limits.text);
        if(status)
            throw Error(status);
        std::size_t channels = 0;
        if(input.encoding == "rgb8" || input.encoding == "bgr8")
            channels = 3;
        else if(input.encoding == "rgba8" || input.encoding == "bgra8")
            channels = 4;
        else if(input.encoding == "mono8")
            channels = 1;
        require(channels != 0, UWVM_NVIDIA_SENSOR_UNSUPPORTED);
        require(input.width && input.height && input.is_bigendian <= 1);
        require(input.width <= SIZE_MAX / channels, UWVM_NVIDIA_SENSOR_QUOTA);
        require(static_cast<std::size_t>(input.width) * channels <= input.step);
        require(input.height <= SIZE_MAX / input.step, UWVM_NVIDIA_SENSOR_QUOTA);
        require(static_cast<std::size_t>(input.step) * input.height <= limits.bytes, UWVM_NVIDIA_SENSOR_QUOTA);
        require(input.data.size() == static_cast<std::size_t>(input.step) * input.height);
        Image owned;
        owned.header = input.header;
        owned.height = input.height;
        owned.width = input.width;
        owned.encoding = input.encoding;
        owned.is_bigendian = input.is_bigendian;
        owned.step = input.step;
        owned.data = input.data.to_vector();
        validate(owned, limits);
        if(!input.data.empty() && input.data.get_backend_type() == "cpu")
            require(owned.data.data() != input.data.data());
        return owned;
    }

    /**
     * @brief Deep-copy the complete actual cloud and every field into owned CPU data.
     * @details Validates full metadata before genuine Buffer conversion, preserving
     * organization, field order/counts, overlapping fields, endian/dense flags and
     * all point/row padding. No XYZ projection or typed-schema substitution occurs.
     * CUDA is denied by default; an opted-in pinned backend performs its genuine
     * synchronized D2H copy. Retain the immutable input, producer and all streams
     * until return. Calls are synchronous; outer finite ownership handles blocking
     * backend work and independently admits ROS/CUDA privileges. C++20 is required.
     * @param[in] input Actual modern generated Buffer-backed PointCloud2.
     * @param[in] limits Whole byte, field-count and per-string quotas.
     * @param[in] allow_cuda Independent trusted native CUDA admission, default false.
     * @return Independent cpu-backed Cloud whose complete descriptors/data survive
     * original-message destruction. Error(22/90/95), allocation/backend exceptions
     * propagate without a partial return or any promise of GPU cancellation.
     * @see snapshot(Image const &, Limits, bool)
     * @see validate(Cloud const &, Limits)
     */
    inline Cloud snapshot(Cloud const& input, Limits limits = {}, bool allow_cuda = false)
    {
        checked_backend(input.data, limits, allow_cuda);
        checked_header(input.header, limits);
        require(input.fields.size() <= limits.fields, UWVM_NVIDIA_SENSOR_QUOTA);
        require(!input.width || input.point_step <= SIZE_MAX / input.width, UWVM_NVIDIA_SENSOR_QUOTA);
        require(static_cast<std::size_t>(input.width) * input.point_step <= input.row_step && (!input.width || input.point_step));
        require(!input.height || input.row_step <= SIZE_MAX / input.height, UWVM_NVIDIA_SENSOR_QUOTA);
        require(static_cast<std::size_t>(input.height) * input.row_step <= limits.bytes, UWVM_NVIDIA_SENSOR_QUOTA);
        require(input.data.size() == static_cast<std::size_t>(input.height) * input.row_step);
        for(auto const& field: input.fields)
        {
            int status = uwvm_nvidia_sensor_text(text(field.name), limits.text);
            if(status)
                throw Error(status);
            std::size_t width = uwvm_nvidia_pointfield_width(field.datatype, UWVM_NVIDIA_POINTFIELD_LYRICAL_11);
            require(width != 0, UWVM_NVIDIA_SENSOR_UNSUPPORTED);
            require(field.count && field.offset <= input.point_step);
            require(field.count <= (input.point_step - field.offset) / width);
        }
        Cloud owned;
        owned.header = input.header;
        owned.height = input.height;
        owned.width = input.width;
        owned.fields = input.fields;
        owned.is_bigendian = input.is_bigendian;
        owned.point_step = input.point_step;
        owned.row_step = input.row_step;
        owned.is_dense = input.is_dense;
        owned.data = input.data.to_vector();
        validate(owned, limits);
        if(!input.data.empty() && input.data.get_backend_type() == "cpu")
            require(owned.data.data() != input.data.data());
        return owned;
    }

    /**
     * @brief Compare complete CPU Images, including every payload/padding byte.
     * @details Both operands must already be independently admitted CPU values.
     * No CUDA conversion is allowed. Buffer::to_vector may allocate; the caller
     * first applies its quotas with validate and retains immutable operands until
     * return. The function needs no ROS/device permission and launches no async work.
     * @param[in] a First complete CPU Image.
     * @param[in] b Second complete CPU Image.
     * @return True only when all metadata and bytes match; false for any mismatch.
     * @throws Error(95) for a non-CPU backend; allocation errors propagate.
     * @see validate(Image const &, Limits)
     * @see snapshot(Image const &, Limits, bool)
     */
    inline bool equal(Image const& a, Image const& b)
    {
        require(a.data.get_backend_type() == "cpu" && b.data.get_backend_type() == "cpu", UWVM_NVIDIA_SENSOR_UNSUPPORTED);
        return a.header == b.header && a.height == b.height && a.width == b.width && a.encoding == b.encoding && a.is_bigendian == b.is_bigendian &&
               a.step == b.step && a.data.to_vector() == b.data.to_vector();
    }

    /**
     * @brief Compare every CPU cloud descriptor, flag, dimension and payload byte.
     * @details Field order, names, offsets, datatypes and counts all participate;
     * padding bytes and endian/dense flags are not normalized. Requires prevalidated
     * CPU operands retained immutably through this synchronous, allocating copy
     * comparison. No CUDA/ROS permission is acquired or inferred from equality.
     * @param[in] a First complete CPU Cloud.
     * @param[in] b Second complete CPU Cloud.
     * @return True for exact complete-value equality, otherwise false.
     * @throws Error(95) for non-CPU data; allocation failures propagate.
     * @see validate(Cloud const &, Limits)
     * @see snapshot(Cloud const &, Limits, bool)
     */
    inline bool equal(Cloud const& a, Cloud const& b)
    {
        require(a.data.get_backend_type() == "cpu" && b.data.get_backend_type() == "cpu", UWVM_NVIDIA_SENSOR_UNSUPPORTED);
        return a.header == b.header && a.height == b.height && a.width == b.width && a.fields == b.fields && a.is_bigendian == b.is_bigendian &&
               a.point_step == b.point_step && a.row_step == b.row_step && a.is_dense == b.is_dense && a.data.to_vector() == b.data.to_vector();
    }
}  // namespace uwvm_nvidia_cpu
