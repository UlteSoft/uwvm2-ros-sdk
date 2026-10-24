/** @file
 * @brief Additive, allocation-free unified event ABI v1 for C89 and later C/C++ guests.
 * An event.observe grant never replaces the independent source grant. The
 * extension dispatch table is explicit and leaves the original C backend ABI
 * unchanged. Raw bodies retain their native canonical codec and owned ID8.
 */
#ifndef ROSWASMC_EVENTS_H
#define ROSWASMC_EVENTS_H
#include <platform/ros/c/roswasm/roswasmc.h>

/**
 * @brief Wire event kinds. The values are stable across both ROS backends.
 *
 * @details Stable unified-event discriminator1..7. Select a complete body codec only after
 * validating kind/backend/flags; error/closed metadata is an event and supplies no replacement
 * capability.
 * @par C type contract
 * Use the declared complete value and exact representation. Caller-owned storage and any borrowed
 * members retain the lifetimes documented above; no implicit allocation or ownership duplication
 * occurs.
 * @see roswasmc_event_decode(), roswasmc_event_header
 * @see @ref roswasmc_c_contracts
 */
typedef enum roswasmc_event_kind
{
    /**
     * @brief Canonical selector: topic message.
     *
     * @details Complete source-codec topic payload; source identity and sequence still require
     * independent binding validation.
     * @par C type contract
     * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
     * owner nor a substitute for explicit Host policy.
     * @see roswasmc_parameter_tag, roswasmc_event_kind
     * @see @ref roswasmc_c_contracts
     */
    ROSWASMC_TOPIC_MESSAGE = 1,
    /**
     * @brief Canonical selector: service request.
     *
     * @details Incoming Service/Action request body with its owned nonzero correlation ticket;
     * capability ownership is separate.
     * @par C type contract
     * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
     * owner nor a substitute for explicit Host policy.
     * @see roswasmc_parameter_tag, roswasmc_event_kind
     * @see @ref roswasmc_c_contracts
     */
    ROSWASMC_SERVICE_REQUEST = 2,

    /**
     * @brief Canonical selector: service response.
     *
     * @details Asynchronous Service response correlated with the admitted request, without
     * granting another call.
     * @par C type contract
     * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
     * owner nor a substitute for explicit Host policy.
     * @see roswasmc_parameter_tag, roswasmc_event_kind
     * @see @ref roswasmc_c_contracts
     */
    ROSWASMC_SERVICE_RESPONSE = 3,
    /**
     * @brief Canonical selector: action feedback.
     *
     * @details Nonterminal feedback for the correlated live goal; result/cancellation rights
     * remain independent.
     * @par C type contract
     * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
     * owner nor a substitute for explicit Host policy.
     * @see roswasmc_parameter_tag, roswasmc_event_kind
     * @see @ref roswasmc_c_contracts
     */
    ROSWASMC_ACTION_FEEDBACK = 4,
    /**
     * @brief Canonical selector: action result.
     *
     * @details Terminal correlated goal result; consumed outcome must not be replayed.
     * @par C type contract
     * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
     * owner nor a substitute for explicit Host policy.
     * @see roswasmc_parameter_tag, roswasmc_event_kind
     * @see @ref roswasmc_c_contracts
     */
    ROSWASMC_ACTION_RESULT = 5,

    /**
     * @brief Canonical selector: resource error.
     *
     * @details Resource error metadata event with no business payload; inspect
     * error/retirement/effect flags.
     * @par C type contract
     * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
     * owner nor a substitute for explicit Host policy.
     * @see roswasmc_parameter_tag, roswasmc_event_kind
     * @see @ref roswasmc_c_contracts
     */
    ROSWASMC_RESOURCE_ERROR = 6,
    /**
     * @brief Canonical selector: resource closed.
     *
     * @details Resource closure metadata event; the record cannot restore the retired source's
     * authority.
     * @par C type contract
     * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
     * owner nor a substitute for explicit Host policy.
     * @see roswasmc_parameter_tag, roswasmc_event_kind
     * @see @ref roswasmc_c_contracts
     */
    ROSWASMC_RESOURCE_CLOSED = 7
} roswasmc_event_kind;

/**
 * @brief Decoded metadata; this native struct is never a serialized object.
 *
 * @details Decoded native metadata for the exact64-byte UWRE header, never serialized struct
 * layout. Full64 source/correlation/sequence/instance/session identities and payload byte count
 * must match the complete frame and stable observer binding.
 * @par C type contract
 * Use the declared complete value and exact representation. Caller-owned storage and any borrowed
 * members retain the lifetimes documented above; no implicit allocation or ownership duplication
 * occurs.
 * @see roswasmc_event_decode(), roswasmc_event_binding_decode()
 * @see @ref roswasmc_c_contracts
 */
typedef struct roswasmc_event_header
{
    uwvm_ros_u16 kind;
    uwvm_ros_u8 backend, flags;
    uwvm_ros_u32 error;
    uwvm_ros_u64 source, correlation, sequence, instance, session, payload_bytes;
} roswasmc_event_header;

