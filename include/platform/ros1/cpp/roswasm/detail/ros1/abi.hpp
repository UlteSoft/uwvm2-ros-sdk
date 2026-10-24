/** @file
 * @brief Standard-selected hosted raw owner for the stable ROS 1 Guest C ABI.
 * @details Earlier profiles include the portable owner; C++20+ uses the span/
 * string-view surface below. Raw methods borrow caller storage synchronously
 * and neither encode native objects nor grant operation/type/QoS authority.
 * Preserve the assembler's canonical include layout and serialize owner use.
 * @see uwvm_ros1::capability
 */
#pragma once
#include <platform/ros/cpp/roswasm/cpp_profile.hpp>
#if ROSWASM_CPP_STANDARD == 98 || ROSWASM_CPP_STANDARD == 3 || ROSWASM_CPP_STANDARD < 20
# include <platform/ros1/cpp/roswasm/detail/raw_hosted_ros1.hpp>
#else
# include <platform/ros1/c/roswasm/detail/ros1/abi.h>
# include <span>
# include <string_view>
# include <utility>

namespace uwvm_ros1
{
    /** @brief Unique ROS 1 raw alias owner with move construction.
     * @details Opens one exact host-granted alias and dispatches raw canonical bytes
     * through independently admitted roles. Copies and assignment are disabled.
     * Input/output spans borrow live storage only during each synchronous call;
     * returned numeric errors never trigger retries, resize or implicit cancellation.
     * Destruction attempts one close and discards its status; use close explicitly
     * before destruction when cleanup evidence is needed. Serialize all mutation.
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
         * @details The zero handle remains invalid until a successful explicit open.
         * @see capability::open
         */
        capability() = default;
        /** @brief Copy ownership is disabled.
         * @details Transfer an existing owner with the move constructor instead.
         * @see capability::capability(capability&&)
         */
        capability(capability const&) = delete;
        /** @brief Disable copy assignment of a unique imported handle.
         * @details No ownership replacement or cleanup is performed by this deleted
         * operation; this hosted class supplies no move-assignment overload.
         * @see capability::close
         */
        capability& operator= (capability const&) = delete;

        /** @brief Transfer the owned handle and leave the source empty.
         * @details Pure local exchange performs no import, acquisition or cleanup.
         * @param other Source owner whose destructor will no longer close the handle.
         * @see capability::handle
         */
        capability(capability&& other) noexcept : handle_{std::exchange(other.handle_, 0)}
        {
        }

        /** @brief Attempt one synchronous close on destruction.
         * @details The live handle is closed once; errors are discarded without a
         * retry or exception. Explicit close is required to inspect numeric status.
         * @see capability::close
         */
        ~capability()
        {
            if(handle_)
            {
                uwvm_ros1_capability_close(handle_);
            }
        }

        /** @brief Open exactly one nonempty host-granted alias; repeated open on a live owner returns22.
         * @details Borrow the counted alias only for this call. Host validation
         * independently binds operation, native resource/type, QoS and quotas.
         * @param alias Exact nonempty granted alias spelling, without a NUL terminator.
         * @return INVALID for an existing handle, otherwise the C open result.
         * @see capability::close
         */
        uint32_t open(std::string_view alias)
        {
            if(handle_)
            {
                return UWVM_ROS_INVALID;
            }
            return uwvm_ros1_open(alias.data(), alias.size(), &handle_);
        }

        /** @brief Publish already canonical message bytes through a topic.publish alias; no native struct layout is
         * accepted.
         * @details Performs one synchronous raw publication without local typed
         * encoding, permission inference or retry after uncertain native effects.
         * @param bytes Borrowed complete canonical message representation.
         * @return Exact C publication result; zero does not create another role grant.
         * @see capability::subscribe
         */
        uint32_t publish(std::span<unsigned char const> bytes)
        {
            return uwvm_ros1_publish(handle_, bytes.data(), bytes.size());
        }

