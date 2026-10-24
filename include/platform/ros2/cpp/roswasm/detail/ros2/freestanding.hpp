/** @file
 * @brief Standard-selected ROS 2 raw owner with pointer/count public calls.
 * @details Earlier profiles select the portable owner; the modern definition
 * below requires only the stable C ABI header. Every synchronous call borrows
 * live caller storage and already canonical bytes. It adds no native ROS layout,
 * hidden allocation, clock, callback thread, stronger grant or retry.
 * @see uwvm_ros2::freestanding_capability
 */
#pragma once
#include <platform/ros/cpp/roswasm/cpp_profile.hpp>
#if ROSWASM_CPP_STANDARD == 98 || ROSWASM_CPP_STANDARD == 3 || ROSWASM_CPP_STANDARD < 20
# include <platform/ros2/cpp/roswasm/detail/raw_ros2.hpp>
#else
# include <platform/ros2/c/roswasm/detail/ros2/abi.h>

namespace uwvm_ros2
{
    /** @brief Unique pointer/count ROS 2 raw alias owner.
     * @details Copying is disabled; moves transfer handle bits. Move replacement
     * closes the prior live owner once and discards its status before transfer;
     * explicit close is required first to inspect that status. Raw operations use
     * independently admitted aliases and caller buffers without local typed codecs
     * or retries. Serialize use and retain every input/output allocation during calls.
     * Raw requests use memory 0. The sentinel helper updates length on success or
     * a written required-size result at 90; other errors leave length unchanged.
     * Output bytes have no rollback guarantee. Null buffers require zero extents.
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
         * @details Handle zero owns no host capability and requires explicit open.
         * @see freestanding_capability::open
         */
        freestanding_capability() = default;
        /** @brief Copy ownership is disabled.
         * @details Transfer unique ownership with the explicit move constructor.
         * @see freestanding_capability::freestanding_capability(freestanding_capability&&)
         */
        freestanding_capability(freestanding_capability const&) = delete;
        /** @brief Disable copy replacement of a unique imported handle.
         * @details This deleted spelling performs no cleanup or acquisition.
         * @see freestanding_capability::operator=
         */
        freestanding_capability& operator= (freestanding_capability const&) = delete;

        /** @brief Transfer the owned handle and leave the source empty.
         * @details Copies only local bits and clears other without importing.
         * @param other Source owner emptied by this transfer.
         * @see freestanding_capability::handle
         */
        freestanding_capability(freestanding_capability&& other) noexcept : handle_{other.handle_}
        {
            other.handle_ = 0;
        }

        /** @brief Close the prior live owner once and transfer another handle.
         * @details Self-assignment is unchanged. Otherwise old close status is
         * discarded and the source is emptied; no cleanup retry loop is created.
         * @param other Unique source owner transferred after old cleanup.
         * @return This owner by reference.
         * @see freestanding_capability::close
         */
        freestanding_capability& operator= (freestanding_capability&& other) noexcept
        {
            if(this != &other)
            {
                if(handle_)
                {
                    uwvm_ros2_capability_close(handle_);
                }
                handle_ = other.handle_;
                other.handle_ = 0;
            }
            return *this;
        }

        /** @brief Attempt one synchronous close for a live handle at destruction.
         * @details Discards numeric errors without replay or thrown exceptions;
         * explicit close is required to retain cleanup notification evidence.
         * @see freestanding_capability::close
         */
        ~freestanding_capability()
        {
            if(handle_)
            {
                uwvm_ros2_capability_close(handle_);
            }
        }

        /** @brief Open exactly one nonempty host-granted alias; repeated open on a live owner returns22.
         * @details Alias bytes remain borrowed for this synchronous acquisition;
         * exact operation, native type/resource and quotas stay host-validated.
         * @param alias Live readable counted alias bytes without an added terminator.
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
            return uwvm_ros2_open(alias, length, &handle_);
        }

        /** @brief Publish already canonical message bytes through a topic.publish alias; no native struct layout is
         * accepted.
         * @details One imported write uses only the independently selected publish
         * role; no local typed conversion or automatic replay follows an error.
         * @param bytes Complete readable canonical message storage.
         * @param length Exact wire byte count within that live allocation.
         * @return Exact numeric C publication result.
         * @see freestanding_capability::subscribe
         */
        uint32_t publish(void const* bytes, uint64_t length)
        {
            return uwvm_ros2_publish(handle_, bytes, length);
        }

