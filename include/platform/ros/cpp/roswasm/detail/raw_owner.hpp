/** @file Allocation-free stationary old-standard raw owner and movable modern owner. */
#pragma once
#include <platform/ros/cpp/roswasm/cpp_profile.hpp>
#include <platform/ros/c/roswasm/roswasmc.h>

namespace roswasmcpp
{
    /** @brief Allocation-free owner of one raw ABI capability.
     * @details Stores its own stable C context. C++98/03 owners are stationary and
     * noncopyable; C++11 and newer support explicit moves. All access to one owner
     * is caller-serialized. Operations execute synchronously with no worker, clock
     * read, automatic retry or implicit grant. The caller supplies the exact
     * canonical bytes required by the granted endpoint; these are not native C++
     * object layouts or arbitrary ROS CDR bytes.
     * Raw request sizes/capacities count bytes. Values exceeding target size_t give
     * UWVM_ROS_TOO_LARGE before importing. Input/output ranges are borrowed only for
     * the call and must obey the underlying C ABI's disjoint-storage requirements.
     * A valid returned length replaces the caller's length even on an operation
     * error; when the ABI supplies no length, its previous value remains. Check the
     * error before interpreting output, and never replay an ambiguous external effect.
     * @tparam Selector Provides get() returning an immutable, nonthrowing backend
     * dispatch table that outlives this owner and its moved-to successors.
     * @see roswasmc_request
     */
    template <class Selector>
    class RawOwner
    {
        roswasmc_context context_;
        roswasmc_capability cap_;
        RawOwner(RawOwner const&);
        RawOwner& operator= (RawOwner const&);

        uint32_t request(roswasmc_operation op, void const* input, uint64_t size, void* output, uint64_t capacity, uint64_t& length)
        {
            if(size > static_cast<size_t>(-1) || capacity > static_cast<size_t>(-1))
            {
                return UWVM_ROS_TOO_LARGE;
            }
            roswasmc_result r = roswasmc_request(&cap_, op, input, static_cast<size_t>(size), output, static_cast<size_t>(capacity));
            if(r.has_length)
            {
                length = r.length;
            }
            return r.error;
        }

    public:
        /** @brief Construct an inert raw capability owner.
         * @details Borrows Selector::get() and initializes local handle zero. Does
         * not probe ABI version, allocate, open an alias or acquire any permission.
         * @see RawOwner::open
         */
        RawOwner() : context_(), cap_()
        {
            context_.backend = Selector::get();
            roswasmc_capability_init(&cap_, &context_);
        }
#if !ROSWASM_CPP_LEGACY
        /** @brief Transfer the raw handle into a new stable owner.
         * @details Available in C++11 and newer. Rebinds the internal context pointer
         * and clears the source handle without a Host import or authority change.
         * @param[in,out] other Source owner, left inert and reusable after the move.
         * @see RawOwner::handle
         */
        RawOwner(RawOwner&& other) noexcept : context_(other.context_), cap_(other.cap_)
        {
            cap_.context = &context_;
            other.cap_.handle = 0;
        }

        /** @brief Retire this local handle, then take another owner's handle.
         * @details Attempts one close of an existing destination handle and discards
         * its status before transfer. Self-assignment does nothing. Backend callbacks
         * must honor their nonthrowing C ABI contract. Use explicit close() first
         * when its independent cleanup result must be observed.
         * @param[in,out] other Source owner, left with handle zero after transfer.
         * @return This owner by reference; no new allocation or grant occurs.
         * @see RawOwner::close
         */
        RawOwner& operator= (RawOwner&& other) noexcept
        {
            if(this != &other)
            {
                if(cap_.handle)
                {
                    roswasmc_close(&cap_);
                }
                context_ = other.context_;
                cap_ = other.cap_;
                cap_.context = &context_;
                other.cap_.handle = 0;
            }
            return *this;
        }
#endif
        /** @brief Attempt one best-effort close of a remaining handle.
         * @details Discards the cleanup result and performs no retry. Destruction
         * must not race an operation or occur during a borrow of this owner. An
         * ambiguous transport failure does not prove native cleanup completed.
         * @see RawOwner::close
         */
        ~RawOwner()
        {
            if(cap_.handle)
            {
                roswasmc_close(&cap_);
            }
        }

        /** @brief Open exactly one selected alias through this backend.
         * @details Alias bytes are borrowed for this synchronous call. Host policy
         * supplies endpoint/type/operation/quota authority; an include or Selector
         * never supplies that authority. Existing local ownership is not overwritten.
         * @param[in] alias Live readable alias bytes, without an implied terminator.
         * @param[in] length Alias byte count, fitting target size_t and the C ABI's
         * alias limits; the Host separately validates the selected binding.
         * @return Actual open status, or UWVM_ROS_TOO_LARGE before import when length
         * cannot fit target size_t. Failure does not trigger fallback or retry.
         * @see roswasmc_open
         */
        uint32_t open(char const* alias, uint64_t length)
        {
            if(length > static_cast<size_t>(-1))
            {
                return UWVM_ROS_TOO_LARGE;
            }
            return roswasmc_open(&cap_, alias, static_cast<size_t>(length));
        }

