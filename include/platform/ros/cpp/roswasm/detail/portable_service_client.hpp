/** @file
 * @brief Portable stationary owner for optional service availability observation.
 * @details Included by service_client.hpp after the selected facade/C extension
 * types. Copies the C context locally while borrowing backend/callback state,
 * the source owner and extension table. All calls are synchronous and serialized;
 * no alias, native business request, clock or retry is inferred.
 * @see roswasmcpp::ServiceAvailability
 */
#pragma once

namespace roswasmcpp
{
    /** @brief Stationary portable query owner borrowing an explicit call capability.
     * @details Keep source, immutable extension table and backend/callback state
     * live through cleanup. Source close/move/replacement is a caller lifetime error;
     * changed handle bits are detected locally, while host leases remain authoritative.
     * The C context is copied into this facade and no C++ ownership is duplicated.
     * Copying/assignment are disabled and no public move is supplied in this profile.
     * @see ServiceAvailability::query
     */
    class ServiceAvailability
    {
        roswasmc_service_client_backend const& api_;
        Capability& source_;
        uint64_t source_handle_;
        roswasmc_capability source_view_, available_;
        roswasmc_context context_;
        uint32_t error_, cleanup_;
        bool attempted_;
        ServiceAvailability(ServiceAvailability const&);
        ServiceAvailability& operator= (ServiceAvailability const&);

    public:
        /** @brief Validate the original source association and open one query alias.
         * @details Requires the original context identity recorded by source, a live
         * source, backend/table version agreement in 1..2, nonnull callbacks and ABI
         * callback value 1. Failed local checks open no alias. The copied C context
         * owns no backend state; alias bytes are borrowed during acquisition only.
         * @param context Original source-associated C context, copied locally.
         * @param api Immutable explicit extension table, borrowed through cleanup.
         * @param source Live stationary call Capability borrowed without transfer.
         * @param alias Independent explicit availability alias for this acquisition.
         * @see ServiceAvailability::error
         */
        ServiceAvailability(roswasmc_context const& context, roswasmc_service_client_backend const& api, Capability& source, StringView alias) :
            api_(api), source_(source), source_handle_(source.handle()), source_view_(), available_(), context_(context), error_(0), cleanup_(0),
            attempted_(false)
        {
            roswasmc_capability_init(&available_, &context_);
            source_view_ = source.cap_;
            source_view_.context = &context_;
            error_ = !context.backend || source.identity_ != &context || api.version < 1 || api.version > 2 || api.version != context.backend->version
                         ? UWVM_ROS_INVALID
                     : !source.is_open()                               ? UWVM_ROS_BAD_HANDLE
                     : !api.abi_version || !api.features || !api.query ? UWVM_ROS_UNSUPPORTED
                     : api.abi_version() != 1                          ? UWVM_ROS_UNSUPPORTED
                                                                       : 0;
            if(!error_)
            {
                error_ = roswasmc_open(&available_, alias.data(), alias.size());
            }
        }

        /** @brief Attempt best-effort close of the independently owned query role.
         * @details The source is never closed. Explicit close before destruction is
         * required to inspect cleanup status or handle missing dispatch recovery.
         * @see ServiceAvailability::close
         */
        ~ServiceAvailability()
        {
            close();
        }

        /** @brief Read cached initialization status without I/O.
         * @details Later query/feature/cleanup statuses are returned independently.
         * @return Exact local/open setup error or zero after successful construction.
         * @see ServiceAvailability::is_open
         */
        uint32_t error() const
        {
            return error_;
        }

        /** @brief Inspect only the locally owned query capability's open state.
         * @details This observes neither service readiness nor native source liveness.
         * @return True for a locally live query handle.
         * @see ServiceAvailability::query
         */
        bool is_open() const
        {
            return roswasmc_is_open(&available_) != 0;
        }

        /** @brief Obtain one validated feature-bit observation from the C extension.
         * @details Cached setup errors or changed source bits fail before dispatch.
         * The C helper independently validates the source/query/table association;
         * feature bits supply no additional business authority.
         * @param output Feature-bit destination, unchanged on numeric failure.
         * @return Setup/source error or the exact C feature-query result.
         * @see roswasmc_service_client_features
         */
        uint32_t features(uint64_t& output) const
        {
            if(error_)
            {
                return error_;
            }
            if(source_.handle() != source_handle_)
            {
                return UWVM_ROS_BAD_HANDLE;
            }
            return roswasmc_service_client_features(&api_, &available_, &source_view_, &output);
        }

        /** @brief Perform one explicit finite native readiness observation.
         * @details Wait is 0..60000000000 nanoseconds, with possible smaller host
         * policy bounds. Zero still performs a real query. Validate through a local
         * C Boolean temporary before replacing output; no business request, spin,
         * implicit clock or retry is introduced.
         * @param wait Explicit finite native observation budget in nanoseconds.
         * @param output Validated ready Boolean, unchanged on numeric failure.
         * @return Cached setup/source error or exact C query status.
         * @see roswasmc_service_client_query
         */
        uint32_t query(uint64_t wait, bool& output) const
        {
            if(error_)
            {
                return error_;
            }
            if(source_.handle() != source_handle_)
            {
                return UWVM_ROS_BAD_HANDLE;
            }
            int next = 0;
            uint32_t code = roswasmc_service_client_query(&api_, &available_, &source_view_, wait, &next);
            if(!code)
            {
                output = next != 0;
            }
            return code;
        }

        /** @brief Attempt ordinary close of the independently owned query handle.
         * @details Empty returns zero without resetting the recorded cleanup fields.
         * Live method entry records attempted before the C call. Missing local
         * callback preserves the owner; an actual callback attempt retires its handle
         * even on notification error. The borrowed source remains untouched.
         * @return Zero for empty or exact C close result.
         * @see ServiceAvailability::cleanup_status
         */
        uint32_t close()
        {
            if(!is_open())
            {
                return 0;
            }
            attempted_ = true;
            cleanup_ = roswasmc_close(&available_);
            return cleanup_;
        }

        /** @brief Explicitly revoke only the independently owned query alias.
         * @details Empty returns zero. Live method entry records its result; missing
         * callbacks retain ownership, while real callback attempts retire local bits
         * even on error. Host alias revocation may affect siblings and is never an
         * implicit timeout/query recovery path.
         * @return Zero for empty or exact C revocation result.
         * @see ServiceAvailability::close
         */
        uint32_t revoke()
        {
            if(!is_open())
            {
                return 0;
            }
            attempted_ = true;
            cleanup_ = roswasmc_revoke(&available_);
            return cleanup_;
        }

        /** @brief Read the last retained live close/revoke facade result.
         * @details Zero is also the initial default. Repeated empty cleanup leaves
         * the value unchanged; an unsupported local result proves no native effect.
         * @return Retained numeric cleanup status.
         * @see ServiceAvailability::cleanup_attempted
         */
        uint32_t cleanup_status() const
        {
            return cleanup_;
        }

        /** @brief Inspect whether a live local close/revoke path was entered.
         * @details This flag alone does not prove an imported callback ran; absent
         * dispatch can produce an error while preserving the query owner.
         * @return True after at least one nonempty facade retirement attempt.
         * @see ServiceAvailability::cleanup_status
         */
        bool cleanup_attempted() const
        {
            return attempted_;
        }
    };
}  // namespace roswasmcpp