        /** @brief Activate a topic.subscribe queue; polling later invokes no native guest callback.
         * @details Uses its independent subscription role once without creating a
         * worker thread or automatically consuming a queued message.
         * @return Exact C activation result.
         * @see freestanding_capability::poll
         */
        uint32_t subscribe()
        {
            return uwvm_ros2_topic_subscribe(handle_);
        }

        /** @brief Poll once into explicit bounded storage;11 means idle and90 may report a written required size.
         * @details The C sentinel helper preserves length on errors without a valid
         * written required-size result. Caller capacity stays borrowed during the
         * synchronous import; there is no resize, typed decode or second receive.
         * @param bytes Live writable destination, null only with zero capacity.
         * @param capacity Exact writable destination extent in bytes.
         * @param length Successful/written-required byte-count destination.
         * @return Exact C poll result including idle 11 and capacity error 90.
         * @see freestanding_capability::subscribe
         */
        uint32_t poll(void* bytes, uint64_t capacity, uint64_t& length)
        {
            return uwvm_ros2_poll(handle_, bytes, capacity, &length);
        }

        /** @brief Activate service.advertise; queued events contain an owned request ID and canonical request.
         * @details This independently granted role creates no response permission
         * or native guest callback; raw queued requests are consumed by polling.
         * @return Exact numeric advertisement result.
         * @see freestanding_capability::service_respond
         */
        uint32_t advertise_service()
        {
            return uwvm_ros2_service_advertise(handle_);
        }

        /** @brief Write an already encoded u32-length canonical String at the host-selected severity (not bare UTF-8).
         * @details The caller supplies complete canonical framing; this wrapper
         * selects no stronger severity and performs no automatic retry.
         * @param bytes Live readable canonical String bytes including count prefix.
         * @param length Exact complete wire byte count.
         * @return Exact imported log-write result.
         * @see freestanding_capability::publish
         */
        uint32_t log(void const* bytes, uint64_t length)
        {
            return uwvm_ros2_log_write(handle_, 0, uwvm_ros_address(bytes), length);
        }

        /** @brief Perform service call once through its independently granted matching alias.
         * @details One alias-selected canonical request uses explicit borrowed
         * response capacity without local typed conversion or uncertain-effect retry.
         * @param input Live readable complete selected service request.
         * @param input_length Exact request wire byte count.
         * @param output Live writable canonical response storage.
         * @param capacity Exact available response extent in bytes.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported service-call result without decoding.
         * @see freestanding_capability::service_respond
         */
        uint32_t service_call(void const* input, uint64_t input_length, void* output, uint64_t capacity, uint64_t& length)
        {
            return request<uwvm_ros2_service_call>(input, input_length, output, capacity, length);
        }

        /** @brief Perform service respond once through its independently granted matching alias.
         * @details Uses the canonical owned-request-ID/selected-response envelope
         * through a distinct response grant, without repeating a failed response.
         * @param input Complete canonical request-ID plus response storage.
         * @param input_length Exact canonical envelope bytes.
         * @param output Borrowed raw reply storage.
         * @param capacity Exact writable reply extent in bytes.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported service-response status.
         * @see freestanding_capability::advertise_service
         */
        uint32_t service_respond(void const* input, uint64_t input_length, void* output, uint64_t capacity, uint64_t& length)
        {
            return request<uwvm_ros2_service_respond>(input, input_length, output, capacity, length);
        }

        /** @brief Perform action send goal once through its independently granted matching alias.
         * @details The alias selects Action codec, native identity and quotas.
         * This owner adds no local goal table or replay of uncertain admission.
         * @param input Complete selected canonical goal storage.
         * @param input_length Exact canonical goal byte count.
         * @param output Writable canonical returned-goal-ID storage.
         * @param capacity Exact available response bytes.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported goal-submission error without decoding.
         * @see freestanding_capability::action_receive_result
         */
        uint32_t action_send_goal(void const* input, uint64_t input_length, void* output, uint64_t capacity, uint64_t& length)
        {
            return request<uwvm_ros2_action_send_goal>(input, input_length, output, capacity, length);
        }