/**
 * @brief Explicit dispatch for the additive imports; no default aliases/rights.
 *
 * @details Immutable additive event dispatch for one explicit ROS backend. watch/poll/ready/submit
 * use already granted owners; an observer never inherits source or business rights. Callback code
 * must outlive all borrowers.
 * @par C type contract
 * Use the declared complete value and exact representation. Caller-owned storage and any borrowed
 * members retain the lifetimes documented above; no implicit allocation or ownership duplication
 * occurs.
 * @see roswasmc_event_watch(), roswasmc_event_poll(), roswasmc_service_submit()
 * @see @ref roswasmc_c_contracts
 */
typedef struct roswasmc_event_backend
{
    uwvm_ros_u32 version;
    /** @brief Bind one observer to an independently authorized source.
     * @details Synchronous additive event ABI-v1 operation. A metadata watch
     * supplies no data/cancellation rights and performs no implicit migration.
     * @param[in] observer Live full64 event.observe owner.
     * @param[in] source Live full64 source in the same instance/backend/context.
     * @param[in] correlation Outgoing Action goal ID;0 for metadata-only observation.
     * @return Actual errno;17 can indicate a conflicting prior queue/watch.
     * @see roswasmc_event_watch()
     */
    uwvm_ros_u32 (*watch)(uwvm_ros_u64 observer, uwvm_ros_u64 source, uwvm_ros_u64 correlation);
    /** @brief Copy at most one complete unified event record.
     * @details Caller-driven additive ABI-v1 poll; error90 retains this record.
     * Serialize polls on the same observer; no thread or replay is created.
     * @param[in] observer Live full64 event.observe owner.
     * @param[in] memory Actual Guest memory index.
     * @param[out] output Writable complete-record buffer offset.
     * @param[in] capacity Buffer capacity in bytes, at most4194304.
     * @param[out] length_out Eight-byte LE size-slot offset; inspect actual write validity.
     * @return Actual errno;11 is idle,90 is insufficient capacity,0 commits one copy.
     * @see roswasmc_event_poll(), roswasmc_event_decode()
     */
    uwvm_ros_u32 (*poll)(uwvm_ros_u64 observer, uwvm_ros_u32 memory, uwvm_ros_u64 output, uwvm_ros_u64 capacity, uwvm_ros_u64 length_out);
    /** @brief Read a32-byte readiness/admission snapshot without consuming an event.
     * @details Additive ABI-v1 synchronous observation; counters do not grant credit.
     * @param[in] observer Live full64 event.observe owner.
     * @param[in] memory Actual Guest memory index.
     * @param[out] output Offset of four writable u64LE counters.
     * @return Actual errno; only success commits the snapshot.
     * @see roswasmc_event_ready(), roswasmc_event_readiness
     */
    uwvm_ros_u32 (*ready)(uwvm_ros_u64 observer, uwvm_ros_u32 memory, uwvm_ros_u64 output);
    /** @brief Admit one asynchronous Service request and commit its request ID.
     * @details Source and observer are separately granted and Host-paired.
     * Admission success is not a completed response; poll explicitly. A timeout
     * may leave external effects, so never replay automatically.
     * @param[in] source Live full64 service.call source owner.
     * @param[in] observer Matching live full64 event.observe owner.
     * @param[in] memory Actual Guest memory index.
     * @param[in] request Complete canonical request offset.
     * @param[in] length Request byte count; empty requests may use0.
     * @param[out] request_id_out Writable eight-byte LE nonzero request-ID slot offset.
     * @return Actual admission errno; input bytes are copied during this call.
     * @see roswasmc_service_submit(), roswasmc_event_poll()
     */
    uwvm_ros_u32 (
        *submit)(uwvm_ros_u64 source, uwvm_ros_u64 observer, uwvm_ros_u32 memory, uwvm_ros_u64 request, uwvm_ros_u64 length, uwvm_ros_u64 request_id_out);
} roswasmc_event_backend;

/**
 * @brief Four full-width readiness counters; a snapshot grants no credit.
 *
 * @details Four full64 snapshot counters: ready event count, next event size in bytes, available
 * admission slots and admission bytes. Observation consumes no record and does not reserve or
 * grant later admission credit.
 * @par C type contract
 * Use the declared complete value and exact representation. Caller-owned storage and any borrowed
 * members retain the lifetimes documented above; no implicit allocation or ownership duplication
 * occurs.
 * @see roswasmc_event_ready()
 * @see @ref roswasmc_c_contracts
 */
typedef struct roswasmc_event_readiness
{
    uwvm_ros_u64 ready_events, next_event_bytes, admission_slots, admission_bytes;
} roswasmc_event_readiness;

