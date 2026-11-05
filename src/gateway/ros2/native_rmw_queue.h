/** @file
 * @brief One owned native metadata/canonical-body queue for the new RMW path.
 *
 * A source grant is authenticated and leased by the future transport, outside
 * this class. These numeric associations are anti-mixup checks, not authority.
 * No legacy event queue, separately sampled metadata, or last-message cache is
 * used. Every accepted record owns its exact encoded URMI header and body.
 */
#pragma once
#include <uwvm2/imported/ros/ipc/rmw_metadata.h>
#include <algorithm>
#include <array>
#include <cstddef>
#include <cstdint>
#include <memory>
#include <mutex>
#include <new>
#include <vector>
#include <deque>
#include <condition_variable>
#include <chrono>
#include <stdexcept>

namespace uwvm2::ros_gateway::native_rmw_queue
{
    namespace wire=::uwvm2::imported::ros::ipc::rmw_endpoint;
    namespace info=::uwvm2::imported::ros::ipc::rmw_metadata;
    enum class overflow { drop_oldest,drop_newest,reject,wait };
    struct options
    {
        std::size_t records{SIZE_MAX},bytes{SIZE_MAX},body_bytes{SIZE_MAX};
        overflow policy{overflow::reject};
    };
    inline bool valid(options const& o) noexcept
    {
        // Zero is a valid explicit quota; admission, not configuration,
        // refuses requests that cannot fit it.
        return (o.body_bytes==SIZE_MAX||o.body_bytes<=::uwvm2::imported::ros::ipc::max_payload_bytes-info::header_bytes)&&
            (o.policy==overflow::reject||o.policy==overflow::wait);
    }
    struct statistics
    {
        std::uint64_t accepted{},consumed{},drop_oldest{},drop_newest{},rejected{},retired_records{},
            callback_errors{},metadata_unavailable{},before_activation{},last_sequence{},last_reservation{},high_records{},high_bytes{};
        std::uint32_t first_error{};
        std::size_t records{},bytes{};
        bool active{},retired{},reserved{};
    };
    /** A transactional owned snapshot. Exactly one header followed by its body.
     * Never pass its storage into Guest memory until the current grants, full
     * output extent and native metadata requirements have all been checked.
     * Destruction alone does not consume; call commit or cancel explicitly.
     */
    struct snapshot
    {
        std::uint64_t sequence{},reservation{}; // Record identity, separate borrowing-attempt token.
        std::size_t size{};
        std::unique_ptr<std::uint8_t[]> bytes;
    };
    class bounded_queue
    {
        struct record
        {
            std::array<std::uint8_t,info::header_bytes> header{};
            std::vector<std::uint8_t> body;
            std::uint64_t sequence{};
            std::size_t charge{};
            // An unsupported actual metadata capture remains attached to this
            // same record. It cannot be mistaken for a complete native receipt.
            std::uint32_t capture_error{};
        };
        options options_;
        wire::binding owner_;
        std::uint64_t incarnation_{};
        std::deque<record> slots_;
        std::size_t size_{},bytes_{};
        std::uint64_t space_epoch_{};
        std::condition_variable space_changed_;
        // A record sequence and a borrowing attempt are different identities.
        // Cancel followed by another peek keeps the former but changes the
        // latter, so an old attempt cannot act on the new reservation (ABA).
        std::uint64_t reserved_{},reservation_{};
        statistics statistics_;
        mutable std::mutex mutex_;
        bounded_queue(options o,wire::binding owner,std::uint64_t incarnation):
            options_{o},owner_{owner},incarnation_{incarnation}{}
        static void bump(std::uint64_t& n) noexcept {if(n!=UINT64_MAX){++n;}}
        bool owns(wire::binding const& owner,std::uint64_t incarnation) const noexcept
        {return wire::same(owner,owner_)&&incarnation==incarnation_;}
        void note(std::uint32_t code) noexcept
        {bump(statistics_.callback_errors);if(!statistics_.first_error){statistics_.first_error=code;}}
        void pop() noexcept
        {
            auto& r{slots_.front()};bytes_-=r.charge;
            // Release payload capacity now. clear() alone would retain bytes
            // outside the current queue charge and falsify the memory ledger.
            std::vector<std::uint8_t>{}.swap(r.body);r.charge=0;r.sequence=0;r.capture_error=0;
            slots_.pop_front();--size_;
        }
    public:
        bounded_queue(bounded_queue const&)=delete;
        bounded_queue& operator=(bounded_queue const&)=delete;
        static std::uint32_t create(options o,wire::binding const& owner,std::uint64_t incarnation,
            std::shared_ptr<bounded_queue>& output) noexcept
        {
            if(!valid(o)||!wire::valid(owner)||!incarnation){return 22;}
            try{auto q{std::shared_ptr<bounded_queue>{new bounded_queue{o,owner,incarnation}}};output=std::move(q);return 0;}
            catch(std::bad_alloc const&){return 12;}catch(...){return 5;}
        }
        std::uint32_t activate() noexcept
        {
            std::lock_guard<std::mutex> lock{mutex_};
            if(statistics_.retired){return 125;}if(statistics_.active){return 17;}
            statistics_.active=true;return 0;
        }
        /** Cheap pre-encoding refusal. This does not reserve admission: enqueue
         * checks retirement again at the actual business commit point. */
        std::uint32_t ingress() noexcept
        {
            std::lock_guard<std::mutex> lock{mutex_};if(statistics_.retired){return 125;}
            if(!statistics_.active){bump(statistics_.before_activation);return 11;}
            if(!options_.records||options_.bytes<info::header_bytes)return 90;return 0;
        }
        /** Encode/validate before evicting anything. The capacity charge covers
         * the retained vector allocation, not merely its logical wire extent.
         * Record controls grow only on admission, including unlimited policy.
         * Incoming payload is moved only on successful acceptance. Refusals do
         * not modify it, existing records or the next accepted sequence.
         */
        std::uint32_t enqueue(info::header h,std::vector<std::uint8_t>& body,std::uint32_t capture_error=0) noexcept
        {
            std::lock_guard<std::mutex> lock{mutex_};
            if(statistics_.retired){return 125;}
            if(!statistics_.active){bump(statistics_.before_activation);return 11;}
            if(!owns(h.owner,h.incarnation)||h.kind!=::uwvm2::imported::ros::ipc::event_kind::topic_message||
                (capture_error&&capture_error!=95)){note(22);return 22;}
            if(statistics_.last_sequence==UINT64_MAX){note(90);return 90;}
            if(!options_.records||options_.bytes<info::header_bytes||body.size()>options_.body_bytes||body.size()>::uwvm2::imported::ros::ipc::max_payload_bytes-info::header_bytes||body.capacity()>options_.bytes-info::header_bytes){note(90);return 90;}
            auto charge{info::header_bytes+body.capacity()};
            h.sequence=statistics_.last_sequence+1;h.payload_bytes=body.size();
            std::array<std::uint8_t,info::header_bytes> encoded{};
            if(!info::encode(h,encoded)){note(22);return 22;}
            auto full=[&]() noexcept{return size_>=options_.records||charge>options_.bytes-bytes_;};
            if(full())
            {
                // reject is immediate; wait is performed synchronously by the
                // caller outside callback locks, retaining this same body.
                bump(statistics_.rejected);return 90;
            }
            // Move-in cannot throw; allocation failure preserves the incoming
            // and retained records. Neither policy ever drops a record.
            try{slots_.emplace_back();}
            catch(std::bad_alloc const&){note(12);return 12;}
            catch(std::length_error const&){note(90);return 90;}
            catch(...){note(5);return 5;}
            auto& destination{slots_.back()};
            destination.header=encoded;destination.body=std::move(body);destination.sequence=h.sequence;
            destination.charge=charge;destination.capture_error=capture_error;
            ++size_;bytes_+=charge;statistics_.last_sequence=h.sequence;bump(statistics_.accepted);
            if(capture_error||!info::complete(h))
            {bump(statistics_.metadata_unavailable);if(!statistics_.first_error){statistics_.first_error=95;}}
            statistics_.high_records=std::max<std::uint64_t>(statistics_.high_records,size_);
            statistics_.high_bytes=std::max<std::uint64_t>(statistics_.high_bytes,bytes_);
            bump(space_epoch_);space_changed_.notify_all();return 0;
        }
        /** Require complete actual native metadata and its ABI extent BEFORE
         * allocation, reservation, output change or consumption. All-zero GID
         * value bytes are valid. expected_gid_bytes is an admitted consumer ABI
         * requirement, never an attempt to infer the publisher identity.
         */
        std::uint32_t peek(wire::binding const& owner,std::uint64_t incarnation,std::size_t expected_gid_bytes,
            snapshot& output,std::size_t capacity=::uwvm2::imported::ros::ipc::max_payload_bytes) noexcept
        {
            std::lock_guard<std::mutex> lock{mutex_};if(!owns(owner,incarnation)){return 13;}
            if(statistics_.retired){return 125;}if(!size_){return 11;}if(reserved_){return 17;}
            auto const& r{slots_.front()};info::header h{};
            if(!info::decode(r.header.data(),r.header.size(),r.body.size(),h)){return 5;}
            if(r.capture_error||!info::complete(h)||!expected_gid_bytes||expected_gid_bytes>32||h.gid_size!=expected_gid_bytes){return 95;}
            // Optional independently validated consumer wire capacity includes
            // header+body. A too-small destination never borrows a token.
            if(capacity<info::header_bytes+r.body.size()){return 90;}
            // Tokens are positive, never reset or reused. Unsupported metadata
            // wins before exhaustion and changes neither token nor queue state.
            if(statistics_.last_reservation==UINT64_MAX){return 90;}
            try
            {
                snapshot next{};next.sequence=r.sequence;next.size=info::header_bytes+r.body.size();
                next.reservation=statistics_.last_reservation+1;
                next.bytes=std::make_unique<std::uint8_t[]>(next.size);
                std::copy(r.header.begin(),r.header.end(),next.bytes.get());
                std::copy(r.body.begin(),r.body.end(),next.bytes.get()+info::header_bytes);
                auto token{next.reservation};output=std::move(next);
                reserved_=r.sequence;reservation_=token;statistics_.last_reservation=token;return 0;
            }
            catch(std::bad_alloc const&){return 12;}catch(...){return 5;}
        }
        std::uint32_t commit(wire::binding const& owner,std::uint64_t incarnation,std::uint64_t sequence,
            std::uint64_t reservation) noexcept
        {
            std::lock_guard<std::mutex> lock{mutex_};if(!owns(owner,incarnation)){return 13;}
            if(statistics_.retired){return 125;}
            if(!sequence||!reservation||reserved_!=sequence||reservation_!=reservation||!size_||slots_.front().sequence!=sequence){return 13;}
            pop();reserved_=reservation_=0;bump(statistics_.consumed);bump(space_epoch_);space_changed_.notify_all();return 0;
        }
        std::uint32_t cancel(wire::binding const& owner,std::uint64_t incarnation,std::uint64_t sequence,
            std::uint64_t reservation) noexcept
        {
            std::lock_guard<std::mutex> lock{mutex_};if(!owns(owner,incarnation)){return 13;}
            if(statistics_.retired){return 125;}
            if(!sequence||!reservation||reserved_!=sequence||reservation_!=reservation){return 13;}
            reserved_=reservation_=0;bump(space_epoch_);space_changed_.notify_all();return 0;
        }
        using cancellation_check=bool (*)(void*) noexcept;
        /** Wait at the caller's outer synchronous boundary, without holding its
         * native callback/endpoint locks. This does not reserve admission: retry
         * enqueue after waking, with the current grant and exact same body.
         * External cancellation must notify_waiters after publishing its flag.
         * Its predicate runs under the queue lock: only read atomic state; do
         * not take an external lock or reenter this queue from the predicate.
         */
        std::uint32_t wait_for_space(std::size_t body_capacity,
            std::chrono::steady_clock::time_point deadline,bool wait_records,bool wait_bytes,
            cancellation_check cancelled=nullptr,void* context=nullptr) noexcept
        {
            try
            {
                std::unique_lock<std::mutex> lock{mutex_};
                // Neither zero record capacity nor a pool smaller than one
                // header can recover by consumption. Never sleep on them.
                if(!options_.records||options_.bytes<info::header_bytes||body_capacity>options_.bytes-info::header_bytes)return 90;
                auto const charge{info::header_bytes+body_capacity};
                for(;;)
                {
                    if(statistics_.retired||(cancelled&&cancelled(context)))return 125;
                    if(!statistics_.active)return 11;
                    bool const records_full{size_>=options_.records};
                    bool const bytes_full{charge>options_.bytes-bytes_};
                    if(!records_full&&!bytes_full)return 0;
                    if((records_full&&!wait_records)||(bytes_full&&!wait_bytes))return 90;
                    if(deadline==std::chrono::steady_clock::time_point::max())space_changed_.wait(lock);
                    else if(space_changed_.wait_until(lock,deadline)==std::cv_status::timeout)
                    {
                        if(statistics_.retired||(cancelled&&cancelled(context)))return 125;
                        if(size_<options_.records&&charge<=options_.bytes-bytes_)return 0;
                        return 110;
                    }
                }
            }
            catch(...){return 5;}
        }
        std::uint64_t space_epoch() const noexcept
        {std::lock_guard<std::mutex> lock{mutex_};return space_epoch_;}
        void notify_waiters() noexcept
        {
            // The lock pairs a published cancellation flag with wait's atomic
            // unlock/sleep transition; notification alone could otherwise race.
            {std::lock_guard<std::mutex> lock{mutex_};bump(space_epoch_);}
            space_changed_.notify_all();
        }
        void callback_error(std::uint32_t code) noexcept
        {std::lock_guard<std::mutex> lock{mutex_};note(code?code:5);}
        statistics observe() const noexcept
        {
            std::lock_guard<std::mutex> lock{mutex_};auto s{statistics_};
            s.records=size_;s.bytes=bytes_;s.reserved=reserved_!=0;return s;
        }
        /** This is the ingress/consumer retirement linearization point. A native
         * callback already encoding may finish its local work, but cannot add
         * business after this returns. Native destruction/notify follows in the
         * owning endpoint. No mutex waits for native executor completion.
         */
        void retire() noexcept
        {
            std::lock_guard<std::mutex> lock{mutex_};statistics_.active=false;statistics_.retired=true;reserved_=reservation_=0;
            while(size_){pop();bump(statistics_.retired_records);}
            bump(space_epoch_);space_changed_.notify_all();
        }
    };
}
