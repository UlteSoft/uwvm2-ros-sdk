/** @file
 * @brief Standard-selected ROS 1 raw owner with pointer/count public calls.
 * @details Earlier profiles select the portable owner; the modern definition
 * below uses only the stable C ABI header. Buffers remain live throughout each
 * synchronous import. Canonical encoding and exact host grants stay explicit;
 * no native ROS layout, scheduling, allocation or retry is supplied here.
 * @see uwvm_ros1::freestanding_capability
 */
#pragma once
#include <platform/ros/cpp/roswasm/cpp_profile.hpp>
#if ROSWASM_CPP_STANDARD == 98 || ROSWASM_CPP_STANDARD == 3 || ROSWASM_CPP_STANDARD < 20
# include <platform/ros1/cpp/roswasm/detail/raw_ros1.hpp>
#else
# include <platform/ros1/c/roswasm/detail/ros1/abi.h>

namespace uwvm_ros1
{
    /** @brief Unique pointer/count ROS 1 raw alias owner.
     * @details Copying is disabled; moves transfer handle bits. Move assignment
     * attempts old-owner close once and discards its status before replacement.
     * Call close explicitly first when that status must be retained. Raw operations
     * dispatch once without encoding/decoding, resize or grant inference. Callers
     * serialize access and supply live readable/writable byte ranges.
     * @see freestanding_capability::close
     */
    class freestanding_capability
    {
        uwvm_ros_handle handle_{};

        template <uint32_t (*Import)(uint64_t, uint32_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)>
        uint32_t request(void const* input, uint64_t input_length, void* output, uint64_t capacity, uint64_t& length)
        {
            unsigned char encoded[8]{255, 255, 255, 255, 255, 255, 255, 255};
            auto error = Import(handle_, 0, uwvm_ros_address(input), input_length, uwvm_ros_address(output), capacity, uwvm_ros_address(encoded));
            if(!error || (error == UWVM_ROS_TOO_LARGE && uwvm_ros_load_u64(encoded) != UINT64_MAX))
            {
                length = uwvm_ros_load_u64(encoded);
            }
            return error;
        }

    public:
        /** @brief Create an empty owner without opening an alias.
         * @details The handle is zero and no host operation occurs.
         * @see freestanding_capability::open
         */
        freestanding_capability() = default;
        /** @brief Copy ownership is disabled.
         * @details Use explicit move construction to transfer the unique owner.
         * @see freestanding_capability::freestanding_capability(freestanding_capability&&)
         */
        freestanding_capability(freestanding_capability const&) = delete;
        /** @brief Disable copy replacement of a unique imported handle.
         * @details This deleted operation performs no acquisition or cleanup.
         * @see freestanding_capability::operator=
         */
        freestanding_capability& operator= (freestanding_capability const&) = delete;

        /** @brief Transfer the owned handle and leave the source empty.
         * @details Copies only handle bits and clears the source without importing.
         * @param other Source owner emptied by this transfer.
         * @see freestanding_capability::handle
         */
        freestanding_capability(freestanding_capability&& other) noexcept : handle_{other.handle_}
        {
            other.handle_ = 0;
        }

        /** @brief Close the prior owner once and transfer another owner's handle.
         * @details Self-assignment is unchanged. Otherwise discard old close status,
         * replace the handle and empty other; no cleanup or business retry occurs.
         * @param other Source owner transferred after the old cleanup attempt.
         * @return This owner by reference.
         * @see freestanding_capability::close
         */
        freestanding_capability& operator= (freestanding_capability&& other) noexcept
        {
            if(this != &other)
            {
                if(handle_)
                {
                    uwvm_ros1_capability_close(handle_);
                }
                handle_ = other.handle_;
                other.handle_ = 0;
            }
            return *this;
        }

        /** @brief Attempt one synchronous close for a live handle at destruction.
         * @details Numeric cleanup errors are discarded without replay or exceptions.
         * Use explicit close to retain notification status before destruction.
         * @see freestanding_capability::close
         */
        ~freestanding_capability()
        {
            if(handle_)
            {
                uwvm_ros1_capability_close(handle_);
            }
        }

