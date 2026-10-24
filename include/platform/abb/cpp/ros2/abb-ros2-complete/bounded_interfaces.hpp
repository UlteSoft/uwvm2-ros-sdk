/**
 * @file bounded_interfaces.hpp
 * @brief Own the complete source-paired ABB ROS2 typed RPC roles.
 * @details Each nonmoving owner keeps stable context and goal storage. The caller retains the immutable
 * backend and serializes operations. Explicit close/revoke reports must be observed before destruction;
 * destructors discard best-effort cleanup status. Original fields, finite bounds, ticket roles and native
 * result kinds remain intact. No grant, thread, retry or physical-stop guarantee is created.
 */
#pragma once
#include <abb/c/ros2/abb-ros2-complete/bounded_interfaces.h>
#include <abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp>
#include <array>
#include <memory>
#include <functional>
#include <string_view>
#include <utility>

namespace uwvm_custom
{

    /**
     * @brief Borrow the exact alias byte span without allocating or granting authority.
     * @details The returned view owns no storage and performs no alias validation. Keep text readable
     * through its synchronous consumer; endpoint construction performs role-specific validation.
     * @param text Caller-owned alias bytes, borrowed through the consuming call.
     * @return A borrowed data/size view.
     */
    inline roswasmc_string alias(std::string_view text)
    {
        return {text.data(), text.size()};
    }

    /**
     * @brief Own the typed endpoint lifecycle for ServerOwners.
     * @details This object owns the separate advertisement/response capabilities and borrows only the
     * immutable backend. It cannot be copied or moved; context/goal storage stays stable through every call.
     * The caller serializes access and observes explicit cleanup reports before destruction. Callbacks
     * borrow values only during invocation; no hidden thread or retry is created.
     */
    class ServerOwners
    {
    protected:
        roswasmc_context context_;
        roswasmc_capability advertise_{}, respond_{};
        uint32_t error_{};
        bool busy_{};
        roswasmc_cleanup_report rollback_{};
        std::array<uint32_t, 2> rollback_statuses_{};

        struct Pass
        {
            bool& busy;

            explicit Pass(bool& value) : busy{value}
            {
                busy = true;
            }

            ~Pass()
            {
                busy = false;
            }
        };

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param advertise Distinct advertisement alias bytes, borrowed through construction.
         * @param respond Distinct response alias bytes, borrowed through construction.
         * @param action Select action roles when true, otherwise service roles.
         */
        ServerOwners(roswasmc_context const& context, std::string_view advertise, std::string_view respond, bool action) : context_{context.backend}
        {
            roswasmc_capability_init(&advertise_, &context_);
            roswasmc_capability_init(&respond_, &context_);
            error_ = roswasmc_check_operation(&context_, action ? ROSWASMC_ACTION_RESPOND : ROSWASMC_SERVICE_RESPOND);
            if(!error_ && (!roswasmc_action_bundle_alias(alias(advertise)) || !roswasmc_action_bundle_alias(alias(respond)) || advertise == respond))
            {
                error_ = 22;
            }
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
            {
                error_ = 95;
            }
            if(!error_)
            {
                error_ = action ? roswasmc_check_operation(&context_, ROSWASMC_ACTION_ADVERTISE) : (context_.backend->advertise_service ? 0 : 95);
            }
            if(!error_)
            {
                error_ = roswasmc_open(&advertise_, advertise.data(), advertise.size());
            }
            if(!error_)
            {
                error_ = roswasmc_open(&respond_, respond.data(), respond.size());
            }
            if(!error_ && advertise_.handle == respond_.handle)
            {
                respond_.handle = 0;
                error_ = 17;
            }
            if(!error_)
            {
                if(action)
                {
                    auto r = roswasmc_action_advertise(&advertise_, nullptr, 0, nullptr, 0);
                    error_ = r.error;
                    if(!error_ && (!r.has_length || r.length))
                    {
                        error_ = 22;
                    }
                }
                else
                {
                    error_ = roswasmc_service_advertise(&advertise_);
                }
            }
            if(error_)
            {
                rollback_ = is_open() ? cleanup(error_, rollback_statuses_, false) : roswasmc_cleanup_init(error_);
            }
        }

        /**
         * @brief Retire owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * The report keeps primary/first cleanup errors and attempt/failure counts separate. Server callback
         * retirement is refused with 17 before imports. No automatic reopen, stronger cancellation, effect
         * replay or physical-stop claim occurs.
         * @param primary Earlier operation error, retained independently from cleanup.
         * @param statuses Caller-owned per-role results in the declared role order.
         * @param revoke Use explicit revocation when true, ordinary close otherwise.
         * @return Saved primary and independent cleanup report.
         */
        roswasmc_cleanup_report cleanup(uint32_t primary, std::array<uint32_t, 2>& statuses, bool revoke)
        {
            auto r = roswasmc_cleanup_init(primary);
            if(busy_)
            {
                r.cleanup_error = 17;
                return r;
            }
            if(!is_open())
            {
                r.cleanup_error = 9;
                return r;
            }
            roswasmc_capability* caps[] = {&advertise_, &respond_};
            for(size_t i = 2; i > 0; --i)
            {
                uint32_t code = 0;
                if(roswasmc_is_open(caps[i - 1]))
                {
                    code = revoke ? roswasmc_revoke(caps[i - 1]) : roswasmc_close(caps[i - 1]);
                    ++r.attempted;
                    if(code)
                    {
                        ++r.failed;
                        if(!r.cleanup_error)
                        {
                            r.cleanup_error = code;
                        }
                    }
                }
                statuses[i - 1] = code;
            }
            return r;
        }

