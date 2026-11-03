/** @file
 * @brief Complete owning Unitree Go2 task message values and canonical codecs.
 * @details This source adapter retains all fields from the pinned unitree_go
 * schemas. It does not implement ROSIDL binary ABI, transport, callbacks, grants
 * or a generic rclcpp runtime. All fields are inline; copies own their data.
 */
#pragma once
#include <platform/unitree/c/ros2/records.h>
#include <platform/ros/cpp/roswasm/roswasmcpp.hpp>
#include <memory>
#include <span>
#include <utility>

namespace unitree_go::msg {
using BmsCmd = ::roswasmc_bounded_2_unitree_go_msg_BmsCmd;
using MotorCmd = ::roswasmc_bounded_2_unitree_go_msg_MotorCmd;
/** @brief Full LowCmd value; zero initializes the original fixed fields.
 * @details The nested SharedPtr preserves the upstream callback spelling.
 * No resource or native type support is created by construction/copying.
 */
struct LowCmd : ::roswasmc_bounded_2_unitree_go_msg_LowCmd {
    using Base = ::roswasmc_bounded_2_unitree_go_msg_LowCmd;
    using SharedPtr = std::shared_ptr<LowCmd>;
    using ConstSharedPtr = std::shared_ptr<LowCmd const>;
    LowCmd() : Base{} {}
};
/** @brief Full LowState value; zero initializes the original fixed fields.
 * @details The nested SharedPtr preserves the upstream callback spelling.
 * No resource or native type support is created by construction/copying.
 */
struct LowState : ::roswasmc_bounded_2_unitree_go_msg_LowState {
    using Base = ::roswasmc_bounded_2_unitree_go_msg_LowState;
    using SharedPtr = std::shared_ptr<LowState>;
    using ConstSharedPtr = std::shared_ptr<LowState const>;
    LowState() : Base{} {}
};
} // namespace unitree_go::msg

namespace roswasmcpp {
/** @brief Complete 749-byte canonical LowCmd conversion with no I/O.
 * @details Encode/decode commit out only on complete success. Allocation follows
 * the selected C++ library policy; borrowed inputs are used only during a call.
 */
template <> struct Codec<::unitree_go::msg::LowCmd> {
    static constexpr std::size_t maximum_wire_bytes = 749;
    static bool encode(::unitree_go::msg::LowCmd const& value, wire::bytes& out) {
        wire::bytes next(maximum_wire_bytes);
        std::size_t written{};
        if(roswasmc_bounded_2_unitree_go_msg_LowCmd_encode(&value, next.data(), next.size(), &written) != 0
            || written != maximum_wire_bytes) return false;
        out = std::move(next);
        return true;
    }
    static bool decode(std::span<unsigned char const> bytes, ::unitree_go::msg::LowCmd& out) {
        ::unitree_go::msg::LowCmd next;
        if(roswasmc_bounded_2_unitree_go_msg_LowCmd_decode(bytes.data(), bytes.size(), &next) != 0) return false;
        out = next;
        return true;
    }
};
/** @brief Complete 1050-byte canonical LowState conversion with no I/O.
 * @details Encode/decode commit out only on complete success. Allocation follows
 * the selected C++ library policy; borrowed inputs are used only during a call.
 */
template <> struct Codec<::unitree_go::msg::LowState> {
    static constexpr std::size_t maximum_wire_bytes = 1050;
    static bool encode(::unitree_go::msg::LowState const& value, wire::bytes& out) {
        wire::bytes next(maximum_wire_bytes);
        std::size_t written{};
        if(roswasmc_bounded_2_unitree_go_msg_LowState_encode(&value, next.data(), next.size(), &written) != 0
            || written != maximum_wire_bytes) return false;
        out = std::move(next);
        return true;
    }
    static bool decode(std::span<unsigned char const> bytes, ::unitree_go::msg::LowState& out) {
        ::unitree_go::msg::LowState next;
        if(roswasmc_bounded_2_unitree_go_msg_LowState_decode(bytes.data(), bytes.size(), &next) != 0) return false;
        out = next;
        return true;
    }
};
} // namespace roswasmcpp