        /** @brief Perform action cancel own goal once through its independently granted matching alias.
         * @details The host independently validates nonzero-goal ownership. A
         * returned acceptance Boolean does not establish terminal completion.
         * @param input Eight-byte little-endian nonzero owned-goal ID storage.
         * @param input_length Exactly eight request bytes.
         * @param output Writable canonical Boolean-response storage.
         * @param capacity Exact available response bytes.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported own-cancel result without retry or interpretation.
         * @see freestanding_capability::action_cancel_any_goal
         */
        uint32_t action_cancel_own_goal(void const* input, uint64_t input_length, void* output, uint64_t capacity, uint64_t& length)
        {
            return request<uwvm_ros2_action_cancel_own_goal>(input, input_length, output, capacity, length);
        }

        /** @brief Perform action cancel any goal once through its independently granted matching alias.
         * @details Uses only the separately granted stronger scope; explicit zero
         * selects all under host policy. Own-cancel authority is never promoted.
         * @param input Eight-byte little-endian goal selector, zero explicitly for all.
         * @param input_length Exactly eight selector bytes.
         * @param output Writable canonical Boolean-response storage.
         * @param capacity Exact available response bytes.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported any-cancel error without local Boolean decoding.
         * @see freestanding_capability::action_cancel_own_goal
         */
        uint32_t action_cancel_any_goal(void const* input, uint64_t input_length, void* output, uint64_t capacity, uint64_t& length)
        {
            return request<uwvm_ros2_action_cancel_any_goal>(input, input_length, output, capacity, length);
        }

        /** @brief Perform action receive feedback once through its independently granted matching alias.
         * @details One correlated observation borrows complete selected feedback
         * storage without a thread, decoder, auto-resize or repeated idle/size receive.
         * @param input Eight-byte little-endian nonzero goal ID storage.
         * @param input_length Exactly eight request bytes.
         * @param output Writable complete canonical feedback-envelope storage.
         * @param capacity Exact available response bytes.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported feedback status including idle 11.
         * @see freestanding_capability::action_receive_result
         */
        uint32_t action_receive_feedback(void const* input, uint64_t input_length, void* output, uint64_t capacity, uint64_t& length)
        {
            return request<uwvm_ros2_action_receive_feedback>(input, input_length, output, capacity, length);
        }

        /** @brief Perform action receive result once through its independently granted matching alias.
         * @details One correlated receive returns complete marked terminal bytes;
         * this raw wrapper neither decodes kind/value nor retires a local goal table.
         * @param input Eight-byte little-endian nonzero goal ID storage.
         * @param input_length Exactly eight request bytes.
         * @param output Writable complete canonical terminal-result storage.
         * @param capacity Exact available response bytes.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported result-observation status without replay.
         * @see freestanding_capability::action_receive_feedback
         */
        uint32_t action_receive_result(void const* input, uint64_t input_length, void* output, uint64_t capacity, uint64_t& length)
        {
            return request<uwvm_ros2_action_receive_result>(input, input_length, output, capacity, length);
        }

        /** @brief Perform action advertise once through its independently granted matching alias.
         * @details Empty input activates the explicit server role; incoming ID/goal
         * envelopes are later obtained by caller-driven polling, without native callbacks.
         * @param input Empty canonical activation storage, permitted null.
         * @param input_length Zero for the advertisement request.
         * @param output Borrowed raw reply storage.
         * @param capacity Exact writable reply extent in bytes.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported advertisement result.
         * @see freestanding_capability::action_respond
         */
        uint32_t action_advertise(void const* input, uint64_t input_length, void* output, uint64_t capacity, uint64_t& length)
        {
            return request<uwvm_ros2_action_advertise>(input, input_length, output, capacity, length);
        }

