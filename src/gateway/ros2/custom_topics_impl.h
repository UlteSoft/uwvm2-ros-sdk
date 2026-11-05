/*************************************************************
 * UWVM2 ROS2 custom-topic shard implementation. APL-2.0.    *
 *************************************************************/
#pragma once
#include "compat/node.h"

#ifndef UWVM_ROS2_CUSTOM_TOPIC_SHARD_IMPLEMENTATION
#error "Custom topic template definitions belong only to generated shard translation units"
#endif

// Only generated shard translation units include this header. In particular,
// neither main.cc nor custom_topics_dispatch.cc sees these rclcpp bodies.
#include "custom_topics.h"
#include "native_serialization.h"
#include "native_rmw_publisher.h"
#include "native_rmw_subscription.h"
#if UWVM_ROS2_NATIVE_BUFFER_OBSERVATION
#include "serialized_observation.h"
#endif

namespace uwvm2::ros_gateway::ros2_custom_topics
{
    template<typename Native,typename Codec>
    ipc::call_result adapter::publish_bound(ros::capability_spec const& cap,
        std::vector<std::uint8_t> const& data)
    {
        auto const* descriptor{ipc::find_custom_topic(2,cap.type)};
        if(!descriptor||!ipc::validate_custom_topic(*descriptor,data.data(),data.size())) { return {22,{}}; }
        if(data.size()>limit(cap,"max-message-bytes")) { return {90,{}}; }
        Native native;
        if(!Codec::decode(data.data(),data.size(),native)||!Codec::valid(native)) { return {22,{}}; }
        bool wants_serialized{};
#if UWVM_ROS2_NATIVE_BUFFER_OBSERVATION
        auto request=native_observation::active_call;
        wants_serialized=request&&request->output&&!request->output->type_support_path(cap.type).empty();
        if(wants_serialized)
        {
            std::vector<std::uint8_t> roundtrip;
            if(!Codec::encode(native,roundtrip)||roundtrip!=data)return {22,{}};
        }
#endif
        // The observed route serializes into its private message before send.
        // Typed publishers need the same check before entering native history.
        if(!wants_serialized)
        {
            auto error=native_serialization_check(native);
            if(error) { return {error,{}}; }
        }
        auto found{publishers_.find(cap.alias)};
        if(found==publishers_.end())
        {
            auto configured{ros2_qos::configured(cap)};
#if UWVM_ROS2_NATIVE_BUFFER_OBSERVATION
            if(wants_serialized)
            {
                using entity_type=serialized_observation::publisher<Native>;
                if constexpr(!ros2_qos::supports_entity_qos<entity_type>::value)return {95,{}};
                auto source=capture_endpoint(*request,cap);
                if(!source)return {13,{}};
                auto library=std::make_shared<rcpputils::SharedLibrary>(request->output->type_support_path(cap.type));
                rclcpp::PublisherOptions options;options.use_intra_process_comm=rclcpp::IntraProcessSetting::Disable;
                auto entity=std::make_shared<entity_type>(node_->get_node_base_interface().get(),library,cap.resource,cap.type,configured,options,4096);
                node_->get_node_topics_interface()->add_publisher(entity,nullptr);
                bool admitted{};try{auto actual=entity->get_topic_name();admitted=actual&&std::string_view{actual}==cap.resource&&ros2_qos::entity(*entity,configured);}catch(std::exception const&){}
                if(!admitted){entity.reset();notify();return {95,{}};}
                found=publishers_.emplace(cap.alias,publisher_entry{cap,std::move(entity),true,request->output,source}).first;
                native_topic_observation::announce(request->output,source);
            }
            else
#endif
            {
            if constexpr(!ros2_qos::supports_entity_qos<rclcpp::Publisher<Native>>::value) { return {95,{}}; }
            auto entity{ros2_compat::create_publisher<Native>(node_,cap.resource,configured)};
            bool admitted{};
            try
            {
                auto actual_name{entity?entity->get_topic_name():nullptr};
                admitted=actual_name&&std::string_view{actual_name}==cap.resource&&ros2_qos::entity(*entity,configured);
            }
            catch(std::exception const&) {} // Unavailable native evidence refuses admission.
            if(!admitted)
            { entity.reset();notify();return {95,{}}; }
            found=publishers_.emplace(cap.alias,publisher_entry{cap,std::move(entity)}).first;
            }
        }
        // Protect the typed cast even when called directly by a native
        // fixture: a policy alias cannot be reused with another descriptor,
        // resource, codec, or explicit QoS/limit contract.
        auto const& previous{found->second.capability};
        if(previous.operation!=cap.operation||previous.resource!=cap.resource||previous.type!=cap.type||
           previous.type_identity!=cap.type_identity||previous.limits!=cap.limits) { return {13,{}}; }
        if(found->second.serialized!=wants_serialized)return {17,{}};
#if UWVM_ROS2_NATIVE_BUFFER_OBSERVATION
        if(wants_serialized)
        {
            auto const& entry=found->second;
            native_topic_observation::publication observation{entry.capture_writer,entry.capture_binding,data};
            std::static_pointer_cast<serialized_observation::publisher<Native>>(entry.entity)->publish_observed(native,observation);
        }
        else
#endif
        std::static_pointer_cast<rclcpp::Publisher<Native>>(found->second.entity)->publish(native);
        return {};
    }