        /** @brief Open exactly one nonempty host-granted alias; repeated open on a live owner returns22.
         * @details Host validation binds operation, native identity, resource and
         * quotas. Alias bytes are borrowed only for this synchronous acquisition.
         * @param alias Live readable counted alias bytes; no terminator is added.
         * @param length Exact nonzero alias byte count.
         * @return INVALID for an existing handle, otherwise the C open result.
         * @see freestanding_capability::close
         */
        uint32_t open(char const* alias, uint64_t length)
        {
            if(handle_)
            {
                return UWVM_ROS_INVALID;
            }
            return uwvm_ros1_open(alias, length, &handle_);
        }

        /** @brief Publish already canonical message bytes through a topic.publish alias; no native struct layout is
         * accepted.
         * @details Imports once using the independently admitted publication role;
         * no typed conversion, retry or native layout serialization occurs locally.
         * @param bytes Live readable complete canonical message bytes.
         * @param length Exact wire byte count within the source allocation.
         * @return Exact numeric C publication result.
         * @see freestanding_capability::subscribe
         */
        uint32_t publish(void const* bytes, uint64_t length)
        {
            return uwvm_ros1_publish(handle_, bytes, length);
        }

        /** @brief Activate a topic.subscribe queue; polling later invokes no native guest callback.
         * @details Uses the independently granted subscription role once, without
         * creating a thread or automatically polling for a message.
         * @return Exact C subscription-activation error.
         * @see freestanding_capability::poll
         */
        uint32_t subscribe()
        {
            return uwvm_ros1_topic_subscribe(handle_);
        }

        /** @brief Poll once into explicit bounded storage;11 means idle and90 may report a written required size.
         * @details Caller storage remains live for the synchronous C call. Its
         * sentinel length helper preserves length on errors without a valid written
         * required-size result. No automatic growth, decode or replay follows.
         * @param bytes Live writable destination, null only with zero capacity.
         * @param capacity Exact available destination bytes.
         * @param length Successful or written-required size destination.
         * @return Exact C poll result, including idle 11 and size error 90.
         * @see freestanding_capability::subscribe
         */
        uint32_t poll(void* bytes, uint64_t capacity, uint64_t& length)
        {
            return uwvm_ros1_poll(handle_, bytes, capacity, &length);
        }

        /** @brief Activate service.advertise; queued events contain an owned request ID and canonical request.
         * @details Advertisement requires its own alias; response permission is
         * independent. No native guest callback is registered by this raw operation.
         * @return Exact numeric advertisement result.
         * @see freestanding_capability::service_respond
         */
        uint32_t advertise_service()
        {
            return uwvm_ros1_service_advertise(handle_);
        }

        /** @brief Write an already encoded u32-length canonical String at the host-selected severity (not bare UTF-8).
         * @details The caller supplies complete canonical framing; this wrapper
         * chooses no stronger severity and sends at most one imported write.
         * @param bytes Live readable complete canonical String representation.
         * @param length Exact wire byte count including its count prefix.
         * @return Exact numeric C log-write error without retry.
         * @see freestanding_capability::publish
         */
        uint32_t log(void const* bytes, uint64_t length)
        {
            return uwvm_ros1_log_write(handle_, 0, uwvm_ros_address(bytes), length);
        }

        /** @brief Perform service call once through its independently granted matching alias.
         * @details Sends the alias-selected canonical request once without typed
         * conversion or replay after timeout/size/transport errors. Uses memory 0.
         * @param input Live readable complete selected service request.
         * @param input_length Exact request byte count, permitting null input when zero.
         * @param output Live writable canonical response storage.
         * @param capacity Exact output extent in bytes, permitting null output when zero.
         * @param length Updated on success or written required size at 90, otherwise
         * unchanged by the sentinel helper; buffer contents have no rollback guarantee.
         * @return Exact imported service-call error without local decoding.
         * @see freestanding_capability::service_respond
         */
        uint32_t service_call(void const* input, uint64_t input_length, void* output, uint64_t capacity, uint64_t& length)
        {
            return request<uwvm_ros1_service_call>(input, input_length, output, capacity, length);
        }

        /** @brief Perform service respond once through its independently granted matching alias.
         * @details Uses the canonical owned-request-ID/response envelope and one
         * explicit response role; uncertain native effects are never replayed.
         * @param input Live complete request-ID plus selected response bytes.
         * @param input_length Exact canonical envelope size in bytes.
         * @param output Borrowed raw reply storage for this synchronous call.
         * @param capacity Exact writable reply extent in bytes.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported response result without local interpretation.
         * @see freestanding_capability::advertise_service
         */
        uint32_t service_respond(void const* input, uint64_t input_length, void* output, uint64_t capacity, uint64_t& length)
        {
            return request<uwvm_ros1_service_respond>(input, input_length, output, capacity, length);
        }

