#pragma once
#include <rclcpp/rclcpp.hpp>
#include <type_traits>

// Native SDK witnesses retain their explicitly selected original Node type.
// Every production Gateway TU and attached adapter library selects the composed
// type together. The alias is never a feature/probe success or an authority.
#if defined(UWVM_ROS2_USE_COMPOSED_NODE) && UWVM_ROS2_USE_COMPOSED_NODE
# include <rclcpp/node_interfaces/node_base.hpp>
# include <rclcpp/node_interfaces/node_clock.hpp>
# include <rclcpp/node_interfaces/node_graph.hpp>
# include <rclcpp/node_interfaces/node_logging.hpp>
# include <rclcpp/node_interfaces/node_parameters.hpp>
# include <rclcpp/node_interfaces/node_services.hpp>
# include <rclcpp/node_interfaces/node_timers.hpp>
# include <rclcpp/node_interfaces/node_topics.hpp>
# include <rclcpp/node_interfaces/node_waitables.hpp>

namespace uwvm2::ros_gateway::ros2_compat
{
    /** Compose original public SDK interfaces without constructing NodeTimeSource.
     * Standard Humble Node unconditionally subscribes to /parameter_events from
     * its TimeSource, even when both parameter services and publication are off.
     * Omitting that interface prevents the entity from ever being constructed;
     * it also prevents a foreign parameter event from enabling a /clock reader.
     *
     * ROS time retains the native clock's system-time fallback. No implicit
     * simulation-clock input is admitted. All actual ROS business entities are
     * still created by the existing per-operation, quota-checked adapters.
     */
    class composed_node
    {
        static rclcpp::NodeOptions checked(rclcpp::NodeOptions const& options)
        {
            if(options.enable_rosout() || options.start_parameter_services() || options.start_parameter_event_publisher() || options.enable_topic_statistics())
            {
                throw std::invalid_argument("Gateway Node requires explicitly disabled implicit ROS endpoints");
            }
            return options;
        }

        static rclcpp::NodeOptions quiet_options()
        {
            rclcpp::NodeOptions options;
            options.enable_rosout(false).start_parameter_services(false).start_parameter_event_publisher(false);
            return options;
        }

        /**
         * @brief Construct the installed ROS logging interface without logger services.
         * @tparam Logging Actual native SDK implementation selected at compilation.
         * @param base Shared base interface retained by the composed node.
         * @return The original SDK logging interface with its required ownership.
         * @details Jazzy accepts shared ownership; older SDKs accept a borrowed
         * pointer. Both routes omit create_logger_services and preserve the
         * explicit prohibition on implicit ROS endpoints.
         */
        template <class Logging = rclcpp::node_interfaces::NodeLogging>
        static auto make_logging(rclcpp::node_interfaces::NodeBaseInterface::SharedPtr const& base)
        {
            if constexpr(std::is_constructible_v<Logging, rclcpp::node_interfaces::NodeBaseInterface::SharedPtr>) { return std::make_shared<Logging>(base); }
            else
            {
                return std::make_shared<Logging>(base.get());
            }
        }

        /**
         * @brief Select the installed NodeClock constructor with explicit ROS time.
         * @tparam Clock Actual native SDK clock implementation.
         * @param base Native base interface shared by the composed node.
         * @param topics Native topic interface; no endpoint is created here.
         * @param graph Native graph interface.
         * @param services Native service interface.
         * @param logging Native logging interface.
         * @return Original native clock interface, with no NodeTimeSource owner.
         * @details New SDKs require the sixth clock_type argument. The older
         * five-argument constructor retains its original ROS-time default.
         */
        template <class Clock = rclcpp::node_interfaces::NodeClock>
        static auto make_clock(rclcpp::node_interfaces::NodeBaseInterface::SharedPtr const& base,
                               rclcpp::node_interfaces::NodeTopicsInterface::SharedPtr const& topics,
                               rclcpp::node_interfaces::NodeGraphInterface::SharedPtr const& graph,
                               rclcpp::node_interfaces::NodeServicesInterface::SharedPtr const& services,
                               rclcpp::node_interfaces::NodeLoggingInterface::SharedPtr const& logging)
        {
            if constexpr(
                std::is_constructible_v<Clock, decltype(base), decltype(topics), decltype(graph), decltype(services), decltype(logging), rcl_clock_type_t>)
            {
                return std::make_shared<Clock>(base, topics, graph, services, logging, RCL_ROS_TIME);
            }
            else
            {
                return std::make_shared<Clock>(base, topics, graph, services, logging);
            }
        }

