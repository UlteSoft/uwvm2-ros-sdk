/** @file
 * @brief Standard-selected hosted raw owner for the stable ROS 2 Guest C ABI.
 * @details Earlier profiles select the portable owner; C++20+ uses the span/
 * string-view surface below. Calls borrow live storage synchronously and use
 * already canonical bytes. Exact operation/type/QoS/endpoint grants remain host
 * policy. Preserve canonical includes and serialize mutation of one owner.
 * @see uwvm_ros2::capability
 */
#pragma once
#include <platform/ros/cpp/roswasm/cpp_profile.hpp>
#if ROSWASM_CPP_STANDARD == 98 || ROSWASM_CPP_STANDARD == 3 || ROSWASM_CPP_STANDARD < 20
# include <platform/ros2/cpp/roswasm/detail/raw_hosted_ros2.hpp>
#else
# include <platform/ros2/c/roswasm/detail/ros2/abi.h>
# include <span>
# include <string_view>
# include <utility>

namespace uwvm_ros2
{
    /** @brief Unique ROS 2 raw alias owner with move construction.
     * @details Copies and assignment are disabled. Each operation dispatches once
     * with borrowed caller spans; raw methods supply no local codec, resize, retry
     * or implicit stronger role. Destruction attempts one live close and discards
     * status; use close explicitly when cleanup evidence is needed.
     * Request methods use memory 0 and update length only on success or a written
     * required-size slot with 90; other errors preserve length. Output bytes have
     * no rollback guarantee and no request is automatically repeated.
     * @see capability::close
     */
    class capability
    {
        uwvm_ros_handle handle_{};

        template <auto Import>
        uint32_t request(std::span<unsigned char const> input, std::span<unsigned char> output, uint64_t& length)
        {
            unsigned char encoded[8]{255, 255, 255, 255, 255, 255, 255, 255};
            auto error =
                Import(handle_, 0, uwvm_ros_address(input.data()), input.size(), uwvm_ros_address(output.data()), output.size(), uwvm_ros_address(encoded));
            if(!error || (error == UWVM_ROS_TOO_LARGE && uwvm_ros_load_u64(encoded) != UINT64_MAX))
            {
                length = uwvm_ros_load_u64(encoded);
            }
            return error;
        }

    public:
        /** @brief Create an empty owner without opening an alias.
         * @details Zero handle state creates no host capability or endpoint.
         * @see capability::open
         */
        capability() = default;
        /** @brief Copy ownership is disabled.
         * @details Use move construction for explicit unique ownership transfer.
         * @see capability::capability(capability&&)
         */
        capability(capability const&) = delete;
        /** @brief Disable copy assignment of imported ownership.
         * @details This hosted definition provides no move-assignment overload;
         * the deleted spelling performs no cleanup or replacement.
         * @see capability::close
         */
        capability& operator= (capability const&) = delete;

        /** @brief Transfer the owned handle and leave the source empty.
         * @details Pure local exchange performs no host acquisition or cleanup.
         * @param other Source owner whose handle becomes zero.
         * @see capability::handle
         */
        capability(capability&& other) noexcept : handle_{std::exchange(other.handle_, 0)}
        {
        }

        /** @brief Attempt one synchronous close on destruction.
         * @details Live-handle cleanup errors are discarded without retry or thrown
         * exceptions. Explicit close is the path for retaining the numeric status.
         * @see capability::close
         */
        ~capability()
        {
            if(handle_)
            {
                uwvm_ros2_capability_close(handle_);
            }
        }

        /** @brief Open exactly one nonempty host-granted alias; repeated open on a live owner returns22.
         * @details Borrows counted alias bytes during acquisition; native resource,
         * type, QoS and per-operation authority remain independently host-validated.
         * @param alias Exact nonempty host-granted spelling without an added terminator.
         * @return INVALID for an existing handle, otherwise the C open result.
         * @see capability::close
         */
        uint32_t open(std::string_view alias)
        {
            if(handle_)
            {
                return UWVM_ROS_INVALID;
            }
            return uwvm_ros2_open(alias.data(), alias.size(), &handle_);
        }

