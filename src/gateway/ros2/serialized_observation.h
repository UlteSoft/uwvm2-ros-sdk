// Actual ROS2 serialized message to SDK native journal association. APL-2.0.
#pragma once
#include "serialized_message_capture.h"
#include "../common/native_observation.h"
#include "../common/server.h"
#include <rmw/rmw.h>
#include <cstring>

namespace uwvm2::ros_gateway::native_topic_observation
{
    namespace capture=serialized_observation;
    namespace observation=native_observation;

    inline void announce(std::shared_ptr<observation::writer> const& writer,
        std::shared_ptr<observation::endpoint const> const& source)
    {
        if(!writer||!source)throw std::invalid_argument("native endpoint observation owner");
        bool expected=false;if(!source->announced.compare_exchange_strong(expected,true,std::memory_order_acq_rel))
            throw std::logic_error("native endpoint already announced");
        observation::record opened;opened.event=observation::phase::endpoint_open;opened.source=source.get();
        opened.request_id=source->activation_request_id;opened.native_invoked=true;opened.actual_qos_verified=true;
        (void)writer->emit(opened);
    }

    class publication
    {
        std::shared_ptr<observation::writer> output_;
        std::shared_ptr<observation::endpoint const> source_;
        observation::call* request_;
        std::vector<std::uint8_t> const& canonical_;
        void emit(observation::phase phase,std::vector<std::uint8_t> const& raw,
            bool invoked,bool accepted,bool uncertain) noexcept
        {
            observation::record record;record.event=phase;record.source=source_.get();
            record.connection=request_->connection.get();record.request_id=request_->request_id;
            record.canonical=canonical_.data();record.canonical_bytes=canonical_.size();
            record.serialized=raw.data();record.serialized_bytes=raw.size();
            record.native_invoked=invoked;record.native_accepted=accepted;record.effects_uncertain=uncertain;record.payloads_inline=phase==observation::phase::publish_attempt;
            auto format=rmw_get_serialization_format();if(format)record.serialization_format=format;else output_->lost();record.buffer_origin="actual-rmw-serialized-publish";
            (void)output_->emit(record);
        }
    public:
        publication(std::shared_ptr<observation::writer> output,
            std::shared_ptr<observation::endpoint const> source,std::vector<std::uint8_t> const& canonical)
            :output_(std::move(output)),source_(std::move(source)),request_(observation::active_call),canonical_(canonical)
        {
            if(!output_||!source_||!request_||request_->output!=output_||request_->connection!=source_->owner||!request_->request_id)
                throw std::invalid_argument("serialized publication has no actual checked IPC owner");
            request_->source=source_;
        }
        void attempt(std::vector<std::uint8_t> const& raw) noexcept
        {emit(observation::phase::publish_attempt,raw,false,false,false);}
        void invoking() noexcept{request_->rmw_invoked=true;}
        void accepted(std::vector<std::uint8_t> const& raw) noexcept
        {request_->rmw_accepted=true;emit(observation::phase::publish_accepted,raw,true,true,false);}
        void uncertain(std::vector<std::uint8_t> const& raw) noexcept
        {
            // RCL/RMW threw after invocation. No numeric native error was
            // observed; zero is not asserted as success (accepted is false).
            request_->effects_uncertain=true;emit(observation::phase::publish_uncertain,raw,true,false,true);
        }
    };

    inline void delivery(std::shared_ptr<event_queue> const& queue,
        capture::sample const& sample,std::vector<std::uint8_t> canonical)
    {
        if(!queue||!queue->capture_writer||!queue->capture_binding)
            throw std::invalid_argument("serialized delivery has no actual queue source binding");
        static_assert(RMW_GID_STORAGE_SIZE<=32,"full actual RMW GID exceeds supported journal profile");
        observation::native_info info;info.callback_ordinal=sample.callback_ordinal;
        info.publication_sequence=sample.publication_sequence;info.reception_sequence=sample.reception_sequence;
        info.publication_sequence_supported=sample.publication_sequence_supported;info.reception_sequence_supported=sample.reception_sequence_supported;
        info.source_timestamp=sample.source_timestamp;info.received_timestamp=sample.received_timestamp;
        info.publisher_gid_bytes=sample.publisher_gid.size();
        for(std::size_t i{};i<sample.publisher_gid.size();++i)info.publisher_gid[i]=sample.publisher_gid[i];
        info.rmw_identifier=sample.rmw_identifier;
        observation::record record;record.event=observation::phase::capture;record.source=queue->capture_binding.get();
        record.connection=queue->capture_binding->owner.get();record.capture_ordinal=sample.callback_ordinal;
        record.canonical=canonical.data();record.canonical_bytes=canonical.size();
        record.serialized=sample.serialized.data();record.serialized_bytes=sample.serialized.size();record.info=&info;
        auto format=rmw_get_serialization_format();if(format)record.serialization_format=format;else queue->capture_writer->lost();record.buffer_origin="actual-rmw-serialized-take";
        std::shared_ptr<observation::capture_ref> reference;
        if(queue->capture_writer->emit(record))
        {
            try
            {
                reference=std::make_shared<observation::capture_ref>(queue->capture_writer,queue->capture_binding,sample.callback_ordinal,
                    observation::hash(canonical.data(),canonical.size()),observation::hash(sample.serialized.data(),sample.serialized.size()));
                if(!reference->reserved)reference.reset();
            }
            catch(...){queue->capture_writer->lost();}
        }
        // Preserve actual canonical queue validation, rate/byte admission and
        // overflow policy. Missing observation quality never grants authority.
        (void)queue->enqueue(std::move(canonical),std::move(reference));
    }

    template<class Native>
    inline Native deserialize(capture::sample const& captured)
    {
        rclcpp::SerializedMessage serialized(captured.serialized.size());
        auto& raw=serialized.get_rcl_serialized_message();
        if(!captured.serialized.empty())std::memcpy(raw.buffer,captured.serialized.data(),captured.serialized.size());
        raw.buffer_length=captured.serialized.size();
        rclcpp::Serialization<Native> serializer;Native native;
        serializer.deserialize_message(&serialized,&native);return native;
    }
}
