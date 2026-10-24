/**
 * @file service_client_pool.h
 * @brief Retain validated native service clients for one gateway session.
 * @details Client reuse preserves the complete capability contract and exact
 * native endpoint. Alias retirement releases only retained ownership; callers
 * already holding a client finish under their existing deadlines.
 */
#pragma once

#include <uwvm2/imported/ros/common/types.h>
#include <functional>
#include <map>
#include <memory>
#include <mutex>
#include <string>
#include <utility>
#include <vector>

namespace uwvm2::ros_gateway
{
    /**
     * @brief Retain typed service clients within one authenticated gateway session.
     * @details Callers perform authorization and request validation before acquisition.
     * A retained client is bound to the complete capability, native endpoint and C++
     * type. Closing an alias removes its retained ownership; previously admitted
     * requests may finish through their own shared ownership. No request is retried.
     * The mutex protects acquisition against asynchronous calls and alias retirement.
     */
    class service_client_pool
    {
        template <class Client>
        inline static unsigned char type_identity_{};

        struct entry
        {
            ::uwvm2::imported::ros::capability_spec capability;
            std::string endpoint;
            void const* type;
            std::shared_ptr<void> client;
        };

        std::mutex mutex_;
        std::map<std::string, std::vector<entry>> clients_;
        std::function<void()> notify_;

        static bool same_capability(::uwvm2::imported::ros::capability_spec const& left, ::uwvm2::imported::ros::capability_spec const& right)
        {
            return left.alias == right.alias && left.operation == right.operation && left.resource == right.resource && left.type == right.type &&
                   left.type_identity == right.type_identity && left.limits == right.limits;
        }

        void notify() noexcept
        {
            try
            {
                if(notify_) { notify_(); }
            }
            catch(...)
            {
            }  // Context shutdown can retire the executor first.
        }

    public:
        explicit service_client_pool(std::function<void()> notify = {}) : notify_{std::move(notify)} {}

        service_client_pool(service_client_pool const&) = delete;
        service_client_pool& operator= (service_client_pool const&) = delete;

        ~service_client_pool()
        {
            if(!clients_.empty())
            {
                clients_.clear();
                notify();
            }
        }

        /**
         * @brief Acquire an existing client or publish one successfully validated client.
         * @param capability The already authorized, immutable session contract.
         * @param endpoint The exact native service selected by the adapter.
         * @param create Factory returning a client only after actual QoS validation.
         * @return A typed owner, or an empty owner when the factory or contract refuses.
         */
        template <class Client, class Factory>
        std::shared_ptr<Client> acquire(::uwvm2::imported::ros::capability_spec const& capability, std::string const& endpoint, Factory&& create)
        {
            std::lock_guard<std::mutex> guard{mutex_};
            auto found{clients_.find(capability.alias)};
            if(found != clients_.end())
            {
                for(auto const& item: found->second)
                {
                    if(!same_capability(item.capability, capability)) { return {}; }
                    if(item.endpoint == endpoint && item.type == &type_identity_<Client>) { return std::static_pointer_cast<Client>(item.client); }
                }
                // Parameter/lifecycle adapters use a fixed, small set of endpoints.
                // A caller cannot turn one alias into an unbounded client registry.
                if(found->second.size() >= 8u) { return {}; }
            }
            auto client{std::forward<Factory>(create)()};
            if(!client) { return {}; }
            clients_[capability.alias].push_back(entry{capability, endpoint, &type_identity_<Client>, client});
            return client;
        }

        /** @brief Drop all retained clients for a closed or revoked capability alias. */
        void close(std::string const& alias)
        {
            bool removed{};
            {
                std::lock_guard<std::mutex> guard{mutex_};
                removed = clients_.erase(alias) != 0u;
            }
            if(removed) { notify(); }
        }

        /**
         * @brief Retire only a failed request's client, preserving a newer replacement.
         * @details Native APIs without pending-request removal must not retain timed-out
         * futures. Outstanding users keep their own owners until their deadlines.
         */
        template <class Client>
        void discard(std::string const& alias, std::shared_ptr<Client> const& client)
        {
            bool removed{};
            {
                std::lock_guard<std::mutex> guard{mutex_};
                auto found{clients_.find(alias)};
                if(found == clients_.end()) { return; }
                auto& entries{found->second};
                for(auto position{entries.begin()}; position != entries.end();)
                {
                    if(position->client == client)
                    {
                        position = entries.erase(position);
                        removed = true;
                    }
                    else
                    {
                        ++position;
                    }
                }
                if(entries.empty()) { clients_.erase(found); }
            }
            if(removed) { notify(); }
        }
    };
}  // namespace uwvm2::ros_gateway
