package uwvm.ros;

import org.teavm.interop.Import;
import org.teavm.interop.Unmanaged;

/**
 * @brief Complete exact ROS 1 core capability ABI imports for Java/Kotlin.
 * @details i64 values preserve all bits in Java long, including unsigned bit 63.
 * Callers own all guest memory and handles. Imports are synchronous unless the
 * selected operation explicitly admits later events; no pointer is retained.
 */
public final class Raw
{
    /** @brief Prevent construction of this static exact ABI table. */
    private Raw()
    {
    }

    /**
     * @brief Return ABI version 1. This does not open a capability or authorize a resource.
     * @return Actual namespace version, not an errno.
     * @details No pointer ownership is transferred and failed effects are never replayed automatically.
     */
    @Import(module = "uwvm_ros1_v1", name = "abi_version") @Unmanaged public static native int abi_version();

    /**
     * @brief Open one explicitly granted alias in the caller Instance and selected backend. Write an
     * opaque eight-byte little-endian handle on success.
     * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
     * @param alias_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param alias_length Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param handle_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @return Original numeric ABI errno; output slots are inspected only when actually written.
     * @details No pointer ownership is transferred and failed effects are never replayed automatically.
     */
    @Import(module = "uwvm_ros1_v1", name = "capability_open")
    @Unmanaged
    public static native int capability_open(int memory, long alias_offset, long alias_length, long handle_out_offset);

    /**
     * @brief Retire this handle generation. The handle may already be retired if later Gateway
     * cleanup returns an error.
     * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
     * @return Original numeric ABI errno; output slots are inspected only when actually written.
     * @details No pointer ownership is transferred and failed effects are never replayed automatically.
     */
    @Import(module = "uwvm_ros1_v1", name = "capability_close") @Unmanaged public static native int capability_close(long handle);

    /**
     * @brief Revoke the alias for this Instance/backend, invalidating all its open sibling handles.
     * Reopening cannot restore the revoked grant.
     * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
     * @return Original numeric ABI errno; output slots are inspected only when actually written.
     * @details No pointer ownership is transferred and failed effects are never replayed automatically.
     */
    @Import(module = "uwvm_ros1_v1", name = "capability_revoke") @Unmanaged public static native int capability_revoke(long handle);

    /**
     * @brief Publish one canonical generated message through a separately granted publisher alias.
     * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
     * @param payload_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param payload_length Exact i64 scalar; caller-owned memory/resource contract applies.
     * @return Original numeric ABI errno; output slots are inspected only when actually written.
     * @details No pointer ownership is transferred and failed effects are never replayed automatically.
     */
    @Import(module = "uwvm_ros1_v1", name = "topic_publish")
    @Unmanaged
    public static native int topic_publish(long handle, int memory, long payload_offset, long payload_length);

    /**
     * @brief Activate a separately granted subscription queue. Receive messages through event_poll
     * on the guest execution thread.
     * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
     * @return Original numeric ABI errno; output slots are inspected only when actually written.
     * @details No pointer ownership is transferred and failed effects are never replayed automatically.
     */
    @Import(module = "uwvm_ros1_v1", name = "topic_subscribe") @Unmanaged public static native int topic_subscribe(long handle);

    /**
     * @brief Poll a topic, service-request, incoming-goal or ROS2 parameter-event queue. Error 11
     * means no event; no native callback enters Wasm.
     * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
     * @param output_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @return Original numeric ABI errno; output slots are inspected only when actually written.
     * @details No pointer ownership is transferred and failed effects are never replayed automatically.
     */
    @Import(module = "uwvm_ros1_v1", name = "event_poll")
    @Unmanaged
    public static native int event_poll(long handle, int memory, long output_offset, long capacity, long length_out_offset);

    /**
     * @brief Bind separately granted event.observe and source owners. Correlation is nonzero only
     * when an owned outgoing Action data kind is selected; metadata-only watches use zero and
     * activate/consume no native payload. No aliases or rights are created.
     * @param observer_handle Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param source_handle Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param correlation Exact i64 scalar; caller-owned memory/resource contract applies.
     * @return Original numeric ABI errno; output slots are inspected only when actually written.
     * @details No pointer ownership is transferred and failed effects are never replayed automatically.
     */
    @Import(module = "uwvm_ros1_v1", name = "event_watch")
    @Unmanaged
    public static native int event_watch(long observer_handle, long source_handle, long correlation);

