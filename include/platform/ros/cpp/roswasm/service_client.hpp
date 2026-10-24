/** @file
 * @brief Checked C++ ownership for the optional service-client extension.
 *
 * @details This class owns only an independently selected availability alias and borrows
 * an already-open call owner. It never grants, infers or reopens either alias.
 * The borrowed Capability, Context and explicit extension table must outlive
 * the object. Moving or closing the borrowed owner while this facade lives is a
 * caller lifetime error; local close/revoke observations are still checked.
 * Actual Host leases remain the authority boundary across every native effect.
 * @see roswasmcpp::ServiceAvailability
 */
#pragma once
#include <platform/ros/cpp/roswasm/roswasmcpp.hpp>
#include <platform/ros/c/roswasm/service_client.h>
#if ROSWASM_CPP_STANDARD == 98 || ROSWASM_CPP_STANDARD == 3 || ROSWASM_CPP_STANDARD < 20
# include <platform/ros/cpp/roswasm/detail/portable_service_client.hpp>
#else
namespace roswasmcpp
{
    /** @brief Stationary owner of one explicitly granted readiness-observation alias.
     * @details Borrows the original source Capability/context and immutable extension
     * table. Keep them live and stationary through cleanup; closing/moving/replacing
     * the source is a caller lifetime error. Local handle checks do not replace host
     * lease/generation authority. Copies and moves are disabled. Calls are synchronous
     * and serialized, with no business submission, automatic spin or retry.
     * @see ServiceAvailability::query
     */
    class ServiceAvailability
    {
        roswasmc_service_client_backend const* api_{};
        Capability& source_;
        std::uint64_t source_handle_{};
        Capability available_;
        std::uint32_t error_{};
        std::uint32_t cleanup_status_{};
        bool cleanup_attempted_{};

        static std::uint32_t preflight(roswasmc_context const& context, roswasmc_service_client_backend const& api, Capability const& source) noexcept
        {
            if(!context.backend || api.version < 1 || api.version > 2 || api.version != context.backend->version)
            {
                return UWVM_ROS_INVALID;
            }
            if(!source.is_open())
            {
                return UWVM_ROS_BAD_HANDLE;
            }
            if(source.cap_.context != &context)
            {
                return UWVM_ROS_INVALID;
            }
            if(!api.abi_version || !api.features || !api.query)
            {
                return UWVM_ROS_UNSUPPORTED;
            }
            return api.abi_version() == 1 ? 0u : UWVM_ROS_UNSUPPORTED;
        }

    public:
        /** @brief Validate table/source identity and open one explicit query alias.
         * @details Require the same original C context as source, a live source,
         * matching backend/table version 1 or 2, required callbacks and extension
         * ABI version 1. A failed local check opens nothing; failed acquisition keeps
         * its exact error. No feature query or business request is submitted.
         * @param context Original stationary context also borrowed by source.
         * @param api Immutable extension table, live through the facade's lifetime.
         * @param source Already-open call capability borrowed without ownership transfer.
         * @param alias Independent explicit availability alias, borrowed during open.
         * @see ServiceAvailability::error
         */
        ServiceAvailability(roswasmc_context const& context, roswasmc_service_client_backend const& api, Capability& source, std::string_view alias) :
            api_{&api}, source_{source}, source_handle_{source.handle()}, available_{Capability::checked(context, alias, preflight(context, api, source))},
            error_{available_.error()}
        {
        }

        /** @brief Disable copying this stationary source/query association.
         * @details Query ownership and the source borrow cannot be duplicated here.
         * @see ServiceAvailability::ServiceAvailability
         */
        ServiceAvailability(ServiceAvailability const&) = delete;
        /** @brief Disable replacing the stationary association by copy assignment.
         * @details This deleted operation performs no close, acquisition or query.
         * @see ServiceAvailability::close
         */
        ServiceAvailability& operator= (ServiceAvailability const&) = delete;
        /** @brief Disable moving the facade and its stationary source association.
         * @details Construct the facade at its final address and retain its dependents.
         * @see ServiceAvailability::ServiceAvailability
         */
        ServiceAvailability(ServiceAvailability&&) = delete;
        /** @brief Disable move replacement of the source/query association.
         * @details Explicit cleanup is required rather than implicit owner replacement.
         * @see ServiceAvailability::close
         */
        ServiceAvailability& operator= (ServiceAvailability&&) = delete;

        /** @brief Attempt best-effort close of the independently owned query handle.
         * @details The borrowed source is never closed here. Inspect explicit close
         * and cleanup_status before destruction when notification status matters.
         * @see ServiceAvailability::close
         */
        ~ServiceAvailability()
        {
            (void)close();
        }