        /** @brief Perform action send goal once through its independently granted matching alias.
         * @details The alias selects the canonical Action codec, native identity and
         * host quotas. A failed/uncertain submission is not automatically repeated.
         * @param input Complete selected canonical goal storage, borrowed for this call.
         * @param input_length Exact goal wire bytes.
         * @param output Borrowed canonical returned-goal-ID storage.
         * @param capacity Exact available response bytes.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported goal-submission result without local goal tracking.
         * @see freestanding_capability::action_receive_result
         */
        uint32_t action_send_goal(void const* input, uint64_t input_length, void* output, uint64_t capacity, uint64_t& length)
        {
            return request<uwvm_ros1_action_send_goal>(input, input_length, output, capacity, length);
        }

        /** @brief Perform action cancel own goal once through its independently granted matching alias.
         * @details The host checks the nonzero goal's ownership. Acceptance does not
         * prove terminal state or authorize the independently stronger any/all role.
         * @param input Eight-byte little-endian nonzero owned-goal ID storage.
         * @param input_length Exactly eight request bytes.
         * @param output Borrowed canonical Boolean-response storage.
         * @param capacity Exact available response extent in bytes.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported own-cancel error without retry or Boolean decoding.
         * @see freestanding_capability::action_cancel_any_goal
         */
        uint32_t action_cancel_own_goal(void const* input, uint64_t input_length, void* output, uint64_t capacity, uint64_t& length)
        {
            return request<uwvm_ros1_action_cancel_own_goal>(input, input_length, output, capacity, length);
        }

        /** @brief Perform action cancel any goal once through its independently granted matching alias.
         * @details Uses only an independently admitted any-cancel scope. Explicit
         * zero requests all under that policy; no own-cancel grant is promoted.
         * @param input Eight-byte little-endian goal selector, zero explicitly for all.
         * @param input_length Exactly eight selector bytes.
         * @param output Borrowed canonical Boolean-response storage.
         * @param capacity Exact available response bytes.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported cancellation result without local interpretation.
         * @see freestanding_capability::action_cancel_own_goal
         */
        uint32_t action_cancel_any_goal(void const* input, uint64_t input_length, void* output, uint64_t capacity, uint64_t& length)
        {
            return request<uwvm_ros1_action_cancel_any_goal>(input, input_length, output, capacity, length);
        }

        /** @brief Perform action receive feedback once through its independently granted matching alias.
         * @details One host-correlated observation adds no native callback, local
         * payload decoder, resize or repeated receive after idle/size errors.
         * @param input Eight-byte little-endian nonzero goal ID storage.
         * @param input_length Exactly eight request bytes.
         * @param output Borrowed complete canonical feedback-envelope storage.
         * @param capacity Exact writable response extent in bytes.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported feedback result, including idle 11.
         * @see freestanding_capability::action_receive_result
         */
        uint32_t action_receive_feedback(void const* input, uint64_t input_length, void* output, uint64_t capacity, uint64_t& length)
        {
            return request<uwvm_ros1_action_receive_feedback>(input, input_length, output, capacity, length);
        }

        /** @brief Perform action receive result once through its independently granted matching alias.
         * @details Receives one canonical correlated marked terminal result. This
         * raw owner does not decode its kind/value or retire a local goal table.
         * @param input Eight-byte little-endian nonzero goal ID storage.
         * @param input_length Exactly eight request bytes.
         * @param output Borrowed complete canonical terminal-result storage.
         * @param capacity Exact available response bytes.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported result-observation status without retry.
         * @see freestanding_capability::action_receive_feedback
         */
        uint32_t action_receive_result(void const* input, uint64_t input_length, void* output, uint64_t capacity, uint64_t& length)
        {
            return request<uwvm_ros1_action_receive_result>(input, input_length, output, capacity, length);
        }

        /** @brief Perform action advertise once through its independently granted matching alias.
         * @details Empty input activates the explicit server role. Incoming goal
         * ID/value envelopes are later obtained through caller-driven polling.
         * @param input Empty canonical activation storage, permitted null.
         * @param input_length Zero for the advertisement request.
         * @param output Borrowed raw reply storage.
         * @param capacity Exact writable reply extent in bytes.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported advertisement result without native guest callbacks.
         * @see freestanding_capability::action_respond
         */
        uint32_t action_advertise(void const* input, uint64_t input_length, void* output, uint64_t capacity, uint64_t& length)
        {
            return request<uwvm_ros1_action_advertise>(input, input_length, output, capacity, length);
        }