/**
 * @brief Load an unaligned fixed-width little-endian scalar.
 *
 * @details Operate on the complete canonical representation described above, using caller-owned
 * storage. Preserve exact field order, signed integer bits and borrowed-view lifetimes; never
 * serialize C padding or native ROS objects.
 *
 * @par C storage and execution contract
 * @param[in] p Caller-owned byte storage for the complete documented range; keep borrowed decode
 * views alive and respect nonoverlap rules.
 * @param[in] n Explicit bounded byte/element count as specified above; fixed integer helpers
 * accept at most8 bytes.
 * @return Full-width unsigned scalar in the documented byte/count/identity domain; no native
 * pointer or authority is manufactured.
 * @par Permissions
 * None for this local codec operation; encoding/decoding does not authorize publication or
 * mutation.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_writer_init(), roswasmc_reader_init()
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE uwvm_ros_u64 roswasmc_event_integer(unsigned char const* p, unsigned n)
{
    uwvm_ros_u64 v = 0;
    unsigned i;
    if(!p || !n || n > 8)
    {
        return 0;
    }
    for(i = 0; i < n; ++i)
    {
        v |= (uwvm_ros_u64)p[i] << (8 * i);
    }
    return v;
}

/**
 * @brief Transactionally decode one complete record, including ticket checks.
 * Header64B: UWRE/u32,version/u16,kind/u16,backend/u8,flags/u8,reserved/u16,
 * error/u32,source/correlation/sequence/instance/session/bodyBytes (six u64LE).
 * Flags1=source retired,2=admitted external effects may remain,4=incoming Action,
 * 8=parameter projection. These flags never confer another operation's rights.
 * Body strings use the source codec's UTF-8 encoding, never C string addresses.
 *
 * @details Execute the bounded operation described above with the supplied complete values and
 * stable owners. Inspect its actual result before using output; do not implicitly retry a consumed
 * event or uncertain external operation.
 *
 * @par C storage and execution contract
 * @param[in] bytes Caller-owned byte storage for the complete documented range; keep borrowed
 * decode views alive and respect nonoverlap rules.
 * @param[in] length Byte count or byte-count destination as specified above; only successful
 * documented commits make output valid.
 * @param[out] out Live caller-owned object/storage with the extent and state described above; no
 * implicit allocation or ownership duplication.
 * @return Numeric ABI/local error:0 on success. Preserve the documented output/owner state on
 * rejection;95 means unsupported, never a fabricated result.
 * @par Permissions
 * The matching operation-specific aliases must already be explicitly granted; this facade never
 * supplies Host policy, endpoints or native identity.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_open(), roswasmc_result
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE uwvm_ros_u32 roswasmc_event_decode(void const* bytes, uwvm_ros_u64 length, roswasmc_event_header* out)
{
    unsigned char const* p = (unsigned char const*)bytes;
    roswasmc_event_header h;
    if(!p || !out || length < 64 || length > 4194304u || roswasmc_event_integer(p, 4) != 0x45525755u || roswasmc_event_integer(p + 4, 2) != 1 ||
       roswasmc_event_integer(p + 10, 2))
    {
        return UWVM_ROS_INVALID;
    }
    h.kind = (uwvm_ros_u16)roswasmc_event_integer(p + 6, 2);
    h.backend = p[8];
    h.flags = p[9];
    h.error = (uwvm_ros_u32)roswasmc_event_integer(p + 12, 4);
    h.source = uwvm_ros_load_u64(p + 16);
    h.correlation = uwvm_ros_load_u64(p + 24);
    h.sequence = uwvm_ros_load_u64(p + 32);
    h.instance = uwvm_ros_load_u64(p + 40);
    h.session = uwvm_ros_load_u64(p + 48);
    h.payload_bytes = uwvm_ros_load_u64(p + 56);
    if(h.kind < 1 || h.kind > 7 || h.backend < 1 || h.backend > 2 || !h.source || !h.sequence || !h.instance || !h.session || h.payload_bytes != length - 64)
    {
        return UWVM_ROS_INVALID;
    }
    if(h.kind >= 6)
    {
        if(h.payload_bytes || (h.flags & ~3u) || (h.kind == 6 && !h.error) || (h.kind == 7 && !(h.flags & 1u)))
        {
            return UWVM_ROS_INVALID;
        }
    }
    else
    {
        if(h.error)
        {
            return UWVM_ROS_INVALID;
        }
        if(h.kind == 1)
        {
            if(h.correlation || (h.flags != 0 && h.flags != 8))
            {
                return UWVM_ROS_INVALID;
            }
        }
        else if(!h.correlation || (h.kind == 2 ? (h.flags != 0 && h.flags != 4) : h.flags != 0))
        {
            return UWVM_ROS_INVALID;
        }
        if((h.kind == 2 || h.kind == 4 || h.kind == 5) && (h.payload_bytes < 8 || uwvm_ros_load_u64(p + 64) != h.correlation))
        {
            return UWVM_ROS_INVALID;
        }
    }
    *out = h;
    return UWVM_ROS_SUCCESS;
}

/**
 * @brief Check explicit backend and current observer owner without imports.
 *
 * @details Perform the local structural/ownership check described above. A matching local handle,
 * range or selector does not replace the Runtime's instance, generation, native-session or policy
 * validation.
 *
 * @par C storage and execution contract
 * @param[in] api Explicit optional dispatch table; a missing operation is unsupported, never
 * emulated.
 * @param[in] cap Initialized capability owner; keep its context/backend alive for the complete
 * operation.
 * @return Numeric ABI/local error:0 on success. Preserve the documented output/owner state on
 * rejection;95 means unsupported, never a fabricated result.
 * @par Permissions
 * None; this local check does not call a business operation or create authority.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_capability, roswasmc_context
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE uwvm_ros_u32 roswasmc_event_owner(roswasmc_event_backend const* api, roswasmc_capability const* cap)
{
    if(!roswasmc_is_open(cap))
    {
        return UWVM_ROS_BAD_HANDLE;
    }
    return !api || api->version != cap->context->backend->version ? UWVM_ROS_INVALID : UWVM_ROS_SUCCESS;
}

/**
 * @brief Associate already opened observer/source owners once; does not activate
 * a legacy shared consumer. correlation is nonzero only when outgoing Action
 * data is selected; metadata-only watches use zero and do not consume a result.
 * Source and observer must have the same stable context/backend. Duplicate
 * watches or data watches on an activated legacy queue return17. Metadata-only
 * observation may coexist with that queue; no implicit migration occurs.
 *
 * @details Bind an independent observer to an existing source; correlation selects the documented
 * data role.
 *
 * @par C storage and execution contract
 * @param[in] api Explicit optional dispatch table; a missing operation is unsupported, never
 * emulated.
 * @param[in] observer Independent event/availability observer owner, paired with the source by
 * explicit Host policy.
 * @param[in] source Existing source owner or transfer source as specified above; never copy it
 * into a second live owner.
 * @param[in] correlation Full-width event correlation ID; zero is metadata-only where specified
 * above.
 * @return Numeric ABI/local error:0 on success. Preserve the documented output/owner state on
 * rejection;95 means unsupported, never a fabricated result.
 * @par Permissions
 * The separately granted operation-specific capability and native resource described above are
 * required; default ROS authority is empty.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_open(), roswasmc_result
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE uwvm_ros_u32 roswasmc_event_watch(roswasmc_event_backend const* api,
                                                   roswasmc_capability const* observer,
                                                   roswasmc_capability const* source,
                                                   uwvm_ros_u64 correlation)
{
    uwvm_ros_u32 e = roswasmc_event_owner(api, observer);
    if(e)
    {
        return e;
    }
    e = roswasmc_event_owner(api, source);
    if(e)
    {
        return e;
    }
    if(observer->context != source->context || observer->handle == source->handle)
    {
        return UWVM_ROS_INVALID;
    }
    return api->watch ? api->watch(observer->handle, source->handle, correlation) : (uwvm_ros_u32)UWVM_ROS_UNSUPPORTED;
}

/**
 * @brief Capacity-checked poll. Only this new API retains a record on90.
 * The required-size slot is valid only if the UWVM_ROS_U64_MAX sentinel changed.
 * On success the caller owns a complete copy; decode it before using its body.
 * Observer close/revoke still uses ordinary checked capability cleanup.
 *
 * @details Consume at most one legacy queued record; a size failure may already have consumed it.
 *
 * @par C storage and execution contract
 * @param[in] api Explicit optional dispatch table; a missing operation is unsupported, never
 * emulated.
 * @param[in] observer Independent event/availability observer owner, paired with the source by
 * explicit Host policy.
 * @param[out] output Caller-owned byte storage for the complete documented range; keep borrowed
 * decode views alive and respect nonoverlap rules.
 * @param[in] capacity Available caller output capacity in bytes; this is not a Host quota
 * override.
 * @return Actual errno plus the independent length/has_length state. Read length only when
 * has_length is true; errors90/110 never authorize replay.
 * @par Permissions
 * The separately granted operation-specific capability and native resource described above are
 * required; default ROS authority is empty.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_open(), roswasmc_result
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE roswasmc_result roswasmc_event_poll(roswasmc_event_backend const* api,
                                                     roswasmc_capability const* observer,
                                                     void* output,
                                                     uwvm_ros_u64 capacity)
{
    roswasmc_result r;
    unsigned char slot[8];
    unsigned i;
    r.error = roswasmc_event_owner(api, observer);
    r.length = 0;
    r.has_length = 0;
    if(r.error)
    {
        return r;
    }
    if((capacity && !output) || capacity > 4194304u)
    {
        r.error = UWVM_ROS_INVALID;
        return r;
    }
    if(!api->poll)
    {
        r.error = UWVM_ROS_UNSUPPORTED;
        return r;
    }
    for(i = 0; i < 8; ++i)
    {
        slot[i] = 255;
    }
    r.error = api->poll(observer->handle, 0, uwvm_ros_address(output), capacity, uwvm_ros_address(slot));
    if((r.error == 0 || r.error == 90) && uwvm_ros_load_u64(slot) != UWVM_ROS_U64_MAX)
    {
        r.has_length = 1;
        r.length = uwvm_ros_load_u64(slot);
    }
    if(!r.error && (!r.has_length || r.length > capacity))
    {
        r.error = UWVM_ROS_INVALID;
    }
    return r;
}

/**
 * @brief Return a finite credit snapshot; callers must still handle submit11.
 *
 * @details Read four bounded queue/admission counters without consuming a record or granting
 * credit.
 *
 * @par C storage and execution contract
 * @param[in] api Explicit optional dispatch table; a missing operation is unsupported, never
 * emulated.
 * @param[in] observer Independent event/availability observer owner, paired with the source by
 * explicit Host policy.
 * @param[out] output Caller-owned byte storage for the complete documented range; keep borrowed
 * decode views alive and respect nonoverlap rules.
 * @return Numeric ABI/local error:0 on success. Preserve the documented output/owner state on
 * rejection;95 means unsupported, never a fabricated result.
 * @par Permissions
 * The separately granted operation-specific capability and native resource described above are
 * required; default ROS authority is empty.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_open(), roswasmc_result
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE uwvm_ros_u32 roswasmc_event_ready(roswasmc_event_backend const* api, roswasmc_capability const* observer, roswasmc_event_readiness* output)
{
    unsigned char bytes[32] = {0};
    uwvm_ros_u32 e = roswasmc_event_owner(api, observer);
    if(e)
    {
        return e;
    }
    if(!output)
    {
        return UWVM_ROS_INVALID;
    }
    if(!api->ready)
    {
        return UWVM_ROS_UNSUPPORTED;
    }
    e = api->ready(observer->handle, 0, uwvm_ros_address(bytes));
    if(e)
    {
        return e;
    }
    output->ready_events = uwvm_ros_load_u64(bytes);
    output->next_event_bytes = uwvm_ros_load_u64(bytes + 8);
    output->admission_slots = uwvm_ros_load_u64(bytes + 16);
    output->admission_bytes = uwvm_ros_load_u64(bytes + 24);
    return 0;
}

/**
 * @brief Submit once; return0 means bounded native admission, not completion.
 * Response and error observations both must be explicit. No guest pointer is
 * retained. Code11 means no admission credit and no native service dispatch.
 * Code107/110 may follow admission; never automatically replay the operation.
 *
 * @details Admit one asynchronous request and commit a nonzero request ID; do not replay it.
 *
 * @par C storage and execution contract
 * @param[in] api Explicit optional dispatch table; a missing operation is unsupported, never
 * emulated.
 * @param[in] source Existing source owner or transfer source as specified above; never copy it
 * into a second live owner.
 * @param[in] observer Independent event/availability observer owner, paired with the source by
 * explicit Host policy.
 * @param[in] input Caller-owned byte storage for the complete documented range; keep borrowed
 * decode views alive and respect nonoverlap rules.
 * @param[in] length Byte count or byte-count destination as specified above; only successful
 * documented commits make output valid.
 * @param[in,out] request_id Owned nonzero Service request ID; encoding it does not establish
 * ownership.
 * @return Numeric ABI/local error:0 on success. Preserve the documented output/owner state on
 * rejection;95 means unsupported, never a fabricated result.
 * @par Permissions
 * The separately granted operation-specific capability and native resource described above are
 * required; default ROS authority is empty.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_open(), roswasmc_result
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE uwvm_ros_u32 roswasmc_service_submit(roswasmc_event_backend const* api,
                                                      roswasmc_capability const* source,
                                                      roswasmc_capability const* observer,
                                                      void const* input,
                                                      uwvm_ros_u64 length,
                                                      uwvm_ros_u64* request_id)
{
    unsigned char slot[8] = {0};
    uwvm_ros_u32 e = roswasmc_event_owner(api, observer);
    if(e)
    {
        return e;
    }
    e = roswasmc_event_owner(api, source);
    if(e)
    {
        return e;
    }
    if(source->context != observer->context || !request_id || (length && !input) || length > 4193778u)
    {
        return UWVM_ROS_INVALID;
    }
    if(!api->submit)
    {
        return UWVM_ROS_UNSUPPORTED;
    }
    e = api->submit(source->handle, observer->handle, 0, uwvm_ros_address(input), length, uwvm_ros_address(slot));
    if(e)
    {
        return e;
    }
    if(!uwvm_ros_load_u64(slot))
    {
        return UWVM_ROS_INVALID;
    }
    *request_id = uwvm_ros_load_u64(slot);
    return 0;
}

/**
 * @brief Local audit binding for exactly one already authorized event watch.
 * Initial delivery must be sequence1; subsequent records must be contiguous.
 * Decode/refusal is transactional: an invalid record changes neither binding
 * nor output. Zero-correlation watches may deliver several service request IDs;
 * nonzero correlation restricts Action data while permitting uncorrelated error
 * metadata. The trusted Runtime still checks actual capabilities and ownership.
 *
 * @details Local validation state binds one backend/source/correlation and consecutive delivery
 * sequence to the observed instance/session. A local match does not replace trusted Runtime
 * ownership/policy validation.
 * @par C type contract
 * Use the declared complete value and exact representation. Caller-owned storage and any borrowed
 * members retain the lifetimes documented above; no implicit allocation or ownership duplication
 * occurs.
 * @see roswasmc_event_binding_init(), roswasmc_event_binding_decode()
 * @see @ref roswasmc_c_contracts
 */
