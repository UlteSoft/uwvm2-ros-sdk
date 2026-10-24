/* SPDX-License-Identifier: Apache-2.0
 * Native-only source candidate; qualification is recorded in exact receipts.
 * This candidate is not a published public SDK surface.
 * Uses the complete original Kortex API2.8.0 clients and protobuf messages.
 */
#ifndef UWVM_KINOVA_KORTEX_NOTIFICATIONS_HPP
#define UWVM_KINOVA_KORTEX_NOTIFICATIONS_HPP

#include "kortex_native.hpp"
#include <HeaderInfo.h>
#include <IRouterClient.h>
#include <atomic>
#include <limits>
#include <memory>
#include <utility>

namespace uwvm_kinova
{

    /** @brief Independent native notification grants and finite queue/RPC bounds.
     * @details Native bootstrap alone establishes authenticated_owner, exclusive
     * ownership of the Router's Base callback slot and quiescent construction before
     * transport activation. The API cannot infer those facts from ITransportClient's
     * public readyState. All booleans default false. Three expiries are independent:
     * unsubscribe may remain admitted after subscribe/poll authority expires.
     * active_slots is1..16; maximum_frame_bytes1..65536 bounds each complete serialized
     * original Frame, not protobuf heap overhead or the upstream transport's buffers.
     * maximum_rpc_ms is1..5000. The native process/transport still need their own
     * finite supervision; this adapter creates no thread or physical authority.
     * @see KortexBoundedNotifications KortexNotificationRead
     */
    struct KortexNotificationPolicy
    {
        void const* authenticated_owner = nullptr;
        bool exclusive_base_callback_slot = false;
        bool callbacks_quiescent_at_construction = false;
        bool subscribe = false, poll = false, unsubscribe = false;
        unsigned active_slots = 0, maximum_frame_bytes = 0, maximum_rpc_ms = 0;
        std::chrono::steady_clock::time_point subscribe_expires_at{};
        std::chrono::steady_clock::time_point poll_expires_at{};
        std::chrono::steady_clock::time_point unsubscribe_expires_at{};
    };

    /** @brief Distinguish original subscribe/unsubscribe RPC history roles.
     * @details These are local receipt identifiers, never function IDs or grants.
     * Neither authorizes action execution, stop, cancellation or fault recovery.
     * @see KortexNotificationReceipt KortexNotificationPolicy
     */
    enum class KortexNotificationOperation
    {
        subscribe,
        unsubscribe
    };

    /** @brief Preserve a lifetime-unique native notification RPC correlation.
     * @details Delivery and the original exception remain independent from event
     * arrival. Unknown subscribe/unsubscribe outcomes never allow automatic replay.
     * Copying this value owns only exception_ptr references and no client/authority.
     * @see Delivery KortexBoundedNotifications::receipts_native_only
     */
    struct KortexNotificationReceipt
    {
        std::uint64_t correlation = 0;
        KortexNotificationOperation operation = KortexNotificationOperation::subscribe;
        Delivery delivery = Delivery::unused;
        std::exception_ptr error;
    };

    /** @brief Own a complete original notification Frame and local receive facts.
     * @details code0 means frame/sequence/received_at are populated. code11 means no
     * queued frame;17 means local contention;90 means local copy allocation failed.
     * stream_failure separately records permanent earlier size/overflow/contention/
     * allocation loss. Previously accepted complete frames can still be drained, but
     * a failed stream cannot prove continuous action completion or authorize replay.
     * sequence is a non-reusing local ordinal, not a robot action/subscription ID.
     * received_at is local steady time, independent of all original message clocks.
     * frame owns every original header/payload/unknown field; no transport view escapes.
     * @see KortexBoundedNotifications::poll decode_kortex_action_notification
     */
    struct KortexNotificationRead
    {
        std::uint32_t code = 11, stream_failure = 0;
        std::uint64_t sequence = 0;
        std::chrono::steady_clock::time_point received_at{};
        Kinova::Api::Frame frame;
    };