        /** @brief Activate a topic.subscribe queue; polling later invokes no native guest callback.
         * @details Uses this alias's independently admitted subscribe role once.
         * No thread, hidden callback dispatch or automatic poll is started.
         * @return Exact numeric activation result.
         * @see capability::poll
         */
        uint32_t subscribe()
        {
            return uwvm_ros1_topic_subscribe(handle_);
        }

        /** @brief Poll once into explicit bounded storage;11 means idle and90 may report a written required size.
         * @details Storage remains live during the import. The C length-slot helper
         * preserves length on errors without a valid written size; no resize/replay
         * is added. Typed framing/host admission remain separate from this raw call.
         * @param bytes Borrowed writable capacity in bytes.
         * @param length Successful or explicitly reported required size destination.
         * @return Exact C poll result, including idle 11 and insufficient-capacity 90.
         * @see capability::subscribe
         */
        uint32_t poll(std::span<unsigned char> bytes, uint64_t& length)
        {
            return uwvm_ros1_poll(handle_, bytes.data(), bytes.size(), &length);
        }

        /** @brief Perform service call once through its independently granted matching alias.
         * @details Sends the alias-selected canonical request once. Output belongs
         * to the caller; no resize/replay follows 90/107/110 or another failure.
         * @param input Borrowed complete selected service request bytes.
         * @param output Borrowed writable canonical response capacity.
         * @param length Updated on success or a written required-size result at 90;
         * otherwise preserved by the sentinel length-slot helper.
         * @return Exact imported service-call error, without local decoding.
         * @see capability::service_respond
         */
        uint32_t service_call(std::span<unsigned char const> input, std::span<unsigned char> output, uint64_t& length)
        {
            return request<uwvm_ros1_service_call>(input, output, length);
        }

        /** @brief Perform service respond once through its independently granted matching alias.
         * @details Uses the canonical owned-request-ID/response envelope for this
         * independently granted response role. No failed response is replayed.
         * @param input Complete canonical request-ID plus selected response bytes.
         * @param output Borrowed reply capacity for the raw operation.
         * @param length Successful/written-required reply size; unchanged on other errors.
         * @return Exact imported response error, without assuming an effect was undone.
         * @see capability::advertise_service
         */
        uint32_t service_respond(std::span<unsigned char const> input, std::span<unsigned char> output, uint64_t& length)
        {
            return request<uwvm_ros1_service_respond>(input, output, length);
        }

        /** @brief Perform action send goal once through its independently granted matching alias.
         * @details Uses the alias's selected Action codec/native identity and host
         * quotas. An uncertain admitted goal is never automatically resubmitted.
         * @param input Complete canonical goal bytes for the selected Action type.
         * @param output Borrowed capacity for the canonical returned goal-ID payload.
         * @param length Successful/written-required byte count, otherwise preserved.
         * @return Exact imported goal-submission error without local goal tracking.
         * @see capability::action_receive_result
         */
        uint32_t action_send_goal(std::span<unsigned char const> input, std::span<unsigned char> output, uint64_t& length)
        {
            return request<uwvm_ros1_action_send_goal>(input, output, length);
        }

        /** @brief Perform action cancel own goal once through its independently granted matching alias.
         * @details The host checks ownership of the explicit nonzero goal ID.
         * A Boolean acceptance response alone does not establish terminal completion.
         * @param input Eight-byte little-endian nonzero owned-goal ID.
         * @param output Borrowed canonical Boolean-response capacity.
         * @param length Successful/written-required size, unchanged on other errors.
         * @return Exact imported cancellation result without retry or stronger grants.
         * @see capability::action_cancel_any_goal
         */
        uint32_t action_cancel_own_goal(std::span<unsigned char const> input, std::span<unsigned char> output, uint64_t& length)
        {
            return request<uwvm_ros1_action_cancel_own_goal>(input, output, length);
        }