    template<typename Native,typename Codec>
    ipc::call_result adapter::subscribe_bound(ros::capability_spec const& cap,std::shared_ptr<event_queue> queue)
    {
        auto const* descriptor{ipc::find_custom_topic(2,cap.type)};
        if(!descriptor) { return {95,{}}; }
        if((descriptor->bounded_layout?descriptor->minimum_wire_bytes:descriptor->wire_bytes)>limit(cap,"max-message-bytes")) { return {90,{}}; }
        if(!queue||queue->capability.alias!=cap.alias||queue->capability.operation!=cap.operation||
           queue->capability.resource!=cap.resource||queue->capability.type!=cap.type||
           queue->capability.type_identity!=cap.type_identity||queue->capability.limits!=cap.limits) { return {13,{}}; }
        if(subscribers_.count(cap.alias)) { return {17,{}}; }
        std::weak_ptr<event_queue> weak{queue};
        auto verified{std::make_shared<std::atomic<bool>>(false)};
#if UWVM_ROS2_NATIVE_BUFFER_OBSERVATION
        if(queue->capture_binding)
        {
            if(!queue->capture_writer||queue->observer)return {95,{}};
            using entity_type=serialized_observation::subscription;
            if constexpr(!ros2_qos::supports_entity_qos<entity_type>::value)return {95,{}};
            auto path=queue->capture_writer->type_support_path(cap.type);if(path.empty())return {95,{}};
            auto library=std::make_shared<rcpputils::SharedLibrary>(path);
            serialized_observation::require_paired_type_support<Native>(*library,cap.type);
            auto callback=[weak,verified,descriptor](serialized_observation::sample captured)
            {
                auto selected=weak.lock();if(!selected||!verified->load(std::memory_order_acquire))return;
                try
                {
                    auto message=native_topic_observation::deserialize<Native>(captured);
                    if(!Codec::valid(message)){selected->capture_writer->lost();return;}
                    std::size_t active_bytes{};
                    if constexpr(bounded_generated_codec<Codec>::value){if(!Codec::encoded_size(message,active_bytes)){selected->capture_writer->lost();return;}}
                    else active_bytes=Codec::wire_bytes;
                    if(active_bytes>limit(selected->capability,"max-message-bytes")){selected->capture_writer->lost();return;}
                    std::vector<std::uint8_t> data;
                    if(!Codec::encode(message,data)||!ipc::validate_custom_topic(*descriptor,data.data(),data.size())){selected->capture_writer->lost();return;}
                    if(!verified->load(std::memory_order_acquire))return;
                    native_topic_observation::delivery(selected,captured,std::move(data));
                }
                catch(std::exception const&){selected->capture_writer->lost();}
            };
            auto configured=ros2_qos::configured(cap);rclcpp::SubscriptionOptions options;
            options.use_intra_process_comm=rclcpp::IntraProcessSetting::Disable;
            auto entity=std::make_shared<entity_type>(node_->get_node_base_interface().get(),library,cap.resource,cap.type,configured,options,4096,std::move(callback));
            node_->get_node_topics_interface()->add_subscription(entity,nullptr);
            bool admitted{};try{auto actual=entity->get_topic_name();admitted=actual&&std::string_view{actual}==cap.resource&&ros2_qos::entity(*entity,configured);}catch(std::exception const&){}
            if(!admitted){entity.reset();notify();return {95,{}};}
            subscribers_.emplace(cap.alias,subscriber_entry{verified,queue,std::move(entity),queue->capture_writer,queue->capture_binding});
            native_topic_observation::announce(queue->capture_writer,queue->capture_binding);
            verified->store(true,std::memory_order_release);return {};
        }
#endif
        auto callback{[weak,verified,descriptor](std::shared_ptr<Native const> message)
        {
            if(!verified->load(std::memory_order_acquire)||!message||!Codec::valid(*message)) { return; }
            auto selected{weak.lock()};if(!selected) { return; }
            { std::lock_guard<std::mutex> guard{selected->mutex};if(!selected->active) { return; } }
            // Validate and measure the native active prefix before any
            // canonical copy/allocation. Dynamic fields are finite only
            // under a complete bounded-v2 provider, never native projection.
            std::size_t active_bytes{};
            if constexpr(bounded_generated_codec<Codec>::value)
            {if(!Codec::encoded_size(*message,active_bytes)) {return;}}
            else {active_bytes=Codec::wire_bytes;}
            if(active_bytes>limit(selected->capability,"max-message-bytes")) {return;}
            std::vector<std::uint8_t> data;
            if(!Codec::encode(*message,data)||
               !ipc::validate_custom_topic(*descriptor,data.data(),data.size())||
               !verified->load(std::memory_order_acquire)) { return; }
            selected->enqueue(std::move(data));
        }};
        auto configured{ros2_qos::configured(cap)};
        if constexpr(!ros2_qos::supports_entity_qos<rclcpp::Subscription<Native>>::value) { return {95,{}}; }
        auto entity{ros2_compat::create_subscription<Native>(node_,cap.resource,configured,std::move(callback))};
        bool admitted{};
        try
        {
            auto actual_name{entity?entity->get_topic_name():nullptr};
            admitted=actual_name&&std::string_view{actual_name}==cap.resource&&ros2_qos::entity(*entity,configured);
        }
        catch(std::exception const&) {} // The callback gate remains closed.
        if(!admitted)
        { entity.reset();notify();return {95,{}}; }
        subscribers_.emplace(cap.alias,subscriber_entry{verified,queue,std::move(entity)});
        verified->store(true,std::memory_order_release);
        return {};
    }

