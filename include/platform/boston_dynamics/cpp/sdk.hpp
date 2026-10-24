/**
 * @file sdk.hpp
 * @brief Preserve the complete source-pinned platform interface.
 * @details Original declarations, field order, widths and protocol operations
 * are retained. Native deployment and permissions are configured separately.
 * See this platform's source inventory and language manual for exact bounds,
 * ownership and compilation/transport qualification.
 */
/** @file
 * @brief Standard-selected complete typed Spot bridge clients over one real C path.
 * @details One cpp source follows ROSWASM_CPP_STANDARD98/3/11/14/17/20/23/26.
 * These project bridge values are distinct from Boston Dynamics native C layouts.
 * Native networking, SDK5.0.1 credentials/wallets/leases and authority stay in the
 * independently admitted native provider. Construction performs no ROS call.
 * @see Client mm_spot_buffers
 */
#pragma once
#include <ros/cpp/roswasm/cpp_profile.hpp>
#include <string.h>
#include <boston_dynamics/c/sdk.h>
#if !defined(ROSWASM_CPP_FREESTANDING)
# include "bounded_records.hpp"
#endif
namespace uwvm_mobile
{
    namespace spot
    {
        typedef mm_spot_State_request StateRequest;
        typedef mm_spot_State_response StateResponse;
        typedef mm_spot_Lease_request LeaseRequest;
        typedef mm_spot_Lease_response LeaseResponse;
        typedef mm_spot_Command_request CommandRequest;
        typedef mm_spot_Command_response CommandResponse;
        typedef mm_spot_Velocity_request VelocityRequest;
        typedef mm_spot_Velocity_response VelocityResponse;
        typedef mm_spot_Feedback_request FeedbackRequest;
        typedef mm_spot_Feedback_response FeedbackResponse;

        /** @brief Keep complete bridge scratch without acquiring any native resource.
         * @details Noncopying stationary storage; no native owner, alias, clock, thread,
         * SDK lease or network client is created. Each method borrows the caller's exact
         * separately granted service.call owner. Complete response.error/unknown remain
         * independent of the transport result. An unknown effect is never replayed.
         * @see state lease command velocity feedback
         */
        class Client
        {
            mm_spot_buffers buffers_;

        public:
            /** @brief Initialize only fixed complete-request/response scratch.
             * @details Zeroes the busy flag and copied wire/value storage. No ROS/native
             * call or permission is involved; this object remains stationary/noncopying.
             * @see mm_spot_buffers state
             */
            Client() ROSWASM_CPP_NOEXCEPT
            {
                memset(&buffers_, 0, sizeof buffers_);
            }
#if ROSWASM_CPP_LEGACY

        private:
            /** @brief Reject old-standard copying of stationary scratch at compile time.
             * @details Private and undefined; no ownership transfer or native I/O exists.
             * @param[in] other Source client; copying it is deliberately inaccessible.
             * @see Client
             */
            Client(Client const& other);
            /** @brief Reject old-standard assignment without creating an auto-move path.
             * @details Private and undefined; no runtime operation can enter this member.
             * @param[in] other Client that cannot be assigned into this stationary object.
             * @return No value is produced because access is rejected during compilation.
             * @see Client
             */
            Client& operator= (Client const& other);

        public:
#else
            /** @brief Reject copying of stationary complete-message scratch.
             * @details Deleted in modern profiles; no owner or native resource is moved.
             * @param[in] other Source client; this operation cannot be called.
             * @see Client
             */
            Client(Client const& other) = delete;
            /** @brief Reject assignment of stationary complete-message scratch.
             * @details Deleted; changes no local/native object or authority.
             * @param[in] other Source client that cannot be assigned.
             * @return No value; attempting the deleted operation is a compile-time error.
             * @see Client
             */
            Client& operator= (Client const& other) = delete;
#endif
            /** @brief Call one complete project State service through the genuine bridge.
             * @details All original bridge fields, token/nonce and budget are retained.
             * This request grants no native robot-state access by itself.
             * @param[in] owner Live exact State service.call owner/context, borrowed.
             * @param[in] request Complete immutable State request; budget1..5e9ns.
             * @param[out] response Complete disjoint response, unchanged on invalid reply.
             * @return Original transport/codec result; inspect provider error/unknown too.
             * @thread Serialize this object and owner through return; no callback is added.
             * @see mm_spot_State_call StateRequest StateResponse
             */
            roswasmc_result state(roswasmc_capability const& owner, StateRequest const& request, StateResponse& response) ROSWASM_CPP_NOEXCEPT
            {
                return mm_spot_State_call(&owner, &request, &response, &buffers_);
            }