        /** @brief Perform action cancel any goal once through its independently granted matching alias.
         * @details This independent stronger role permits the host's selected any/
         * all scope; zero selects all under that policy. Own-cancel implies no grant.
         * @param input Eight-byte little-endian goal selector, explicitly zero for all.
         * @param output Borrowed canonical Boolean-response capacity.
         * @param length Successful/written-required size, otherwise preserved.
         * @return Exact imported cancellation error without interpreting acceptance.
         * @see capability::action_cancel_own_goal
         */
        uint32_t action_cancel_any_goal(std::span<unsigned char const> input, std::span<unsigned char> output, uint64_t& length)
        {
            return request<uwvm_ros1_action_cancel_any_goal>(input, output, length);
        }

        /** @brief Perform action receive feedback once through its independently granted matching alias.
         * @details Performs one host-correlated observation; idle/size errors never
         * trigger another receive. Selected Action payload validation remains required.
         * @param input Eight-byte little-endian nonzero goal ID.
         * @param output Borrowed complete canonical feedback-envelope capacity.
         * @param length Successful/written-required size, unchanged on other errors.
         * @return Exact imported observation result, including idle 11.
         * @see capability::action_receive_result
         */
        uint32_t action_receive_feedback(std::span<unsigned char const> input, std::span<unsigned char> output, uint64_t& length)
        {
            return request<uwvm_ros1_action_receive_feedback>(input, output, length);
        }

        /** @brief Perform action receive result once through its independently granted matching alias.
         * @details Receives one canonical correlated terminal result. This raw owner
         * does not decode its kind/value or provide a local goal table/retry path.
         * @param input Eight-byte little-endian nonzero goal ID.
         * @param output Borrowed complete marked terminal-result capacity.
         * @param length Successful/written-required byte count, otherwise preserved.
         * @return Exact imported result-observation error, including idle 11.
         * @see capability::action_receive_feedback
         */
        uint32_t action_receive_result(std::span<unsigned char const> input, std::span<unsigned char> output, uint64_t& length)
        {
            return request<uwvm_ros1_action_receive_result>(input, output, length);
        }

        /** @brief Perform action advertise once through its independently granted matching alias.
         * @details Empty input activates the explicitly granted server role. Incoming
         * goals are later polled as selected canonical ID/goal envelopes.
         * @param input Borrowed canonical activation input, empty for advertisement.
         * @param output Borrowed raw reply capacity.
         * @param length Successful/written-required byte count, otherwise preserved.
         * @return Exact imported advertisement error without a native guest callback.
         * @see capability::action_respond
         */
        uint32_t action_advertise(std::span<unsigned char const> input, std::span<unsigned char> output, uint64_t& length)
        {
            return request<uwvm_ros1_action_advertise>(input, output, length);
        }

        /** @brief Perform action respond once through its independently granted matching alias.
         * @details Server feedback and terminal replies both carry their canonical
         * goal ID and kind marker. The host validates advertisement correlation.
         * @param input Complete selected marked server-response envelope.
         * @param output Borrowed raw reply capacity.
         * @param length Successful/written-required byte count, otherwise preserved.
         * @return Exact imported response error without replay or local kind conversion.
         * @see capability::action_advertise
         */
        uint32_t action_respond(std::span<unsigned char const> input, std::span<unsigned char> output, uint64_t& length)
        {
            return request<uwvm_ros1_action_respond>(input, output, length);
        }

        /** @brief Perform tf lookup once through its independently granted matching alias.
         * @details Frame pairing and lookup rights belong to the alias policy. This
         * raw wrapper neither reads a clock nor decodes the returned Transform.
         * @param input Eight-byte little-endian unsigned lookup time in nanoseconds.
         * @param output Borrowed canonical Transform reply capacity.
         * @param length Successful/written-required byte count, otherwise preserved.
         * @return Exact imported lookup status without implicit retry.
         * @see capability::tf_broadcast
         */
        uint32_t tf_lookup(std::span<unsigned char const> input, std::span<unsigned char> output, uint64_t& length)
        {
            return request<uwvm_ros1_tf_lookup>(input, output, length);
        }

