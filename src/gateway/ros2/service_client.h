/**
 * @file service_client.h
 * @brief Acquire QoS-validated ROS2 clients and clean up their pending requests.
 * @details This adapter shares the session ownership pool across ordinary,
 * parameter and lifecycle services without changing request authorization.
 */
#pragma once

#include "../common/service_client_pool.h"
#include "compat/node.h"
#include "qos.h"
#include <future>
#include <type_traits>

namespace uwvm2::ros_gateway::ros2_service_client
{
    /** @brief Acquire a session client only after checking both actual native QoS endpoints. */
    template <class Service, class Node>
    std::shared_ptr<rclcpp::Client<Service>>
        acquire(service_client_pool& clients, Node const& node, ros::capability_spec const& capability, std::string const& endpoint)
    {
        using client_type = rclcpp::Client<Service>;
        if constexpr(!ros2_qos::supports_client_qos<client_type>::value) { return {}; }
        else
        {
            return clients.acquire<client_type>(capability,
                                                endpoint,
                                                [&]() -> std::shared_ptr<client_type>
                                                {
                                                    auto configured{ros2_qos::configured(capability)};
                                                    auto client{ros2_compat::create_client<Service>(node, endpoint, configured)};
                                                    if(!client || !ros2_qos::client(*client, configured)) { return {}; }
                                                    return client;
                                                });
        }
    }

    template <class Client, class Pending, class = void>
    struct can_remove_pending : std::false_type
    {
    };

    template <class Client, class Pending>
    struct can_remove_pending<Client, Pending, std::void_t<decltype(std::declval<Client&>().remove_pending_request(std::declval<Pending const&>()))>> :
        std::true_type
    {
    };

    /**
     * @brief Remove a request from a retained client's pending map on every exit.
     * @details Removal never cancels or resends an operation admitted by the peer.
     * Older native APIs may retain successful clients; incomplete requests retire
     * their client when individual pending-request removal is unavailable.
     */
    template <class Client, class Pending>
    class pending_request
    {
        service_client_pool& clients_;
        std::string const& alias_;
        std::shared_ptr<Client> const& client_;
        Pending const& pending_;
        bool complete_{};

    public:
        pending_request(service_client_pool& clients, std::string const& alias, std::shared_ptr<Client> const& client, Pending const& pending) :
            clients_{clients}, alias_{alias}, client_{client}, pending_{pending}
        {
        }

        pending_request(pending_request const&) = delete;
        pending_request& operator= (pending_request const&) = delete;

        /** @brief Record a response consumed by the native client. */
        void complete() noexcept { complete_ = true; }

        ~pending_request() noexcept
        {
            try
            {
                if constexpr(can_remove_pending<Client, Pending>::value) { (void)client_->remove_pending_request(pending_); }
                else if(!complete_) { clients_.discard(alias_, client_); }
            }
            catch(...)
            {
                // A failed cleanup must not leave this client available for reuse.
                clients_.discard(alias_, client_);
            }
        }
    };
}  // namespace uwvm2::ros_gateway::ros2_service_client