        /** @brief Perform action respond once through its independently granted matching alias.
         * @details Feedback and terminal server replies both include canonical goal
         * ID and kind marker. Host advertisement/type correlation remains independent.
         * @param input Complete selected marked server-response storage.
         * @param input_length Exact canonical envelope bytes.
         * @param output Borrowed raw reply storage.
         * @param capacity Exact available reply bytes.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported response error without marker conversion or replay.
         * @see freestanding_capability::action_advertise
         */
        uint32_t action_respond(void const* input, uint64_t input_length, void* output, uint64_t capacity, uint64_t& length)
        {
            return request<uwvm_ros2_action_respond>(input, input_length, output, capacity, length);
        }

        /** @brief Perform tf lookup once through its independently granted matching alias.
         * @details Frame pairing and lookup authority belong to the selected alias.
         * This wrapper reads no other clock and does not decode its returned Transform.
         * @param input Eight-byte little-endian unsigned nanosecond lookup time.
         * @param input_length Exactly eight timestamp bytes.
         * @param output Writable complete canonical Transform-response storage.
         * @param capacity Exact available response bytes.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported lookup result without retry.
         * @see freestanding_capability::tf_broadcast
         */
        uint32_t tf_lookup(void const* input, uint64_t input_length, void* output, uint64_t capacity, uint64_t& length)
        {
            return request<uwvm_ros2_tf_lookup>(input, input_length, output, capacity, length);
        }

        /** @brief Perform tf broadcast once through its independently granted matching alias.
         * @details The host checks complete canonical fields, frames, quotas and
         * admitted authority; native Transform padding is never serialized here.
         * @param input Live readable complete canonical Transform storage.
         * @param input_length Exact canonical Transform bytes.
         * @param output Borrowed raw reply storage.
         * @param capacity Exact writable reply bytes.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported broadcast result without uncertain-effect replay.
         * @see freestanding_capability::tf_lookup
         */
        uint32_t tf_broadcast(void const* input, uint64_t input_length, void* output, uint64_t capacity, uint64_t& length)
        {
            return request<uwvm_ros2_tf_broadcast>(input, input_length, output, capacity, length);
        }

        /** @brief Perform parameter get once through its independently granted matching alias.
         * @details One empty request reads only the alias-selected node/name/type;
         * the returned value bytes require their selected canonical parameter codec.
         * @param input Empty canonical read-query storage, permitted null.
         * @param input_length Zero for parameter get.
         * @param output Writable complete selected-value response storage.
         * @param capacity Exact available response bytes.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported get result without local decoding or another query.
         * @see freestanding_capability::parameter_set
         */
        uint32_t parameter_get(void const* input, uint64_t input_length, void* output, uint64_t capacity, uint64_t& length)
        {
            return request<uwvm_ros2_parameter_get>(input, input_length, output, capacity, length);
        }

        /** @brief Perform parameter set once through its independently granted matching alias.
         * @details One complete selected value uses the alias's native type, name
         * and mutation scope. Failure never causes an automatic repeated mutation.
         * @param input Complete selected canonical parameter-value storage.
         * @param input_length Exact canonical value bytes.
         * @param output Borrowed raw reply storage.
         * @param capacity Exact writable reply bytes.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported set error without inferred event delivery.
         * @see freestanding_capability::parameter_get
         */
        uint32_t parameter_set(void const* input, uint64_t input_length, void* output, uint64_t capacity, uint64_t& length)
        {
            return request<uwvm_ros2_parameter_set>(input, input_length, output, capacity, length);
        }

        /** @brief Perform parameter list once through its independently granted matching alias.
         * @details The alias fixes list scope. Returned names never supply a missing
         * parameter read/write/declaration grant or trigger another operation.
         * @param input Empty canonical list-query storage, permitted null.
         * @param input_length Zero for the query.
         * @param output Writable complete canonical list-response storage.
         * @param capacity Exact available response bytes.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported list result without local text parsing.
         * @see freestanding_capability::parameter_describe
         */
        uint32_t parameter_list(void const* input, uint64_t input_length, void* output, uint64_t capacity, uint64_t& length)
        {
            return request<uwvm_ros2_parameter_list>(input, input_length, output, capacity, length);
        }