    /** @brief Decode the complete original ActionNotification from an accepted Frame.
     * @details Pure local original protobuf decoding; no SDK callback is invoked.
     * Requires a code0 read and original Base/ActionTopic/notification header. The
     * complete Frame remains available to native bootstrap for original subscription,
     * session/device and action identity checks; this function does not invent a
     * relationship between local sequence, Header messageId and action identifiers.
     * A nonzero stream_failure remains a separate continuity failure even on decode.
     * @param[in] read Borrowed complete accepted original Frame, unchanged.
     * @param[out] output Exclusive original ActionNotification destination; consume
     * it only on status0. An allocator/arena transfer failure may leave unspecified
     * output storage with status90; no partial value is reported as successful.
     * @return 0 on complete decode,22 for another frame/malformed payload,90 on copy
     * allocation failure. This does not validate physical completion or native rights.
     * @see KortexNotificationRead KortexBoundedNotifications::poll
     */
    inline std::uint32_t decode_kortex_action_notification(KortexNotificationRead const& read, Kinova::Api::Base::ActionNotification& output) noexcept
    {
        if(read.code != 0 || !read.frame.IsInitialized())
        {
            return 22;
        }
        Kinova::Api::HeaderInfo header(read.frame.header());
        if(header.m_frameInfo.frameType != Kinova::Api::MSG_FRAME_NOTIFICATION || header.m_frameInfo.errorCode != Kinova::Api::ERROR_NONE ||
           header.m_serviceInfo.serviceId != Kinova::Api::eIdBase || header.m_serviceInfo.functionUid != Kinova::Api::Base::eUidActionTopic)
        {
            return 22;
        }
        try
        {
            Kinova::Api::Base::ActionNotification next;
            if(!next.ParseFromString(read.frame.payload()) || !next.IsInitialized())
            {
                return 22;
            }
            output.Swap(&next);
            return 0;
        }
        catch(...)
        {
            return 90;
        }
    }

    /** @brief Replace original Base detached notification dispatch with a finite queue.
     * @details Native-only API2.8.0 source candidate. A real original BaseClient is
     * constructed over an IRouterClient proxy. The proxy intercepts Base callback
     * registration before activation and never invokes the SDK NotificationHandler
     * functor that calls std::thread(...).detach(). The actual Router instead retains
     * a shared queue-state closure, never this object or the BaseClient. Queue slots
     * and serialized extents are finite; contention/overflow/allocation loss latches
     * a permanent stream failure. No thread, automatic resubscribe, cancellation,
     * physical stop, native reset or transport shutdown is started by this class.
     * Native bootstrap must exclusively own the Router Base callback slot, construct
     * while callback registration is quiescent, and retain the actual Router through
     * all synchronous calls. Destroy only with no public method/base RPC in progress.
     * Retiring/destruction disables capture locally; the Router may retain the closed
     * bounded shared state until its own reset/destruction. No undocumented unregister
     * or drain lifetime barrier is assumed. Original receiver/transport supervision,
     * subscription/session identity and hardware readiness remain native duties.
     * @see KortexNotificationPolicy subscribe_actions unsubscribe_actions poll retire_local
     */
    class KortexBoundedNotifications
    {
    public:
        /** @brief Monotonic native clock for queue receive times and grant expiries.
         * @details Not a ROS/robot timestamp or physical deadline guarantee.
         * @see KortexNotificationPolicy KortexNotificationRead
         */
        using Clock = std::chrono::steady_clock;

    private:
        struct Slot
        {
            Kinova::Api::Frame frame;
            std::uint64_t sequence = 0;
            Clock::time_point received_at{};
        };

        struct State
        {
            std::mutex mutex;
            std::atomic<bool> closed{false};
            std::atomic<std::uint32_t> failure{0};
            std::array<Slot, 16> slots;
            unsigned head = 0, count = 0, capacity, maximum_bytes;
            std::uint64_t next_sequence = 1;

            State(unsigned size, unsigned bytes) : capacity(size), maximum_bytes(bytes)
            {
            }

            void fail(std::uint32_t code) noexcept
            {
                std::uint32_t empty = 0;
                failure.compare_exchange_strong(empty, code);
            }

