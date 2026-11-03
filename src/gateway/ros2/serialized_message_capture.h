// Candidate SDK native observation primitive. APL-2.0.
// Captures RMW serialized buffers, not RTPS packets. No Guest authority lives here.
#pragma once
#include <rclcpp/generic_publisher.hpp>
#include <rclcpp/generic_subscription.hpp>
#include <rclcpp/message_info.hpp>
#include <rclcpp/serialization.hpp>
#include <rclcpp/serialized_message.hpp>
#include <rosidl_typesupport_cpp/message_type_support.hpp>
#include <array>
#include <atomic>
#include <cstdint>
#include <functional>
#include <limits>
#include <memory>
#include <stdexcept>
#include <string>
#include <utility>
#include <vector>

namespace uwvm2::ros_gateway::serialized_observation
{
    inline constexpr std::size_t maximum_capture_bytes{4u*1024u*1024u};

    inline void bound(std::size_t n)
    {
        if(!n||n>maximum_capture_bytes)throw std::invalid_argument("serialized capture bound");
    }

    inline std::vector<std::uint8_t> copy(rclcpp::SerializedMessage const& message,std::size_t maximum)
    {
        bound(maximum);
        auto const& raw=message.get_rcl_serialized_message();
        if(raw.buffer_length>raw.buffer_capacity||raw.buffer_length>maximum||
            (raw.buffer_length&&!raw.buffer))throw std::length_error("serialized buffer extent");
        if(!raw.buffer_length)return {};
        return {raw.buffer,raw.buffer+raw.buffer_length};
    }

    struct sample
    {
        std::uint64_t callback_ordinal{},publication_sequence{},reception_sequence{};
        bool publication_sequence_supported{},reception_sequence_supported{};
        std::uint64_t source_timestamp{},received_timestamp{};
        std::array<std::uint8_t,RMW_GID_STORAGE_SIZE> publisher_gid{};
        std::string rmw_identifier;
        std::vector<std::uint8_t> serialized;
    };

    // The parent backend must first validate its sealed type-support library,
    // exact capability/schema/QoS and endpoint ownership. This constructor does
    // not replace those checks or discover libraries from AMENT_PREFIX_PATH.
    class subscription final:public rclcpp::GenericSubscription
    {
        std::size_t maximum_;
        std::function<void(sample)> receiver_;
        std::atomic<std::uint64_t> next_{1};
    public:
        subscription(rclcpp::node_interfaces::NodeBaseInterface* node,
            std::shared_ptr<rcpputils::SharedLibrary> const& library,
            std::string const& topic,std::string const& type,rclcpp::QoS const& qos,
            rclcpp::SubscriptionOptions const& options,std::size_t maximum,
            std::function<void(sample)> receiver)
            :rclcpp::GenericSubscription(node,library,topic,type,qos,
                [](std::shared_ptr<rclcpp::SerializedMessage>){
                    throw std::logic_error("metadata-less serialized callback refused");
                },options),maximum_(maximum),receiver_(std::move(receiver))
        {
            bound(maximum_);
            if(!receiver_)throw std::invalid_argument("serialized capture receiver");
        }

        void handle_serialized_message(std::shared_ptr<rclcpp::SerializedMessage> const& message,
            rclcpp::MessageInfo const& information) override
        {
            if(!message)throw std::invalid_argument("null serialized message");
            auto const& info=information.get_rmw_message_info();
            if(info.from_intra_process)throw std::invalid_argument("intra-process capture refused");
            sample captured;
            captured.serialized=copy(*message,maximum_);
            // Never wrap or reuse a callback identity, including on rejection.
            auto ordinal=next_.load(std::memory_order_relaxed);
            for(;;)
            {
                if(ordinal==std::numeric_limits<std::uint64_t>::max())
                    throw std::overflow_error("serialized callback identity exhausted");
                if(next_.compare_exchange_weak(ordinal,ordinal+1,std::memory_order_relaxed))break;
            }
            captured.callback_ordinal=ordinal;
            captured.publication_sequence=info.publication_sequence_number;
            captured.reception_sequence=info.reception_sequence_number;
            captured.publication_sequence_supported=info.publication_sequence_number!=RMW_MESSAGE_INFO_SEQUENCE_NUMBER_UNSUPPORTED;
            captured.reception_sequence_supported=info.reception_sequence_number!=RMW_MESSAGE_INFO_SEQUENCE_NUMBER_UNSUPPORTED;
            captured.source_timestamp=info.source_timestamp;
            captured.received_timestamp=info.received_timestamp;
            for(std::size_t i{};i<captured.publisher_gid.size();++i)captured.publisher_gid[i]=info.publisher_gid.data[i];
            auto identifier=info.publisher_gid.implementation_identifier;
            if(!identifier)throw std::invalid_argument("missing native RMW identifier");
            std::size_t length{};
            while(length<255&&identifier[length])++length;
            if(length==255||!length)throw std::length_error("native RMW identifier extent");
            captured.rmw_identifier.assign(identifier,length);
            // All byte/metadata ownership transfers together. The actual gateway
            // queue must preserve this association through drop, poll and close.
            receiver_(std::move(captured));
        }
    };

    template<class Native>
    inline void require_paired_type_support(rcpputils::SharedLibrary& library,std::string const& type)
    {
        auto dynamic=rclcpp::get_typesupport_handle(type,"rosidl_typesupport_cpp",library);
        auto compiled=rosidl_typesupport_cpp::get_message_type_support_handle<Native>();
        if(!dynamic||dynamic!=compiled)throw std::invalid_argument("unpaired serialized native type support");
    }

    template<class Native>
    class publisher final:public rclcpp::GenericPublisher
    {
        std::size_t maximum_;
        static std::shared_ptr<rcpputils::SharedLibrary> paired(
            std::shared_ptr<rcpputils::SharedLibrary> const& library,std::string const& type)
        {
            if(!library)throw std::invalid_argument("missing sealed type support library");
            require_paired_type_support<Native>(*library,type);
            return library;
        }
    public:
        publisher(rclcpp::node_interfaces::NodeBaseInterface* node,
            std::shared_ptr<rcpputils::SharedLibrary> const& library,
            std::string const& topic,std::string const& type,rclcpp::QoS const& qos,
            rclcpp::PublisherOptions const& options,std::size_t maximum)
            :rclcpp::GenericPublisher(node,paired(library,type),topic,type,qos,options),maximum_(maximum)
        {bound(maximum_);}

        template<class Observation>
        std::vector<std::uint8_t> publish_observed(Native const& native,Observation& observation)
        {
            rclcpp::Serialization<Native> serializer;
            rclcpp::SerializedMessage serialized;
            serializer.serialize_message(&native,&serialized);
            auto captured=copy(serialized,maximum_);
            observation.attempt(captured);
            observation.invoking();
            try{rclcpp::GenericPublisher::publish(serialized);}
            catch(...){observation.uncertain(captured);throw;}
            observation.accepted(captured);
            return captured;
        }

    };
}