        /** @brief Publish one complete canonical payload through a granted topic alias.
         * @details Requires topic.publish authority for this exact type/topic. Does
         * not encode native objects, open an alias or retry a failed publication.
         * @param[in] bytes Live canonical payload, borrowed only for the import.
         * @param[in] length Payload bytes, fitting target size_t and the Host quota.
         * @return Actual publication code, or UWVM_ROS_TOO_LARGE before import for
         * an unrepresentable length. Nonzero does not guarantee no external effect.
         * @see roswasmc_publish
         */
        uint32_t publish(void const* bytes, uint64_t length)
        {
            if(length > static_cast<size_t>(-1))
            {
                return UWVM_ROS_TOO_LARGE;
            }
            return roswasmc_publish(&cap_, bytes, static_cast<size_t>(length));
        }

        /** @brief Activate the already opened topic subscription role.
         * @details Requires exact topic.subscribe authority. Does not poll, start a
         * worker or acquire a clock; the caller subsequently drives poll().
         * @return Actual activation code; errors cause no automatic replay.
         * @see roswasmc_subscribe
         */
        uint32_t subscribe()
        {
            return roswasmc_subscribe(&cap_);
        }

        /** @brief Activate this service-advertise role.
         * @details Requires the exact service advertise grant. The independently
         * granted response role and request correlation remain caller responsibilities.
         * No handler is invoked or thread started by this call.
         * @return Actual service activation code, including unsupported backend roles.
         * @see roswasmc_service_advertise
         */
        uint32_t advertise_service()
        {
            return roswasmc_service_advertise(&cap_);
        }

        /** @brief Activate the granted parameter-event subscription.
         * @details Host policy separately fixes node/name/type visibility. This call
         * neither grants parameter mutation nor pumps the event stream.
         * @return Actual activation code; the caller polls and handles idle explicitly.
         * @see roswasmc_parameter_subscribe_events
         */
        uint32_t subscribe_parameter_events()
        {
            return roswasmc_parameter_subscribe_events(&cap_);
        }