        /** @brief Perform action respond once through its independently granted matching alias.
         * @details Both feedback and terminal responses carry the canonical goal ID
         * and kind marker; host advertisement correlation/type checks remain required.
         * @param input Complete selected marked server-response storage.
         * @param input_length Exact canonical envelope bytes.
         * @param output Borrowed raw reply storage.
         * @param capacity Exact available reply bytes.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported response status without marker conversion or replay.
         * @see freestanding_capability::action_advertise
         */
        uint32_t action_respond(void const* input, uint64_t input_length, void* output, uint64_t capacity, uint64_t& length)
        {
            return request<uwvm_ros1_action_respond>(input, input_length, output, capacity, length);
        }

        /** @brief Perform tf lookup once through its independently granted matching alias.
         * @details Frame pairing and lookup authority are alias policy. One raw
         * observation neither reads another clock nor decodes its returned Transform.
         * @param input Eight-byte little-endian unsigned nanosecond lookup time.
         * @param input_length Exactly eight timestamp bytes.
         * @param output Borrowed canonical Transform-response storage.
         * @param capacity Exact available response bytes.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported lookup status without retry.
         * @see freestanding_capability::tf_broadcast
         */
        uint32_t tf_lookup(void const* input, uint64_t input_length, void* output, uint64_t capacity, uint64_t& length)
        {
            return request<uwvm_ros1_tf_lookup>(input, input_length, output, capacity, length);
        }

        /** @brief Perform tf broadcast once through its independently granted matching alias.
         * @details The host checks canonical fields, frames, selected authority and
         * quotas. No native Transform padding or object layout is serialized here.
         * @param input Complete canonical Transform storage, borrowed for this call.
         * @param input_length Exact Transform wire bytes.
         * @param output Borrowed raw reply storage.
         * @param capacity Exact writable reply bytes.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported broadcast result without uncertain-effect replay.
         * @see freestanding_capability::tf_lookup
         */
        uint32_t tf_broadcast(void const* input, uint64_t input_length, void* output, uint64_t capacity, uint64_t& length)
        {
            return request<uwvm_ros1_tf_broadcast>(input, input_length, output, capacity, length);
        }

        /** @brief Perform parameter get once through its independently granted matching alias.
         * @details Node/name/type belong to the alias policy. Read once with empty
         * input; the returned value requires its selected canonical parameter codec.
         * @param input Empty canonical query storage, permitted null.
         * @param input_length Zero for parameter get.
         * @param output Borrowed complete selected-value response storage.
         * @param capacity Exact available response bytes.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported get result without decoding or a second query.
         * @see freestanding_capability::parameter_set
         */
        uint32_t parameter_get(void const* input, uint64_t input_length, void* output, uint64_t capacity, uint64_t& length)
        {
            return request<uwvm_ros1_parameter_get>(input, input_length, output, capacity, length);
        }

        /** @brief Perform parameter set once through its independently granted matching alias.
         * @details Names, native types and mutation scope stay alias-selected. One
         * canonical value is submitted without automatically replaying an error.
         * @param input Complete selected canonical parameter-value storage.
         * @param input_length Exact canonical value bytes.
         * @param output Borrowed raw reply storage.
         * @param capacity Exact writable reply bytes.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported set result, preserving uncertain native effects.
         * @see freestanding_capability::parameter_get
         */
        uint32_t parameter_set(void const* input, uint64_t input_length, void* output, uint64_t capacity, uint64_t& length)
        {
            return request<uwvm_ros1_parameter_set>(input, input_length, output, capacity, length);
        }

        /** @brief Perform parameter delete once through its independently granted matching alias.
         * @details One empty mutation request deletes only the alias-selected name/
         * scope. Failure is never followed by implicit replay or parameter recreation.
         * @param input Empty canonical delete storage, permitted null.
         * @param input_length Zero for deletion.
         * @param output Borrowed raw reply storage.
         * @param capacity Exact writable reply bytes.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported deletion result without inferred event delivery.
         * @see freestanding_capability::parameter_exists
         */
        uint32_t parameter_delete(void const* input, uint64_t input_length, void* output, uint64_t capacity, uint64_t& length)
        {
            return request<uwvm_ros1_parameter_delete>(input, input_length, output, capacity, length);
        }