        /** @brief Publish already canonical message bytes through a topic.publish alias; no native struct layout is
         * accepted.
         * @details Uses the independently selected publication role once without
         * local typed conversion, retry or another inferred operation grant.
         * @param bytes Borrowed complete selected canonical message payload.
         * @return Exact numeric C publication result.
         * @see capability::subscribe
         */
        uint32_t publish(std::span<unsigned char const> bytes)
        {
            return uwvm_ros2_publish(handle_, bytes.data(), bytes.size());
        }

        /** @brief Activate a topic.subscribe queue; polling later invokes no native guest callback.
         * @details Performs one raw activation without a worker thread or hidden
         * message poll. Publication and subscription authority stay independent.
         * @return Exact C activation status.
         * @see capability::poll
         */
        uint32_t subscribe()
        {
            return uwvm_ros2_topic_subscribe(handle_);
        }

        /** @brief Poll once into explicit bounded storage;11 means idle and90 may report a written required size.
         * @details Borrows caller capacity synchronously. The C helper preserves
         * length on errors without a valid written required-size slot. No automatic
         * resize, decode or repeat receive is performed.
         * @param bytes Live writable destination span in bytes.
         * @param length Successful/written-required size destination.
         * @return Exact C poll error, including idle 11 and insufficient capacity 90.
         * @see capability::subscribe
         */
        uint32_t poll(std::span<unsigned char> bytes, uint64_t& length)
        {
            return uwvm_ros2_poll(handle_, bytes.data(), bytes.size(), &length);
        }

        /** @brief Perform service call once through its independently granted matching alias.
         * @details Sends one alias-selected canonical service request and borrows
         * reply storage synchronously. Size/timeout/transport failure is not replayed.
         * @param input Complete selected canonical service request bytes.
         * @param output Writable canonical response capacity in bytes.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported service-call error without response decoding.
         * @see capability::service_respond
         */
        uint32_t service_call(std::span<unsigned char const> input, std::span<unsigned char> output, uint64_t& length)
        {
            return request<uwvm_ros2_service_call>(input, output, length);
        }

        /** @brief Perform service respond once through its independently granted matching alias.
         * @details Uses the canonical owned-request-ID/response envelope through
         * an independent response grant without repeating an uncertain response.
         * @param input Complete request-ID plus selected canonical response bytes.
         * @param output Borrowed raw reply capacity for this operation.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported service-response status.
         * @see capability::advertise_service
         */
        uint32_t service_respond(std::span<unsigned char const> input, std::span<unsigned char> output, uint64_t& length)
        {
            return request<uwvm_ros2_service_respond>(input, output, length);
        }

        /** @brief Perform action send goal once through its independently granted matching alias.
         * @details The alias selects Action codec, native identity and quotas. This
         * raw owner tracks no local goal table and never resubmits an uncertain goal.
         * @param input Complete selected canonical goal bytes.
         * @param output Writable canonical returned-goal-ID capacity.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported goal-submission result without local decoding.
         * @see capability::action_receive_result
         */
        uint32_t action_send_goal(std::span<unsigned char const> input, std::span<unsigned char> output, uint64_t& length)
        {
            return request<uwvm_ros2_action_send_goal>(input, output, length);
        }

        /** @brief Perform action cancel own goal once through its independently granted matching alias.
         * @details The host independently validates ownership of the nonzero ID.
         * Cancellation acceptance alone does not establish terminal completion.
         * @param input Eight-byte little-endian nonzero owned-goal ID.
         * @param output Writable canonical Boolean-response capacity.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported own-cancel result without Boolean decoding or retry.
         * @see capability::action_cancel_any_goal
         */
        uint32_t action_cancel_own_goal(std::span<unsigned char const> input, std::span<unsigned char> output, uint64_t& length)
        {
            return request<uwvm_ros2_action_cancel_own_goal>(input, output, length);
        }

        /** @brief Perform action cancel any goal once through its independently granted matching alias.
         * @details Requires its independent stronger scope. Explicit zero requests
         * all under that host policy; an own-cancel grant is never promoted here.
         * @param input Eight-byte little-endian goal selector, zero explicitly for all.
         * @param output Writable canonical Boolean-response capacity.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported any-cancel result without response interpretation.
         * @see capability::action_cancel_own_goal
         */
        uint32_t action_cancel_any_goal(std::span<unsigned char const> input, std::span<unsigned char> output, uint64_t& length)
        {
            return request<uwvm_ros2_action_cancel_any_goal>(input, output, length);
        }