typedef struct roswasmc_event_binding
{
    uwvm_ros_u8 backend;
    uwvm_ros_u64 source, correlation, sequence, instance, session;
} roswasmc_event_binding;

/**
 * @brief Initialize only local state. No watch, alias or native resource opens.
 *
 * @details Perform the local structural/ownership check described above. A matching local handle,
 * range or selector does not replace the Runtime's instance, generation, native-session or policy
 * validation.
 *
 * @par C storage and execution contract
 * @param[in,out] binding Live caller-owned object/storage with the extent and state described
 * above; no implicit allocation or ownership duplication.
 * @param[in] backend Immutable dispatch table whose function code must outlive all borrowers.
 * @param[in] source Existing source owner or transfer source as specified above; never copy it
 * into a second live owner.
 * @param[in] correlation Full-width event correlation ID; zero is metadata-only where specified
 * above.
 * @return Numeric ABI/local error:0 on success. Preserve the documented output/owner state on
 * rejection;95 means unsupported, never a fabricated result.
 * @par Permissions
 * None; this local check does not call a business operation or create authority.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_capability, roswasmc_context
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE uwvm_ros_u32 roswasmc_event_binding_init(roswasmc_event_binding* binding, uwvm_ros_u32 backend, uwvm_ros_u64 source, uwvm_ros_u64 correlation)
{
    if(!binding || backend < 1 || backend > 2 || !source)
    {
        return UWVM_ROS_INVALID;
    }
    {
        roswasmc_event_binding next;
        next.backend = (uwvm_ros_u8)backend;
        next.source = source;
        next.correlation = correlation;
        next.sequence = 0;
        next.instance = 0;
        next.session = 0;
        *binding = next;
    }
    return 0;
}

/**
 * @brief Decode and commit the exact source/session/delivery sequence once.
 *
 * @details Perform the local structural/ownership check described above. A matching local handle,
 * range or selector does not replace the Runtime's instance, generation, native-session or policy
 * validation.
 *
 * @par C storage and execution contract
 * @param[in,out] binding Live caller-owned object/storage with the extent and state described
 * above; no implicit allocation or ownership duplication.
 * @param[in] bytes Caller-owned byte storage for the complete documented range; keep borrowed
 * decode views alive and respect nonoverlap rules.
 * @param[in] length Byte count or byte-count destination as specified above; only successful
 * documented commits make output valid.
 * @param[out] out Live caller-owned object/storage with the extent and state described above; no
 * implicit allocation or ownership duplication.
 * @return Numeric ABI/local error:0 on success. Preserve the documented output/owner state on
 * rejection;95 means unsupported, never a fabricated result.
 * @par Permissions
 * None; this local check does not call a business operation or create authority.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_capability, roswasmc_context
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE uwvm_ros_u32 roswasmc_event_binding_decode(roswasmc_event_binding* binding, void const* bytes, uwvm_ros_u64 length, roswasmc_event_header* out)
{
    roswasmc_event_header h;
    uwvm_ros_u32 error;
    if(!binding || !out)
    {
        return UWVM_ROS_INVALID;
    }
    error = roswasmc_event_decode(bytes, length, &h);
    if(error)
    {
        return error;
    }
    if(h.backend != binding->backend || h.source != binding->source || binding->sequence == UWVM_ROS_U64_MAX || h.sequence != binding->sequence + 1 ||
       (binding->instance && (h.instance != binding->instance || h.session != binding->session)) ||
       (binding->correlation && h.correlation && h.correlation != binding->correlation))
    {
        return UWVM_ROS_INVALID;
    }
    binding->sequence = h.sequence;
    binding->instance = h.instance;
    binding->session = h.session;
    *out = h;
    return 0;
}

/**
 * @brief Complete-event callback. Body is borrowed only until normal return.
 * Inspect kind/flags before selecting a service, Action or topic codec. Numeric
 * error/closed metadata is delivered as an event, not as a polling failure.
 * A nonzero application status ends this pass; the copied event is not replayed.
 * @details Called synchronously on the event executor's stack after framing,
 * ownership binding and delivery sequence have been committed. Keep callback
 * code/user data alive; do not recursively spin, mutate borrowed owners or
 * longjmp across this dispatch. Incoming metadata supplies no new permission.
 * @param[in,out] user Caller-owned application state for this registration.
 * @param[in] header Validated immutable event metadata, borrowed until return.
 * @param[in] body Exact complete source-codec payload bytes, borrowed until return.
 * @param[in] length Body byte count; error/closed records have an empty body.
 * @return Application status0 to continue, otherwise stop this bounded pass;
 * a nonzero status never rolls back or replays the consumed event.
 * @see roswasmc_event_subscription_spin(), roswasmc_event_decode()
 *
 * @details Borrowed callable type with the complete signature, storage lifetime and
 * execution/error contract documented above. Keep callback code and captured storage alive; a
 * callable value carries no Host permission.
 * @par C type contract
 * Use the declared complete value and exact representation. Caller-owned storage and any borrowed
 * members retain the lifetimes documented above; no implicit allocation or ownership duplication
 * occurs.
 * @see @ref roswasmc_c_contracts
 */
