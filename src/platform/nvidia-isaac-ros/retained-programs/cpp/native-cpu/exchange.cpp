// @file exchange.cpp
// @brief Provide the selected typed SDK binding and ownership boundary for nvidia-isaac-ros.
// @details Use the matching backend, catalog and shared language implementation. Keep caller-owned inputs alive
// for the documented operation and propagate status or language errors without treating a refused call as success.

// SPDX-License-Identifier: Apache-2.0
// Finite real RMW exchange of complete authored sensor values on loopback.
#include <algorithm>
#include <chrono>
#include <cstdlib>
#include <iostream>
#include <memory>
#include <nvidia-isaac-ros/cpp/native/cpu_snapshot.hpp>
#include <rclcpp/rclcpp.hpp>
#include <string>
#include <vector>
#ifndef UWVM_NVIDIA_ENABLE_CPU_EXCHANGE
# define UWVM_NVIDIA_ENABLE_CPU_EXCHANGE 0
#endif
#ifndef UWVM_NVIDIA_CPU_CUDA
# define UWVM_NVIDIA_CPU_CUDA 0
#endif
#if UWVM_NVIDIA_CPU_CUDA
# include <cuda_buffer/cuda_buffer_api.hpp>
# include <cuda_runtime.h>
#endif

namespace cpu = uwvm_nvidia_cpu;

namespace
{
    std::uint32_t decimal(char const* text)
    {
        cpu::require(text && *text);
        std::uint32_t result = 0;
        for(; *text; ++text)
        {
            cpu::require(*text >= '0' && *text <= '9');
            auto digit = static_cast<std::uint32_t>(*text - '0');
            cpu::require(result <= (UINT32_MAX - digit) / 10);
            result = result * 10 + digit;
        }
        return result;
    }

    cpu::Image image(std::uint32_t nonce, std::uint32_t sequence)
    {
        cpu::Image value;
        value.header.stamp.sec = static_cast<std::int32_t>(sequence);
        value.header.stamp.nanosec = 999999999;
        value.header.frame_id = "cpu_" + std::to_string(nonce) + "_" + std::to_string(sequence) + "_光学";
        value.height = 2;
        value.width = 3;
        value.encoding = "rgb8";
        value.is_bigendian = 1;
        value.step = 12;  // three real padding bytes per row
        value.data.resize(24);
        for(std::size_t i = 0; i < value.data.size(); ++i)
            value.data[i] = static_cast<std::uint8_t>((i * 37 + sequence) & 255);
        cpu::validate(value);
        return value;
    }

    cpu::Cloud cloud(std::uint32_t nonce, std::uint32_t sequence)
    {
        cpu::Cloud value;
        value.header.stamp.sec = -static_cast<std::int32_t>(sequence);
        value.header.stamp.nanosec = 123456789;
        value.header.frame_id = "cloud_" + std::to_string(nonce) + "_" + std::to_string(sequence);
        value.height = 2;
        value.width = 2;
        value.is_bigendian = true;
        value.point_step = 16;
        value.row_step = 36;
        value.is_dense = false;
        for(auto const& entry: std::vector<std::pair<std::string, std::uint32_t>>{
                {"x", 0},
                {"y", 4},
                {"z", 8}
        })
        {
            sensor_msgs::msg::PointField field;
            field.name = entry.first;
            field.offset = entry.second;
            field.datatype = sensor_msgs::msg::PointField::FLOAT32;
            field.count = 1;
            value.fields.push_back(field);
        }
        sensor_msgs::msg::PointField quality;
        quality.name = "quality";
        quality.offset = 12;
        quality.datatype = sensor_msgs::msg::PointField::UINT8;
        quality.count = 4;
        value.fields.push_back(quality);
        value.data.resize(72);  // includes every field byte and four padding bytes per row
        for(std::size_t i = 0; i < value.data.size(); ++i)
            value.data[i] = static_cast<std::uint8_t>((i * 19 + sequence) & 255);
        cpu::validate(value);
        return value;
    }