        /** @brief Perform parameter describe once through its independently granted matching alias.
         * @details One empty metadata query uses the alias-selected parameter;
         * its description adds no mutation or parameter-event authority.
         * @param input Empty canonical description query, permitted null.
         * @param input_length Zero for the query.
         * @param output Writable complete canonical description-response storage.
         * @param capacity Exact available response bytes.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported description result without parsing or retry.
         * @see freestanding_capability::parameter_get
         */
        uint32_t parameter_describe(void const* input, uint64_t input_length, void* output, uint64_t capacity, uint64_t& length)
        {
            return request<uwvm_ros2_parameter_describe>(input, input_length, output, capacity, length);
        }

        /** @brief Perform parameter declare once through its independently granted matching alias.
         * @details One selected initial value uses the independently granted native
         * name/type scope; errors never trigger an implicit set or repeated declaration.
         * @param input Complete selected canonical initial-value storage.
         * @param input_length Exact canonical value bytes.
         * @param output Borrowed raw reply storage.
         * @param capacity Exact writable reply bytes.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported declaration result.
         * @see freestanding_capability::parameter_undeclare
         */
        uint32_t parameter_declare(void const* input, uint64_t input_length, void* output, uint64_t capacity, uint64_t& length)
        {
            return request<uwvm_ros2_parameter_declare>(input, input_length, output, capacity, length);
        }

        /** @brief Perform parameter undeclare once through its independently granted matching alias.
         * @details One empty mutation applies to the alias-selected name. No implicit
         * recreation, event subscription or undeclaration replay follows a failure.
         * @param input Empty canonical undeclaration storage, permitted null.
         * @param input_length Zero for undeclaration.
         * @param output Borrowed raw reply storage.
         * @param capacity Exact writable reply bytes.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported undeclaration result.
         * @see freestanding_capability::parameter_declare
         */
        uint32_t parameter_undeclare(void const* input, uint64_t input_length, void* output, uint64_t capacity, uint64_t& length)
        {
            return request<uwvm_ros2_parameter_undeclare>(input, input_length, output, capacity, length);
        }

        /** @brief Perform graph inspect topic once through its independently granted matching alias.
         * @details The exact alias selects the graph topic resource; returned
         * metadata neither opens a topic owner nor supplies discovery-derived rights.
         * @param input Empty canonical graph query, permitted null.
         * @param input_length Zero for the query.
         * @param output Writable complete canonical metadata-response storage.
         * @param capacity Exact available response bytes.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported topic-inspection result without local parsing.
         * @see freestanding_capability::graph_list_topics
         */
        uint32_t graph_inspect_topic(void const* input, uint64_t input_length, void* output, uint64_t capacity, uint64_t& length)
        {
            return request<uwvm_ros2_graph_inspect_topic>(input, input_length, output, capacity, length);
        }

        /** @brief Perform graph inspect node once through its independently granted matching alias.
         * @details One selected metadata observation creates no Node/session owner
         * and grants no independent time/log/topic operations for the named resource.
         * @param input Empty canonical graph query, permitted null.
         * @param input_length Zero for the query.
         * @param output Writable complete canonical metadata-response storage.
         * @param capacity Exact available response bytes.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported node-inspection result without retries.
         * @see freestanding_capability::graph_list_nodes
         */
        uint32_t graph_inspect_node(void const* input, uint64_t input_length, void* output, uint64_t capacity, uint64_t& length)
        {
            return request<uwvm_ros2_graph_inspect_node>(input, input_length, output, capacity, length);
        }

        /** @brief Perform graph inspect service once through its independently granted matching alias.
         * @details Alias-selected metadata supplies no business service request,
         * readiness or advertisement grant or native type pairing inferred from text.
         * @param input Empty canonical graph query, permitted null.
         * @param input_length Zero for the query.
         * @param output Writable complete canonical metadata-response storage.
         * @param capacity Exact available response bytes.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported service-inspection result without retries.
         * @see freestanding_capability::graph_list_services
         */
        uint32_t graph_inspect_service(void const* input, uint64_t input_length, void* output, uint64_t capacity, uint64_t& length)
        {
            return request<uwvm_ros2_graph_inspect_service>(input, input_length, output, capacity, length);
        }