        /** @brief Read the cached initialization status without backend I/O.
         * @details This is independent of later feature/query/cleanup results.
         * @return Exact local preflight/open error, or zero after successful setup.
         * @see ServiceAvailability::is_open
         */
        std::uint32_t error() const noexcept
        {
            return error_;
        }

        /** @brief Inspect the separately owned local query handle.
         * @details This does not observe service readiness or native source liveness.
         * @return True while the query Capability remains locally open.
         * @see ServiceAvailability::query
         */
        bool is_open() const noexcept
        {
            return available_.is_open();
        }

        /** @brief Read actual validated extension feature bits once.
         * @details Cached setup errors and changed source-handle bits fail before
         * dispatch. The original C helper validates table/source/query association
         * and features; returned bits never supply additional business authority.
         * @param output Feature-bit destination, unchanged on numeric failure.
         * @return Setup error, BAD_HANDLE for changed source, or exact C helper result.
         * @see roswasmc_service_client_features
         */
        std::uint32_t features(std::uint64_t& output) const
        {
            if(error_)
            {
                return error_;
            }
            if(source_.handle() != source_handle_)
            {
                return UWVM_ROS_BAD_HANDLE;
            }
            return roswasmc_service_client_features(api_, &available_.cap_, &source_.cap_, &output);
        }

        /** @brief Perform one explicit finite readiness observation.
         * @details Zero wait still makes a real query. Positive waits are physical
         * native observations within 0..60000000000 nanoseconds; host bounds may be
         * smaller. The C helper validates response bits before replacing output.
         * No business request, hidden clock/pacing loop or replay is introduced.
         * @param wait_ns Explicit finite native wait budget in nanoseconds.
         * @param output Validated readiness Boolean, unchanged on numeric failure.
         * @return Cached setup/source error or the exact C query result.
         * @see roswasmc_service_client_query
         */
        std::uint32_t query(std::uint64_t wait_ns, bool& output) const
        {
            if(error_)
            {
                return error_;
            }
            int next{};
            if(source_.handle() != source_handle_)
            {
                return UWVM_ROS_BAD_HANDLE;
            }
            auto code = roswasmc_service_client_query(api_, &available_.cap_, &source_.cap_, wait_ns, &next);
            if(!code)
            {
                output = next != 0;
            }
            return code;
        }

        /** @brief Attempt close of the independent query owner once per live handle.
         * @details Empty returns zero without changing retained cleanup observations.
         * Entering a live close sets cleanup_attempted. Missing local dispatch may
         * retain the owner; an actual callback attempt retires its handle even on
         * notification error. The borrowed call owner is untouched.
         * @return Zero when empty, otherwise the exact Capability close result.
         * @see ServiceAvailability::cleanup_status
         */
        std::uint32_t close()
        {
            if(!available_.is_open())
            {
                return 0u;
            }
            cleanup_attempted_ = true;
            cleanup_status_ = available_.close();
            return cleanup_status_;
        }

        /** @brief Explicitly revoke the separately owned query alias.
         * @details Empty returns zero. Records this live facade retirement attempt;
         * missing callbacks preserve ownership, while actual imported attempts retire
         * it even on notification error. Host alias revocation can affect siblings
         * and is never an implicit query/timeout recovery path.
         * @return Zero when empty, otherwise exact Capability revocation result.
         * @see ServiceAvailability::close
         */
        std::uint32_t revoke()
        {
            if(!available_.is_open())
            {
                return 0u;
            }
            cleanup_attempted_ = true;
            cleanup_status_ = available_.revoke();
            return cleanup_status_;
        }

        /** @brief Read the last recorded live close/revoke facade result.
         * @details Zero is also the initial value. Empty repeated cleanup leaves this
         * slot unchanged; a local unsupported result does not prove native retirement.
         * @return Retained numeric cleanup result.
         * @see ServiceAvailability::cleanup_attempted
         */
        std::uint32_t cleanup_status() const noexcept
        {
            return cleanup_status_;
        }

        /** @brief Inspect whether a live facade close/revoke path was entered.
         * @details This records local method entry, not proof that a native callback
         * ran; missing dispatch can return an error while preserving the owner.
         * @return True after any live local retirement attempt.
         * @see ServiceAvailability::cleanup_status
         */
        bool cleanup_attempted() const noexcept
        {
            return cleanup_attempted_;
        }
    };
}  // namespace roswasmcpp
#endif  // selected portable/modern service availability