typedef uwvm_ros_u32 (*roswasmc_unified_callback)(void* user, roswasmc_event_header const* header, unsigned char const* body, size_t length);

/**
 * @brief Allocation-free caller-owned unified-event executor entity.
 * Borrowed owners, backend, buffer and callback data must outlive registration.
 * The source is NOT subscribed/advertised through a legacy consumer. Construction
 * performs one explicit watch only. Close/revoke here retires only the observer;
 * the source remains independently owned. C callers must not directly retire or
 * mutate borrowed owners/buffer while a callback is active, or longjmp through
 * this dispatch. These local guards never replace Runtime authority checks.
 *
 * @details Borrows stable explicit source/observer owners, additive dispatch, complete-record
 * buffer and callback/user data. Construction performs one watch only; close/revoke retires only
 * the observer. Do not mutate or longjmp through active dispatch.
 * @par C type contract
 * Use the declared complete value and exact representation. Caller-owned storage and any borrowed
 * members retain the lifetimes documented above; no implicit allocation or ownership duplication
 * occurs.
 * @see roswasmc_event_subscription_init(), roswasmc_event_subscription_spin(),
 * roswasmc_event_subscription_close()
 * @see @ref roswasmc_c_contracts
 */
typedef struct roswasmc_event_subscription
{
    roswasmc_event_backend const* api;
    roswasmc_capability* observer;
    roswasmc_capability* source;
    unsigned char* buffer;
    size_t capacity;
    roswasmc_unified_callback callback;
    void* user;
    roswasmc_event_binding binding;
    uwvm_ros_u32 error;
    int spinning, delivered;
} roswasmc_event_subscription;

