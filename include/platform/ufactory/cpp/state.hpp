/**
 * @file state.hpp
 * @brief Retain original ufactory value/workflow support under explicit caller ownership.
 * @details Use the exact source-selected complete record APIs and their finite bounds. Keep native
 * units, model selection and application result meanings unchanged. The caller supplies existing
 * capabilities and serializes mutable state; local construction, formatting and cleanup confer no grant,
 * automatic replay or physical command-completion guarantee.
 * @see The platform's localized language guide and complete API-CATALOG.md.
 */
/* SPDX-License-Identifier: Apache-2.0
 * Borrowed complete-value C++20 readers and the full generated interface API.
 */
#ifndef UWVM_XARM_STATE_HPP
#define UWVM_XARM_STATE_HPP
#include "bounded_interfaces.hpp"
#include <ufactory/c/state.h>

namespace roswasm_xarm
{
    using State = uwvm_xarm_state;
    using QueryResponse = uwvm_xarm_query_response;

    /** Borrow an independently owned state alias. Never open or close it implicitly. */
    /**
     * @brief Borrow the explicitly selected whole-value reader.
     * @details Retain the original capability, context and backend longer than this facade. Serialize
     * all calls; the facade owns scratch only and performs no acquisition or automatic cleanup.
     */
    class Reader
    {
        roswasmc_capability const* cap_;
        uwvm_xarm_storage scratch_{};

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

        [[nodiscard]] std::uint32_t poll(State& out) noexcept
        {
            return uwvm_xarm_poll_state(cap_, &out, &scratch_);
        }
    };

    /** Borrow a separately owned, exactly typed query alias; no polling/replay loop. */
    /**
     * @brief Borrow the explicitly selected whole-value service client.
     * @details Retain the original capability, context and backend longer than this facade. Serialize
     * all calls; the facade owns scratch only and performs no acquisition or automatic cleanup.
     */
    class QueryClient
    {
        roswasmc_capability const* cap_;
        uwvm_xarm_query_storage scratch_{};

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
            return uwvm_xarm_query_once(cap_, &out, &scratch_);
        }
    };
}  // namespace roswasm_xarm
#endif
