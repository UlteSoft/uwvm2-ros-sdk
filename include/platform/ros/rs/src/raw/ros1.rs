//! Exact ROS 1 ABI v1 imports. These functions never infer grants.
//!
//! # Safety
//! All offsets must address the selected guest linear memory. Inputs, outputs
//! and eight-byte little-endian output slots must remain valid through the call.
//! Handles must be obtained from this backend and the current instance. Return
//! codes are unsigned u32 values; ABI version is a value rather than an error.

#[cfg_attr(target_family = "wasm", link(wasm_import_module = "uwvm_ros1_v1"))]
unsafe extern "C" {
    /// Read ABI version 1 without opening a capability.
    ///
    /// # Safety
    /// Follow the module memory/ownership contract; no host callback enters Wasm.
    /// abi_version: Return ABI version 1. This does not open a capability or authorize a resource.
    /// @brief Return ABI version 1. This does not open a capability or authorize a resource.
    /// @details This query creates no owner, endpoint, queue, timer or ROS context.
    /// @return Unsigned ABI version 1; this value is not an errno.
    /// @permissions None beyond module admission; this query creates no ROS rights.
    /// @failure Missing module/signature prevents instantiation; no Host substitute is used.
    /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets
    /// are not GC roots or host pointers.
    /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is
    /// created by this wrapper.
    /// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its selected backend.
    /// @see share/platform/ros/rs/API-CONTRACT.md; share/platform/ros/rs/XMAKE-EXAMPLES.md
    pub fn abi_version() -> u32;
    /// Open an explicitly granted alias; success writes eight LE handle bytes.
    ///
    /// # Safety
    /// Follow the module memory/ownership contract; no host callback enters Wasm.
    /// capability_open: Open one explicitly granted alias in the caller Instance and selected backend. Write an opaque eight-byte
    /// little-endian handle on success.
    /// @brief Open one explicitly granted alias in the caller Instance and selected backend. Write an opaque eight-byte
    /// little-endian handle on success.
    /// @details Reserve local owner/slot storage before calling. A failed open creates no usable local owner; success must still
    /// return a nonzero handle.
    /// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
    /// admitted by its Runtime.
    /// @param[in] alias_offset Byte offset of the alias UTF-8 input in memory. Keep its backing storage stable and unchanged through return.
    /// @param[in] alias_length Alias byte count, 1..255; strict UTF-8 with no NUL. The alias selects an existing trusted grant,
    /// never a new resource.
    /// @param[out] handle_out_offset Byte offset of a writable eight-byte little-endian handle slot. Read its nonzero value only
    /// after status 0.
    /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
    /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline;
    /// SDK selection grants none.
    /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown
    /// timeout and 125 revoke. Do not replay effects.
    /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets
    /// are not GC roots or host pointers.
    /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is
    /// created by this wrapper.
    /// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its selected backend.
    /// @see share/platform/ros/rs/API-CONTRACT.md; share/platform/ros/rs/XMAKE-EXAMPLES.md
    pub fn capability_open(
        memory: u32,
        alias_offset: u64,
        alias_length: u64,
        handle_out_offset: u64,
    ) -> u32;
    /// Retire this owned handle; a transport error does not undo retirement.
    ///
    /// # Safety
    /// Follow the module memory/ownership contract; no host callback enters Wasm.
    /// capability_close: Retire this handle generation. The handle may already be retired if later Gateway cleanup returns an error.
    /// @brief Retire this handle generation. The handle may already be retired if later Gateway cleanup returns an error.
    /// @details Retire all local copies before notification. Gateway cleanup failure does not restore the retired generation; never
    /// retry the old handle.
    /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
    /// synthesize or transfer it.
    /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
    /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline;
    /// SDK selection grants none.
    /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown
    /// timeout and 125 revoke. Do not replay effects.
    /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets
    /// are not GC roots or host pointers.
    /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is
    /// created by this wrapper.
    /// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its selected backend.
    /// @see share/platform/ros/rs/API-CONTRACT.md; share/platform/ros/rs/XMAKE-EXAMPLES.md
    pub fn capability_close(handle: u64) -> u32;
    /// Revoke the alias and its current handles; reopening returns REVOKED.
    ///
    /// # Safety
    /// Follow the module memory/ownership contract; no host callback enters Wasm.
    /// capability_revoke: Revoke the alias for this Instance/backend, invalidating all its open sibling handles. Reopening cannot
    /// restore the revoked grant.
    /// @brief Revoke the alias for this Instance/backend, invalidating all its open sibling handles. Reopening cannot restore the
    /// revoked grant.
    /// @details Revocation invalidates sibling handles for this alias in the current principal. It is not physical controller stop
    /// or global policy administration.
    /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
    /// synthesize or transfer it.
    /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
    /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline;
    /// SDK selection grants none.
    /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown
    /// timeout and 125 revoke. Do not replay effects.
    /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets
    /// are not GC roots or host pointers.
    /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is
    /// created by this wrapper.
    /// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its selected backend.
    /// @see share/platform/ros/rs/API-CONTRACT.md; share/platform/ros/rs/XMAKE-EXAMPLES.md
    pub fn capability_revoke(handle: u64) -> u32;
    /// Invoke topic_publish using its separately authorized alias and canonical ABI payload.
    ///
    /// # Safety
    /// Follow the module memory/ownership contract; no host callback enters Wasm.
    /// topic_publish: Publish one canonical generated message through a separately granted publisher alias.
    /// @brief Publish one canonical generated message through a separately granted publisher alias.
    /// @details Encode the full selected schema before this one effectful call. Acknowledgement is not a physical
    /// actuator-completion certificate.
    /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
    /// synthesize or transfer it.
    /// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
    /// admitted by its Runtime.
    /// @param[in] payload_offset Byte offset of the complete canonical selected-type payload. It is not a native ROS object or host pointer.
    /// @param[in] payload_length Payload extent in bytes, within memory and the selected type/alias/envelope quota. Zero is type-dependent.
    /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
    /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline;
    /// SDK selection grants none.
    /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown
    /// timeout and 125 revoke. Do not replay effects.
    /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets
    /// are not GC roots or host pointers.
    /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is
    /// created by this wrapper.
    /// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its selected backend.
    /// @see share/platform/ros/rs/API-CONTRACT.md; share/platform/ros/rs/XMAKE-EXAMPLES.md
    pub fn topic_publish(handle: u64, memory: u32, payload_offset: u64, payload_length: u64)
        -> u32;
    /// Invoke topic_subscribe using its separately authorized alias and canonical ABI payload.
    ///
    /// # Safety
    /// Follow the module memory/ownership contract; no host callback enters Wasm.
    /// topic_subscribe: Activate a separately granted subscription queue. Receive messages through event_poll on the guest execution thread.
    /// @brief Activate a separately granted subscription queue. Receive messages through event_poll on the guest execution thread.
    /// @details Activation and payload consumption are separate. Poll on the Guest execution thread; no native callback re-enters the Guest.
    /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
    /// synthesize or transfer it.
    /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
    /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline;
    /// SDK selection grants none.
    /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown
    /// timeout and 125 revoke. Do not replay effects.
    /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets
    /// are not GC roots or host pointers.
    /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is
    /// created by this wrapper.
    /// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its selected backend.
    /// @see share/platform/ros/rs/API-CONTRACT.md; share/platform/ros/rs/XMAKE-EXAMPLES.md
    pub fn topic_subscribe(handle: u64) -> u32;
    /// Poll one queued event on the guest thread; AGAIN means no event. A capacity error may consume the event.
    ///
    /// # Safety
    /// Follow the module memory/ownership contract; no host callback enters Wasm.
    /// event_poll: Poll a topic, service-request, incoming-goal or ROS2 parameter-event queue. Error 11 means no event; no native
    /// callback enters Wasm.
    /// @brief Poll a topic, service-request, incoming-goal or ROS2 parameter-event queue. Error 11 means no event; no native
    /// callback enters Wasm.
    /// @details This is the legacy receive contract: an insufficient buffer may already have consumed its event. Do not implement
    /// automatic resize/replay.
    /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
    /// synthesize or transfer it.
    /// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
    /// admitted by its Runtime.
    /// @param[out] output_offset Byte offset of caller-owned writable event/readiness storage; readiness writes 32 bytes, polls use capacity.
    /// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
    /// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave
    /// it untouched; only an overwritten sentinel reports a required extent.
    /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
    /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline;
    /// SDK selection grants none.
    /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown
    /// timeout and 125 revoke. Do not replay effects.
    /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets
    /// are not GC roots or host pointers.
    /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is
    /// created by this wrapper.
    /// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its selected backend.
    /// @see share/platform/ros/rs/API-CONTRACT.md; share/platform/ros/rs/XMAKE-EXAMPLES.md
    pub fn event_poll(
        handle: u64,
        memory: u32,
        output_offset: u64,
        capacity: u64,
        length_out_offset: u64,
    ) -> u32;
    /// Bind separately granted event.observe and source owners; correlation is nonzero only for an owned outgoing Action goal. No
    /// aliases or rights are created.
    ///
    /// # Safety
    /// Live same-Instance/backend handles and bounded selected-memory ranges are required; no guest pointer is retained by the
    /// native asynchronous task.
    /// event_watch: Bind separately granted event.observe and source owners. Correlation is nonzero only when an owned outgoing
    /// Action data kind is selected; metadata-only watches use zero and activate/consume no native payload. No aliases or rights
    /// are created.
    /// @brief Bind separately granted event.observe and source owners. Correlation is nonzero only when an owned outgoing Action
    /// data kind is selected; metadata-only watches use zero and activate/consume no native payload. No aliases or rights are
    /// created.
    /// @details Keep observer and source owners independently alive. A metadata watch neither activates payload traffic nor
    /// inherits business-operation rights.
    /// @param[in] observer_handle Separately authorized event.observe owner paired with the selected source by trusted Host policy.
    /// @param[in] source_handle Separately authorized source owner in this Instance and backend. The observer does not confer source rights.
    /// @param[in] correlation Exact owned u64 outgoing-goal ID for a selected Action data watch; metadata-only watches use 0. It
    /// grants no ownership.
    /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
    /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline;
    /// SDK selection grants none.
    /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown
    /// timeout and 125 revoke. Do not replay effects.
    /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets
    /// are not GC roots or host pointers.
    /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is
    /// created by this wrapper.
    /// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its selected backend.
    /// @see share/platform/ros/rs/API-CONTRACT.md; share/platform/ros/rs/XMAKE-EXAMPLES.md
    pub fn event_watch(observer_handle: u64, source_handle: u64, correlation: u64) -> u32;
    /// Read one complete versioned64-byte-header event. Error90 writes required size and retains the event; error11 is idle. No
    /// automatic replay.
    ///
    /// # Safety
    /// Live same-Instance/backend handles and bounded selected-memory ranges are required; no guest pointer is retained by the
    /// native asynchronous task.
    /// event_poll_v1: Read one complete versioned64-byte-header event. Error90 writes required size and retains the event; error11
    /// is idle. No automatic replay.
    /// @brief Read one complete versioned64-byte-header event. Error90 writes required size and retains the event; error11 is idle.
    /// No automatic replay.
    /// @details Decode the complete 64-byte versioned header and bounded payload. Capacity 90 retains the pinned event; 11 is idle,
    /// not a delivered value.
    /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
    /// synthesize or transfer it.
    /// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
    /// admitted by its Runtime.
    /// @param[out] output_offset Byte offset of caller-owned writable event/readiness storage; readiness writes 32 bytes, polls use capacity.
    /// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
    /// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave
    /// it untouched; only an overwritten sentinel reports a required extent.
    /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
    /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline;
    /// SDK selection grants none.
    /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown
    /// timeout and 125 revoke. Do not replay effects.
    /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets
    /// are not GC roots or host pointers.
    /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is
    /// created by this wrapper.
    /// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its selected backend.
    /// @see share/platform/ros/rs/API-CONTRACT.md; share/platform/ros/rs/XMAKE-EXAMPLES.md
    pub fn event_poll_v1(
        handle: u64,
        memory: u32,
        output_offset: u64,
        capacity: u64,
        length_out_offset: u64,
    ) -> u32;
    /// Write32 little-endian bytes: ready count,next record bytes,admission slots,admission bytes. A readiness snapshot is not a reservation.
    ///
    /// # Safety
    /// Live same-Instance/backend handles and bounded selected-memory ranges are required; no guest pointer is retained by the
    /// native asynchronous task.
    /// event_ready: Write32 little-endian bytes: ready count,next record bytes,admission slots,admission bytes. A readiness
    /// snapshot is not a reservation.
    /// @brief Write32 little-endian bytes: ready count,next record bytes,admission slots,admission bytes. A readiness snapshot is
    /// not a reservation.
    /// @details Decode four LE u64 values. This snapshot neither reserves an admission slot nor guarantees that a later poll has
    /// the same capacity.
    /// @param[in] observer_handle Separately authorized event.observe owner paired with the selected source by trusted Host policy.
    /// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
    /// admitted by its Runtime.
    /// @param[out] output_offset Byte offset of caller-owned writable event/readiness storage; readiness writes 32 bytes, polls use capacity.
    /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
    /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline;
    /// SDK selection grants none.
    /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown
    /// timeout and 125 revoke. Do not replay effects.
    /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets
    /// are not GC roots or host pointers.
    /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is
    /// created by this wrapper.
    /// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its selected backend.
    /// @see share/platform/ros/rs/API-CONTRACT.md; share/platform/ros/rs/XMAKE-EXAMPLES.md
    pub fn event_ready(observer_handle: u64, memory: u32, output_offset: u64) -> u32;
    /// Admit one bounded asynchronous service request. A successful acknowledgement writes requestID; completion requires explicit
    /// service-response and resource-error observation. Never replay a timeout.
    ///
    /// # Safety
    /// Live same-Instance/backend handles and bounded selected-memory ranges are required; no guest pointer is retained by the
    /// native asynchronous task.
    /// service_submit: Admit one bounded asynchronous service request. A successful acknowledgement writes requestID; completion
    /// requires explicit service-response and resource-error observation. Never replay a timeout.
    /// @brief Admit one bounded asynchronous service request. A successful acknowledgement writes requestID; completion requires
    /// explicit service-response and resource-error observation. Never replay a timeout.
    /// @details Register correlation/cleanup state before admission. Observe service-response and resource-error events explicitly;
    /// never replay unknown delivery.
    /// @param[in] source_handle Separately authorized source owner in this Instance and backend. The observer does not confer source rights.
    /// @param[in] observer_handle Separately authorized event.observe owner paired with the selected source by trusted Host policy.
    /// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
    /// admitted by its Runtime.
    /// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request
    /// changes no policy.
    /// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may
    /// require less.
    /// @param[out] request_id_out_offset Byte offset of an eight-byte LE request-ID slot written on successful admission.
    /// Acknowledgement does not mean that the native service completed.
    /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
    /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline;
    /// SDK selection grants none.
    /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown
    /// timeout and 125 revoke. Do not replay effects.
    /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets
    /// are not GC roots or host pointers.
    /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is
    /// created by this wrapper.
    /// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its selected backend.
    /// @see share/platform/ros/rs/API-CONTRACT.md; share/platform/ros/rs/XMAKE-EXAMPLES.md
    pub fn service_submit(
        source_handle: u64,
        observer_handle: u64,
        memory: u32,
        request_offset: u64,
        request_length: u64,
        request_id_out_offset: u64,
    ) -> u32;
    /// Invoke service_call using its separately authorized alias and canonical ABI payload.
    ///
    /// # Safety
    /// Follow the module memory/ownership contract; no host callback enters Wasm.
    /// service_call: Call the explicitly selected service using its canonical request/response type and configured deadline. Do not
    /// automatically replay a timed-out call.
    /// @brief Call the explicitly selected service using its canonical request/response type and configured deadline. Do not
    /// automatically replay a timed-out call.
    /// @details Use the exact request/response canonical identity selected by the Host. The finite deadline belongs to trusted
    /// policy, not a Guest-supplied route.
    /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
    /// synthesize or transfer it.
    /// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
    /// admitted by its Runtime.
    /// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request
    /// changes no policy.
    /// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may
    /// require less.
    /// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
    /// status/length checks.
    /// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
    /// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave
    /// it untouched; only an overwritten sentinel reports a required extent.
    /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
    /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline;
    /// SDK selection grants none.
    /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown
    /// timeout and 125 revoke. Do not replay effects.
    /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets
    /// are not GC roots or host pointers.
    /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is
    /// created by this wrapper.
    /// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its selected backend.
    /// @see share/platform/ros/rs/API-CONTRACT.md; share/platform/ros/rs/XMAKE-EXAMPLES.md
    pub fn service_call(
        handle: u64,
        memory: u32,
        request_offset: u64,
        request_length: u64,
        response_offset: u64,
        capacity: u64,
        length_out_offset: u64,
    ) -> u32;
    /// Invoke service_advertise using its separately authorized alias and canonical ABI payload.
    ///
    /// # Safety
    /// Follow the module memory/ownership contract; no host callback enters Wasm.
    /// service_advertise: Activate the explicitly granted service server. Poll owned request IDs through event_poll.
    /// @brief Activate the explicitly granted service server. Poll owned request IDs through event_poll.
    /// @details The server owns only requests actually delivered to it. A responder is a separate grant; advertising does not grant
    /// arbitrary responses.
    /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
    /// synthesize or transfer it.
    /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
    /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline;
    /// SDK selection grants none.
    /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown
    /// timeout and 125 revoke. Do not replay effects.
    /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets
    /// are not GC roots or host pointers.
    /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is
    /// created by this wrapper.
    /// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its selected backend.
    /// @see share/platform/ros/rs/API-CONTRACT.md; share/platform/ros/rs/XMAKE-EXAMPLES.md
    pub fn service_advertise(handle: u64) -> u32;
    /// Invoke service_respond using its separately authorized alias and canonical ABI payload.
    ///
    /// # Safety
    /// Follow the module memory/ownership contract; no host callback enters Wasm.
    /// service_respond: Respond to an owned live request using a separate response grant and u64 request-ID-prefixed canonical response.
    /// @brief Respond to an owned live request using a separate response grant and u64 request-ID-prefixed canonical response.
    /// @details Prefix the response with the actually delivered request ID. This legacy operation does not implement the separate
    /// owned-native raw12 protocol.
    /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
    /// synthesize or transfer it.
    /// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
    /// admitted by its Runtime.
    /// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request
    /// changes no policy.
    /// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may
    /// require less.
    /// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
    /// status/length checks.
    /// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
    /// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave
    /// it untouched; only an overwritten sentinel reports a required extent.
    /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
    /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline;
    /// SDK selection grants none.
    /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown
    /// timeout and 125 revoke. Do not replay effects.
    /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets
    /// are not GC roots or host pointers.
    /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is
    /// created by this wrapper.
    /// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its selected backend.
    /// @see share/platform/ros/rs/API-CONTRACT.md; share/platform/ros/rs/XMAKE-EXAMPLES.md
    pub fn service_respond(
        handle: u64,
        memory: u32,
        request_offset: u64,
        request_length: u64,
        response_offset: u64,
        capacity: u64,
        length_out_offset: u64,
    ) -> u32;
    /// Invoke action_send_goal using its separately authorized alias and canonical ABI payload.
    ///
    /// # Safety
    /// Follow the module memory/ownership contract; no host callback enters Wasm.
    /// action_send_goal: Send the selected trusted Action goal codec and receive an opaque u64 Goal ID. Builtin Fibonacci uses one
    /// canonical i32 order. Generated bounded Actions require their registered goal codec; all bounds remain explicit.
    /// @brief Send the selected trusted Action goal codec and receive an opaque u64 Goal ID. Builtin Fibonacci uses one canonical
    /// i32 order. Generated bounded Actions require their registered goal codec; all bounds remain explicit.
    /// @details Keep the returned nonzero ID exactly as u64. Record submission before callbacks, and distinguish admitted, terminal
    /// and cancelled states.
    /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
    /// synthesize or transfer it.
    /// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
    /// admitted by its Runtime.
    /// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request
    /// changes no policy.
    /// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may
    /// require less.
    /// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
    /// status/length checks.
    /// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
    /// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave
    /// it untouched; only an overwritten sentinel reports a required extent.
    /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
    /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline;
    /// SDK selection grants none.
    /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown
    /// timeout and 125 revoke. Do not replay effects.
    /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets
    /// are not GC roots or host pointers.
    /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is
    /// created by this wrapper.
    /// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its selected backend.
    /// @see share/platform/ros/rs/API-CONTRACT.md; share/platform/ros/rs/XMAKE-EXAMPLES.md
    pub fn action_send_goal(
        handle: u64,
        memory: u32,
        request_offset: u64,
        request_length: u64,
        response_offset: u64,
        capacity: u64,
        length_out_offset: u64,
    ) -> u32;
    /// Invoke action_cancel_own_goal using its separately authorized alias and canonical ABI payload.
    ///
    /// # Safety
    /// Follow the module memory/ownership contract; no host callback enters Wasm.
    /// action_cancel_own_goal: Request cancellation of one owned Goal using its u64 ID and a separately authorized cancel capability.
    /// @brief Request cancellation of one owned Goal using its u64 ID and a separately authorized cancel capability.
    /// @details The ID must belong to the calling principal. A cancel acknowledgement is distinct from terminal result and physical stopping.
    /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
    /// synthesize or transfer it.
    /// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
    /// admitted by its Runtime.
    /// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request
    /// changes no policy.
    /// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may
    /// require less.
    /// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
    /// status/length checks.
    /// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
    /// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave
    /// it untouched; only an overwritten sentinel reports a required extent.
    /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
    /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline;
    /// SDK selection grants none.
    /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown
    /// timeout and 125 revoke. Do not replay effects.
    /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets
    /// are not GC roots or host pointers.
    /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is
    /// created by this wrapper.
    /// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its selected backend.
    /// @see share/platform/ros/rs/API-CONTRACT.md; share/platform/ros/rs/XMAKE-EXAMPLES.md
    pub fn action_cancel_own_goal(
        handle: u64,
        memory: u32,
        request_offset: u64,
        request_length: u64,
        response_offset: u64,
        capacity: u64,
        length_out_offset: u64,
    ) -> u32;
    /// Invoke action_cancel_any_goal using its separately authorized alias and canonical ABI payload.
    ///
    /// # Safety
    /// Follow the module memory/ownership contract; no host callback enters Wasm.
    /// action_cancel_any_goal: Use the separately granted any-cancel operation. Goal ID zero is valid only for this independently
    /// authorized operation.
    /// @brief Use the separately granted any-cancel operation. Goal ID zero is valid only for this independently authorized operation.
    /// @details This operation needs its own any-cancel grant. The permitted zero selector here must never leak into own-goal APIs.
    /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
    /// synthesize or transfer it.
    /// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
    /// admitted by its Runtime.
    /// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request
    /// changes no policy.
    /// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may
    /// require less.
    /// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
    /// status/length checks.
    /// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
    /// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave
    /// it untouched; only an overwritten sentinel reports a required extent.
    /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
    /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline;
    /// SDK selection grants none.
    /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown
    /// timeout and 125 revoke. Do not replay effects.
    /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets
    /// are not GC roots or host pointers.
    /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is
    /// created by this wrapper.
    /// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its selected backend.
    /// @see share/platform/ros/rs/API-CONTRACT.md; share/platform/ros/rs/XMAKE-EXAMPLES.md
    pub fn action_cancel_any_goal(
        handle: u64,
        memory: u32,
        request_offset: u64,
        request_length: u64,
        response_offset: u64,
        capacity: u64,
        length_out_offset: u64,
    ) -> u32;
    /// Invoke action_receive_feedback using its separately authorized alias and canonical ABI payload.
    ///
    /// # Safety
    /// Follow the module memory/ownership contract; no host callback enters Wasm.
    /// action_receive_feedback: Receive ID8 plus the selected trusted Action feedback codec for an owned Goal. Builtin Fibonacci
    /// appends count32/int32 values; an empty queue returns 11.
    /// @brief Receive ID8 plus the selected trusted Action feedback codec for an owned Goal. Builtin Fibonacci appends
    /// count32/int32 values; an empty queue returns 11.
    /// @details Check the complete returned ID prefix before decoding feedback. A copied ID is a value, not a new native ownership grant.
    /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
    /// synthesize or transfer it.
    /// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
    /// admitted by its Runtime.
    /// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request
    /// changes no policy.
    /// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may
    /// require less.
    /// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
    /// status/length checks.
    /// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
    /// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave
    /// it untouched; only an overwritten sentinel reports a required extent.
    /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
    /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline;
    /// SDK selection grants none.
    /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown
    /// timeout and 125 revoke. Do not replay effects.
    /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets
    /// are not GC roots or host pointers.
    /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is
    /// created by this wrapper.
    /// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its selected backend.
    /// @see share/platform/ros/rs/API-CONTRACT.md; share/platform/ros/rs/XMAKE-EXAMPLES.md
    pub fn action_receive_feedback(
        handle: u64,
        memory: u32,
        request_offset: u64,
        request_length: u64,
        response_offset: u64,
        capacity: u64,
        length_out_offset: u64,
    ) -> u32;
    /// Invoke action_receive_result using its separately authorized alias and canonical ABI payload.
    ///
    /// # Safety
    /// Follow the module memory/ownership contract; no host callback enters Wasm.
    /// action_receive_result: Receive ID8/outcome8 plus the selected trusted terminal result codec. Builtin Fibonacci appends
    /// count32/int32 values. Successful terminal consumption retires ownership.
    /// @brief Receive ID8/outcome8 plus the selected trusted terminal result codec. Builtin Fibonacci appends count32/int32 values.
    /// Successful terminal consumption retires ownership.
    /// @details Check ID and terminal outcome before publishing the decoded value. Successful terminal consumption retires that goal ownership.
    /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
    /// synthesize or transfer it.
    /// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
    /// admitted by its Runtime.
    /// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request
    /// changes no policy.
    /// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may
    /// require less.
    /// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
    /// status/length checks.
    /// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
    /// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave
    /// it untouched; only an overwritten sentinel reports a required extent.
    /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
    /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline;
    /// SDK selection grants none.
    /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown
    /// timeout and 125 revoke. Do not replay effects.
    /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets
    /// are not GC roots or host pointers.
    /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is
    /// created by this wrapper.
    /// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its selected backend.
    /// @see share/platform/ros/rs/API-CONTRACT.md; share/platform/ros/rs/XMAKE-EXAMPLES.md
    pub fn action_receive_result(
        handle: u64,
        memory: u32,
        request_offset: u64,
        request_length: u64,
        response_offset: u64,
        capacity: u64,
        length_out_offset: u64,
    ) -> u32;
    /// Invoke action_advertise using its separately authorized alias and canonical ABI payload.
    ///
    /// # Safety
    /// Follow the module memory/ownership contract; no host callback enters Wasm.
    /// action_advertise: Activate the explicitly granted Action server with an empty command. Poll ID8 plus the selected trusted
    /// goal codec; builtin Fibonacci uses i32 order. Responses require another grant.
    /// @brief Activate the explicitly granted Action server with an empty command. Poll ID8 plus the selected trusted goal codec;
    /// builtin Fibonacci uses i32 order. Responses require another grant.
    /// @details The empty activation request does not choose another Action/type. Handle incoming goals on the caller-driven Guest executor.
    /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
    /// synthesize or transfer it.
    /// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
    /// admitted by its Runtime.
    /// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request
    /// changes no policy.
    /// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may
    /// require less.
    /// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
    /// status/length checks.
    /// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
    /// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave
    /// it untouched; only an overwritten sentinel reports a required extent.
    /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
    /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline;
    /// SDK selection grants none.
    /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown
    /// timeout and 125 revoke. Do not replay effects.
    /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets
    /// are not GC roots or host pointers.
    /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is
    /// created by this wrapper.
    /// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its selected backend.
    /// @see share/platform/ros/rs/API-CONTRACT.md; share/platform/ros/rs/XMAKE-EXAMPLES.md
    pub fn action_advertise(
        handle: u64,
        memory: u32,
        request_offset: u64,
        request_length: u64,
        response_offset: u64,
        capacity: u64,
        length_out_offset: u64,
    ) -> u32;
    /// Invoke action_respond using its separately authorized alias and canonical ABI payload.
    ///
    /// # Safety
    /// Follow the module memory/ownership contract; no host callback enters Wasm.
    /// action_respond: Send ID8/kind8 plus the selected trusted feedback/result codec. Builtin Fibonacci appends count32/int32
    /// values. Advertiser and responder require the same explicit ROS2 QoS contract.
    /// @brief Send ID8/kind8 plus the selected trusted feedback/result codec. Builtin Fibonacci appends count32/int32 values.
    /// Advertiser and responder require the same explicit ROS2 QoS contract.
    /// @details Keep ID, kind and the complete selected feedback/result body. Sending one terminal result must not be replayed
    /// after an unknown outcome.
    /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
    /// synthesize or transfer it.
    /// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
    /// admitted by its Runtime.
    /// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request
    /// changes no policy.
    /// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may
    /// require less.
    /// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
    /// status/length checks.
    /// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
    /// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave
    /// it untouched; only an overwritten sentinel reports a required extent.
    /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
    /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline;
    /// SDK selection grants none.
    /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown
    /// timeout and 125 revoke. Do not replay effects.
    /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets
    /// are not GC roots or host pointers.
    /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is
    /// created by this wrapper.
    /// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its selected backend.
    /// @see share/platform/ros/rs/API-CONTRACT.md; share/platform/ros/rs/XMAKE-EXAMPLES.md
    pub fn action_respond(
        handle: u64,
        memory: u32,
        request_offset: u64,
        request_length: u64,
        response_offset: u64,
        capacity: u64,
        length_out_offset: u64,
    ) -> u32;
    /// Invoke tf_lookup using its separately authorized alias and canonical ABI payload.
    ///
    /// # Safety
    /// Follow the module memory/ownership contract; no host callback enters Wasm.
    /// tf_lookup: Request the separately configured source/target frame pair at u64 nanoseconds; zero selects the latest admitted transform.
    /// @brief Request the separately configured source/target frame pair at u64 nanoseconds; zero selects the latest admitted transform.
    /// @details The request is u64 nanoseconds in the admitted clock domain;0 selects latest. Source/target frames remain fixed by
    /// the independent grant.
    /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
    /// synthesize or transfer it.
    /// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
    /// admitted by its Runtime.
    /// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request
    /// changes no policy.
    /// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may
    /// require less.
    /// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
    /// status/length checks.
    /// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
    /// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave
    /// it untouched; only an overwritten sentinel reports a required extent.
    /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
    /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline;
    /// SDK selection grants none.
    /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown
    /// timeout and 125 revoke. Do not replay effects.
    /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets
    /// are not GC roots or host pointers.
    /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is
    /// created by this wrapper.
    /// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its selected backend.
    /// @see share/platform/ros/rs/API-CONTRACT.md; share/platform/ros/rs/XMAKE-EXAMPLES.md
    pub fn tf_lookup(
        handle: u64,
        memory: u32,
        request_offset: u64,
        request_length: u64,
        response_offset: u64,
        capacity: u64,
        length_out_offset: u64,
    ) -> u32;
    /// Invoke tf_broadcast using its separately authorized alias and canonical ABI payload.
    ///
    /// # Safety
    /// Follow the module memory/ownership contract; no host callback enters Wasm.
    /// tf_broadcast: Broadcast one canonical TransformStamped for the separately configured frame pair. Do not normalize its
    /// quaternion implicitly.
    /// @brief Broadcast one canonical TransformStamped for the separately configured frame pair. Do not normalize its quaternion implicitly.
    /// @details Preserve every TransformStamped field and unit. Neither normalizing a quaternion nor changing frame names is an
    /// implicit codec step.
    /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
    /// synthesize or transfer it.
    /// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
    /// admitted by its Runtime.
    /// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request
    /// changes no policy.
    /// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may
    /// require less.
    /// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
    /// status/length checks.
    /// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
    /// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave
    /// it untouched; only an overwritten sentinel reports a required extent.
    /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
    /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline;
    /// SDK selection grants none.
    /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown
    /// timeout and 125 revoke. Do not replay effects.
    /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets
    /// are not GC roots or host pointers.
    /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is
    /// created by this wrapper.
    /// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its selected backend.
    /// @see share/platform/ros/rs/API-CONTRACT.md; share/platform/ros/rs/XMAKE-EXAMPLES.md
    pub fn tf_broadcast(
        handle: u64,
        memory: u32,
        request_offset: u64,
        request_length: u64,
        response_offset: u64,
        capacity: u64,
        length_out_offset: u64,
    ) -> u32;
    /// Invoke parameter_get using its separately authorized alias and canonical ABI payload.
    ///
    /// # Safety
    /// Follow the module memory/ownership contract; no host callback enters Wasm.
    /// parameter_get: Read the value fixed by the capability type. An empty request does not select a different node, name or value kind.
    /// @brief Read the value fixed by the capability type. An empty request does not select a different node, name or value kind.
    /// @details Decode only the value kind fixed by the capability. An empty request does not add node, parameter-name or
    /// parent-namespace authority.
    /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
    /// synthesize or transfer it.
    /// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
    /// admitted by its Runtime.
    /// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request
    /// changes no policy.
    /// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may
    /// require less.
    /// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
    /// status/length checks.
    /// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
    /// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave
    /// it untouched; only an overwritten sentinel reports a required extent.
    /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
    /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline;
    /// SDK selection grants none.
    /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown
    /// timeout and 125 revoke. Do not replay effects.
    /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets
    /// are not GC roots or host pointers.
    /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is
    /// created by this wrapper.
    /// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its selected backend.
    /// @see share/platform/ros/rs/API-CONTRACT.md; share/platform/ros/rs/XMAKE-EXAMPLES.md
    pub fn parameter_get(
        handle: u64,
        memory: u32,
        request_offset: u64,
        request_length: u64,
        response_offset: u64,
        capacity: u64,
        length_out_offset: u64,
    ) -> u32;
    /// Invoke parameter_set using its separately authorized alias and canonical ABI payload.
    ///
    /// # Safety
    /// Follow the module memory/ownership contract; no host callback enters Wasm.
    /// parameter_set: Set a canonical value of the explicitly granted parameter type. Numeric and element bounds remain enforced by the host.
    /// @brief Set a canonical value of the explicitly granted parameter type. Numeric and element bounds remain enforced by the host.
    /// @details Validate the complete typed value and all element bounds before the effect. Timeout does not establish that the
    /// native parameter stayed unchanged.
    /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
    /// synthesize or transfer it.
    /// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
    /// admitted by its Runtime.
    /// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request
    /// changes no policy.
    /// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may
    /// require less.
    /// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
    /// status/length checks.
    /// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
    /// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave
    /// it untouched; only an overwritten sentinel reports a required extent.
    /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
    /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline;
    /// SDK selection grants none.
    /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown
    /// timeout and 125 revoke. Do not replay effects.
    /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets
    /// are not GC roots or host pointers.
    /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is
    /// created by this wrapper.
    /// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its selected backend.
    /// @see share/platform/ros/rs/API-CONTRACT.md; share/platform/ros/rs/XMAKE-EXAMPLES.md
    pub fn parameter_set(
        handle: u64,
        memory: u32,
        request_offset: u64,
        request_length: u64,
        response_offset: u64,
        capacity: u64,
        length_out_offset: u64,
    ) -> u32;
    /// Invoke parameter_delete using its separately authorized alias and canonical ABI payload.
    ///
    /// # Safety
    /// Follow the module memory/ownership contract; no host callback enters Wasm.
    /// parameter_delete: Delete the explicitly granted ROS1 parameter using an empty request; no implicit parent-name authority is added.
    /// @brief Delete the explicitly granted ROS1 parameter using an empty request; no implicit parent-name authority is added.
    /// @details ROS1 only. Delete exactly the granted key; authority over a child key is not authority over its parent namespace.
    /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
    /// synthesize or transfer it.
    /// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
    /// admitted by its Runtime.
    /// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request
    /// changes no policy.
    /// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may
    /// require less.
    /// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
    /// status/length checks.
    /// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
    /// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave
    /// it untouched; only an overwritten sentinel reports a required extent.
    /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
    /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline;
    /// SDK selection grants none.
    /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown
    /// timeout and 125 revoke. Do not replay effects.
    /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets
    /// are not GC roots or host pointers.
    /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is
    /// created by this wrapper.
    /// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its selected backend.
    /// @see share/platform/ros/rs/API-CONTRACT.md; share/platform/ros/rs/XMAKE-EXAMPLES.md
    pub fn parameter_delete(
        handle: u64,
        memory: u32,
        request_offset: u64,
        request_length: u64,
        response_offset: u64,
        capacity: u64,
        length_out_offset: u64,
    ) -> u32;
    /// Invoke parameter_exists using its separately authorized alias and canonical ABI payload.
    ///
    /// # Safety
    /// Follow the module memory/ownership contract; no host callback enters Wasm.
    /// parameter_exists: Query existence of the explicitly granted ROS1 parameter; decode one canonical Bool response.
    /// @brief Query existence of the explicitly granted ROS1 parameter; decode one canonical Bool response.
    /// @details ROS1 only. Decode one strict canonical Bool; an error must not be converted into a false existence result.
    /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
    /// synthesize or transfer it.
    /// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
    /// admitted by its Runtime.
    /// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request
    /// changes no policy.
    /// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may
    /// require less.
    /// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
    /// status/length checks.
    /// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
    /// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave
    /// it untouched; only an overwritten sentinel reports a required extent.
    /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
    /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline;
    /// SDK selection grants none.
    /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown
    /// timeout and 125 revoke. Do not replay effects.
    /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets
    /// are not GC roots or host pointers.
    /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is
    /// created by this wrapper.
    /// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its selected backend.
    /// @see share/platform/ros/rs/API-CONTRACT.md; share/platform/ros/rs/XMAKE-EXAMPLES.md
    pub fn parameter_exists(
        handle: u64,
        memory: u32,
        request_offset: u64,
        request_length: u64,
        response_offset: u64,
        capacity: u64,
        length_out_offset: u64,
    ) -> u32;
    /// Invoke parameter_list using its separately authorized alias and canonical ABI payload.
    ///
    /// # Safety
    /// Follow the module memory/ownership contract; no host callback enters Wasm.
    /// parameter_list: List the separately authorized parameter scope; decode the bounded canonical String result.
    /// @brief List the separately authorized parameter scope; decode the bounded canonical String result.
    /// @details Decode the bounded canonical String result for the selected scope. Returned names do not themselves grant
    /// get/set/delete access.
    /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
    /// synthesize or transfer it.
    /// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
    /// admitted by its Runtime.
    /// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request
    /// changes no policy.
    /// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may
    /// require less.
    /// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
    /// status/length checks.
    /// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
    /// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave
    /// it untouched; only an overwritten sentinel reports a required extent.
    /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
    /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline;
    /// SDK selection grants none.
    /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown
    /// timeout and 125 revoke. Do not replay effects.
    /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets
    /// are not GC roots or host pointers.
    /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is
    /// created by this wrapper.
    /// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its selected backend.
    /// @see share/platform/ros/rs/API-CONTRACT.md; share/platform/ros/rs/XMAKE-EXAMPLES.md
    pub fn parameter_list(
        handle: u64,
        memory: u32,
        request_offset: u64,
        request_length: u64,
        response_offset: u64,
        capacity: u64,
        length_out_offset: u64,
    ) -> u32;
    /// Invoke parameter_search using its separately authorized alias and canonical ABI payload.
    ///
    /// # Safety
    /// Follow the module memory/ownership contract; no host callback enters Wasm.
    /// parameter_search: Search the explicitly granted ROS1 resource with an empty request. Parent namespaces are included only
    /// with search-parent-namespaces=true, for the same final key and within allowed-name-prefix before every native query.
    /// @brief Search the explicitly granted ROS1 resource with an empty request. Parent namespaces are included only with
    /// search-parent-namespaces=true, for the same final key and within allowed-name-prefix before every native query.
    /// @details ROS1 only. Parent search is a separately configured opt-in and remains constrained by allowed-name-prefix before
    /// every native query.
    /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
    /// synthesize or transfer it.
    /// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
    /// admitted by its Runtime.
    /// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request
    /// changes no policy.
    /// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may
    /// require less.
    /// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
    /// status/length checks.
    /// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
    /// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave
    /// it untouched; only an overwritten sentinel reports a required extent.
    /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
    /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline;
    /// SDK selection grants none.
    /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown
    /// timeout and 125 revoke. Do not replay effects.
    /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets
    /// are not GC roots or host pointers.
    /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is
    /// created by this wrapper.
    /// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its selected backend.
    /// @see share/platform/ros/rs/API-CONTRACT.md; share/platform/ros/rs/XMAKE-EXAMPLES.md
    pub fn parameter_search(
        handle: u64,
        memory: u32,
        request_offset: u64,
        request_length: u64,
        response_offset: u64,
        capacity: u64,
        length_out_offset: u64,
    ) -> u32;
    /// Invoke graph_inspect_topic using its separately authorized alias and canonical ABI payload.
    ///
    /// # Safety
    /// Follow the module memory/ownership contract; no host callback enters Wasm.
    /// graph_inspect_topic: Inspect the configured topic filter with an empty request and decode sorted canonical String rows.
    /// @brief Inspect the configured topic filter with an empty request and decode sorted canonical String rows.
    /// @details Use the exact trusted inspect topic filter. Returned sorted canonical String rows confer no discovery or
    /// business-operation rights.
    /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
    /// synthesize or transfer it.
    /// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
    /// admitted by its Runtime.
    /// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request
    /// changes no policy.
    /// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may
    /// require less.
    /// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
    /// status/length checks.
    /// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
    /// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave
    /// it untouched; only an overwritten sentinel reports a required extent.
    /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
    /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline;
    /// SDK selection grants none.
    /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown
    /// timeout and 125 revoke. Do not replay effects.
    /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets
    /// are not GC roots or host pointers.
    /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is
    /// created by this wrapper.
    /// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its selected backend.
    /// @see share/platform/ros/rs/API-CONTRACT.md; share/platform/ros/rs/XMAKE-EXAMPLES.md
    pub fn graph_inspect_topic(
        handle: u64,
        memory: u32,
        request_offset: u64,
        request_length: u64,
        response_offset: u64,
        capacity: u64,
        length_out_offset: u64,
    ) -> u32;
    /// Invoke graph_inspect_node using its separately authorized alias and canonical ABI payload.
    ///
    /// # Safety
    /// Follow the module memory/ownership contract; no host callback enters Wasm.
    /// graph_inspect_node: Inspect the configured node filter with an empty request and decode sorted canonical String rows.
    /// @brief Inspect the configured node filter with an empty request and decode sorted canonical String rows.
    /// @details Use the exact trusted inspect node filter. Returned sorted canonical String rows confer no discovery or
    /// business-operation rights.
    /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
    /// synthesize or transfer it.
    /// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
    /// admitted by its Runtime.
    /// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request
    /// changes no policy.
    /// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may
    /// require less.
    /// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
    /// status/length checks.
    /// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
    /// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave
    /// it untouched; only an overwritten sentinel reports a required extent.
    /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
    /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline;
    /// SDK selection grants none.
    /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown
    /// timeout and 125 revoke. Do not replay effects.
    /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets
    /// are not GC roots or host pointers.
    /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is
    /// created by this wrapper.
    /// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its selected backend.
    /// @see share/platform/ros/rs/API-CONTRACT.md; share/platform/ros/rs/XMAKE-EXAMPLES.md
    pub fn graph_inspect_node(
        handle: u64,
        memory: u32,
        request_offset: u64,
        request_length: u64,
        response_offset: u64,
        capacity: u64,
        length_out_offset: u64,
    ) -> u32;
    /// Invoke graph_inspect_service using its separately authorized alias and canonical ABI payload.
    ///
    /// # Safety
    /// Follow the module memory/ownership contract; no host callback enters Wasm.
    /// graph_inspect_service: Inspect the configured service filter with an empty request and decode sorted canonical String rows.
    /// @brief Inspect the configured service filter with an empty request and decode sorted canonical String rows.
    /// @details Use the exact trusted inspect service filter. Returned sorted canonical String rows confer no discovery or
    /// business-operation rights.
    /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
    /// synthesize or transfer it.
    /// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
    /// admitted by its Runtime.
    /// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request
    /// changes no policy.
    /// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may
    /// require less.
    /// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
    /// status/length checks.
    /// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
    /// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave
    /// it untouched; only an overwritten sentinel reports a required extent.
    /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
    /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline;
    /// SDK selection grants none.
    /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown
    /// timeout and 125 revoke. Do not replay effects.
    /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets
    /// are not GC roots or host pointers.
    /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is
    /// created by this wrapper.
    /// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its selected backend.
    /// @see share/platform/ros/rs/API-CONTRACT.md; share/platform/ros/rs/XMAKE-EXAMPLES.md
    pub fn graph_inspect_service(
        handle: u64,
        memory: u32,
        request_offset: u64,
        request_length: u64,
        response_offset: u64,
        capacity: u64,
        length_out_offset: u64,
    ) -> u32;
    /// Invoke graph_list_topics using its separately authorized alias and canonical ABI payload.
    ///
    /// # Safety
    /// Follow the module memory/ownership contract; no host callback enters Wasm.
    /// graph_list_topics: List topics within the explicit exact/prefix graph filter; decode sorted canonical String rows.
    /// @brief List topics within the explicit exact/prefix graph filter; decode sorted canonical String rows.
    /// @details Use the exact trusted list topics filter. Returned sorted canonical String rows confer no discovery or
    /// business-operation rights.
    /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
    /// synthesize or transfer it.
    /// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
    /// admitted by its Runtime.
    /// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request
    /// changes no policy.
    /// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may
    /// require less.
    /// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
    /// status/length checks.
    /// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
    /// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave
    /// it untouched; only an overwritten sentinel reports a required extent.
    /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
    /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline;
    /// SDK selection grants none.
    /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown
    /// timeout and 125 revoke. Do not replay effects.
    /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets
    /// are not GC roots or host pointers.
    /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is
    /// created by this wrapper.
    /// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its selected backend.
    /// @see share/platform/ros/rs/API-CONTRACT.md; share/platform/ros/rs/XMAKE-EXAMPLES.md
    pub fn graph_list_topics(
        handle: u64,
        memory: u32,
        request_offset: u64,
        request_length: u64,
        response_offset: u64,
        capacity: u64,
        length_out_offset: u64,
    ) -> u32;
    /// Invoke graph_list_nodes using its separately authorized alias and canonical ABI payload.
    ///
    /// # Safety
    /// Follow the module memory/ownership contract; no host callback enters Wasm.
    /// graph_list_nodes: List nodes within the explicit graph filter; this is not unrestricted discovery authority.
    /// @brief List nodes within the explicit graph filter; this is not unrestricted discovery authority.
    /// @details Use the exact trusted list nodes filter. Returned sorted canonical String rows confer no discovery or
    /// business-operation rights.
    /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
    /// synthesize or transfer it.
    /// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
    /// admitted by its Runtime.
    /// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request
    /// changes no policy.
    /// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may
    /// require less.
    /// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
    /// status/length checks.
    /// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
    /// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave
    /// it untouched; only an overwritten sentinel reports a required extent.
    /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
    /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline;
    /// SDK selection grants none.
    /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown
    /// timeout and 125 revoke. Do not replay effects.
    /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets
    /// are not GC roots or host pointers.
    /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is
    /// created by this wrapper.
    /// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its selected backend.
    /// @see share/platform/ros/rs/API-CONTRACT.md; share/platform/ros/rs/XMAKE-EXAMPLES.md
    pub fn graph_list_nodes(
        handle: u64,
        memory: u32,
        request_offset: u64,
        request_length: u64,
        response_offset: u64,
        capacity: u64,
        length_out_offset: u64,
    ) -> u32;
    /// Invoke graph_list_services using its separately authorized alias and canonical ABI payload.
    ///
    /// # Safety
    /// Follow the module memory/ownership contract; no host callback enters Wasm.
    /// graph_list_services: List services within the explicit graph filter; decode sorted canonical String rows.
    /// @brief List services within the explicit graph filter; decode sorted canonical String rows.
    /// @details Use the exact trusted list services filter. Returned sorted canonical String rows confer no discovery or
    /// business-operation rights.
    /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
    /// synthesize or transfer it.
    /// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
    /// admitted by its Runtime.
    /// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request
    /// changes no policy.
    /// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may
    /// require less.
    /// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
    /// status/length checks.
    /// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
    /// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave
    /// it untouched; only an overwritten sentinel reports a required extent.
    /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
    /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline;
    /// SDK selection grants none.
    /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown
    /// timeout and 125 revoke. Do not replay effects.
    /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets
    /// are not GC roots or host pointers.
    /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is
    /// created by this wrapper.
    /// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its selected backend.
    /// @see share/platform/ros/rs/API-CONTRACT.md; share/platform/ros/rs/XMAKE-EXAMPLES.md
    pub fn graph_list_services(
        handle: u64,
        memory: u32,
        request_offset: u64,
        request_length: u64,
        response_offset: u64,
        capacity: u64,
        length_out_offset: u64,
    ) -> u32;
    /// Invoke time_read_ros using its separately authorized alias and canonical ABI payload.
    ///
    /// # Safety
    /// Follow the module memory/ownership contract; no host callback enters Wasm.
    /// time_read_ros: Read the separately authorized ROS clock domain as little-endian u64 nanoseconds.
    /// @brief Read the separately authorized ROS clock domain as little-endian u64 nanoseconds.
    /// @details Read exact u64 nanoseconds in the separately authorized ros domain. Do not treat steady time as an epoch or borrow
    /// another clock grant.
    /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
    /// synthesize or transfer it.
    /// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
    /// admitted by its Runtime.
    /// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request
    /// changes no policy.
    /// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may
    /// require less.
    /// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
    /// status/length checks.
    /// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
    /// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave
    /// it untouched; only an overwritten sentinel reports a required extent.
    /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
    /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline;
    /// SDK selection grants none.
    /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown
    /// timeout and 125 revoke. Do not replay effects.
    /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets
    /// are not GC roots or host pointers.
    /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is
    /// created by this wrapper.
    /// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its selected backend.
    /// @see share/platform/ros/rs/API-CONTRACT.md; share/platform/ros/rs/XMAKE-EXAMPLES.md
    pub fn time_read_ros(
        handle: u64,
        memory: u32,
        request_offset: u64,
        request_length: u64,
        response_offset: u64,
        capacity: u64,
        length_out_offset: u64,
    ) -> u32;
    /// Invoke time_read_wall using its separately authorized alias and canonical ABI payload.
    ///
    /// # Safety
    /// Follow the module memory/ownership contract; no host callback enters Wasm.
    /// time_read_wall: Read the independently authorized ROS1 wall clock; another time grant does not imply this one.
    /// @brief Read the independently authorized ROS1 wall clock; another time grant does not imply this one.
    /// @details Read exact u64 nanoseconds in the separately authorized wall domain. Do not treat steady time as an epoch or borrow
    /// another clock grant.
    /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
    /// synthesize or transfer it.
    /// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
    /// admitted by its Runtime.
    /// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request
    /// changes no policy.
    /// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may
    /// require less.
    /// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
    /// status/length checks.
    /// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
    /// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave
    /// it untouched; only an overwritten sentinel reports a required extent.
    /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
    /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline;
    /// SDK selection grants none.
    /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown
    /// timeout and 125 revoke. Do not replay effects.
    /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets
    /// are not GC roots or host pointers.
    /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is
    /// created by this wrapper.
    /// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its selected backend.
    /// @see share/platform/ros/rs/API-CONTRACT.md; share/platform/ros/rs/XMAKE-EXAMPLES.md
    pub fn time_read_wall(
        handle: u64,
        memory: u32,
        request_offset: u64,
        request_length: u64,
        response_offset: u64,
        capacity: u64,
        length_out_offset: u64,
    ) -> u32;
    /// Invoke log_write using its separately authorized alias and canonical ABI payload.
    ///
    /// # Safety
    /// Follow the module memory/ownership contract; no host callback enters Wasm.
    /// log_write: Write one canonical String to the separately granted ROS logger. This does not open a file or socket.
    /// @brief Write one canonical String to the separately granted ROS logger. This does not open a file or socket.
    /// @details Encode one complete canonical String for the selected ROS logger. Ordinary stderr is separate and does not require
    /// this ROS logging grant.
    /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
    /// synthesize or transfer it.
    /// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
    /// admitted by its Runtime.
    /// @param[in] payload_offset Byte offset of the complete canonical selected-type payload. It is not a native ROS object or host pointer.
    /// @param[in] payload_length Payload extent in bytes, within memory and the selected type/alias/envelope quota. Zero is type-dependent.
    /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
    /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline;
    /// SDK selection grants none.
    /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown
    /// timeout and 125 revoke. Do not replay effects.
    /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets
    /// are not GC roots or host pointers.
    /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is
    /// created by this wrapper.
    /// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its selected backend.
    /// @see share/platform/ros/rs/API-CONTRACT.md; share/platform/ros/rs/XMAKE-EXAMPLES.md
    pub fn log_write(handle: u64, memory: u32, payload_offset: u64, payload_length: u64) -> u32;
}
