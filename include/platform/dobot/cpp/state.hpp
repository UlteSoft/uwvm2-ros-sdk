/**
 * @file state.hpp
 * @brief Retain original dobot value/workflow support under explicit caller ownership.
 * @details Use the exact source-selected complete record APIs and their finite bounds. Keep native
 * units, model selection and application result meanings unchanged. The caller supplies existing
 * capabilities and serializes mutable state; local construction, formatting and cleanup confer no grant,
 * automatic replay or physical command-completion guarantee.
 * @see The platform's localized language guide and complete API-CATALOG.md.
 */
/* SPDX-License-Identifier: Apache-2.0
 * Borrowed C++20 facades; ownership and policy stay with the caller.
 */
#ifndef UWVM_DOBOT_STATE_HPP
#define UWVM_DOBOT_STATE_HPP
#include "bounded_interfaces.hpp"
#include <dobot/c/state.h>

namespace roswasm_dobot
{
    using Status = uwvm_dobot_status;
    using QueryResponse = uwvm_dobot_query_response;

    /** Borrow an independently opened subscription, without implicit cleanup. */
    /**
     * @brief Borrow the explicitly selected whole-value reader.
     * @details Retain the original capability, context and backend longer than this facade. Serialize
     * all calls; the facade owns scratch only and performs no acquisition or automatic cleanup.
     */
    class Reader
    {
        roswasmc_capability const* cap_;
        uwvm_dobot_status_storage storage_{};

    public:
        /**
         * @brief Bind caller-owned capability lifetime to this local facade.
         * @param cap Already opened exact operation capability; retain it and its context/backend
         * through every call.
         * @details Construction creates bounded local scratch and grants no authority. The caller
         * remains responsible for subscription admission where needed and one independent close.
         */
        explicit Reader(roswasmc_capability const& cap) noexcept : cap_(&cap)
        {
        }

        /**

         * @brief Receive one complete selected observation.

         * @param out Exclusive whole-value output; refusal does not establish a new observation.

         * @return Original transport, codec or model-check errno; idle 11 and capacity 90 remain

         * explicit.

         * @details Borrow all owners synchronously; no implicit retry, cleanup or permission change

         * occurs.

         */

        [[nodiscard]] std::uint32_t poll(Status& out) noexcept
        {
            return uwvm_dobot_poll_status(cap_, &out, &storage_);
        }
    };

    /** Borrow a separately granted GetAngle service capability; never replay. */
    /**
     * @brief Borrow the explicitly selected whole-value service client.
     * @details Retain the original capability, context and backend longer than this facade. Serialize
     * all calls; the facade owns scratch only and performs no acquisition or automatic cleanup.
     */
    class QueryClient
    {
        roswasmc_capability const* cap_;
        uwvm_dobot_query_storage storage_{};

    public:
        /**
         * @brief Bind caller-owned capability lifetime to this local facade.
         * @param cap Already opened exact operation capability; retain it and its context/backend
         * through every call.
         * @details Construction creates bounded local scratch and grants no authority. The caller
         * remains responsible for subscription admission where needed and one independent close.
         */
        explicit QueryClient(roswasmc_capability const& cap) noexcept : cap_(&cap)
        {
        }

        /**

         * @brief Call one complete original query without replay.

         * @param out Exclusive whole-value output; refusal does not establish a new observation.

         * @return Original transport, codec or model-check errno; idle 11 and capacity 90 remain

         * explicit.

         * @details Borrow all owners synchronously; no implicit retry, cleanup or permission change

         * occurs.

         */

        [[nodiscard]] std::uint32_t call(QueryResponse& out) noexcept
        {
            return uwvm_dobot_query_once(cap_, &out, &storage_);
        }
    };
}  // namespace roswasm_dobot
#endif
