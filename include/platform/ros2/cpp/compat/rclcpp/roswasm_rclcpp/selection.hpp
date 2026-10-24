/** @file
 * @brief Explicit static bindings for the finite C++20 rclcpp source adapter.
 * @details The selected header/table is a trusted, source-locked build input.
 * Merely selecting it grants nothing: the host independently admits exact
 * aliases, resources, native types, QoS and time/log operations. All spans,
 * string views, tables and callback state are borrowed; keep the configuration
 * immutable and alive through shutdown and destruction of every dependent owner.
 * This adapter does not provide the native rclcpp binary ABI or generic discovery.
 * @see roswasm_rclcpp::Selection
 */
#pragma once
#include <platform/ros/cpp/roswasm/roswasmcpp.hpp>
#include <platform/ros/c/roswasm/service_client.h>
#include <cstdint>
#include <span>
#include <string_view>

namespace roswasm_rclcpp
{
    /** @brief Separate topic directions accepted by a selected row.
     * @details One direction never implies the other's grant or alias.
     * @see TopicBinding
     */
    enum class Role
    {
        /** @brief Explicit topic publication role.
         * @details Used only for a matching create_publisher request.
         * @see TopicBinding::alias
         */
        publish,
        /** @brief Explicit queued topic subscription role.
         * @details Delivery is caller-driven; no native callback thread is created.
         * @see TopicBinding::alias
         */
        subscribe
    };

    /** @brief One exact node/topic/direction source binding.
     * @details init validates rows and rejects duplicate node/topic/role triples.
     * Counts are local bounds, not replacements for the host's independently
     * configured queue, bytes, rate, native type or QoS admission.
     * @see Selection::topics
     */
    struct TopicBinding
    {
        /** @brief Counted selected node name, 1..128 bytes without embedded NUL.
         * @details Must match one selected NodeBinding; text remains borrowed.
         * @see NodeBinding::node
         */
        std::string_view node;
        /** @brief Exact counted topic name, 1..255 bytes without embedded NUL.
         * @details Factories match this spelling rather than discovering a name.
         * @see TopicBinding::role
         */
        std::string_view topic;
        /** @brief Independent granted alias, 1..64 bytes without embedded NUL.
         * @details It is not inferred from node/topic spelling or the opposite role.
         * @see TopicBinding::role
         */
        std::string_view alias;
        /** @brief Publication or subscription direction for this exact row.
         * @details Other enum representations are rejected at initialization.
         * @see Role
         */
        Role role;
        /** @brief Exact keep-last queue depth, 1..4096 entries.
         * @details A factory request with another depth is refused rather than coerced.
         * @see TopicBinding::maximum_wire_bytes
         */
        std::size_t keep_last_depth;
        /** @brief Complete canonical message-buffer capacity, 4..32768 bytes.
         * @details Includes the String length prefix; this is not a character count.
         * @see TopicBinding::keep_last_depth
         */
        std::size_t maximum_wire_bytes;
    };

    /** @brief One explicit node and its separately selected time/log aliases.
     * @details Node names are unique in the selection. Empty optional aliases keep
     * the corresponding operation unavailable; no topic row supplies that grant.
     * @see Selection::nodes
     */
    struct NodeBinding
    {
        /** @brief Exact node name, 1..128 bytes without embedded NUL.
         * @details A Node constructor must match one selected row.
         * @see TopicBinding::node
         */
        std::string_view node;
        /** @brief Optional explicit steady-time alias, at most 64 bytes.
         * @details A nonempty value excludes embedded NUL. Clock use is independently
         * admitted and lazy; a missing alias does not select a local system clock.
         * @see NodeBinding::info_logger_alias
         */
        std::string_view steady_clock_alias;
        /** @brief Optional host-selected info-log alias, at most 64 bytes.
         * @details A nonempty value excludes embedded NUL; no severity or endpoint
         * grant is inferred from the source logger name.
         * @see NodeBinding::steady_clock_alias
         */
        std::string_view info_logger_alias;
    };
    /** @brief Independently selected service business roles.
     * @details A topic or node binding grants neither service role.
     * @see ServiceBinding
     */
    enum class ServiceRole
    {
        /** @brief Event-backed asynchronous client role.
         * @details Requires separate submission and observation aliases.
         * @see ServiceBinding::call_alias
         */
        client,
        /** @brief Advertised service server role.
         * @details Requires distinct advertisement and response aliases.
         * @see ServiceBinding::advertise_alias
         */
        server
    };