            /** @brief Perform one explicit complete Acquire/Retain/ReturnLease bridge call.
             * @details The complete selected request distinguishes lease operations; no
             * lease is inferred, renewed or returned by this object's lifetime.
             * @param[in] owner Independently granted exact lease service owner/context.
             * @param[in] request Whole immutable request with nonzero token/nonce/budget.
             * @param[out] response Whole disjoint response; check provider error/unknown.
             * @return Original transport/codec status; no replay on timeout/unknown effect.
             * @thread Serialize this object and all uses of owner; native wallet stays native.
             * @see mm_spot_Lease_call LeaseRequest LeaseResponse
             */
            roswasmc_result lease(roswasmc_capability const& owner, LeaseRequest const& request, LeaseResponse& response) ROSWASM_CPP_NOEXCEPT
            {
                return mm_spot_Lease_call(&owner, &request, &response, &buffers_);
            }

            /** @brief Submit one complete explicitly selected bridge command without replay.
             * @details Stand and Stop remain independent native operation grants. A
             * successful bridge reply is not proof of physical pose or standstill.
             * @param[in] owner Exact independently granted command service owner/context.
             * @param[in] request Full immutable command, token/nonce and finite native budget.
             * @param[out] response Full disjoint response retaining command/error/unknown.
             * @return Original transport/codec status; native/provider status stays separate.
             * @thread Serialize this object and owner; creates no callback or native thread.
             * @see mm_spot_Command_call CommandRequest CommandResponse
             */
            roswasmc_result command(roswasmc_capability const& owner, CommandRequest const& request, CommandResponse& response) ROSWASM_CPP_NOEXCEPT
            {
                return mm_spot_Command_call(&owner, &request, &response, &buffers_);
            }

            /** @brief Submit one complete separately admitted velocity bridge request.
             * @details Native model/frame/lease/watchdog bounds remain native policy.
             * No axis, timeout, lease use or physical command is inferred from construction.
             * @param[in] owner Exact independently granted velocity service owner/context.
             * @param[in] request Whole immutable request in original bridge SI units.
             * @param[out] response Complete disjoint response, unchanged on malformed reply.
             * @return Original transport/codec result; provider error/unknown is independent.
             * @thread Serialize this object and every use/retirement of the borrowed owner.
             * @see mm_spot_Velocity_call VelocityRequest VelocityResponse
             */
            roswasmc_result velocity(roswasmc_capability const& owner, VelocityRequest const& request, VelocityResponse& response) ROSWASM_CPP_NOEXCEPT
            {
                return mm_spot_Velocity_call(&owner, &request, &response, &buffers_);
            }

            /** @brief Fetch one whole correlated bridge feedback reply without projection.
             * @details Correlation and complete decoding precede output commit. Feedback
             * does not automatically authorize another command or establish robot safety.
             * @param[in] owner Exact independently granted feedback service owner/context.
             * @param[in] request Full immutable selected command/token/nonce/budget request.
             * @param[out] response Whole disjoint feedback response with provider error/unknown.
             * @return Original transport/codec result; idle/error/unknown never triggers retry.
             * @thread Serialize this object and the borrowed owner through synchronous return.
             * @see mm_spot_Feedback_call FeedbackRequest FeedbackResponse
             */
            roswasmc_result feedback(roswasmc_capability const& owner, FeedbackRequest const& request, FeedbackResponse& response) ROSWASM_CPP_NOEXCEPT
            {
                return mm_spot_Feedback_call(&owner, &request, &response, &buffers_);
            }
        };
    }  // namespace spot
}  // namespace uwvm_mobile
