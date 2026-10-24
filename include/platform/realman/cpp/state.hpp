/**
 * @file state.hpp
 * @brief Retain original realman value/workflow support under explicit caller ownership.
 * @details Use the exact source-selected complete record APIs and their finite bounds. Keep native
 * units, model selection and application result meanings unchanged. The caller supplies existing
 * capabilities and serializes mutable state; local construction, formatting and cleanup confer no grant,
 * automatic replay or physical command-completion guarantee.
 * @see The platform's localized language guide and complete API-CATALOG.md.
 */
/* SPDX-License-Identifier: Apache-2.0
 * C++20 borrowed facades. Construction opens no resource or robot connection. */
#ifndef UWVM_REALMAN_STATE_HPP
#define UWVM_REALMAN_STATE_HPP
#include <cstdint>
#include <realman/c/state.h>

namespace roswasm_realman
{
    using State = uwvm_realman_status;
    using Command = UWVM_REALMAN_COMMAND;

    /**

     * @brief Borrow the explicitly selected whole-value reader.

     * @details Retain the original capability, context and backend longer than this facade. Serialize

     * all calls; the facade owns scratch only and performs no acquisition or automatic cleanup.

     */

    class Reader
    {
        roswasmc_capability const* cap_;
        uwvm_realman_status_storage bytes_{};

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
            return uwvm_realman_poll_status(cap_, &out, &bytes_);
        }
    };

    /**

     * @brief Borrow the explicitly selected whole-value publisher.

     * @details Retain the original capability, context and backend longer than this facade. Serialize

     * all calls; the facade owns scratch only and performs no acquisition or automatic cleanup.

     */

    class Publisher
    {
        roswasmc_capability const* cap_;
        unsigned char bytes_[UWVM_REALMAN_COMMAND_CAPACITY]{};

    public:
        /**
         * @brief Bind caller-owned capability lifetime to this local facade.
         * @param cap Already opened exact operation capability; retain it and its context/backend
         * through every call.
         * @details Construction creates bounded local scratch and grants no authority. The caller
         * remains responsible for subscription admission where needed and one independent close.
         */
        explicit Publisher(roswasmc_capability const& cap) noexcept : cap_(&cap)
        {
        }

        /**

         * @brief Publish one complete selected original command.

         * @param v Complete original immutable value in native units.

         * @return Original transport, codec or model-check errno; idle 11 and capacity 90 remain

         * explicit.

         * @details Borrow all owners synchronously; no implicit retry, cleanup or permission change

         * occurs.

         */

        [[nodiscard]] std::uint32_t publish(Command const& v) noexcept
        {
            return uwvm_realman_publish_joint(cap_, &v, bytes_, sizeof bytes_);
        }
    };
}  // namespace roswasm_realman
#endif