        /** @brief Perform tf broadcast once through its independently granted matching alias.
         * @details The host validates complete canonical fields, frames, quotas and
         * selected broadcast authority. No native Transform object layout is sent.
         * @param input Complete canonical Transform payload, borrowed for this call.
         * @param output Borrowed raw reply capacity.
         * @param length Successful/written-required byte count, otherwise preserved.
         * @return Exact imported broadcast error; an uncertain effect is not replayed.
         * @see capability::tf_lookup
         */
        uint32_t tf_broadcast(std::span<unsigned char const> input, std::span<unsigned char> output, uint64_t& length)
        {
            return request<uwvm_ros1_tf_broadcast>(input, output, length);
        }

        /** @brief Perform parameter get once through its independently granted matching alias.
         * @details The alias selects node/name/type. Query input is empty; returned
         * canonical value bytes require the matching selected parameter codec.
         * @param input Empty canonical parameter-read request.
         * @param output Borrowed selected value-response capacity.
         * @param length Successful/written-required byte count, otherwise preserved.
         * @return Exact imported parameter-read error without another query.
         * @see capability::parameter_set
         */
        uint32_t parameter_get(std::span<unsigned char const> input, std::span<unsigned char> output, uint64_t& length)
        {
            return request<uwvm_ros1_parameter_get>(input, output, length);
        }

        /** @brief Perform parameter set once through its independently granted matching alias.
         * @details Sends one complete value in the alias-selected parameter codec;
         * names, native type and mutation rights are fixed independently by policy.
         * @param input Borrowed complete selected canonical parameter value.
         * @param output Borrowed raw reply capacity.
         * @param length Successful/written-required byte count, otherwise preserved.
         * @return Exact imported set error without retry after uncertain mutation.
         * @see capability::parameter_get
         */
        uint32_t parameter_set(std::span<unsigned char const> input, std::span<unsigned char> output, uint64_t& length)
        {
            return request<uwvm_ros1_parameter_set>(input, output, length);
        }

        /** @brief Perform parameter list once through its independently granted matching alias.
         * @details Uses the alias-selected parameter scope and one empty request.
         * No additional node/name scope is inferred from returned text.
         * @param input Empty canonical parameter-list query.
         * @param output Borrowed complete canonical list-response capacity.
         * @param length Successful/written-required byte count, otherwise preserved.
         * @return Exact imported list error, without response decoding.
         * @see capability::parameter_search
         */
        uint32_t parameter_list(std::span<unsigned char const> input, std::span<unsigned char> output, uint64_t& length)
        {
            return request<uwvm_ros1_parameter_list>(input, output, length);
        }

        /** @brief Perform graph list topics once through its independently granted matching alias.
         * @details One empty query observes only the alias-selected graph scope;
         * graph text never supplies publication/subscription authority.
         * @param input Empty canonical graph query.
         * @param output Borrowed complete canonical topic-list response capacity.
         * @param length Successful/written-required byte count, otherwise preserved.
         * @return Exact imported graph result without implicit polling or retries.
         * @see capability::graph_inspect_topic
         */
        uint32_t graph_list_topics(std::span<unsigned char const> input, std::span<unsigned char> output, uint64_t& length)
        {
            return request<uwvm_ros1_graph_list_topics>(input, output, length);
        }

        /** @brief Perform graph list nodes once through its independently granted matching alias.
         * @details Performs one metadata query without creating node/session owners.
         * Runtime policy independently bounds the admitted graph observation scope.
         * @param input Empty canonical graph query.
         * @param output Borrowed complete canonical node-list response capacity.
         * @param length Successful/written-required byte count, otherwise preserved.
         * @return Exact imported graph result without local text parsing.
         * @see capability::graph_inspect_node
         */
        uint32_t graph_list_nodes(std::span<unsigned char const> input, std::span<unsigned char> output, uint64_t& length)
        {
            return request<uwvm_ros1_graph_list_nodes>(input, output, length);
        }