    void check_owned_values(std::uint32_t nonce)
    {
        auto source_image = image(nonce, 1);
        auto source_cloud = cloud(nonce, 1);
        auto owned_image = cpu::snapshot(source_image);
        auto owned_cloud = cpu::snapshot(source_cloud);
        cpu::require(cpu::equal(owned_image, source_image) && cpu::equal(owned_cloud, source_cloud));
        source_image.data[0] ^= 255;
        source_image.header.frame_id = "changed";
        source_cloud.data[0] ^= 255;
        source_cloud.fields[0].name = "changed";
        cpu::require(cpu::equal(owned_image, image(nonce, 1)) && cpu::equal(owned_cloud, cloud(nonce, 1)));
        bool rejected = false;
        try
        {
            (void)cpu::snapshot(source_image, cpu::Limits{1, 128, 4096});
        }
        catch(cpu::Error const& e)
        {
            rejected = e.status == UWVM_NVIDIA_SENSOR_QUOTA;
        }
        cpu::require(rejected);
        rejected = false;
        source_cloud.row_step = 1;
        try
        {
            (void)cpu::snapshot(source_cloud);
        }
        catch(cpu::Error const& e)
        {
            rejected = e.status == UWVM_NVIDIA_SENSOR_INVALID;
        }
        cpu::require(rejected);
    }
#if UWVM_NVIDIA_CPU_CUDA
    void cuda_check(cudaError_t status)
    {
        if(status != cudaSuccess)
            throw std::runtime_error(cudaGetErrorString(status));
    }

    struct Stream
    {
        cudaStream_t value = nullptr;

        Stream()
        {
            cuda_check(cudaStreamCreateWithFlags(&value, cudaStreamNonBlocking));
        }

        Stream(Stream const&) = delete;
        Stream& operator= (Stream const&) = delete;

        ~Stream()
        {
            if(value)
            {
                (void)cudaStreamSynchronize(value);
                (void)cudaStreamDestroy(value);
            }
        }
    };

    void put_cuda(rosidl::Buffer<std::uint8_t>& target, Stream& writer)
    {
        auto source = target.to_vector();
        auto fresh = cuda_buffer_backend::allocate_buffer(source.size());
        {
            auto handle = cuda_buffer_backend::from_output_buffer(fresh, writer.value);
            cuda_buffer_backend::to_buffer(source.data(), source.size(), handle, writer.value, cudaMemcpyHostToDevice);
            // Keep the host source, output buffer and write handle alive until H2D
            // finishes. The handle then records its real producer event.
            cuda_check(cudaStreamSynchronize(writer.value));
        }
        target = std::move(fresh);
    }

