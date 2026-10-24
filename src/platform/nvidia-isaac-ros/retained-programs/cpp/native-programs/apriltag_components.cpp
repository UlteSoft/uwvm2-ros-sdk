// SPDX-FileCopyrightText: Copyright (c) 2021-2024 NVIDIA CORPORATION & AFFILIATES. All rights reserved.
// SPDX-License-Identifier: Apache-2.0
// Modifications: native C++ composition, explicit admission and finite ownership.
// Native C++ application equivalents of the four pinned AprilTag launch entries.
#include <chrono>
#include <condition_variable>
#include <cstdint>
#include <cstdlib>
#include <filesystem>
#include <iostream>
#include <memory>
#include <mutex>
#include <rclcpp/parameter_map.hpp>
#include <rclcpp/rclcpp.hpp>
#include <rclcpp_components/component_manager.hpp>
#include <stdexcept>
#include <string>
#include <string_view>
#include <thread>
#include <utility>
#include <vector>

#ifndef UWVM_NVIDIA_ENABLE_COMPONENT_PROGRAMS
# define UWVM_NVIDIA_ENABLE_COMPONENT_PROGRAMS 0
#endif
#ifndef UWVM_NVIDIA_ENABLE_USB_PIPELINE
# define UWVM_NVIDIA_ENABLE_USB_PIPELINE 0
#endif
static_assert(UWVM_NVIDIA_ENABLE_COMPONENT_PROGRAMS == 0 || UWVM_NVIDIA_ENABLE_COMPONENT_PROGRAMS == 1);
static_assert(UWVM_NVIDIA_ENABLE_USB_PIPELINE == 0 || UWVM_NVIDIA_ENABLE_USB_PIPELINE == 1);

namespace
{
    /** @brief Parse one complete unsigned decimal without locale or partial success.
     * @details Rejects empty, signed, nondecimal and overflowing values. Allocates
     * nothing, retains no view and changes output only after the complete parse.
     * @param[in] text Immutable borrowed CLI bytes, valid for the call.
     * @param[out] output Exact uint32 value on true; unchanged on false.
     * @return Complete parse success. No file, clock, ROS or native permission occurs.
     * @see main
     */
    bool decimal(std::string_view text, std::uint32_t& output) noexcept
    {
        if(text.empty())
            return false;
        std::uint32_t value = 0;
        for(char c: text)
        {
            if(c < '0' || c > '9')
                return false;
            auto digit = static_cast<std::uint32_t>(c - '0');
            if(value > (UINT32_MAX - digit) / 10)
                return false;
            value = value * 10 + digit;
        }
        output = value;
        return true;
    }