            Kinova::Api::Error capture(Kinova::Api::Frame& frame) noexcept
            {
                Kinova::Api::Error handled;
                handled.set_error_code(Kinova::Api::ERROR_NONE);
                if(closed.load() || failure.load())
                {
                    return handled;
                }
                std::unique_lock<std::mutex> lock(mutex, std::try_to_lock);
                if(!lock.owns_lock())
                {
                    fail(17);
                    return handled;
                }
                if(closed.load() || failure.load())
                {
                    return handled;
                }
                if(!frame.IsInitialized() || frame.ByteSizeLong() > maximum_bytes)
                {
                    fail(90);
                    return handled;
                }
                if(count == capacity || !next_sequence)
                {
                    fail(90);
                    return handled;
                }
                Slot& slot = slots[(head + count) % capacity];
                try
                {
                    slot.frame.CopyFrom(frame);
                    slot.sequence = next_sequence;
                    next_sequence = next_sequence == std::numeric_limits<std::uint64_t>::max() ? 0 : next_sequence + 1;
                    slot.received_at = Clock::now();
                    ++count;
                }
                catch(...)
                {
                    slot.frame.Clear();
                    fail(90);
                }
                return handled;
            }
        };

        class RouterProxy final : public Kinova::Api::IRouterClient
        {
            Kinova::Api::IRouterClient& original_;
            std::shared_ptr<State> state_;
            bool installed_ = false;

        public:
            RouterProxy(Kinova::Api::IRouterClient& original, std::shared_ptr<State> state) : original_(original), state_(std::move(state))
            {
            }

            ~RouterProxy() override
            {
                state_->closed.store(true);
            }

            void reset() override
            {
                original_.reset();
            }

            void registerBridgingCallback(std::function<void(Kinova::Api::Frame&)> callback) override
            {
                original_.registerBridgingCallback(std::move(callback));
            }

            void registerNotificationCallback(std::uint32_t service, std::function<Kinova::Api::Error(Kinova::Api::Frame&)> callback) override
            {
                (void)callback;
                if(service != Kinova::Api::eIdBase || installed_)
                {
                    throw std::logic_error("one original Base callback slot is required");
                }
                auto state = state_;
                original_.registerNotificationCallback(service, [state](Kinova::Api::Frame& frame) { return state->capture(frame); });
                installed_ = true;
            }

            void registerErrorCallback(std::function<void(Kinova::Api::KError)> callback) override
            {
                original_.registerErrorCallback(std::move(callback));
            }

            void registerHitCallback(std::function<void(Kinova::Api::FrameTypes)> callback) override
            {
                original_.registerHitCallback(std::move(callback));
            }

            std::future<Kinova::Api::Frame> send(std::string const& payload,
                                                 std::uint32_t version,
                                                 std::uint32_t function,
                                                 std::uint32_t device,
                                                 Kinova::Api::RouterClientSendOptions const& options) override
            {
                return original_.send(payload, version, function, device, options);
            }

            Kinova::Api::Error sendWithCallback(std::string const& payload,
                                                std::uint32_t version,
                                                std::uint32_t function,
                                                std::uint32_t device,
                                                Kinova::Api::MessageCallback callback) override
            {
                return original_.sendWithCallback(payload, version, function, device, std::move(callback));
            }

            Kinova::Api::Error sendMsgFrame(Kinova::Api::Frame const& frame) override
            {
                return original_.sendMsgFrame(frame);
            }

            std::uint16_t getConnectionId() override
            {
                return original_.getConnectionId();
            }

            void SetActivationStatus(bool active) override
            {
                original_.SetActivationStatus(active);
            }

            Kinova::Api::ITransportClient* getTransport() override
            {
                return original_.getTransport();
            }
        };

        static std::shared_ptr<State> prepare(KortexNotificationPolicy const& policy)
        {
            if(!policy.authenticated_owner || !policy.exclusive_base_callback_slot || !policy.callbacks_quiescent_at_construction || !policy.active_slots ||
               policy.active_slots > 16 || !policy.maximum_frame_bytes || policy.maximum_frame_bytes > 65536 || !policy.maximum_rpc_ms ||
               policy.maximum_rpc_ms > 5000)
            {
                throw std::invalid_argument("explicit native callback bootstrap and finite bounds required");
            }
            return std::make_shared<State>(policy.active_slots, policy.maximum_frame_bytes);
        }