    void check_cuda_api(std::uint32_t nonce, Stream& writer, Stream& reader)
    {
        auto original = image(nonce, 1);
        auto bytes = original.data.to_vector();
        auto device = cuda_buffer_backend::allocate_buffer(bytes.size());
        bool active_rejected = false, finalized_rejected = false;
        {
            auto write = cuda_buffer_backend::from_output_buffer(device, writer.value);
            try
            {
                auto second = cuda_buffer_backend::from_output_buffer(device, writer.value);
                (void)second;
            }
            catch(cuda_buffer_backend::CudaError const&)
            {
                active_rejected = true;
            }
            cuda_buffer_backend::to_buffer(bytes.data(), bytes.size(), write, writer.value, cudaMemcpyHostToDevice);
            // No application-side producer fence before the consumer read. The
            // pinned write finalizer/read constructor establish the stream event.
        }
        try
        {
            auto second = cuda_buffer_backend::from_output_buffer(device, writer.value);
            (void)second;
        }
        catch(cuda_buffer_backend::CudaError const&)
        {
            finalized_rejected = true;
        }
        cpu::require(active_rejected && finalized_rejected);
        std::vector<std::uint8_t> copied(bytes.size());
        {
            auto read = cuda_buffer_backend::from_input_buffer(device, reader.value);
            static_assert(std::is_same<decltype(read.get_ptr()), std::uint8_t const*>::value, "Genuine subscriber pointer must be read-only");
            cpu::require(!read.get_promoted_buffer());
            cuda_check(cudaMemcpyAsync(copied.data(), read.get_ptr(), copied.size(), cudaMemcpyDeviceToHost, reader.value));
            cuda_check(cudaStreamSynchronize(reader.value));
        }
        cpu::require(copied == bytes);
        original.data = std::move(device);
        auto snapshot = cpu::snapshot(original, {}, true);
        original = cpu::Image{};  // all original message/device storage can now retire
        cpu::require(cpu::equal(snapshot, image(nonce, 1)));
        auto fallback = image(nonce, 1);
        {
            auto read = cuda_buffer_backend::from_input_buffer(fallback.data, reader.value);
            cpu::require(static_cast<bool>(read.get_promoted_buffer()));
            cuda_check(cudaMemcpyAsync(copied.data(), read.get_ptr(), copied.size(), cudaMemcpyDeviceToHost, reader.value));
            cuda_check(cudaStreamSynchronize(reader.value));
        }
        cpu::require(copied == bytes && cpu::equal(fallback, image(nonce, 1)));
        // A promoted output must be retained and substituted after the write handle
        // retires. Leaving the original CPU field installed would publish old bytes.
        std::shared_ptr<rosidl::Buffer<std::uint8_t>> promoted;
        {
            auto write = cuda_buffer_backend::from_output_buffer(fallback.data, writer.value);
            promoted = write.get_promoted_buffer();
            cpu::require(static_cast<bool>(promoted));
            cuda_buffer_backend::to_buffer(bytes.data(), bytes.size(), write, writer.value, cudaMemcpyHostToDevice);
            cuda_check(cudaStreamSynchronize(writer.value));
        }
        fallback.data = std::move(*promoted);
        promoted.reset();
        cpu::require(cpu::equal(cpu::snapshot(fallback, {}, true), image(nonce, 1)));
    }
#endif
}  // namespace