        /** @brief Perform graph list services once through its independently granted matching alias.
         * @details One empty metadata query supplies no service call/advertisement
         * grant and is not an independent service-readiness observation.
         * @param input Empty canonical graph query.
         * @param output Borrowed complete canonical service-list response capacity.
         * @param length Successful/written-required byte count, otherwise preserved.
         * @return Exact imported graph-list error without retries.
         * @see capability::graph_inspect_service
         */
        uint32_t graph_list_services(std::span<unsigned char const> input, std::span<unsigned char> output, uint64_t& length)
        {
            return request<uwvm_ros1_graph_list_services>(input, output, length);
        }

        /** @brief Perform graph inspect topic once through its independently granted matching alias.
         * @details Topic selection belongs to the exact graph-inspection alias,
         * rather than a name supplied by untrusted request bytes.
         * @param input Empty canonical graph query.
         * @param output Borrowed complete canonical metadata-response capacity.
         * @param length Successful/written-required byte count, otherwise preserved.
         * @return Exact imported inspection result without creating topic rights.
         * @see capability::graph_list_topics
         */
        uint32_t graph_inspect_topic(std::span<unsigned char const> input, std::span<unsigned char> output, uint64_t& length)
        {
            return request<uwvm_ros1_graph_inspect_topic>(input, output, length);
        }

        /** @brief Perform graph inspect node once through its independently granted matching alias.
         * @details The alias selects one admitted graph resource. This query creates
         * no Node owner, time/log grant or discovery-driven endpoint association.
         * @param input Empty canonical graph query.
         * @param output Borrowed complete canonical metadata-response capacity.
         * @param length Successful/written-required byte count, otherwise preserved.
         * @return Exact imported node-inspection result without retries.
         * @see capability::graph_list_nodes
         */
        uint32_t graph_inspect_node(std::span<unsigned char const> input, std::span<unsigned char> output, uint64_t& length)
        {
            return request<uwvm_ros1_graph_inspect_node>(input, output, length);
        }

        /** @brief Perform graph inspect service once through its independently granted matching alias.
         * @details Reports the alias-selected metadata without authorizing a service
         * request, readiness wait or native type pairing inferred from graph text.
         * @param input Empty canonical graph query.
         * @param output Borrowed complete canonical metadata-response capacity.
         * @param length Successful/written-required byte count, otherwise preserved.
         * @return Exact imported service-inspection result without retries.
         * @see capability::graph_list_services
         */
        uint32_t graph_inspect_service(std::span<unsigned char const> input, std::span<unsigned char> output, uint64_t& length)
        {
            return request<uwvm_ros1_graph_inspect_service>(input, output, length);
        }

        /** @brief Perform time read ros once through its independently granted matching alias.
         * @details One explicit ROS-time observation uses host-selected clock state;
         * it adds no pacing, sleeping, monotonicity guarantee or local clock fallback.
         * @param input Empty canonical time-read request.
         * @param output Borrowed capacity for unsigned 64-bit nanoseconds.
         * @param length Successful/written-required byte count, otherwise preserved.
         * @return Exact imported time-read result without local decoding.
         * @see capability::time_read_wall
         */
        uint32_t time_read_ros(std::span<unsigned char const> input, std::span<unsigned char> output, uint64_t& length)
        {
            return request<uwvm_ros1_time_read_ros>(input, output, length);
        }

        /** @brief Perform parameter delete once through its independently granted matching alias.
         * @details Delete applies only to the name/scope admitted by the alias. An
         * uncertain mutation is never automatically retried or followed by a set.
         * @param input Empty canonical deletion request.
         * @param output Borrowed raw reply capacity.
         * @param length Successful/written-required byte count, otherwise preserved.
         * @return Exact imported deletion result without synthesizing an event.
         * @see capability::parameter_exists
         */
        uint32_t parameter_delete(std::span<unsigned char const> input, std::span<unsigned char> output, uint64_t& length)
        {
            return request<uwvm_ros1_parameter_delete>(input, output, length);
        }