        std::shared_ptr<State> state_;
        RouterProxy proxy_;
        Kinova::Api::Base::BaseClient base_;
        KortexNotificationPolicy const policy_;
        std::mutex rpc_mutex_;
        bool subscribe_attempted_ = false, unsubscribe_attempted_ = false, subscription_known_ = false;
        Kinova::Api::Common::NotificationHandle subscription_;
        std::array<KortexNotificationReceipt, 64> receipts_;
        std::size_t used_ = 0;

        void identity(void const* owner, bool enabled, Clock::time_point expiry) const
        {
            if(!owner || owner != policy_.authenticated_owner || !enabled || Clock::now() >= expiry)
            {
                throw std::logic_error("independent native notification grant required");
            }
        }

        Kinova::Api::RouterClientSendOptions options(Clock::time_point deadline, Clock::time_point expiry) const
        {
            auto now = Clock::now();
            if(deadline <= now || deadline > expiry || deadline - now > std::chrono::milliseconds(policy_.maximum_rpc_ms))
            {
                throw std::invalid_argument("finite original native deadline required");
            }
            auto ms = std::chrono::duration_cast<std::chrono::milliseconds>(deadline - now).count();
            if(ms <= 0)
            {
                throw std::invalid_argument("sub-millisecond native deadline refused");
            }
            return {false, 0, static_cast<std::uint32_t>(ms)};
        }

        KortexNotificationReceipt& reserve(std::uint64_t id, KortexNotificationOperation operation)
        {
            if(!id || used_ == receipts_.size())
            {
                throw std::logic_error("finite nonzero correlation ledger required");
            }
            for(std::size_t index = 0; index < used_; ++index)
            {
                if(receipts_[index].correlation == id)
                {
                    throw std::logic_error("correlation reuse refused");
                }
            }
            auto& receipt = receipts_[used_++];
            receipt.correlation = id;
            receipt.operation = operation;
            receipt.delivery = Delivery::reserved;
            return receipt;
        }

    public:
        /** @brief Install one finite native Base queue before transport activation.
         * @details Allocates queue state before the actual original BaseClient installs
         * its callback. Performs no subscribe, connection, authentication or RPC.
         * Default/absent bootstrap facts refuse before installation. If construction
         * fails after registration, the retained shared closure is locally closed;
         * native bootstrap still owns the Router slot and its eventual destruction.
         * @param[in,out] router Actual original Router, exclusively owned and quiescent
         * for callback registration; remains live through all synchronous calls.
         * @param[in] policy Copied immutable native grants/bounds and bootstrap facts.
         * @throws std::exception Invalid bootstrap/bounds, allocation or original SDK failure.
         * @see KortexNotificationPolicy retire_local
         */
        KortexBoundedNotifications(Kinova::Api::IRouterClient& router, KortexNotificationPolicy const& policy) :
            state_(prepare(policy)), proxy_(router, state_), base_(&proxy_), policy_(policy)
        {
        }

        /** @brief Disable local capture without an RPC or undocumented unregister.
         * @details Destroy only after all public method/base RPC calls finish. The
         * Router closure holds bounded shared state independently of this lifetime.
         * Native subscription/transport retirement remains separately authorized.
         * @see retire_local unsubscribe_actions
         */
        ~KortexBoundedNotifications()
        {
            retire_local();
        }

        /** @brief Prevent duplicate native subscription/correlation ownership.
         * @details Copying is a compile-time error with no runtime effect.
         * @param[in] other Existing noncopyable native owner.
         * @see KortexBoundedNotifications
         */
        KortexBoundedNotifications(KortexBoundedNotifications const& other) = delete;
        /** @brief Prevent replacing native callback and correlation ownership.
         * @details Assignment is a compile-time error with no runtime effect.
         * @param[in] other Existing native owner that cannot be assigned.
         * @see KortexBoundedNotifications
         */
        KortexBoundedNotifications& operator= (KortexBoundedNotifications const& other) = delete;

        /** @brief Borrow the actual original Base client for synchronous native RPC ownership.
         * @details Pass only to an independently granted KortexNative owner; this
         * reference is native-only and never crosses the Guest ABI. It transfers no
         * grant and must not escape this lifetime. Do not invoke SDK notification,
         * async or callback-registration methods through it; use this bounded owner.
         * @return Borrowed original BaseClient, with the bounded Router proxy installed.
         * @see KortexNative subscribe_actions
         */
        Kinova::Api::Base::BaseClient& base_native_only() noexcept
        {
            return base_;
        }