    /**
     * @brief Read one complete versioned64-byte-header event. Error90 writes required size and
     * retains the event; error11 is idle. No automatic replay.
     * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
     * @param output_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @return Original numeric ABI errno; output slots are inspected only when actually written.
     * @details No pointer ownership is transferred and failed effects are never replayed automatically.
     */
    @Import(module = "uwvm_ros1_v1", name = "event_poll_v1")
    @Unmanaged
    public static native int event_poll_v1(long handle, int memory, long output_offset, long capacity, long length_out_offset);

    /**
     * @brief Write32 little-endian bytes: ready count,next record bytes,admission slots,admission
     * bytes. A readiness snapshot is not a reservation.
     * @param observer_handle Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
     * @param output_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @return Original numeric ABI errno; output slots are inspected only when actually written.
     * @details No pointer ownership is transferred and failed effects are never replayed automatically.
     */
    @Import(module = "uwvm_ros1_v1", name = "event_ready")
    @Unmanaged
    public static native int event_ready(long observer_handle, int memory, long output_offset);

    /**
     * @brief Admit one bounded asynchronous service request. A successful acknowledgement writes
     * requestID; completion requires explicit service-response and resource-error observation. Never
     * replay a timeout.
     * @param source_handle Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param observer_handle Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
     * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param request_id_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @return Original numeric ABI errno; output slots are inspected only when actually written.
     * @details No pointer ownership is transferred and failed effects are never replayed automatically.
     */
    @Import(module = "uwvm_ros1_v1", name = "service_submit")
    @Unmanaged
    public static native int
        service_submit(long source_handle, long observer_handle, int memory, long request_offset, long request_length, long request_id_out_offset);

    /**
     * @brief Call the explicitly selected service using its canonical request/response type and
     * configured deadline. Do not automatically replay a timed-out call.
     * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
     * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @return Original numeric ABI errno; output slots are inspected only when actually written.
     * @details No pointer ownership is transferred and failed effects are never replayed automatically.
     */
    @Import(module = "uwvm_ros1_v1", name = "service_call")
    @Unmanaged
    public static native int
        service_call(long handle, int memory, long request_offset, long request_length, long response_offset, long capacity, long length_out_offset);

    /**
     * @brief Activate the explicitly granted service server. Poll owned request IDs through
     * event_poll.
     * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
     * @return Original numeric ABI errno; output slots are inspected only when actually written.
     * @details No pointer ownership is transferred and failed effects are never replayed automatically.
     */
    @Import(module = "uwvm_ros1_v1", name = "service_advertise") @Unmanaged public static native int service_advertise(long handle);

    /**
     * @brief Respond to an owned live request using a separate response grant and u64 request-ID-
     * prefixed canonical response.
     * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
     * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @return Original numeric ABI errno; output slots are inspected only when actually written.
     * @details No pointer ownership is transferred and failed effects are never replayed automatically.
     */
    @Import(module = "uwvm_ros1_v1", name = "service_respond")
    @Unmanaged
    public static native int
        service_respond(long handle, int memory, long request_offset, long request_length, long response_offset, long capacity, long length_out_offset);

    /**
     * @brief Send the selected trusted Action goal codec and receive an opaque u64 Goal ID. Builtin
     * Fibonacci uses one canonical i32 order. Generated bounded Actions require their registered
     * goal codec; all bounds remain explicit.
     * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
     * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @return Original numeric ABI errno; output slots are inspected only when actually written.
     * @details No pointer ownership is transferred and failed effects are never replayed automatically.
     */
    @Import(module = "uwvm_ros1_v1", name = "action_send_goal")
    @Unmanaged
    public static native int
        action_send_goal(long handle, int memory, long request_offset, long request_length, long response_offset, long capacity, long length_out_offset);