        rclcpp::NodeOptions options_;
        rclcpp::node_interfaces::NodeBaseInterface::SharedPtr base_;
        rclcpp::node_interfaces::NodeGraphInterface::SharedPtr graph_;
        rclcpp::node_interfaces::NodeLoggingInterface::SharedPtr logging_;
        rclcpp::node_interfaces::NodeTimersInterface::SharedPtr timers_;
        rclcpp::node_interfaces::NodeTopicsInterface::SharedPtr topics_;
        rclcpp::node_interfaces::NodeServicesInterface::SharedPtr services_;
        rclcpp::node_interfaces::NodeClockInterface::SharedPtr clock_;
        rclcpp::node_interfaces::NodeParametersInterface::SharedPtr parameters_;
        rclcpp::node_interfaces::NodeWaitablesInterface::SharedPtr waitables_;

    public:
        using SharedPtr = std::shared_ptr<composed_node>;

        explicit composed_node(std::string const& name) : composed_node(name, "/", quiet_options()) {}

        composed_node(std::string const& name, std::string const& space, rclcpp::NodeOptions const& options) :
            options_{checked(options)}, base_{std::make_shared<rclcpp::node_interfaces::NodeBase>(name,
                                                                                                  space,
                                                                                                  options_.context(),
                                                                                                  *options_.get_rcl_node_options(),
                                                                                                  options_.use_intra_process_comms(),
                                                                                                  options_.enable_topic_statistics())},
            graph_{std::make_shared<rclcpp::node_interfaces::NodeGraph>(base_.get())}, logging_{make_logging(base_)},
            timers_{std::make_shared<rclcpp::node_interfaces::NodeTimers>(base_.get())},
            topics_{std::make_shared<rclcpp::node_interfaces::NodeTopics>(base_.get(), timers_.get())},
            services_{std::make_shared<rclcpp::node_interfaces::NodeServices>(base_.get())}, clock_{make_clock(base_, topics_, graph_, services_, logging_)},
            parameters_{std::make_shared<rclcpp::node_interfaces::NodeParameters>(base_,
                                                                                  logging_,
                                                                                  topics_,
                                                                                  services_,
                                                                                  clock_,
                                                                                  options_.parameter_overrides(),
                                                                                  false,
                                                                                  false,
                                                                                  options_.parameter_event_qos(),
                                                                                  options_.parameter_event_publisher_options(),
                                                                                  options_.allow_undeclared_parameters(),
                                                                                  options_.automatically_declare_parameters_from_overrides())},
            waitables_{std::make_shared<rclcpp::node_interfaces::NodeWaitables>(base_.get())}
        {
        }

        composed_node(composed_node const&) = delete;
        composed_node& operator= (composed_node const&) = delete;

        auto get_node_base_interface() { return base_; }

        auto get_node_graph_interface() { return graph_; }

        auto get_node_logging_interface() { return logging_; }

        auto get_node_timers_interface() { return timers_; }

        auto get_node_topics_interface() { return topics_; }

        auto get_node_services_interface() { return services_; }

        auto get_node_clock_interface() { return clock_; }

        auto get_node_parameters_interface() { return parameters_; }

        auto get_node_waitables_interface() { return waitables_; }

        auto const& get_node_options() const { return options_; }

        auto get_name() const { return base_->get_name(); }

        auto get_namespace() const { return base_->get_namespace(); }

        auto get_fully_qualified_name() const { return base_->get_fully_qualified_name(); }

        auto get_logger() const { return logging_->get_logger(); }

        auto get_clock() const { return clock_->get_clock(); }

        auto now() const { return clock_->get_clock()->now(); }

        auto get_node_names() const { return graph_->get_node_names(); }

        auto get_topic_names_and_types() const { return graph_->get_topic_names_and_types(); }

        auto get_service_names_and_types() const { return graph_->get_service_names_and_types(); }

        auto get_graph_event() { return graph_->get_graph_event(); }