        /** @brief Subscribe once using the actual original ActionTopic RPC.
         * @details Requires independent subscribe and receive grants. Records unknown
         * delivery before entering the original RPC; any exception leaves the attempt
         * reserved and prevents retry on this owner. The SDK's stored notification
         * functor is never dispatched: only the Router's bounded shared queue runs.
         * This creates no action, motion, automatic reconnect or recovery.
         * @param[in] owner Trusted identity equal to the copied authenticated_owner.
         * @param[in] id Nonzero native correlation, never used by this owner's history.
         * @param[in] deadline Absolute steady deadline within subscribe expiry/budget.
         * @param[in] value Borrowed complete original NotificationOptions, at most65536 bytes.
         * @param[out] handle_out Exclusive stable original NotificationHandle carrier;
         * consume only after normal return. A copy failure may leave partial storage,
         * records unknown delivery and does not establish known cleanup ownership.
         * @return No value. Complete output and internal handle copies commit before
         * return, with no by-value protobuf allocation after the receipt commit.
         * @throws std::exception Local grant/state/value refusal or actual SDK failure;
         * inspect receipts_native_only before independently authorized recovery.
         * @see poll unsubscribe_actions KortexNotificationReceipt
         */
        void subscribe_actions(void const* owner,
                               std::uint64_t id,
                               Clock::time_point deadline,
                               Kinova::Api::Common::NotificationOptions const& value,
                               Kinova::Api::Common::NotificationHandle& handle_out)
        {
            std::unique_lock<std::mutex> lock(rpc_mutex_, std::try_to_lock);
            if(!lock.owns_lock())
            {
                throw std::logic_error("native notification RPC busy");
            }
            identity(owner, policy_.subscribe, policy_.subscribe_expires_at);
            identity(owner, policy_.poll, policy_.poll_expires_at);
            if(state_->closed.load() || state_->failure.load() || subscribe_attempted_ || !value.IsInitialized() || value.ByteSizeLong() > 65536)
            {
                throw std::logic_error("one valid original notification subscription required");
            }
            auto selected = options(deadline, policy_.subscribe_expires_at);
            auto& receipt = reserve(id, KortexNotificationOperation::subscribe);
            subscribe_attempted_ = true;
            receipt.delivery = Delivery::unknown;
            try
            {
                auto handle = base_.OnNotificationActionTopic([](Kinova::Api::Base::ActionNotification) {}, value, 0, selected);
                if(!handle.IsInitialized() || handle.ByteSizeLong() > 65536 || !handle.identifier() || Clock::now() >= deadline)
                {
                    throw std::runtime_error("native notification receipt invalid or late");
                }
                handle_out.CopyFrom(handle);
                subscription_.CopyFrom(handle);
                subscription_known_ = true;
                receipt.delivery = Delivery::returned;
            }
            catch(...)
            {
                receipt.error = std::current_exception();
                throw;
            }
        }

        /** @brief Attempt original Unsubscribe once under its independent cleanup grant.
         * @details May remain admitted after receive/subscribe expiry. Requires the
         * actual known original handle; an unknown subscribe is never reconstructed
         * from a local sequence/header guess. An uncertain unsubscribe is not retried.
         * Successful unsubscribe closes local capture; no transport or robot stop occurs.
         * @param[in] owner Trusted copied identity; no Guest field grants cleanup.
         * @param[in] id Nonzero lifetime-unique native correlation.
         * @param[in] deadline Absolute steady deadline within independent cleanup expiry.
         * @throws std::exception Missing grant/known handle, prior attempt or actual SDK error.
         * @see subscribe_actions retire_local receipts_native_only
         */
        void unsubscribe_actions(void const* owner, std::uint64_t id, Clock::time_point deadline)
        {
            std::unique_lock<std::mutex> lock(rpc_mutex_, std::try_to_lock);
            if(!lock.owns_lock())
            {
                throw std::logic_error("native notification RPC busy");
            }
            identity(owner, policy_.unsubscribe, policy_.unsubscribe_expires_at);
            if(!subscription_known_ || !subscription_.identifier() || unsubscribe_attempted_)
            {
                throw std::logic_error("known original unsubscription ownership required");
            }
            auto selected = options(deadline, policy_.unsubscribe_expires_at);
            auto& receipt = reserve(id, KortexNotificationOperation::unsubscribe);
            unsubscribe_attempted_ = true;
            receipt.delivery = Delivery::unknown;
            try
            {
                base_.Unsubscribe(subscription_, 0, selected);
                if(Clock::now() >= deadline)
                {
                    throw std::runtime_error("native unsubscribe returned late");
                }
                receipt.delivery = Delivery::returned;
                retire_local();
            }
            catch(...)
            {
                receipt.error = std::current_exception();
                throw;
            }
        }