        /** @brief Perform action receive feedback once through its independently granted matching alias.
         * @details One correlated observation supplies canonical selected feedback
         * bytes without a callback thread, typed decode or repeated idle/size poll.
         * @param input Eight-byte little-endian nonzero goal ID.
         * @param output Writable complete feedback-envelope capacity.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported feedback status including idle 11.
         * @see capability::action_receive_result
         */
        uint32_t action_receive_feedback(std::span<unsigned char const> input, std::span<unsigned char> output, uint64_t& length)
        {
            return request<uwvm_ros2_action_receive_feedback>(input, output, length);
        }

        /** @brief Perform action receive result once through its independently granted matching alias.
         * @details One correlated receive returns canonical marked terminal bytes;
         * this raw wrapper neither decodes kind/value nor retires a local goal table.
         * @param input Eight-byte little-endian nonzero goal ID.
         * @param output Writable complete terminal-result capacity.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported result-observation status without replay.
         * @see capability::action_receive_feedback
         */
        uint32_t action_receive_result(std::span<unsigned char const> input, std::span<unsigned char> output, uint64_t& length)
        {
            return request<uwvm_ros2_action_receive_result>(input, output, length);
        }

        /** @brief Perform action advertise once through its independently granted matching alias.
         * @details Empty input activates the explicit server role. Later polls
         * obtain selected canonical ID/goal envelopes without native guest callbacks.
         * @param input Empty canonical advertisement request.
         * @param output Borrowed raw reply capacity.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported advertisement result.
         * @see capability::action_respond
         */
        uint32_t action_advertise(std::span<unsigned char const> input, std::span<unsigned char> output, uint64_t& length)
        {
            return request<uwvm_ros2_action_advertise>(input, output, length);
        }

        /** @brief Perform action respond once through its independently granted matching alias.
         * @details Feedback and terminal server replies both carry their canonical
         * goal ID and kind marker; host advertisement/type correlation stays explicit.
         * @param input Complete selected marked server-response envelope.
         * @param output Borrowed raw reply capacity.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported response result without marker conversion or replay.
         * @see capability::action_advertise
         */
        uint32_t action_respond(std::span<unsigned char const> input, std::span<unsigned char> output, uint64_t& length)
        {
            return request<uwvm_ros2_action_respond>(input, output, length);
        }

        /** @brief Perform tf lookup once through its independently granted matching alias.
         * @details Frames and lookup rights belong to the selected alias. This raw
         * call reads no other clock and does not decode the returned Transform.
         * @param input Eight-byte little-endian unsigned nanosecond lookup time.
         * @param output Writable canonical Transform-response capacity.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported lookup result without retry.
         * @see capability::tf_broadcast
         */
        uint32_t tf_lookup(std::span<unsigned char const> input, std::span<unsigned char> output, uint64_t& length)
        {
            return request<uwvm_ros2_tf_lookup>(input, output, length);
        }

        /** @brief Perform tf broadcast once through its independently granted matching alias.
         * @details The host checks complete canonical fields, frames, quotas and
         * admitted authority; native Transform structure padding is never encoded.
         * @param input Complete canonical Transform bytes.
         * @param output Borrowed raw reply capacity.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported broadcast result without uncertain-effect replay.
         * @see capability::tf_lookup
         */
        uint32_t tf_broadcast(std::span<unsigned char const> input, std::span<unsigned char> output, uint64_t& length)
        {
            return request<uwvm_ros2_tf_broadcast>(input, output, length);
        }

        /** @brief Perform parameter get once through its independently granted matching alias.
         * @details One empty request reads only the alias-selected node/name/type.
         * Returned value bytes require the corresponding selected parameter codec.
         * @param input Empty canonical parameter-read request.
         * @param output Writable complete selected-value response capacity.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported get result without decoding or a second query.
         * @see capability::parameter_set
         */
        uint32_t parameter_get(std::span<unsigned char const> input, std::span<unsigned char> output, uint64_t& length)
        {
            return request<uwvm_ros2_parameter_get>(input, output, length);
        }

