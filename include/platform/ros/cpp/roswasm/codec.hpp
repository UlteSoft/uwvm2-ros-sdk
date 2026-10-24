/** @file
 * @brief Complete C++20 canonical values, including common resource envelopes.
 * @details This forwards the established codec unchanged and adds missing public value
 * shapes. No native ROS serialization, IDL guessing, permission or I/O is added.
 * Calls are synchronous local conversions, requiring caller serialization for
 * shared mutable destinations. Inputs are borrowed only during the call and
 * decoded values own complete fields. Allocation exceptions/termination follow
 * standard-library policy. Earlier profiles select the portable value API.
 * @see uwvm_ros::service_envelope
 * @see roswasmcpp::Codec
 */
#pragma once
#include <platform/ros/cpp/roswasm/cpp_profile.hpp>
#if ROSWASM_CPP_STANDARD == 98 || ROSWASM_CPP_STANDARD == 3 || ROSWASM_CPP_STANDARD < 20
# include <platform/ros/cpp/roswasm/detail/portable_values.hpp>
# ifndef ROSWASM_CPP_PORTABLE_WIRE_NAMESPACE_ALIAS
/** @brief Internal guard for the selected old-profile wire namespace alias.
 * @details Value1 prevents duplicate alias declarations, without selecting a
 * runtime version, codec identity or host permission.
 * @see roswasmcpp::wire
 */
#  define ROSWASM_CPP_PORTABLE_WIRE_NAMESPACE_ALIAS 1
/** @brief Alias old-profile canonical helpers without additional storage.
 * @details Complete API/preconditions are declared by the portable wire header.
 * @see roswasmcpp::wire
 */
namespace uwvm_ros = ::roswasmcpp::wire;
# endif
#else
# include <utility>
# include <platform/ros/cpp/roswasm/detail/common/codec.hpp>

namespace uwvm_ros
{
    /** @brief Owning service correlation envelope with an opaque complete body.
     * @details A valid envelope uses a nonzero gateway-owned ID. Local conversion
     * does not send a response, consume a request or establish host ownership.
     * @see roswasmcpp::ServiceServer::poll_once
     */
    struct service_envelope
    {
        /** @brief Nonzero request correlation ID for a valid service envelope.
         * @details Default zero is invalid; use the matching server poll's ID.
         * @see service_envelope::payload
         */
        std::uint64_t request_id{};
        /** @brief Complete owning service-specific payload bytes.
         * @details Opaque to envelope conversion, at most4193778 bytes for encoding.
         * @see service_envelope::request_id
         */
        bytes payload;
    };

    /** @brief Prefix a nonzero request ID to a bounded opaque service body.
     * @details Complete encoding is at most4193786 bytes. Body type/UTF-8/field
     * validity and host correlation permission are checked separately.
     * @param[in] value Complete owning ID/body read only during this call.
     * @return Owning envelope, or empty for zero ID or oversized body.
     * @see service_envelope
     */
    inline bytes encode(service_envelope const& value)
    {
        if(!value.request_id || value.payload.size() > 4193778u)
        {
            return {};
        }
        auto out = goal_id(value.request_id);
        out.insert(out.end(), value.payload.begin(), value.payload.end());
        return out;
    }

    /** @brief Decode one complete ID/body envelope into independent storage.
     * @details Requires 8..4193786 bytes and a nonzero ID. Copies all remaining body
     * bytes without interpreting service-specific structure.
     * @param[in] value Borrowed complete envelope bytes.
     * @param[out] out Owning destination, unchanged on false.
     * @return True for a complete structurally valid envelope.
     * @see service_envelope
     */
    inline bool decode(std::span<unsigned char const> value, service_envelope& out)
    {
        if(value.size() < 8 || value.size() > 4193786u)
        {
            return false;
        }
        reader in{value};
        service_envelope next;
        if(!in.integer(next.request_id, 8) || !next.request_id)
        {
            return false;
        }
        next.payload.assign(value.begin() + 8, value.end());
        out = std::move(next);
        return true;
    }

    /** @brief Complete incoming Fibonacci goal ID and signed order.
     * @details The host owns ID correlation; this value alone never accepts or
     * executes a goal or establishes action authority.
     * @see roswasmcpp::FibonacciGoal
     */
    struct incoming_goal
    {
        /** @brief Nonzero gateway-correlated goal identifier after valid decoding.
         * @details Default zero is an invalid sentinel.
         * @see incoming_goal::order
         */
        std::uint64_t goal_id{};
        /** @brief Complete signed 32-bit requested order.
         * @details Structural conversion preserves bits without algorithm bounds.
         * @see incoming_goal::goal_id
         */
        std::int32_t order{};
    };