    public:
        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        ServerOwners(ServerOwners const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        ServerOwners& operator= (ServerOwners const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        ServerOwners(ServerOwners&&) = delete;

        /**
         * @brief Attempt ordinary retirement of remaining owned roles on destruction.
         * @details The destructor cannot report cleanup errors. Call close_checked or revoke_checked
         * explicitly and retain its status before destruction. The immutable backend must remain alive.
         * Destruction never adds revocation, stronger cancellation, retries or a physical-stop guarantee.
         */
        ~ServerOwners()
        {
            if(is_open())
            {
                std::array<uint32_t, 2> statuses{};
                cleanup(0, statuses, false);
            }
        }

        /**
         * @brief Read initialization or retired-owner status without an import.
         * @details This is local owner state rather than native connection health or controller admission. A
         * closed object is not reopened. Preserve later operation and cleanup errors independently.
         * @return The first initialization error, zero while locally open, or 9 after retirement.
         */
        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        /**
         * @brief Inspect whether this object still owns a local role.
         * @details No import, permission lookup or controller health check occurs. A true result does not
         * prove a goal completed or a physical controller is connected.
         * @return Local ownership state.
         */
        bool is_open() const noexcept
        {
            return roswasmc_is_open(&advertise_) || roswasmc_is_open(&respond_);
        }

        /**
         * @brief Inspect saved construction rollback without retiring another role.
         * @details The returned report preserves the original setup error and independent cleanup summary.
         * The statuses overload copies every saved role result; unopened roles retain zero. Service-server
         * order is advertise/respond; action order is send/own-cancel/feedback/result/any-cancel.
         * @return The saved rollback report; no import or retry is performed.
         */
        roswasmc_cleanup_report construction_cleanup() const
        {
            return rollback_;
        }

        /**
         * @brief Inspect saved construction rollback without retiring another role.
         * @details The returned report preserves the original setup error and independent cleanup summary.
         * The statuses overload copies every saved role result; unopened roles retain zero. Service-server
         * order is advertise/respond; action order is send/own-cancel/feedback/result/any-cancel.
         * @param statuses Caller-owned fixed-size output array for all role statuses.
         * @return The saved rollback report; no import or retry is performed.
         */
        roswasmc_cleanup_report construction_cleanup(std::array<uint32_t, 2>& statuses) const
        {
            statuses = rollback_statuses_;
            return rollback_;
        }

        /**
         * @brief Retire owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * The report keeps primary/first cleanup errors and attempt/failure counts separate. Server callback
         * retirement is refused with 17 before imports. No automatic reopen, stronger cancellation, effect
         * replay or physical-stop claim occurs.
         * @param primary Earlier operation error, retained independently from cleanup.
         * @param statuses Caller-owned per-role results in the declared role order.
         * @return Saved primary and independent cleanup report.
         */
        roswasmc_cleanup_report close_checked(uint32_t primary, std::array<uint32_t, 2>& statuses)
        {
            return cleanup(primary, statuses, false);
        }

        /**
         * @brief Revoke owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * The report keeps primary/first cleanup errors and attempt/failure counts separate. Server callback
         * retirement is refused with 17 before imports. No automatic reopen, stronger cancellation, effect
         * replay or physical-stop claim occurs.
         * @param primary Earlier operation error, retained independently from cleanup.
         * @param statuses Caller-owned per-role results in the declared role order.
         * @return Saved primary and independent cleanup report.
         */
        roswasmc_cleanup_report revoke_checked(uint32_t primary, std::array<uint32_t, 2>& statuses)
        {
            return cleanup(primary, statuses, true);
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettingsClient.
     * @details This object owns the single service-call capabilities and borrows only the immutable backend.
     * It cannot be copied or moved; context/goal storage stays stable through every call. The caller
     * serializes access and observes explicit cleanup reports before destruction. Callbacks borrow values
     * only during invocation; no hidden thread or retry is created.
     */
    class Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettingsClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request;
        using Response = Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param selected Exact operator-granted alias bytes, borrowed through this synchronous open.
         */
        Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettingsClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
            {
                error_ = 95;
            }
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
            {
                error_ = UWVM_ROS_INVALID;
            }
            if(!error_)
            {
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
            }
        }

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettingsClient(Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettingsClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettingsClient& operator= (Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettingsClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettingsClient(Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettingsClient&&) = delete;

        /**
         * @brief Attempt ordinary retirement of remaining owned roles on destruction.
         * @details The destructor cannot report cleanup errors. Call close or revoke explicitly and retain
         * its status before destruction. The immutable backend must remain alive. Destruction never adds
         * revocation, stronger cancellation, retries or a physical-stop guarantee.
         */
        ~Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettingsClient()
        {
            if(roswasmc_is_open(&cap_))
            {
                roswasmc_close(&cap_);
            }
        }

        /**
         * @brief Read initialization or retired-owner status without an import.
         * @details This is local owner state rather than native connection health or controller admission. A
         * closed object is not reopened. Preserve later operation and cleanup errors independently.
         * @return The first initialization error, zero while locally open, or 9 after retirement.
         */
        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        /**
         * @brief Inspect whether this object still owns a local role.
         * @details No import, permission lookup or controller health check occurs. A true result does not
         * prove a goal completed or a physical controller is connected.
         * @return Local ownership state.
         */
        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        /**
         * @brief Perform one whole typed service request and decode its complete response.
         * @details Request and response storage are borrowed through this synchronous call. Paired canonical
         * bounds and all original fields remain intact. On transport success inspect native response fields
         * for controller refusal. An uncertain timeout or disconnect is not replayed.
         * @param request Complete initialized request borrowed until return.
         * @param response Caller-owned complete response; inspect after a successful result.
         * @return Original transport/codec status and length facts, without replacing controller fields.
         */
        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_abb_rapid_sm_addin_msgs_srv_GetEGMSettings_call(&cap_, &request, &response);
        }

        /**
         * @brief Retire owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        /**
         * @brief Revoke owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettingsServer.
     * @details This object owns the separate advertisement/response capabilities and borrows only the
     * immutable backend. It cannot be copied or moved; context/goal storage stays stable through every call.
     * The caller serializes access and observes explicit cleanup reports before destruction. Callbacks
     * borrow values only during invocation; no hidden thread or retry is created.
     */
    class Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettingsServer : public ServerOwners
    {
        using Handler = std::function<Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response(Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request;
        using Response = Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param advertise Distinct advertisement alias bytes, borrowed through construction.
         * @param respond Distinct response alias bytes, borrowed through construction.
         */
        Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettingsServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /**
         * @brief Replace the owned service callback for the next executor pass.
         * @details The current shared functor remains alive through its pass, including mutable state.
         * Request references are borrowed only during invocation. Allocation and callback exceptions
         * propagate; the pass guard restores reentrancy state. Registration performs no native request.
         * @param handler Owned callable moved into shared callback storage; empty disables dispatch.
         */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        /**
         * @brief Poll one whole native request/goal.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @param ticket Native service ticket output on success.
         * @param request Complete caller-owned request output.
         * @return Original poll/codec result.
         */
        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
            {
                return roswasmc_action_bundle_failure(17);
            }
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            Pass guard{busy_};
            return roswasmc_bounded_2_abb_rapid_sm_addin_msgs_srv_GetEGMSettings_poll(&advertise_, &ticket, &request);
        }

        /**
         * @brief Respond once to the exact native service ticket.
         * @details The complete response is borrowed through encoding and the synchronous import. The host
         * validates ticket/type/role ownership. Do not repeat an uncertain response or respond again to a
         * request already completed by process_once().
         * @param ticket Nonzero pending native service ticket.
         * @param response Complete initialized response.
         * @return Original response/codec result.
         */
        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_abb_rapid_sm_addin_msgs_srv_GetEGMSettings_respond(&respond_, ticket, &response);
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t poll_once()
        {
            return process_once();
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t process_once()
        {
            if(busy_)
            {
                return 17;
            }
            if(error())
            {
                return error();
            }
            auto handler = handler_;
            if(!handler)
            {
                return 22;
            }
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_abb_rapid_sm_addin_msgs_srv_GetEGMSettings_poll(&advertise_, &ticket, &request);
            if(r.error)
            {
                return r.error;
            }
            Response response = (*handler)(request);
            return roswasmc_bounded_2_abb_rapid_sm_addin_msgs_srv_GetEGMSettings_respond(&respond_, ticket, &response).error;
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettingsClient.
     * @details This object owns the single service-call capabilities and borrows only the immutable backend.
     * It cannot be copied or moved; context/goal storage stays stable through every call. The caller
     * serializes access and observes explicit cleanup reports before destruction. Callbacks borrow values
     * only during invocation; no hidden thread or retry is created.
     */
    class Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettingsClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request;
        using Response = Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param selected Exact operator-granted alias bytes, borrowed through this synchronous open.
         */
        Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettingsClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
            {
                error_ = 95;
            }
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
            {
                error_ = UWVM_ROS_INVALID;
            }
            if(!error_)
            {
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
            }
        }

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettingsClient(Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettingsClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettingsClient& operator= (Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettingsClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettingsClient(Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettingsClient&&) = delete;

        /**
         * @brief Attempt ordinary retirement of remaining owned roles on destruction.
         * @details The destructor cannot report cleanup errors. Call close or revoke explicitly and retain
         * its status before destruction. The immutable backend must remain alive. Destruction never adds
         * revocation, stronger cancellation, retries or a physical-stop guarantee.
         */
        ~Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettingsClient()
        {
            if(roswasmc_is_open(&cap_))
            {
                roswasmc_close(&cap_);
            }
        }

        /**
         * @brief Read initialization or retired-owner status without an import.
         * @details This is local owner state rather than native connection health or controller admission. A
         * closed object is not reopened. Preserve later operation and cleanup errors independently.
         * @return The first initialization error, zero while locally open, or 9 after retirement.
         */
        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        /**
         * @brief Inspect whether this object still owns a local role.
         * @details No import, permission lookup or controller health check occurs. A true result does not
         * prove a goal completed or a physical controller is connected.
         * @return Local ownership state.
         */
        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        /**
         * @brief Perform one whole typed service request and decode its complete response.
         * @details Request and response storage are borrowed through this synchronous call. Paired canonical
         * bounds and all original fields remain intact. On transport success inspect native response fields
         * for controller refusal. An uncertain timeout or disconnect is not replayed.
         * @param request Complete initialized request borrowed until return.
         * @param response Caller-owned complete response; inspect after a successful result.
         * @return Original transport/codec status and length facts, without replacing controller fields.
         */
        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_abb_rapid_sm_addin_msgs_srv_SetEGMSettings_call(&cap_, &request, &response);
        }

        /**
         * @brief Retire owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        /**
         * @brief Revoke owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettingsServer.
     * @details This object owns the separate advertisement/response capabilities and borrows only the
     * immutable backend. It cannot be copied or moved; context/goal storage stays stable through every call.
     * The caller serializes access and observes explicit cleanup reports before destruction. Callbacks
     * borrow values only during invocation; no hidden thread or retry is created.
     */
    class Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettingsServer : public ServerOwners
    {
        using Handler = std::function<Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response(Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request;
        using Response = Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param advertise Distinct advertisement alias bytes, borrowed through construction.
         * @param respond Distinct response alias bytes, borrowed through construction.
         */
        Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettingsServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /**
         * @brief Replace the owned service callback for the next executor pass.
         * @details The current shared functor remains alive through its pass, including mutable state.
         * Request references are borrowed only during invocation. Allocation and callback exceptions
         * propagate; the pass guard restores reentrancy state. Registration performs no native request.
         * @param handler Owned callable moved into shared callback storage; empty disables dispatch.
         */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        /**
         * @brief Poll one whole native request/goal.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @param ticket Native service ticket output on success.
         * @param request Complete caller-owned request output.
         * @return Original poll/codec result.
         */
        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
            {
                return roswasmc_action_bundle_failure(17);
            }
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            Pass guard{busy_};
            return roswasmc_bounded_2_abb_rapid_sm_addin_msgs_srv_SetEGMSettings_poll(&advertise_, &ticket, &request);
        }

        /**
         * @brief Respond once to the exact native service ticket.
         * @details The complete response is borrowed through encoding and the synchronous import. The host
         * validates ticket/type/role ownership. Do not repeat an uncertain response or respond again to a
         * request already completed by process_once().
         * @param ticket Nonzero pending native service ticket.
         * @param response Complete initialized response.
         * @return Original response/codec result.
         */
        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_abb_rapid_sm_addin_msgs_srv_SetEGMSettings_respond(&respond_, ticket, &response);
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t poll_once()
        {
            return process_once();
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t process_once()
        {
            if(busy_)
            {
                return 17;
            }
            if(error())
            {
                return error();
            }
            auto handler = handler_;
            if(!handler)
            {
                return 22;
            }
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_abb_rapid_sm_addin_msgs_srv_SetEGMSettings_poll(&advertise_, &ticket, &request);
            if(r.error)
            {
                return r.error;
            }
            Response response = (*handler)(request);
            return roswasmc_bounded_2_abb_rapid_sm_addin_msgs_srv_SetEGMSettings_respond(&respond_, ticket, &response).error;
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutineClient.
     * @details This object owns the single service-call capabilities and borrows only the immutable backend.
     * It cannot be copied or moved; context/goal storage stays stable through every call. The caller
     * serializes access and observes explicit cleanup reports before destruction. Callbacks borrow values
     * only during invocation; no hidden thread or retry is created.
     */
    class Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutineClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request;
        using Response = Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param selected Exact operator-granted alias bytes, borrowed through this synchronous open.
         */
        Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutineClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
            {
                error_ = 95;
            }
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
            {
                error_ = UWVM_ROS_INVALID;
            }
            if(!error_)
            {
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
            }
        }

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutineClient(Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutineClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutineClient& operator= (Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutineClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutineClient(Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutineClient&&) = delete;

        /**
         * @brief Attempt ordinary retirement of remaining owned roles on destruction.
         * @details The destructor cannot report cleanup errors. Call close or revoke explicitly and retain
         * its status before destruction. The immutable backend must remain alive. Destruction never adds
         * revocation, stronger cancellation, retries or a physical-stop guarantee.
         */
        ~Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutineClient()
        {
            if(roswasmc_is_open(&cap_))
            {
                roswasmc_close(&cap_);
            }
        }

        /**
         * @brief Read initialization or retired-owner status without an import.
         * @details This is local owner state rather than native connection health or controller admission. A
         * closed object is not reopened. Preserve later operation and cleanup errors independently.
         * @return The first initialization error, zero while locally open, or 9 after retirement.
         */
        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        /**
         * @brief Inspect whether this object still owns a local role.
         * @details No import, permission lookup or controller health check occurs. A true result does not
         * prove a goal completed or a physical controller is connected.
         * @return Local ownership state.
         */
        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        /**
         * @brief Perform one whole typed service request and decode its complete response.
         * @details Request and response storage are borrowed through this synchronous call. Paired canonical
         * bounds and all original fields remain intact. On transport success inspect native response fields
         * for controller refusal. An uncertain timeout or disconnect is not replayed.
         * @param request Complete initialized request borrowed until return.
         * @param response Caller-owned complete response; inspect after a successful result.
         * @return Original transport/codec status and length facts, without replacing controller fields.
         */
        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_abb_rapid_sm_addin_msgs_srv_SetRAPIDRoutine_call(&cap_, &request, &response);
        }

        /**
         * @brief Retire owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        /**
         * @brief Revoke owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutineServer.
     * @details This object owns the separate advertisement/response capabilities and borrows only the
     * immutable backend. It cannot be copied or moved; context/goal storage stays stable through every call.
     * The caller serializes access and observes explicit cleanup reports before destruction. Callbacks
     * borrow values only during invocation; no hidden thread or retry is created.
     */
    class Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutineServer : public ServerOwners
    {
        using Handler = std::function<Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response(Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request;
        using Response = Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param advertise Distinct advertisement alias bytes, borrowed through construction.
         * @param respond Distinct response alias bytes, borrowed through construction.
         */
        Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutineServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /**
         * @brief Replace the owned service callback for the next executor pass.
         * @details The current shared functor remains alive through its pass, including mutable state.
         * Request references are borrowed only during invocation. Allocation and callback exceptions
         * propagate; the pass guard restores reentrancy state. Registration performs no native request.
         * @param handler Owned callable moved into shared callback storage; empty disables dispatch.
         */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        /**
         * @brief Poll one whole native request/goal.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @param ticket Native service ticket output on success.
         * @param request Complete caller-owned request output.
         * @return Original poll/codec result.
         */
        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
            {
                return roswasmc_action_bundle_failure(17);
            }
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            Pass guard{busy_};
            return roswasmc_bounded_2_abb_rapid_sm_addin_msgs_srv_SetRAPIDRoutine_poll(&advertise_, &ticket, &request);
        }

        /**
         * @brief Respond once to the exact native service ticket.
         * @details The complete response is borrowed through encoding and the synchronous import. The host
         * validates ticket/type/role ownership. Do not repeat an uncertain response or respond again to a
         * request already completed by process_once().
         * @param ticket Nonzero pending native service ticket.
         * @param response Complete initialized response.
         * @return Original response/codec result.
         */
        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_abb_rapid_sm_addin_msgs_srv_SetRAPIDRoutine_respond(&respond_, ticket, &response);
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t poll_once()
        {
            return process_once();
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t process_once()
        {
            if(busy_)
            {
                return 17;
            }
            if(error())
            {
                return error();
            }
            auto handler = handler_;
            if(!handler)
            {
                return 22;
            }
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_abb_rapid_sm_addin_msgs_srv_SetRAPIDRoutine_poll(&advertise_, &ticket, &request);
            if(r.error)
            {
                return r.error;
            }
            Response response = (*handler)(request);
            return roswasmc_bounded_2_abb_rapid_sm_addin_msgs_srv_SetRAPIDRoutine_respond(&respond_, ticket, &response).error;
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommandClient.
     * @details This object owns the single service-call capabilities and borrows only the immutable backend.
     * It cannot be copied or moved; context/goal storage stays stable through every call. The caller
     * serializes access and observes explicit cleanup reports before destruction. Callbacks borrow values
     * only during invocation; no hidden thread or retry is created.
     */
    class Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommandClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request;
        using Response = Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param selected Exact operator-granted alias bytes, borrowed through this synchronous open.
         */
        Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommandClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
            {
                error_ = 95;
            }
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
            {
                error_ = UWVM_ROS_INVALID;
            }
            if(!error_)
            {
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
            }
        }

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommandClient(Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommandClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommandClient& operator= (Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommandClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommandClient(Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommandClient&&) = delete;

        /**
         * @brief Attempt ordinary retirement of remaining owned roles on destruction.
         * @details The destructor cannot report cleanup errors. Call close or revoke explicitly and retain
         * its status before destruction. The immutable backend must remain alive. Destruction never adds
         * revocation, stronger cancellation, retries or a physical-stop guarantee.
         */
        ~Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommandClient()
        {
            if(roswasmc_is_open(&cap_))
            {
                roswasmc_close(&cap_);
            }
        }

        /**
         * @brief Read initialization or retired-owner status without an import.
         * @details This is local owner state rather than native connection health or controller admission. A
         * closed object is not reopened. Preserve later operation and cleanup errors independently.
         * @return The first initialization error, zero while locally open, or 9 after retirement.
         */
        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        /**
         * @brief Inspect whether this object still owns a local role.
         * @details No import, permission lookup or controller health check occurs. A true result does not
         * prove a goal completed or a physical controller is connected.
         * @return Local ownership state.
         */
        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        /**
         * @brief Perform one whole typed service request and decode its complete response.
         * @details Request and response storage are borrowed through this synchronous call. Paired canonical
         * bounds and all original fields remain intact. On transport success inspect native response fields
         * for controller refusal. An uncertain timeout or disconnect is not replayed.
         * @param request Complete initialized request borrowed until return.
         * @param response Caller-owned complete response; inspect after a successful result.
         * @return Original transport/codec status and length facts, without replacing controller fields.
         */
        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_abb_rapid_sm_addin_msgs_srv_SetSGCommand_call(&cap_, &request, &response);
        }

        /**
         * @brief Retire owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        /**
         * @brief Revoke owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommandServer.
     * @details This object owns the separate advertisement/response capabilities and borrows only the
     * immutable backend. It cannot be copied or moved; context/goal storage stays stable through every call.
     * The caller serializes access and observes explicit cleanup reports before destruction. Callbacks
     * borrow values only during invocation; no hidden thread or retry is created.
     */
    class Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommandServer : public ServerOwners
    {
        using Handler = std::function<Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response(Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request;
        using Response = Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param advertise Distinct advertisement alias bytes, borrowed through construction.
         * @param respond Distinct response alias bytes, borrowed through construction.
         */
        Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommandServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /**
         * @brief Replace the owned service callback for the next executor pass.
         * @details The current shared functor remains alive through its pass, including mutable state.
         * Request references are borrowed only during invocation. Allocation and callback exceptions
         * propagate; the pass guard restores reentrancy state. Registration performs no native request.
         * @param handler Owned callable moved into shared callback storage; empty disables dispatch.
         */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        /**
         * @brief Poll one whole native request/goal.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @param ticket Native service ticket output on success.
         * @param request Complete caller-owned request output.
         * @return Original poll/codec result.
         */
        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
            {
                return roswasmc_action_bundle_failure(17);
            }
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            Pass guard{busy_};
            return roswasmc_bounded_2_abb_rapid_sm_addin_msgs_srv_SetSGCommand_poll(&advertise_, &ticket, &request);
        }

        /**
         * @brief Respond once to the exact native service ticket.
         * @details The complete response is borrowed through encoding and the synchronous import. The host
         * validates ticket/type/role ownership. Do not repeat an uncertain response or respond again to a
         * request already completed by process_once().
         * @param ticket Nonzero pending native service ticket.
         * @param response Complete initialized response.
         * @return Original response/codec result.
         */
        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_abb_rapid_sm_addin_msgs_srv_SetSGCommand_respond(&respond_, ticket, &response);
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t poll_once()
        {
            return process_once();
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t process_once()
        {
            if(busy_)
            {
                return 17;
            }
            if(error())
            {
                return error();
            }
            auto handler = handler_;
            if(!handler)
            {
                return 22;
            }
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_abb_rapid_sm_addin_msgs_srv_SetSGCommand_poll(&advertise_, &ticket, &request);
            if(r.error)
            {
                return r.error;
            }
            Response response = (*handler)(request);
            return roswasmc_bounded_2_abb_rapid_sm_addin_msgs_srv_SetSGCommand_respond(&respond_, ticket, &response).error;
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Abb_robot_msgsSrvGetFileContentsClient.
     * @details This object owns the single service-call capabilities and borrows only the immutable backend.
     * It cannot be copied or moved; context/goal storage stays stable through every call. The caller
     * serializes access and observes explicit cleanup reports before destruction. Callbacks borrow values
     * only during invocation; no hidden thread or retry is created.
     */
    class Ros2Abb_robot_msgsSrvGetFileContentsClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Abb_robot_msgsSrvGetFileContents_Request;
        using Response = Ros2Abb_robot_msgsSrvGetFileContents_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param selected Exact operator-granted alias bytes, borrowed through this synchronous open.
         */
        Ros2Abb_robot_msgsSrvGetFileContentsClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
            {
                error_ = 95;
            }
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
            {
                error_ = UWVM_ROS_INVALID;
            }
            if(!error_)
            {
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
            }
        }

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Abb_robot_msgsSrvGetFileContentsClient(Ros2Abb_robot_msgsSrvGetFileContentsClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Abb_robot_msgsSrvGetFileContentsClient& operator= (Ros2Abb_robot_msgsSrvGetFileContentsClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Abb_robot_msgsSrvGetFileContentsClient(Ros2Abb_robot_msgsSrvGetFileContentsClient&&) = delete;

        /**
         * @brief Attempt ordinary retirement of remaining owned roles on destruction.
         * @details The destructor cannot report cleanup errors. Call close or revoke explicitly and retain
         * its status before destruction. The immutable backend must remain alive. Destruction never adds
         * revocation, stronger cancellation, retries or a physical-stop guarantee.
         */
        ~Ros2Abb_robot_msgsSrvGetFileContentsClient()
        {
            if(roswasmc_is_open(&cap_))
            {
                roswasmc_close(&cap_);
            }
        }

        /**
         * @brief Read initialization or retired-owner status without an import.
         * @details This is local owner state rather than native connection health or controller admission. A
         * closed object is not reopened. Preserve later operation and cleanup errors independently.
         * @return The first initialization error, zero while locally open, or 9 after retirement.
         */
        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        /**
         * @brief Inspect whether this object still owns a local role.
         * @details No import, permission lookup or controller health check occurs. A true result does not
         * prove a goal completed or a physical controller is connected.
         * @return Local ownership state.
         */
        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        /**
         * @brief Perform one whole typed service request and decode its complete response.
         * @details Request and response storage are borrowed through this synchronous call. Paired canonical
         * bounds and all original fields remain intact. On transport success inspect native response fields
         * for controller refusal. An uncertain timeout or disconnect is not replayed.
         * @param request Complete initialized request borrowed until return.
         * @param response Caller-owned complete response; inspect after a successful result.
         * @return Original transport/codec status and length facts, without replacing controller fields.
         */
        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_abb_robot_msgs_srv_GetFileContents_call(&cap_, &request, &response);
        }

        /**
         * @brief Retire owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        /**
         * @brief Revoke owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Abb_robot_msgsSrvGetFileContentsServer.
     * @details This object owns the separate advertisement/response capabilities and borrows only the
     * immutable backend. It cannot be copied or moved; context/goal storage stays stable through every call.
     * The caller serializes access and observes explicit cleanup reports before destruction. Callbacks
     * borrow values only during invocation; no hidden thread or retry is created.
     */
    class Ros2Abb_robot_msgsSrvGetFileContentsServer : public ServerOwners
    {
        using Handler = std::function<Ros2Abb_robot_msgsSrvGetFileContents_Response(Ros2Abb_robot_msgsSrvGetFileContents_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Abb_robot_msgsSrvGetFileContents_Request;
        using Response = Ros2Abb_robot_msgsSrvGetFileContents_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param advertise Distinct advertisement alias bytes, borrowed through construction.
         * @param respond Distinct response alias bytes, borrowed through construction.
         */
        Ros2Abb_robot_msgsSrvGetFileContentsServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /**
         * @brief Replace the owned service callback for the next executor pass.
         * @details The current shared functor remains alive through its pass, including mutable state.
         * Request references are borrowed only during invocation. Allocation and callback exceptions
         * propagate; the pass guard restores reentrancy state. Registration performs no native request.
         * @param handler Owned callable moved into shared callback storage; empty disables dispatch.
         */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        /**
         * @brief Poll one whole native request/goal.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @param ticket Native service ticket output on success.
         * @param request Complete caller-owned request output.
         * @return Original poll/codec result.
         */
        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
            {
                return roswasmc_action_bundle_failure(17);
            }
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            Pass guard{busy_};
            return roswasmc_bounded_2_abb_robot_msgs_srv_GetFileContents_poll(&advertise_, &ticket, &request);
        }

        /**
         * @brief Respond once to the exact native service ticket.
         * @details The complete response is borrowed through encoding and the synchronous import. The host
         * validates ticket/type/role ownership. Do not repeat an uncertain response or respond again to a
         * request already completed by process_once().
         * @param ticket Nonzero pending native service ticket.
         * @param response Complete initialized response.
         * @return Original response/codec result.
         */
        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_abb_robot_msgs_srv_GetFileContents_respond(&respond_, ticket, &response);
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t poll_once()
        {
            return process_once();
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t process_once()
        {
            if(busy_)
            {
                return 17;
            }
            if(error())
            {
                return error();
            }
            auto handler = handler_;
            if(!handler)
            {
                return 22;
            }
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_abb_robot_msgs_srv_GetFileContents_poll(&advertise_, &ticket, &request);
            if(r.error)
            {
                return r.error;
            }
            Response response = (*handler)(request);
            return roswasmc_bounded_2_abb_robot_msgs_srv_GetFileContents_respond(&respond_, ticket, &response).error;
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Abb_robot_msgsSrvGetIOSignalClient.
     * @details This object owns the single service-call capabilities and borrows only the immutable backend.
     * It cannot be copied or moved; context/goal storage stays stable through every call. The caller
     * serializes access and observes explicit cleanup reports before destruction. Callbacks borrow values
     * only during invocation; no hidden thread or retry is created.
     */
    class Ros2Abb_robot_msgsSrvGetIOSignalClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Abb_robot_msgsSrvGetIOSignal_Request;
        using Response = Ros2Abb_robot_msgsSrvGetIOSignal_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param selected Exact operator-granted alias bytes, borrowed through this synchronous open.
         */
        Ros2Abb_robot_msgsSrvGetIOSignalClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
            {
                error_ = 95;
            }
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
            {
                error_ = UWVM_ROS_INVALID;
            }
            if(!error_)
            {
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
            }
        }

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Abb_robot_msgsSrvGetIOSignalClient(Ros2Abb_robot_msgsSrvGetIOSignalClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Abb_robot_msgsSrvGetIOSignalClient& operator= (Ros2Abb_robot_msgsSrvGetIOSignalClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Abb_robot_msgsSrvGetIOSignalClient(Ros2Abb_robot_msgsSrvGetIOSignalClient&&) = delete;

        /**
         * @brief Attempt ordinary retirement of remaining owned roles on destruction.
         * @details The destructor cannot report cleanup errors. Call close or revoke explicitly and retain
         * its status before destruction. The immutable backend must remain alive. Destruction never adds
         * revocation, stronger cancellation, retries or a physical-stop guarantee.
         */
        ~Ros2Abb_robot_msgsSrvGetIOSignalClient()
        {
            if(roswasmc_is_open(&cap_))
            {
                roswasmc_close(&cap_);
            }
        }

        /**
         * @brief Read initialization or retired-owner status without an import.
         * @details This is local owner state rather than native connection health or controller admission. A
         * closed object is not reopened. Preserve later operation and cleanup errors independently.
         * @return The first initialization error, zero while locally open, or 9 after retirement.
         */
        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        /**
         * @brief Inspect whether this object still owns a local role.
         * @details No import, permission lookup or controller health check occurs. A true result does not
         * prove a goal completed or a physical controller is connected.
         * @return Local ownership state.
         */
        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        /**
         * @brief Perform one whole typed service request and decode its complete response.
         * @details Request and response storage are borrowed through this synchronous call. Paired canonical
         * bounds and all original fields remain intact. On transport success inspect native response fields
         * for controller refusal. An uncertain timeout or disconnect is not replayed.
         * @param request Complete initialized request borrowed until return.
         * @param response Caller-owned complete response; inspect after a successful result.
         * @return Original transport/codec status and length facts, without replacing controller fields.
         */
        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_abb_robot_msgs_srv_GetIOSignal_call(&cap_, &request, &response);
        }

        /**
         * @brief Retire owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        /**
         * @brief Revoke owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Abb_robot_msgsSrvGetIOSignalServer.
     * @details This object owns the separate advertisement/response capabilities and borrows only the
     * immutable backend. It cannot be copied or moved; context/goal storage stays stable through every call.
     * The caller serializes access and observes explicit cleanup reports before destruction. Callbacks
     * borrow values only during invocation; no hidden thread or retry is created.
     */
    class Ros2Abb_robot_msgsSrvGetIOSignalServer : public ServerOwners
    {
        using Handler = std::function<Ros2Abb_robot_msgsSrvGetIOSignal_Response(Ros2Abb_robot_msgsSrvGetIOSignal_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Abb_robot_msgsSrvGetIOSignal_Request;
        using Response = Ros2Abb_robot_msgsSrvGetIOSignal_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param advertise Distinct advertisement alias bytes, borrowed through construction.
         * @param respond Distinct response alias bytes, borrowed through construction.
         */
        Ros2Abb_robot_msgsSrvGetIOSignalServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /**
         * @brief Replace the owned service callback for the next executor pass.
         * @details The current shared functor remains alive through its pass, including mutable state.
         * Request references are borrowed only during invocation. Allocation and callback exceptions
         * propagate; the pass guard restores reentrancy state. Registration performs no native request.
         * @param handler Owned callable moved into shared callback storage; empty disables dispatch.
         */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        /**
         * @brief Poll one whole native request/goal.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @param ticket Native service ticket output on success.
         * @param request Complete caller-owned request output.
         * @return Original poll/codec result.
         */
        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
            {
                return roswasmc_action_bundle_failure(17);
            }
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            Pass guard{busy_};
            return roswasmc_bounded_2_abb_robot_msgs_srv_GetIOSignal_poll(&advertise_, &ticket, &request);
        }

        /**
         * @brief Respond once to the exact native service ticket.
         * @details The complete response is borrowed through encoding and the synchronous import. The host
         * validates ticket/type/role ownership. Do not repeat an uncertain response or respond again to a
         * request already completed by process_once().
         * @param ticket Nonzero pending native service ticket.
         * @param response Complete initialized response.
         * @return Original response/codec result.
         */
        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_abb_robot_msgs_srv_GetIOSignal_respond(&respond_, ticket, &response);
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t poll_once()
        {
            return process_once();
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t process_once()
        {
            if(busy_)
            {
                return 17;
            }
            if(error())
            {
                return error();
            }
            auto handler = handler_;
            if(!handler)
            {
                return 22;
            }
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_abb_robot_msgs_srv_GetIOSignal_poll(&advertise_, &ticket, &request);
            if(r.error)
            {
                return r.error;
            }
            Response response = (*handler)(request);
            return roswasmc_bounded_2_abb_robot_msgs_srv_GetIOSignal_respond(&respond_, ticket, &response).error;
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Abb_robot_msgsSrvGetRAPIDBoolClient.
     * @details This object owns the single service-call capabilities and borrows only the immutable backend.
     * It cannot be copied or moved; context/goal storage stays stable through every call. The caller
     * serializes access and observes explicit cleanup reports before destruction. Callbacks borrow values
     * only during invocation; no hidden thread or retry is created.
     */
    class Ros2Abb_robot_msgsSrvGetRAPIDBoolClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Abb_robot_msgsSrvGetRAPIDBool_Request;
        using Response = Ros2Abb_robot_msgsSrvGetRAPIDBool_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param selected Exact operator-granted alias bytes, borrowed through this synchronous open.
         */
        Ros2Abb_robot_msgsSrvGetRAPIDBoolClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
            {
                error_ = 95;
            }
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
            {
                error_ = UWVM_ROS_INVALID;
            }
            if(!error_)
            {
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
            }
        }

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Abb_robot_msgsSrvGetRAPIDBoolClient(Ros2Abb_robot_msgsSrvGetRAPIDBoolClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Abb_robot_msgsSrvGetRAPIDBoolClient& operator= (Ros2Abb_robot_msgsSrvGetRAPIDBoolClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Abb_robot_msgsSrvGetRAPIDBoolClient(Ros2Abb_robot_msgsSrvGetRAPIDBoolClient&&) = delete;

        /**
         * @brief Attempt ordinary retirement of remaining owned roles on destruction.
         * @details The destructor cannot report cleanup errors. Call close or revoke explicitly and retain
         * its status before destruction. The immutable backend must remain alive. Destruction never adds
         * revocation, stronger cancellation, retries or a physical-stop guarantee.
         */
        ~Ros2Abb_robot_msgsSrvGetRAPIDBoolClient()
        {
            if(roswasmc_is_open(&cap_))
            {
                roswasmc_close(&cap_);
            }
        }

        /**
         * @brief Read initialization or retired-owner status without an import.
         * @details This is local owner state rather than native connection health or controller admission. A
         * closed object is not reopened. Preserve later operation and cleanup errors independently.
         * @return The first initialization error, zero while locally open, or 9 after retirement.
         */
        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        /**
         * @brief Inspect whether this object still owns a local role.
         * @details No import, permission lookup or controller health check occurs. A true result does not
         * prove a goal completed or a physical controller is connected.
         * @return Local ownership state.
         */
        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        /**
         * @brief Perform one whole typed service request and decode its complete response.
         * @details Request and response storage are borrowed through this synchronous call. Paired canonical
         * bounds and all original fields remain intact. On transport success inspect native response fields
         * for controller refusal. An uncertain timeout or disconnect is not replayed.
         * @param request Complete initialized request borrowed until return.
         * @param response Caller-owned complete response; inspect after a successful result.
         * @return Original transport/codec status and length facts, without replacing controller fields.
         */
        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_abb_robot_msgs_srv_GetRAPIDBool_call(&cap_, &request, &response);
        }

        /**
         * @brief Retire owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        /**
         * @brief Revoke owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Abb_robot_msgsSrvGetRAPIDBoolServer.
     * @details This object owns the separate advertisement/response capabilities and borrows only the
     * immutable backend. It cannot be copied or moved; context/goal storage stays stable through every call.
     * The caller serializes access and observes explicit cleanup reports before destruction. Callbacks
     * borrow values only during invocation; no hidden thread or retry is created.
     */
    class Ros2Abb_robot_msgsSrvGetRAPIDBoolServer : public ServerOwners
    {
        using Handler = std::function<Ros2Abb_robot_msgsSrvGetRAPIDBool_Response(Ros2Abb_robot_msgsSrvGetRAPIDBool_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Abb_robot_msgsSrvGetRAPIDBool_Request;
        using Response = Ros2Abb_robot_msgsSrvGetRAPIDBool_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param advertise Distinct advertisement alias bytes, borrowed through construction.
         * @param respond Distinct response alias bytes, borrowed through construction.
         */
        Ros2Abb_robot_msgsSrvGetRAPIDBoolServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /**
         * @brief Replace the owned service callback for the next executor pass.
         * @details The current shared functor remains alive through its pass, including mutable state.
         * Request references are borrowed only during invocation. Allocation and callback exceptions
         * propagate; the pass guard restores reentrancy state. Registration performs no native request.
         * @param handler Owned callable moved into shared callback storage; empty disables dispatch.
         */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        /**
         * @brief Poll one whole native request/goal.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @param ticket Native service ticket output on success.
         * @param request Complete caller-owned request output.
         * @return Original poll/codec result.
         */
        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
            {
                return roswasmc_action_bundle_failure(17);
            }
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            Pass guard{busy_};
            return roswasmc_bounded_2_abb_robot_msgs_srv_GetRAPIDBool_poll(&advertise_, &ticket, &request);
        }

        /**
         * @brief Respond once to the exact native service ticket.
         * @details The complete response is borrowed through encoding and the synchronous import. The host
         * validates ticket/type/role ownership. Do not repeat an uncertain response or respond again to a
         * request already completed by process_once().
         * @param ticket Nonzero pending native service ticket.
         * @param response Complete initialized response.
         * @return Original response/codec result.
         */
        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_abb_robot_msgs_srv_GetRAPIDBool_respond(&respond_, ticket, &response);
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t poll_once()
        {
            return process_once();
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t process_once()
        {
            if(busy_)
            {
                return 17;
            }
            if(error())
            {
                return error();
            }
            auto handler = handler_;
            if(!handler)
            {
                return 22;
            }
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_abb_robot_msgs_srv_GetRAPIDBool_poll(&advertise_, &ticket, &request);
            if(r.error)
            {
                return r.error;
            }
            Response response = (*handler)(request);
            return roswasmc_bounded_2_abb_robot_msgs_srv_GetRAPIDBool_respond(&respond_, ticket, &response).error;
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Abb_robot_msgsSrvGetRAPIDDnumClient.
     * @details This object owns the single service-call capabilities and borrows only the immutable backend.
     * It cannot be copied or moved; context/goal storage stays stable through every call. The caller
     * serializes access and observes explicit cleanup reports before destruction. Callbacks borrow values
     * only during invocation; no hidden thread or retry is created.
     */
    class Ros2Abb_robot_msgsSrvGetRAPIDDnumClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request;
        using Response = Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param selected Exact operator-granted alias bytes, borrowed through this synchronous open.
         */
        Ros2Abb_robot_msgsSrvGetRAPIDDnumClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
            {
                error_ = 95;
            }
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
            {
                error_ = UWVM_ROS_INVALID;
            }
            if(!error_)
            {
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
            }
        }

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Abb_robot_msgsSrvGetRAPIDDnumClient(Ros2Abb_robot_msgsSrvGetRAPIDDnumClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Abb_robot_msgsSrvGetRAPIDDnumClient& operator= (Ros2Abb_robot_msgsSrvGetRAPIDDnumClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Abb_robot_msgsSrvGetRAPIDDnumClient(Ros2Abb_robot_msgsSrvGetRAPIDDnumClient&&) = delete;

        /**
         * @brief Attempt ordinary retirement of remaining owned roles on destruction.
         * @details The destructor cannot report cleanup errors. Call close or revoke explicitly and retain
         * its status before destruction. The immutable backend must remain alive. Destruction never adds
         * revocation, stronger cancellation, retries or a physical-stop guarantee.
         */
        ~Ros2Abb_robot_msgsSrvGetRAPIDDnumClient()
        {
            if(roswasmc_is_open(&cap_))
            {
                roswasmc_close(&cap_);
            }
        }

        /**
         * @brief Read initialization or retired-owner status without an import.
         * @details This is local owner state rather than native connection health or controller admission. A
         * closed object is not reopened. Preserve later operation and cleanup errors independently.
         * @return The first initialization error, zero while locally open, or 9 after retirement.
         */
        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        /**
         * @brief Inspect whether this object still owns a local role.
         * @details No import, permission lookup or controller health check occurs. A true result does not
         * prove a goal completed or a physical controller is connected.
         * @return Local ownership state.
         */
        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        /**
         * @brief Perform one whole typed service request and decode its complete response.
         * @details Request and response storage are borrowed through this synchronous call. Paired canonical
         * bounds and all original fields remain intact. On transport success inspect native response fields
         * for controller refusal. An uncertain timeout or disconnect is not replayed.
         * @param request Complete initialized request borrowed until return.
         * @param response Caller-owned complete response; inspect after a successful result.
         * @return Original transport/codec status and length facts, without replacing controller fields.
         */
        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_abb_robot_msgs_srv_GetRAPIDDnum_call(&cap_, &request, &response);
        }

        /**
         * @brief Retire owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        /**
         * @brief Revoke owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Abb_robot_msgsSrvGetRAPIDDnumServer.
     * @details This object owns the separate advertisement/response capabilities and borrows only the
     * immutable backend. It cannot be copied or moved; context/goal storage stays stable through every call.
     * The caller serializes access and observes explicit cleanup reports before destruction. Callbacks
     * borrow values only during invocation; no hidden thread or retry is created.
     */
    class Ros2Abb_robot_msgsSrvGetRAPIDDnumServer : public ServerOwners
    {
        using Handler = std::function<Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response(Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request;
        using Response = Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param advertise Distinct advertisement alias bytes, borrowed through construction.
         * @param respond Distinct response alias bytes, borrowed through construction.
         */
        Ros2Abb_robot_msgsSrvGetRAPIDDnumServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /**
         * @brief Replace the owned service callback for the next executor pass.
         * @details The current shared functor remains alive through its pass, including mutable state.
         * Request references are borrowed only during invocation. Allocation and callback exceptions
         * propagate; the pass guard restores reentrancy state. Registration performs no native request.
         * @param handler Owned callable moved into shared callback storage; empty disables dispatch.
         */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        /**
         * @brief Poll one whole native request/goal.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @param ticket Native service ticket output on success.
         * @param request Complete caller-owned request output.
         * @return Original poll/codec result.
         */
        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
            {
                return roswasmc_action_bundle_failure(17);
            }
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            Pass guard{busy_};
            return roswasmc_bounded_2_abb_robot_msgs_srv_GetRAPIDDnum_poll(&advertise_, &ticket, &request);
        }

        /**
         * @brief Respond once to the exact native service ticket.
         * @details The complete response is borrowed through encoding and the synchronous import. The host
         * validates ticket/type/role ownership. Do not repeat an uncertain response or respond again to a
         * request already completed by process_once().
         * @param ticket Nonzero pending native service ticket.
         * @param response Complete initialized response.
         * @return Original response/codec result.
         */
        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_abb_robot_msgs_srv_GetRAPIDDnum_respond(&respond_, ticket, &response);
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t poll_once()
        {
            return process_once();
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t process_once()
        {
            if(busy_)
            {
                return 17;
            }
            if(error())
            {
                return error();
            }
            auto handler = handler_;
            if(!handler)
            {
                return 22;
            }
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_abb_robot_msgs_srv_GetRAPIDDnum_poll(&advertise_, &ticket, &request);
            if(r.error)
            {
                return r.error;
            }
            Response response = (*handler)(request);
            return roswasmc_bounded_2_abb_robot_msgs_srv_GetRAPIDDnum_respond(&respond_, ticket, &response).error;
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Abb_robot_msgsSrvGetRAPIDNumClient.
     * @details This object owns the single service-call capabilities and borrows only the immutable backend.
     * It cannot be copied or moved; context/goal storage stays stable through every call. The caller
     * serializes access and observes explicit cleanup reports before destruction. Callbacks borrow values
     * only during invocation; no hidden thread or retry is created.
     */
    class Ros2Abb_robot_msgsSrvGetRAPIDNumClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Abb_robot_msgsSrvGetRAPIDNum_Request;
        using Response = Ros2Abb_robot_msgsSrvGetRAPIDNum_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param selected Exact operator-granted alias bytes, borrowed through this synchronous open.
         */
        Ros2Abb_robot_msgsSrvGetRAPIDNumClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
            {
                error_ = 95;
            }
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
            {
                error_ = UWVM_ROS_INVALID;
            }
            if(!error_)
            {
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
            }
        }

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Abb_robot_msgsSrvGetRAPIDNumClient(Ros2Abb_robot_msgsSrvGetRAPIDNumClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Abb_robot_msgsSrvGetRAPIDNumClient& operator= (Ros2Abb_robot_msgsSrvGetRAPIDNumClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Abb_robot_msgsSrvGetRAPIDNumClient(Ros2Abb_robot_msgsSrvGetRAPIDNumClient&&) = delete;

        /**
         * @brief Attempt ordinary retirement of remaining owned roles on destruction.
         * @details The destructor cannot report cleanup errors. Call close or revoke explicitly and retain
         * its status before destruction. The immutable backend must remain alive. Destruction never adds
         * revocation, stronger cancellation, retries or a physical-stop guarantee.
         */
        ~Ros2Abb_robot_msgsSrvGetRAPIDNumClient()
        {
            if(roswasmc_is_open(&cap_))
            {
                roswasmc_close(&cap_);
            }
        }

        /**
         * @brief Read initialization or retired-owner status without an import.
         * @details This is local owner state rather than native connection health or controller admission. A
         * closed object is not reopened. Preserve later operation and cleanup errors independently.
         * @return The first initialization error, zero while locally open, or 9 after retirement.
         */
        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        /**
         * @brief Inspect whether this object still owns a local role.
         * @details No import, permission lookup or controller health check occurs. A true result does not
         * prove a goal completed or a physical controller is connected.
         * @return Local ownership state.
         */
        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        /**
         * @brief Perform one whole typed service request and decode its complete response.
         * @details Request and response storage are borrowed through this synchronous call. Paired canonical
         * bounds and all original fields remain intact. On transport success inspect native response fields
         * for controller refusal. An uncertain timeout or disconnect is not replayed.
         * @param request Complete initialized request borrowed until return.
         * @param response Caller-owned complete response; inspect after a successful result.
         * @return Original transport/codec status and length facts, without replacing controller fields.
         */
        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_abb_robot_msgs_srv_GetRAPIDNum_call(&cap_, &request, &response);
        }

        /**
         * @brief Retire owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        /**
         * @brief Revoke owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Abb_robot_msgsSrvGetRAPIDNumServer.
     * @details This object owns the separate advertisement/response capabilities and borrows only the
     * immutable backend. It cannot be copied or moved; context/goal storage stays stable through every call.
     * The caller serializes access and observes explicit cleanup reports before destruction. Callbacks
     * borrow values only during invocation; no hidden thread or retry is created.
     */
    class Ros2Abb_robot_msgsSrvGetRAPIDNumServer : public ServerOwners
    {
        using Handler = std::function<Ros2Abb_robot_msgsSrvGetRAPIDNum_Response(Ros2Abb_robot_msgsSrvGetRAPIDNum_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Abb_robot_msgsSrvGetRAPIDNum_Request;
        using Response = Ros2Abb_robot_msgsSrvGetRAPIDNum_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param advertise Distinct advertisement alias bytes, borrowed through construction.
         * @param respond Distinct response alias bytes, borrowed through construction.
         */
        Ros2Abb_robot_msgsSrvGetRAPIDNumServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /**
         * @brief Replace the owned service callback for the next executor pass.
         * @details The current shared functor remains alive through its pass, including mutable state.
         * Request references are borrowed only during invocation. Allocation and callback exceptions
         * propagate; the pass guard restores reentrancy state. Registration performs no native request.
         * @param handler Owned callable moved into shared callback storage; empty disables dispatch.
         */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        /**
         * @brief Poll one whole native request/goal.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @param ticket Native service ticket output on success.
         * @param request Complete caller-owned request output.
         * @return Original poll/codec result.
         */
        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
            {
                return roswasmc_action_bundle_failure(17);
            }
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            Pass guard{busy_};
            return roswasmc_bounded_2_abb_robot_msgs_srv_GetRAPIDNum_poll(&advertise_, &ticket, &request);
        }

        /**
         * @brief Respond once to the exact native service ticket.
         * @details The complete response is borrowed through encoding and the synchronous import. The host
         * validates ticket/type/role ownership. Do not repeat an uncertain response or respond again to a
         * request already completed by process_once().
         * @param ticket Nonzero pending native service ticket.
         * @param response Complete initialized response.
         * @return Original response/codec result.
         */
        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_abb_robot_msgs_srv_GetRAPIDNum_respond(&respond_, ticket, &response);
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t poll_once()
        {
            return process_once();
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t process_once()
        {
            if(busy_)
            {
                return 17;
            }
            if(error())
            {
                return error();
            }
            auto handler = handler_;
            if(!handler)
            {
                return 22;
            }
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_abb_robot_msgs_srv_GetRAPIDNum_poll(&advertise_, &ticket, &request);
            if(r.error)
            {
                return r.error;
            }
            Response response = (*handler)(request);
            return roswasmc_bounded_2_abb_robot_msgs_srv_GetRAPIDNum_respond(&respond_, ticket, &response).error;
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Abb_robot_msgsSrvGetRAPIDStringClient.
     * @details This object owns the single service-call capabilities and borrows only the immutable backend.
     * It cannot be copied or moved; context/goal storage stays stable through every call. The caller
     * serializes access and observes explicit cleanup reports before destruction. Callbacks borrow values
     * only during invocation; no hidden thread or retry is created.
     */
    class Ros2Abb_robot_msgsSrvGetRAPIDStringClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Abb_robot_msgsSrvGetRAPIDString_Request;
        using Response = Ros2Abb_robot_msgsSrvGetRAPIDString_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param selected Exact operator-granted alias bytes, borrowed through this synchronous open.
         */
        Ros2Abb_robot_msgsSrvGetRAPIDStringClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
            {
                error_ = 95;
            }
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
            {
                error_ = UWVM_ROS_INVALID;
            }
            if(!error_)
            {
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
            }
        }

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Abb_robot_msgsSrvGetRAPIDStringClient(Ros2Abb_robot_msgsSrvGetRAPIDStringClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Abb_robot_msgsSrvGetRAPIDStringClient& operator= (Ros2Abb_robot_msgsSrvGetRAPIDStringClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Abb_robot_msgsSrvGetRAPIDStringClient(Ros2Abb_robot_msgsSrvGetRAPIDStringClient&&) = delete;

        /**
         * @brief Attempt ordinary retirement of remaining owned roles on destruction.
         * @details The destructor cannot report cleanup errors. Call close or revoke explicitly and retain
         * its status before destruction. The immutable backend must remain alive. Destruction never adds
         * revocation, stronger cancellation, retries or a physical-stop guarantee.
         */
        ~Ros2Abb_robot_msgsSrvGetRAPIDStringClient()
        {
            if(roswasmc_is_open(&cap_))
            {
                roswasmc_close(&cap_);
            }
        }

        /**
         * @brief Read initialization or retired-owner status without an import.
         * @details This is local owner state rather than native connection health or controller admission. A
         * closed object is not reopened. Preserve later operation and cleanup errors independently.
         * @return The first initialization error, zero while locally open, or 9 after retirement.
         */
        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        /**
         * @brief Inspect whether this object still owns a local role.
         * @details No import, permission lookup or controller health check occurs. A true result does not
         * prove a goal completed or a physical controller is connected.
         * @return Local ownership state.
         */
        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        /**
         * @brief Perform one whole typed service request and decode its complete response.
         * @details Request and response storage are borrowed through this synchronous call. Paired canonical
         * bounds and all original fields remain intact. On transport success inspect native response fields
         * for controller refusal. An uncertain timeout or disconnect is not replayed.
         * @param request Complete initialized request borrowed until return.
         * @param response Caller-owned complete response; inspect after a successful result.
         * @return Original transport/codec status and length facts, without replacing controller fields.
         */
        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_abb_robot_msgs_srv_GetRAPIDString_call(&cap_, &request, &response);
        }

        /**
         * @brief Retire owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        /**
         * @brief Revoke owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Abb_robot_msgsSrvGetRAPIDStringServer.
     * @details This object owns the separate advertisement/response capabilities and borrows only the
     * immutable backend. It cannot be copied or moved; context/goal storage stays stable through every call.
     * The caller serializes access and observes explicit cleanup reports before destruction. Callbacks
     * borrow values only during invocation; no hidden thread or retry is created.
     */
    class Ros2Abb_robot_msgsSrvGetRAPIDStringServer : public ServerOwners
    {
        using Handler = std::function<Ros2Abb_robot_msgsSrvGetRAPIDString_Response(Ros2Abb_robot_msgsSrvGetRAPIDString_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Abb_robot_msgsSrvGetRAPIDString_Request;
        using Response = Ros2Abb_robot_msgsSrvGetRAPIDString_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param advertise Distinct advertisement alias bytes, borrowed through construction.
         * @param respond Distinct response alias bytes, borrowed through construction.
         */
        Ros2Abb_robot_msgsSrvGetRAPIDStringServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /**
         * @brief Replace the owned service callback for the next executor pass.
         * @details The current shared functor remains alive through its pass, including mutable state.
         * Request references are borrowed only during invocation. Allocation and callback exceptions
         * propagate; the pass guard restores reentrancy state. Registration performs no native request.
         * @param handler Owned callable moved into shared callback storage; empty disables dispatch.
         */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        /**
         * @brief Poll one whole native request/goal.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @param ticket Native service ticket output on success.
         * @param request Complete caller-owned request output.
         * @return Original poll/codec result.
         */
        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
            {
                return roswasmc_action_bundle_failure(17);
            }
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            Pass guard{busy_};
            return roswasmc_bounded_2_abb_robot_msgs_srv_GetRAPIDString_poll(&advertise_, &ticket, &request);
        }

        /**
         * @brief Respond once to the exact native service ticket.
         * @details The complete response is borrowed through encoding and the synchronous import. The host
         * validates ticket/type/role ownership. Do not repeat an uncertain response or respond again to a
         * request already completed by process_once().
         * @param ticket Nonzero pending native service ticket.
         * @param response Complete initialized response.
         * @return Original response/codec result.
         */
        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_abb_robot_msgs_srv_GetRAPIDString_respond(&respond_, ticket, &response);
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t poll_once()
        {
            return process_once();
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t process_once()
        {
            if(busy_)
            {
                return 17;
            }
            if(error())
            {
                return error();
            }
            auto handler = handler_;
            if(!handler)
            {
                return 22;
            }
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_abb_robot_msgs_srv_GetRAPIDString_poll(&advertise_, &ticket, &request);
            if(r.error)
            {
                return r.error;
            }
            Response response = (*handler)(request);
            return roswasmc_bounded_2_abb_robot_msgs_srv_GetRAPIDString_respond(&respond_, ticket, &response).error;
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Abb_robot_msgsSrvGetRAPIDSymbolClient.
     * @details This object owns the single service-call capabilities and borrows only the immutable backend.
     * It cannot be copied or moved; context/goal storage stays stable through every call. The caller
     * serializes access and observes explicit cleanup reports before destruction. Callbacks borrow values
     * only during invocation; no hidden thread or retry is created.
     */
    class Ros2Abb_robot_msgsSrvGetRAPIDSymbolClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request;
        using Response = Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param selected Exact operator-granted alias bytes, borrowed through this synchronous open.
         */
        Ros2Abb_robot_msgsSrvGetRAPIDSymbolClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
            {
                error_ = 95;
            }
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
            {
                error_ = UWVM_ROS_INVALID;
            }
            if(!error_)
            {
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
            }
        }

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Abb_robot_msgsSrvGetRAPIDSymbolClient(Ros2Abb_robot_msgsSrvGetRAPIDSymbolClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Abb_robot_msgsSrvGetRAPIDSymbolClient& operator= (Ros2Abb_robot_msgsSrvGetRAPIDSymbolClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Abb_robot_msgsSrvGetRAPIDSymbolClient(Ros2Abb_robot_msgsSrvGetRAPIDSymbolClient&&) = delete;

        /**
         * @brief Attempt ordinary retirement of remaining owned roles on destruction.
         * @details The destructor cannot report cleanup errors. Call close or revoke explicitly and retain
         * its status before destruction. The immutable backend must remain alive. Destruction never adds
         * revocation, stronger cancellation, retries or a physical-stop guarantee.
         */
        ~Ros2Abb_robot_msgsSrvGetRAPIDSymbolClient()
        {
            if(roswasmc_is_open(&cap_))
            {
                roswasmc_close(&cap_);
            }
        }

        /**
         * @brief Read initialization or retired-owner status without an import.
         * @details This is local owner state rather than native connection health or controller admission. A
         * closed object is not reopened. Preserve later operation and cleanup errors independently.
         * @return The first initialization error, zero while locally open, or 9 after retirement.
         */
        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        /**
         * @brief Inspect whether this object still owns a local role.
         * @details No import, permission lookup or controller health check occurs. A true result does not
         * prove a goal completed or a physical controller is connected.
         * @return Local ownership state.
         */
        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        /**
         * @brief Perform one whole typed service request and decode its complete response.
         * @details Request and response storage are borrowed through this synchronous call. Paired canonical
         * bounds and all original fields remain intact. On transport success inspect native response fields
         * for controller refusal. An uncertain timeout or disconnect is not replayed.
         * @param request Complete initialized request borrowed until return.
         * @param response Caller-owned complete response; inspect after a successful result.
         * @return Original transport/codec status and length facts, without replacing controller fields.
         */
        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_abb_robot_msgs_srv_GetRAPIDSymbol_call(&cap_, &request, &response);
        }

        /**
         * @brief Retire owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        /**
         * @brief Revoke owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Abb_robot_msgsSrvGetRAPIDSymbolServer.
     * @details This object owns the separate advertisement/response capabilities and borrows only the
     * immutable backend. It cannot be copied or moved; context/goal storage stays stable through every call.
     * The caller serializes access and observes explicit cleanup reports before destruction. Callbacks
     * borrow values only during invocation; no hidden thread or retry is created.
     */
    class Ros2Abb_robot_msgsSrvGetRAPIDSymbolServer : public ServerOwners
    {
        using Handler = std::function<Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response(Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request;
        using Response = Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param advertise Distinct advertisement alias bytes, borrowed through construction.
         * @param respond Distinct response alias bytes, borrowed through construction.
         */
        Ros2Abb_robot_msgsSrvGetRAPIDSymbolServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /**
         * @brief Replace the owned service callback for the next executor pass.
         * @details The current shared functor remains alive through its pass, including mutable state.
         * Request references are borrowed only during invocation. Allocation and callback exceptions
         * propagate; the pass guard restores reentrancy state. Registration performs no native request.
         * @param handler Owned callable moved into shared callback storage; empty disables dispatch.
         */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        /**
         * @brief Poll one whole native request/goal.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @param ticket Native service ticket output on success.
         * @param request Complete caller-owned request output.
         * @return Original poll/codec result.
         */
        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
            {
                return roswasmc_action_bundle_failure(17);
            }
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            Pass guard{busy_};
            return roswasmc_bounded_2_abb_robot_msgs_srv_GetRAPIDSymbol_poll(&advertise_, &ticket, &request);
        }

        /**
         * @brief Respond once to the exact native service ticket.
         * @details The complete response is borrowed through encoding and the synchronous import. The host
         * validates ticket/type/role ownership. Do not repeat an uncertain response or respond again to a
         * request already completed by process_once().
         * @param ticket Nonzero pending native service ticket.
         * @param response Complete initialized response.
         * @return Original response/codec result.
         */
        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_abb_robot_msgs_srv_GetRAPIDSymbol_respond(&respond_, ticket, &response);
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t poll_once()
        {
            return process_once();
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t process_once()
        {
            if(busy_)
            {
                return 17;
            }
            if(error())
            {
                return error();
            }
            auto handler = handler_;
            if(!handler)
            {
                return 22;
            }
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_abb_robot_msgs_srv_GetRAPIDSymbol_poll(&advertise_, &ticket, &request);
            if(r.error)
            {
                return r.error;
            }
            Response response = (*handler)(request);
            return roswasmc_bounded_2_abb_robot_msgs_srv_GetRAPIDSymbol_respond(&respond_, ticket, &response).error;
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Abb_robot_msgsSrvGetRobotControllerDescriptionClient.
     * @details This object owns the single service-call capabilities and borrows only the immutable backend.
     * It cannot be copied or moved; context/goal storage stays stable through every call. The caller
     * serializes access and observes explicit cleanup reports before destruction. Callbacks borrow values
     * only during invocation; no hidden thread or retry is created.
     */
    class Ros2Abb_robot_msgsSrvGetRobotControllerDescriptionClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request;
        using Response = Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param selected Exact operator-granted alias bytes, borrowed through this synchronous open.
         */
        Ros2Abb_robot_msgsSrvGetRobotControllerDescriptionClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
            {
                error_ = 95;
            }
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
            {
                error_ = UWVM_ROS_INVALID;
            }
            if(!error_)
            {
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
            }
        }

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Abb_robot_msgsSrvGetRobotControllerDescriptionClient(Ros2Abb_robot_msgsSrvGetRobotControllerDescriptionClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Abb_robot_msgsSrvGetRobotControllerDescriptionClient& operator= (Ros2Abb_robot_msgsSrvGetRobotControllerDescriptionClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Abb_robot_msgsSrvGetRobotControllerDescriptionClient(Ros2Abb_robot_msgsSrvGetRobotControllerDescriptionClient&&) = delete;

        /**
         * @brief Attempt ordinary retirement of remaining owned roles on destruction.
         * @details The destructor cannot report cleanup errors. Call close or revoke explicitly and retain
         * its status before destruction. The immutable backend must remain alive. Destruction never adds
         * revocation, stronger cancellation, retries or a physical-stop guarantee.
         */
        ~Ros2Abb_robot_msgsSrvGetRobotControllerDescriptionClient()
        {
            if(roswasmc_is_open(&cap_))
            {
                roswasmc_close(&cap_);
            }
        }

        /**
         * @brief Read initialization or retired-owner status without an import.
         * @details This is local owner state rather than native connection health or controller admission. A
         * closed object is not reopened. Preserve later operation and cleanup errors independently.
         * @return The first initialization error, zero while locally open, or 9 after retirement.
         */
        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        /**
         * @brief Inspect whether this object still owns a local role.
         * @details No import, permission lookup or controller health check occurs. A true result does not
         * prove a goal completed or a physical controller is connected.
         * @return Local ownership state.
         */
        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        /**
         * @brief Perform one whole typed service request and decode its complete response.
         * @details Request and response storage are borrowed through this synchronous call. Paired canonical
         * bounds and all original fields remain intact. On transport success inspect native response fields
         * for controller refusal. An uncertain timeout or disconnect is not replayed.
         * @param request Complete initialized request borrowed until return.
         * @param response Caller-owned complete response; inspect after a successful result.
         * @return Original transport/codec status and length facts, without replacing controller fields.
         */
        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_abb_robot_msgs_srv_GetRobotControllerDescription_call(&cap_, &request, &response);
        }

        /**
         * @brief Retire owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        /**
         * @brief Revoke owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Abb_robot_msgsSrvGetRobotControllerDescriptionServer.
     * @details This object owns the separate advertisement/response capabilities and borrows only the
     * immutable backend. It cannot be copied or moved; context/goal storage stays stable through every call.
     * The caller serializes access and observes explicit cleanup reports before destruction. Callbacks
     * borrow values only during invocation; no hidden thread or retry is created.
     */
    class Ros2Abb_robot_msgsSrvGetRobotControllerDescriptionServer : public ServerOwners
    {
        using Handler =
            std::function<Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response(Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request;
        using Response = Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param advertise Distinct advertisement alias bytes, borrowed through construction.
         * @param respond Distinct response alias bytes, borrowed through construction.
         */
        Ros2Abb_robot_msgsSrvGetRobotControllerDescriptionServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /**
         * @brief Replace the owned service callback for the next executor pass.
         * @details The current shared functor remains alive through its pass, including mutable state.
         * Request references are borrowed only during invocation. Allocation and callback exceptions
         * propagate; the pass guard restores reentrancy state. Registration performs no native request.
         * @param handler Owned callable moved into shared callback storage; empty disables dispatch.
         */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        /**
         * @brief Poll one whole native request/goal.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @param ticket Native service ticket output on success.
         * @param request Complete caller-owned request output.
         * @return Original poll/codec result.
         */
        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
            {
                return roswasmc_action_bundle_failure(17);
            }
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            Pass guard{busy_};
            return roswasmc_bounded_2_abb_robot_msgs_srv_GetRobotControllerDescription_poll(&advertise_, &ticket, &request);
        }

        /**
         * @brief Respond once to the exact native service ticket.
         * @details The complete response is borrowed through encoding and the synchronous import. The host
         * validates ticket/type/role ownership. Do not repeat an uncertain response or respond again to a
         * request already completed by process_once().
         * @param ticket Nonzero pending native service ticket.
         * @param response Complete initialized response.
         * @return Original response/codec result.
         */
        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_abb_robot_msgs_srv_GetRobotControllerDescription_respond(&respond_, ticket, &response);
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t poll_once()
        {
            return process_once();
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t process_once()
        {
            if(busy_)
            {
                return 17;
            }
            if(error())
            {
                return error();
            }
            auto handler = handler_;
            if(!handler)
            {
                return 22;
            }
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_abb_robot_msgs_srv_GetRobotControllerDescription_poll(&advertise_, &ticket, &request);
            if(r.error)
            {
                return r.error;
            }
            Response response = (*handler)(request);
            return roswasmc_bounded_2_abb_robot_msgs_srv_GetRobotControllerDescription_respond(&respond_, ticket, &response).error;
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Abb_robot_msgsSrvGetSpeedRatioClient.
     * @details This object owns the single service-call capabilities and borrows only the immutable backend.
     * It cannot be copied or moved; context/goal storage stays stable through every call. The caller
     * serializes access and observes explicit cleanup reports before destruction. Callbacks borrow values
     * only during invocation; no hidden thread or retry is created.
     */
    class Ros2Abb_robot_msgsSrvGetSpeedRatioClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Abb_robot_msgsSrvGetSpeedRatio_Request;
        using Response = Ros2Abb_robot_msgsSrvGetSpeedRatio_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param selected Exact operator-granted alias bytes, borrowed through this synchronous open.
         */
        Ros2Abb_robot_msgsSrvGetSpeedRatioClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
            {
                error_ = 95;
            }
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
            {
                error_ = UWVM_ROS_INVALID;
            }
            if(!error_)
            {
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
            }
        }

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Abb_robot_msgsSrvGetSpeedRatioClient(Ros2Abb_robot_msgsSrvGetSpeedRatioClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Abb_robot_msgsSrvGetSpeedRatioClient& operator= (Ros2Abb_robot_msgsSrvGetSpeedRatioClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Abb_robot_msgsSrvGetSpeedRatioClient(Ros2Abb_robot_msgsSrvGetSpeedRatioClient&&) = delete;

        /**
         * @brief Attempt ordinary retirement of remaining owned roles on destruction.
         * @details The destructor cannot report cleanup errors. Call close or revoke explicitly and retain
         * its status before destruction. The immutable backend must remain alive. Destruction never adds
         * revocation, stronger cancellation, retries or a physical-stop guarantee.
         */
        ~Ros2Abb_robot_msgsSrvGetSpeedRatioClient()
        {
            if(roswasmc_is_open(&cap_))
            {
                roswasmc_close(&cap_);
            }
        }

        /**
         * @brief Read initialization or retired-owner status without an import.
         * @details This is local owner state rather than native connection health or controller admission. A
         * closed object is not reopened. Preserve later operation and cleanup errors independently.
         * @return The first initialization error, zero while locally open, or 9 after retirement.
         */
        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        /**
         * @brief Inspect whether this object still owns a local role.
         * @details No import, permission lookup or controller health check occurs. A true result does not
         * prove a goal completed or a physical controller is connected.
         * @return Local ownership state.
         */
        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        /**
         * @brief Perform one whole typed service request and decode its complete response.
         * @details Request and response storage are borrowed through this synchronous call. Paired canonical
         * bounds and all original fields remain intact. On transport success inspect native response fields
         * for controller refusal. An uncertain timeout or disconnect is not replayed.
         * @param request Complete initialized request borrowed until return.
         * @param response Caller-owned complete response; inspect after a successful result.
         * @return Original transport/codec status and length facts, without replacing controller fields.
         */
        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_abb_robot_msgs_srv_GetSpeedRatio_call(&cap_, &request, &response);
        }

        /**
         * @brief Retire owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        /**
         * @brief Revoke owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Abb_robot_msgsSrvGetSpeedRatioServer.
     * @details This object owns the separate advertisement/response capabilities and borrows only the
     * immutable backend. It cannot be copied or moved; context/goal storage stays stable through every call.
     * The caller serializes access and observes explicit cleanup reports before destruction. Callbacks
     * borrow values only during invocation; no hidden thread or retry is created.
     */
    class Ros2Abb_robot_msgsSrvGetSpeedRatioServer : public ServerOwners
    {
        using Handler = std::function<Ros2Abb_robot_msgsSrvGetSpeedRatio_Response(Ros2Abb_robot_msgsSrvGetSpeedRatio_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Abb_robot_msgsSrvGetSpeedRatio_Request;
        using Response = Ros2Abb_robot_msgsSrvGetSpeedRatio_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param advertise Distinct advertisement alias bytes, borrowed through construction.
         * @param respond Distinct response alias bytes, borrowed through construction.
         */
        Ros2Abb_robot_msgsSrvGetSpeedRatioServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /**
         * @brief Replace the owned service callback for the next executor pass.
         * @details The current shared functor remains alive through its pass, including mutable state.
         * Request references are borrowed only during invocation. Allocation and callback exceptions
         * propagate; the pass guard restores reentrancy state. Registration performs no native request.
         * @param handler Owned callable moved into shared callback storage; empty disables dispatch.
         */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        /**
         * @brief Poll one whole native request/goal.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @param ticket Native service ticket output on success.
         * @param request Complete caller-owned request output.
         * @return Original poll/codec result.
         */
        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
            {
                return roswasmc_action_bundle_failure(17);
            }
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            Pass guard{busy_};
            return roswasmc_bounded_2_abb_robot_msgs_srv_GetSpeedRatio_poll(&advertise_, &ticket, &request);
        }

        /**
         * @brief Respond once to the exact native service ticket.
         * @details The complete response is borrowed through encoding and the synchronous import. The host
         * validates ticket/type/role ownership. Do not repeat an uncertain response or respond again to a
         * request already completed by process_once().
         * @param ticket Nonzero pending native service ticket.
         * @param response Complete initialized response.
         * @return Original response/codec result.
         */
        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_abb_robot_msgs_srv_GetSpeedRatio_respond(&respond_, ticket, &response);
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t poll_once()
        {
            return process_once();
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t process_once()
        {
            if(busy_)
            {
                return 17;
            }
            if(error())
            {
                return error();
            }
            auto handler = handler_;
            if(!handler)
            {
                return 22;
            }
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_abb_robot_msgs_srv_GetSpeedRatio_poll(&advertise_, &ticket, &request);
            if(r.error)
            {
                return r.error;
            }
            Response response = (*handler)(request);
            return roswasmc_bounded_2_abb_robot_msgs_srv_GetSpeedRatio_respond(&respond_, ticket, &response).error;
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Abb_robot_msgsSrvSetFileContentsClient.
     * @details This object owns the single service-call capabilities and borrows only the immutable backend.
     * It cannot be copied or moved; context/goal storage stays stable through every call. The caller
     * serializes access and observes explicit cleanup reports before destruction. Callbacks borrow values
     * only during invocation; no hidden thread or retry is created.
     */
    class Ros2Abb_robot_msgsSrvSetFileContentsClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Abb_robot_msgsSrvSetFileContents_Request;
        using Response = Ros2Abb_robot_msgsSrvSetFileContents_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param selected Exact operator-granted alias bytes, borrowed through this synchronous open.
         */
        Ros2Abb_robot_msgsSrvSetFileContentsClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
            {
                error_ = 95;
            }
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
            {
                error_ = UWVM_ROS_INVALID;
            }
            if(!error_)
            {
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
            }
        }

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Abb_robot_msgsSrvSetFileContentsClient(Ros2Abb_robot_msgsSrvSetFileContentsClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Abb_robot_msgsSrvSetFileContentsClient& operator= (Ros2Abb_robot_msgsSrvSetFileContentsClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Abb_robot_msgsSrvSetFileContentsClient(Ros2Abb_robot_msgsSrvSetFileContentsClient&&) = delete;

        /**
         * @brief Attempt ordinary retirement of remaining owned roles on destruction.
         * @details The destructor cannot report cleanup errors. Call close or revoke explicitly and retain
         * its status before destruction. The immutable backend must remain alive. Destruction never adds
         * revocation, stronger cancellation, retries or a physical-stop guarantee.
         */
        ~Ros2Abb_robot_msgsSrvSetFileContentsClient()
        {
            if(roswasmc_is_open(&cap_))
            {
                roswasmc_close(&cap_);
            }
        }

        /**
         * @brief Read initialization or retired-owner status without an import.
         * @details This is local owner state rather than native connection health or controller admission. A
         * closed object is not reopened. Preserve later operation and cleanup errors independently.
         * @return The first initialization error, zero while locally open, or 9 after retirement.
         */
        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        /**
         * @brief Inspect whether this object still owns a local role.
         * @details No import, permission lookup or controller health check occurs. A true result does not
         * prove a goal completed or a physical controller is connected.
         * @return Local ownership state.
         */
        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        /**
         * @brief Perform one whole typed service request and decode its complete response.
         * @details Request and response storage are borrowed through this synchronous call. Paired canonical
         * bounds and all original fields remain intact. On transport success inspect native response fields
         * for controller refusal. An uncertain timeout or disconnect is not replayed.
         * @param request Complete initialized request borrowed until return.
         * @param response Caller-owned complete response; inspect after a successful result.
         * @return Original transport/codec status and length facts, without replacing controller fields.
         */
        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_abb_robot_msgs_srv_SetFileContents_call(&cap_, &request, &response);
        }

        /**
         * @brief Retire owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        /**
         * @brief Revoke owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Abb_robot_msgsSrvSetFileContentsServer.
     * @details This object owns the separate advertisement/response capabilities and borrows only the
     * immutable backend. It cannot be copied or moved; context/goal storage stays stable through every call.
     * The caller serializes access and observes explicit cleanup reports before destruction. Callbacks
     * borrow values only during invocation; no hidden thread or retry is created.
     */
    class Ros2Abb_robot_msgsSrvSetFileContentsServer : public ServerOwners
    {
        using Handler = std::function<Ros2Abb_robot_msgsSrvSetFileContents_Response(Ros2Abb_robot_msgsSrvSetFileContents_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Abb_robot_msgsSrvSetFileContents_Request;
        using Response = Ros2Abb_robot_msgsSrvSetFileContents_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param advertise Distinct advertisement alias bytes, borrowed through construction.
         * @param respond Distinct response alias bytes, borrowed through construction.
         */
        Ros2Abb_robot_msgsSrvSetFileContentsServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /**
         * @brief Replace the owned service callback for the next executor pass.
         * @details The current shared functor remains alive through its pass, including mutable state.
         * Request references are borrowed only during invocation. Allocation and callback exceptions
         * propagate; the pass guard restores reentrancy state. Registration performs no native request.
         * @param handler Owned callable moved into shared callback storage; empty disables dispatch.
         */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        /**
         * @brief Poll one whole native request/goal.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @param ticket Native service ticket output on success.
         * @param request Complete caller-owned request output.
         * @return Original poll/codec result.
         */
        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
            {
                return roswasmc_action_bundle_failure(17);
            }
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            Pass guard{busy_};
            return roswasmc_bounded_2_abb_robot_msgs_srv_SetFileContents_poll(&advertise_, &ticket, &request);
        }

        /**
         * @brief Respond once to the exact native service ticket.
         * @details The complete response is borrowed through encoding and the synchronous import. The host
         * validates ticket/type/role ownership. Do not repeat an uncertain response or respond again to a
         * request already completed by process_once().
         * @param ticket Nonzero pending native service ticket.
         * @param response Complete initialized response.
         * @return Original response/codec result.
         */
        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_abb_robot_msgs_srv_SetFileContents_respond(&respond_, ticket, &response);
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t poll_once()
        {
            return process_once();
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t process_once()
        {
            if(busy_)
            {
                return 17;
            }
            if(error())
            {
                return error();
            }
            auto handler = handler_;
            if(!handler)
            {
                return 22;
            }
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_abb_robot_msgs_srv_SetFileContents_poll(&advertise_, &ticket, &request);
            if(r.error)
            {
                return r.error;
            }
            Response response = (*handler)(request);
            return roswasmc_bounded_2_abb_robot_msgs_srv_SetFileContents_respond(&respond_, ticket, &response).error;
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Abb_robot_msgsSrvSetIOSignalClient.
     * @details This object owns the single service-call capabilities and borrows only the immutable backend.
     * It cannot be copied or moved; context/goal storage stays stable through every call. The caller
     * serializes access and observes explicit cleanup reports before destruction. Callbacks borrow values
     * only during invocation; no hidden thread or retry is created.
     */
    class Ros2Abb_robot_msgsSrvSetIOSignalClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Abb_robot_msgsSrvSetIOSignal_Request;
        using Response = Ros2Abb_robot_msgsSrvSetIOSignal_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param selected Exact operator-granted alias bytes, borrowed through this synchronous open.
         */
        Ros2Abb_robot_msgsSrvSetIOSignalClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
            {
                error_ = 95;
            }
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
            {
                error_ = UWVM_ROS_INVALID;
            }
            if(!error_)
            {
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
            }
        }

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Abb_robot_msgsSrvSetIOSignalClient(Ros2Abb_robot_msgsSrvSetIOSignalClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Abb_robot_msgsSrvSetIOSignalClient& operator= (Ros2Abb_robot_msgsSrvSetIOSignalClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Abb_robot_msgsSrvSetIOSignalClient(Ros2Abb_robot_msgsSrvSetIOSignalClient&&) = delete;

        /**
         * @brief Attempt ordinary retirement of remaining owned roles on destruction.
         * @details The destructor cannot report cleanup errors. Call close or revoke explicitly and retain
         * its status before destruction. The immutable backend must remain alive. Destruction never adds
         * revocation, stronger cancellation, retries or a physical-stop guarantee.
         */
        ~Ros2Abb_robot_msgsSrvSetIOSignalClient()
        {
            if(roswasmc_is_open(&cap_))
            {
                roswasmc_close(&cap_);
            }
        }

        /**
         * @brief Read initialization or retired-owner status without an import.
         * @details This is local owner state rather than native connection health or controller admission. A
         * closed object is not reopened. Preserve later operation and cleanup errors independently.
         * @return The first initialization error, zero while locally open, or 9 after retirement.
         */
        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        /**
         * @brief Inspect whether this object still owns a local role.
         * @details No import, permission lookup or controller health check occurs. A true result does not
         * prove a goal completed or a physical controller is connected.
         * @return Local ownership state.
         */
        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        /**
         * @brief Perform one whole typed service request and decode its complete response.
         * @details Request and response storage are borrowed through this synchronous call. Paired canonical
         * bounds and all original fields remain intact. On transport success inspect native response fields
         * for controller refusal. An uncertain timeout or disconnect is not replayed.
         * @param request Complete initialized request borrowed until return.
         * @param response Caller-owned complete response; inspect after a successful result.
         * @return Original transport/codec status and length facts, without replacing controller fields.
         */
        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_abb_robot_msgs_srv_SetIOSignal_call(&cap_, &request, &response);
        }

        /**
         * @brief Retire owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        /**
         * @brief Revoke owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Abb_robot_msgsSrvSetIOSignalServer.
     * @details This object owns the separate advertisement/response capabilities and borrows only the
     * immutable backend. It cannot be copied or moved; context/goal storage stays stable through every call.
     * The caller serializes access and observes explicit cleanup reports before destruction. Callbacks
     * borrow values only during invocation; no hidden thread or retry is created.
     */
    class Ros2Abb_robot_msgsSrvSetIOSignalServer : public ServerOwners
    {
        using Handler = std::function<Ros2Abb_robot_msgsSrvSetIOSignal_Response(Ros2Abb_robot_msgsSrvSetIOSignal_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Abb_robot_msgsSrvSetIOSignal_Request;
        using Response = Ros2Abb_robot_msgsSrvSetIOSignal_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param advertise Distinct advertisement alias bytes, borrowed through construction.
         * @param respond Distinct response alias bytes, borrowed through construction.
         */
        Ros2Abb_robot_msgsSrvSetIOSignalServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /**
         * @brief Replace the owned service callback for the next executor pass.
         * @details The current shared functor remains alive through its pass, including mutable state.
         * Request references are borrowed only during invocation. Allocation and callback exceptions
         * propagate; the pass guard restores reentrancy state. Registration performs no native request.
         * @param handler Owned callable moved into shared callback storage; empty disables dispatch.
         */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        /**
         * @brief Poll one whole native request/goal.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @param ticket Native service ticket output on success.
         * @param request Complete caller-owned request output.
         * @return Original poll/codec result.
         */
        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
            {
                return roswasmc_action_bundle_failure(17);
            }
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            Pass guard{busy_};
            return roswasmc_bounded_2_abb_robot_msgs_srv_SetIOSignal_poll(&advertise_, &ticket, &request);
        }

        /**
         * @brief Respond once to the exact native service ticket.
         * @details The complete response is borrowed through encoding and the synchronous import. The host
         * validates ticket/type/role ownership. Do not repeat an uncertain response or respond again to a
         * request already completed by process_once().
         * @param ticket Nonzero pending native service ticket.
         * @param response Complete initialized response.
         * @return Original response/codec result.
         */
        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_abb_robot_msgs_srv_SetIOSignal_respond(&respond_, ticket, &response);
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t poll_once()
        {
            return process_once();
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t process_once()
        {
            if(busy_)
            {
                return 17;
            }
            if(error())
            {
                return error();
            }
            auto handler = handler_;
            if(!handler)
            {
                return 22;
            }
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_abb_robot_msgs_srv_SetIOSignal_poll(&advertise_, &ticket, &request);
            if(r.error)
            {
                return r.error;
            }
            Response response = (*handler)(request);
            return roswasmc_bounded_2_abb_robot_msgs_srv_SetIOSignal_respond(&respond_, ticket, &response).error;
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Abb_robot_msgsSrvSetRAPIDBoolClient.
     * @details This object owns the single service-call capabilities and borrows only the immutable backend.
     * It cannot be copied or moved; context/goal storage stays stable through every call. The caller
     * serializes access and observes explicit cleanup reports before destruction. Callbacks borrow values
     * only during invocation; no hidden thread or retry is created.
     */
    class Ros2Abb_robot_msgsSrvSetRAPIDBoolClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Abb_robot_msgsSrvSetRAPIDBool_Request;
        using Response = Ros2Abb_robot_msgsSrvSetRAPIDBool_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param selected Exact operator-granted alias bytes, borrowed through this synchronous open.
         */
        Ros2Abb_robot_msgsSrvSetRAPIDBoolClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
            {
                error_ = 95;
            }
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
            {
                error_ = UWVM_ROS_INVALID;
            }
            if(!error_)
            {
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
            }
        }

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Abb_robot_msgsSrvSetRAPIDBoolClient(Ros2Abb_robot_msgsSrvSetRAPIDBoolClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Abb_robot_msgsSrvSetRAPIDBoolClient& operator= (Ros2Abb_robot_msgsSrvSetRAPIDBoolClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Abb_robot_msgsSrvSetRAPIDBoolClient(Ros2Abb_robot_msgsSrvSetRAPIDBoolClient&&) = delete;

        /**
         * @brief Attempt ordinary retirement of remaining owned roles on destruction.
         * @details The destructor cannot report cleanup errors. Call close or revoke explicitly and retain
         * its status before destruction. The immutable backend must remain alive. Destruction never adds
         * revocation, stronger cancellation, retries or a physical-stop guarantee.
         */
        ~Ros2Abb_robot_msgsSrvSetRAPIDBoolClient()
        {
            if(roswasmc_is_open(&cap_))
            {
                roswasmc_close(&cap_);
            }
        }

        /**
         * @brief Read initialization or retired-owner status without an import.
         * @details This is local owner state rather than native connection health or controller admission. A
         * closed object is not reopened. Preserve later operation and cleanup errors independently.
         * @return The first initialization error, zero while locally open, or 9 after retirement.
         */
        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        /**
         * @brief Inspect whether this object still owns a local role.
         * @details No import, permission lookup or controller health check occurs. A true result does not
         * prove a goal completed or a physical controller is connected.
         * @return Local ownership state.
         */
        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        /**
         * @brief Perform one whole typed service request and decode its complete response.
         * @details Request and response storage are borrowed through this synchronous call. Paired canonical
         * bounds and all original fields remain intact. On transport success inspect native response fields
         * for controller refusal. An uncertain timeout or disconnect is not replayed.
         * @param request Complete initialized request borrowed until return.
         * @param response Caller-owned complete response; inspect after a successful result.
         * @return Original transport/codec status and length facts, without replacing controller fields.
         */
        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_abb_robot_msgs_srv_SetRAPIDBool_call(&cap_, &request, &response);
        }

        /**
         * @brief Retire owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        /**
         * @brief Revoke owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Abb_robot_msgsSrvSetRAPIDBoolServer.
     * @details This object owns the separate advertisement/response capabilities and borrows only the
     * immutable backend. It cannot be copied or moved; context/goal storage stays stable through every call.
     * The caller serializes access and observes explicit cleanup reports before destruction. Callbacks
     * borrow values only during invocation; no hidden thread or retry is created.
     */
    class Ros2Abb_robot_msgsSrvSetRAPIDBoolServer : public ServerOwners
    {
        using Handler = std::function<Ros2Abb_robot_msgsSrvSetRAPIDBool_Response(Ros2Abb_robot_msgsSrvSetRAPIDBool_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Abb_robot_msgsSrvSetRAPIDBool_Request;
        using Response = Ros2Abb_robot_msgsSrvSetRAPIDBool_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param advertise Distinct advertisement alias bytes, borrowed through construction.
         * @param respond Distinct response alias bytes, borrowed through construction.
         */
        Ros2Abb_robot_msgsSrvSetRAPIDBoolServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /**
         * @brief Replace the owned service callback for the next executor pass.
         * @details The current shared functor remains alive through its pass, including mutable state.
         * Request references are borrowed only during invocation. Allocation and callback exceptions
         * propagate; the pass guard restores reentrancy state. Registration performs no native request.
         * @param handler Owned callable moved into shared callback storage; empty disables dispatch.
         */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        /**
         * @brief Poll one whole native request/goal.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @param ticket Native service ticket output on success.
         * @param request Complete caller-owned request output.
         * @return Original poll/codec result.
         */
        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
            {
                return roswasmc_action_bundle_failure(17);
            }
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            Pass guard{busy_};
            return roswasmc_bounded_2_abb_robot_msgs_srv_SetRAPIDBool_poll(&advertise_, &ticket, &request);
        }

        /**
         * @brief Respond once to the exact native service ticket.
         * @details The complete response is borrowed through encoding and the synchronous import. The host
         * validates ticket/type/role ownership. Do not repeat an uncertain response or respond again to a
         * request already completed by process_once().
         * @param ticket Nonzero pending native service ticket.
         * @param response Complete initialized response.
         * @return Original response/codec result.
         */
        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_abb_robot_msgs_srv_SetRAPIDBool_respond(&respond_, ticket, &response);
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t poll_once()
        {
            return process_once();
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t process_once()
        {
            if(busy_)
            {
                return 17;
            }
            if(error())
            {
                return error();
            }
            auto handler = handler_;
            if(!handler)
            {
                return 22;
            }
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_abb_robot_msgs_srv_SetRAPIDBool_poll(&advertise_, &ticket, &request);
            if(r.error)
            {
                return r.error;
            }
            Response response = (*handler)(request);
            return roswasmc_bounded_2_abb_robot_msgs_srv_SetRAPIDBool_respond(&respond_, ticket, &response).error;
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Abb_robot_msgsSrvSetRAPIDDnumClient.
     * @details This object owns the single service-call capabilities and borrows only the immutable backend.
     * It cannot be copied or moved; context/goal storage stays stable through every call. The caller
     * serializes access and observes explicit cleanup reports before destruction. Callbacks borrow values
     * only during invocation; no hidden thread or retry is created.
     */
    class Ros2Abb_robot_msgsSrvSetRAPIDDnumClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request;
        using Response = Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param selected Exact operator-granted alias bytes, borrowed through this synchronous open.
         */
        Ros2Abb_robot_msgsSrvSetRAPIDDnumClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
            {
                error_ = 95;
            }
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
            {
                error_ = UWVM_ROS_INVALID;
            }
            if(!error_)
            {
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
            }
        }

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Abb_robot_msgsSrvSetRAPIDDnumClient(Ros2Abb_robot_msgsSrvSetRAPIDDnumClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Abb_robot_msgsSrvSetRAPIDDnumClient& operator= (Ros2Abb_robot_msgsSrvSetRAPIDDnumClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Abb_robot_msgsSrvSetRAPIDDnumClient(Ros2Abb_robot_msgsSrvSetRAPIDDnumClient&&) = delete;

        /**
         * @brief Attempt ordinary retirement of remaining owned roles on destruction.
         * @details The destructor cannot report cleanup errors. Call close or revoke explicitly and retain
         * its status before destruction. The immutable backend must remain alive. Destruction never adds
         * revocation, stronger cancellation, retries or a physical-stop guarantee.
         */
        ~Ros2Abb_robot_msgsSrvSetRAPIDDnumClient()
        {
            if(roswasmc_is_open(&cap_))
            {
                roswasmc_close(&cap_);
            }
        }

        /**
         * @brief Read initialization or retired-owner status without an import.
         * @details This is local owner state rather than native connection health or controller admission. A
         * closed object is not reopened. Preserve later operation and cleanup errors independently.
         * @return The first initialization error, zero while locally open, or 9 after retirement.
         */
        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        /**
         * @brief Inspect whether this object still owns a local role.
         * @details No import, permission lookup or controller health check occurs. A true result does not
         * prove a goal completed or a physical controller is connected.
         * @return Local ownership state.
         */
        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        /**
         * @brief Perform one whole typed service request and decode its complete response.
         * @details Request and response storage are borrowed through this synchronous call. Paired canonical
         * bounds and all original fields remain intact. On transport success inspect native response fields
         * for controller refusal. An uncertain timeout or disconnect is not replayed.
         * @param request Complete initialized request borrowed until return.
         * @param response Caller-owned complete response; inspect after a successful result.
         * @return Original transport/codec status and length facts, without replacing controller fields.
         */
        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_abb_robot_msgs_srv_SetRAPIDDnum_call(&cap_, &request, &response);
        }

        /**
         * @brief Retire owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        /**
         * @brief Revoke owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Abb_robot_msgsSrvSetRAPIDDnumServer.
     * @details This object owns the separate advertisement/response capabilities and borrows only the
     * immutable backend. It cannot be copied or moved; context/goal storage stays stable through every call.
     * The caller serializes access and observes explicit cleanup reports before destruction. Callbacks
     * borrow values only during invocation; no hidden thread or retry is created.
     */
    class Ros2Abb_robot_msgsSrvSetRAPIDDnumServer : public ServerOwners
    {
        using Handler = std::function<Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response(Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request;
        using Response = Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param advertise Distinct advertisement alias bytes, borrowed through construction.
         * @param respond Distinct response alias bytes, borrowed through construction.
         */
        Ros2Abb_robot_msgsSrvSetRAPIDDnumServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /**
         * @brief Replace the owned service callback for the next executor pass.
         * @details The current shared functor remains alive through its pass, including mutable state.
         * Request references are borrowed only during invocation. Allocation and callback exceptions
         * propagate; the pass guard restores reentrancy state. Registration performs no native request.
         * @param handler Owned callable moved into shared callback storage; empty disables dispatch.
         */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        /**
         * @brief Poll one whole native request/goal.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @param ticket Native service ticket output on success.
         * @param request Complete caller-owned request output.
         * @return Original poll/codec result.
         */
        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
            {
                return roswasmc_action_bundle_failure(17);
            }
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            Pass guard{busy_};
            return roswasmc_bounded_2_abb_robot_msgs_srv_SetRAPIDDnum_poll(&advertise_, &ticket, &request);
        }

        /**
         * @brief Respond once to the exact native service ticket.
         * @details The complete response is borrowed through encoding and the synchronous import. The host
         * validates ticket/type/role ownership. Do not repeat an uncertain response or respond again to a
         * request already completed by process_once().
         * @param ticket Nonzero pending native service ticket.
         * @param response Complete initialized response.
         * @return Original response/codec result.
         */
        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_abb_robot_msgs_srv_SetRAPIDDnum_respond(&respond_, ticket, &response);
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t poll_once()
        {
            return process_once();
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t process_once()
        {
            if(busy_)
            {
                return 17;
            }
            if(error())
            {
                return error();
            }
            auto handler = handler_;
            if(!handler)
            {
                return 22;
            }
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_abb_robot_msgs_srv_SetRAPIDDnum_poll(&advertise_, &ticket, &request);
            if(r.error)
            {
                return r.error;
            }
            Response response = (*handler)(request);
            return roswasmc_bounded_2_abb_robot_msgs_srv_SetRAPIDDnum_respond(&respond_, ticket, &response).error;
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Abb_robot_msgsSrvSetRAPIDNumClient.
     * @details This object owns the single service-call capabilities and borrows only the immutable backend.
     * It cannot be copied or moved; context/goal storage stays stable through every call. The caller
     * serializes access and observes explicit cleanup reports before destruction. Callbacks borrow values
     * only during invocation; no hidden thread or retry is created.
     */
    class Ros2Abb_robot_msgsSrvSetRAPIDNumClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Abb_robot_msgsSrvSetRAPIDNum_Request;
        using Response = Ros2Abb_robot_msgsSrvSetRAPIDNum_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param selected Exact operator-granted alias bytes, borrowed through this synchronous open.
         */
        Ros2Abb_robot_msgsSrvSetRAPIDNumClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
            {
                error_ = 95;
            }
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
            {
                error_ = UWVM_ROS_INVALID;
            }
            if(!error_)
            {
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
            }
        }

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Abb_robot_msgsSrvSetRAPIDNumClient(Ros2Abb_robot_msgsSrvSetRAPIDNumClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Abb_robot_msgsSrvSetRAPIDNumClient& operator= (Ros2Abb_robot_msgsSrvSetRAPIDNumClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Abb_robot_msgsSrvSetRAPIDNumClient(Ros2Abb_robot_msgsSrvSetRAPIDNumClient&&) = delete;

        /**
         * @brief Attempt ordinary retirement of remaining owned roles on destruction.
         * @details The destructor cannot report cleanup errors. Call close or revoke explicitly and retain
         * its status before destruction. The immutable backend must remain alive. Destruction never adds
         * revocation, stronger cancellation, retries or a physical-stop guarantee.
         */
        ~Ros2Abb_robot_msgsSrvSetRAPIDNumClient()
        {
            if(roswasmc_is_open(&cap_))
            {
                roswasmc_close(&cap_);
            }
        }

        /**
         * @brief Read initialization or retired-owner status without an import.
         * @details This is local owner state rather than native connection health or controller admission. A
         * closed object is not reopened. Preserve later operation and cleanup errors independently.
         * @return The first initialization error, zero while locally open, or 9 after retirement.
         */
        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        /**
         * @brief Inspect whether this object still owns a local role.
         * @details No import, permission lookup or controller health check occurs. A true result does not
         * prove a goal completed or a physical controller is connected.
         * @return Local ownership state.
         */
        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        /**
         * @brief Perform one whole typed service request and decode its complete response.
         * @details Request and response storage are borrowed through this synchronous call. Paired canonical
         * bounds and all original fields remain intact. On transport success inspect native response fields
         * for controller refusal. An uncertain timeout or disconnect is not replayed.
         * @param request Complete initialized request borrowed until return.
         * @param response Caller-owned complete response; inspect after a successful result.
         * @return Original transport/codec status and length facts, without replacing controller fields.
         */
        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_abb_robot_msgs_srv_SetRAPIDNum_call(&cap_, &request, &response);
        }

        /**
         * @brief Retire owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        /**
         * @brief Revoke owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Abb_robot_msgsSrvSetRAPIDNumServer.
     * @details This object owns the separate advertisement/response capabilities and borrows only the
     * immutable backend. It cannot be copied or moved; context/goal storage stays stable through every call.
     * The caller serializes access and observes explicit cleanup reports before destruction. Callbacks
     * borrow values only during invocation; no hidden thread or retry is created.
     */
    class Ros2Abb_robot_msgsSrvSetRAPIDNumServer : public ServerOwners
    {
        using Handler = std::function<Ros2Abb_robot_msgsSrvSetRAPIDNum_Response(Ros2Abb_robot_msgsSrvSetRAPIDNum_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Abb_robot_msgsSrvSetRAPIDNum_Request;
        using Response = Ros2Abb_robot_msgsSrvSetRAPIDNum_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param advertise Distinct advertisement alias bytes, borrowed through construction.
         * @param respond Distinct response alias bytes, borrowed through construction.
         */
        Ros2Abb_robot_msgsSrvSetRAPIDNumServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /**
         * @brief Replace the owned service callback for the next executor pass.
         * @details The current shared functor remains alive through its pass, including mutable state.
         * Request references are borrowed only during invocation. Allocation and callback exceptions
         * propagate; the pass guard restores reentrancy state. Registration performs no native request.
         * @param handler Owned callable moved into shared callback storage; empty disables dispatch.
         */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        /**
         * @brief Poll one whole native request/goal.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @param ticket Native service ticket output on success.
         * @param request Complete caller-owned request output.
         * @return Original poll/codec result.
         */
        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
            {
                return roswasmc_action_bundle_failure(17);
            }
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            Pass guard{busy_};
            return roswasmc_bounded_2_abb_robot_msgs_srv_SetRAPIDNum_poll(&advertise_, &ticket, &request);
        }

        /**
         * @brief Respond once to the exact native service ticket.
         * @details The complete response is borrowed through encoding and the synchronous import. The host
         * validates ticket/type/role ownership. Do not repeat an uncertain response or respond again to a
         * request already completed by process_once().
         * @param ticket Nonzero pending native service ticket.
         * @param response Complete initialized response.
         * @return Original response/codec result.
         */
        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_abb_robot_msgs_srv_SetRAPIDNum_respond(&respond_, ticket, &response);
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t poll_once()
        {
            return process_once();
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t process_once()
        {
            if(busy_)
            {
                return 17;
            }
            if(error())
            {
                return error();
            }
            auto handler = handler_;
            if(!handler)
            {
                return 22;
            }
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_abb_robot_msgs_srv_SetRAPIDNum_poll(&advertise_, &ticket, &request);
            if(r.error)
            {
                return r.error;
            }
            Response response = (*handler)(request);
            return roswasmc_bounded_2_abb_robot_msgs_srv_SetRAPIDNum_respond(&respond_, ticket, &response).error;
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Abb_robot_msgsSrvSetRAPIDStringClient.
     * @details This object owns the single service-call capabilities and borrows only the immutable backend.
     * It cannot be copied or moved; context/goal storage stays stable through every call. The caller
     * serializes access and observes explicit cleanup reports before destruction. Callbacks borrow values
     * only during invocation; no hidden thread or retry is created.
     */
    class Ros2Abb_robot_msgsSrvSetRAPIDStringClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Abb_robot_msgsSrvSetRAPIDString_Request;
        using Response = Ros2Abb_robot_msgsSrvSetRAPIDString_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param selected Exact operator-granted alias bytes, borrowed through this synchronous open.
         */
        Ros2Abb_robot_msgsSrvSetRAPIDStringClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
            {
                error_ = 95;
            }
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
            {
                error_ = UWVM_ROS_INVALID;
            }
            if(!error_)
            {
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
            }
        }

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Abb_robot_msgsSrvSetRAPIDStringClient(Ros2Abb_robot_msgsSrvSetRAPIDStringClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Abb_robot_msgsSrvSetRAPIDStringClient& operator= (Ros2Abb_robot_msgsSrvSetRAPIDStringClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Abb_robot_msgsSrvSetRAPIDStringClient(Ros2Abb_robot_msgsSrvSetRAPIDStringClient&&) = delete;

        /**
         * @brief Attempt ordinary retirement of remaining owned roles on destruction.
         * @details The destructor cannot report cleanup errors. Call close or revoke explicitly and retain
         * its status before destruction. The immutable backend must remain alive. Destruction never adds
         * revocation, stronger cancellation, retries or a physical-stop guarantee.
         */
        ~Ros2Abb_robot_msgsSrvSetRAPIDStringClient()
        {
            if(roswasmc_is_open(&cap_))
            {
                roswasmc_close(&cap_);
            }
        }

        /**
         * @brief Read initialization or retired-owner status without an import.
         * @details This is local owner state rather than native connection health or controller admission. A
         * closed object is not reopened. Preserve later operation and cleanup errors independently.
         * @return The first initialization error, zero while locally open, or 9 after retirement.
         */
        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        /**
         * @brief Inspect whether this object still owns a local role.
         * @details No import, permission lookup or controller health check occurs. A true result does not
         * prove a goal completed or a physical controller is connected.
         * @return Local ownership state.
         */
        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        /**
         * @brief Perform one whole typed service request and decode its complete response.
         * @details Request and response storage are borrowed through this synchronous call. Paired canonical
         * bounds and all original fields remain intact. On transport success inspect native response fields
         * for controller refusal. An uncertain timeout or disconnect is not replayed.
         * @param request Complete initialized request borrowed until return.
         * @param response Caller-owned complete response; inspect after a successful result.
         * @return Original transport/codec status and length facts, without replacing controller fields.
         */
        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_abb_robot_msgs_srv_SetRAPIDString_call(&cap_, &request, &response);
        }

        /**
         * @brief Retire owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        /**
         * @brief Revoke owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Abb_robot_msgsSrvSetRAPIDStringServer.
     * @details This object owns the separate advertisement/response capabilities and borrows only the
     * immutable backend. It cannot be copied or moved; context/goal storage stays stable through every call.
     * The caller serializes access and observes explicit cleanup reports before destruction. Callbacks
     * borrow values only during invocation; no hidden thread or retry is created.
     */
    class Ros2Abb_robot_msgsSrvSetRAPIDStringServer : public ServerOwners
    {
        using Handler = std::function<Ros2Abb_robot_msgsSrvSetRAPIDString_Response(Ros2Abb_robot_msgsSrvSetRAPIDString_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Abb_robot_msgsSrvSetRAPIDString_Request;
        using Response = Ros2Abb_robot_msgsSrvSetRAPIDString_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param advertise Distinct advertisement alias bytes, borrowed through construction.
         * @param respond Distinct response alias bytes, borrowed through construction.
         */
        Ros2Abb_robot_msgsSrvSetRAPIDStringServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /**
         * @brief Replace the owned service callback for the next executor pass.
         * @details The current shared functor remains alive through its pass, including mutable state.
         * Request references are borrowed only during invocation. Allocation and callback exceptions
         * propagate; the pass guard restores reentrancy state. Registration performs no native request.
         * @param handler Owned callable moved into shared callback storage; empty disables dispatch.
         */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        /**
         * @brief Poll one whole native request/goal.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @param ticket Native service ticket output on success.
         * @param request Complete caller-owned request output.
         * @return Original poll/codec result.
         */
        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
            {
                return roswasmc_action_bundle_failure(17);
            }
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            Pass guard{busy_};
            return roswasmc_bounded_2_abb_robot_msgs_srv_SetRAPIDString_poll(&advertise_, &ticket, &request);
        }

        /**
         * @brief Respond once to the exact native service ticket.
         * @details The complete response is borrowed through encoding and the synchronous import. The host
         * validates ticket/type/role ownership. Do not repeat an uncertain response or respond again to a
         * request already completed by process_once().
         * @param ticket Nonzero pending native service ticket.
         * @param response Complete initialized response.
         * @return Original response/codec result.
         */
        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_abb_robot_msgs_srv_SetRAPIDString_respond(&respond_, ticket, &response);
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t poll_once()
        {
            return process_once();
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t process_once()
        {
            if(busy_)
            {
                return 17;
            }
            if(error())
            {
                return error();
            }
            auto handler = handler_;
            if(!handler)
            {
                return 22;
            }
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_abb_robot_msgs_srv_SetRAPIDString_poll(&advertise_, &ticket, &request);
            if(r.error)
            {
                return r.error;
            }
            Response response = (*handler)(request);
            return roswasmc_bounded_2_abb_robot_msgs_srv_SetRAPIDString_respond(&respond_, ticket, &response).error;
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Abb_robot_msgsSrvSetRAPIDSymbolClient.
     * @details This object owns the single service-call capabilities and borrows only the immutable backend.
     * It cannot be copied or moved; context/goal storage stays stable through every call. The caller
     * serializes access and observes explicit cleanup reports before destruction. Callbacks borrow values
     * only during invocation; no hidden thread or retry is created.
     */
    class Ros2Abb_robot_msgsSrvSetRAPIDSymbolClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request;
        using Response = Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param selected Exact operator-granted alias bytes, borrowed through this synchronous open.
         */
        Ros2Abb_robot_msgsSrvSetRAPIDSymbolClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
            {
                error_ = 95;
            }
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
            {
                error_ = UWVM_ROS_INVALID;
            }
            if(!error_)
            {
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
            }
        }

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Abb_robot_msgsSrvSetRAPIDSymbolClient(Ros2Abb_robot_msgsSrvSetRAPIDSymbolClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Abb_robot_msgsSrvSetRAPIDSymbolClient& operator= (Ros2Abb_robot_msgsSrvSetRAPIDSymbolClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Abb_robot_msgsSrvSetRAPIDSymbolClient(Ros2Abb_robot_msgsSrvSetRAPIDSymbolClient&&) = delete;

        /**
         * @brief Attempt ordinary retirement of remaining owned roles on destruction.
         * @details The destructor cannot report cleanup errors. Call close or revoke explicitly and retain
         * its status before destruction. The immutable backend must remain alive. Destruction never adds
         * revocation, stronger cancellation, retries or a physical-stop guarantee.
         */
        ~Ros2Abb_robot_msgsSrvSetRAPIDSymbolClient()
        {
            if(roswasmc_is_open(&cap_))
            {
                roswasmc_close(&cap_);
            }
        }

        /**
         * @brief Read initialization or retired-owner status without an import.
         * @details This is local owner state rather than native connection health or controller admission. A
         * closed object is not reopened. Preserve later operation and cleanup errors independently.
         * @return The first initialization error, zero while locally open, or 9 after retirement.
         */
        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        /**
         * @brief Inspect whether this object still owns a local role.
         * @details No import, permission lookup or controller health check occurs. A true result does not
         * prove a goal completed or a physical controller is connected.
         * @return Local ownership state.
         */
        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        /**
         * @brief Perform one whole typed service request and decode its complete response.
         * @details Request and response storage are borrowed through this synchronous call. Paired canonical
         * bounds and all original fields remain intact. On transport success inspect native response fields
         * for controller refusal. An uncertain timeout or disconnect is not replayed.
         * @param request Complete initialized request borrowed until return.
         * @param response Caller-owned complete response; inspect after a successful result.
         * @return Original transport/codec status and length facts, without replacing controller fields.
         */
        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_abb_robot_msgs_srv_SetRAPIDSymbol_call(&cap_, &request, &response);
        }

        /**
         * @brief Retire owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        /**
         * @brief Revoke owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Abb_robot_msgsSrvSetRAPIDSymbolServer.
     * @details This object owns the separate advertisement/response capabilities and borrows only the
     * immutable backend. It cannot be copied or moved; context/goal storage stays stable through every call.
     * The caller serializes access and observes explicit cleanup reports before destruction. Callbacks
     * borrow values only during invocation; no hidden thread or retry is created.
     */
    class Ros2Abb_robot_msgsSrvSetRAPIDSymbolServer : public ServerOwners
    {
        using Handler = std::function<Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response(Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request;
        using Response = Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param advertise Distinct advertisement alias bytes, borrowed through construction.
         * @param respond Distinct response alias bytes, borrowed through construction.
         */
        Ros2Abb_robot_msgsSrvSetRAPIDSymbolServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /**
         * @brief Replace the owned service callback for the next executor pass.
         * @details The current shared functor remains alive through its pass, including mutable state.
         * Request references are borrowed only during invocation. Allocation and callback exceptions
         * propagate; the pass guard restores reentrancy state. Registration performs no native request.
         * @param handler Owned callable moved into shared callback storage; empty disables dispatch.
         */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        /**
         * @brief Poll one whole native request/goal.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @param ticket Native service ticket output on success.
         * @param request Complete caller-owned request output.
         * @return Original poll/codec result.
         */
        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
            {
                return roswasmc_action_bundle_failure(17);
            }
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            Pass guard{busy_};
            return roswasmc_bounded_2_abb_robot_msgs_srv_SetRAPIDSymbol_poll(&advertise_, &ticket, &request);
        }

        /**
         * @brief Respond once to the exact native service ticket.
         * @details The complete response is borrowed through encoding and the synchronous import. The host
         * validates ticket/type/role ownership. Do not repeat an uncertain response or respond again to a
         * request already completed by process_once().
         * @param ticket Nonzero pending native service ticket.
         * @param response Complete initialized response.
         * @return Original response/codec result.
         */
        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_abb_robot_msgs_srv_SetRAPIDSymbol_respond(&respond_, ticket, &response);
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t poll_once()
        {
            return process_once();
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t process_once()
        {
            if(busy_)
            {
                return 17;
            }
            if(error())
            {
                return error();
            }
            auto handler = handler_;
            if(!handler)
            {
                return 22;
            }
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_abb_robot_msgs_srv_SetRAPIDSymbol_poll(&advertise_, &ticket, &request);
            if(r.error)
            {
                return r.error;
            }
            Response response = (*handler)(request);
            return roswasmc_bounded_2_abb_robot_msgs_srv_SetRAPIDSymbol_respond(&respond_, ticket, &response).error;
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Abb_robot_msgsSrvSetSpeedRatioClient.
     * @details This object owns the single service-call capabilities and borrows only the immutable backend.
     * It cannot be copied or moved; context/goal storage stays stable through every call. The caller
     * serializes access and observes explicit cleanup reports before destruction. Callbacks borrow values
     * only during invocation; no hidden thread or retry is created.
     */
    class Ros2Abb_robot_msgsSrvSetSpeedRatioClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Abb_robot_msgsSrvSetSpeedRatio_Request;
        using Response = Ros2Abb_robot_msgsSrvSetSpeedRatio_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param selected Exact operator-granted alias bytes, borrowed through this synchronous open.
         */
        Ros2Abb_robot_msgsSrvSetSpeedRatioClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
            {
                error_ = 95;
            }
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
            {
                error_ = UWVM_ROS_INVALID;
            }
            if(!error_)
            {
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
            }
        }

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Abb_robot_msgsSrvSetSpeedRatioClient(Ros2Abb_robot_msgsSrvSetSpeedRatioClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Abb_robot_msgsSrvSetSpeedRatioClient& operator= (Ros2Abb_robot_msgsSrvSetSpeedRatioClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Abb_robot_msgsSrvSetSpeedRatioClient(Ros2Abb_robot_msgsSrvSetSpeedRatioClient&&) = delete;

        /**
         * @brief Attempt ordinary retirement of remaining owned roles on destruction.
         * @details The destructor cannot report cleanup errors. Call close or revoke explicitly and retain
         * its status before destruction. The immutable backend must remain alive. Destruction never adds
         * revocation, stronger cancellation, retries or a physical-stop guarantee.
         */
        ~Ros2Abb_robot_msgsSrvSetSpeedRatioClient()
        {
            if(roswasmc_is_open(&cap_))
            {
                roswasmc_close(&cap_);
            }
        }

        /**
         * @brief Read initialization or retired-owner status without an import.
         * @details This is local owner state rather than native connection health or controller admission. A
         * closed object is not reopened. Preserve later operation and cleanup errors independently.
         * @return The first initialization error, zero while locally open, or 9 after retirement.
         */
        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        /**
         * @brief Inspect whether this object still owns a local role.
         * @details No import, permission lookup or controller health check occurs. A true result does not
         * prove a goal completed or a physical controller is connected.
         * @return Local ownership state.
         */
        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        /**
         * @brief Perform one whole typed service request and decode its complete response.
         * @details Request and response storage are borrowed through this synchronous call. Paired canonical
         * bounds and all original fields remain intact. On transport success inspect native response fields
         * for controller refusal. An uncertain timeout or disconnect is not replayed.
         * @param request Complete initialized request borrowed until return.
         * @param response Caller-owned complete response; inspect after a successful result.
         * @return Original transport/codec status and length facts, without replacing controller fields.
         */
        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_abb_robot_msgs_srv_SetSpeedRatio_call(&cap_, &request, &response);
        }

        /**
         * @brief Retire owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        /**
         * @brief Revoke owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Abb_robot_msgsSrvSetSpeedRatioServer.
     * @details This object owns the separate advertisement/response capabilities and borrows only the
     * immutable backend. It cannot be copied or moved; context/goal storage stays stable through every call.
     * The caller serializes access and observes explicit cleanup reports before destruction. Callbacks
     * borrow values only during invocation; no hidden thread or retry is created.
     */
    class Ros2Abb_robot_msgsSrvSetSpeedRatioServer : public ServerOwners
    {
        using Handler = std::function<Ros2Abb_robot_msgsSrvSetSpeedRatio_Response(Ros2Abb_robot_msgsSrvSetSpeedRatio_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Abb_robot_msgsSrvSetSpeedRatio_Request;
        using Response = Ros2Abb_robot_msgsSrvSetSpeedRatio_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param advertise Distinct advertisement alias bytes, borrowed through construction.
         * @param respond Distinct response alias bytes, borrowed through construction.
         */
        Ros2Abb_robot_msgsSrvSetSpeedRatioServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /**
         * @brief Replace the owned service callback for the next executor pass.
         * @details The current shared functor remains alive through its pass, including mutable state.
         * Request references are borrowed only during invocation. Allocation and callback exceptions
         * propagate; the pass guard restores reentrancy state. Registration performs no native request.
         * @param handler Owned callable moved into shared callback storage; empty disables dispatch.
         */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        /**
         * @brief Poll one whole native request/goal.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @param ticket Native service ticket output on success.
         * @param request Complete caller-owned request output.
         * @return Original poll/codec result.
         */
        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
            {
                return roswasmc_action_bundle_failure(17);
            }
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            Pass guard{busy_};
            return roswasmc_bounded_2_abb_robot_msgs_srv_SetSpeedRatio_poll(&advertise_, &ticket, &request);
        }

        /**
         * @brief Respond once to the exact native service ticket.
         * @details The complete response is borrowed through encoding and the synchronous import. The host
         * validates ticket/type/role ownership. Do not repeat an uncertain response or respond again to a
         * request already completed by process_once().
         * @param ticket Nonzero pending native service ticket.
         * @param response Complete initialized response.
         * @return Original response/codec result.
         */
        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_abb_robot_msgs_srv_SetSpeedRatio_respond(&respond_, ticket, &response);
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t poll_once()
        {
            return process_once();
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t process_once()
        {
            if(busy_)
            {
                return 17;
            }
            if(error())
            {
                return error();
            }
            auto handler = handler_;
            if(!handler)
            {
                return 22;
            }
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_abb_robot_msgs_srv_SetSpeedRatio_poll(&advertise_, &ticket, &request);
            if(r.error)
            {
                return r.error;
            }
            Response response = (*handler)(request);
            return roswasmc_bounded_2_abb_robot_msgs_srv_SetSpeedRatio_respond(&respond_, ticket, &response).error;
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Abb_robot_msgsSrvTriggerWithResultCodeClient.
     * @details This object owns the single service-call capabilities and borrows only the immutable backend.
     * It cannot be copied or moved; context/goal storage stays stable through every call. The caller
     * serializes access and observes explicit cleanup reports before destruction. Callbacks borrow values
     * only during invocation; no hidden thread or retry is created.
     */
    class Ros2Abb_robot_msgsSrvTriggerWithResultCodeClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request;
        using Response = Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param selected Exact operator-granted alias bytes, borrowed through this synchronous open.
         */
        Ros2Abb_robot_msgsSrvTriggerWithResultCodeClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
            {
                error_ = 95;
            }
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
            {
                error_ = UWVM_ROS_INVALID;
            }
            if(!error_)
            {
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
            }
        }

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Abb_robot_msgsSrvTriggerWithResultCodeClient(Ros2Abb_robot_msgsSrvTriggerWithResultCodeClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Abb_robot_msgsSrvTriggerWithResultCodeClient& operator= (Ros2Abb_robot_msgsSrvTriggerWithResultCodeClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Abb_robot_msgsSrvTriggerWithResultCodeClient(Ros2Abb_robot_msgsSrvTriggerWithResultCodeClient&&) = delete;

        /**
         * @brief Attempt ordinary retirement of remaining owned roles on destruction.
         * @details The destructor cannot report cleanup errors. Call close or revoke explicitly and retain
         * its status before destruction. The immutable backend must remain alive. Destruction never adds
         * revocation, stronger cancellation, retries or a physical-stop guarantee.
         */
        ~Ros2Abb_robot_msgsSrvTriggerWithResultCodeClient()
        {
            if(roswasmc_is_open(&cap_))
            {
                roswasmc_close(&cap_);
            }
        }

        /**
         * @brief Read initialization or retired-owner status without an import.
         * @details This is local owner state rather than native connection health or controller admission. A
         * closed object is not reopened. Preserve later operation and cleanup errors independently.
         * @return The first initialization error, zero while locally open, or 9 after retirement.
         */
        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        /**
         * @brief Inspect whether this object still owns a local role.
         * @details No import, permission lookup or controller health check occurs. A true result does not
         * prove a goal completed or a physical controller is connected.
         * @return Local ownership state.
         */
        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        /**
         * @brief Perform one whole typed service request and decode its complete response.
         * @details Request and response storage are borrowed through this synchronous call. Paired canonical
         * bounds and all original fields remain intact. On transport success inspect native response fields
         * for controller refusal. An uncertain timeout or disconnect is not replayed.
         * @param request Complete initialized request borrowed until return.
         * @param response Caller-owned complete response; inspect after a successful result.
         * @return Original transport/codec status and length facts, without replacing controller fields.
         */
        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_abb_robot_msgs_srv_TriggerWithResultCode_call(&cap_, &request, &response);
        }

        /**
         * @brief Retire owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        /**
         * @brief Revoke owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Abb_robot_msgsSrvTriggerWithResultCodeServer.
     * @details This object owns the separate advertisement/response capabilities and borrows only the
     * immutable backend. It cannot be copied or moved; context/goal storage stays stable through every call.
     * The caller serializes access and observes explicit cleanup reports before destruction. Callbacks
     * borrow values only during invocation; no hidden thread or retry is created.
     */
    class Ros2Abb_robot_msgsSrvTriggerWithResultCodeServer : public ServerOwners
    {
        using Handler = std::function<Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response(Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request;
        using Response = Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param advertise Distinct advertisement alias bytes, borrowed through construction.
         * @param respond Distinct response alias bytes, borrowed through construction.
         */
        Ros2Abb_robot_msgsSrvTriggerWithResultCodeServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /**
         * @brief Replace the owned service callback for the next executor pass.
         * @details The current shared functor remains alive through its pass, including mutable state.
         * Request references are borrowed only during invocation. Allocation and callback exceptions
         * propagate; the pass guard restores reentrancy state. Registration performs no native request.
         * @param handler Owned callable moved into shared callback storage; empty disables dispatch.
         */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        /**
         * @brief Poll one whole native request/goal.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @param ticket Native service ticket output on success.
         * @param request Complete caller-owned request output.
         * @return Original poll/codec result.
         */
        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
            {
                return roswasmc_action_bundle_failure(17);
            }
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            Pass guard{busy_};
            return roswasmc_bounded_2_abb_robot_msgs_srv_TriggerWithResultCode_poll(&advertise_, &ticket, &request);
        }

        /**
         * @brief Respond once to the exact native service ticket.
         * @details The complete response is borrowed through encoding and the synchronous import. The host
         * validates ticket/type/role ownership. Do not repeat an uncertain response or respond again to a
         * request already completed by process_once().
         * @param ticket Nonzero pending native service ticket.
         * @param response Complete initialized response.
         * @return Original response/codec result.
         */
        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_abb_robot_msgs_srv_TriggerWithResultCode_respond(&respond_, ticket, &response);
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t poll_once()
        {
            return process_once();
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t process_once()
        {
            if(busy_)
            {
                return 17;
            }
            if(error())
            {
                return error();
            }
            auto handler = handler_;
            if(!handler)
            {
                return 22;
            }
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_abb_robot_msgs_srv_TriggerWithResultCode_poll(&advertise_, &ticket, &request);
            if(r.error)
            {
                return r.error;
            }
            Response response = (*handler)(request);
            return roswasmc_bounded_2_abb_robot_msgs_srv_TriggerWithResultCode_respond(&respond_, ticket, &response).error;
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Control_msgsActionFollowJointTrajectoryClient.
     * @details This object owns the action client capabilities and borrows only the immutable backend. It
     * cannot be copied or moved; context/goal storage stays stable through every call. The caller serializes
     * access and observes explicit cleanup reports before destruction. Callbacks borrow values only during
     * invocation; no hidden thread or retry is created. Four required roles and optional any-cancel remain
     * distinct; goal quota is 1..1024.
     */
    class Ros2Control_msgsActionFollowJointTrajectoryClient
    {
        roswasmc_context context_;
        std::array<uint64_t, 1024> goals_{};
        roswasmc_action_bundle bundle_{};

    public:
        using Goal = Ros2Control_msgsActionFollowJointTrajectory_Goal;
        using Result = Ros2Control_msgsActionFollowJointTrajectory_Result;
        using Feedback = Ros2Control_msgsActionFollowJointTrajectory_Feedback;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param aliases Four required role aliases and optional independent any-cancel alias.
         * @param slots Active goal quota in 1..1024 entries; no allocation or truncation.
         */
        Ros2Control_msgsActionFollowJointTrajectoryClient(roswasmc_context const& context, roswasmc_action_aliases const& aliases, size_t slots = 8) :
            context_{context.backend}
        {
            roswasmc_action_bundle_init(&context_, &bundle_, &aliases, goals_.data(), slots);
        }

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Control_msgsActionFollowJointTrajectoryClient(Ros2Control_msgsActionFollowJointTrajectoryClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Control_msgsActionFollowJointTrajectoryClient& operator= (Ros2Control_msgsActionFollowJointTrajectoryClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Control_msgsActionFollowJointTrajectoryClient(Ros2Control_msgsActionFollowJointTrajectoryClient&&) = delete;

        /**
         * @brief Attempt ordinary retirement of remaining owned roles on destruction.
         * @details The destructor cannot report cleanup errors. Call close_checked or revoke_checked
         * explicitly and retain its status before destruction. The immutable backend must remain alive.
         * Destruction never adds revocation, stronger cancellation, retries or a physical-stop guarantee.
         */
        ~Ros2Control_msgsActionFollowJointTrajectoryClient()
        {
            if(bundle_.active)
            {
                std::array<uint32_t, 5> statuses{};
                roswasmc_action_bundle_close_checked(&bundle_, 0, statuses.data(), statuses.size());
            }
        }

        /**
         * @brief Read initialization or retired-owner status without an import.
         * @details This is local owner state rather than native connection health or controller admission. A
         * closed object is not reopened. Preserve later operation and cleanup errors independently.
         * @return The first initialization error, zero while locally open, or 9 after retirement.
         */
        uint32_t error() const noexcept
        {
            return bundle_.error ? bundle_.error : bundle_.active ? 0 : 9;
        }

        /**
         * @brief Inspect whether this object still owns a local role.
         * @details No import, permission lookup or controller health check occurs. A true result does not
         * prove a goal completed or a physical controller is connected.
         * @return Local ownership state.
         */
        bool is_open() const noexcept
        {
            return bundle_.active;
        }

        /**
         * @brief Check membership of a nonzero goal ID in this owner's finite table.
         * @details The table is local bookkeeping, not host authorization. The caller serializes access and
         * keeps this nonmoving owner alive until result consumption or explicit retirement.
         * @param id Candidate native goal ID; zero is never an owned goal.
         * @return True for a tracked local goal.
         */
        bool owns(uint64_t id) const
        {
            return roswasmc_action_bundle_owns(&bundle_, id);
        }

        /**
         * @brief Send one complete goal and retain its returned ID in this owner.
         * @details The goal is borrowed only for this call and must satisfy its complete codec bounds. The
         * finite goal quota is never resized or truncated. Preserve uncertain outcomes rather than
         * resubmitting effects; keep the owner alive for feedback, terminal consumption and cleanup.
         * @param value Complete original goal in native declared units and frame.
         * @param id Caller-owned goal-ID output, inspected only after success.
         * @return Original send/codec result.
         */
        roswasmc_result send_goal(Goal const& value, uint64_t& id)
        {
            return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_send(&bundle_, &value, &id);
        }

        /**
         * @brief Poll one complete feedback value for a locally owned goal.
         * @details No executor or retry is started. Idle 11 is returned unchanged and does not consume the
         * goal. Field units, finite bounds and host goal ownership remain the original contract.
         * @param id Nonzero ID tracked by this owner.
         * @param value Caller-owned whole feedback output.
         * @return Original poll/codec result; inspect the output only on success.
         */
        roswasmc_result feedback(uint64_t id, Feedback& value)
        {
            return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_feedback(&bundle_, id, &value);
        }

        /**
         * @brief Consume one validated terminal result for this owner's goal.
         * @details A valid terminal kind is 2..4. Successful terminal consumption retires that local goal
         * once; idle or uncertain transport is not an invitation to resend the goal. Native result fields
         * remain independent from transport errors and do not assert physical stopping.
         * @param id Nonzero tracked goal ID.
         * @param kind Caller-owned terminal-kind output.
         * @param value Caller-owned complete terminal result.
         * @return Original terminal poll/codec result.
         */
        roswasmc_result result(uint64_t id, uint8_t& kind, Result& value)
        {
            return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_result(&bundle_, id, &kind, &value);
        }

        /**
         * @brief Request cancellation once for a goal tracked by this owner.
         * @details Zero and foreign IDs are refused. Acceptance is not terminal completion or a physical-
         * stop guarantee; retain the goal until terminal consumption or explicit checked retirement.
         * @param id Nonzero locally owned goal ID.
         * @param accepted Cancellation acceptance output on success.
         * @return Original owned-cancellation result; no stronger role is substituted.
         */
        roswasmc_result cancel_own(uint64_t id, int& accepted)
        {
            return roswasmc_action_bundle_cancel_own(&bundle_, id, &accepted);
        }

        /**
         * @brief Use the separately granted any-goal cancellation role once.
         * @details This role is distinct from own cancellation. A zero selector has the ABI's all-goals
         * meaning only under this independently granted authority. No timeout recovery escalates into it.
         * @param id Explicit native selector for this separately granted operation.
         * @param accepted Acceptance output on success, not proof of terminal completion.
         * @return Original cancellation result.
         */
        roswasmc_result cancel_any(uint64_t id, int& accepted)
        {
            return roswasmc_action_bundle_cancel_any(&bundle_, id, &accepted);
        }

        /**
         * @brief Explicitly request all-goal cancellation through the any-cancel role.
         * @details The zero selector never broadens an own-cancel capability. The caller must independently
         * authorize this operation; ordinary close, rollback and destruction never invoke it.
         * @param accepted Acceptance output on success; physical stopping is not implied.
         * @return Original cancellation result.
         */
        roswasmc_result cancel_all(int& accepted)
        {
            return roswasmc_action_bundle_cancel_all(&bundle_, &accepted);
        }

        /**
         * @brief Inspect saved construction rollback without retiring another role.
         * @details The returned report preserves the original setup error and independent cleanup summary.
         * The statuses overload copies every saved role result; unopened roles retain zero. Service-server
         * order is advertise/respond; action order is send/own-cancel/feedback/result/any-cancel.
         * @param statuses Caller-owned fixed-size output array for all role statuses.
         * @return The saved rollback report; no import or retry is performed.
         */
        roswasmc_cleanup_report construction_cleanup(std::array<uint32_t, 5>& statuses) const
        {
            for(size_t i = 0; i < statuses.size(); ++i)
                statuses[i] = bundle_.rollback_status[i];
            return bundle_.rollback;
        }

        /**
         * @brief Retire owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * The report keeps primary/first cleanup errors and attempt/failure counts separate. No automatic
         * reopen, stronger cancellation, effect replay or physical-stop claim occurs.
         * @param primary Earlier operation error, retained independently from cleanup.
         * @param statuses Caller-owned per-role results in the declared role order.
         * @return Saved primary and independent cleanup report.
         */
        roswasmc_cleanup_report close_checked(uint32_t primary, std::array<uint32_t, 5>& statuses)
        {
            return roswasmc_action_bundle_close_checked(&bundle_, primary, statuses.data(), statuses.size());
        }

        /**
         * @brief Revoke owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * The report keeps primary/first cleanup errors and attempt/failure counts separate. No automatic
         * reopen, stronger cancellation, effect replay or physical-stop claim occurs.
         * @param primary Earlier operation error, retained independently from cleanup.
         * @param statuses Caller-owned per-role results in the declared role order.
         * @return Saved primary and independent cleanup report.
         */
        roswasmc_cleanup_report revoke_checked(uint32_t primary, std::array<uint32_t, 5>& statuses)
        {
            return roswasmc_action_bundle_revoke_checked(&bundle_, primary, statuses.data(), statuses.size());
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Control_msgsActionFollowJointTrajectoryServer.
     * @details This object owns the separate advertisement/response capabilities and borrows only the
     * immutable backend. It cannot be copied or moved; context/goal storage stays stable through every call.
     * The caller serializes access and observes explicit cleanup reports before destruction. Callbacks
     * borrow values only during invocation; no hidden thread or retry is created.
     */
    class Ros2Control_msgsActionFollowJointTrajectoryServer : public ServerOwners
    {
    public:
        using Goal = Ros2Control_msgsActionFollowJointTrajectory_Goal;
        using Result = Ros2Control_msgsActionFollowJointTrajectory_Result;
        using Feedback = Ros2Control_msgsActionFollowJointTrajectory_Feedback;

        /**
         * @brief Own the complete selected feedback and terminal reply values.
         * @details The callback returns this value by ownership. Each flag explicitly selects its effect;
         * terminal kind is 2..4 only when send_result is true. A completed feedback effect is not replayed
         * if the later terminal send fails. Original message units and frames are preserved.
         */
        struct Replies
        {
            Feedback feedback{};
            Result result{};
            uint8_t kind{2};
            bool send_feedback{true}, send_result{true};
        };

    private:
        using Handler = std::function<Replies(uint64_t, Goal const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param advertise Distinct advertisement alias bytes, borrowed through construction.
         * @param respond Distinct response alias bytes, borrowed through construction.
         */
        Ros2Control_msgsActionFollowJointTrajectoryServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, true}
        {
        }

        /**
         * @brief Replace the owned action callback for the next executor pass.
         * @details The current functor survives its pass. Goal references are borrowed until callback
         * return; copy complete values before retaining them. Replies choose feedback/result effects
         * explicitly. Callback exceptions are not translated into fabricated native terminal results.
         * @param handler Owned goal callable, or empty to disable dispatch.
         */
        void on_goal(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        /**
         * @brief Poll one whole native request/goal.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @param id Nonzero native goal-ID output on success.
         * @param goal Complete caller-owned goal output.
         * @return Original poll/codec result.
         */
        roswasmc_result poll_once(uint64_t& id, Goal& goal)
        {
            if(busy_)
            {
                return roswasmc_action_bundle_failure(17);
            }
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            Pass guard{busy_};
            return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_poll(&advertise_, &id, &goal);
        }

        /**
         * @brief Send one complete feedback component for a pending native goal.
         * @details The server borrows the value through this call; canonical bounds and every field are
         * validated before the effect. Native goal and response-role authority remain host checks.
         * @param id Nonzero pending native goal ID.
         * @param value Complete original feedback value.
         * @return Original feedback result.
         */
        roswasmc_result respond_feedback(uint64_t id, Feedback const& value)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_respond_feedback(&respond_, id, &value);
        }

        /**
         * @brief Send one explicit terminal component for a pending native goal.
         * @details Terminal kind 2..4 and the whole result are validated. A terminal effect is consumed
         * once; an uncertain return never triggers automatic response replay or another cancellation role.
         * @param id Nonzero pending goal ID.
         * @param kind Explicit ABI terminal kind in 2..4.
         * @param value Complete original terminal result.
         * @return Original terminal response/codec result.
         */
        roswasmc_result respond_result(uint64_t id, uint8_t kind, Result const& value)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_respond_result(&respond_, id, kind, &value);
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t poll_once()
        {
            return process_once();
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t process_once()
        {
            if(busy_)
            {
                return 17;
            }
            if(error())
            {
                return error();
            }
            auto handler = handler_;
            if(!handler)
            {
                return 22;
            }
            Pass guard{busy_};
            uint64_t id{};
            Goal goal{};
            auto r = roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_poll(&advertise_, &id, &goal);
            if(r.error)
            {
                return r.error;
            }
            auto replies = (*handler)(id, goal);
            if(replies.send_result &&
               (replies.kind < 2 || replies.kind > 4 || !roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result_valid(&replies.result)))
            {
                return 22;
            }
            if(replies.send_feedback && !roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback_valid(&replies.feedback))
            {
                return 22;
            }
            if(replies.send_feedback)
            {
                r = roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_respond_feedback(&respond_, id, &replies.feedback);
                if(r.error)
                {
                    return r.error;
                }
            }
            return replies.send_result
                       ? roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_respond_result(&respond_, id, replies.kind, &replies.result).error
                       : 0;
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Std_srvsSrvTriggerClient.
     * @details This object owns the single service-call capabilities and borrows only the immutable backend.
     * It cannot be copied or moved; context/goal storage stays stable through every call. The caller
     * serializes access and observes explicit cleanup reports before destruction. Callbacks borrow values
     * only during invocation; no hidden thread or retry is created.
     */
    class Ros2Std_srvsSrvTriggerClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Std_srvsSrvTrigger_Request;
        using Response = Ros2Std_srvsSrvTrigger_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param selected Exact operator-granted alias bytes, borrowed through this synchronous open.
         */
        Ros2Std_srvsSrvTriggerClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
            {
                error_ = 95;
            }
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
            {
                error_ = UWVM_ROS_INVALID;
            }
            if(!error_)
            {
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
            }
        }

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Std_srvsSrvTriggerClient(Ros2Std_srvsSrvTriggerClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Std_srvsSrvTriggerClient& operator= (Ros2Std_srvsSrvTriggerClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Std_srvsSrvTriggerClient(Ros2Std_srvsSrvTriggerClient&&) = delete;

        /**
         * @brief Attempt ordinary retirement of remaining owned roles on destruction.
         * @details The destructor cannot report cleanup errors. Call close or revoke explicitly and retain
         * its status before destruction. The immutable backend must remain alive. Destruction never adds
         * revocation, stronger cancellation, retries or a physical-stop guarantee.
         */
        ~Ros2Std_srvsSrvTriggerClient()
        {
            if(roswasmc_is_open(&cap_))
            {
                roswasmc_close(&cap_);
            }
        }

        /**
         * @brief Read initialization or retired-owner status without an import.
         * @details This is local owner state rather than native connection health or controller admission. A
         * closed object is not reopened. Preserve later operation and cleanup errors independently.
         * @return The first initialization error, zero while locally open, or 9 after retirement.
         */
        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        /**
         * @brief Inspect whether this object still owns a local role.
         * @details No import, permission lookup or controller health check occurs. A true result does not
         * prove a goal completed or a physical controller is connected.
         * @return Local ownership state.
         */
        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        /**
         * @brief Perform one whole typed service request and decode its complete response.
         * @details Request and response storage are borrowed through this synchronous call. Paired canonical
         * bounds and all original fields remain intact. On transport success inspect native response fields
         * for controller refusal. An uncertain timeout or disconnect is not replayed.
         * @param request Complete initialized request borrowed until return.
         * @param response Caller-owned complete response; inspect after a successful result.
         * @return Original transport/codec status and length facts, without replacing controller fields.
         */
        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_std_srvs_srv_Trigger_call(&cap_, &request, &response);
        }

        /**
         * @brief Retire owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        /**
         * @brief Revoke owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Std_srvsSrvTriggerServer.
     * @details This object owns the separate advertisement/response capabilities and borrows only the
     * immutable backend. It cannot be copied or moved; context/goal storage stays stable through every call.
     * The caller serializes access and observes explicit cleanup reports before destruction. Callbacks
     * borrow values only during invocation; no hidden thread or retry is created.
     */
    class Ros2Std_srvsSrvTriggerServer : public ServerOwners
    {
        using Handler = std::function<Ros2Std_srvsSrvTrigger_Response(Ros2Std_srvsSrvTrigger_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Std_srvsSrvTrigger_Request;
        using Response = Ros2Std_srvsSrvTrigger_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param advertise Distinct advertisement alias bytes, borrowed through construction.
         * @param respond Distinct response alias bytes, borrowed through construction.
         */
        Ros2Std_srvsSrvTriggerServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /**
         * @brief Replace the owned service callback for the next executor pass.
         * @details The current shared functor remains alive through its pass, including mutable state.
         * Request references are borrowed only during invocation. Allocation and callback exceptions
         * propagate; the pass guard restores reentrancy state. Registration performs no native request.
         * @param handler Owned callable moved into shared callback storage; empty disables dispatch.
         */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        /**
         * @brief Poll one whole native request/goal.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @param ticket Native service ticket output on success.
         * @param request Complete caller-owned request output.
         * @return Original poll/codec result.
         */
        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
            {
                return roswasmc_action_bundle_failure(17);
            }
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            Pass guard{busy_};
            return roswasmc_bounded_2_std_srvs_srv_Trigger_poll(&advertise_, &ticket, &request);
        }

        /**
         * @brief Respond once to the exact native service ticket.
         * @details The complete response is borrowed through encoding and the synchronous import. The host
         * validates ticket/type/role ownership. Do not repeat an uncertain response or respond again to a
         * request already completed by process_once().
         * @param ticket Nonzero pending native service ticket.
         * @param response Complete initialized response.
         * @return Original response/codec result.
         */
        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
            {
                return roswasmc_action_bundle_failure(error());
            }
            return roswasmc_bounded_2_std_srvs_srv_Trigger_respond(&respond_, ticket, &response);
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t poll_once()
        {
            return process_once();
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t process_once()
        {
            if(busy_)
            {
                return 17;
            }
            if(error())
            {
                return error();
            }
            auto handler = handler_;
            if(!handler)
            {
                return 22;
            }
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_std_srvs_srv_Trigger_poll(&advertise_, &ticket, &request);
            if(r.error)
            {
                return r.error;
            }
            Response response = (*handler)(request);
            return roswasmc_bounded_2_std_srvs_srv_Trigger_respond(&respond_, ticket, &response).error;
        }
    };
}  // namespace uwvm_custom
