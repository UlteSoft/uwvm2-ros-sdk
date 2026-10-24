/** @file
 * @brief Explicit ROS 2 backend selection for the portable raw owner.
 * @details Naming this selector opens no alias and grants no independent role,
 * native type, endpoint or QoS association.
 * @see uwvm_ros2::freestanding_capability
 */
#pragma once
#include <stdint.h>
#include <platform/ros2/c/roswasm/ros2.h>
#include <platform/ros/cpp/roswasm/detail/raw_owner.hpp>

namespace uwvm_ros2
{
    /** @brief Stateless selector for the stable ROS 2 C dispatch table.
     * @details Used as a RawOwner template argument without capability acquisition.
     * @see raw_selector::get
     */
    struct raw_selector
    {
        /** @brief Borrow the static ROS 2 dispatch table without invoking an import.
         * @details A table pointer alone supplies no host permission or qualification.
         * @return Non-owning pointer from roswasmc_ros2_backend.
         * @see roswasmc_ros2_backend
         */
        static roswasmc_backend const* get()
        {
            return roswasmc_ros2_backend();
        }
    };

    /** @brief Portable unique raw owner bound to the explicit ROS 2 selector.
     * @details Adds no runtime layer to RawOwner's profile-specific transfer/move,
     * numeric error, length-slot and checked lifetime contracts.
     * @see roswasmcpp::RawOwner
     */
    typedef ::roswasmcpp::RawOwner<raw_selector> freestanding_capability;
}  // namespace uwvm_ros2