    /**
     * @brief Request cancellation of one owned Goal using its u64 ID and a separately authorized
     * cancel capability.
     * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
     * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @return Original numeric ABI errno; output slots are inspected only when actually written.
     * @details No pointer ownership is transferred and failed effects are never replayed automatically.
     */
    @Import(module = "uwvm_ros1_v1", name = "action_cancel_own_goal")
    @Unmanaged
    public static native int
        action_cancel_own_goal(long handle, int memory, long request_offset, long request_length, long response_offset, long capacity, long length_out_offset);

    /**
     * @brief Use the separately granted any-cancel operation. Goal ID zero is valid only for this
     * independently authorized operation.
     * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
     * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @return Original numeric ABI errno; output slots are inspected only when actually written.
     * @details No pointer ownership is transferred and failed effects are never replayed automatically.
     */
    @Import(module = "uwvm_ros1_v1", name = "action_cancel_any_goal")
    @Unmanaged
    public static native int
        action_cancel_any_goal(long handle, int memory, long request_offset, long request_length, long response_offset, long capacity, long length_out_offset);

    /**
     * @brief Receive ID8 plus the selected trusted Action feedback codec for an owned Goal. Builtin
     * Fibonacci appends count32/int32 values; an empty queue returns 11.
     * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
     * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @return Original numeric ABI errno; output slots are inspected only when actually written.
     * @details No pointer ownership is transferred and failed effects are never replayed automatically.
     */
    @Import(module = "uwvm_ros1_v1", name = "action_receive_feedback")
    @Unmanaged
    public static native int
        action_receive_feedback(long handle, int memory, long request_offset, long request_length, long response_offset, long capacity, long length_out_offset);

    /**
     * @brief Receive ID8/outcome8 plus the selected trusted terminal result codec. Builtin Fibonacci
     * appends count32/int32 values. Successful terminal consumption retires ownership.
     * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
     * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @return Original numeric ABI errno; output slots are inspected only when actually written.
     * @details No pointer ownership is transferred and failed effects are never replayed automatically.
     */
    @Import(module = "uwvm_ros1_v1", name = "action_receive_result")
    @Unmanaged
    public static native int
        action_receive_result(long handle, int memory, long request_offset, long request_length, long response_offset, long capacity, long length_out_offset);

    /**
     * @brief Activate the explicitly granted Action server with an empty command. Poll ID8 plus the
     * selected trusted goal codec; builtin Fibonacci uses i32 order. Responses require another
     * grant.
     * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
     * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @return Original numeric ABI errno; output slots are inspected only when actually written.
     * @details No pointer ownership is transferred and failed effects are never replayed automatically.
     */
    @Import(module = "uwvm_ros1_v1", name = "action_advertise")
    @Unmanaged
    public static native int
        action_advertise(long handle, int memory, long request_offset, long request_length, long response_offset, long capacity, long length_out_offset);

    /**
     * @brief Send ID8/kind8 plus the selected trusted feedback/result codec. Builtin Fibonacci
     * appends count32/int32 values. Advertiser and responder require the same explicit ROS2 QoS
     * contract.
     * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
     * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @return Original numeric ABI errno; output slots are inspected only when actually written.
     * @details No pointer ownership is transferred and failed effects are never replayed automatically.
     */
    @Import(module = "uwvm_ros1_v1", name = "action_respond")
    @Unmanaged
    public static native int
        action_respond(long handle, int memory, long request_offset, long request_length, long response_offset, long capacity, long length_out_offset);

    /**
     * @brief Request the separately configured source/target frame pair at u64 nanoseconds; zero
     * selects the latest admitted transform.
     * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
     * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @return Original numeric ABI errno; output slots are inspected only when actually written.
     * @details No pointer ownership is transferred and failed effects are never replayed automatically.
     */
    @Import(module = "uwvm_ros1_v1", name = "tf_lookup")
    @Unmanaged
    public static native int
        tf_lookup(long handle, int memory, long request_offset, long request_length, long response_offset, long capacity, long length_out_offset);

    /**
     * @brief Broadcast one canonical TransformStamped for the separately configured frame pair. Do
     * not normalize its quaternion implicitly.
     * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
     * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @return Original numeric ABI errno; output slots are inspected only when actually written.
     * @details No pointer ownership is transferred and failed effects are never replayed automatically.
     */
    @Import(module = "uwvm_ros1_v1", name = "tf_broadcast")
    @Unmanaged
    public static native int
        tf_broadcast(long handle, int memory, long request_offset, long request_length, long response_offset, long capacity, long length_out_offset);