    namespace detail
    {
        template<std::size_t Shard,std::size_t Shards>
        template<std::size_t Index>
        std::uint32_t topic_shard<Shard,Shards>::create_owned_rmw_publisher_at(
            ::uwvm2::ros_gateway::ros2_compat::node_type::SharedPtr const& node,std::size_t type_index,ros::capability_spec const& cap,
            ipc::rmw_endpoint::binding const& owner,std::uint64_t incarnation,
            std::shared_ptr<native_rmw_publisher::endpoint>& output,ipc::rmw_endpoint::packet& observed) noexcept
        {
            if constexpr(Index<topic_count)
            {
                if(type_index==Index)
                {
                    using row=std::tuple_element_t<Index,topic_rows>;
                    using Native=typename row::native_type;
                    using Codec=typename row::codec_type;
                    auto const& declared{owned_publisher_rows[Index]};
                    try
                    {
                        // Preserve the actual provider ROW literals as well as
                        // the original common descriptor/native schema check.
                        // The default typed factory then rechecks its policy
                        // and retains its own preallocated native endpoint.
                        if(!binding<Native,Codec>::known(cap,declared.name,declared.native_identity,
                            declared.codec_identity,declared.wire_bytes)){return 13;}
                        return native_rmw_publisher::typed_endpoint<Native,Codec>::create(
                            node,cap,owner,incarnation,output,observed);
                    }
                    catch(std::bad_alloc const&){return 12;}
                    catch(...){return 5;}
                }
                return create_owned_rmw_publisher_at<Index+Shards>(node,type_index,cap,owner,incarnation,output,observed);
            }
            else{return 95;}
        }

        template<std::size_t Shard,std::size_t Shards>
        std::uint32_t topic_shard<Shard,Shards>::create_owned_rmw_publisher(
            ::uwvm2::ros_gateway::ros2_compat::node_type::SharedPtr const& node,std::size_t type_index,ros::capability_spec const& cap,
            ipc::rmw_endpoint::binding const& owner,std::uint64_t incarnation,
            std::shared_ptr<native_rmw_publisher::endpoint>& output,ipc::rmw_endpoint::packet& observed) noexcept
        {
            static_assert(Shards==topic_shards&&Shard<Shards,"owned custom publisher shard configuration differs");
            return create_owned_rmw_publisher_at<Shard>(node,type_index,cap,owner,incarnation,output,observed);
        }