    /** @brief Encode one nonzero goal ID and complete signed order.
     * @details Uses eight ID bytes plus four signed-order bytes; no host goal
     * acceptance, permission or algorithm-limit check occurs.
     * @param[in] value Complete ID/order fields read only during this call.
     * @return Twelve owning bytes, or empty for zero goal ID.
     * @see incoming_goal
     */
    inline bytes encode(incoming_goal const& value)
    {
        if(!value.goal_id)
        {
            return {};
        }
        auto out = goal_id(value.goal_id);
        append_u32(out, std::bit_cast<std::uint32_t>(value.order));
        return out;
    }

    /** @brief Decode the exact twelve-byte incoming Fibonacci goal envelope.
     * @details Requires nonzero ID and exact complete signed-order framing;
     * destination fields are committed only after all checks succeed.
     * @param[in] value Borrowed complete goal bytes.
     * @param[out] out Complete value destination, unchanged on false.
     * @return True for a nonzero ID with exact canonical framing.
     * @see incoming_goal
     */
    inline bool decode(std::span<unsigned char const> value, incoming_goal& out)
    {
        reader in{value};
        incoming_goal next;
        std::uint32_t order;
        if(!in.integer(next.goal_id, 8) || !next.goal_id || !in.u32(order) || !in.done())
        {
            return false;
        }
        next.order = std::bit_cast<std::int32_t>(order);
        out = next;
        return true;
    }

    /** @brief Owning lifecycle state identifier byte and complete label.
     * @details Represents query data without requesting or authorizing a transition.
     * @see roswasmcpp::LifecycleState
     */
    struct lifecycle_state
    {
        /** @brief Native state identifier byte, initially zero.
         * @details Structural conversion preserves the full 0..255 domain.
         * @see lifecycle_state::label
         */
        std::uint8_t id{};
        /** @brief Owning state label under the host's canonical text contract.
         * @details Local helpers check String framing, without added UTF-8 validation.
         * @see lifecycle_state::id
         */
        std::string label;
    };

    /** @brief Encode a state byte and counted label without native state admission.
     * @details String content must fit uint32; no UTF-8, transition or whole host
     * response-quota check occurs in this structural helper.
     * @param[in] value Complete owning state/label read only during this call.
     * @return Owning complete bytes, or empty for String length failure.
     * @see lifecycle_state
     */
    inline bytes encode(lifecycle_state const& value)
    {
        bytes out{value.id};
        if(!append_string(out, value.label))
        {
            return {};
        }
        return out;
    }

    /** @brief Decode one exact state/label value into independent owning storage.
     * @details Requires the state byte and exact counted String extent, without
     * an added UTF-8 or known-native-state check.
     * @param[in] value Borrowed complete state bytes.
     * @param[out] out Complete owning destination, unchanged on false.
     * @return True for exact structural state/label framing.
     * @see lifecycle_state
     */
    inline bool decode(std::span<unsigned char const> value, lifecycle_state& out)
    {
        if(value.empty())
        {
            return false;
        }
        lifecycle_state next;
        next.id = value.front();
        if(!decode_string(value.subspan(1), next.label))
        {
            return false;
        }
        out = std::move(next);
        return true;
    }

    /** @brief Encode the complete legacy String-valued parameter-event envelope.
     * @details Requires kind1..3 and an empty deletion value. Checks uint32 String
     * lengths but adds no UTF-8, typed name/time or host visibility admission.
     * @param[in] value Complete owning event read only during this call.
     * @return Complete owning bytes, or empty for kind/deletion/length failure.
     * @see uwvm_ros::parameter_event
     */
    inline bytes encode(parameter_event const& value)
    {
        if(value.kind < 1 || value.kind > 3 || (value.kind == 3 && !value.value.empty()))
        {
            return {};
        }
        bytes out;
        append_u32(out, value.seconds);
        append_u32(out, value.nanoseconds);
        out.push_back(value.kind);
        if(!append_string(out, value.node) || !append_string(out, value.name) || !append_string(out, value.value))
        {
            return {};
        }
        return out;
    }

    /** @brief Encode an unsigned nanosecond count without reading a clock.
     * @details Preserves the full uint64 bit domain in eight little-endian bytes;
     * clock origin and zero/latest meaning belong to the selected operation.
     * @param[in] value Count in nanoseconds with no implicit epoch conversion.
     * @return Exactly eight owning bytes.
     * @see decode_nanoseconds
     */
    inline bytes nanoseconds(std::uint64_t value)
    {
        return lookup_time(value);
    }

    /** @brief Decode an exact unsigned eight-byte nanosecond count.
     * @details Performs no time query, waiting or clock-domain/epoch conversion.
     * @param[in] value Borrowed complete little-endian time bytes.
     * @param[out] out Full nanosecond count, unchanged on false.
     * @return True for exact eight-byte framing.
     * @see nanoseconds
     */
    inline bool decode_nanoseconds(std::span<unsigned char const> value, std::uint64_t& out)
    {
        if(value.size() != 8)
        {
            return false;
        }
        reader in{value};
        std::uint64_t next;
        if(!in.integer(next, 8) || !in.done())
        {
            return false;
        }
        out = next;
        return true;
    }
}  // namespace uwvm_ros
#endif