/**
 * @brief Bind explicit already-open owners and fixed storage; no hidden opens.
 * A failed watch leaves both owners with the caller for checked cleanup.
 *
 * @details Initialize or transfer only the explicit caller-owned state described above. Keep every
 * borrowed context, table, buffer and callback stable for its documented dependent lifetime.
 *
 * @par C storage and execution contract
 * @param[in,out] subscription Live caller-owned object/storage with the extent and state described
 * above; no implicit allocation or ownership duplication.
 * @param[in] api Explicit optional dispatch table; a missing operation is unsupported, never
 * emulated.
 * @param[in,out] observer Independent event/availability observer owner, paired with the source by
 * explicit Host policy.
 * @param[in,out] source Existing source owner or transfer source as specified above; never copy it
 * into a second live owner.
 * @param[in] correlation Full-width event correlation ID; zero is metadata-only where specified
 * above.
 * @param[in,out] buffer Live caller-owned object/storage with the extent and state described
 * above; no implicit allocation or ownership duplication.
 * @param[in] capacity Available caller output capacity in bytes; this is not a Host quota
 * override.
 * @param[in] callback Borrowed callable code invoked synchronously under the dispatch rules above;
 * keep its code and user state alive.
 * @param[in,out] user Borrowed callback state; it must outlive all pending tasks and synchronous
 * callbacks.
 * @return Numeric ABI/local error:0 on success. Preserve the documented output/owner state on
 * rejection;95 means unsupported, never a fabricated result.
 * @par Permissions
 * Initialization/move alone creates no Host grant; any explicit resource open retains its separate
 * permission checks.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_capability_init(), roswasmc_capability_take()
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE uwvm_ros_u32 roswasmc_event_subscription_init(roswasmc_event_subscription* subscription,
                                                               roswasmc_event_backend const* api,
                                                               roswasmc_capability* observer,
                                                               roswasmc_capability* source,
                                                               uwvm_ros_u64 correlation,
                                                               unsigned char* buffer,
                                                               size_t capacity,
                                                               roswasmc_unified_callback callback,
                                                               void* user)
{
    uwvm_ros_u32 error;
    /* Explicitly initialize all members for both C and strict C++ consumers. */
    roswasmc_event_subscription next = {
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        {0, 0, 0, 0, 0, 0},
        0,
        0,
        0
    };
    if(!subscription)
    {
        return UWVM_ROS_INVALID;
    }
    next.error = UWVM_ROS_INVALID;
    *subscription = next;
    if(!buffer || capacity < 64 || capacity > 4194304u || !callback)
    {
        return UWVM_ROS_INVALID;
    }
    error = roswasmc_event_owner(api, source);
    if(error)
    {
        return error;
    }
    next.api = api;
    next.observer = observer;
    next.source = source;
    next.buffer = buffer;
    next.capacity = capacity;
    next.callback = callback;
    next.user = user;
    next.error = 0;
    next.spinning = next.delivered = 0;
    error = roswasmc_event_binding_init(&next.binding, api->version, source->handle, correlation);
    if(error)
    {
        return error;
    }
    error = roswasmc_event_watch(api, observer, source, correlation);
    next.error = error;
    *subscription = next;
    return error;
}