    /**
     * @brief Read the value fixed by the capability type. An empty request does not select a
     * different node, name or value kind.
     * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
     * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @return Original numeric ABI errno; output slots are inspected only when actually written.
     * @details No pointer ownership is transferred and failed effects are never replayed automatically.
     */
    @Import(module = "uwvm_ros1_v1", name = "parameter_get")
    @Unmanaged
    public static native int
        parameter_get(long handle, int memory, long request_offset, long request_length, long response_offset, long capacity, long length_out_offset);

    /**
     * @brief Set a canonical value of the explicitly granted parameter type. Numeric and element
     * bounds remain enforced by the host.
     * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
     * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @return Original numeric ABI errno; output slots are inspected only when actually written.
     * @details No pointer ownership is transferred and failed effects are never replayed automatically.
     */
    @Import(module = "uwvm_ros1_v1", name = "parameter_set")
    @Unmanaged
    public static native int
        parameter_set(long handle, int memory, long request_offset, long request_length, long response_offset, long capacity, long length_out_offset);

    /**
     * @brief Delete the explicitly granted ROS1 parameter using an empty request; no implicit
     * parent-name authority is added.
     * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
     * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @return Original numeric ABI errno; output slots are inspected only when actually written.
     * @details No pointer ownership is transferred and failed effects are never replayed automatically.
     */
    @Import(module = "uwvm_ros1_v1", name = "parameter_delete")
    @Unmanaged
    public static native int
        parameter_delete(long handle, int memory, long request_offset, long request_length, long response_offset, long capacity, long length_out_offset);

    /**
     * @brief Query existence of the explicitly granted ROS1 parameter; decode one canonical Bool
     * response.
     * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
     * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @return Original numeric ABI errno; output slots are inspected only when actually written.
     * @details No pointer ownership is transferred and failed effects are never replayed automatically.
     */
    @Import(module = "uwvm_ros1_v1", name = "parameter_exists")
    @Unmanaged
    public static native int
        parameter_exists(long handle, int memory, long request_offset, long request_length, long response_offset, long capacity, long length_out_offset);

    /**
     * @brief List the separately authorized parameter scope; decode the bounded canonical String
     * result.
     * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
     * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @return Original numeric ABI errno; output slots are inspected only when actually written.
     * @details No pointer ownership is transferred and failed effects are never replayed automatically.
     */
    @Import(module = "uwvm_ros1_v1", name = "parameter_list")
    @Unmanaged
    public static native int
        parameter_list(long handle, int memory, long request_offset, long request_length, long response_offset, long capacity, long length_out_offset);

    /**
     * @brief Search the explicitly granted ROS1 resource with an empty request. Parent namespaces
     * are included only with search-parent-namespaces=true, for the same final key and within
     * allowed-name-prefix before every native query.
     * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
     * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @return Original numeric ABI errno; output slots are inspected only when actually written.
     * @details No pointer ownership is transferred and failed effects are never replayed automatically.
     */
    @Import(module = "uwvm_ros1_v1", name = "parameter_search")
    @Unmanaged
    public static native int
        parameter_search(long handle, int memory, long request_offset, long request_length, long response_offset, long capacity, long length_out_offset);

    /**
     * @brief Inspect the configured topic filter with an empty request and decode sorted canonical
     * String rows.
     * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
     * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @return Original numeric ABI errno; output slots are inspected only when actually written.
     * @details No pointer ownership is transferred and failed effects are never replayed automatically.
     */
    @Import(module = "uwvm_ros1_v1", name = "graph_inspect_topic")
    @Unmanaged
    public static native int
        graph_inspect_topic(long handle, int memory, long request_offset, long request_length, long response_offset, long capacity, long length_out_offset);