    /** @brief Require a private absolute namespace with ordinary ROS name segments.
     * @details Accepts 2..255 ASCII bytes, with no empty segment, trailing slash or
     * root-only namespace. This validates syntax, not peer identity or authorization.
     * @param[in] text Immutable CLI namespace, borrowed only during validation.
     * @return Valid segment grammar. No ROS initialization or permission is granted.
     * @see main
     */
    bool private_namespace(std::string_view text) noexcept
    {
        if(text.size() < 2 || text.size() > 255 || text.front() != '/' || text.back() == '/')
            return false;
        bool first = true;
        for(char c: text.substr(1))
        {
            if(c == '/')
            {
                if(first)
                    return false;
                first = true;
                continue;
            }
            bool alpha = (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') || c == '_';
            if(!alpha && (first || c < '0' || c > '9'))
                return false;
            first = false;
        }
        return !first;
    }

    /** @brief Retain the real component manager and its native load/unload/list APIs.
     * @details Uses the actual ROS class loader, resource index, LoadNode parameters,
     * remaps and original NVIDIA/usb_cam DSOs. Child nodes explicitly inherit this
     * owner's private Context; the inspected Lyrical base create_node_options does
     * not set it. Startup load and execution must not run concurrently. Inherited
     * native management services remain native-only and grant no Guest authority.
     * @see load
     * @see create_node_options
     */
    class ApplicationContainer final : public rclcpp_components::ComponentManager
    {
    public:
        /** @brief Construct the actual multithreaded component container node.
         * @details Retains the executor weakly and Context through native NodeOptions.
         * Uses the original apriltag_container name and inherited manager services.
         * @param[in] executor Real admitted executor, retained until container teardown.
         * @param[in] options Private Context/namespace options; default process global
         * arguments are disabled. Native node allocation/service errors propagate.
         * @see main
         */
        ApplicationContainer(std::shared_ptr<rclcpp::Executor> const& executor, rclcpp::NodeOptions const& options) :
            ComponentManager(executor, "apriltag_container", options)
        {
        }

        /** @brief Load one complete original component through the real manager.
         * @details Calls the original LoadNode handler before executor spin. The
         * manager owns its DSO, node wrapper and executor membership until teardown;
         * no fake plugin, hand-built ROS record or narrowed message adapter is used.
         * @param[in] package Exact installed ament package, owned string for this call.
         * @param[in] plugin Exact original registered C++ plugin class name.
         * @param[in] name Original component node name, relocated into name_space.
         * @param[in] name_space Explicit private namespace, validated by main.
         * @param[in] parameters Complete actual native parameters, copied to request.
         * @param[in] remaps Complete original relative remapping rules, copied intact.
         * @return Full native LoadNode response, including unique ID, full node name,
         * success and error text. Failed load throws with actual native error text;
         * no automatic retry occurs after constructor or loading uncertainty.
         * @see main
         */
        LoadNode::Response load(std::string const& package,
                                std::string const& plugin,
                                std::string const& name,
                                std::string const& name_space,
                                std::vector<rclcpp::Parameter> const& parameters,
                                std::vector<std::string> const& remaps)
        {
            auto request = std::make_shared<LoadNode::Request>();
            request->package_name = package;
            request->plugin_name = plugin;
            request->node_name = name;
            request->node_namespace = name_space;
            request->remap_rules = remaps;
            for(auto const& parameter: parameters)
                request->parameters.push_back(parameter.to_parameter_msg());
            auto response = std::make_shared<LoadNode::Response>();
            on_load_node(std::make_shared<rmw_request_id_t>(), request, response);
            if(!response->success)
                throw std::runtime_error("original component load failed: " + response->error_message);
            return *response;
        }

    protected:
        /** @brief Preserve original complete component options and bind private Context.
         * @details The real base handles all parameters, remaps and extra arguments.
         * Only context ownership is added; children never select an uninitialized
         * process-global Context. Called by the real manager on its serialized load
         * path, with ordinary native allocation/parameter errors propagated intact.
         * @param[in] request Complete actual LoadNode request, retained by the manager.
         * @return Native options by value, with the owner's retained Context.
         * @see ApplicationContainer
         * @see load
         */
        rclcpp::NodeOptions create_node_options(std::shared_ptr<LoadNode::Request> request) override
        {
            auto options = ComponentManager::create_node_options(request);
            options.context(get_node_options().context());
            return options;
        }
    };

    /** @brief Host the complete detector variants or USB camera pipeline natively.
     * @details Requires compile-time and runtime native admission; returns 13 before
     * ROS initialization when disabled. Uses a genuine two-worker MultiThreadedExecutor
     * and ComponentManager, preserving original native plugin management and full
     * message processing. plain/core use size .22; sim uses .32; all retain max_tags
     * 64/tile_size 4. core retains family/backend and rectified remaps. sim retains
     * front stereo remaps. usb loads RectifyNode, AprilTagNode and UsbCamNode together,
     * preserving every selected YAML parameter and 1280x720 default rectifier size.
     * The finite owner must bound blocked plugin constructors/callbacks; cancellation
     * of executor spin is not GPU cancellation or physical robot stopping.
     * @param[in] argc Argument count, including executable name.
     * @param[in] argv Immutable complete CLI: --enable-native-components VARIANT
     * DOMAIN LIFETIME_MS PRIVATE_NAMESPACE; core additionally FAMILY BACKENDS; usb
     * additionally PHYSICAL_YAML PARAMETER_NODE WIDTH HEIGHT --enable-usb-camera.
     * DOMAIN 0..232, lifetime 1..120000 ms, width/height 1..16384. Native DDS is
     * loopback-only; actual immutable package/DSO/YAML/calibration/CUDA/VPI and
     * optional physical USB camera rights are separately admitted by the operator.
     * @return First primary 0/5/12/13/22/125 or independent cleanup failure. Status 0
     * means finite hosting completed; it proves no detections, camera observations,
     * native identity export, Gateway exchange, Wasm Guest or hardware compatibility.
     * @see ApplicationContainer
     * @see CMakeLists.txt
     */
    int application(int argc, char** argv)
    {
        if(!UWVM_NVIDIA_ENABLE_COMPONENT_PROGRAMS || argc < 2 || std::string_view(argv[1]) != "--enable-native-components")
            return 13;
        if(argc < 6)
            return 22;
        std::string variant{argv[2]}, name_space{argv[5]};
        bool usb = variant == "usb", core = variant == "core";
        if((!usb && !core && variant != "plain" && variant != "sim") || argc != (usb ? 11 : core ? 8 : 6) || !private_namespace(name_space))
            return 22;
        if(usb && (!UWVM_NVIDIA_ENABLE_USB_PIPELINE || std::string_view(argv[10]) != "--enable-usb-camera"))
            return 13;
        std::uint32_t domain{}, milliseconds{}, width = 1280, height = 720;
        if(!decimal(argv[3], domain) || domain > 232 || !decimal(argv[4], milliseconds) || !milliseconds || milliseconds > 120000)
            return 22;
        if(core && (std::string_view(argv[6]).empty() || std::string_view(argv[6]).size() > 64 || std::string_view(argv[7]).empty() ||
                    std::string_view(argv[7]).size() > 64))
            return 22;
        if(usb &&
           (!decimal(argv[8], width) || !decimal(argv[9], height) || !width || !height || width > 16384 || height > 16384 || !private_namespace(argv[7])))
            return 22;
        for(auto key: {"ROS_DISCOVERY_SERVER", "ROS_STATIC_PEERS", "CYCLONEDDS_URI", "FASTDDS_DEFAULT_PROFILES_FILE", "FASTRTPS_DEFAULT_PROFILES_FILE"})
            if(auto value = std::getenv(key); value && *value)
                return 22;
        if(setenv("ROS_LOCALHOST_ONLY", "1", 1) || setenv("ROS_AUTOMATIC_DISCOVERY_RANGE", "LOCALHOST", 1))
            return 5;
        std::shared_ptr<rclcpp::Context> context;
        std::shared_ptr<rclcpp::executors::MultiThreadedExecutor> executor;
        std::shared_ptr<ApplicationContainer> manager;
        std::vector<ApplicationContainer::LoadNode::Response> loaded;
        std::uint32_t primary = 0, cleanup = 0;
        auto deadline = std::chrono::steady_clock::now() + std::chrono::milliseconds(milliseconds);
        try
        {
            std::vector<rclcpp::Parameter> camera_parameters;
            if(usb)
            {
                std::filesystem::path yaml{argv[6]};
                if(!yaml.is_absolute() || std::filesystem::is_symlink(yaml) || std::filesystem::canonical(yaml) != yaml ||
                   !std::filesystem::is_regular_file(yaml) || !std::filesystem::file_size(yaml) || std::filesystem::file_size(yaml) > 65536)
                    return 22;
                auto parameters = rclcpp::parameter_map_from_yaml_file(yaml.string(), argv[7]);
                camera_parameters = rclcpp::parameters_from_map(parameters, argv[7]);
                if(camera_parameters.empty())
                    return 22;
            }
            context = std::make_shared<rclcpp::Context>();
            rclcpp::InitOptions init;
            init.set_domain_id(domain);
            context->init(0, nullptr, init);
            rclcpp::ExecutorOptions executor_options;
            executor_options.context = context;
            executor = std::make_shared<rclcpp::executors::MultiThreadedExecutor>(executor_options, 2);
            rclcpp::NodeOptions options;
            options.context(context)
                .use_global_arguments(false)
                .start_parameter_services(false)
                .start_parameter_event_publisher(false)
                .parameter_overrides({rclcpp::Parameter("thread_num", std::int64_t{2})})
                .arguments({"--ros-args", "-r", "__ns:=" + name_space});
            manager = std::make_shared<ApplicationContainer>(executor, options);
            executor->add_node(manager);
            if(usb)
            {
                loaded.push_back(manager->load("isaac_ros_image_proc",
                                               "nvidia::isaac_ros::image_proc::RectifyNode",
                                               "rectify",
                                               name_space,
                                               {rclcpp::Parameter("output_width", static_cast<std::int64_t>(width)),
                                                rclcpp::Parameter("output_height", static_cast<std::int64_t>(height))},
                                               {}));
                loaded.push_back(manager->load("isaac_ros_apriltag",
                                               "nvidia::isaac_ros::apriltag::AprilTagNode",
                                               "apriltag",
                                               name_space,
                                               {},
                                               {"image:=image_rect", "camera_info:=camera_info_rect"}));
                loaded.push_back(manager->load("usb_cam", "usb_cam::UsbCamNode", "usb_cam", name_space, camera_parameters, {}));
            }
            else
            {
                std::vector<rclcpp::Parameter> parameters{rclcpp::Parameter("size", variant == "sim" ? 0.32 : 0.22),
                                                          rclcpp::Parameter("max_tags", std::int64_t{64}),
                                                          rclcpp::Parameter("tile_size", std::int64_t{4})};
                std::vector<std::string> remaps;
                if(core)
                {
                    parameters.emplace_back("tag_family", std::string(argv[6]));
                    parameters.emplace_back("backends", std::string(argv[7]));
                    remaps = {"image:=image_rect", "camera_info:=camera_info_rect"};
                }
                else if(variant == "sim")
                {
                    remaps = {"image:=front_stereo_camera/left/image_rect_color", "camera_info:=front_stereo_camera/left/camera_info"};
                }
                loaded.push_back(manager->load("isaac_ros_apriltag", "nvidia::isaac_ros::apriltag::AprilTagNode", "apriltag", name_space, parameters, remaps));
            }
            // Preserve the real multithreaded spin. A separate finite watchdog only
            // cancels waiting; the external process owner handles blocked native work.
            std::jthread watchdog(
                [executor, deadline](std::stop_token stop)
                {
                    while(!stop.stop_requested() && !executor->is_spinning())
                        std::this_thread::sleep_for(std::chrono::milliseconds(1));
                    std::mutex mutex;
                    std::condition_variable_any wake;
                    std::unique_lock lock{mutex};
                    wake.wait_until(lock, stop, deadline, [] { return false; });
                    if(!stop.stop_requested())
                        executor->cancel();
                });
            try
            {
                executor->spin();
            }
            catch(...)
            {
                watchdog.request_stop();
                throw;
            }
            watchdog.request_stop();
            if(!context->is_valid())
                primary = 125;
        }
        catch(std::bad_alloc const&)
        {
            primary = 12;
        }
        catch(std::exception const& error)
        {
            primary = 5;
            std::cerr << error.what() << '\n';
        }
        catch(...)
        {
            primary = 5;
        }
        try
        {
            if(executor && manager)
                executor->remove_node(manager);
        }
        catch(...)
        {
            cleanup = 5;
        }
        try
        {
            manager.reset();
        }
        catch(...)
        {
            cleanup = 5;
        }
        try
        {
            executor.reset();
        }
        catch(...)
        {
            cleanup = 5;
        }
        try
        {
            if(context && context->is_valid() && !context->shutdown("finite original component program retired"))
                cleanup = cleanup ? cleanup : 125;
        }
        catch(...)
        {
            cleanup = 5;
        }
        for(auto const& result: loaded)
            std::cout << "component id=" << result.unique_id << " full_node_name=" << result.full_node_name << " success=" << result.success
                      << " error=" << result.error_message << '\n';
        std::cout << "NVIDIA_COMPONENT_PROGRAM variant=" << variant << " primary=" << primary << " cleanup=" << cleanup
                  << " native_data_observation_credit=0 guest_credit=0\n";
        return primary ? primary : cleanup ? cleanup : std::cout ? 0 : 5;
    }
}  // namespace

/** @brief Enter the explicit finite native original-component application.
 * @details Delegates complete argument/admission/lifetime handling to application;
 * no SDK initialization precedes its default denial. This is a native C++20
 * command, not a Wasm target or a standalone substitute for genuine ROS/SDK DSOs.
 * @param[in] argc Complete native process argument count.
 * @param[in] argv Borrowed immutable native process argument vector.
 * @return Exact application primary/cleanup/stdio status without retry.
 * @see application
 */
int main(int argc, char** argv)
{
    return application(argc, argv);
}