    /** @brief One finite AddTwoInts service association checked when used.
     * @details The selected factory requires an exact node/service/role match and
     * rejects duplicates. All text is borrowed and host authorization remains
     * independent. Unsupported native types or QoS profiles produce 95.
     * @see ServiceProfile::bindings
     */
    struct ServiceBinding
    {
        /** @brief Selected node name, 1..128 bytes without embedded NUL.
         * @details Must match the Node invoking the service factory.
         * @see NodeBinding::node
         */
        std::string_view node;
        /** @brief Exact service name, 1..255 bytes without embedded NUL.
         * @details No graph lookup supplies an otherwise missing binding.
         * @see ServiceBinding::role
         */
        std::string_view service;
        /** @brief Supported native type spelling example_interfaces/srv/AddTwoInts.
         * @details An arbitrary type name does not synthesize codecs or authority.
         * @see ServiceBinding::qos_profile
         */
        std::string_view type;
        /** @brief Exact profile spelling official-default-service-profile.
         * @details Other spellings are unsupported rather than silently translated.
         * @see ServiceBinding::type
         */
        std::string_view qos_profile;
        /** @brief Client or server direction for this independent service row.
         * @details Invalid values are rejected before constructing the facade.
         * @see ServiceRole
         */
        ServiceRole role;
        /** @brief Required client submission alias, 1..64 bytes without NUL.
         * @details Distinct from observer; empty for a server row.
         * @see ServiceBinding::observer_alias
         */
        std::string_view call_alias;
        /** @brief Required client event-observation alias, 1..64 bytes without NUL.
         * @details Distinct from call and optional availability; empty for a server.
         * @see ServiceProfile::events
         */
        std::string_view observer_alias;
        /** @brief Required server advertisement alias, 1..64 bytes without NUL.
         * @details Distinct from response; empty for a client row.
         * @see ServiceBinding::respond_alias
         */
        std::string_view advertise_alias;
        /** @brief Required server response alias, 1..64 bytes without NUL.
         * @details Distinct from advertisement; empty for a client row.
         * @see ServiceBinding::advertise_alias
         */
        std::string_view respond_alias;
        /** @brief Explicit pending-operation capacity, 1..16 entries.
         * @details A zero default is invalid when the binding is selected for use.
         * @see ServiceBinding::role
         */
        std::size_t maximum_pending{};
        /** @brief Optional independent client readiness alias, at most 64 bytes.
         * @details Nonempty values exclude NUL and differ from call/observer. Empty
         * retains unsupported 95 for readiness; servers require this field empty.
         * @see ServiceProfile::clients
         */
        std::string_view availability_alias{};
    };

    /** @brief Explicit event-backed service extension to the topic selection.
     * @details Absence keeps service factories denied. This record and referenced
     * tables/spans remain live and immutable through all dependent service owners.
     * @see Selection::services
     */
    struct ServiceProfile
    {
        /** @brief Independent event backend, required with version 2 on service use.
         * @details Clients require actual submit/watch/poll callbacks. A successful
         * admission is not synchronous completion or native service readiness.
         * @see ServiceBinding::observer_alias
         */
        roswasmc_event_backend const* events{};
        /** @brief Borrowed exact service rows, at most 32 when the profile is used.
         * @details Matching validates each selected row's native type/QoS and roles.
         * @see ServiceBinding
         */
        std::span<ServiceBinding const> bindings;
        /** @brief Optional separate service-client observation namespace.
         * @details A selected availability alias requires version 2 and nonnull ABI,
         * features and query callbacks. Its authority is never inferred from events.
         * @see ServiceBinding::availability_alias
         */
        roswasmc_service_client_backend const* clients{};
    };

    /** @brief Immutable complete configuration for the finite source adapter.
     * @details init validates the required topic/node/pacing subset. Service tables
     * are separately validated when a service factory uses them. The selected
     * configuration does not create ROS authority or a native scheduling thread.
     * Keep every borrowed value and callback state alive through all dependents.
     * @see selected_configuration
     */
    struct Selection
    {
        /** @brief Explicit core dispatch table, version 2 with ABI callback.
         * @details init requires its ABI callback to report core version 1. Actual
         * optional operations remain independently selected and checked.
         * @see ServiceProfile::events
         */
        roswasmc_backend const* backend{};
        /** @brief Borrowed topic rows, at most 32.
         * @details Empty permits a node/service-only selection; no topics are inferred.
         * @see TopicBinding
         */
        std::span<TopicBinding const> topics;
        /** @brief Borrowed unique node rows, 1..16 entries.
         * @details Every topic row must name a node in this explicit span.
         * @see NodeBinding
         */
        std::span<NodeBinding const> nodes;
        /** @brief Required caller-driven pacing callback for one dispatch pass.
         * @details Return 0 to continue, 125 for explicit local shutdown, or a real
         * numeric error. It must not synthesize grants or send debug/policy updates;
         * no implicit sleep or clock I/O is supplied by the adapter.
         * @see Selection::step_context
         */
        std::uint32_t (*step)(void*){};
        /** @brief Borrowed opaque state passed unchanged to step.
         * @details Null is permitted if the selected callback accepts it.
         * @see Selection::step
         */
        void* step_context{};
        /** @brief Maximum caller-driven spin passes, 1..4096.
         * @details This is an iteration bound rather than a duration or rate promise.
         * @see Selection::step
         */
        std::size_t maximum_spin_steps{};
        /** @brief Optional explicitly selected service extension.
         * @details Null preserves the original topic profile and grants no service
         * operation; a node or topic alias never substitutes for a service row.
         * @see ServiceProfile
         */
        ServiceProfile const* services{};
    };
}  // namespace roswasm_rclcpp

// A source-locked selected header defines exactly this function. It is an
// explicit build input, never a Guest environment/plugin/ROS-discovery lookup.
#if defined(UWVM_RCLCPP_COMPAT_SELECTION_HEADER)
# include UWVM_RCLCPP_COMPAT_SELECTION_HEADER
#else
namespace roswasm_rclcpp
{
    /** @brief Report absence of a source-selected configuration.
     * @details This fallback performs no lookup or I/O. A trusted build may instead
     * explicitly include UWVM_RCLCPP_COMPAT_SELECTION_HEADER defining this function.
     * @return Null, causing init to refuse with 13 rather than infer authority.
     * @see Selection
     */
    inline Selection const* selected_configuration() noexcept
    {
        return nullptr;
    }
}  // namespace roswasm_rclcpp
#endif