        /** @brief Perform parameter exists once through its independently granted matching alias.
         * @details One metadata observation concerns the alias-selected parameter;
         * existence does not confer read, write, delete or event-subscription rights.
         * @param input Empty canonical existence query.
         * @param output Borrowed canonical Boolean-response capacity.
         * @param length Successful/written-required byte count, otherwise preserved.
         * @return Exact imported observation result without Boolean decoding.
         * @see capability::parameter_get
         */
        uint32_t parameter_exists(std::span<unsigned char const> input, std::span<unsigned char> output, uint64_t& length)
        {
            return request<uwvm_ros1_parameter_exists>(input, output, length);
        }

        /** @brief Perform parameter search once through its independently granted matching alias.
         * @details Search root/name scope is fixed by the alias. Returned text is
         * metadata and never supplies a new parameter grant or mutation target.
         * @param input Empty canonical search query.
         * @param output Borrowed canonical String-response capacity.
         * @param length Successful/written-required byte count, otherwise preserved.
         * @return Exact imported search result without decoding or retries.
         * @see capability::parameter_list
         */
        uint32_t parameter_search(std::span<unsigned char const> input, std::span<unsigned char> output, uint64_t& length)
        {
            return request<uwvm_ros1_parameter_search>(input, output, length);
        }

        /** @brief Perform time read wall once through its independently granted matching alias.
         * @details One explicit wall-time observation uses the independently granted
         * clock operation. This wrapper does not schedule work or infer steady time.
         * @param input Empty canonical time-read request.
         * @param output Borrowed capacity for unsigned 64-bit nanoseconds.
         * @param length Successful/written-required byte count, otherwise preserved.
         * @return Exact imported time result without local decoding or retries.
         * @see capability::time_read_ros
         */
        uint32_t time_read_wall(std::span<unsigned char const> input, std::span<unsigned char> output, uint64_t& length)
        {
            return request<uwvm_ros1_time_read_wall>(input, output, length);
        }

        /** @brief Activate service.advertise; queued events contain an owned request ID and canonical request.
         * @details Requires its own exact advertisement grant; response permission
         * is separate and no native guest callback is installed.
         * @return Exact numeric advertisement result.
         * @see capability::service_respond
         */
        uint32_t advertise_service()
        {
            return uwvm_ros1_service_advertise(handle_);
        }

        /** @brief Write an already encoded u32-length canonical String at the host-selected severity (not bare UTF-8).
         * @details This raw path does not add a severity selector or encode text.
         * One synchronous import returns its error without replay or hidden logging.
         * @param bytes Borrowed complete canonical String wire representation.
         * @return Exact numeric log-write result.
         * @see capability::publish
         */
        uint32_t log(std::span<unsigned char const> bytes)
        {
            return uwvm_ros1_log_write(handle_, 0, uwvm_ros_address(bytes.data()), bytes.size());
        }

        /** @brief Retire local ownership before one close attempt, including failure107/110.
         * @details An actual attempt clears this handle before dispatch. Empty owners
         * return 9; transport failure does not authorize closing the old bits again.
         * @return BAD_HANDLE when empty, otherwise exact imported close status.
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
            return uwvm_ros1_capability_close(old);
        }

        /** @brief Request revocation once and retire local ownership, without cleanup replay.
         * @details Empty owners return 9. Revocation is an explicit destructive host
         * policy operation that can affect sibling aliases; it is never a destructor
         * or timeout fallback. Local handle bits clear before the import.
         * @return BAD_HANDLE when empty, otherwise exact imported revoke status.
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
            return uwvm_ros1_capability_revoke(old);
        }

        /** @brief Borrow the opaque instance-owned handle; it is not a pointer and must not be transferred.
         * @details This local accessor grants no operation and transfers no owner;
         * avoid raw imported calls that conflict with this object's lifetime.
         * @return Current handle bits, or zero after move/close/revoke.
         * @see capability::close
         */
        uwvm_ros_handle handle() const noexcept
        {
            return handle_;
        }
    };
}  // namespace uwvm_ros1
#endif  // selected portable/modern raw owner