        /** @brief Perform parameter exists once through its independently granted matching alias.
         * @details One alias-selected metadata observation implies no parameter
         * read, write, deletion or event-subscription grant.
         * @param input Empty canonical existence query, permitted null.
         * @param input_length Zero for the query.
         * @param output Borrowed canonical Boolean-response storage.
         * @param capacity Exact available response bytes.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported existence result without Boolean decoding.
         * @see freestanding_capability::parameter_get
         */
        uint32_t parameter_exists(void const* input, uint64_t input_length, void* output, uint64_t capacity, uint64_t& length)
        {
            return request<uwvm_ros1_parameter_exists>(input, input_length, output, capacity, length);
        }

        /** @brief Perform parameter list once through its independently granted matching alias.
         * @details List scope is fixed independently by the alias. Metadata text
         * never supplies a missing parameter grant or another native endpoint.
         * @param input Empty canonical list query, permitted null.
         * @param input_length Zero for the query.
         * @param output Borrowed complete canonical list-response storage.
         * @param capacity Exact available response bytes.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported list result without local parsing or retries.
         * @see freestanding_capability::parameter_search
         */
        uint32_t parameter_list(void const* input, uint64_t input_length, void* output, uint64_t capacity, uint64_t& length)
        {
            return request<uwvm_ros1_parameter_list>(input, input_length, output, capacity, length);
        }

        /** @brief Perform parameter search once through its independently granted matching alias.
         * @details The alias fixes search root/name scope. Returned text is metadata
         * and creates no read/write authority or discovery-driven target selection.
         * @param input Empty canonical search query, permitted null.
         * @param input_length Zero for the query.
         * @param output Borrowed canonical String-response storage.
         * @param capacity Exact available response bytes.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported search result without decoding or retries.
         * @see freestanding_capability::parameter_list
         */
        uint32_t parameter_search(void const* input, uint64_t input_length, void* output, uint64_t capacity, uint64_t& length)
        {
            return request<uwvm_ros1_parameter_search>(input, input_length, output, capacity, length);
        }

        /** @brief Perform graph inspect topic once through its independently granted matching alias.
         * @details Topic selection is fixed by its exact graph alias. Observation
         * neither opens a topic role nor infers grants from returned text.
         * @param input Empty canonical graph query, permitted null.
         * @param input_length Zero for the query.
         * @param output Borrowed complete canonical metadata-response storage.
         * @param capacity Exact available response bytes.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported inspection result without local text parsing.
         * @see freestanding_capability::graph_list_topics
         */
        uint32_t graph_inspect_topic(void const* input, uint64_t input_length, void* output, uint64_t capacity, uint64_t& length)
        {
            return request<uwvm_ros1_graph_inspect_topic>(input, input_length, output, capacity, length);
        }

        /** @brief Perform graph inspect node once through its independently granted matching alias.
         * @details Inspects the admitted graph resource without creating a Node
         * owner or independently granting any of its topic/time/log operations.
         * @param input Empty canonical graph query, permitted null.
         * @param input_length Zero for the query.
         * @param output Borrowed complete canonical metadata-response storage.
         * @param capacity Exact available response bytes.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported node-inspection result without retries.
         * @see freestanding_capability::graph_list_nodes
         */
        uint32_t graph_inspect_node(void const* input, uint64_t input_length, void* output, uint64_t capacity, uint64_t& length)
        {
            return request<uwvm_ros1_graph_inspect_node>(input, input_length, output, capacity, length);
        }

        /** @brief Perform graph inspect service once through its independently granted matching alias.
         * @details Reports metadata for the alias-selected resource. It supplies no
         * business request/readiness grant or native type association from text.
         * @param input Empty canonical graph query, permitted null.
         * @param input_length Zero for the query.
         * @param output Borrowed complete canonical metadata-response storage.
         * @param capacity Exact available response bytes.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported service-inspection result without retries.
         * @see freestanding_capability::graph_list_services
         */
        uint32_t graph_inspect_service(void const* input, uint64_t input_length, void* output, uint64_t capacity, uint64_t& length)
        {
            return request<uwvm_ros1_graph_inspect_service>(input, input_length, output, capacity, length);
        }