/**
 * @brief Copy/validate/dispatch one event;11 is idle,90 retains the native record.
 * Binding is committed before application code, so callback failure cannot cause
 * replay of an already consumed event. Nested dispatch or facade retirement17
 * occurs before polling or buffer mutation. No automatic resize/retry occurs.
 *
 * @details Execute the bounded operation described above with the supplied complete values and
 * stable owners. Inspect its actual result before using output; do not implicitly retry a consumed
 * event or uncertain external operation.
 *
 * @par C storage and execution contract
 * @param[in,out] subscription Live caller-owned object/storage with the extent and state described
 * above; no implicit allocation or ownership duplication.
 * @return Numeric ABI/local error:0 on success. Preserve the documented output/owner state on
 * rejection;95 means unsupported, never a fabricated result.
 * @par Permissions
 * The matching operation-specific aliases must already be explicitly granted; this facade never
 * supplies Host policy, endpoints or native identity.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_open(), roswasmc_result
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE uwvm_ros_u32 roswasmc_event_subscription_spin(roswasmc_event_subscription* subscription)
{
    roswasmc_result result;
    roswasmc_event_header header;
    uwvm_ros_u32 error;
    if(!subscription)
    {
        return UWVM_ROS_INVALID;
    }
    if(subscription->spinning)
    {
        return UWVM_ROS_CONFLICT;
    }
    if(subscription->error)
    {
        return subscription->error;
    }
    subscription->delivered = 0;
    subscription->spinning = 1;
    result = roswasmc_event_poll(subscription->api, subscription->observer, subscription->buffer, subscription->capacity);
    error = result.error;
    if(!error)
    {
        error = roswasmc_event_binding_decode(&subscription->binding, subscription->buffer, result.length, &header);
    }
    if(!error)
    {
        subscription->delivered = 1;
        error = subscription->callback(subscription->user, &header, subscription->buffer + 64, (size_t)header.payload_bytes);
    }
    subscription->spinning = 0;
    return error;
}

/**
 * @brief Poll each selected entity once; maximum counts successful callbacks.
 * Registrations/storage remain borrowed for the entire pass. A callback must
 * defer array mutation/destruction until return. Errors preserve delivered.
 *
 * @details Execute the bounded operation described above with the supplied complete values and
 * stable owners. Inspect its actual result before using output; do not implicitly retry a consumed
 * event or uncertain external operation.
 *
 * @par C storage and execution contract
 * @param[in,out] subscriptions Live caller-owned object/storage with the extent and state
 * described above; no implicit allocation or ownership duplication.
 * @param[in] count Number of live entries/elements in the supplied caller-owned table; not a byte
 * capacity.
 * @param[in] maximum Finite maximum number of events/tasks to dispatch during this call.
 * @param[out] delivered Destination for the number of actually delivered events; not admission or
 * scheduler credit.
 * @return Numeric ABI/local error:0 on success. Preserve the documented output/owner state on
 * rejection;95 means unsupported, never a fabricated result.
 * @par Permissions
 * The matching operation-specific aliases must already be explicitly granted; this facade never
 * supplies Host policy, endpoints or native identity.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_open(), roswasmc_result
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE uwvm_ros_u32 roswasmc_event_spin_some(roswasmc_event_subscription* const* subscriptions, size_t count, size_t maximum, size_t* delivered)
{
    size_t i;
    uwvm_ros_u32 error;
    if(!delivered || (!subscriptions && count))
    {
        return UWVM_ROS_INVALID;
    }
    *delivered = 0;
    for(i = 0; i < count && *delivered < maximum; ++i)
    {
        error = roswasmc_event_subscription_spin(subscriptions[i]);
        if(error == UWVM_ROS_AGAIN && !subscriptions[i]->delivered)
        {
            continue;
        }
        if(error)
        {
            return error;
        }
        ++*delivered;
    }
    return 0;
}

/**
 * @brief Retire only this explicit observer once; defer during callbacks.
 *
 * @details Follow the documented single-attempt retirement order. Keep an owner when its local
 * cleanup callback is unavailable; after an actual close/revoke attempt, do not infer a live
 * handle from a transport error.
 *
 * @par C storage and execution contract
 * @param[in,out] subscription Live caller-owned object/storage with the extent and state described
 * above; no implicit allocation or ownership duplication.
 * @return Numeric ABI/local error:0 on success. Preserve the documented output/owner state on
 * rejection;95 means unsupported, never a fabricated result.
 * @par Permissions
 * Only existing owned capabilities are used. Revocation requires the explicit policy allowed by
 * the Host; cleanup creates no new permission.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_close(), roswasmc_cleanup_report
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE uwvm_ros_u32 roswasmc_event_subscription_close(roswasmc_event_subscription* subscription)
{
    if(!subscription)
    {
        return UWVM_ROS_INVALID;
    }
    if(subscription->spinning)
    {
        return UWVM_ROS_CONFLICT;
    }
    return roswasmc_close(subscription->observer);
}

/**
 * @brief Revoke only this explicit observer alias; no source authority changes.
 *
 * @details Follow the documented single-attempt retirement order. Keep an owner when its local
 * cleanup callback is unavailable; after an actual close/revoke attempt, do not infer a live
 * handle from a transport error.
 *
 * @par C storage and execution contract
 * @param[in,out] subscription Live caller-owned object/storage with the extent and state described
 * above; no implicit allocation or ownership duplication.
 * @return Numeric ABI/local error:0 on success. Preserve the documented output/owner state on
 * rejection;95 means unsupported, never a fabricated result.
 * @par Permissions
 * Only existing owned capabilities are used. Revocation requires the explicit policy allowed by
 * the Host; cleanup creates no new permission.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_close(), roswasmc_cleanup_report
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE uwvm_ros_u32 roswasmc_event_subscription_revoke(roswasmc_event_subscription* subscription)
{
    if(!subscription)
    {
        return UWVM_ROS_INVALID;
    }
    if(subscription->spinning)
    {
        return UWVM_ROS_CONFLICT;
    }
    return roswasmc_revoke(subscription->observer);
}
#endif
