/** @file
 * @brief C89 and later capability, resource, and polling foundation for ROS ABI v1.
 *
 * Include ros1.h or ros2.h to obtain an explicit backend. The context is only
 * an import dispatch table: it creates no native node, thread, socket, endpoint,
 * permission, environment inheritance, or hidden retry. Every resource opens a
 * host-granted alias. Handles must not be copied between owners or instances.
 * Exact scalar and old-standard requirements are reported by c_portability.h.
 * The API supports caller-owned storage and freestanding guests.
 */
#ifndef ROSWASMC_H
#define ROSWASMC_H
#include <platform/ros/c/roswasm/detail/common/abi.h>
#ifdef __cplusplus
extern "C"
{
#endif
    /**
     * @brief Canonical request operations. Missing backend entries return error 95.
     *
     * @details Stable local dispatch indices for independently authorized operations. Presence in
     * a
     * backend table proves support only, never a live endpoint or Host grant.
     * @par C type contract
     * Use the declared complete value and exact representation. Caller-owned storage and any
     * borrowed
     * members retain the lifetimes documented above; no implicit allocation or ownership
     * duplication
     * occurs.
     * @see roswasmc_check_operation(), roswasmc_request()
     * @see @ref roswasmc_c_contracts
     */
    typedef enum roswasmc_operation
    {

        /**
         * @brief Canonical selector: service call.
         *
         * @details Perform one synchronous Service request/response attempt under the Host's finite
         * deadline. This selector identifies dispatch only; it does not supply the operation-specific
         * Host permission.
         * @par C type contract
         * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
         * owner nor a substitute for explicit Host policy.
         * @see roswasmc_check_operation(), roswasmc_operation
         * @see @ref roswasmc_c_contracts
         */
        ROSWASMC_SERVICE_CALL, /**< Service call; requires its own alias. */

        /**
         * @brief Canonical selector: service respond.
         *
         * @details Respond once to an owned live request ticket using a separate response capability.
         * This selector identifies dispatch only; it does not supply the operation-specific Host
         * permission.
         * @par C type contract
         * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
         * owner nor a substitute for explicit Host policy.
         * @see roswasmc_check_operation(), roswasmc_operation
         * @see @ref roswasmc_c_contracts
         */
        ROSWASMC_SERVICE_RESPOND, /**< Service respond; requires its own alias. */

        /**
         * @brief Canonical selector: action send goal.
         *
         * @details Submit one complete canonical goal and return its live native-correlated goal ID.
         * This selector identifies dispatch only; it does not supply the operation-specific Host
         * permission.
         * @par C type contract
         * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
         * owner nor a substitute for explicit Host policy.
         * @see roswasmc_check_operation(), roswasmc_operation
         * @see @ref roswasmc_c_contracts
         */
        ROSWASMC_ACTION_SEND_GOAL, /**< Action send goal; requires its own alias. */

        /**
         * @brief Canonical selector: action cancel own goal.
         *
         * @details Request cancellation only for the selected source owner's live goal. This selector
         * identifies dispatch only; it does not supply the operation-specific Host permission.
         * @par C type contract
         * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
         * owner nor a substitute for explicit Host policy.
         * @see roswasmc_check_operation(), roswasmc_operation
         * @see @ref roswasmc_c_contracts
         */
        ROSWASMC_ACTION_CANCEL_OWN_GOAL, /**< Action cancel own goal; requires its own alias. */

        /**
         * @brief Canonical selector: action cancel any goal.
         *
         * @details Use the stronger separately granted cancellation role; zero selects all only where
         * documented. This selector identifies dispatch only; it does not supply the
         * operation-specific Host permission.
         * @par C type contract
         * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
         * owner nor a substitute for explicit Host policy.
         * @see roswasmc_check_operation(), roswasmc_operation
         * @see @ref roswasmc_c_contracts
         */
        ROSWASMC_ACTION_CANCEL_ANY_GOAL, /**< Action cancel any goal; requires its own alias. */

        /**
         * @brief Canonical selector: action receive feedback.
         *
         * @details Receive one feedback record for the selected live goal without obtaining result
         * rights. This selector identifies dispatch only; it does not supply the operation-specific
         * Host permission.
         * @par C type contract
         * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
         * owner nor a substitute for explicit Host policy.
         * @see roswasmc_check_operation(), roswasmc_operation
         * @see @ref roswasmc_c_contracts
         */
        ROSWASMC_ACTION_RECEIVE_FEEDBACK, /**< Action receive feedback; requires its own alias. */

        /**
         * @brief Canonical selector: action receive result.
         *
         * @details Receive one terminal result for the selected goal; do not replay a consumed result.
         * This selector identifies dispatch only; it does not supply the operation-specific Host
         * permission.
         * @par C type contract
         * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
         * owner nor a substitute for explicit Host policy.
         * @see roswasmc_check_operation(), roswasmc_operation
         * @see @ref roswasmc_c_contracts
         */
        ROSWASMC_ACTION_RECEIVE_RESULT, /**< Action receive result; requires its own alias. */

        /**
         * @brief Canonical selector: action advertise.
         *
         * @details Activate one granted Action server queue without accepting a goal implicitly. This
         * selector identifies dispatch only; it does not supply the operation-specific Host
         * permission.
         * @par C type contract
         * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
         * owner nor a substitute for explicit Host policy.
         * @see roswasmc_check_operation(), roswasmc_operation
         * @see @ref roswasmc_c_contracts
         */
        ROSWASMC_ACTION_ADVERTISE, /**< Action advertise; requires its own alias. */

        /**
         * @brief Canonical selector: action respond.
         *
         * @details Send one complete feedback/terminal record for an owned incoming goal. This
         * selector identifies dispatch only; it does not supply the operation-specific Host
         * permission.
         * @par C type contract
         * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
         * owner nor a substitute for explicit Host policy.
         * @see roswasmc_check_operation(), roswasmc_operation
         * @see @ref roswasmc_c_contracts
         */
        ROSWASMC_ACTION_RESPOND, /**< Action respond; requires its own alias. */

        /**
         * @brief Canonical selector: tf lookup.
         *
         * @details Perform one bounded lookup for the transform and time fixed by the granted
         * resource. This selector identifies dispatch only; it does not supply the operation-specific
         * Host permission.
         * @par C type contract
         * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
         * owner nor a substitute for explicit Host policy.
         * @see roswasmc_check_operation(), roswasmc_operation
         * @see @ref roswasmc_c_contracts
         */
        ROSWASMC_TF_LOOKUP, /**< Tf lookup; requires its own alias. */

        /**
         * @brief Canonical selector: tf broadcast.
         *
         * @details Broadcast one complete validated canonical transform through its own granted alias.
         * This selector identifies dispatch only; it does not supply the operation-specific Host
         * permission.
         * @par C type contract
         * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
         * owner nor a substitute for explicit Host policy.
         * @see roswasmc_check_operation(), roswasmc_operation
         * @see @ref roswasmc_c_contracts
         */
        ROSWASMC_TF_BROADCAST, /**< Tf broadcast; requires its own alias. */

        /**
         * @brief Canonical selector: parameter get.
         *
         * @details Read the granted parameter's complete tagged canonical value. This selector
         * identifies dispatch only; it does not supply the operation-specific Host permission.
         * @par C type contract
         * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
         * owner nor a substitute for explicit Host policy.
         * @see roswasmc_check_operation(), roswasmc_operation
         * @see @ref roswasmc_c_contracts
         */
        ROSWASMC_PARAMETER_GET, /**< Parameter get; requires its own alias. */

        /**
         * @brief Canonical selector: parameter set.
         *
         * @details Set one complete canonical value; the Host validates the original native type and
         * range. This selector identifies dispatch only; it does not supply the operation-specific
         * Host permission.
         * @par C type contract
         * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
         * owner nor a substitute for explicit Host policy.
         * @see roswasmc_check_operation(), roswasmc_operation
         * @see @ref roswasmc_c_contracts
         */
        ROSWASMC_PARAMETER_SET, /**< Parameter set; requires its own alias. */

        /**
         * @brief Canonical selector: parameter delete.
         *
         * @details Delete the granted parameter once; this does not authorize mutation of another
         * name. This selector identifies dispatch only; it does not supply the operation-specific Host
         * permission.
         * @par C type contract
         * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
         * owner nor a substitute for explicit Host policy.
         * @see roswasmc_check_operation(), roswasmc_operation
         * @see @ref roswasmc_c_contracts
         */
        ROSWASMC_PARAMETER_DELETE, /**< Parameter delete; requires its own alias. */

        /**
         * @brief Canonical selector: parameter exists.
         *
         * @details Observe whether the granted parameter exists without mutation rights. This selector
         * identifies dispatch only; it does not supply the operation-specific Host permission.
         * @par C type contract
         * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
         * owner nor a substitute for explicit Host policy.
         * @see roswasmc_check_operation(), roswasmc_operation
         * @see @ref roswasmc_c_contracts
         */
        ROSWASMC_PARAMETER_EXISTS, /**< Parameter exists; requires its own alias. */

        /**
         * @brief Canonical selector: parameter list.
         *
         * @details List the finite parameter view permitted by the Host resource. This selector
         * identifies dispatch only; it does not supply the operation-specific Host permission.
         * @par C type contract
         * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
         * owner nor a substitute for explicit Host policy.
         * @see roswasmc_check_operation(), roswasmc_operation
         * @see @ref roswasmc_c_contracts
         */
        ROSWASMC_PARAMETER_LIST, /**< Parameter list; requires its own alias. */

        /**
         * @brief Canonical selector: parameter search.
         *
         * @details Perform the ROS1 search operation; unsupported ROS2 dispatch remains error95. This
         * selector identifies dispatch only; it does not supply the operation-specific Host
         * permission.
         * @par C type contract
         * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
         * owner nor a substitute for explicit Host policy.
         * @see roswasmc_check_operation(), roswasmc_operation
         * @see @ref roswasmc_c_contracts
         */
        ROSWASMC_PARAMETER_SEARCH, /**< Parameter search; requires its own alias. */

        /**
         * @brief Canonical selector: parameter describe.
         *
         * @details Read ROS2 parameter metadata; unsupported ROS1 dispatch remains error95. This
         * selector identifies dispatch only; it does not supply the operation-specific Host
         * permission.
         * @par C type contract
         * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
         * owner nor a substitute for explicit Host policy.
         * @see roswasmc_check_operation(), roswasmc_operation
         * @see @ref roswasmc_c_contracts
         */
        ROSWASMC_PARAMETER_DESCRIBE, /**< Parameter describe; requires its own alias. */

        /**
         * @brief Canonical selector: parameter declare.
         *
         * @details Declare the granted ROS2 parameter with its complete tagged value. This selector
         * identifies dispatch only; it does not supply the operation-specific Host permission.
         * @par C type contract
         * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
         * owner nor a substitute for explicit Host policy.
         * @see roswasmc_check_operation(), roswasmc_operation
         * @see @ref roswasmc_c_contracts
         */
        ROSWASMC_PARAMETER_DECLARE, /**< Parameter declare; requires its own alias. */

        /**
         * @brief Canonical selector: parameter undeclare.
         *
         * @details Undeclare the granted ROS2 parameter without broadening its namespace. This
         * selector identifies dispatch only; it does not supply the operation-specific Host
         * permission.
         * @par C type contract
         * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
         * owner nor a substitute for explicit Host policy.
         * @see roswasmc_check_operation(), roswasmc_operation
         * @see @ref roswasmc_c_contracts
         */
        ROSWASMC_PARAMETER_UNDECLARE, /**< Parameter undeclare; requires its own alias. */

        /**
         * @brief Canonical selector: graph inspect topic.
         *
         * @details Inspect the single topic view permitted by the graph resource. This selector
         * identifies dispatch only; it does not supply the operation-specific Host permission.
         * @par C type contract
         * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
         * owner nor a substitute for explicit Host policy.
         * @see roswasmc_check_operation(), roswasmc_operation
         * @see @ref roswasmc_c_contracts
         */
        ROSWASMC_GRAPH_INSPECT_TOPIC, /**< Graph inspect topic; requires its own alias. */

        /**
         * @brief Canonical selector: graph inspect node.
         *
         * @details Inspect the single node view permitted by the graph resource. This selector
         * identifies dispatch only; it does not supply the operation-specific Host permission.
         * @par C type contract
         * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
         * owner nor a substitute for explicit Host policy.
         * @see roswasmc_check_operation(), roswasmc_operation
         * @see @ref roswasmc_c_contracts
         */
        ROSWASMC_GRAPH_INSPECT_NODE, /**< Graph inspect node; requires its own alias. */

        /**
         * @brief Canonical selector: graph inspect service.
         *
         * @details Inspect the single Service view permitted by the graph resource. This selector
         * identifies dispatch only; it does not supply the operation-specific Host permission.
         * @par C type contract
         * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
         * owner nor a substitute for explicit Host policy.
         * @see roswasmc_check_operation(), roswasmc_operation
         * @see @ref roswasmc_c_contracts
         */
        ROSWASMC_GRAPH_INSPECT_SERVICE, /**< Graph inspect service; requires its own alias. */

        /**
         * @brief Canonical selector: graph inspect action.
         *
         * @details Inspect a ROS2 Action view; unsupported ROS1 dispatch remains error95. This
         * selector identifies dispatch only; it does not supply the operation-specific Host
         * permission.
         * @par C type contract
         * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
         * owner nor a substitute for explicit Host policy.
         * @see roswasmc_check_operation(), roswasmc_operation
         * @see @ref roswasmc_c_contracts
         */
        ROSWASMC_GRAPH_INSPECT_ACTION, /**< Graph inspect action; requires its own alias. */

        /**
         * @brief Canonical selector: graph list topics.
         *
         * @details Copy the bounded topic listing permitted by the graph resource. This selector
         * identifies dispatch only; it does not supply the operation-specific Host permission.
         * @par C type contract
         * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
         * owner nor a substitute for explicit Host policy.
         * @see roswasmc_check_operation(), roswasmc_operation
         * @see @ref roswasmc_c_contracts
         */
        ROSWASMC_GRAPH_LIST_TOPICS, /**< Graph list topics; requires its own alias. */

        /**
         * @brief Canonical selector: graph list nodes.
         *
         * @details Copy the bounded node listing permitted by the graph resource. This selector
         * identifies dispatch only; it does not supply the operation-specific Host permission.
         * @par C type contract
         * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
         * owner nor a substitute for explicit Host policy.
         * @see roswasmc_check_operation(), roswasmc_operation
         * @see @ref roswasmc_c_contracts
         */
        ROSWASMC_GRAPH_LIST_NODES, /**< Graph list nodes; requires its own alias. */

        /**
         * @brief Canonical selector: graph list services.
         *
         * @details Copy the bounded Service listing permitted by the graph resource. This selector
         * identifies dispatch only; it does not supply the operation-specific Host permission.
         * @par C type contract
         * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
         * owner nor a substitute for explicit Host policy.
         * @see roswasmc_check_operation(), roswasmc_operation
         * @see @ref roswasmc_c_contracts
         */
        ROSWASMC_GRAPH_LIST_SERVICES, /**< Graph list services; requires its own alias. */

        /**
         * @brief Canonical selector: lifecycle get state.
         *
         * @details Read one ROS2 lifecycle state and its complete canonical label. This selector
         * identifies dispatch only; it does not supply the operation-specific Host permission.
         * @par C type contract
         * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
         * owner nor a substitute for explicit Host policy.
         * @see roswasmc_check_operation(), roswasmc_operation
         * @see @ref roswasmc_c_contracts
         */
        ROSWASMC_LIFECYCLE_GET_STATE, /**< Lifecycle get state; requires its own alias. */

        /**
         * @brief Canonical selector: lifecycle change state.
         *
         * @details Attempt the transition fixed by the ROS2 grant once and return native acceptance.
         * This selector identifies dispatch only; it does not supply the operation-specific Host
         * permission.
         * @par C type contract
         * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
         * owner nor a substitute for explicit Host policy.
         * @see roswasmc_check_operation(), roswasmc_operation
         * @see @ref roswasmc_c_contracts
         */
        ROSWASMC_LIFECYCLE_CHANGE_STATE, /**< Lifecycle change state; requires its own alias. */

        /**
         * @brief Canonical selector: time read ros.
         *
         * @details Read the permitted ROS-domain time snapshot in unsigned nanoseconds. This selector
         * identifies dispatch only; it does not supply the operation-specific Host permission.
         * @par C type contract
         * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
         * owner nor a substitute for explicit Host policy.
         * @see roswasmc_check_operation(), roswasmc_operation
         * @see @ref roswasmc_c_contracts
         */
        ROSWASMC_TIME_READ_ROS, /**< Time read ros; requires its own alias. */

        /**
         * @brief Canonical selector: time read wall.
         *
         * @details Read the permitted wall-clock snapshot in unsigned nanoseconds. This selector
         * identifies dispatch only; it does not supply the operation-specific Host permission.
         * @par C type contract
         * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
         * owner nor a substitute for explicit Host policy.
         * @see roswasmc_check_operation(), roswasmc_operation
         * @see @ref roswasmc_c_contracts
         */
        ROSWASMC_TIME_READ_WALL, /**< Time read wall; requires its own alias. */

        /**
         * @brief Canonical selector: time read system.
         *
         * @details Read the permitted ROS2 system-clock snapshot in unsigned nanoseconds. This
         * selector identifies dispatch only; it does not supply the operation-specific Host
         * permission.
         * @par C type contract
         * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
         * owner nor a substitute for explicit Host policy.
         * @see roswasmc_check_operation(), roswasmc_operation
         * @see @ref roswasmc_c_contracts
         */
        ROSWASMC_TIME_READ_SYSTEM, /**< Time read system; requires its own alias. */

        /**
         * @brief Canonical selector: time read steady.
         *
         * @details Read the permitted ROS2 steady-clock snapshot in unsigned nanoseconds. This
         * selector identifies dispatch only; it does not supply the operation-specific Host
         * permission.
         * @par C type contract
         * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
         * owner nor a substitute for explicit Host policy.
         * @see roswasmc_check_operation(), roswasmc_operation
         * @see @ref roswasmc_c_contracts
         */
        ROSWASMC_TIME_READ_STEADY, /**< Time read steady; requires its own alias. */

        /**
         * @brief Canonical selector: operation count.
         *
         * @details Number of dense local request-operation dispatch slots. This sentinel is not a
         * valid operation selector; check indices strictly below it.
         * @par C type contract
         * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
         * owner nor a substitute for explicit Host policy.
         * @see roswasmc_operation, roswasmc_check_operation()
         * @see @ref roswasmc_c_contracts
         */
        ROSWASMC_OPERATION_COUNT
    } roswasmc_operation;

    /**
     * @brief Signature of one explicitly selected request/response import.
     * @details The operation-specific capability selects the native resource and
     * codec. Input/output offsets and lengths remain i64 on both pointer ABIs.
     * The callback copies input during the call; it must never retain Guest pointers.
     * @param[in] handle Live full64 owner for this exact operation.
     * @param[in] memory Guest linear-memory index; pointer wrappers use0.
     * @param[in] input Offset of the complete canonical request byte range.
     * @param[in] input_length Exact canonical input byte count.
     * @param[out] output Writable response byte-range offset.
     * @param[in] capacity Response capacity in bytes, independently bounded by Host quotas.
     * @param[out] length_out Offset of an eight-byte LE length slot; valid only if written.
     * @return Numeric ABI errno. Error90 does not guarantee a written length slot;
     * an event/request may already have been consumed. Never replay implicitly.
     * @see roswasmc_request(), roswasmc_result
     *
     * @details Borrowed callable type with the complete signature, storage lifetime and
     * execution/error contract documented above. Keep callback code and captured storage alive; a
     * callable value carries no Host permission.
     * @par C type contract
     * Use the declared complete value and exact representation. Caller-owned storage and any
     * borrowed
     * members retain the lifetimes documented above; no implicit allocation or ownership
     * duplication
     * occurs.
     * @see @ref roswasmc_c_contracts
     */
    typedef uwvm_ros_u32 (*roswasmc_request_import)(uwvm_ros_u64 handle,
                                                    uwvm_ros_u32 memory,
                                                    uwvm_ros_u64 input,
                                                    uwvm_ros_u64 input_length,
                                                    uwvm_ros_u64 output,
                                                    uwvm_ros_u64 capacity,
                                                    uwvm_ros_u64 length_out);

    /**
     * @brief Immutable dispatch table. NULL operations are unsupported, never emulated.
     *
     * @details version identifies ROS1/ROS2 separately from ABI version1. Null optional callbacks
     * are
     * unsupported95. The entire table and callback code remain immutable and live through all
     * context/owner borrows.
     * @par C type contract
     * Use the declared complete value and exact representation. Caller-owned storage and any
     * borrowed
     * members retain the lifetimes documented above; no implicit allocation or ownership
     * duplication
     * occurs.
     * @see roswasmc_context, roswasmc_check_operation()
     * @see @ref roswasmc_c_contracts
     */
    typedef struct roswasmc_backend
    {
        /** @brief Backend identity1 for ROS1 or2 for ROS2.
         * @details Immutable while any context/owner borrows this table. This value
         * is distinct from the independently observed ABI version1.
         * @see roswasmc_context, roswasmc_session_check_abi()
         */
        uwvm_ros_u32 version;
        /** @brief Observe actual ABI version1 without opening a resource.
         * @details Synchronous value query; no errno or native connection is implied.
         * @return Actual namespace ABI version, not UWVM_ROS_SUCCESS.
         * @see uwvm_ros1_abi_version(), uwvm_ros2_abi_version()
         */
        uwvm_ros_u32 (*abi_version)(void);
        /** @brief Resolve one explicitly granted counted alias.
         * @details Synchronous ABI-v1 import; no implicit native name or retry.
         * @param[in] memory Actual Guest memory index.
         * @param[in] alias Offset of1..255 non-NUL-terminated alias bytes.
         * @param[in] length Alias byte count.
         * @param[out] handle_out Eight-byte LE handle-slot offset; committed on success.
         * @return Numeric ABI errno; default-empty authority returns13.
         * @see roswasmc_open()
         */
        uwvm_ros_u32 (*open)(uwvm_ros_u32 memory, uwvm_ros_u64 alias, uwvm_ros_u64 length, uwvm_ros_u64 handle_out);
        /** @brief Retire an owned handle before one native close attempt.
         * @details Synchronous cleanup may return107/110 after retiring the handle.
         * @param[in] handle Live full64 owner; never a native pointer.
         * @return Actual cleanup errno; do not infer that an error preserved ownership.
         * @see roswasmc_close()
         */
        uwvm_ros_u32 (*close)(uwvm_ros_u64 handle);
        /** @brief Revoke an alias and its owned handles under explicit Host policy.
         * @details Synchronous ABI-v1 revocation supplies no replacement grant.
         * @param[in] handle Existing full64 owner for the alias.
         * @return Actual errno; after an import attempt the wrapper retires this owner.
         * @see roswasmc_revoke()
         */
        uwvm_ros_u32 (*revoke)(uwvm_ros_u64 handle);
        /** @brief Copy one complete canonical message through a publish capability.
         * @details Requires topic.publish authority; never automatically replay after timeout.
         * @param[in] handle Live full64 topic.publish owner.
         * @param[in] memory Actual Guest memory index.
         * @param[in] payload Complete canonical message offset.
         * @param[in] length Message byte count, subject to Host quotas.
         * @return Numeric ABI errno; input bytes are borrowed only during this call.
         * @see roswasmc_publish()
         */
        uwvm_ros_u32 (*publish)(uwvm_ros_u64 handle, uwvm_ros_u32 memory, uwvm_ros_u64 payload, uwvm_ros_u64 length);
        /** @brief Activate one separately granted subscription queue.
         * @details Synchronous admission creates no publication or observer rights.
         * @param[in] handle Live full64 topic.subscribe owner.
         * @return Numeric ABI errno; success is not a delivered message.
         * @see roswasmc_subscribe()
         */
        uwvm_ros_u32 (*subscribe)(uwvm_ros_u64 handle);
        /** @brief Poll at most one legacy source record.
         * @details Caller-driven ABI-v1 polling; error90 may consume a record and
         * leave length unwritten. This is distinct from unified event_poll_v1.
         * @param[in] handle Live source owner with the selected poll right.
         * @param[in] memory Actual Guest memory index.
         * @param[out] output Writable record buffer offset.
         * @param[in] capacity Record-buffer capacity in bytes.
         * @param[out] length_out Eight-byte LE length-slot offset; inspect actual write validity.
         * @return Numeric ABI errno;11 means no record, not a successful payload.
         * @see roswasmc_poll(), roswasmc_event_poll()
         */
        uwvm_ros_u32 (*poll)(uwvm_ros_u64 handle, uwvm_ros_u32 memory, uwvm_ros_u64 output, uwvm_ros_u64 capacity, uwvm_ros_u64 length_out);
        /** @brief Activate the independently granted Service request queue.
         * @details Synchronous ABI-v1 admission; request tickets arrive through polling.
         * @param[in] handle Live service.advertise owner.
         * @return Numeric ABI errno; success grants no independent response right.
         * @see roswasmc_service_advertise(), roswasmc_service_respond()
         */
        uwvm_ros_u32 (*advertise_service)(uwvm_ros_u64 handle);
        /** @brief Activate the ROS2 parameter-event source queue.
         * @details Missing ROS1 dispatch is unsupported95; no synthetic queue is created.
         * @param[in] handle Live parameter-event subscription owner.
         * @return Numeric ABI errno; caller must subsequently poll explicitly.
         * @see roswasmc_parameter_subscribe_events()
         */
        uwvm_ros_u32 (*subscribe_parameter_events)(uwvm_ros_u64 handle);
        /** @brief Emit one bounded canonical String through the granted log role.
         * @details Host policy fixes native logger/severity; no hidden buffering or retry.
         * @param[in] handle Live log owner.
         * @param[in] memory Actual Guest memory index.
         * @param[in] text Canonical String offset, including its u32LE byte-length prefix.
         * @param[in] length Complete canonical String byte count.
         * @return Actual ABI errno; input is copied during this synchronous call.
         * @see roswasmc_log_string(), roswasmc_log()
         */
        uwvm_ros_u32 (*log)(uwvm_ros_u64 handle, uwvm_ros_u32 memory, uwvm_ros_u64 text, uwvm_ros_u64 length);
        /** @brief Exact operation-indexed request imports, with null for unsupported roles.
         * @details Immutable dispatch availability is not a permission or native probe.
         * @see roswasmc_operation, roswasmc_request_import, roswasmc_request()
         */
        roswasmc_request_import request[ROSWASMC_OPERATION_COUNT];
    } roswasmc_backend;

    /**
     * @brief Guest-local context. Its backend must outlive every dependent owner.
     *
     * @details Borrows one immutable backend and its function code. Keep both alive until every
     * dependent owner has retired; this descriptor itself creates no native session.
     * @par C type contract
     * Use the declared complete value and exact representation. Caller-owned storage and any
     * borrowed
     * members retain the lifetimes documented above; no implicit allocation or ownership
     * duplication
     * occurs.
     * @see roswasmc_backend, roswasmc_capability
     * @see @ref roswasmc_c_contracts
     */
    typedef struct roswasmc_context
    {
        roswasmc_backend const* backend;
    } roswasmc_context;

    /**
     * @brief Unique logical owner. Initialize before use; copying does not duplicate ownership.
     *
     * @details Unique logical owner of a full64 instance/backend handle. Initialize first; plain
     * assignment duplicates only bits, not ownership. Keep the context stable and use checked
     * move/close/revoke semantics.
     * @par C type contract
     * Use the declared complete value and exact representation. Caller-owned storage and any
     * borrowed
     * members retain the lifetimes documented above; no implicit allocation or ownership
     * duplication
     * occurs.
     * @see roswasmc_capability_init(), roswasmc_capability_take(), roswasmc_close()
     * @see @ref roswasmc_c_contracts
     */
    typedef struct roswasmc_capability
    {
        roswasmc_context const* context;
        uwvm_ros_u64 handle;
    } roswasmc_capability;

    /**
     * @brief Result with an explicit output-length validity bit.
     * Error 90 alone does not mean length is valid. An event or RPC may already have
     * been consumed when output capacity was insufficient: never replay implicitly.
     *
     * @details error is the actual errno. length is an unsigned byte count valid only when
     * has_length
     * is nonzero. Error90 alone proves neither a valid size nor that a consumed record can be
     * replayed.
     * @par C type contract
     * Use the declared complete value and exact representation. Caller-owned storage and any
     * borrowed
     * members retain the lifetimes documented above; no implicit allocation or ownership
     * duplication
     * occurs.
     * @see roswasmc_request(), roswasmc_poll()
     * @see @ref roswasmc_c_contracts
     */
    typedef struct roswasmc_result
    {
        uwvm_ros_u32 error;
        uwvm_ros_u64 length;
        int has_length;
    } roswasmc_result;

    /**
     * @brief Create an empty owner without opening authority.
     *
     * @details Initialize or transfer only the explicit caller-owned state described above. Keep
     * every borrowed context, table, buffer and callback stable for its documented dependent
     * lifetime.
     *
     * @par C storage and execution contract
     * @param[in,out] cap Initialized capability owner; keep its context/backend alive for the
     * complete operation.
     * @param[in] context Stable borrowed context; its immutable backend and code must outlive
     * every dependent owner.
     * @return No return value. Observe the documented local state change; no hidden wait, retry or
     * allocation occurs.
     * @par Permissions
     * Initialization/move alone creates no Host grant; any explicit resource open retains its
     * separate permission checks.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_capability_init(), roswasmc_capability_take()
     * @see @ref roswasmc_c_contracts
     */
    ROSWASM_C_INLINE void roswasmc_capability_init(roswasmc_capability* cap, roswasmc_context const* context)
    {
        if(cap)
        {
            cap->context = context;
            cap->handle = 0;
        }
    }

    /**
     * @brief Transfer one initialized logical owner without duplicating authority.
     * Both objects must be initialized; the destination must be empty. Its previous
     * empty context may change, but a live destination or self-transfer is refused.
     * The stable source context/backend must outlive the destination. No import runs.
     *
     * @details Initialize or transfer only the explicit caller-owned state described above. Keep
     * every borrowed context, table, buffer and callback stable for its documented dependent
     * lifetime.
     *
     * @par C storage and execution contract
     * @param[in,out] destination Live caller-owned object/storage with the extent and state
     * described above; no implicit allocation or ownership duplication.
     * @param[in,out] source Existing source owner or transfer source as specified above; never
     * copy it into a second live owner.
     * @return Numeric ABI/local error:0 on success. Preserve the documented output/owner state on
     * rejection;95 means unsupported, never a fabricated result.
     * @par Permissions
     * Initialization/move alone creates no Host grant; any explicit resource open retains its
     * separate permission checks.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_capability_init(), roswasmc_capability_take()
     * @see @ref roswasmc_c_contracts
     */
    ROSWASM_C_INLINE uwvm_ros_u32 roswasmc_capability_take(roswasmc_capability* destination, roswasmc_capability* source)
    {
        if(!destination || !source || destination == source)
        {
            return UWVM_ROS_INVALID;
        }
        if(destination->handle)
        {
            return UWVM_ROS_CONFLICT;
        }
        if(!source->context || !source->context->backend || !source->handle)
        {
            return UWVM_ROS_BAD_HANDLE;
        }
        *destination = *source;
        source->handle = 0;
        return 0;
    }

    /**
     * @brief Inspect local ownership without calling an import or gaining rights.
     *
     * @details Perform the local structural/ownership check described above. A matching local
     * handle, range or selector does not replace the Runtime's instance, generation,
     * native-session or policy validation.
     *
     * @par C storage and execution contract
     * @param[in] cap Initialized capability owner; keep its context/backend alive for the complete
     * operation.
     * @return Nonzero when the documented local predicate/codec step succeeds, otherwise0; this is
     * not a Host permission decision.
     * @par Permissions
     * None; this local check does not call a business operation or create authority.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_capability, roswasmc_context
     * @see @ref roswasmc_c_contracts
     */
    ROSWASM_C_INLINE int roswasmc_is_open(roswasmc_capability const* cap)
    {
        return cap && cap->context && cap->context->backend && cap->handle;
    }

    /**
     * @brief Validate a request selector before a factory opens an alias.
     * Return22 for a malformed selector/context and95 for a missing backend entry.
     * Support is a dispatch-table property; success grants no native permission.
     *
     * @details Perform the local structural/ownership check described above. A matching local
     * handle, range or selector does not replace the Runtime's instance, generation,
     * native-session or policy validation.
     *
     * @par C storage and execution contract
     * @param[in] context Stable borrowed context; its immutable backend and code must outlive
     * every dependent owner.
     * @param[in] op Explicit supported operation selector; local dispatch presence does not grant
     * authority.
     * @return Numeric ABI/local error:0 on success. Preserve the documented output/owner state on
     * rejection;95 means unsupported, never a fabricated result.
     * @par Permissions
     * None; this local check does not call a business operation or create authority.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_capability, roswasmc_context
     * @see @ref roswasmc_c_contracts
     */
    ROSWASM_C_INLINE uwvm_ros_u32 roswasmc_check_operation(roswasmc_context const* context, roswasmc_operation op)
    {
        if(!context || !context->backend || (unsigned)op >= ROSWASMC_OPERATION_COUNT)
        {
            return UWVM_ROS_INVALID;
        }
        return context->backend->request[op] ? UWVM_ROS_SUCCESS : UWVM_ROS_UNSUPPORTED;
    }

    /**
     * @brief Open exactly one nonempty, explicitly granted alias.
     * @param[in] alias Non-NUL-terminated bytes; names do not choose a ROS endpoint.
     * @param[in] length Alias byte count. The host validates syntax and length (1..255).
     * @return Numeric ABI errno. A failed open preserves the previous empty owner.
     *
     * @details Execute the bounded operation described above with the supplied complete values and
     * stable owners. Inspect its actual result before using output; do not implicitly retry a
     * consumed event or uncertain external operation.
     *
     * @par C storage and execution contract
     * @param[in,out] cap Initialized capability owner; keep its context/backend alive for the
     * complete operation.
     * @par Permissions
     * The matching operation-specific aliases must already be explicitly granted; this facade
     * never supplies Host policy, endpoints or native identity.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    ROSWASM_C_INLINE uwvm_ros_u32 roswasmc_open(roswasmc_capability* cap, char const* alias, size_t length)
    {
        unsigned char slot[8] = {0, 0, 0, 0, 0, 0, 0, 0};
        uwvm_ros_u32 error;
        if(!cap || !cap->context || !cap->context->backend || !alias || !length || length > 255 || cap->handle)
        {
            return UWVM_ROS_INVALID;
        }
        if(!cap->context->backend->open || !cap->context->backend->close)
        {
            return UWVM_ROS_UNSUPPORTED;
        }
        error = cap->context->backend->open(0, uwvm_ros_address(alias), length, uwvm_ros_address(slot));
        if(!error)
        {
            uwvm_ros_u64 handle = uwvm_ros_load_u64(slot);
            if(!handle)
            {
                return UWVM_ROS_INVALID;
            }
            cap->handle = handle;
        }
        return error;
    }

    /**
     * @brief Relinquish ownership after one close attempt.
     * The host may retire a handle before native cleanup returns 107/110. Therefore
     * this owner is cleared even on an import error; callers must not retry close
     * assuming an error preserved a live resource. No permission is restored.
     * A missing local close callback returns95 before any import and keeps the
     * owner; successful open preflight requires a close callback in the backend.
     *
     * @details Follow the documented single-attempt retirement order. Keep an owner when its local
     * cleanup callback is unavailable; after an actual close/revoke attempt, do not infer a live
     * handle from a transport error.
     *
     * @par C storage and execution contract
     * @param[in,out] cap Initialized capability owner; keep its context/backend alive for the
     * complete operation.
     * @return Numeric ABI/local error:0 on success. Preserve the documented output/owner state on
     * rejection;95 means unsupported, never a fabricated result.
     * @par Permissions
     * Only existing owned capabilities are used. Revocation requires the explicit policy allowed
     * by the Host; cleanup creates no new permission.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_close(), roswasmc_cleanup_report
     * @see @ref roswasmc_c_contracts
     */
    ROSWASM_C_INLINE uwvm_ros_u32 roswasmc_close(roswasmc_capability* cap)
    {
        uwvm_ros_u32 error;
        if(!cap || !cap->context || !cap->context->backend || !cap->handle)
        {
            return UWVM_ROS_BAD_HANDLE;
        }
        if(!cap->context->backend->close)
        {
            return UWVM_ROS_UNSUPPORTED;
        }
        error = cap->context->backend->close(cap->handle);
        cap->handle = 0;
        return error;
    }

    /**
     * @brief Revoke the owned alias, then relinquish this local owner.
     * Revocation retires existing handles. Reopening a revoked alias returns 125.
     * A missing optional local callback returns95 without clearing ownership, so
     * ordinary close remains available. No host operation has run in that case.
     *
     * @details Follow the documented single-attempt retirement order. Keep an owner when its local
     * cleanup callback is unavailable; after an actual close/revoke attempt, do not infer a live
     * handle from a transport error.
     *
     * @par C storage and execution contract
     * @param[in,out] cap Initialized capability owner; keep its context/backend alive for the
     * complete operation.
     * @return Numeric ABI/local error:0 on success. Preserve the documented output/owner state on
     * rejection;95 means unsupported, never a fabricated result.
     * @par Permissions
     * Only existing owned capabilities are used. Revocation requires the explicit policy allowed
     * by the Host; cleanup creates no new permission.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_close(), roswasmc_cleanup_report
     * @see @ref roswasmc_c_contracts
     */
    ROSWASM_C_INLINE uwvm_ros_u32 roswasmc_revoke(roswasmc_capability* cap)
    {
        uwvm_ros_u32 error;
        if(!cap || !cap->context || !cap->context->backend || !cap->handle)
        {
            return UWVM_ROS_BAD_HANDLE;
        }
        if(!cap->context->backend->revoke)
        {
            return UWVM_ROS_UNSUPPORTED;
        }
        error = cap->context->backend->revoke(cap->handle);
        cap->handle = 0;
        return error;
    }

    /**
     * @brief Send canonical bytes through a topic.publish alias; never encode native structs
     * directly.
     *
     * @details Execute the bounded operation described above with the supplied complete values and
     * stable owners. Inspect its actual result before using output; do not implicitly retry a
     * consumed event or uncertain external operation.
     *
     * @par C storage and execution contract
     * @param[in] cap Initialized capability owner; keep its context/backend alive for the complete
     * operation.
     * @param[in] bytes Caller-owned byte storage for the complete documented range; keep borrowed
     * decode views alive and respect nonoverlap rules.
     * @param[in] length Byte count or byte-count destination as specified above; only successful
     * documented commits make output valid.
     * @return Numeric ABI/local error:0 on success. Preserve the documented output/owner state on
     * rejection;95 means unsupported, never a fabricated result.
     * @par Permissions
     * The matching operation-specific aliases must already be explicitly granted; this facade
     * never supplies Host policy, endpoints or native identity.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    ROSWASM_C_INLINE uwvm_ros_u32 roswasmc_publish(roswasmc_capability const* cap, void const* bytes, size_t length)
    {
        if(!cap || !cap->context || !cap->context->backend || !cap->handle)
        {
            return UWVM_ROS_BAD_HANDLE;
        }
        if(!bytes && length)
        {
            return UWVM_ROS_INVALID;
        }
        if(!cap->context->backend->publish)
        {
            return UWVM_ROS_UNSUPPORTED;
        }
        return cap->context->backend->publish(cap->handle, 0, uwvm_ros_address(bytes), length);
    }

    /**
     * @brief Activate a topic.subscribe alias. This does not grant publication.
     *
     * @details Execute the bounded operation described above with the supplied complete values and
     * stable owners. Inspect its actual result before using output; do not implicitly retry a
     * consumed event or uncertain external operation.
     *
     * @par C storage and execution contract
     * @param[in] cap Initialized capability owner; keep its context/backend alive for the complete
     * operation.
     * @return Numeric ABI/local error:0 on success. Preserve the documented output/owner state on
     * rejection;95 means unsupported, never a fabricated result.
     * @par Permissions
     * The matching operation-specific aliases must already be explicitly granted; this facade
     * never supplies Host policy, endpoints or native identity.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    ROSWASM_C_INLINE uwvm_ros_u32 roswasmc_subscribe(roswasmc_capability const* cap)
    {
        if(!cap || !cap->context || !cap->context->backend || !cap->handle)
        {
            return UWVM_ROS_BAD_HANDLE;
        }
        if(!cap->context->backend->subscribe)
        {
            return UWVM_ROS_UNSUPPORTED;
        }
        return cap->context->backend->subscribe(cap->handle);
    }

    /**
     * @brief Poll one event into a caller-owned bounded buffer. Empty queues return 11.
     * Callback invocation, if desired, occurs later on the calling guest thread.
     *
     * @details Execute the bounded operation described above with the supplied complete values and
     * stable owners. Inspect its actual result before using output; do not implicitly retry a
     * consumed event or uncertain external operation.
     *
     * @par C storage and execution contract
     * @param[in] cap Initialized capability owner; keep its context/backend alive for the complete
     * operation.
     * @param[out] output Caller-owned byte storage for the complete documented range; keep
     * borrowed decode views alive and respect nonoverlap rules.
     * @param[in] capacity Available caller output capacity in bytes; this is not a Host quota
     * override.
     * @return Actual errno plus the independent length/has_length state. Read length only when
     * has_length is true; errors90/110 never authorize replay.
     * @par Permissions
     * The matching operation-specific aliases must already be explicitly granted; this facade
     * never supplies Host policy, endpoints or native identity.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    ROSWASM_C_INLINE roswasmc_result roswasmc_poll(roswasmc_capability const* cap, void* output, size_t capacity)
    {
        unsigned char slot[8] = {255, 255, 255, 255, 255, 255, 255, 255};
        roswasmc_result result = {UWVM_ROS_BAD_HANDLE, 0, 0};
        uwvm_ros_u64 length;
        if(!cap || !cap->context || !cap->context->backend || !cap->handle)
        {
            return result;
        }
        if(!output && capacity)
        {
            result.error = UWVM_ROS_INVALID;
            return result;
        }
        if(!cap->context->backend->poll)
        {
            result.error = UWVM_ROS_UNSUPPORTED;
            return result;
        }
        result.error = cap->context->backend->poll(cap->handle, 0, uwvm_ros_address(output), capacity, uwvm_ros_address(slot));
        length = uwvm_ros_load_u64(slot);
        if(!result.error)
        {
            if(length == UWVM_ROS_U64_MAX || length > capacity)
            {
                result.error = UWVM_ROS_INVALID;
                return result;
            }
            result.length = length;
            result.has_length = 1;
        }
        else if(result.error == UWVM_ROS_TOO_LARGE && length != UWVM_ROS_U64_MAX)
        {
            result.length = length;
            result.has_length = 1;
        }
        return result;
    }

    /**
     * @brief Perform exactly one canonical request operation, without retry.
     * @param[in] op One named operation; authority still comes exclusively from cap.
     * @param[in] input Request bytes; NULL is allowed only when input_length is zero.
     * @param[out] output Caller-owned response storage; NULL is allowed when capacity is zero.
     * @return Error, length, and has_length. Do not access output after an error.
     *
     * @details Execute the bounded operation described above with the supplied complete values and
     * stable owners. Inspect its actual result before using output; do not implicitly retry a
     * consumed event or uncertain external operation.
     *
     * @par C storage and execution contract
     * @param[in] cap Initialized capability owner; keep its context/backend alive for the complete
     * operation.
     * @param[in] input_length Exact canonical input byte count; no implicit terminator or struct
     * padding is included.
     * @param[in] capacity Available caller output capacity in bytes; this is not a Host quota
     * override.
     * @par Permissions
     * The matching operation-specific aliases must already be explicitly granted; this facade
     * never supplies Host policy, endpoints or native identity.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    ROSWASM_C_INLINE roswasmc_result
        roswasmc_request(roswasmc_capability const* cap, roswasmc_operation op, void const* input, size_t input_length, void* output, size_t capacity)
    {
        unsigned char slot[8] = {255, 255, 255, 255, 255, 255, 255, 255};
        roswasmc_result result = {UWVM_ROS_BAD_HANDLE, 0, 0};
        uwvm_ros_u64 length;
        roswasmc_request_import fn;
        if(!cap || !cap->context || !cap->context->backend || !cap->handle)
        {
            return result;
        }
        if((unsigned)op >= ROSWASMC_OPERATION_COUNT || (!input && input_length) || (!output && capacity))
        {
            result.error = UWVM_ROS_INVALID;
            return result;
        }
        fn = cap->context->backend->request[op];
        if(!fn)
        {
            result.error = UWVM_ROS_UNSUPPORTED;
            return result;
        }
        result.error = fn(cap->handle, 0, uwvm_ros_address(input), input_length, uwvm_ros_address(output), capacity, uwvm_ros_address(slot));
        length = uwvm_ros_load_u64(slot);
        if(!result.error)
        {
            if(length == UWVM_ROS_U64_MAX || length > capacity)
            {
                result.error = UWVM_ROS_INVALID;
                return result;
            }
            result.length = length;
            result.has_length = 1;
        }
        else if(result.error == UWVM_ROS_TOO_LARGE && length != UWVM_ROS_U64_MAX)
        {
            result.length = length;
            result.has_length = 1;
        }
        return result;
    }

    /**
     * @brief Activate a service.advertise queue. Replies need a separate service.respond owner.
     *
     * @details Activate the independently granted Service request queue.
     *
     * @par C storage and execution contract
     * @param[in] cap Initialized capability owner; keep its context/backend alive for the complete
     * operation.
     * @return Numeric ABI/local error:0 on success. Preserve the documented output/owner state on
     * rejection;95 means unsupported, never a fabricated result.
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    ROSWASM_C_INLINE uwvm_ros_u32 roswasmc_service_advertise(roswasmc_capability const* cap)
    {
        if(!cap || !cap->context || !cap->context->backend || !cap->handle)
        {
            return UWVM_ROS_BAD_HANDLE;
        }
        if(!cap->context->backend->advertise_service)
        {
            return UWVM_ROS_UNSUPPORTED;
        }
        return cap->context->backend->advertise_service(cap->handle);
    }

    /**
     * @brief Activate a separately granted ROS2 parameter-event queue; ROS1 returns 95.
     *
     * @details Activate the independently granted ROS2 parameter-event queue.
     *
     * @par C storage and execution contract
     * @param[in] cap Initialized capability owner; keep its context/backend alive for the complete
     * operation.
     * @return Numeric ABI/local error:0 on success. Preserve the documented output/owner state on
     * rejection;95 means unsupported, never a fabricated result.
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    ROSWASM_C_INLINE uwvm_ros_u32 roswasmc_parameter_subscribe_events(roswasmc_capability const* cap)
    {
        if(!cap || !cap->context || !cap->context->backend || !cap->handle)
        {
            return UWVM_ROS_BAD_HANDLE;
        }
        if(!cap->context->backend->subscribe_parameter_events)
        {
            return UWVM_ROS_UNSUPPORTED;
        }
        return cap->context->backend->subscribe_parameter_events(cap->handle);
    }

    /**
     * @brief Write a canonical u32-length UTF-8 String through a log.write alias.
     *
     * @details Execute the bounded operation described above with the supplied complete values and
     * stable owners. Inspect its actual result before using output; do not implicitly retry a
     * consumed event or uncertain external operation.
     *
     * @par C storage and execution contract
     * @param[in] cap Initialized capability owner; keep its context/backend alive for the complete
     * operation.
     * @param[in] bytes Caller-owned byte storage for the complete documented range; keep borrowed
     * decode views alive and respect nonoverlap rules.
     * @param[in] length Byte count or byte-count destination as specified above; only successful
     * documented commits make output valid.
     * @return Numeric ABI/local error:0 on success. Preserve the documented output/owner state on
     * rejection;95 means unsupported, never a fabricated result.
     * @par Permissions
     * The matching operation-specific aliases must already be explicitly granted; this facade
     * never supplies Host policy, endpoints or native identity.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    ROSWASM_C_INLINE uwvm_ros_u32 roswasmc_log(roswasmc_capability const* cap, char const* bytes, size_t length)
    {
        if(!cap || !cap->context || !cap->context->backend || !cap->handle)
        {
            return UWVM_ROS_BAD_HANDLE;
        }
        if(!bytes && length)
        {
            return UWVM_ROS_INVALID;
        }
        if(!cap->context->backend->log)
        {
            return UWVM_ROS_UNSUPPORTED;
        }
        return cap->context->backend->log(cap->handle, 0, uwvm_ros_address(bytes), length);
    }

    /**
     * @brief Guest-side callback whose borrowed bytes expire at normal return.
     * @details Called synchronously by explicit legacy spin_some after one record
     * was consumed. Keep callback code/user state alive; do not retain the buffer
     * view or replay a record after application failure. No callback thread or
     * permission is created; business operations need independently granted owners.
     * @param[in,out] user Stable caller-owned application state for this registration.
     * @param[in] bytes Complete source-codec bytes borrowed until callback return.
     * @param[in] length Exact record byte count; never a C string length assumption.
     * @return No result; return normally after copying any retained application data.
     * @see roswasmc_spin_some(), roswasmc_poll_task, roswasmc_poll()
     *
     * @details Borrowed callable type with the complete signature, storage lifetime and
     * execution/error contract documented above. Keep callback code and captured storage alive; a
     * callable value carries no Host permission.
     * @par C type contract
     * Use the declared complete value and exact representation. Caller-owned storage and any
     * borrowed
     * members retain the lifetimes documented above; no implicit allocation or ownership
     * duplication
     * occurs.
     * @see @ref roswasmc_c_contracts
     */
    typedef void (*roswasmc_event_callback)(void* user, unsigned char const* bytes, size_t length);

    /**
     * @brief One caller-owned executor registration; capability and storage must outlive
     * spin_some.
     *
     * @details One caller-owned legacy poll registration borrows a live capability, writable
     * capacity-byte buffer, callback code and user state. Keep all alive through spin_some;
     * consumed
     * records and callback byte views are never replayed or retained implicitly.
     * @par C type contract
     * Use the declared complete value and exact representation. Caller-owned storage and any
     * borrowed
     * members retain the lifetimes documented above; no implicit allocation or ownership
     * duplication
     * occurs.
     * @see roswasmc_spin_some(), roswasmc_event_callback
     * @see @ref roswasmc_c_contracts
     */
    typedef struct roswasmc_poll_task
    {
        roswasmc_capability const* capability;
        unsigned char* buffer;
        size_t capacity;
        roswasmc_event_callback callback;
        void* user;
    } roswasmc_poll_task;

    /**
     * @brief Poll registrations once, bounded by maximum_events; run callbacks on the guest
     * caller.
     * Error 11 is normal idle work. Other errors stop this pass and remain visible.
     * @param[out] delivered Receives the number of callbacks completed, including before a later
     * error.
     * There is no host thread, busy spin loop, sleep, blocking wait, or authority expansion.
     *
     * @details Execute the bounded operation described above with the supplied complete values and
     * stable owners. Inspect its actual result before using output; do not implicitly retry a
     * consumed event or uncertain external operation.
     *
     * @par C storage and execution contract
     * @param[in] tasks Live caller-owned object/storage with the extent and state described above;
     * no implicit allocation or ownership duplication.
     * @param[in] count Number of live entries/elements in the supplied caller-owned table; not a
     * byte capacity.
     * @param[in] maximum_events Finite maximum number of events to deliver during this call.
     * @return Numeric ABI/local error:0 on success. Preserve the documented output/owner state on
     * rejection;95 means unsupported, never a fabricated result.
     * @par Permissions
     * The matching operation-specific aliases must already be explicitly granted; this facade
     * never supplies Host policy, endpoints or native identity.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    ROSWASM_C_INLINE uwvm_ros_u32 roswasmc_spin_some(roswasmc_poll_task const* tasks, size_t count, size_t maximum_events, size_t* delivered)
    {
        size_t i, n = 0;
        if(!delivered || (!tasks && count))
        {
            return UWVM_ROS_INVALID;
        }
        *delivered = 0;
        for(i = 0; i < count && n < maximum_events; ++i)
        {
            roswasmc_result result;
            if(!tasks[i].callback)
            {
                return UWVM_ROS_INVALID;
            }
            result = roswasmc_poll(tasks[i].capability, tasks[i].buffer, tasks[i].capacity);
            if(result.error == UWVM_ROS_AGAIN)
            {
                continue;
            }
            if(result.error)
            {
                return result.error;
            }
            if(!result.has_length || result.length > tasks[i].capacity)
            {
                return UWVM_ROS_INVALID;
            }
            tasks[i].callback(tasks[i].user, tasks[i].buffer, (size_t)result.length);
            *delivered = ++n;
        }
        return UWVM_ROS_SUCCESS;
    }

    /**
     * @brief Service call convenience entry; requires a separately granted matching alias.
     * The caller provides canonical bytes and bounded response storage. No replay occurs.
     *
     * @details Perform one synchronous Service request/response attempt under the Host's finite
     * deadline.
     *
     * @par C storage and execution contract
     * @param[in] cap Initialized capability owner; keep its context/backend alive for the complete
     * operation.
     * @param[in] input Caller-owned byte storage for the complete documented range; keep borrowed
     * decode views alive and respect nonoverlap rules.
     * @param[in] input_length Exact canonical input byte count; no implicit terminator or struct
     * padding is included.
     * @param[out] output Caller-owned byte storage for the complete documented range; keep
     * borrowed decode views alive and respect nonoverlap rules.
     * @param[in] capacity Available caller output capacity in bytes; this is not a Host quota
     * override.
     * @return Actual errno plus the independent length/has_length state. Read length only when
     * has_length is true; errors90/110 never authorize replay.
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    ROSWASM_C_INLINE roswasmc_result
        roswasmc_service_call(roswasmc_capability const* cap, void const* input, size_t input_length, void* output, size_t capacity)
    {
        return roswasmc_request(cap, ROSWASMC_SERVICE_CALL, input, input_length, output, capacity);
    }

    /**
     * @brief Service respond convenience entry; requires a separately granted matching alias.
     * The caller provides canonical bytes and bounded response storage. No replay occurs.
     *
     * @details Respond once to an owned live request ticket using a separate response capability.
     *
     * @par C storage and execution contract
     * @param[in] cap Initialized capability owner; keep its context/backend alive for the complete
     * operation.
     * @param[in] input Caller-owned byte storage for the complete documented range; keep borrowed
     * decode views alive and respect nonoverlap rules.
     * @param[in] input_length Exact canonical input byte count; no implicit terminator or struct
     * padding is included.
     * @param[out] output Caller-owned byte storage for the complete documented range; keep
     * borrowed decode views alive and respect nonoverlap rules.
     * @param[in] capacity Available caller output capacity in bytes; this is not a Host quota
     * override.
     * @return Actual errno plus the independent length/has_length state. Read length only when
     * has_length is true; errors90/110 never authorize replay.
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    ROSWASM_C_INLINE roswasmc_result
        roswasmc_service_respond(roswasmc_capability const* cap, void const* input, size_t input_length, void* output, size_t capacity)
    {
        return roswasmc_request(cap, ROSWASMC_SERVICE_RESPOND, input, input_length, output, capacity);
    }

    /**
     * @brief Action send goal convenience entry; requires a separately granted matching alias.
     * The caller provides canonical bytes and bounded response storage. No replay occurs.
     *
     * @details Submit one complete canonical goal and return its live native-correlated goal ID.
     *
     * @par C storage and execution contract
     * @param[in] cap Initialized capability owner; keep its context/backend alive for the complete
     * operation.
     * @param[in] input Caller-owned byte storage for the complete documented range; keep borrowed
     * decode views alive and respect nonoverlap rules.
     * @param[in] input_length Exact canonical input byte count; no implicit terminator or struct
     * padding is included.
     * @param[out] output Caller-owned byte storage for the complete documented range; keep
     * borrowed decode views alive and respect nonoverlap rules.
     * @param[in] capacity Available caller output capacity in bytes; this is not a Host quota
     * override.
     * @return Actual errno plus the independent length/has_length state. Read length only when
     * has_length is true; errors90/110 never authorize replay.
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    ROSWASM_C_INLINE roswasmc_result
        roswasmc_action_send_goal(roswasmc_capability const* cap, void const* input, size_t input_length, void* output, size_t capacity)
    {
        return roswasmc_request(cap, ROSWASMC_ACTION_SEND_GOAL, input, input_length, output, capacity);
    }

    /**
     * @brief Action cancel own goal convenience entry; requires a separately granted matching
     * alias.
     * The caller provides canonical bytes and bounded response storage. No replay occurs.
     *
     * @details Request cancellation only for the selected source owner's live goal.
     *
     * @par C storage and execution contract
     * @param[in] cap Initialized capability owner; keep its context/backend alive for the complete
     * operation.
     * @param[in] input Caller-owned byte storage for the complete documented range; keep borrowed
     * decode views alive and respect nonoverlap rules.
     * @param[in] input_length Exact canonical input byte count; no implicit terminator or struct
     * padding is included.
     * @param[out] output Caller-owned byte storage for the complete documented range; keep
     * borrowed decode views alive and respect nonoverlap rules.
     * @param[in] capacity Available caller output capacity in bytes; this is not a Host quota
     * override.
     * @return Actual errno plus the independent length/has_length state. Read length only when
     * has_length is true; errors90/110 never authorize replay.
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    ROSWASM_C_INLINE roswasmc_result
        roswasmc_action_cancel_own_goal(roswasmc_capability const* cap, void const* input, size_t input_length, void* output, size_t capacity)
    {
        return roswasmc_request(cap, ROSWASMC_ACTION_CANCEL_OWN_GOAL, input, input_length, output, capacity);
    }

    /**
     * @brief Action cancel any goal convenience entry; requires a separately granted matching
     * alias.
     * The caller provides canonical bytes and bounded response storage. No replay occurs.
     *
     * @details Use the stronger separately granted cancellation role; zero selects all only where
     * documented.
     *
     * @par C storage and execution contract
     * @param[in] cap Initialized capability owner; keep its context/backend alive for the complete
     * operation.
     * @param[in] input Caller-owned byte storage for the complete documented range; keep borrowed
     * decode views alive and respect nonoverlap rules.
     * @param[in] input_length Exact canonical input byte count; no implicit terminator or struct
     * padding is included.
     * @param[out] output Caller-owned byte storage for the complete documented range; keep
     * borrowed decode views alive and respect nonoverlap rules.
     * @param[in] capacity Available caller output capacity in bytes; this is not a Host quota
     * override.
     * @return Actual errno plus the independent length/has_length state. Read length only when
     * has_length is true; errors90/110 never authorize replay.
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    ROSWASM_C_INLINE roswasmc_result
        roswasmc_action_cancel_any_goal(roswasmc_capability const* cap, void const* input, size_t input_length, void* output, size_t capacity)
    {
        return roswasmc_request(cap, ROSWASMC_ACTION_CANCEL_ANY_GOAL, input, input_length, output, capacity);
    }

    /**
     * @brief Action receive feedback convenience entry; requires a separately granted matching
     * alias.
     * The caller provides canonical bytes and bounded response storage. No replay occurs.
     *
     * @details Receive one feedback record for the selected live goal without obtaining result
     * rights.
     *
     * @par C storage and execution contract
     * @param[in] cap Initialized capability owner; keep its context/backend alive for the complete
     * operation.
     * @param[in] input Caller-owned byte storage for the complete documented range; keep borrowed
     * decode views alive and respect nonoverlap rules.
     * @param[in] input_length Exact canonical input byte count; no implicit terminator or struct
     * padding is included.
     * @param[out] output Caller-owned byte storage for the complete documented range; keep
     * borrowed decode views alive and respect nonoverlap rules.
     * @param[in] capacity Available caller output capacity in bytes; this is not a Host quota
     * override.
     * @return Actual errno plus the independent length/has_length state. Read length only when
     * has_length is true; errors90/110 never authorize replay.
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    ROSWASM_C_INLINE roswasmc_result
        roswasmc_action_receive_feedback(roswasmc_capability const* cap, void const* input, size_t input_length, void* output, size_t capacity)
    {
        return roswasmc_request(cap, ROSWASMC_ACTION_RECEIVE_FEEDBACK, input, input_length, output, capacity);
    }

    /**
     * @brief Action receive result convenience entry; requires a separately granted matching
     * alias.
     * The caller provides canonical bytes and bounded response storage. No replay occurs.
     *
     * @details Receive one terminal result for the selected goal; do not replay a consumed result.
     *
     * @par C storage and execution contract
     * @param[in] cap Initialized capability owner; keep its context/backend alive for the complete
     * operation.
     * @param[in] input Caller-owned byte storage for the complete documented range; keep borrowed
     * decode views alive and respect nonoverlap rules.
     * @param[in] input_length Exact canonical input byte count; no implicit terminator or struct
     * padding is included.
     * @param[out] output Caller-owned byte storage for the complete documented range; keep
     * borrowed decode views alive and respect nonoverlap rules.
     * @param[in] capacity Available caller output capacity in bytes; this is not a Host quota
     * override.
     * @return Actual errno plus the independent length/has_length state. Read length only when
     * has_length is true; errors90/110 never authorize replay.
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    ROSWASM_C_INLINE roswasmc_result
        roswasmc_action_receive_result(roswasmc_capability const* cap, void const* input, size_t input_length, void* output, size_t capacity)
    {
        return roswasmc_request(cap, ROSWASMC_ACTION_RECEIVE_RESULT, input, input_length, output, capacity);
    }

    /**
     * @brief Action advertise convenience entry; requires a separately granted matching alias.
     * The caller provides canonical bytes and bounded response storage. No replay occurs.
     *
     * @details Activate one granted Action server queue without accepting a goal implicitly.
     *
     * @par C storage and execution contract
     * @param[in] cap Initialized capability owner; keep its context/backend alive for the complete
     * operation.
     * @param[in] input Caller-owned byte storage for the complete documented range; keep borrowed
     * decode views alive and respect nonoverlap rules.
     * @param[in] input_length Exact canonical input byte count; no implicit terminator or struct
     * padding is included.
     * @param[out] output Caller-owned byte storage for the complete documented range; keep
     * borrowed decode views alive and respect nonoverlap rules.
     * @param[in] capacity Available caller output capacity in bytes; this is not a Host quota
     * override.
     * @return Actual errno plus the independent length/has_length state. Read length only when
     * has_length is true; errors90/110 never authorize replay.
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    ROSWASM_C_INLINE roswasmc_result
        roswasmc_action_advertise(roswasmc_capability const* cap, void const* input, size_t input_length, void* output, size_t capacity)
    {
        return roswasmc_request(cap, ROSWASMC_ACTION_ADVERTISE, input, input_length, output, capacity);
    }

    /**
     * @brief Action respond convenience entry; requires a separately granted matching alias.
     * The caller provides canonical bytes and bounded response storage. No replay occurs.
     *
     * @details Send one complete feedback/terminal record for an owned incoming goal.
     *
     * @par C storage and execution contract
     * @param[in] cap Initialized capability owner; keep its context/backend alive for the complete
     * operation.
     * @param[in] input Caller-owned byte storage for the complete documented range; keep borrowed
     * decode views alive and respect nonoverlap rules.
     * @param[in] input_length Exact canonical input byte count; no implicit terminator or struct
     * padding is included.
     * @param[out] output Caller-owned byte storage for the complete documented range; keep
     * borrowed decode views alive and respect nonoverlap rules.
     * @param[in] capacity Available caller output capacity in bytes; this is not a Host quota
     * override.
     * @return Actual errno plus the independent length/has_length state. Read length only when
     * has_length is true; errors90/110 never authorize replay.
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    ROSWASM_C_INLINE roswasmc_result
        roswasmc_action_respond(roswasmc_capability const* cap, void const* input, size_t input_length, void* output, size_t capacity)
    {
        return roswasmc_request(cap, ROSWASMC_ACTION_RESPOND, input, input_length, output, capacity);
    }

    /**
     * @brief Tf lookup convenience entry; requires a separately granted matching alias.
     * The caller provides canonical bytes and bounded response storage. No replay occurs.
     *
     * @details Perform one bounded lookup for the transform and time fixed by the granted
     * resource.
     *
     * @par C storage and execution contract
     * @param[in] cap Initialized capability owner; keep its context/backend alive for the complete
     * operation.
     * @param[in] input Caller-owned byte storage for the complete documented range; keep borrowed
     * decode views alive and respect nonoverlap rules.
     * @param[in] input_length Exact canonical input byte count; no implicit terminator or struct
     * padding is included.
     * @param[out] output Caller-owned byte storage for the complete documented range; keep
     * borrowed decode views alive and respect nonoverlap rules.
     * @param[in] capacity Available caller output capacity in bytes; this is not a Host quota
     * override.
     * @return Actual errno plus the independent length/has_length state. Read length only when
     * has_length is true; errors90/110 never authorize replay.
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    ROSWASM_C_INLINE roswasmc_result roswasmc_tf_lookup(roswasmc_capability const* cap, void const* input, size_t input_length, void* output, size_t capacity)
    {
        return roswasmc_request(cap, ROSWASMC_TF_LOOKUP, input, input_length, output, capacity);
    }

    /**
     * @brief Tf broadcast convenience entry; requires a separately granted matching alias.
     * The caller provides canonical bytes and bounded response storage. No replay occurs.
     *
     * @details Broadcast one complete validated canonical transform through its own granted alias.
     *
     * @par C storage and execution contract
     * @param[in] cap Initialized capability owner; keep its context/backend alive for the complete
     * operation.
     * @param[in] input Caller-owned byte storage for the complete documented range; keep borrowed
     * decode views alive and respect nonoverlap rules.
     * @param[in] input_length Exact canonical input byte count; no implicit terminator or struct
     * padding is included.
     * @param[out] output Caller-owned byte storage for the complete documented range; keep
     * borrowed decode views alive and respect nonoverlap rules.
     * @param[in] capacity Available caller output capacity in bytes; this is not a Host quota
     * override.
     * @return Actual errno plus the independent length/has_length state. Read length only when
     * has_length is true; errors90/110 never authorize replay.
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    ROSWASM_C_INLINE roswasmc_result
        roswasmc_tf_broadcast(roswasmc_capability const* cap, void const* input, size_t input_length, void* output, size_t capacity)
    {
        return roswasmc_request(cap, ROSWASMC_TF_BROADCAST, input, input_length, output, capacity);
    }

    /**
     * @brief Parameter get convenience entry; requires a separately granted matching alias.
     * The caller provides canonical bytes and bounded response storage. No replay occurs.
     *
     * @details Read the granted parameter's complete tagged canonical value.
     *
     * @par C storage and execution contract
     * @param[in] cap Initialized capability owner; keep its context/backend alive for the complete
     * operation.
     * @param[in] input Caller-owned byte storage for the complete documented range; keep borrowed
     * decode views alive and respect nonoverlap rules.
     * @param[in] input_length Exact canonical input byte count; no implicit terminator or struct
     * padding is included.
     * @param[out] output Caller-owned byte storage for the complete documented range; keep
     * borrowed decode views alive and respect nonoverlap rules.
     * @param[in] capacity Available caller output capacity in bytes; this is not a Host quota
     * override.
     * @return Actual errno plus the independent length/has_length state. Read length only when
     * has_length is true; errors90/110 never authorize replay.
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    ROSWASM_C_INLINE roswasmc_result
        roswasmc_parameter_get(roswasmc_capability const* cap, void const* input, size_t input_length, void* output, size_t capacity)
    {
        return roswasmc_request(cap, ROSWASMC_PARAMETER_GET, input, input_length, output, capacity);
    }

    /**
     * @brief Parameter set convenience entry; requires a separately granted matching alias.
     * The caller provides canonical bytes and bounded response storage. No replay occurs.
     *
     * @details Set one complete canonical value; the Host validates the original native type and
     * range.
     *
     * @par C storage and execution contract
     * @param[in] cap Initialized capability owner; keep its context/backend alive for the complete
     * operation.
     * @param[in] input Caller-owned byte storage for the complete documented range; keep borrowed
     * decode views alive and respect nonoverlap rules.
     * @param[in] input_length Exact canonical input byte count; no implicit terminator or struct
     * padding is included.
     * @param[out] output Caller-owned byte storage for the complete documented range; keep
     * borrowed decode views alive and respect nonoverlap rules.
     * @param[in] capacity Available caller output capacity in bytes; this is not a Host quota
     * override.
     * @return Actual errno plus the independent length/has_length state. Read length only when
     * has_length is true; errors90/110 never authorize replay.
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    ROSWASM_C_INLINE roswasmc_result
        roswasmc_parameter_set(roswasmc_capability const* cap, void const* input, size_t input_length, void* output, size_t capacity)
    {
        return roswasmc_request(cap, ROSWASMC_PARAMETER_SET, input, input_length, output, capacity);
    }

    /**
     * @brief Parameter delete convenience entry; requires a separately granted matching alias.
     * The caller provides canonical bytes and bounded response storage. No replay occurs.
     *
     * @details Delete the granted parameter once; this does not authorize mutation of another
     * name.
     *
     * @par C storage and execution contract
     * @param[in] cap Initialized capability owner; keep its context/backend alive for the complete
     * operation.
     * @param[in] input Caller-owned byte storage for the complete documented range; keep borrowed
     * decode views alive and respect nonoverlap rules.
     * @param[in] input_length Exact canonical input byte count; no implicit terminator or struct
     * padding is included.
     * @param[out] output Caller-owned byte storage for the complete documented range; keep
     * borrowed decode views alive and respect nonoverlap rules.
     * @param[in] capacity Available caller output capacity in bytes; this is not a Host quota
     * override.
     * @return Actual errno plus the independent length/has_length state. Read length only when
     * has_length is true; errors90/110 never authorize replay.
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    ROSWASM_C_INLINE roswasmc_result
        roswasmc_parameter_delete(roswasmc_capability const* cap, void const* input, size_t input_length, void* output, size_t capacity)
    {
        return roswasmc_request(cap, ROSWASMC_PARAMETER_DELETE, input, input_length, output, capacity);
    }

    /**
     * @brief Parameter exists convenience entry; requires a separately granted matching alias.
     * The caller provides canonical bytes and bounded response storage. No replay occurs.
     *
     * @details Observe whether the granted parameter exists without mutation rights.
     *
     * @par C storage and execution contract
     * @param[in] cap Initialized capability owner; keep its context/backend alive for the complete
     * operation.
     * @param[in] input Caller-owned byte storage for the complete documented range; keep borrowed
     * decode views alive and respect nonoverlap rules.
     * @param[in] input_length Exact canonical input byte count; no implicit terminator or struct
     * padding is included.
     * @param[out] output Caller-owned byte storage for the complete documented range; keep
     * borrowed decode views alive and respect nonoverlap rules.
     * @param[in] capacity Available caller output capacity in bytes; this is not a Host quota
     * override.
     * @return Actual errno plus the independent length/has_length state. Read length only when
     * has_length is true; errors90/110 never authorize replay.
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    ROSWASM_C_INLINE roswasmc_result
        roswasmc_parameter_exists(roswasmc_capability const* cap, void const* input, size_t input_length, void* output, size_t capacity)
    {
        return roswasmc_request(cap, ROSWASMC_PARAMETER_EXISTS, input, input_length, output, capacity);
    }

    /**
     * @brief Parameter list convenience entry; requires a separately granted matching alias.
     * The caller provides canonical bytes and bounded response storage. No replay occurs.
     *
     * @details List the finite parameter view permitted by the Host resource.
     *
     * @par C storage and execution contract
     * @param[in] cap Initialized capability owner; keep its context/backend alive for the complete
     * operation.
     * @param[in] input Caller-owned byte storage for the complete documented range; keep borrowed
     * decode views alive and respect nonoverlap rules.
     * @param[in] input_length Exact canonical input byte count; no implicit terminator or struct
     * padding is included.
     * @param[out] output Caller-owned byte storage for the complete documented range; keep
     * borrowed decode views alive and respect nonoverlap rules.
     * @param[in] capacity Available caller output capacity in bytes; this is not a Host quota
     * override.
     * @return Actual errno plus the independent length/has_length state. Read length only when
     * has_length is true; errors90/110 never authorize replay.
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    ROSWASM_C_INLINE roswasmc_result
        roswasmc_parameter_list(roswasmc_capability const* cap, void const* input, size_t input_length, void* output, size_t capacity)
    {
        return roswasmc_request(cap, ROSWASMC_PARAMETER_LIST, input, input_length, output, capacity);
    }

    /**
     * @brief Parameter search convenience entry; requires a separately granted matching alias.
     * The caller provides canonical bytes and bounded response storage. No replay occurs.
     *
     * @details Perform the ROS1 search operation; unsupported ROS2 dispatch remains error95.
     *
     * @par C storage and execution contract
     * @param[in] cap Initialized capability owner; keep its context/backend alive for the complete
     * operation.
     * @param[in] input Caller-owned byte storage for the complete documented range; keep borrowed
     * decode views alive and respect nonoverlap rules.
     * @param[in] input_length Exact canonical input byte count; no implicit terminator or struct
     * padding is included.
     * @param[out] output Caller-owned byte storage for the complete documented range; keep
     * borrowed decode views alive and respect nonoverlap rules.
     * @param[in] capacity Available caller output capacity in bytes; this is not a Host quota
     * override.
     * @return Actual errno plus the independent length/has_length state. Read length only when
     * has_length is true; errors90/110 never authorize replay.
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    ROSWASM_C_INLINE roswasmc_result
        roswasmc_parameter_search(roswasmc_capability const* cap, void const* input, size_t input_length, void* output, size_t capacity)
    {
        return roswasmc_request(cap, ROSWASMC_PARAMETER_SEARCH, input, input_length, output, capacity);
    }

    /**
     * @brief Parameter describe convenience entry; requires a separately granted matching alias.
     * The caller provides canonical bytes and bounded response storage. No replay occurs.
     *
     * @details Read ROS2 parameter metadata; unsupported ROS1 dispatch remains error95.
     *
     * @par C storage and execution contract
     * @param[in] cap Initialized capability owner; keep its context/backend alive for the complete
     * operation.
     * @param[in] input Caller-owned byte storage for the complete documented range; keep borrowed
     * decode views alive and respect nonoverlap rules.
     * @param[in] input_length Exact canonical input byte count; no implicit terminator or struct
     * padding is included.
     * @param[out] output Caller-owned byte storage for the complete documented range; keep
     * borrowed decode views alive and respect nonoverlap rules.
     * @param[in] capacity Available caller output capacity in bytes; this is not a Host quota
     * override.
     * @return Actual errno plus the independent length/has_length state. Read length only when
     * has_length is true; errors90/110 never authorize replay.
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    ROSWASM_C_INLINE roswasmc_result
        roswasmc_parameter_describe(roswasmc_capability const* cap, void const* input, size_t input_length, void* output, size_t capacity)
    {
        return roswasmc_request(cap, ROSWASMC_PARAMETER_DESCRIBE, input, input_length, output, capacity);
    }

    /**
     * @brief Parameter declare convenience entry; requires a separately granted matching alias.
     * The caller provides canonical bytes and bounded response storage. No replay occurs.
     *
     * @details Declare the granted ROS2 parameter with its complete tagged value.
     *
     * @par C storage and execution contract
     * @param[in] cap Initialized capability owner; keep its context/backend alive for the complete
     * operation.
     * @param[in] input Caller-owned byte storage for the complete documented range; keep borrowed
     * decode views alive and respect nonoverlap rules.
     * @param[in] input_length Exact canonical input byte count; no implicit terminator or struct
     * padding is included.
     * @param[out] output Caller-owned byte storage for the complete documented range; keep
     * borrowed decode views alive and respect nonoverlap rules.
     * @param[in] capacity Available caller output capacity in bytes; this is not a Host quota
     * override.
     * @return Actual errno plus the independent length/has_length state. Read length only when
     * has_length is true; errors90/110 never authorize replay.
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    ROSWASM_C_INLINE roswasmc_result
        roswasmc_parameter_declare(roswasmc_capability const* cap, void const* input, size_t input_length, void* output, size_t capacity)
    {
        return roswasmc_request(cap, ROSWASMC_PARAMETER_DECLARE, input, input_length, output, capacity);
    }

    /**
     * @brief Parameter undeclare convenience entry; requires a separately granted matching alias.
     * The caller provides canonical bytes and bounded response storage. No replay occurs.
     *
     * @details Undeclare the granted ROS2 parameter without broadening its namespace.
     *
     * @par C storage and execution contract
     * @param[in] cap Initialized capability owner; keep its context/backend alive for the complete
     * operation.
     * @param[in] input Caller-owned byte storage for the complete documented range; keep borrowed
     * decode views alive and respect nonoverlap rules.
     * @param[in] input_length Exact canonical input byte count; no implicit terminator or struct
     * padding is included.
     * @param[out] output Caller-owned byte storage for the complete documented range; keep
     * borrowed decode views alive and respect nonoverlap rules.
     * @param[in] capacity Available caller output capacity in bytes; this is not a Host quota
     * override.
     * @return Actual errno plus the independent length/has_length state. Read length only when
     * has_length is true; errors90/110 never authorize replay.
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    ROSWASM_C_INLINE roswasmc_result
        roswasmc_parameter_undeclare(roswasmc_capability const* cap, void const* input, size_t input_length, void* output, size_t capacity)
    {
        return roswasmc_request(cap, ROSWASMC_PARAMETER_UNDECLARE, input, input_length, output, capacity);
    }

    /**
     * @brief Graph inspect topic convenience entry; requires a separately granted matching alias.
     * The caller provides canonical bytes and bounded response storage. No replay occurs.
     *
     * @details Inspect the single topic view permitted by the graph resource.
     *
     * @par C storage and execution contract
     * @param[in] cap Initialized capability owner; keep its context/backend alive for the complete
     * operation.
     * @param[in] input Caller-owned byte storage for the complete documented range; keep borrowed
     * decode views alive and respect nonoverlap rules.
     * @param[in] input_length Exact canonical input byte count; no implicit terminator or struct
     * padding is included.
     * @param[out] output Caller-owned byte storage for the complete documented range; keep
     * borrowed decode views alive and respect nonoverlap rules.
     * @param[in] capacity Available caller output capacity in bytes; this is not a Host quota
     * override.
     * @return Actual errno plus the independent length/has_length state. Read length only when
     * has_length is true; errors90/110 never authorize replay.
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    ROSWASM_C_INLINE roswasmc_result
        roswasmc_graph_inspect_topic(roswasmc_capability const* cap, void const* input, size_t input_length, void* output, size_t capacity)
    {
        return roswasmc_request(cap, ROSWASMC_GRAPH_INSPECT_TOPIC, input, input_length, output, capacity);
    }

    /**
     * @brief Graph inspect node convenience entry; requires a separately granted matching alias.
     * The caller provides canonical bytes and bounded response storage. No replay occurs.
     *
     * @details Inspect the single node view permitted by the graph resource.
     *
     * @par C storage and execution contract
     * @param[in] cap Initialized capability owner; keep its context/backend alive for the complete
     * operation.
     * @param[in] input Caller-owned byte storage for the complete documented range; keep borrowed
     * decode views alive and respect nonoverlap rules.
     * @param[in] input_length Exact canonical input byte count; no implicit terminator or struct
     * padding is included.
     * @param[out] output Caller-owned byte storage for the complete documented range; keep
     * borrowed decode views alive and respect nonoverlap rules.
     * @param[in] capacity Available caller output capacity in bytes; this is not a Host quota
     * override.
     * @return Actual errno plus the independent length/has_length state. Read length only when
     * has_length is true; errors90/110 never authorize replay.
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    ROSWASM_C_INLINE roswasmc_result
        roswasmc_graph_inspect_node(roswasmc_capability const* cap, void const* input, size_t input_length, void* output, size_t capacity)
    {
        return roswasmc_request(cap, ROSWASMC_GRAPH_INSPECT_NODE, input, input_length, output, capacity);
    }

    /**
     * @brief Graph inspect service convenience entry; requires a separately granted matching
     * alias.
     * The caller provides canonical bytes and bounded response storage. No replay occurs.
     *
     * @details Inspect the single Service view permitted by the graph resource.
     *
     * @par C storage and execution contract
     * @param[in] cap Initialized capability owner; keep its context/backend alive for the complete
     * operation.
     * @param[in] input Caller-owned byte storage for the complete documented range; keep borrowed
     * decode views alive and respect nonoverlap rules.
     * @param[in] input_length Exact canonical input byte count; no implicit terminator or struct
     * padding is included.
     * @param[out] output Caller-owned byte storage for the complete documented range; keep
     * borrowed decode views alive and respect nonoverlap rules.
     * @param[in] capacity Available caller output capacity in bytes; this is not a Host quota
     * override.
     * @return Actual errno plus the independent length/has_length state. Read length only when
     * has_length is true; errors90/110 never authorize replay.
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    ROSWASM_C_INLINE roswasmc_result
        roswasmc_graph_inspect_service(roswasmc_capability const* cap, void const* input, size_t input_length, void* output, size_t capacity)
    {
        return roswasmc_request(cap, ROSWASMC_GRAPH_INSPECT_SERVICE, input, input_length, output, capacity);
    }

    /**
     * @brief Graph inspect action convenience entry; requires a separately granted matching alias.
     * The caller provides canonical bytes and bounded response storage. No replay occurs.
     *
     * @details Inspect a ROS2 Action view; unsupported ROS1 dispatch remains error95.
     *
     * @par C storage and execution contract
     * @param[in] cap Initialized capability owner; keep its context/backend alive for the complete
     * operation.
     * @param[in] input Caller-owned byte storage for the complete documented range; keep borrowed
     * decode views alive and respect nonoverlap rules.
     * @param[in] input_length Exact canonical input byte count; no implicit terminator or struct
     * padding is included.
     * @param[out] output Caller-owned byte storage for the complete documented range; keep
     * borrowed decode views alive and respect nonoverlap rules.
     * @param[in] capacity Available caller output capacity in bytes; this is not a Host quota
     * override.
     * @return Actual errno plus the independent length/has_length state. Read length only when
     * has_length is true; errors90/110 never authorize replay.
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    ROSWASM_C_INLINE roswasmc_result
        roswasmc_graph_inspect_action(roswasmc_capability const* cap, void const* input, size_t input_length, void* output, size_t capacity)
    {
        return roswasmc_request(cap, ROSWASMC_GRAPH_INSPECT_ACTION, input, input_length, output, capacity);
    }

    /**
     * @brief Graph list topics convenience entry; requires a separately granted matching alias.
     * The caller provides canonical bytes and bounded response storage. No replay occurs.
     *
     * @details Copy the bounded topic listing permitted by the graph resource.
     *
     * @par C storage and execution contract
     * @param[in] cap Initialized capability owner; keep its context/backend alive for the complete
     * operation.
     * @param[in] input Caller-owned byte storage for the complete documented range; keep borrowed
     * decode views alive and respect nonoverlap rules.
     * @param[in] input_length Exact canonical input byte count; no implicit terminator or struct
     * padding is included.
     * @param[out] output Caller-owned byte storage for the complete documented range; keep
     * borrowed decode views alive and respect nonoverlap rules.
     * @param[in] capacity Available caller output capacity in bytes; this is not a Host quota
     * override.
     * @return Actual errno plus the independent length/has_length state. Read length only when
     * has_length is true; errors90/110 never authorize replay.
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    ROSWASM_C_INLINE roswasmc_result
        roswasmc_graph_list_topics(roswasmc_capability const* cap, void const* input, size_t input_length, void* output, size_t capacity)
    {
        return roswasmc_request(cap, ROSWASMC_GRAPH_LIST_TOPICS, input, input_length, output, capacity);
    }

    /**
     * @brief Graph list nodes convenience entry; requires a separately granted matching alias.
     * The caller provides canonical bytes and bounded response storage. No replay occurs.
     *
     * @details Copy the bounded node listing permitted by the graph resource.
     *
     * @par C storage and execution contract
     * @param[in] cap Initialized capability owner; keep its context/backend alive for the complete
     * operation.
     * @param[in] input Caller-owned byte storage for the complete documented range; keep borrowed
     * decode views alive and respect nonoverlap rules.
     * @param[in] input_length Exact canonical input byte count; no implicit terminator or struct
     * padding is included.
     * @param[out] output Caller-owned byte storage for the complete documented range; keep
     * borrowed decode views alive and respect nonoverlap rules.
     * @param[in] capacity Available caller output capacity in bytes; this is not a Host quota
     * override.
     * @return Actual errno plus the independent length/has_length state. Read length only when
     * has_length is true; errors90/110 never authorize replay.
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    ROSWASM_C_INLINE roswasmc_result
        roswasmc_graph_list_nodes(roswasmc_capability const* cap, void const* input, size_t input_length, void* output, size_t capacity)
    {
        return roswasmc_request(cap, ROSWASMC_GRAPH_LIST_NODES, input, input_length, output, capacity);
    }

    /**
     * @brief Graph list services convenience entry; requires a separately granted matching alias.
     * The caller provides canonical bytes and bounded response storage. No replay occurs.
     *
     * @details Copy the bounded Service listing permitted by the graph resource.
     *
     * @par C storage and execution contract
     * @param[in] cap Initialized capability owner; keep its context/backend alive for the complete
     * operation.
     * @param[in] input Caller-owned byte storage for the complete documented range; keep borrowed
     * decode views alive and respect nonoverlap rules.
     * @param[in] input_length Exact canonical input byte count; no implicit terminator or struct
     * padding is included.
     * @param[out] output Caller-owned byte storage for the complete documented range; keep
     * borrowed decode views alive and respect nonoverlap rules.
     * @param[in] capacity Available caller output capacity in bytes; this is not a Host quota
     * override.
     * @return Actual errno plus the independent length/has_length state. Read length only when
     * has_length is true; errors90/110 never authorize replay.
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    ROSWASM_C_INLINE roswasmc_result
        roswasmc_graph_list_services(roswasmc_capability const* cap, void const* input, size_t input_length, void* output, size_t capacity)
    {
        return roswasmc_request(cap, ROSWASMC_GRAPH_LIST_SERVICES, input, input_length, output, capacity);
    }

    /**
     * @brief Lifecycle get state convenience entry; requires a separately granted matching alias.
     * The caller provides canonical bytes and bounded response storage. No replay occurs.
     *
     * @details Read one ROS2 lifecycle state and its complete canonical label.
     *
     * @par C storage and execution contract
     * @param[in] cap Initialized capability owner; keep its context/backend alive for the complete
     * operation.
     * @param[in] input Caller-owned byte storage for the complete documented range; keep borrowed
     * decode views alive and respect nonoverlap rules.
     * @param[in] input_length Exact canonical input byte count; no implicit terminator or struct
     * padding is included.
     * @param[out] output Caller-owned byte storage for the complete documented range; keep
     * borrowed decode views alive and respect nonoverlap rules.
     * @param[in] capacity Available caller output capacity in bytes; this is not a Host quota
     * override.
     * @return Actual errno plus the independent length/has_length state. Read length only when
     * has_length is true; errors90/110 never authorize replay.
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    ROSWASM_C_INLINE roswasmc_result
        roswasmc_lifecycle_get_state(roswasmc_capability const* cap, void const* input, size_t input_length, void* output, size_t capacity)
    {
        return roswasmc_request(cap, ROSWASMC_LIFECYCLE_GET_STATE, input, input_length, output, capacity);
    }

    /**
     * @brief Lifecycle change state convenience entry; requires a separately granted matching
     * alias.
     * The caller provides canonical bytes and bounded response storage. No replay occurs.
     *
     * @details Attempt the transition fixed by the ROS2 grant once and return native acceptance.
     *
     * @par C storage and execution contract
     * @param[in] cap Initialized capability owner; keep its context/backend alive for the complete
     * operation.
     * @param[in] input Caller-owned byte storage for the complete documented range; keep borrowed
     * decode views alive and respect nonoverlap rules.
     * @param[in] input_length Exact canonical input byte count; no implicit terminator or struct
     * padding is included.
     * @param[out] output Caller-owned byte storage for the complete documented range; keep
     * borrowed decode views alive and respect nonoverlap rules.
     * @param[in] capacity Available caller output capacity in bytes; this is not a Host quota
     * override.
     * @return Actual errno plus the independent length/has_length state. Read length only when
     * has_length is true; errors90/110 never authorize replay.
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    ROSWASM_C_INLINE roswasmc_result
        roswasmc_lifecycle_change_state(roswasmc_capability const* cap, void const* input, size_t input_length, void* output, size_t capacity)
    {
        return roswasmc_request(cap, ROSWASMC_LIFECYCLE_CHANGE_STATE, input, input_length, output, capacity);
    }

    /**
     * @brief Time read ros convenience entry; requires a separately granted matching alias.
     * The caller provides canonical bytes and bounded response storage. No replay occurs.
     *
     * @details Read the permitted ROS-domain time snapshot in unsigned nanoseconds.
     *
     * @par C storage and execution contract
     * @param[in] cap Initialized capability owner; keep its context/backend alive for the complete
     * operation.
     * @param[in] input Caller-owned byte storage for the complete documented range; keep borrowed
     * decode views alive and respect nonoverlap rules.
     * @param[in] input_length Exact canonical input byte count; no implicit terminator or struct
     * padding is included.
     * @param[out] output Caller-owned byte storage for the complete documented range; keep
     * borrowed decode views alive and respect nonoverlap rules.
     * @param[in] capacity Available caller output capacity in bytes; this is not a Host quota
     * override.
     * @return Actual errno plus the independent length/has_length state. Read length only when
     * has_length is true; errors90/110 never authorize replay.
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    ROSWASM_C_INLINE roswasmc_result
        roswasmc_time_read_ros(roswasmc_capability const* cap, void const* input, size_t input_length, void* output, size_t capacity)
    {
        return roswasmc_request(cap, ROSWASMC_TIME_READ_ROS, input, input_length, output, capacity);
    }

    /**
     * @brief Time read wall convenience entry; requires a separately granted matching alias.
     * The caller provides canonical bytes and bounded response storage. No replay occurs.
     *
     * @details Read the permitted wall-clock snapshot in unsigned nanoseconds.
     *
     * @par C storage and execution contract
     * @param[in] cap Initialized capability owner; keep its context/backend alive for the complete
     * operation.
     * @param[in] input Caller-owned byte storage for the complete documented range; keep borrowed
     * decode views alive and respect nonoverlap rules.
     * @param[in] input_length Exact canonical input byte count; no implicit terminator or struct
     * padding is included.
     * @param[out] output Caller-owned byte storage for the complete documented range; keep
     * borrowed decode views alive and respect nonoverlap rules.
     * @param[in] capacity Available caller output capacity in bytes; this is not a Host quota
     * override.
     * @return Actual errno plus the independent length/has_length state. Read length only when
     * has_length is true; errors90/110 never authorize replay.
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    ROSWASM_C_INLINE roswasmc_result
        roswasmc_time_read_wall(roswasmc_capability const* cap, void const* input, size_t input_length, void* output, size_t capacity)
    {
        return roswasmc_request(cap, ROSWASMC_TIME_READ_WALL, input, input_length, output, capacity);
    }

    /**
     * @brief Time read system convenience entry; requires a separately granted matching alias.
     * The caller provides canonical bytes and bounded response storage. No replay occurs.
     *
     * @details Read the permitted ROS2 system-clock snapshot in unsigned nanoseconds.
     *
     * @par C storage and execution contract
     * @param[in] cap Initialized capability owner; keep its context/backend alive for the complete
     * operation.
     * @param[in] input Caller-owned byte storage for the complete documented range; keep borrowed
     * decode views alive and respect nonoverlap rules.
     * @param[in] input_length Exact canonical input byte count; no implicit terminator or struct
     * padding is included.
     * @param[out] output Caller-owned byte storage for the complete documented range; keep
     * borrowed decode views alive and respect nonoverlap rules.
     * @param[in] capacity Available caller output capacity in bytes; this is not a Host quota
     * override.
     * @return Actual errno plus the independent length/has_length state. Read length only when
     * has_length is true; errors90/110 never authorize replay.
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    ROSWASM_C_INLINE roswasmc_result
        roswasmc_time_read_system(roswasmc_capability const* cap, void const* input, size_t input_length, void* output, size_t capacity)
    {
        return roswasmc_request(cap, ROSWASMC_TIME_READ_SYSTEM, input, input_length, output, capacity);
    }

    /**
     * @brief Time read steady convenience entry; requires a separately granted matching alias.
     * The caller provides canonical bytes and bounded response storage. No replay occurs.
     *
     * @details Read the permitted ROS2 steady-clock snapshot in unsigned nanoseconds.
     *
     * @par C storage and execution contract
     * @param[in] cap Initialized capability owner; keep its context/backend alive for the complete
     * operation.
     * @param[in] input Caller-owned byte storage for the complete documented range; keep borrowed
     * decode views alive and respect nonoverlap rules.
     * @param[in] input_length Exact canonical input byte count; no implicit terminator or struct
     * padding is included.
     * @param[out] output Caller-owned byte storage for the complete documented range; keep
     * borrowed decode views alive and respect nonoverlap rules.
     * @param[in] capacity Available caller output capacity in bytes; this is not a Host quota
     * override.
     * @return Actual errno plus the independent length/has_length state. Read length only when
     * has_length is true; errors90/110 never authorize replay.
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    ROSWASM_C_INLINE roswasmc_result
        roswasmc_time_read_steady(roswasmc_capability const* cap, void const* input, size_t input_length, void* output, size_t capacity)
    {
        return roswasmc_request(cap, ROSWASMC_TIME_READ_STEADY, input, input_length, output, capacity);
    }
#ifdef __cplusplus
}
#endif
#endif