        /** @brief Perform graph list topics once through its independently granted matching alias.
         * @details One query observes the admitted graph scope without creating
         * publication/subscription owners or discovery-derived authority.
         * @param input Empty canonical graph query, permitted null.
         * @param input_length Zero for the query.
         * @param output Borrowed complete canonical topic-list response storage.
         * @param capacity Exact available response bytes.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported graph result without implicit polling or retry.
         * @see freestanding_capability::graph_inspect_topic
         */
        uint32_t graph_list_topics(void const* input, uint64_t input_length, void* output, uint64_t capacity, uint64_t& length)
        {
            return request<uwvm_ros1_graph_list_topics>(input, input_length, output, capacity, length);
        }

        /** @brief Perform graph list nodes once through its independently granted matching alias.
         * @details One metadata observation creates no Node owner or native session.
         * Policy independently bounds which graph information is returned.
         * @param input Empty canonical graph query, permitted null.
         * @param input_length Zero for the query.
         * @param output Borrowed complete canonical node-list response storage.
         * @param capacity Exact available response bytes.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported graph result without local text parsing.
         * @see freestanding_capability::graph_inspect_node
         */
        uint32_t graph_list_nodes(void const* input, uint64_t input_length, void* output, uint64_t capacity, uint64_t& length)
        {
            return request<uwvm_ros1_graph_list_nodes>(input, input_length, output, capacity, length);
        }

        /** @brief Perform graph list services once through its independently granted matching alias.
         * @details Graph metadata confers no call/advertisement grant and is not a
         * separately selected service-readiness observation.
         * @param input Empty canonical graph query, permitted null.
         * @param input_length Zero for the query.
         * @param output Borrowed complete canonical service-list response storage.
         * @param capacity Exact available response bytes.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported graph-list result without retry.
         * @see freestanding_capability::graph_inspect_service
         */
        uint32_t graph_list_services(void const* input, uint64_t input_length, void* output, uint64_t capacity, uint64_t& length)
        {
            return request<uwvm_ros1_graph_list_services>(input, input_length, output, capacity, length);
        }

        /** @brief Perform time read ros once through its independently granted matching alias.
         * @details One ROS-time observation uses host-selected clock state without
         * implicit pacing, sleeping or a monotonic/local-clock fallback guarantee.
         * @param input Empty canonical time-read storage, permitted null.
         * @param input_length Zero for the query.
         * @param output Borrowed storage for unsigned 64-bit nanoseconds.
         * @param capacity Exact available response bytes.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported time result without local decoding or retry.
         * @see freestanding_capability::time_read_wall
         */
        uint32_t time_read_ros(void const* input, uint64_t input_length, void* output, uint64_t capacity, uint64_t& length)
        {
            return request<uwvm_ros1_time_read_ros>(input, input_length, output, capacity, length);
        }

        /** @brief Perform time read wall once through its independently granted matching alias.
         * @details One wall-time observation uses its independently granted clock
         * role without scheduling work or silently substituting steady time.
         * @param input Empty canonical time-read storage, permitted null.
         * @param input_length Zero for the query.
         * @param output Borrowed storage for unsigned 64-bit nanoseconds.
         * @param capacity Exact available response bytes.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported time result without local decoding or retries.
         * @see freestanding_capability::time_read_ros
         */
        uint32_t time_read_wall(void const* input, uint64_t input_length, void* output, uint64_t capacity, uint64_t& length)
        {
            return request<uwvm_ros1_time_read_wall>(input, input_length, output, capacity, length);
        }

        /** @brief Retire local ownership before one close attempt, including failure107/110.
         * @details Empty returns 9. A live handle is cleared locally before its
         * imported close, even if notification fails; do not replay the old bits.
         * @return BAD_HANDLE when empty, otherwise the exact imported close status.
         * @see freestanding_capability::handle
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
         * @details This explicit policy operation can affect sibling aliases and is
         * never destructor/timeout recovery. Clear handle bits before dispatch.
         * @return BAD_HANDLE when empty, otherwise exact imported revoke status.
         * @see freestanding_capability::close
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
         * @details Does not transfer ownership, query native liveness or grant a role.
         * @return Current handle bits or zero after move/close/revoke.
         * @see freestanding_capability::close
         */
        uwvm_ros_handle handle() const noexcept
        {
            return handle_;
        }
    };
}  // namespace uwvm_ros1
#endif  // selected portable/modern raw owner