        /** @brief Poll one complete queued original Frame without invoking an SDK callback.
         * @details Requires independent unexpired receive authority. Uses a nonblocking
         * local lock and reports continuity failure separately. Copies the full original
         * frame into stable caller storage before committing dequeue; allocation failure
         * retains the queued frame and stops further capture. Only code0 output is
         * readable; failure may leave old/partial frame storage with a nonzero code.
         * No post-dequeue allocation or by-value message return is required. Closed
         * capture may still drain accepted frames. No native RPC/replay occurs.
         * @param[in] owner Trusted copied native identity with the exact receive grant.
         * @param[out] read Exclusive stable caller-owned carrier; inspect frame/sequence/
         * received_at only on code0, and always inspect its independent stream_failure.
         * @return Same numeric status as read.code; no native action completion is inferred.
         * @throws std::logic_error Missing/expired receive identity or permission.
         * @see KortexNotificationRead decode_kortex_action_notification retire_local
         */
        std::uint32_t poll(void const* owner, KortexNotificationRead& read)
        {
            identity(owner, policy_.poll, policy_.poll_expires_at);
            read.code = 11;
            read.sequence = 0;
            read.received_at = Clock::time_point{};
            read.stream_failure = state_->failure.load();
            std::unique_lock<std::mutex> lock(state_->mutex, std::try_to_lock);
            if(!lock.owns_lock())
            {
                return read.code = 17;
            }
            read.stream_failure = state_->failure.load();
            if(!state_->count)
            {
                return read.code;
            }
            auto& slot = state_->slots[state_->head];
            try
            {
                read.frame.CopyFrom(slot.frame);
            }
            catch(...)
            {
                state_->fail(90);
                read.code = 90;
                read.stream_failure = state_->failure.load();
                return read.code;
            }
            read.code = 0;
            read.sequence = slot.sequence;
            read.received_at = slot.received_at;
            slot.frame.Clear();
            state_->head = (state_->head + 1) % state_->capacity;
            --state_->count;
            read.stream_failure = state_->failure.load();
            return read.code;
        }

        /** @brief Permanently close local capture without retiring native resources.
         * @details One atomic latch; no RPC, wait, cancellation, unregister or thread
         * join. A capture admitted before this latch may finish after return; this
         * is not a callback/drain barrier. Complete frames remain bounded and may be drained with a
         * still-valid independent receive grant. Never authorizes resubscription.
         * @see unsubscribe_actions poll KortexNotificationPolicy
         */
        void retire_local() noexcept
        {
            state_->closed.store(true);
        }

        /** @brief Copy the finite native subscribe/unsubscribe outcome ledger.
         * @details Contains all64 slots, with unused slots marked Delivery::unused.
         * Full IDs remain reserved for this owner's lifetime. Native service only;
         * no client/reference, permission, recovery decision or Guest data is produced.
         * @return Owned receipt array preserving actual exceptions and unknown outcomes.
         * @throws std::logic_error A synchronous native RPC currently owns the lock.
         * @see KortexNotificationReceipt Delivery
         */
        std::array<KortexNotificationReceipt, 64> receipts_native_only()
        {
            std::unique_lock<std::mutex> lock(rpc_mutex_, std::try_to_lock);
            if(!lock.owns_lock())
            {
                throw std::logic_error("native notification RPC busy");
            }
            return receipts_;
        }
    };
}  // namespace uwvm_kinova
#endif
