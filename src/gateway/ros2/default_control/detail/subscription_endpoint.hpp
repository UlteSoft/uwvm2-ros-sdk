/** @file
 * @brief A real retained Subscription and its same-callback owned receive queue.
 *
 * This is an independent new native endpoint path. It does not call the legacy
 * listen function, infer an entity from a graph name, or grant a Host resource.
 * The future authenticated transport must supply the exact current leased
 * source binding and a nonreusing native incarnation on every operation.
 */
#pragma once
#include <uwvm2/utils/thread/monotonic_clock.h>
#include "../../compat/node.h"
#include "topic_proof.hpp"
#include "native_rmw_queue.h"
#if __has_include(<rclcpp/message_info.hpp>)
#include <rclcpp/message_info.hpp>
#define UWVM_NATIVE_SUBSCRIPTION_MESSAGE_INFO 1
#else
#define UWVM_NATIVE_SUBSCRIPTION_MESSAGE_INFO 0
#endif

namespace uwvm2::ros_gateway::default_control_gateway::subscription_detail
{
    namespace wire=::uwvm2::imported::ros::ipc::rmw_endpoint;
    namespace info=::uwvm2::imported::ros::ipc::rmw_metadata;
    namespace queue=native_rmw_queue;
    using endpoint=::uwvm2::ros_gateway::native_rmw_subscription::endpoint;
    inline std::uint32_t queue_options(ros::capability_spec const& cap,queue::options& output)
    {return native_rmw_subscription::queue_options(cap,output);}
    template<class Native>
    class typed_endpoint final:public endpoint
    {
        struct callback_state
        {
            ros::capability_spec capability;
            std::shared_ptr<detail::TopicProof<Native> const> proof;
            std::vector<std::uint8_t> scratch;
            wire::binding owner;
            std::uint64_t incarnation{};
            std::size_t maximum{};
            std::shared_ptr<queue::bounded_queue> records;
            std::shared_ptr<quota_connection> connection;
            bucket quota;
            std::mutex serial;
            callback_state(std::shared_ptr<detail::TopicProof<Native> const> p,ros::capability_spec cap,wire::binding binding,std::uint64_t id,
                std::size_t max,std::shared_ptr<queue::bounded_queue> q):
                capability{std::move(cap)},proof{std::move(p)},scratch(max),owner{binding},incarnation{id},maximum{max},records{std::move(q)},connection{quota_owner()}
            {quota.refresh(capability);}
            void notify_capacity() noexcept
            {std::lock_guard<std::mutex> lock{serial};quota.notify_waiters();}
            void capture(std::shared_ptr<Native const> const& value,rmw_message_info_t const& native) noexcept
            {
                // An actual executor may dispatch callbacks concurrently. One
                // serialization lock bounds canonical encoding to one local
                // temporary at a time; it never calls an upper Guest callback.
                std::unique_lock<std::mutex> lock{serial};
                if(auto refusal=records->ingress()){if(refusal==90)records->callback_error(refusal);return;}
                if(!value){records->callback_error(22);return;}
                try
                {
                    quota_scope operation{connection,quota_deadline(capability)};
                    auto active=[&]() noexcept{return records->ingress()==0;};
                    std::size_t n=SIZE_MAX;auto error=proof->root()->encode(value.get(),scratch.data(),scratch.size(),&n);
                    if(error||n==SIZE_MAX||n>maximum){records->callback_error(error?error:22);return;}
                    error=proof->validate(scratch.data(),n);if(error){records->callback_error(error);return;}
                    // Queue bodies are finite owned copies; charge actual
                    // vector capacity at enqueue. Middleware allocations are
                    // independent and remain under the real process envelope.
                    std::vector<std::uint8_t> canonical(scratch.begin(),scratch.begin()+n);
                    if(!quota.take_locked(capability,n,lock,active)){records->callback_error(quota_failure());return;}
                    info::header h{};h.owner=owner;h.incarnation=incarnation;h.payload_bytes=n;
                    // D4's pure native capture validates a header's nonzero
                    // sequence. This local placeholder is not a receipt: the
                    // queue overwrites it with its sole accepted sequence while
                    // holding its commit mutex, before encoding the record.
                    h.sequence=1;auto code{native_rmw_metadata::topic(native,h)};
                    if(code&&code!=95){records->callback_error(code);return;}
                    // On95 topic() leaves h unchanged: absent native bits and
                    // its capture error stay in this same owned queue record.
                    // On old SDKs code may be0 but times absent; peek still95.
                    // A queue wait retains this exact owned body and metadata;
                    // it never retakes a native message or repeats encoding.
                    auto wait_selected=[&](std::string_view key) {
                        auto selected{ros::quota_setting(capability,key,".on-exhausted")};
                        if(!selected.empty())return selected=="wait";
                        auto configured{capability.limits.find("overflow-policy")};
                        return configured!=capability.limits.end()&&configured->second=="wait";
                    };
                    bool const wait_records{wait_selected("qos.depth")};
                    bool const wait_bytes{wait_selected("max-queue-bytes")};
                    std::optional<ros::synchronous_quota_wait> waiting;
                    for(;;)
                    {
                        auto admitted{records->enqueue(h,canonical,code)};
                        if(admitted!=90||(!wait_records&&!wait_bytes))return;
                        // The finite sequence identity never replenishes. A
                        // capacity wait cannot repair sequence exhaustion.
                        if(records->observe().last_sequence==UINT64_MAX)return;
                        // Registration and consumer notifications use serial.
                        // Recheck under that lock before sleeping: consumption
                        // between enqueue refusal and registration cannot vanish.
                        lock.unlock();
                        auto space{records->wait_for_space(canonical.capacity(),::uwvm2::utils::host_clock::now(),wait_records,wait_bytes)};
                        lock.lock();
                        if(space==0)continue;
                        if(space!=110){records->callback_error(space);return;}
                        auto current{records->observe()};
                        auto records_limit{queue_capacity(capability,"qos.depth")};
                        auto bytes_limit{limit(capability,"max-queue-bytes")};
                        bool const records_full{static_cast<std::uint64_t>(current.records)>=records_limit};
                        bool const bytes_full{bytes_limit<info::header_bytes||current.bytes>bytes_limit-info::header_bytes||
                            canonical.capacity()>bytes_limit-info::header_bytes-current.bytes};
                        if(!records_full&&!bytes_full)continue;
                        if((records_full&&!wait_records)||(bytes_full&&!wait_bytes)){records->callback_error(90);return;}
                        bool const wait_exit{(records_full&&ros::quota_wait_on_exit(capability,"qos.depth"))||
                            (bytes_full&&ros::quota_wait_on_exit(capability,"max-queue-bytes"))};
                        if(!waiting)waiting.emplace();
                        // wait_locked releases serial before kernel waiting and
                        // watches retirement notifications and the exact peer,
                        // worker-process and Gateway-stop cancellation handles.
                        auto error{quota.wait_locked(*waiting,operation.deadline,lock,active,wait_exit)};
                        if(error){records->callback_error(error);return;}
                    }
                }
                catch(std::bad_alloc const&){records->callback_error(12);}
                catch(...){records->callback_error(5);}
            }
        };
        ::uwvm2::ros_gateway::ros2_compat::node_type::SharedPtr node_;
        wire::packet association_;
        std::shared_ptr<rclcpp::Subscription<Native>> subscription_;
        std::shared_ptr<callback_state> callback_;
        std::mutex mutex_;
        bool retired_{};
        typed_endpoint(::uwvm2::ros_gateway::ros2_compat::node_type::SharedPtr node,std::shared_ptr<callback_state> state):node_{std::move(node)},callback_{std::move(state)}{}
        bool owns(wire::binding const& owner,std::uint64_t incarnation) const noexcept
        {return wire::same(owner,association_.owner)&&incarnation==association_.incarnation;}
        void notify() noexcept {try{ros2_compat::notify(node_);}catch(...) {}}
        void close() noexcept
        {callback_->records->retire();callback_->notify_capacity();subscription_.reset();notify();}
    public:
        /** No caller output changes until all real native association/QoS
         * checks pass. The future registry reserves its slot before calling.
         * Original NodeOptions and actual generated native types are unchanged.
         * Missing actual-QoS getter refuses95 before native creation.
         */
        static std::uint32_t create(std::shared_ptr<detail::TopicProof<Native> const> const& proof,::uwvm2::ros_gateway::ros2_compat::node_type::SharedPtr const& node,ros::capability_spec const& cap,
            wire::binding const& owner,std::uint64_t incarnation,std::shared_ptr<endpoint>& output,
            wire::packet& observed) noexcept
        {

            if(!node||!wire::valid(owner)||!incarnation||cap.operation!="topic.subscribe"){return 22;}
            if constexpr(!UWVM_ROS2_HAVE_COMPLETE_RMW_QOS||!native_rmw_metadata::has_entity_actual<rclcpp::Subscription<Native>>::value){return 95;}
            else
            {
                try
                {
                    if(!proof||!proof->root()||!proof->selected(cap)){return 13;}
                    auto root=proof->root();auto validation=root->validate(root,root->generated_support);if(validation)return validation;
                    queue::options options{};auto error{queue_options(cap,options)};if(error){return error;}
                    // The trusted complete codec's own wire representation is
                    // independent of user quotas. Never allocate an unlimited quota.
                    options.body_bytes=std::min(options.body_bytes,root->maximum_wire_bytes);
                    std::shared_ptr<queue::bounded_queue> records;
                    error=queue::bounded_queue::create(options,owner,incarnation,records);if(error){return error;}
                    auto state{std::make_shared<callback_state>(proof,cap,owner,incarnation,options.body_bytes,records)};
                    auto holder{std::shared_ptr<typed_endpoint>{new typed_endpoint{node,state}}};
                    auto configured{ros2_qos::configured(cap)};
                    std::weak_ptr<callback_state> weak{state};
#if UWVM_NATIVE_SUBSCRIPTION_MESSAGE_INFO
                    auto callback=[weak](std::shared_ptr<Native const> value,rclcpp::MessageInfo const& information)
                    {if(auto retained=weak.lock()){retained->capture(value,information.get_rmw_message_info());}};
#else
                    auto callback=[weak](std::shared_ptr<Native const> value,rmw_message_info_t const& information)
                    {if(auto retained=weak.lock()){retained->capture(value,information);}};
#endif
                    // Both signatures are actual original SDK APIs, selected
                    // by the actual original header. No MessageInfo substitute
                    // or reflection of a distribution name is used.
                    auto created{ros2_compat::create_subscription<Native>(node,cap.resource,configured,std::move(callback))};
                    if(!created){return 5;}holder->subscription_=std::move(created);
                    auto actual_name{holder->subscription_->get_topic_name()};
                    if(!actual_name||std::string_view{actual_name}!=cap.resource){return 13;}
                    wire::packet reply{};reply.kind=wire::role::subscription;reply.operation=wire::command::activate;
                    reply.owner=owner;reply.incarnation=incarnation;
                    error=native_rmw_metadata::subscription(*holder->subscription_,reply);if(error){return error;}
                    wire::qos requested{};
                    if(!native_rmw_metadata::actual_profile(ros2_compat::profile(configured),requested)||!wire::same(requested,reply.actual[0])){return 95;}
                    holder->association_=reply;error=records->activate();if(error){return error;}
                    observed=reply;output=std::move(holder);return 0;
                }
                catch(std::bad_alloc const&){return 12;}catch(...){return 5;}
            }
        }
        ~typed_endpoint() override {close();}
        std::uint32_t inspect(wire::binding const& owner,std::uint64_t incarnation,wire::packet& output) override
        {
            std::lock_guard<std::mutex> lock{mutex_};if(!owns(owner,incarnation)){return 13;}
            if(retired_||!subscription_){return 125;}auto reply{association_};reply.operation=wire::command::inspect;
            auto error{native_rmw_metadata::subscription(*subscription_,reply)};if(error){return error;}
            if(!wire::same(reply.actual[0],association_.actual[0])){return 13;}output=reply;return 0;
        }
        std::uint32_t peek(wire::binding const& owner,std::uint64_t incarnation,std::size_t gid_bytes,queue::snapshot& output,
            std::size_t capacity=::uwvm2::imported::ros::ipc::max_payload_bytes) override
        {
            std::lock_guard<std::mutex> lock{mutex_};if(!owns(owner,incarnation)){return 13;}
            if(retired_){return 125;}return callback_->records->peek(owner,incarnation,gid_bytes,output,capacity);
        }
        std::uint32_t commit(wire::binding const& owner,std::uint64_t incarnation,std::uint64_t sequence,std::uint64_t reservation) override
        {
            std::lock_guard<std::mutex> lock{mutex_};if(!owns(owner,incarnation)){return 13;}
            if(retired_){return 125;}auto error=callback_->records->commit(owner,incarnation,sequence,reservation);callback_->notify_capacity();return error;
        }
        std::uint32_t cancel(wire::binding const& owner,std::uint64_t incarnation,std::uint64_t sequence,std::uint64_t reservation) override
        {
            std::lock_guard<std::mutex> lock{mutex_};if(!owns(owner,incarnation)){return 13;}
            if(retired_){return 125;}auto error=callback_->records->cancel(owner,incarnation,sequence,reservation);callback_->notify_capacity();return error;
        }
        std::uint32_t observe(wire::binding const& owner,std::uint64_t incarnation,queue::statistics& output) override
        {
            std::lock_guard<std::mutex> lock{mutex_};if(!owns(owner,incarnation)){return 13;}
            output=callback_->records->observe();return 0;
        }
        std::uint32_t retire(wire::binding const& owner,std::uint64_t incarnation) override
        {
            std::lock_guard<std::mutex> lock{mutex_};if(!owns(owner,incarnation)){return 13;}
            if(retired_){return 125;}retired_=true;close();return 0;
        }
    };

}
#undef UWVM_NATIVE_SUBSCRIPTION_MESSAGE_INFO
