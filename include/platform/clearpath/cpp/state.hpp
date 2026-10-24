/**
 * @file state.hpp
 * @brief Preserve the complete source-pinned platform interface.
 * @details Original declarations, field order, widths and protocol operations
 * are retained. Native deployment and permissions are configured separately.
 * See this platform's source inventory and language manual for exact bounds,
 * ownership and compilation/transport qualification.
 */
/* SPDX-License-Identifier: Apache-2.0
 * Standard-selected complete-state reader over the original C values.
 * Current generated facades share the selected profile; raw freestanding views use C bindings.
 */
#ifndef UWVM_CLEARPATH_STATE_HPP
#define UWVM_CLEARPATH_STATE_HPP
#include <ros/cpp/roswasm/cpp_profile.hpp>
#include <clearpath/c/state.h>
#if !defined(ROSWASM_CPP_FREESTANDING)
# include "bounded_interfaces.hpp"
#else
# include "bounded_interfaces.h"
#endif
#include <string.h>

namespace roswasm_clearpath
{
    /** @brief Exact selected complete Clearpath, Husky or Jackal state type.
     * @details Retains every original field and selected generated bound; availability
     * establishes neither a native endpoint nor a robot model or permission.
     * @see Reader uwvm_clearpath_state
     */
    typedef uwvm_clearpath_state State;

    /** @brief Borrow an explicitly owned complete-state receive capability.
     * @details Owns only wire scratch and retains cap's stable address. cap/context/
     * backend outlive this object and calls. No open/close, thread or callback occurs;
     * copies borrow the same owner and still need external capability serialization.
     * @see poll uwvm_clearpath_poll_state
     */
    class Reader
    {
        roswasmc_capability const* cap_;
        uwvm_clearpath_storage scratch_;

    public:
        /** @brief Retain a selected receive capability without an ABI call.
         * @details No validation or authority is added; poll validates the backend.
         * @param[in] cap Live borrowed receive owner at a stable address until last use.
         * @see poll uwvm_clearpath_storage
         */
        explicit Reader(roswasmc_capability const& cap) ROSWASM_CPP_NOEXCEPT : cap_(&cap)
        {
            memset(&scratch_, 0, sizeof scratch_);
        }

        /** @brief Poll once and completely decode the original selected state.
         * @details Internal scratch is exclusively borrowed. Idle11 is not delivery;
         * capacity90 does not allocate/retry and no unit/model conversion occurs.
         * @param[out] value Writable complete State, disjoint from this object.
         * @return Original uwvm_clearpath_poll_state status; no C++ exception.
         * @thread Serialize this reader and all users of its borrowed capability.
         * @see State uwvm_clearpath_poll_state
         */
#if !ROSWASM_CPP_LEGACY && ROSWASM_CPP_STANDARD >= 17
        [[nodiscard]]
#endif
        uint32_t poll(State& value) ROSWASM_CPP_NOEXCEPT
        {
            return uwvm_clearpath_poll_state(cap_, &value, &scratch_);
        }
    };
}  // namespace roswasm_clearpath
#endif