        void wait_for_graph_change(rclcpp::Event::SharedPtr event, std::chrono::nanoseconds timeout) { graph_->wait_for_graph_change(event, timeout); }

        auto create_callback_group(rclcpp::CallbackGroupType type, bool automatic = true) { return base_->create_callback_group(type, automatic); }

        template <class M>
        auto create_publisher(std::string const& name, rclcpp::QoS const& qos, rclcpp::PublisherOptions const& options = rclcpp::PublisherOptions{})
        { return rclcpp::create_publisher<M>(*this, name, qos, options); }

        template <class M, class Callback>
        auto create_subscription(std::string const& name,
                                 rclcpp::QoS const& qos,
                                 Callback&& callback,
                                 rclcpp::SubscriptionOptions const& options = rclcpp::SubscriptionOptions{})
        { return rclcpp::create_subscription<M>(*this, name, qos, std::forward<Callback>(callback), options); }

        template <class S, class Qos>
        auto create_client(std::string const& name, Qos const& qos, rclcpp::CallbackGroup::SharedPtr group = {})
            -> decltype(rclcpp::create_client<S>(base_, graph_, services_, name, qos, group))
        { return rclcpp::create_client<S>(base_, graph_, services_, name, qos, group); }

        template <class S, class Callback, class Qos>
        auto create_service(std::string const& name, Callback&& callback, Qos const& qos, rclcpp::CallbackGroup::SharedPtr group = {})
            -> decltype(rclcpp::create_service<S>(base_, services_, name, std::forward<Callback>(callback), qos, group))
        { return rclcpp::create_service<S>(base_, services_, name, std::forward<Callback>(callback), qos, group); }

        template <class Rep, class Period, class Callback>
        auto create_wall_timer(std::chrono::duration<Rep, Period> period, Callback callback, rclcpp::CallbackGroup::SharedPtr group = {})
        { return rclcpp::create_wall_timer(period, std::move(callback), group, base_.get(), timers_.get()); }

        auto has_parameter(std::string const& name) const { return parameters_->has_parameter(name); }

        auto get_parameter(std::string const& name) const { return parameters_->get_parameter(name); }

        /**
         * @brief Declare a parameter through the underlying ROS node interface.
         * @param name Fully qualified parameter name accepted by the node.
         * @param value Initial parameter value.
         * @param descriptor Native constraints and descriptive metadata.
         * @return The value retained by the native parameter interface.
         * @details The default explicitly constructs the generated ROS message;
         * its constructor is explicit in supported native ROS installations.
         */
        auto declare_parameter(
            std::string const& name,
            rclcpp::ParameterValue const& value,
            rcl_interfaces::msg::ParameterDescriptor const& descriptor = rcl_interfaces::msg::ParameterDescriptor{})
        {
            return parameters_->declare_parameter(name, value, descriptor);
        }

        auto set_parameter(rclcpp::Parameter const& parameter) { return parameters_->set_parameters_atomically({parameter}); }

        void undeclare_parameter(std::string const& name) { parameters_->undeclare_parameter(name); }

        auto list_parameters(std::vector<std::string> const& prefixes, std::uint64_t depth) const { return parameters_->list_parameters(prefixes, depth); }

        auto describe_parameter(std::string const& name) const { return parameters_->describe_parameters({name}).at(0); }

        template <class Callback, class Parameters = rclcpp::node_interfaces::NodeParametersInterface>
        auto add_post_set_parameters_callback(Callback&& callback)
            -> decltype(std::declval<Parameters&>().add_post_set_parameters_callback(std::forward<Callback>(callback)))
        { return static_cast<Parameters&>(*parameters_).add_post_set_parameters_callback(std::forward<Callback>(callback)); }

        template <class Handle, class Parameters = rclcpp::node_interfaces::NodeParametersInterface>
        auto remove_post_set_parameters_callback(Handle const* handle) -> decltype(std::declval<Parameters&>().remove_post_set_parameters_callback(handle))
        { return static_cast<Parameters&>(*parameters_).remove_post_set_parameters_callback(handle); }
    };

    using node_type = composed_node;
}  // namespace uwvm2::ros_gateway::ros2_compat
#else
namespace uwvm2::ros_gateway::ros2_compat
{
    using node_type = ::rclcpp::Node;
}
#endif