        /** @brief Perform parameter set once through its independently granted matching alias.
         * @details One complete selected value uses the alias's native type, name
         * and mutation scope. Errors never cause an automatic repeated mutation.
         * @param input Complete selected canonical parameter-value bytes.
         * @param output Borrowed raw reply capacity.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported set result without inferred event delivery.
         * @see capability::parameter_get
         */
        uint32_t parameter_set(std::span<unsigned char const> input, std::span<unsigned char> output, uint64_t& length)
        {
            return request<uwvm_ros2_parameter_set>(input, output, length);
        }

        /** @brief Perform parameter list once through its independently granted matching alias.
         * @details The alias fixes list scope. Returned names supply no independent
         * read/write/declaration grants and do not trigger another operation.
         * @param input Empty canonical list query.
         * @param output Writable complete canonical list-response capacity.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported list result without local parsing.
         * @see capability::parameter_describe
         */
        uint32_t parameter_list(std::span<unsigned char const> input, std::span<unsigned char> output, uint64_t& length)
        {
            return request<uwvm_ros2_parameter_list>(input, output, length);
        }

        /** @brief Perform graph list topics once through its independently granted matching alias.
         * @details One metadata query observes admitted graph scope without opening
         * a publication/subscription role or inferring authority from returned names.
         * @param input Empty canonical graph query.
         * @param output Writable complete canonical topic-list capacity.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported graph result without implicit polling or retry.
         * @see capability::graph_inspect_topic
         */
        uint32_t graph_list_topics(std::span<unsigned char const> input, std::span<unsigned char> output, uint64_t& length)
        {
            return request<uwvm_ros2_graph_list_topics>(input, output, length);
        }

        /** @brief Perform graph list nodes once through its independently granted matching alias.
         * @details Reports admitted graph metadata without creating Node/session
         * owners or their separately selected time/log/topic operation grants.
         * @param input Empty canonical graph query.
         * @param output Writable complete canonical node-list capacity.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported graph result without local text parsing.
         * @see capability::graph_inspect_node
         */
        uint32_t graph_list_nodes(std::span<unsigned char const> input, std::span<unsigned char> output, uint64_t& length)
        {
            return request<uwvm_ros2_graph_list_nodes>(input, output, length);
        }

        /** @brief Perform graph list services once through its independently granted matching alias.
         * @details Graph metadata supplies no service business grant and is not an
         * independently selected service-readiness observation.
         * @param input Empty canonical graph query.
         * @param output Writable complete canonical service-list capacity.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported graph-list result without retries.
         * @see capability::graph_inspect_service
         */
        uint32_t graph_list_services(std::span<unsigned char const> input, std::span<unsigned char> output, uint64_t& length)
        {
            return request<uwvm_ros2_graph_list_services>(input, output, length);
        }

        /** @brief Perform graph inspect topic once through its independently granted matching alias.
         * @details Exact alias policy selects the graph topic resource rather than
         * a new name supplied in request bytes. No topic role is opened here.
         * @param input Empty canonical graph query.
         * @param output Writable complete canonical metadata-response capacity.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported topic-inspection result without local parsing.
         * @see capability::graph_list_topics
         */
        uint32_t graph_inspect_topic(std::span<unsigned char const> input, std::span<unsigned char> output, uint64_t& length)
        {
            return request<uwvm_ros2_graph_inspect_topic>(input, output, length);
        }

        /** @brief Perform graph inspect node once through its independently granted matching alias.
         * @details Observe the alias-selected graph node without creating its Node
         * owner or inferring time/log/topic grants from the returned metadata.
         * @param input Empty canonical graph query.
         * @param output Writable complete canonical metadata-response capacity.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported node-inspection result without retry.
         * @see capability::graph_list_nodes
         */
        uint32_t graph_inspect_node(std::span<unsigned char const> input, std::span<unsigned char> output, uint64_t& length)
        {
            return request<uwvm_ros2_graph_inspect_node>(input, output, length);
        }

