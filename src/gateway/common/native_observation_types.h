// SDK native serialization observation, C++17. APL-2.0.
// No Guest input can install a writer or select an observation endpoint.
#pragma once
#include <array>
#include <atomic>
#include <cstddef>
#include <cstdint>
#include <memory>
#include <string>
#include <string_view>
#include <utility>
#include <vector>

namespace uwvm2::ros_gateway::native_observation
{
    using digest=std::array<std::uint8_t,32>;
    enum class phase:std::uint8_t
    {
        session_bound,endpoint_open,endpoint_closed,capture,publish_attempt,publish_accepted,
        publish_uncertain,enqueued,pending,promoted,rejected,dropped,dequeued,
        queue_closed,dispatch_result,wire_reply,wire_reply_failed,session_closed,end
    };
    inline std::string_view name(phase value) noexcept
    {
        switch(value)
        {
#define UWVM_NATIVE_PHASE(V) case phase::V:return #V;
            UWVM_NATIVE_PHASE(session_bound) UWVM_NATIVE_PHASE(endpoint_open)
            UWVM_NATIVE_PHASE(endpoint_closed) UWVM_NATIVE_PHASE(capture) UWVM_NATIVE_PHASE(publish_attempt)
            UWVM_NATIVE_PHASE(publish_accepted) UWVM_NATIVE_PHASE(publish_uncertain)
            UWVM_NATIVE_PHASE(enqueued) UWVM_NATIVE_PHASE(pending) UWVM_NATIVE_PHASE(promoted)
            UWVM_NATIVE_PHASE(rejected) UWVM_NATIVE_PHASE(dropped) UWVM_NATIVE_PHASE(dequeued)
            UWVM_NATIVE_PHASE(queue_closed) UWVM_NATIVE_PHASE(dispatch_result)
            UWVM_NATIVE_PHASE(wire_reply) UWVM_NATIVE_PHASE(wire_reply_failed)
            UWVM_NATIVE_PHASE(session_closed) UWVM_NATIVE_PHASE(end)
#undef UWVM_NATIVE_PHASE
        }
        return "invalid";
    }
    struct session
    {
        std::string run_id;
        digest session_tag{},binding_manifest_sha256{};
        std::uint32_t backend{},worker_pid{},worker_uid{};
        std::uint64_t worker_birth{};
    };
    struct endpoint
    {
        std::shared_ptr<session const> owner;
        std::string alias,operation,resource,type,identity,codec_identity;
        std::uint64_t incarnation{},activation_request_id{};
        mutable std::atomic<bool> announced{};
    };
    struct native_info
    {
        std::uint64_t callback_ordinal{},publication_sequence{},reception_sequence{};
        bool publication_sequence_supported{},reception_sequence_supported{};
        std::uint64_t source_timestamp{},received_timestamp{};
        std::array<std::uint8_t,32> publisher_gid{};
        std::uint32_t publisher_gid_bytes{};
        std::string_view rmw_identifier;
    };
    struct record
    {
        phase event{};
        session const* connection{};
        endpoint const* source{};
        std::uint64_t request_id{},capture_ordinal{};
        std::uint32_t error{};
        bool native_invoked{},native_accepted{},effects_uncertain{};
        std::uint8_t const* canonical{};std::size_t canonical_bytes{};
        std::uint8_t const* serialized{};std::size_t serialized_bytes{};
        native_info const* info{};
        std::string_view serialization_format,buffer_origin;
        bool payloads_inline{true},actual_qos_verified{};
    };
    class writer
    {
    public:
        virtual ~writer()=default;
        // Implementations must copy/emit all borrowed fields synchronously and
        // never throw or wait in a native callback. Failed emission poisons
        // evidence quality, never becomes an authority grant or a retry hint.
        virtual bool emit(record const&) noexcept=0;
        virtual void lost() noexcept=0;
        virtual bool reserve_capture() noexcept=0;
        virtual void release_capture() noexcept=0;
        virtual std::uint64_t next_endpoint() noexcept=0;
        virtual std::string type_support_path(std::string_view type) const=0;
        virtual std::shared_ptr<session const> begin_session(std::uint32_t backend,
            std::uint64_t actual_session,std::uint32_t actual_pid,std::uint32_t actual_uid,
            std::vector<std::uint8_t> const& actual_bound_manifest)=0;
    };
    struct call
    {
        std::shared_ptr<writer> output;
        std::shared_ptr<session const> connection;
        std::uint64_t request_id{};
        std::shared_ptr<endpoint const> source;
        bool rmw_invoked{},rmw_accepted{},effects_uncertain{};
    };
    inline thread_local call* active_call{};
    class call_scope
    {
        call* previous_;
    public:
        explicit call_scope(call& value) noexcept:previous_(active_call){active_call=&value;}
        call_scope(call_scope const&)=delete;
        ~call_scope(){active_call=previous_;}
    };
    struct capture_ref
    {
        std::shared_ptr<writer> output;
        std::shared_ptr<endpoint const> source;
        std::uint64_t ordinal{};
        digest canonical_sha256{},serialized_sha256{};
        bool reserved{};
        capture_ref(std::shared_ptr<writer> sink,std::shared_ptr<endpoint const> binding,
            std::uint64_t capture,digest canonical,digest serialized)
            :output(std::move(sink)),source(std::move(binding)),ordinal(capture),
             canonical_sha256(canonical),serialized_sha256(serialized)
        {reserved=output&&output->reserve_capture();if(output&&!reserved)output->lost();}
        capture_ref(capture_ref const&)=delete;
        ~capture_ref(){if(reserved)output->release_capture();}
        void lifecycle(phase event,std::uint32_t error=0,call const* request=nullptr) const noexcept
        {
            if(!output||!reserved||!source){if(output)output->lost();return;}
            record value;value.event=event;value.connection=source->owner.get();
            value.source=source.get();value.capture_ordinal=ordinal;value.error=error;
            if(request)
            {
                if(request->output!=output||request->connection!=source->owner){output->lost();return;}
                value.request_id=request->request_id;
            }
            (void)output->emit(value);
        }
    };
    inline void lifecycle(std::shared_ptr<capture_ref> const& value,phase event,
        std::uint32_t error=0,call const* request=nullptr) noexcept
    {if(value)value->lifecycle(event,error,request);}
}