        /** @brief Poll once into caller-owned byte storage.
         * @details Requires a previously activated, independently granted input role.
         * Returns idle without blocking or a retry loop. A valid ABI length replaces
         * length even on an error; no valid length leaves its sentinel untouched.
         * @param[out] output Writable capacity-byte range, borrowed synchronously.
         * @param[in] capacity Byte capacity fitting target size_t and Host limits.
         * @param[in,out] length Receives a valid returned/required byte length when
         * the ABI provides one; inspect the status before reading payload storage.
         * @return Actual poll status, including UWVM_ROS_AGAIN on idle, or
         * UWVM_ROS_TOO_LARGE before import for unrepresentable capacity.
         * @see roswasmc_poll
         */
        uint32_t poll(void* output, uint64_t capacity, uint64_t& length)
        {
            if(capacity > static_cast<size_t>(-1))
            {
                return UWVM_ROS_TOO_LARGE;
            }
            roswasmc_result r = roswasmc_poll(&cap_, output, static_cast<size_t>(capacity));
            if(r.has_length)
            {
                length = r.length;
            }
            return r.error;
        }

#define ROSWASM_CPP_RAW_REQUEST(name, operation)                                                                                                               \
    uint32_t name(void const* input, uint64_t size, void* output, uint64_t capacity, uint64_t& length)                                                         \
    {                                                                                                                                                          \
        return request(operation, input, size, output, capacity, length);                                                                                      \
    }
        /** @brief Issue one raw canonical service request.
         * @details Requires this alias's service.call grant and the exact selected
         * request/response codecs. Executes once synchronously; an error can follow
         * native work and is never automatically replayed. Buffers are borrowed only
         * for this call under RawOwner's byte-range/result-length contract.
         * @param[in] input Complete canonical request bytes, disjoint from output.
         * @param[in] size Request byte count fitting target size_t and Host quota.
         * @param[out] output Writable capacity-byte response storage.
         * @param[in] capacity Response capacity in bytes, fitting target size_t.
         * @param[in,out] length Replaced only when the ABI supplies a valid length;
         * the value may describe a required extent on a failed call.
         * @return Actual service status, or UWVM_ROS_TOO_LARGE on local size overflow.
         * @see roswasmc_service_call
         */
        ROSWASM_CPP_RAW_REQUEST(service_call, ROSWASMC_SERVICE_CALL)
        /** @brief Send one raw response for a correlated service request.
         * @details Requires a separate service.respond alias. The input envelope
         * carries the nonzero ticket obtained from the matching advertise/poll role
         * and its complete canonical response. Host policy checks ownership and the
         * live deadline. A failed acknowledgement may follow an admitted response;
         * do not replay it automatically. Buffers follow RawOwner's synchronous contract.
         * @param[in] input Exact ticket-plus-response canonical envelope bytes.
         * @param[in] size Envelope byte count, fitting target size_t and Host quota.
         * @param[out] output Optional writable capacity-byte acknowledgement storage.
         * @param[in] capacity Acknowledgement capacity in bytes, normally zero.
         * @param[in,out] length Updated only for a valid ABI length; a successful
         * generated response contract expects an empty acknowledgement.
         * @return Actual response status, or UWVM_ROS_TOO_LARGE on local size overflow.
         * @see roswasmc_service_respond
         */
        ROSWASM_CPP_RAW_REQUEST(service_respond, ROSWASMC_SERVICE_RESPOND)
        /** @brief Send one complete raw goal through an explicitly granted send role.
         * @details Executes once without tracking returned goals locally. The caller
         * validates the exact eight-byte nonzero goal ID reply and retains provenance;
         * errors may follow native admission and must not trigger an implicit resend.
         * @param[in] input Complete canonical Goal payload for the granted Action type.
         * @param[in] size Goal payload bytes, fitting target size_t and Host quota.
         * @param[out] output Writable goal-ID reply storage, normally at least eight bytes.
         * @param[in] capacity Reply capacity in bytes, fitting target size_t.
         * @param[in,out] length Updated only for a valid ABI length; verify it before decoding.
         * @return Actual send code or local size-overflow failure; no rights are acquired.
         * @see roswasmc_action_send_goal
         */
        ROSWASM_CPP_RAW_REQUEST(action_send_goal, ROSWASMC_ACTION_SEND_GOAL)
        /** @brief Request cancellation of one goal under the granted own-goal role.
         * @details Host policy checks provenance, resource and deadline. A canonical
         * acceptance Bool acknowledges a cancellation request, not terminal completion,
         * physical stop or permission to forget the goal. No local table is modified.
         * @param[in] input Canonical eight-byte nonzero goal selector.
         * @param[in] size Selector byte count, exactly eight under the v1 contract.
         * @param[out] output Writable canonical Bool acknowledgement storage.
         * @param[in] capacity Reply capacity in bytes, fitting target size_t.
         * @param[in,out] length Receives a valid ABI length when supplied, including on error.
         * @return Actual cancellation-request code; caller separately decodes acceptance.
         * @see roswasmc_action_cancel_own_goal
         */
        ROSWASM_CPP_RAW_REQUEST(action_cancel_own_goal, ROSWASMC_ACTION_CANCEL_OWN_GOAL)
        /** @brief Use an independently granted stronger cancel-any Action role.
         * @details This does not inherit authority from a send/own-goal handle. A
         * nonzero selector targets one known goal within Host policy; zero is the
         * deliberate all-goals request and can affect other owners in that scope.
         * An acknowledgement does not retire tracked goals or undo native effects.
         * @param[in] input Canonical eight-byte goal selector; zero explicitly means all.
         * @param[in] size Selector bytes, exactly eight under the v1 contract.
         * @param[out] output Writable canonical Bool acceptance storage.
         * @param[in] capacity Reply capacity in bytes, fitting target size_t.
         * @param[in,out] length Updated only when the ABI reports a valid length.
         * @return Actual request code; acceptance and terminal results remain separate.
         * @see roswasmc_action_cancel_any_goal
         */
        ROSWASM_CPP_RAW_REQUEST(action_cancel_any_goal, ROSWASMC_ACTION_CANCEL_ANY_GOAL)
        /** @brief Receive one raw correlated feedback frame.
         * @details Requires the independent feedback role. The caller validates the
         * returned goal ID and complete feedback codec before use; this raw owner
         * performs no local ownership bookkeeping. Idle is not successful feedback.
         * @param[in] input Canonical eight-byte nonzero goal selector.
         * @param[in] size Selector bytes, exactly eight under the v1 contract.
         * @param[out] output Writable correlated feedback-frame storage.
         * @param[in] capacity Frame capacity in bytes, fitting target size_t and quota.
         * @param[in,out] length Receives only a valid returned/required ABI byte count.
         * @return Actual receive code, including UWVM_ROS_AGAIN when no feedback is ready.
         * @see roswasmc_action_receive_feedback
         */
        ROSWASM_CPP_RAW_REQUEST(action_receive_feedback, ROSWASMC_ACTION_RECEIVE_FEEDBACK)
        /** @brief Receive one raw correlated terminal result frame.
         * @details Requires the separate result role. Validate ID, terminal marker
         * and full Result bytes before retiring caller-owned tracking. This raw API
         * does not consume a local goal table; cancellation acknowledgement alone
         * never establishes a terminal result. No blocking pump or retry is created.
         * @param[in] input Canonical eight-byte nonzero goal selector.
         * @param[in] size Selector bytes, exactly eight under the v1 contract.
         * @param[out] output Writable complete correlated result-frame storage.
         * @param[in] capacity Result capacity in bytes, fitting target size_t and quota.
         * @param[in,out] length Updated only for a valid ABI byte-length observation.
         * @return Actual result-receive status; idle/error must be handled explicitly.
         * @see roswasmc_action_receive_result
         */
        ROSWASM_CPP_RAW_REQUEST(action_receive_result, ROSWASMC_ACTION_RECEIVE_RESULT)
        /** @brief Activate the independently granted Action advertise role.
         * @details Does not acquire the response role, invoke handlers or spawn a
         * worker. The caller subsequently polls canonical incoming-goal frames and
         * responds through a distinct owner. Requires actual backend Action support.
         * @param[in] input Empty under the v1 advertise contract; null is permitted.
         * @param[in] size Zero for the v1 activation request.
         * @param[out] output Optional caller-owned acknowledgement storage.
         * @param[in] capacity Acknowledgement capacity in bytes, normally zero.
         * @param[in,out] length Updated only for a valid ABI length; check empty success framing.
         * @return Actual activation code; selecting this method grants no authority.
         * @see roswasmc_action_advertise
         */
        ROSWASM_CPP_RAW_REQUEST(action_advertise, ROSWASMC_ACTION_ADVERTISE)
        /** @brief Send one canonical feedback or terminal response for a server goal.
         * @details Requires the separate Action response grant and a live ticket
         * from the matching advertise role. Host policy enforces ownership, deadline
         * and one-shot terminal state. Feedback can precede a failed terminal send;
         * no ambiguous response is automatically replayed.
         * @param[in] input Nonzero ticket, feedback/result marker and complete component bytes.
         * @param[in] size Canonical envelope byte count, fitting target size_t and quota.
         * @param[out] output Optional writable acknowledgement storage.
         * @param[in] capacity Reply capacity in bytes, normally zero for the v1 acknowledgement.
         * @param[in,out] length Updated only when the ABI supplies a valid byte count.
         * @return Actual response code; successful raw calls still require framing checks.
         * @see roswasmc_action_respond
         */
        ROSWASM_CPP_RAW_REQUEST(action_respond, ROSWASMC_ACTION_RESPOND)
        /** @brief Lookup the transform for the Host-granted frame pair and time.
         * @details Requires tf.lookup authority. The alias fixes frame scope; the
         * caller cannot add a new frame grant through bytes. Zero timestamp selects
         * the latest transform. This raw method returns bytes without validating
         * complete Transform fields or applying units to caller storage.
         * @param[in] input Canonical uint64 little-endian query time in nanoseconds.
         * @param[in] size Exactly eight bytes for the v1 time selector.
         * @param[out] output Writable complete canonical Transform storage.
         * @param[in] capacity Reply capacity in bytes, fitting target size_t and quota.
         * @param[in,out] length Updated only for a valid returned/required ABI length.
         * @return Actual lookup code; decode the complete result only after success.
         * @see roswasmcpp::TF::lookup
         */
        ROSWASM_CPP_RAW_REQUEST(tf_lookup, ROSWASMC_TF_LOOKUP)
        /** @brief Broadcast one full canonical Transform through a granted frame binding.
         * @details Requires separate tf.broadcast authority. Host policy enforces
         * exact frames, finite translation bounds and quaternion constraints. This
         * raw wrapper does not construct a transform or normalize its quaternion.
         * Failure may follow native admission; there is no automatic replay.
         * @param[in] input Complete canonical Transform bytes, borrowed during the call.
         * @param[in] size Payload byte count, fitting target size_t and Host quota.
         * @param[out] output Optional writable acknowledgement storage.
         * @param[in] capacity Reply capacity in bytes, according to the selected binding.
         * @param[in,out] length Receives a byte count only when the ABI marks it valid.
         * @return Actual broadcast code; no frame or clock authority is created.
         * @see roswasmcpp::TF::broadcast
         */
        ROSWASM_CPP_RAW_REQUEST(tf_broadcast, ROSWASMC_TF_BROADCAST)
        /** @brief Read the exact parameter selected by the granted alias.
         * @details Requires parameter-read authority for the Host-fixed node/name/type.
         * No parameter name or native type is selected by Guest request bytes. The
         * caller decodes the returned scalar/array with its matching ParameterCodec.
         * @param[in] input Empty for the v1 read request; null is permitted.
         * @param[in] size Zero for the Host-selected parameter read.
         * @param[out] output Writable canonical parameter-value storage.
         * @param[in] capacity Value capacity in bytes, fitting target size_t and quota.
         * @param[in,out] length Updated only for a valid ABI length, including required extents.
         * @return Actual read status; no parameter is declared or modified by this operation.
         * @see roswasmcpp::Parameters::get
         */
        ROSWASM_CPP_RAW_REQUEST(parameter_get, ROSWASMC_PARAMETER_GET)
        /** @brief Set one Host-selected parameter using its exact canonical value type.
         * @details Requires independently granted mutation authority and an existing
         * backend operation. Host policy checks node/name/type/value constraints;
         * this call cannot select a different parameter. No uncertain mutation is replayed.
         * @param[in] input Complete scalar/array value encoded by the matching ParameterCodec.
         * @param[in] size Canonical value bytes, fitting target size_t and Host quota.
         * @param[out] output Writable backend acknowledgement/result storage when required.
         * @param[in] capacity Reply capacity in bytes under the selected contract.
         * @param[in,out] length Updated only when a valid ABI byte length is supplied.
         * @return Actual mutation status; inspect any defined acknowledgement separately.
         * @see roswasmcpp::Parameters::set
         */
        ROSWASM_CPP_RAW_REQUEST(parameter_set, ROSWASMC_PARAMETER_SET)
        /** @brief Delete the exact Host-selected parameter through a delete grant.
         * @details Backend/version support is explicit; this does not turn an
         * unsupported delete into undeclare. Parameter scope comes from the alias.
         * Mutation can have occurred before an error, so there is no implicit retry.
         * @param[in] input Empty under the v1 Host-selected delete contract.
         * @param[in] size Zero; no Guest-supplied parameter selector is accepted.
         * @param[out] output Optional writable operation acknowledgement storage.
         * @param[in] capacity Reply capacity in bytes, fitting target size_t.
         * @param[in,out] length Updated only for a valid ABI byte-length observation.
         * @return Actual delete/unsupported status; this is not a local value destructor.
         * @see roswasmcpp::Parameters::erase
         */
        ROSWASM_CPP_RAW_REQUEST(parameter_delete, ROSWASMC_PARAMETER_DELETE)
        /** @brief Query existence under an explicitly supported parameter-exists grant.
         * @details Host policy fixes the exact parameter. The typed foundation uses
         * this ROS1 role separately from get; unsupported backends return their
         * actual unsupported status rather than fabricating a false result.
         * @param[in] input Empty for the v1 existence query.
         * @param[in] size Zero; no arbitrary name or node is supplied by Guest bytes.
         * @param[out] output Writable canonical Bool result storage.
         * @param[in] capacity Reply capacity in bytes, normally at least one.
         * @param[in,out] length Updated only when the ABI provides a valid byte count.
         * @return Actual query status; only a successful decoded Bool indicates existence.
         * @see roswasmcpp::Parameters::exists
         */
        ROSWASM_CPP_RAW_REQUEST(parameter_exists, ROSWASMC_PARAMETER_EXISTS)
        /** @brief Read the policy-filtered parameter-list projection.
         * @details Requires a distinct list grant; it does not imply unfiltered
         * discovery or read/write access to each listed parameter. Host policy fixes
         * scope and quotas. The v1 response is a canonical String projection.
         * @param[in] input Empty for the Host-selected list scope.
         * @param[in] size Zero under the v1 list contract.
         * @param[out] output Writable complete canonical String response storage.
         * @param[in] capacity Response capacity in bytes, fitting target size_t and quota.
         * @param[in,out] length Updated only for a valid returned/required ABI length.
         * @return Actual metadata status; decode the String only after successful framing.
         * @see roswasmcpp::Parameters::metadata
         */
        ROSWASM_CPP_RAW_REQUEST(parameter_list, ROSWASMC_PARAMETER_LIST)
        /** @brief Search only the parameter scope explicitly granted by the Host.
         * @details ROS1 parent search requires its own permission; no parent traversal
         * is enabled by naming this method. The selected backend must implement the
         * role. Results are canonical String metadata, not new parameter capabilities.
         * @param[in] input Empty for the v1 Host-fixed search request.
         * @param[in] size Zero; the Guest does not add a native name selector.
         * @param[out] output Writable complete String projection storage.
         * @param[in] capacity Response byte capacity, fitting target size_t and quota.
         * @param[in,out] length Updated only for a valid ABI returned/required byte length.
         * @return Actual search status; unsupported/refused search is not an empty success.
         * @see roswasmcpp::Parameters::metadata
         */
        ROSWASM_CPP_RAW_REQUEST(parameter_search, ROSWASMC_PARAMETER_SEARCH)
        /** @brief Describe the Host-selected parameter through a metadata-only grant.
         * @details Exposes only the backend's policy-filtered String description.
         * Description does not grant value access, mutation or declaration rights.
         * Requires actual role/version support; no unsupported metadata is synthesized.
         * @param[in] input Empty under the v1 selected-parameter metadata contract.
         * @param[in] size Zero; scope remains in the trusted alias binding.
         * @param[out] output Writable complete canonical String response storage.
         * @param[in] capacity Response capacity in bytes, fitting target size_t and quota.
         * @param[in,out] length Receives only a valid ABI byte count when available.
         * @return Actual describe result; decode the metadata separately on success.
         * @see roswasmcpp::Parameters::metadata
         */
        ROSWASM_CPP_RAW_REQUEST(parameter_describe, ROSWASMC_PARAMETER_DESCRIBE)
        /** @brief Declare the exact parameter authorized by a declaration alias.
         * @details This is distinct from set and requires backend declaration support
         * plus an explicit Host grant. Node/name/type/value constraints remain trusted
         * policy. A failed acknowledgement never causes an automatic repeat declaration.
         * @param[in] input Complete canonical initial value with the granted parameter type.
         * @param[in] size Value byte count, fitting target size_t and Host quota.
         * @param[out] output Optional writable backend declaration-result storage.
         * @param[in] capacity Result capacity in bytes under the selected contract.
         * @param[in,out] length Updated only when the ABI supplies a valid byte length.
         * @return Actual declaration status, including unsupported/refused roles.
         * @see roswasmcpp::Parameters::set
         */
        ROSWASM_CPP_RAW_REQUEST(parameter_declare, ROSWASMC_PARAMETER_DECLARE)
        /** @brief Undeclare only the exact parameter selected by the Host grant.
         * @details Requires a separately supported undeclare role. It does not
         * emulate unsupported ROS1 behavior with deletion, choose a different name,
         * or undo changes already admitted to native state.
         * @param[in] input Empty for the v1 Host-selected undeclare operation.
         * @param[in] size Zero; no Guest-controlled parameter selector is sent.
         * @param[out] output Optional writable acknowledgement storage.
         * @param[in] capacity Reply capacity in bytes, fitting target size_t.
         * @param[in,out] length Updated only for a valid returned/required ABI byte count.
         * @return Actual undeclare code; ambiguous mutation failures are not replayed.
         * @see roswasmcpp::Parameters::erase
         */
        ROSWASM_CPP_RAW_REQUEST(parameter_undeclare, ROSWASMC_PARAMETER_UNDECLARE)
        /** @brief Inspect the one topic selected by a graph-inspection alias.
         * @details Requires the exact graph topic-inspection grant. The v1 Host
         * returns a filtered canonical String projection; it does not create a topic
         * publisher/subscriber or grant access to endpoints mentioned in that text.
         * @param[in] input Empty; the trusted alias fixes the native topic selector.
         * @param[in] size Zero under the v1 topic-inspection contract.
         * @param[out] output Writable complete canonical String storage.
         * @param[in] capacity Response byte capacity, fitting target size_t and quota.
         * @param[in,out] length Updated only for a valid ABI returned/required byte length.
         * @return Actual inspection status; no unfiltered graph discovery is implied.
         * @see roswasmcpp::Graph::inspect
         */
        ROSWASM_CPP_RAW_REQUEST(graph_inspect_topic, ROSWASMC_GRAPH_INSPECT_TOPIC)
        /** @brief Inspect the Host-selected native node through its graph-only grant.
         * @details Returns the backend's policy-filtered canonical String view of
         * that node. Does not select arbitrary nodes, open their services or confer
         * lifecycle, parameter or topic authority.
         * @param[in] input Empty for the v1 Host-fixed node inspection.
         * @param[in] size Zero; the Guest supplies no additional node selector.
         * @param[out] output Writable complete String projection storage.
         * @param[in] capacity Reply byte capacity, fitting target size_t and quota.
         * @param[in,out] length Replaced only for a valid ABI byte-count observation.
         * @return Actual node-inspection code; idle/refusal is not a fabricated node.
         * @see roswasmcpp::Graph::inspect
         */
        ROSWASM_CPP_RAW_REQUEST(graph_inspect_node, ROSWASMC_GRAPH_INSPECT_NODE)
        /** @brief Inspect the service bound to an explicit graph service grant.
         * @details Queries only policy-visible metadata. A listed service/type does
         * not become callable or advertisable by this owner; those roles require
         * their own aliases and actual native type support.
         * @param[in] input Empty for the v1 Host-selected service inspection.
         * @param[in] size Zero; service scope is not chosen by Guest payload bytes.
         * @param[out] output Writable canonical String metadata storage.
         * @param[in] capacity Response bytes available, fitting target size_t and quota.
         * @param[in,out] length Updated only for a valid returned/required ABI length.
         * @return Actual metadata result, including unsupported backend roles.
         * @see roswasmcpp::Graph::inspect
         */
        ROSWASM_CPP_RAW_REQUEST(graph_inspect_service, ROSWASMC_GRAPH_INSPECT_SERVICE)
        /** @brief Inspect the Action selected by a separately granted graph alias.
         * @details Requires actual backend Action introspection support. The String
         * projection is filtered metadata, not send/cancel/respond authority or a
         * source of transferable native handles.
         * @param[in] input Empty for the v1 Host-selected Action inspection.
         * @param[in] size Zero; no unreviewed Action selector is passed by the Guest.
         * @param[out] output Writable complete canonical String response storage.
         * @param[in] capacity Reply byte capacity, fitting target size_t and quota.
         * @param[in,out] length Receives only a valid returned/required ABI byte count.
         * @return Actual inspection code; unsupported is not an empty successful graph.
         * @see roswasmcpp::Graph::inspect
         */
        ROSWASM_CPP_RAW_REQUEST(graph_inspect_action, ROSWASMC_GRAPH_INSPECT_ACTION)
        /** @brief Read a policy-filtered topic-list projection.
         * @details The trusted list scope and quota are fixed by the alias. This
         * creates no native node/endpoint and grants no access to returned names.
         * Decode the canonical String before interpreting its backend projection.
         * @param[in] input Empty for the v1 scoped list operation.
         * @param[in] size Zero; no arbitrary namespace selector is accepted here.
         * @param[out] output Writable complete canonical String storage.
         * @param[in] capacity Result capacity in bytes, fitting target size_t and quota.
         * @param[in,out] length Updated only for a valid ABI returned/required length.
         * @return Actual list status; truncation/quota errors require explicit handling.
         * @see roswasmcpp::Graph::inspect
         */
        ROSWASM_CPP_RAW_REQUEST(graph_list_topics, ROSWASMC_GRAPH_LIST_TOPICS)
        /** @brief Read only the node-list metadata visible under this graph grant.
         * @details Naming a node in the result confers no control/parameter/service
         * permission. The Host selects scope; no implicit root-namespace discovery,
         * polling loop or native worker is introduced.
         * @param[in] input Empty for the v1 trusted node-list scope.
         * @param[in] size Zero; the Guest cannot add a native node selector.
         * @param[out] output Writable canonical String projection storage.
         * @param[in] capacity Reply bytes available, fitting target size_t and quota.
         * @param[in,out] length Replaced only when the ABI supplies a valid byte count.
         * @return Actual metadata code, not implicit success for a refused query.
         * @see roswasmcpp::Graph::inspect
         */
        ROSWASM_CPP_RAW_REQUEST(graph_list_nodes, ROSWASMC_GRAPH_LIST_NODES)
        /** @brief Read the service-list projection allowed by the selected graph alias.
         * @details Returns filtered canonical String metadata only. Service call,
         * advertisement, response and native type authority remain independently
         * granted; no listed endpoint is opened or cached by this raw operation.
         * @param[in] input Empty under the v1 scoped service-list contract.
         * @param[in] size Zero; list scope remains in trusted policy.
         * @param[out] output Writable complete canonical String response storage.
         * @param[in] capacity Reply byte capacity, fitting target size_t and quota.
         * @param[in,out] length Updated only for a valid returned/required ABI length.
         * @return Actual service-list code; the caller validates response framing.
         * @see roswasmcpp::Graph::inspect
         */
        ROSWASM_CPP_RAW_REQUEST(graph_list_services, ROSWASMC_GRAPH_LIST_SERVICES)
        /** @brief Read state for the exact Host-selected lifecycle target.
         * @details Requires lifecycle get-state authority. The v1 response contains
         * a state byte followed by a canonical String label. Inspection grants no
         * transition right and does not itself change native state.
         * @param[in] input Empty for the Host-bound lifecycle target.
         * @param[in] size Zero under the v1 get-state contract.
         * @param[out] output Writable state-plus-label canonical response storage.
         * @param[in] capacity Response byte capacity, fitting target size_t and quota.
         * @param[in,out] length Receives only a valid ABI returned/required byte count.
         * @return Actual get-state status; decode the full response only on success.
         * @see roswasmcpp::Lifecycle::get_state
         */
        ROSWASM_CPP_RAW_REQUEST(lifecycle_get_state, ROSWASMC_LIFECYCLE_GET_STATE)
        /** @brief Request the one lifecycle transition fixed by the Host grant.
         * @details Neither target nor transition ID is selected by Guest bytes.
         * Requires an independent transition grant and actual backend support. A
         * successful request returns a canonical acceptance Bool, which is distinct
         * from a guaranteed terminal state or a physical stop.
         * @param[in] input Empty for the v1 Host-selected transition request.
         * @param[in] size Zero; arbitrary transition selectors are not sent here.
         * @param[out] output Writable canonical Bool acknowledgement storage.
         * @param[in] capacity Reply capacity in bytes, normally at least one.
         * @param[in,out] length Updated only when the ABI provides a valid length.
         * @return Actual transition-request code; ambiguous effects are not replayed.
         * @see roswasmcpp::Lifecycle::change_state
         */
        ROSWASM_CPP_RAW_REQUEST(lifecycle_change_state, ROSWASMC_LIFECYCLE_CHANGE_STATE)
        /** @brief Read the independently granted ROS clock once.
         * @details Returns a canonical uint64 little-endian nanosecond value. The
         * Host selects the ROS/simulation clock domain; this call grants no WASI
         * clock, sleep, timer thread or native scheduling authority.
         * @param[in] input Empty for the v1 ROS time request.
         * @param[in] size Zero; no Guest-selected clock source is passed.
         * @param[out] output Writable eight-byte timestamp storage.
         * @param[in] capacity Reply capacity in bytes, at least eight for success.
         * @param[in,out] length Updated only for a valid ABI length; require exactly eight.
         * @return Actual clock-read status; zero nanoseconds can be a valid value.
         * @see roswasmcpp::Clock::now
         */
        ROSWASM_CPP_RAW_REQUEST(time_read_ros, ROSWASMC_TIME_READ_ROS)
        /** @brief Read a separately authorized backend wall clock once.
         * @details Clock domain and backend/version support remain explicit. The
         * canonical result counts nanoseconds in that domain; it is not permission
         * to read any other clock or reinterpret ROS time as wall time.
         * @param[in] input Empty for the v1 wall-clock request.
         * @param[in] size Zero; the trusted binding chooses the clock.
         * @param[out] output Writable eight-byte uint64 little-endian timestamp storage.
         * @param[in] capacity Reply bytes available, at least eight for success.
         * @param[in,out] length Updated only for a valid ABI byte count; verify eight bytes.
         * @return Actual wall-clock code, including unsupported/refused access.
         * @see roswasmcpp::Clock::now
         */
        ROSWASM_CPP_RAW_REQUEST(time_read_wall, ROSWASMC_TIME_READ_WALL)
        /** @brief Read the system-clock source explicitly selected by the Host alias.
         * @details Requires its own time-read grant. The v1 result is a uint64
         * nanosecond count in the selected source's domain; this method does not
         * obtain WASI clock rights or normalize timestamps into another epoch.
         * @param[in] input Empty for the v1 selected system-clock read.
         * @param[in] size Zero; no clock selector is accepted from Guest payload bytes.
         * @param[out] output Writable eight-byte canonical timestamp storage.
         * @param[in] capacity Reply capacity in bytes, at least eight for success.
         * @param[in,out] length Receives a byte count only when the ABI marks it valid.
         * @return Actual system-clock result; decode only a successful eight-byte reply.
         * @see roswasmcpp::Clock::now
         */
        ROSWASM_CPP_RAW_REQUEST(time_read_system, ROSWASMC_TIME_READ_SYSTEM)
        /** @brief Read the independently granted steady-clock source once.
         * @details Its uint64 nanosecond value belongs to the Host-selected steady
         * domain, not an arbitrary wall-clock epoch. No sleeping, timer creation,
         * callback dispatch or implicit clock grant occurs.
         * @param[in] input Empty for the v1 selected steady-clock request.
         * @param[in] size Zero; the native clock source is fixed by policy.
         * @param[out] output Writable eight-byte uint64 little-endian timestamp storage.
         * @param[in] capacity Response byte capacity, at least eight for success.
         * @param[in,out] length Updated only for a valid ABI byte count; require exactly eight.
         * @return Actual steady-clock status; caller-owned output is interpreted separately.
         * @see roswasmcpp::Clock::now
         */
        ROSWASM_CPP_RAW_REQUEST(time_read_steady, ROSWASMC_TIME_READ_STEADY)
#undef ROSWASM_CPP_RAW_REQUEST

        /** @brief Relinquish this local owner and attempt one Host close.
         * @details The C owner retires its handle even when cleanup reports an
         * ambiguous failure. This is resource cleanup, not native cancellation or
         * a physical stop. No retry or other alias grant is implied.
         * @return Actual cleanup code; call handle() to inspect local retirement.
         * @see roswasmc_close
         */
        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        /** @brief Relinquish this owner using its revoke operation.
         * @details Native authorization and backend support are checked separately.
         * Local handle retirement is not proof that all admitted native effects
         * stopped. Ambiguous failures are returned without retry.
         * @return Actual revoke status, including unsupported or invalid handles.
         * @see roswasmc_revoke
         */
        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }

        /** @brief Inspect the opaque locally owned handle.
         * @details Performs no Host health probe or import. Zero denotes no local
         * owner. Nonzero handles stay in their creating Guest instance and must not
         * be fabricated, serialized as credentials or transferred between principals.
         * @return Current opaque handle; zero for an initial, moved-from or retired owner.
         * @see RawOwner::open
         */
        uint64_t handle() const
        {
            return cap_.handle;
        }
    };
}  // namespace roswasmcpp
