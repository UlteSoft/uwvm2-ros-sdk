/** @file
 * @brief Explicit ROS 1 backend selection for the portable raw owner.
 * @details Merely naming this backend grants no role or native endpoint. The
 * static dispatch table and ordinary C import contract remain unchanged.
 * @see uwvm_ros1::freestanding_capability
 */
#pragma once
#include <stdint.h>
#include <platform/ros1/c/roswasm/ros1.h>
#include <platform/ros/cpp/roswasm/detail/raw_owner.hpp>

namespace uwvm_ros1
{
    /** @brief Stateless selector returning the stable ROS 1 C dispatch table.
     * @details Supplies a backend identity to RawOwner without opening an alias.
     * @see raw_selector::get
     */
    struct raw_selector
    {
        /** @brief Borrow the static ROS 1 dispatch table without backend I/O.
         * @details Table identity is not a host grant or native-session qualification.
         * @return Non-owning pointer from roswasmc_ros1_backend.
         * @see roswasmc_ros1_backend
         */
        static roswasmc_backend const* get()
        {
            return roswasmc_ros1_backend();
        }
    };

    /** @brief Portable unique raw owner using the explicit ROS 1 selector.
     * @details Retains RawOwner's profile-specific move/transfer, sentinel length,
     * numeric error and checked lifetime contracts without another runtime layer.
     * @see roswasmcpp::RawOwner
     */
    typedef ::roswasmcpp::RawOwner<raw_selector> freestanding_capability;
}  // namespace uwvm_ros1