        /** @brief Perform graph inspect action once through its independently granted matching alias.
         * @details One selected graph observation creates no Action goal, feedback,
         * result, response or cancellation role and implies no native outcome.
         * @param input Empty canonical graph query, permitted null.
         * @param input_length Zero for the query.
         * @param output Writable complete canonical metadata-response storage.
         * @param capacity Exact available response bytes.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported Action-inspection result without local parsing.
         * @see freestanding_capability::action_send_goal
         */
        uint32_t graph_inspect_action(void const* input, uint64_t input_length, void* output, uint64_t capacity, uint64_t& length)
        {
            return request<uwvm_ros2_graph_inspect_action>(input, input_length, output, capacity, length);
        }

        /** @brief Perform graph list topics once through its independently granted matching alias.
         * @details One graph observation supplies admitted metadata only; it
         * does not open publication/subscription roles from discovered names.
         * @param input Empty canonical graph query, permitted null.
         * @param input_length Zero for the query.
         * @param output Writable complete canonical topic-list response storage.
         * @param capacity Exact available response bytes.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported graph result without implicit polling or retry.
         * @see freestanding_capability::graph_inspect_topic
         */
        uint32_t graph_list_topics(void const* input, uint64_t input_length, void* output, uint64_t capacity, uint64_t& length)
        {
            return request<uwvm_ros2_graph_list_topics>(input, input_length, output, capacity, length);
        }

        /** @brief Perform graph list nodes once through its independently granted matching alias.
         * @details One alias-scoped metadata query creates no Node owner, native
         * session or independently granted operation on a returned node name.
         * @param input Empty canonical graph query, permitted null.
         * @param input_length Zero for the query.
         * @param output Writable complete canonical node-list response storage.
         * @param capacity Exact available response bytes.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported graph result without local text parsing.
         * @see freestanding_capability::graph_inspect_node
         */
        uint32_t graph_list_nodes(void const* input, uint64_t input_length, void* output, uint64_t capacity, uint64_t& length)
        {
            return request<uwvm_ros2_graph_list_nodes>(input, input_length, output, capacity, length);
        }

        /** @brief Perform graph list services once through its independently granted matching alias.
         * @details Metadata supplies no business request/advertisement grant and
         * is not an independently selected native service-readiness observation.
         * @param input Empty canonical graph query, permitted null.
         * @param input_length Zero for the query.
         * @param output Writable complete canonical service-list response storage.
         * @param capacity Exact available response bytes.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported graph-list result without retry.
         * @see freestanding_capability::graph_inspect_service
         */
        uint32_t graph_list_services(void const* input, uint64_t input_length, void* output, uint64_t capacity, uint64_t& length)
        {
            return request<uwvm_ros2_graph_list_services>(input, input_length, output, capacity, length);
        }

        /** @brief Perform lifecycle get state once through its independently granted matching alias.
         * @details One empty query observes the alias-selected node without opening
         * a transition role or creating a local/native lifecycle state machine.
         * @param input Empty canonical lifecycle-query storage, permitted null.
         * @param input_length Zero for the query.
         * @param output Writable complete canonical lifecycle-state storage.
         * @param capacity Exact available response bytes.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported get-state result without response decoding.
         * @see freestanding_capability::lifecycle_change_state
         */
        uint32_t lifecycle_get_state(void const* input, uint64_t input_length, void* output, uint64_t capacity, uint64_t& length)
        {
            return request<uwvm_ros2_lifecycle_get_state>(input, input_length, output, capacity, length);
        }