        /** @brief Perform graph inspect service once through its independently granted matching alias.
         * @details Service identity/scope is alias-selected; metadata cannot supply
         * a missing call, readiness or advertisement operation grant.
         * @param input Empty canonical graph query.
         * @param output Writable complete canonical metadata-response capacity.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported service-inspection result without retry.
         * @see capability::graph_list_services
         */
        uint32_t graph_inspect_service(std::span<unsigned char const> input, std::span<unsigned char> output, uint64_t& length)
        {
            return request<uwvm_ros2_graph_inspect_service>(input, output, length);
        }

        /** @brief Perform lifecycle get state once through its independently granted matching alias.
         * @details One empty query observes only the alias-selected lifecycle node;
         * it implies no transition permission and creates no local state machine.
         * @param input Empty canonical lifecycle query.
         * @param output Writable canonical lifecycle-state response capacity.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported get-state result without response decoding.
         * @see capability::lifecycle_change_state
         */
        uint32_t lifecycle_get_state(std::span<unsigned char const> input, std::span<unsigned char> output, uint64_t& length)
        {
            return request<uwvm_ros2_lifecycle_get_state>(input, output, length);
        }

        /** @brief Perform lifecycle change state once through its independently granted matching alias.
         * @details The transition belongs to explicit host alias policy. The
         * request is empty and an uncertain admitted change is never replayed.
         * @param input Empty canonical request, with no guest transition selector.
         * @param output Writable canonical Boolean-acceptance response capacity.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported change-state error without acceptance decoding.
         * @see capability::lifecycle_get_state
         */
        uint32_t lifecycle_change_state(std::span<unsigned char const> input, std::span<unsigned char> output, uint64_t& length)
        {
            return request<uwvm_ros2_lifecycle_change_state>(input, output, length);
        }

        /** @brief Perform time read ros once through its independently granted matching alias.
         * @details One explicit ROS-clock observation adds no implicit pacing,
         * sleeping, monotonicity guarantee or fallback to another clock domain.
         * @param input Empty canonical time-read query.
         * @param output Writable capacity for unsigned 64-bit nanoseconds.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported ROS-time result without local decoding.
         * @see capability::time_read_steady
         */
        uint32_t time_read_ros(std::span<unsigned char const> input, std::span<unsigned char> output, uint64_t& length)
        {
            return request<uwvm_ros2_time_read_ros>(input, output, length);
        }

        /** @brief Perform parameter describe once through its independently granted matching alias.
         * @details One empty metadata query uses the alias-selected parameter.
         * Its description does not supply missing mutation or event rights.
         * @param input Empty canonical parameter-description request.
         * @param output Writable complete canonical description-response capacity.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported description result without local parsing.
         * @see capability::parameter_get
         */
        uint32_t parameter_describe(std::span<unsigned char const> input, std::span<unsigned char> output, uint64_t& length)
        {
            return request<uwvm_ros2_parameter_describe>(input, output, length);
        }

        /** @brief Perform parameter declare once through its independently granted matching alias.
         * @details One complete selected value uses the alias-selected name/type
         * and explicit declaration rights; failure never triggers a set/replay.
         * @param input Complete selected canonical initial parameter value.
         * @param output Borrowed raw reply capacity.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported declaration result.
         * @see capability::parameter_undeclare
         */
        uint32_t parameter_declare(std::span<unsigned char const> input, std::span<unsigned char> output, uint64_t& length)
        {
            return request<uwvm_ros2_parameter_declare>(input, output, length);
        }

        /** @brief Perform parameter undeclare once through its independently granted matching alias.
         * @details One empty mutation applies to the explicit alias-selected name;
         * no automatic recreation, deletion replay or event subscription follows.
         * @param input Empty canonical undeclaration request.
         * @param output Borrowed raw reply capacity.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported undeclaration error.
         * @see capability::parameter_declare
         */
        uint32_t parameter_undeclare(std::span<unsigned char const> input, std::span<unsigned char> output, uint64_t& length)
        {
            return request<uwvm_ros2_parameter_undeclare>(input, output, length);
        }

        /** @brief Perform graph inspect action once through its independently granted matching alias.
         * @details Reports alias-selected Action graph metadata without opening
         * goal, observation, response or cancellation owners/permissions.
         * @param input Empty canonical graph query.
         * @param output Writable complete canonical metadata-response capacity.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported Action-inspection result without local parsing.
         * @see capability::action_send_goal
         */
        uint32_t graph_inspect_action(std::span<unsigned char const> input, std::span<unsigned char> output, uint64_t& length)
        {
            return request<uwvm_ros2_graph_inspect_action>(input, output, length);
        }