    /**
     * @brief Inspect the configured node filter with an empty request and decode sorted canonical
     * String rows.
     * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
     * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @return Original numeric ABI errno; output slots are inspected only when actually written.
     * @details No pointer ownership is transferred and failed effects are never replayed automatically.
     */
    @Import(module = "uwvm_ros1_v1", name = "graph_inspect_node")
    @Unmanaged
    public static native int
        graph_inspect_node(long handle, int memory, long request_offset, long request_length, long response_offset, long capacity, long length_out_offset);

    /**
     * @brief Inspect the configured service filter with an empty request and decode sorted canonical
     * String rows.
     * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
     * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @return Original numeric ABI errno; output slots are inspected only when actually written.
     * @details No pointer ownership is transferred and failed effects are never replayed automatically.
     */
    @Import(module = "uwvm_ros1_v1", name = "graph_inspect_service")
    @Unmanaged
    public static native int
        graph_inspect_service(long handle, int memory, long request_offset, long request_length, long response_offset, long capacity, long length_out_offset);

    /**
     * @brief List topics within the explicit exact/prefix graph filter; decode sorted canonical
     * String rows.
     * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
     * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @return Original numeric ABI errno; output slots are inspected only when actually written.
     * @details No pointer ownership is transferred and failed effects are never replayed automatically.
     */
    @Import(module = "uwvm_ros1_v1", name = "graph_list_topics")
    @Unmanaged
    public static native int
        graph_list_topics(long handle, int memory, long request_offset, long request_length, long response_offset, long capacity, long length_out_offset);

    /**
     * @brief List nodes within the explicit graph filter; this is not unrestricted discovery
     * authority.
     * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
     * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @return Original numeric ABI errno; output slots are inspected only when actually written.
     * @details No pointer ownership is transferred and failed effects are never replayed automatically.
     */
    @Import(module = "uwvm_ros1_v1", name = "graph_list_nodes")
    @Unmanaged
    public static native int
        graph_list_nodes(long handle, int memory, long request_offset, long request_length, long response_offset, long capacity, long length_out_offset);

    /**
     * @brief List services within the explicit graph filter; decode sorted canonical String rows.
     * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
     * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @return Original numeric ABI errno; output slots are inspected only when actually written.
     * @details No pointer ownership is transferred and failed effects are never replayed automatically.
     */
    @Import(module = "uwvm_ros1_v1", name = "graph_list_services")
    @Unmanaged
    public static native int
        graph_list_services(long handle, int memory, long request_offset, long request_length, long response_offset, long capacity, long length_out_offset);

    /**
     * @brief Read the separately authorized ROS clock domain as little-endian u64 nanoseconds.
     * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
     * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @return Original numeric ABI errno; output slots are inspected only when actually written.
     * @details No pointer ownership is transferred and failed effects are never replayed automatically.
     */
    @Import(module = "uwvm_ros1_v1", name = "time_read_ros")
    @Unmanaged
    public static native int
        time_read_ros(long handle, int memory, long request_offset, long request_length, long response_offset, long capacity, long length_out_offset);

    /**
     * @brief Read the independently authorized ROS1 wall clock; another time grant does not imply
     * this one.
     * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
     * @param request_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param request_length Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param response_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param capacity Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param length_out_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @return Original numeric ABI errno; output slots are inspected only when actually written.
     * @details No pointer ownership is transferred and failed effects are never replayed automatically.
     */
    @Import(module = "uwvm_ros1_v1", name = "time_read_wall")
    @Unmanaged
    public static native int
        time_read_wall(long handle, int memory, long request_offset, long request_length, long response_offset, long capacity, long length_out_offset);

    /**
     * @brief Write one canonical String to the separately granted ROS logger. This does not open a
     * file or socket.
     * @param handle Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param memory Exact i32 scalar; caller-owned memory/resource contract applies.
     * @param payload_offset Exact i64 scalar; caller-owned memory/resource contract applies.
     * @param payload_length Exact i64 scalar; caller-owned memory/resource contract applies.
     * @return Original numeric ABI errno; output slots are inspected only when actually written.
     * @details No pointer ownership is transferred and failed effects are never replayed automatically.
     */
    @Import(module = "uwvm_ros1_v1", name = "log_write")
    @Unmanaged
    public static native int log_write(long handle, int memory, long payload_offset, long payload_length);
}