        /** @brief Perform lifecycle change state once through its independently granted matching alias.
         * @details Transition choice belongs to explicit host alias policy. The
         * canonical request is empty and an uncertain admitted change is not replayed.
         * @param input Empty request storage with no guest transition byte, permitted null.
         * @param input_length Zero for the canonical change-state request.
         * @param output Writable canonical Boolean-acceptance response storage.
         * @param capacity Exact available response bytes.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported change-state error without acceptance decoding.
         * @see freestanding_capability::lifecycle_get_state
         */
        uint32_t lifecycle_change_state(void const* input, uint64_t input_length, void* output, uint64_t capacity, uint64_t& length)
        {
            return request<uwvm_ros2_lifecycle_change_state>(input, input_length, output, capacity, length);
        }

        /** @brief Perform time read ros once through its independently granted matching alias.
         * @details One explicit ROS-clock observation supplies no implicit pacing,
         * sleep, monotonicity guarantee or fallback to another clock domain.
         * @param input Empty canonical time-read storage, permitted null.
         * @param input_length Zero for the query.
         * @param output Writable storage for unsigned 64-bit nanoseconds.
         * @param capacity Exact available response bytes.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported ROS-time result without decoding or retry.
         * @see freestanding_capability::time_read_steady
         */
        uint32_t time_read_ros(void const* input, uint64_t input_length, void* output, uint64_t capacity, uint64_t& length)
        {
            return request<uwvm_ros2_time_read_ros>(input, input_length, output, capacity, length);
        }

        /** @brief Perform time read system once through its independently granted matching alias.
         * @details One explicit system-clock observation creates no scheduler,
         * hidden sleep or guarantee of steady-clock monotonicity.
         * @param input Empty canonical time-read storage, permitted null.
         * @param input_length Zero for the query.
         * @param output Writable storage for unsigned 64-bit nanoseconds.
         * @param capacity Exact available response bytes.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported system-time result without local decoding.
         * @see freestanding_capability::time_read_steady
         */
        uint32_t time_read_system(void const* input, uint64_t input_length, void* output, uint64_t capacity, uint64_t& length)
        {
            return request<uwvm_ros2_time_read_system>(input, input_length, output, capacity, length);
        }

        /** @brief Perform time read steady once through its independently granted matching alias.
         * @details One explicit observation stays in the host steady-time domain
         * without scheduling callbacks or converting to ROS/system time.
         * @param input Empty canonical time-read storage, permitted null.
         * @param input_length Zero for the query.
         * @param output Writable storage for unsigned 64-bit nanoseconds.
         * @param capacity Exact available response bytes.
         * @param length Successful/written-required byte count, otherwise unchanged.
         * @return Exact imported steady-time result without local decoding.
         * @see freestanding_capability::time_read_ros
         */
        uint32_t time_read_steady(void const* input, uint64_t input_length, void* output, uint64_t capacity, uint64_t& length)
        {
            return request<uwvm_ros2_time_read_steady>(input, input_length, output, capacity, length);
        }

        /** @brief Activate a separately granted ROS2 parameter-event queue; scalar grants do not authorize it.
         * @details Uses one explicit event role with the alias-selected type/scope;
         * no scalar read/write grant or callback thread is inferred.
         * @return Exact imported activation result.
         * @see freestanding_capability::poll
         */
        uint32_t subscribe_parameter_events()
        {
            return uwvm_ros2_parameter_subscribe_events(handle_);
        }

        /** @brief Retire local ownership before one close attempt, including failure107/110.
         * @details Empty returns 9. Clear live local handle bits before dispatch;
         * transport failure does not authorize replay of the retired handle.
         * @return BAD_HANDLE when empty, otherwise exact imported close status.
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
            return uwvm_ros2_capability_close(old);
        }

        /** @brief Request revocation once and retire local ownership, without cleanup replay.
         * @details Explicit destructive policy revocation can affect sibling aliases.
         * It is never a destructor/timeout fallback; local handle bits clear first.
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
            return uwvm_ros2_capability_revoke(old);
        }

        /** @brief Borrow the opaque instance-owned handle; it is not a pointer and must not be transferred.
         * @details Transfers no ownership, operation grant or native liveness claim.
         * @return Current handle bits, or zero after move/close/revoke.
         * @see freestanding_capability::close
         */
        uwvm_ros_handle handle() const noexcept
        {
            return handle_;
        }
    };
}  // namespace uwvm_ros2
#endif  // selected portable/modern raw owner