        template<std::size_t Shard,std::size_t Shards>
        template<std::size_t Index>
        std::uint32_t topic_shard<Shard,Shards>::create_owned_rmw_subscription_at(
            ::uwvm2::ros_gateway::ros2_compat::node_type::SharedPtr const& node,std::size_t type_index,ros::capability_spec const& cap,
            ipc::rmw_endpoint::binding const& owner,std::uint64_t incarnation,
            std::shared_ptr<native_rmw_subscription::endpoint>& output,ipc::rmw_endpoint::packet& observed) noexcept
        {
            if constexpr(Index<topic_count)
            {
                if(type_index==Index)
                {
                    using row=std::tuple_element_t<Index,topic_rows>;
                    using Native=typename row::native_type;
                    using Codec=typename row::codec_type;
                    auto const& declared{owned_publisher_rows[Index]};
                    try
                    {
                        // Preserve the actual provider ROW literals as well as
                        // the original common descriptor/native schema check.
                        // The default typed factory then rechecks its policy
                        // and retains its own preallocated native receive queue and endpoint.
                        if(!binding<Native,Codec>::known(cap,declared.name,declared.native_identity,
                            declared.codec_identity,declared.wire_bytes)){return 13;}
                        return native_rmw_subscription::typed_endpoint<Native,Codec>::create(
                            node,cap,owner,incarnation,output,observed);
                    }
                    catch(std::bad_alloc const&){return 12;}
                    catch(...){return 5;}
                }
                return create_owned_rmw_subscription_at<Index+Shards>(node,type_index,cap,owner,incarnation,output,observed);
            }
            else{return 95;}
        }

        template<std::size_t Shard,std::size_t Shards>
        std::uint32_t topic_shard<Shard,Shards>::create_owned_rmw_subscription(
            ::uwvm2::ros_gateway::ros2_compat::node_type::SharedPtr const& node,std::size_t type_index,ros::capability_spec const& cap,
            ipc::rmw_endpoint::binding const& owner,std::uint64_t incarnation,
            std::shared_ptr<native_rmw_subscription::endpoint>& output,ipc::rmw_endpoint::packet& observed) noexcept
        {
            static_assert(Shards==topic_shards&&Shard<Shards,"owned custom subscription shard configuration differs");
            return create_owned_rmw_subscription_at<Shard>(node,type_index,cap,owner,incarnation,output,observed);
        }

        template<std::size_t Shard,std::size_t Shards>
        template<std::size_t Index>
        ipc::call_result topic_shard<Shard,Shards>::publish_owned(adapter& selected,
            std::size_t type_index,ros::capability_spec const& cap,std::vector<std::uint8_t> const& data)
        {
            if constexpr(Index<topic_count)
            {
                if(type_index==Index)
                {
                    using row=std::tuple_element_t<Index,topic_rows>;
                    return selected.publish_bound<typename row::native_type,typename row::codec_type>(cap,data);
                }
                return publish_owned<Index+Shards>(selected,type_index,cap,data);
            }
            else { return {95,{}}; }
        }

        template<std::size_t Shard,std::size_t Shards>
        template<std::size_t Index>
        ipc::call_result topic_shard<Shard,Shards>::subscribe_owned(adapter& selected,
            std::size_t type_index,ros::capability_spec const& cap,std::shared_ptr<event_queue> queue)
        {
            if constexpr(Index<topic_count)
            {
                if(type_index==Index)
                {
                    using row=std::tuple_element_t<Index,topic_rows>;
                    return selected.subscribe_bound<typename row::native_type,typename row::codec_type>(cap,std::move(queue));
                }
                return subscribe_owned<Index+Shards>(selected,type_index,cap,std::move(queue));
            }
            else { return {95,{}}; }
        }

        template<std::size_t Shard,std::size_t Shards>
        ipc::call_result topic_shard<Shard,Shards>::publish(adapter& selected,
            std::size_t type_index,ros::capability_spec const& cap,std::vector<std::uint8_t> const& data)
        {
            static_assert(Shards==topic_shards&&Shard<Shards,"custom topic shard configuration differs");
            return publish_owned<Shard>(selected,type_index,cap,data);
        }

        template<std::size_t Shard,std::size_t Shards>
        ipc::call_result topic_shard<Shard,Shards>::subscribe(adapter& selected,
            std::size_t type_index,ros::capability_spec const& cap,std::shared_ptr<event_queue> queue)
        {
            static_assert(Shards==topic_shards&&Shard<Shards,"custom topic shard configuration differs");
            return subscribe_owned<Shard>(selected,type_index,cap,std::move(queue));
        }
    }
}