int main(int argc, char** argv)
{
    // Native process opt-in is independent of every Wasm permission.
    if(!UWVM_NVIDIA_ENABLE_CPU_EXCHANGE)
        return 13;
    if(argc != 6 || std::string(argv[1]) != "--enable-loopback")
        return 13;
    int primary = 0, executor_close = 0, context_close = 0;
    std::size_t received_images = 0, received_clouds = 0, cuda_inputs = 0, cpu_inputs = 0;
    std::shared_ptr<rclcpp::Context> context;
    std::shared_ptr<rclcpp::Node> publisher_node, subscriber_node;
    std::unique_ptr<rclcpp::executors::SingleThreadedExecutor> executor;
    rclcpp::Publisher<cpu::Image>::SharedPtr image_pub;
    rclcpp::Publisher<cpu::Cloud>::SharedPtr cloud_pub;
    rclcpp::Subscription<cpu::Image>::SharedPtr image_sub;
    rclcpp::Subscription<cpu::Cloud>::SharedPtr cloud_sub;
    std::vector<cpu::Image> images;
    std::vector<cpu::Cloud> clouds;
    std::vector<std::weak_ptr<cpu::Image const>> image_owners;
    std::vector<std::weak_ptr<cpu::Cloud const>> cloud_owners;
#if UWVM_NVIDIA_CPU_CUDA
    // Streams outlive all messages, handles, RMW endpoints and the Context.
    std::unique_ptr<Stream> writer, reader;
#endif
    std::uint32_t nonce = 0, samples = 0;
    try
    {
        auto domain = decimal(argv[2]), lifetime = decimal(argv[3]);
        samples = decimal(argv[4]);
        nonce = decimal(argv[5]);
        cpu::require(domain <= 232 && lifetime > 0 && lifetime <= 10000 && samples > 0 && samples <= 16 && nonce > 0);
        auto until = std::chrono::steady_clock::now() + std::chrono::milliseconds(lifetime);
        images.reserve(samples);
        clouds.reserve(samples);
        image_owners.reserve(samples);
        cloud_owners.reserve(samples);
        check_owned_values(nonce);
#if UWVM_NVIDIA_CPU_CUDA
        writer = std::make_unique<Stream>();
        reader = std::make_unique<Stream>();
        check_cuda_api(nonce, *writer, *reader);
#endif
        // No configurable hardware endpoint. Explicit domain and private names,
        // disabled global arguments and intra-process shortcut, real RMW path.
        cpu::require(::setenv("ROS_LOCALHOST_ONLY", "1", 1) == 0 && ::setenv("ROS_AUTOMATIC_DISCOVERY_RANGE", "LOCALHOST", 1) == 0 &&
                         ::setenv("ROS_STATIC_PEERS", "", 1) == 0,
                     5);
        context = std::make_shared<rclcpp::Context>();
        rclcpp::InitOptions init;
        init.set_domain_id(domain);
        context->init(0, nullptr, init);
        rclcpp::NodeOptions options;
        options.context(context)
            .use_global_arguments(false)
            .use_intra_process_comms(false)
            .enable_rosout(false)
            .start_parameter_services(false)
            .start_parameter_event_publisher(false);
        std::string ns = "/uwvm_cpu_buffer/n" + std::to_string(nonce);
        publisher_node = std::make_shared<rclcpp::Node>("producer", ns, options);
        subscriber_node = std::make_shared<rclcpp::Node>("consumer", ns, options);
        auto qos = rclcpp::QoS(rclcpp::KeepLast(1)).reliable().durability_volatile();
        auto observe_backend = [&](auto const& data)
        {
            auto backend = data.get_backend_type();
            if(backend == "cpu")
                ++cpu_inputs;
            else if(backend == "cuda")
                ++cuda_inputs;
            else
                throw cpu::Error(UWVM_NVIDIA_SENSOR_UNSUPPORTED);
        };
        image_sub = subscriber_node->create_subscription<cpu::Image>(
            "image",
            qos,
            [&](cpu::Image::ConstSharedPtr value)
            {
                try
                {
                    cpu::require(images.size() < samples);
                    auto owned = cpu::snapshot(*value, {}, UWVM_NVIDIA_CPU_CUDA != 0);
                    cpu::require(cpu::equal(owned, image(nonce, static_cast<std::uint32_t>(images.size() + 1))));
                    observe_backend(value->data);
                    image_owners.emplace_back(value);
                    images.push_back(std::move(owned));
                    ++received_images;
                }
                catch(cpu::Error const& e)
                {
                    primary = e.status;
                }
                catch(std::bad_alloc const&)
                {
                    primary = 12;
                }
                catch(...)
                {
                    primary = 5;
                }
            });
        cloud_sub = subscriber_node->create_subscription<cpu::Cloud>(
            "cloud",
            qos,
            [&](cpu::Cloud::ConstSharedPtr value)
            {
                try
                {
                    cpu::require(clouds.size() < samples);
                    auto owned = cpu::snapshot(*value, {}, UWVM_NVIDIA_CPU_CUDA != 0);
                    cpu::require(cpu::equal(owned, cloud(nonce, static_cast<std::uint32_t>(clouds.size() + 1))));
                    observe_backend(value->data);
                    cloud_owners.emplace_back(value);
                    clouds.push_back(std::move(owned));
                    ++received_clouds;
                }
                catch(cpu::Error const& e)
                {
                    primary = e.status;
                }
                catch(std::bad_alloc const&)
                {
                    primary = 12;
                }
                catch(...)
                {
                    primary = 5;
                }
            });
        image_pub = publisher_node->create_publisher<cpu::Image>("image", qos);
        cloud_pub = publisher_node->create_publisher<cpu::Cloud>("cloud", qos);
        rclcpp::ExecutorOptions eo;
        eo.context = context;
        executor = std::make_unique<rclcpp::executors::SingleThreadedExecutor>(eo);
        executor->add_node(publisher_node);
        executor->add_node(subscriber_node);
        auto spin = [&]
        {
            auto remaining = until - std::chrono::steady_clock::now();
            cpu::require(remaining > remaining.zero(), 110);
            executor->spin_once(std::min(std::chrono::duration_cast<std::chrono::nanoseconds>(remaining), std::chrono::nanoseconds{20000000}));
        };
        while(!primary && (image_pub->get_subscription_count() != 1 || cloud_pub->get_subscription_count() != 1))
            spin();
        for(std::uint32_t sequence = 1; !primary && sequence <= samples; ++sequence)
        {
            auto image_value = image(nonce, sequence);
            auto cloud_value = cloud(nonce, sequence);
#if UWVM_NVIDIA_CPU_CUDA
            put_cuda(image_value.data, *writer);
            put_cuda(cloud_value.data, *writer);
#endif
            image_pub->publish(image_value);
            cloud_pub->publish(cloud_value);  // exactly once each
            while(!primary && (images.size() < sequence || clouds.size() < sequence))
                spin();
        }
    }
    catch(cpu::Error const& e)
    {
        primary = e.status;
    }
    catch(std::bad_alloc const&)
    {
        primary = 12;
    }
    catch(std::exception const& e)
    {
        std::cerr << e.what() << '\n';
        primary = 5;
    }
    catch(...)
    {
        primary = 5;
    }
    if(executor)
    {
        try
        {
            if(publisher_node)
                executor->remove_node(publisher_node);
        }
        catch(...)
        {
            executor_close = 5;
        }
        try
        {
            if(subscriber_node)
                executor->remove_node(subscriber_node);
        }
        catch(...)
        {
            executor_close = 5;
        }
        try
        {
            executor.reset();
        }
        catch(...)
        {
            executor_close = 5;
        }
    }
    image_sub.reset();
    cloud_sub.reset();
    image_pub.reset();
    cloud_pub.reset();
    subscriber_node.reset();
    publisher_node.reset();
    try
    {
        if(context && context->is_valid() && !context->shutdown("finite CPU buffer exchange retired"))
            context_close = 125;
    }
    catch(...)
    {
        context_close = 5;
    }
    context.reset();
    std::size_t released = 0;
    for(auto const& owner: image_owners)
        if(owner.expired())
            ++released;
    for(auto const& owner: cloud_owners)
        if(owner.expired())
            ++released;
    try
    {
        if(!primary)
        {
            cpu::require(images.size() == samples && clouds.size() == samples && released == 2 * samples);
            for(std::uint32_t i = 0; i < samples; ++i)
            {
                cpu::require(cpu::equal(images[i], image(nonce, i + 1)) && cpu::equal(clouds[i], cloud(nonce, i + 1)));
            }
        }
    }
    catch(cpu::Error const& e)
    {
        primary = e.status;
    }
    catch(...)
    {
        primary = 5;
    }
#if UWVM_NVIDIA_CPU_CUDA
    reader.reset();
    writer.reset();
#endif
    std::cout << "{\"format\":\"uwvm-native-cpu-exchange-v1\",\"primary\":" << primary << ",\"executor_close\":" << executor_close
              << ",\"context_close\":" << context_close << ",\"image_messages\":" << received_images << ",\"cloud_messages\":" << received_clouds
              << ",\"released_received_owners\":" << released << ",\"cpu_inputs\":" << cpu_inputs << ",\"cuda_inputs\":" << cuda_inputs
              << ",\"cuda_api_checks_enabled\":" << UWVM_NVIDIA_CPU_CUDA
              << ",\"intra_process_shortcut\":false,\"guest_executions\":0,\"official_suite_credit\":0,\"default_" "authority\":[]}\n";
    if(!std::cout)
        return primary ? primary : 5;
    return primary ? primary : executor_close ? executor_close : context_close;
}
