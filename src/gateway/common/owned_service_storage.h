/* SPDX-License-Identifier: Apache-2.0 */
/** @file Canonical service representation checks, without ROS effects.
 * The trusted provider independently proves its complete native payload graphs
 * and canonical codecs. Storage grows for actual records. Independent explicit
 * history, body, inflight and queue quotas are checked where those resources are
 * admitted; this preflight does not multiply quotas into an eager allocation.
 */
#pragma once
#include <cstddef>
#include <cstdint>
#include <limits>
#include <uwvm2/imported/ros/ipc/protocol.h>
namespace uwvm2::ros_gateway::owned_service_storage
{
    inline constexpr std::uint64_t maximum_canonical_body=::uwvm2::imported::ros::ipc::max_payload_bytes;
    inline constexpr std::uint64_t maximum_history=SIZE_MAX;
    inline constexpr std::uint64_t maximum_separately_owned_native_depth=1000;
    struct bodies
    {
        std::size_t request{},response{};
        // Trusted selected-bounds metadata, never decoded from a capability or
        // Guest packet. Zero preserves the original history-coupled admission.
        // A proved provider may set a finite independent native DDS queue limit
        // only when its real native owner separately budgets that queue. This
        // is not a native receipt, authorization flag or allocation guarantee.
        // All callback providers/consumers must source-recompile this tail.
        std::uint64_t separately_owned_native_depth_limit{};
    };
    struct grant
    {
        std::uint64_t history{},queue_depth{},queue_bytes{},max_inflight{},qos_depth{};
        std::uint64_t max_request_bytes{},max_response_bytes{},observer_max_event_bytes{};
        bool client{};
    };
    /** The caller supplies the actual envelope size. Success proves only a
     * representable canonical envelope, never identity or native ownership. */
    inline std::uint32_t admit(bodies const& body,grant const& policy,std::uint64_t header)noexcept
    {
        // This preflight checks encoding representation only. Actual records
        // debit independent history/inflight/body/queue quotas at admission;
        // multiplying a quota by the full schema maximum would reject valid
        // small values and would turn omitted quotas into eager allocations.
        (void)policy;
        if(!header||header>maximum_canonical_body||
           body.request>maximum_canonical_body-header||body.response>maximum_canonical_body-header)return 90;
        return 0;
    }
}