        /** @brief Perform time read system once through its independently granted matching alias.
         * @details One explicit system-clock observation creates no scheduling
         * thread, implicit sleep or guarantee of steady-clock monotonicity.
         * @param input Empty canonical time-read query.
         * @param output Writable capacity for unsigned 64-bit nanoseconds.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported system-time result without local decoding.
         * @see capability::time_read_steady
         */
        uint32_t time_read_system(std::span<unsigned char const> input, std::span<unsigned char> output, uint64_t& length)
        {
            return request<uwvm_ros2_time_read_system>(input, output, length);
        }

        /** @brief Perform time read steady once through its independently granted matching alias.
         * @details One explicit steady-clock observation remains in that host
         * domain. It neither schedules callbacks nor converts to ROS/system time.
         * @param input Empty canonical time-read query.
         * @param output Writable capacity for unsigned 64-bit nanoseconds.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported steady-time result without local decoding.
         * @see capability::time_read_ros
         */
        uint32_t time_read_steady(std::span<unsigned char const> input, std::span<unsigned char> output, uint64_t& length)
        {
            return request<uwvm_ros2_time_read_steady>(input, output, length);
        }

        /** @brief Activate a separately granted ROS2 parameter-event queue; scalar grants do not authorize it.
         * @details One explicit activation uses the alias-selected event type and
         * scope. Delivery remains caller-driven through the raw polling operation.
         * @return Exact imported parameter-event activation status.
         * @see capability::poll
         */
        uint32_t subscribe_parameter_events()
        {
            return uwvm_ros2_parameter_subscribe_events(handle_);
        }

        /** @brief Activate service.advertise; queued events contain an owned request ID and canonical request.
         * @details Uses only the selected advertisement role; response authority
         * remains a distinct grant and no native guest callback is installed.
         * @return Exact imported advertisement result.
         * @see capability::service_respond
         */
        uint32_t advertise_service()
        {
            return uwvm_ros2_service_advertise(handle_);
        }

        /** @brief Write an already encoded u32-length canonical String at the host-selected severity (not bare UTF-8).
         * @details No text encoding, severity escalation or hidden retry occurs.
         * Caller memory remains live throughout the single synchronous imported call.
         * @param bytes Borrowed complete canonical String bytes including count prefix.
         * @return Exact imported log-write status.
         * @see capability::publish
         */
        uint32_t log(std::span<unsigned char const> bytes)
        {
            return uwvm_ros2_log_write(handle_, 0, uwvm_ros_address(bytes.data()), bytes.size());
        }

        /** @brief Retire local ownership before one close attempt, including failure107/110.
         * @details Empty returns 9. Live handle bits clear before the close import;
         * a notification failure does not authorize replay of that old handle.
         * @return BAD_HANDLE when empty, otherwise exact imported close error.
         * @see capability::handle
         */
        uint32_t close()
        {
            if(!handle_)
            {
                return UWVM_ROS_BAD_HANDLE;
            }
            auto old = handle_;
            handle_ = 0;
            return uwvm_ros2_capability_close(old);
        }

        /** @brief Request revocation once and retire local ownership, without cleanup replay.
         * @details Explicit destructive policy revocation can affect sibling aliases;
         * it is never implicit timeout/destructor recovery. Handle bits clear first.
         * @return BAD_HANDLE when empty, otherwise exact imported revoke result.
         * @see capability::close
         */
        uint32_t revoke()
        {
            if(!handle_)
            {
                return UWVM_ROS_BAD_HANDLE;
            }
            auto old = handle_;
            handle_ = 0;
            return uwvm_ros2_capability_revoke(old);
        }

        /** @brief Borrow the opaque instance-owned handle; it is not a pointer and must not be transferred.
         * @details This local accessor transfers no owner or extra operation right.
         * @return Current handle bits, or zero after move/close/revoke.
         * @see capability::close
         */
        uwvm_ros_handle handle() const noexcept
        {
            return handle_;
        }
    };
}  // namespace uwvm_ros2
#endif  // selected portable/modern raw owner
