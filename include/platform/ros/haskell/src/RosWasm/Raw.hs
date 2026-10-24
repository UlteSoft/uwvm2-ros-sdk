{-# LANGUAGE ForeignFunctionInterface #-}
-- Generated numeric source; imports grant no authority.
module RosWasm.Raw where
import Data.Word
foreign import ccall unsafe "roswasm_c_ffi_invoke" invoke :: Word32 -> Word64 -> Word64 -> Word64 -> Word64 -> Word64 -> Word64 -> Word64 -> IO Word32
-- | rawAbiVersion: Return ABI version 1. This does not open a capability or authorize a resource.
-- \@brief Return ABI version 1. This does not open a capability or authorize a resource.
-- \@details This query creates no owner, endpoint, queue, timer or ROS context.
-- \@return Unsigned ABI version 1; this value is not an errno.
-- \@permissions None beyond module admission; this query creates no ROS rights.
-- \@failure Missing module/signature prevents instantiation; no Host substitute is used.
-- \@lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or
-- host pointers.
-- \@thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this
-- wrapper.
-- \@version ABI 1; exact selected ROS 1/ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
-- \@see share/platform/ros/haskell/API-CONTRACT.md; share/platform/ros/haskell/XMAKE-EXAMPLES.md
rawAbiVersion :: IO Word32
rawAbiVersion =
    invoke 0 (0) (0) (0) (0) (0) (0) (0)
-- | rawActionAdvertise: Activate the explicitly granted Action server with an empty command. Poll ID8 plus the selected trusted goal codec;
-- builtin Fibonacci uses i32 order. Responses require another grant.
-- \@brief Activate the explicitly granted Action server with an empty command. Poll ID8 plus the selected trusted goal codec; builtin Fibonacci
-- uses i32 order. Responses require another grant.
-- \@details The empty activation request does not choose another Action/type. Handle incoming goals on the caller-driven Guest executor.
-- \@param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
-- \@param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
-- \@param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request changes no policy.
-- \@param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may require less.
-- \@param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after status/length checks.
-- \@param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
-- \@param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave it untouched; only
-- an overwritten sentinel reports a required extent.
-- \@return Unsigned Host status 0 on success; nonzero is the original ABI errno.
-- \@permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants
-- none.
-- \@failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125
-- revoke. Do not replay effects.
-- \@lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or
-- host pointers.
-- \@thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this
-- wrapper.
-- \@version ABI 1; exact selected ROS 1/ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
-- \@see share/platform/ros/haskell/API-CONTRACT.md; share/platform/ros/haskell/XMAKE-EXAMPLES.md
rawActionAdvertise :: Word64 -> Word32 -> Word64 -> Word64 -> Word64 -> Word64 -> Word64 -> IO Word32
rawActionAdvertise handle memory request_offset request_length response_offset capacity length_out_offset =
    invoke 1
      (fromIntegral handle)
      (fromIntegral memory)
      (fromIntegral request_offset)
      (fromIntegral request_length)
      (fromIntegral response_offset)
      (fromIntegral capacity)
      (fromIntegral length_out_offset)
-- | rawActionCancelAnyGoal: Use the separately granted any-cancel operation. Goal ID zero is valid only for this independently authorized operation.
-- \@brief Use the separately granted any-cancel operation. Goal ID zero is valid only for this independently authorized operation.
-- \@details This operation needs its own any-cancel grant. The permitted zero selector here must never leak into own-goal APIs.
-- \@param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
-- \@param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
-- \@param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request changes no policy.
-- \@param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may require less.
-- \@param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after status/length checks.
-- \@param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
-- \@param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave it untouched; only
-- an overwritten sentinel reports a required extent.
-- \@return Unsigned Host status 0 on success; nonzero is the original ABI errno.
-- \@permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants
-- none.
-- \@failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125
-- revoke. Do not replay effects.
-- \@lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or
-- host pointers.
-- \@thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this
-- wrapper.
-- \@version ABI 1; exact selected ROS 1/ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
-- \@see share/platform/ros/haskell/API-CONTRACT.md; share/platform/ros/haskell/XMAKE-EXAMPLES.md
rawActionCancelAnyGoal :: Word64 -> Word32 -> Word64 -> Word64 -> Word64 -> Word64 -> Word64 -> IO Word32
rawActionCancelAnyGoal handle memory request_offset request_length response_offset capacity length_out_offset =
    invoke 2
      (fromIntegral handle)
      (fromIntegral memory)
      (fromIntegral request_offset)
      (fromIntegral request_length)
      (fromIntegral response_offset)
      (fromIntegral capacity)
      (fromIntegral length_out_offset)
-- | rawActionCancelOwnGoal: Request cancellation of one owned Goal using its u64 ID and a separately authorized cancel capability.
-- \@brief Request cancellation of one owned Goal using its u64 ID and a separately authorized cancel capability.
-- \@details The ID must belong to the calling principal. A cancel acknowledgement is distinct from terminal result and physical stopping.
-- \@param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
-- \@param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
-- \@param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request changes no policy.
-- \@param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may require less.
-- \@param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after status/length checks.
-- \@param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
-- \@param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave it untouched; only
-- an overwritten sentinel reports a required extent.
-- \@return Unsigned Host status 0 on success; nonzero is the original ABI errno.
-- \@permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants
-- none.
-- \@failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125
-- revoke. Do not replay effects.
-- \@lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or
-- host pointers.
-- \@thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this
-- wrapper.
-- \@version ABI 1; exact selected ROS 1/ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
-- \@see share/platform/ros/haskell/API-CONTRACT.md; share/platform/ros/haskell/XMAKE-EXAMPLES.md
rawActionCancelOwnGoal :: Word64 -> Word32 -> Word64 -> Word64 -> Word64 -> Word64 -> Word64 -> IO Word32
rawActionCancelOwnGoal handle memory request_offset request_length response_offset capacity length_out_offset =
    invoke 3
      (fromIntegral handle)
      (fromIntegral memory)
      (fromIntegral request_offset)
      (fromIntegral request_length)
      (fromIntegral response_offset)
      (fromIntegral capacity)
      (fromIntegral length_out_offset)
-- | rawActionReceiveFeedback: Receive ID8 plus the selected trusted Action feedback codec for an owned Goal. Builtin Fibonacci appends
-- count32/int32 values; an empty queue returns 11.
-- \@brief Receive ID8 plus the selected trusted Action feedback codec for an owned Goal. Builtin Fibonacci appends count32/int32 values; an empty
-- queue returns 11.
-- \@details Check the complete returned ID prefix before decoding feedback. A copied ID is a value, not a new native ownership grant.
-- \@param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
-- \@param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
-- \@param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request changes no policy.
-- \@param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may require less.
-- \@param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after status/length checks.
-- \@param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
-- \@param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave it untouched; only
-- an overwritten sentinel reports a required extent.
-- \@return Unsigned Host status 0 on success; nonzero is the original ABI errno.
-- \@permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants
-- none.
-- \@failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125
-- revoke. Do not replay effects.
-- \@lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or
-- host pointers.
-- \@thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this
-- wrapper.
-- \@version ABI 1; exact selected ROS 1/ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
-- \@see share/platform/ros/haskell/API-CONTRACT.md; share/platform/ros/haskell/XMAKE-EXAMPLES.md
rawActionReceiveFeedback :: Word64 -> Word32 -> Word64 -> Word64 -> Word64 -> Word64 -> Word64 -> IO Word32
rawActionReceiveFeedback handle memory request_offset request_length response_offset capacity length_out_offset =
    invoke 4
      (fromIntegral handle)
      (fromIntegral memory)
      (fromIntegral request_offset)
      (fromIntegral request_length)
      (fromIntegral response_offset)
      (fromIntegral capacity)
      (fromIntegral length_out_offset)
-- | rawActionReceiveResult: Receive ID8/outcome8 plus the selected trusted terminal result codec. Builtin Fibonacci appends count32/int32 values.
-- Successful terminal consumption retires ownership.
-- \@brief Receive ID8/outcome8 plus the selected trusted terminal result codec. Builtin Fibonacci appends count32/int32 values. Successful
-- terminal consumption retires ownership.
-- \@details Check ID and terminal outcome before publishing the decoded value. Successful terminal consumption retires that goal ownership.
-- \@param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
-- \@param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
-- \@param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request changes no policy.
-- \@param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may require less.
-- \@param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after status/length checks.
-- \@param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
-- \@param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave it untouched; only
-- an overwritten sentinel reports a required extent.
-- \@return Unsigned Host status 0 on success; nonzero is the original ABI errno.
-- \@permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants
-- none.
-- \@failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125
-- revoke. Do not replay effects.
-- \@lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or
-- host pointers.
-- \@thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this
-- wrapper.
-- \@version ABI 1; exact selected ROS 1/ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
-- \@see share/platform/ros/haskell/API-CONTRACT.md; share/platform/ros/haskell/XMAKE-EXAMPLES.md
rawActionReceiveResult :: Word64 -> Word32 -> Word64 -> Word64 -> Word64 -> Word64 -> Word64 -> IO Word32
rawActionReceiveResult handle memory request_offset request_length response_offset capacity length_out_offset =
    invoke 5
      (fromIntegral handle)
      (fromIntegral memory)
      (fromIntegral request_offset)
      (fromIntegral request_length)
      (fromIntegral response_offset)
      (fromIntegral capacity)
      (fromIntegral length_out_offset)
-- | rawActionRespond: Send ID8/kind8 plus the selected trusted feedback/result codec. Builtin Fibonacci appends count32/int32 values. Advertiser
-- and responder require the same explicit ROS2 QoS contract.
-- \@brief Send ID8/kind8 plus the selected trusted feedback/result codec. Builtin Fibonacci appends count32/int32 values. Advertiser and responder
-- require the same explicit ROS2 QoS contract.
-- \@details Keep ID, kind and the complete selected feedback/result body. Sending one terminal result must not be replayed after an unknown outcome.
-- \@param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
-- \@param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
-- \@param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request changes no policy.
-- \@param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may require less.
-- \@param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after status/length checks.
-- \@param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
-- \@param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave it untouched; only
-- an overwritten sentinel reports a required extent.
-- \@return Unsigned Host status 0 on success; nonzero is the original ABI errno.
-- \@permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants
-- none.
-- \@failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125
-- revoke. Do not replay effects.
-- \@lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or
-- host pointers.
-- \@thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this
-- wrapper.
-- \@version ABI 1; exact selected ROS 1/ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
-- \@see share/platform/ros/haskell/API-CONTRACT.md; share/platform/ros/haskell/XMAKE-EXAMPLES.md
rawActionRespond :: Word64 -> Word32 -> Word64 -> Word64 -> Word64 -> Word64 -> Word64 -> IO Word32
rawActionRespond handle memory request_offset request_length response_offset capacity length_out_offset =
    invoke 6
      (fromIntegral handle)
      (fromIntegral memory)
      (fromIntegral request_offset)
      (fromIntegral request_length)
      (fromIntegral response_offset)
      (fromIntegral capacity)
      (fromIntegral length_out_offset)
-- | rawActionSendGoal: Send the selected trusted Action goal codec and receive an opaque u64 Goal ID. Builtin Fibonacci uses one canonical i32
-- order. Generated bounded Actions require their registered goal codec; all bounds remain explicit.
-- \@brief Send the selected trusted Action goal codec and receive an opaque u64 Goal ID. Builtin Fibonacci uses one canonical i32 order. Generated
-- bounded Actions require their registered goal codec; all bounds remain explicit.
-- \@details Keep the returned nonzero ID exactly as u64. Record submission before callbacks, and distinguish admitted, terminal and cancelled states.
-- \@param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
-- \@param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
-- \@param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request changes no policy.
-- \@param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may require less.
-- \@param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after status/length checks.
-- \@param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
-- \@param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave it untouched; only
-- an overwritten sentinel reports a required extent.
-- \@return Unsigned Host status 0 on success; nonzero is the original ABI errno.
-- \@permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants
-- none.
-- \@failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125
-- revoke. Do not replay effects.
-- \@lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or
-- host pointers.
-- \@thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this
-- wrapper.
-- \@version ABI 1; exact selected ROS 1/ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
-- \@see share/platform/ros/haskell/API-CONTRACT.md; share/platform/ros/haskell/XMAKE-EXAMPLES.md
rawActionSendGoal :: Word64 -> Word32 -> Word64 -> Word64 -> Word64 -> Word64 -> Word64 -> IO Word32
rawActionSendGoal handle memory request_offset request_length response_offset capacity length_out_offset =
    invoke 7
      (fromIntegral handle)
      (fromIntegral memory)
      (fromIntegral request_offset)
      (fromIntegral request_length)
      (fromIntegral response_offset)
      (fromIntegral capacity)
      (fromIntegral length_out_offset)
-- | rawCapabilityClose: Retire this handle generation. The handle may already be retired if later Gateway cleanup returns an error.
-- \@brief Retire this handle generation. The handle may already be retired if later Gateway cleanup returns an error.
-- \@details Retire all local copies before notification. Gateway cleanup failure does not restore the retired generation; never retry the old handle.
-- \@param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
-- \@return Unsigned Host status 0 on success; nonzero is the original ABI errno.
-- \@permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants
-- none.
-- \@failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125
-- revoke. Do not replay effects.
-- \@lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or
-- host pointers.
-- \@thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this
-- wrapper.
-- \@version ABI 1; exact selected ROS 1/ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
-- \@see share/platform/ros/haskell/API-CONTRACT.md; share/platform/ros/haskell/XMAKE-EXAMPLES.md
rawCapabilityClose :: Word64 -> IO Word32
rawCapabilityClose handle =
    invoke 8 (fromIntegral handle) (0) (0) (0) (0) (0) (0)
-- | rawCapabilityOpen: Open one explicitly granted alias in the caller Instance and selected backend. Write an opaque eight-byte little-endian
-- handle on success.
-- \@brief Open one explicitly granted alias in the caller Instance and selected backend. Write an opaque eight-byte little-endian handle on success.
-- \@details Reserve local owner/slot storage before calling. A failed open creates no usable local owner; success must still return a nonzero handle.
-- \@param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
-- \@param[in] alias_offset Byte offset of the alias UTF-8 input in memory. Keep its backing storage stable and unchanged through return.
-- \@param[in] alias_length Alias byte count, 1..255; strict UTF-8 with no NUL. The alias selects an existing trusted grant, never a new resource.
-- \@param[out] handle_out_offset Byte offset of a writable eight-byte little-endian handle slot. Read its nonzero value only after status 0.
-- \@return Unsigned Host status 0 on success; nonzero is the original ABI errno.
-- \@permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants
-- none.
-- \@failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125
-- revoke. Do not replay effects.
-- \@lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or
-- host pointers.
-- \@thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this
-- wrapper.
-- \@version ABI 1; exact selected ROS 1/ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
-- \@see share/platform/ros/haskell/API-CONTRACT.md; share/platform/ros/haskell/XMAKE-EXAMPLES.md
rawCapabilityOpen :: Word32 -> Word64 -> Word64 -> Word64 -> IO Word32
rawCapabilityOpen memory alias_offset alias_length handle_out_offset =
    invoke 9 (fromIntegral memory) (fromIntegral alias_offset) (fromIntegral alias_length) (fromIntegral handle_out_offset) (0) (0) (0)
-- | rawCapabilityRevoke: Revoke the alias for this Instance/backend, invalidating all its open sibling handles. Reopening cannot restore the
-- revoked grant.
-- \@brief Revoke the alias for this Instance/backend, invalidating all its open sibling handles. Reopening cannot restore the revoked grant.
-- \@details Revocation invalidates sibling handles for this alias in the current principal. It is not physical controller stop or global policy
-- administration.
-- \@param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
-- \@return Unsigned Host status 0 on success; nonzero is the original ABI errno.
-- \@permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants
-- none.
-- \@failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125
-- revoke. Do not replay effects.
-- \@lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or
-- host pointers.
-- \@thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this
-- wrapper.
-- \@version ABI 1; exact selected ROS 1/ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
-- \@see share/platform/ros/haskell/API-CONTRACT.md; share/platform/ros/haskell/XMAKE-EXAMPLES.md
rawCapabilityRevoke :: Word64 -> IO Word32
rawCapabilityRevoke handle =
    invoke 10 (fromIntegral handle) (0) (0) (0) (0) (0) (0)
-- | rawEventPoll: Poll a topic, service-request, incoming-goal or ROS2 parameter-event queue. Error 11 means no event; no native callback enters
-- Wasm.
-- \@brief Poll a topic, service-request, incoming-goal or ROS2 parameter-event queue. Error 11 means no event; no native callback enters Wasm.
-- \@details This is the legacy receive contract: an insufficient buffer may already have consumed its event. Do not implement automatic
-- resize/replay.
-- \@param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
-- \@param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
-- \@param[out] output_offset Byte offset of caller-owned writable event/readiness storage; readiness writes 32 bytes, polls use capacity.
-- \@param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
-- \@param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave it untouched; only
-- an overwritten sentinel reports a required extent.
-- \@return Unsigned Host status 0 on success; nonzero is the original ABI errno.
-- \@permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants
-- none.
-- \@failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125
-- revoke. Do not replay effects.
-- \@lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or
-- host pointers.
-- \@thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this
-- wrapper.
-- \@version ABI 1; exact selected ROS 1/ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
-- \@see share/platform/ros/haskell/API-CONTRACT.md; share/platform/ros/haskell/XMAKE-EXAMPLES.md
rawEventPoll :: Word64 -> Word32 -> Word64 -> Word64 -> Word64 -> IO Word32
rawEventPoll handle memory output_offset capacity length_out_offset =
    invoke 11 (fromIntegral handle) (fromIntegral memory) (fromIntegral output_offset) (fromIntegral capacity) (fromIntegral length_out_offset) (0) (0)
-- | rawEventPollV1: Read one complete versioned64-byte-header event. Error90 writes required size and retains the event; error11 is idle. No
-- automatic replay.
-- \@brief Read one complete versioned64-byte-header event. Error90 writes required size and retains the event; error11 is idle. No automatic replay.
-- \@details Decode the complete 64-byte versioned header and bounded payload. Capacity 90 retains the pinned event; 11 is idle, not a delivered
-- value.
-- \@param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
-- \@param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
-- \@param[out] output_offset Byte offset of caller-owned writable event/readiness storage; readiness writes 32 bytes, polls use capacity.
-- \@param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
-- \@param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave it untouched; only
-- an overwritten sentinel reports a required extent.
-- \@return Unsigned Host status 0 on success; nonzero is the original ABI errno.
-- \@permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants
-- none.
-- \@failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125
-- revoke. Do not replay effects.
-- \@lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or
-- host pointers.
-- \@thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this
-- wrapper.
-- \@version ABI 1; exact selected ROS 1/ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
-- \@see share/platform/ros/haskell/API-CONTRACT.md; share/platform/ros/haskell/XMAKE-EXAMPLES.md
rawEventPollV1 :: Word64 -> Word32 -> Word64 -> Word64 -> Word64 -> IO Word32
rawEventPollV1 handle memory output_offset capacity length_out_offset =
    invoke 12 (fromIntegral handle) (fromIntegral memory) (fromIntegral output_offset) (fromIntegral capacity) (fromIntegral length_out_offset) (0) (0)
-- | rawEventReady: Write32 little-endian bytes: ready count,next record bytes,admission slots,admission bytes. A readiness snapshot is not a
-- reservation.
-- \@brief Write32 little-endian bytes: ready count,next record bytes,admission slots,admission bytes. A readiness snapshot is not a reservation.
-- \@details Decode four LE u64 values. This snapshot neither reserves an admission slot nor guarantees that a later poll has the same capacity.
-- \@param[in] observer_handle Separately authorized event.observe owner paired with the selected source by trusted Host policy.
-- \@param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
-- \@param[out] output_offset Byte offset of caller-owned writable event/readiness storage; readiness writes 32 bytes, polls use capacity.
-- \@return Unsigned Host status 0 on success; nonzero is the original ABI errno.
-- \@permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants
-- none.
-- \@failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125
-- revoke. Do not replay effects.
-- \@lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or
-- host pointers.
-- \@thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this
-- wrapper.
-- \@version ABI 1; exact selected ROS 1/ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
-- \@see share/platform/ros/haskell/API-CONTRACT.md; share/platform/ros/haskell/XMAKE-EXAMPLES.md
rawEventReady :: Word64 -> Word32 -> Word64 -> IO Word32
rawEventReady observer_handle memory output_offset =
    invoke 13 (fromIntegral observer_handle) (fromIntegral memory) (fromIntegral output_offset) (0) (0) (0) (0)
-- | rawEventWatch: Bind separately granted event.observe and source owners. Correlation is nonzero only when an owned outgoing Action data kind is
-- selected; metadata-only watches use zero and activate/consume no native payload. No aliases or rights are created.
-- \@brief Bind separately granted event.observe and source owners. Correlation is nonzero only when an owned outgoing Action data kind is
-- selected; metadata-only watches use zero and activate/consume no native payload. No aliases or rights are created.
-- \@details Keep observer and source owners independently alive. A metadata watch neither activates payload traffic nor inherits
-- business-operation rights.
-- \@param[in] observer_handle Separately authorized event.observe owner paired with the selected source by trusted Host policy.
-- \@param[in] source_handle Separately authorized source owner in this Instance and backend. The observer does not confer source rights.
-- \@param[in] correlation Exact owned u64 outgoing-goal ID for a selected Action data watch; metadata-only watches use 0. It grants no ownership.
-- \@return Unsigned Host status 0 on success; nonzero is the original ABI errno.
-- \@permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants
-- none.
-- \@failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125
-- revoke. Do not replay effects.
-- \@lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or
-- host pointers.
-- \@thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this
-- wrapper.
-- \@version ABI 1; exact selected ROS 1/ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
-- \@see share/platform/ros/haskell/API-CONTRACT.md; share/platform/ros/haskell/XMAKE-EXAMPLES.md
rawEventWatch :: Word64 -> Word64 -> Word64 -> IO Word32
rawEventWatch observer_handle source_handle correlation =
    invoke 14 (fromIntegral observer_handle) (fromIntegral source_handle) (fromIntegral correlation) (0) (0) (0) (0)
-- | rawGraphInspectAction: Inspect the separately configured ROS2 Action filter; ROS1 does not export this function.
-- \@brief Inspect the separately configured ROS2 Action filter; ROS1 does not export this function.
-- \@details Use the exact trusted inspect action filter. Returned sorted canonical String rows confer no discovery or business-operation rights.
-- \@param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
-- \@param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
-- \@param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request changes no policy.
-- \@param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may require less.
-- \@param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after status/length checks.
-- \@param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
-- \@param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave it untouched; only
-- an overwritten sentinel reports a required extent.
-- \@return Unsigned Host status 0 on success; nonzero is the original ABI errno.
-- \@permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants
-- none.
-- \@failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125
-- revoke. Do not replay effects.
-- \@lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or
-- host pointers.
-- \@thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this
-- wrapper.
-- \@version ABI 1; exact selected ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
-- \@see share/platform/ros/haskell/API-CONTRACT.md; share/platform/ros/haskell/XMAKE-EXAMPLES.md
rawGraphInspectAction :: Word64 -> Word32 -> Word64 -> Word64 -> Word64 -> Word64 -> Word64 -> IO Word32
rawGraphInspectAction handle memory request_offset request_length response_offset capacity length_out_offset =
    invoke 15
      (fromIntegral handle)
      (fromIntegral memory)
      (fromIntegral request_offset)
      (fromIntegral request_length)
      (fromIntegral response_offset)
      (fromIntegral capacity)
      (fromIntegral length_out_offset)
-- | rawGraphInspectNode: Inspect the configured node filter with an empty request and decode sorted canonical String rows.
-- \@brief Inspect the configured node filter with an empty request and decode sorted canonical String rows.
-- \@details Use the exact trusted inspect node filter. Returned sorted canonical String rows confer no discovery or business-operation rights.
-- \@param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
-- \@param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
-- \@param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request changes no policy.
-- \@param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may require less.
-- \@param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after status/length checks.
-- \@param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
-- \@param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave it untouched; only
-- an overwritten sentinel reports a required extent.
-- \@return Unsigned Host status 0 on success; nonzero is the original ABI errno.
-- \@permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants
-- none.
-- \@failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125
-- revoke. Do not replay effects.
-- \@lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or
-- host pointers.
-- \@thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this
-- wrapper.
-- \@version ABI 1; exact selected ROS 1/ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
-- \@see share/platform/ros/haskell/API-CONTRACT.md; share/platform/ros/haskell/XMAKE-EXAMPLES.md
rawGraphInspectNode :: Word64 -> Word32 -> Word64 -> Word64 -> Word64 -> Word64 -> Word64 -> IO Word32
rawGraphInspectNode handle memory request_offset request_length response_offset capacity length_out_offset =
    invoke 16
      (fromIntegral handle)
      (fromIntegral memory)
      (fromIntegral request_offset)
      (fromIntegral request_length)
      (fromIntegral response_offset)
      (fromIntegral capacity)
      (fromIntegral length_out_offset)
-- | rawGraphInspectService: Inspect the configured service filter with an empty request and decode sorted canonical String rows.
-- \@brief Inspect the configured service filter with an empty request and decode sorted canonical String rows.
-- \@details Use the exact trusted inspect service filter. Returned sorted canonical String rows confer no discovery or business-operation rights.
-- \@param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
-- \@param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
-- \@param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request changes no policy.
-- \@param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may require less.
-- \@param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after status/length checks.
-- \@param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
-- \@param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave it untouched; only
-- an overwritten sentinel reports a required extent.
-- \@return Unsigned Host status 0 on success; nonzero is the original ABI errno.
-- \@permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants
-- none.
-- \@failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125
-- revoke. Do not replay effects.
-- \@lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or
-- host pointers.
-- \@thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this
-- wrapper.
-- \@version ABI 1; exact selected ROS 1/ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
-- \@see share/platform/ros/haskell/API-CONTRACT.md; share/platform/ros/haskell/XMAKE-EXAMPLES.md
rawGraphInspectService :: Word64 -> Word32 -> Word64 -> Word64 -> Word64 -> Word64 -> Word64 -> IO Word32
rawGraphInspectService handle memory request_offset request_length response_offset capacity length_out_offset =
    invoke 17
      (fromIntegral handle)
      (fromIntegral memory)
      (fromIntegral request_offset)
      (fromIntegral request_length)
      (fromIntegral response_offset)
      (fromIntegral capacity)
      (fromIntegral length_out_offset)
-- | rawGraphInspectTopic: Inspect the configured topic filter with an empty request and decode sorted canonical String rows.
-- \@brief Inspect the configured topic filter with an empty request and decode sorted canonical String rows.
-- \@details Use the exact trusted inspect topic filter. Returned sorted canonical String rows confer no discovery or business-operation rights.
-- \@param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
-- \@param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
-- \@param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request changes no policy.
-- \@param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may require less.
-- \@param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after status/length checks.
-- \@param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
-- \@param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave it untouched; only
-- an overwritten sentinel reports a required extent.
-- \@return Unsigned Host status 0 on success; nonzero is the original ABI errno.
-- \@permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants
-- none.
-- \@failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125
-- revoke. Do not replay effects.
-- \@lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or
-- host pointers.
-- \@thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this
-- wrapper.
-- \@version ABI 1; exact selected ROS 1/ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
-- \@see share/platform/ros/haskell/API-CONTRACT.md; share/platform/ros/haskell/XMAKE-EXAMPLES.md
rawGraphInspectTopic :: Word64 -> Word32 -> Word64 -> Word64 -> Word64 -> Word64 -> Word64 -> IO Word32
rawGraphInspectTopic handle memory request_offset request_length response_offset capacity length_out_offset =
    invoke 18
      (fromIntegral handle)
      (fromIntegral memory)
      (fromIntegral request_offset)
      (fromIntegral request_length)
      (fromIntegral response_offset)
      (fromIntegral capacity)
      (fromIntegral length_out_offset)
-- | rawGraphListNodes: List nodes within the explicit graph filter; this is not unrestricted discovery authority.
-- \@brief List nodes within the explicit graph filter; this is not unrestricted discovery authority.
-- \@details Use the exact trusted list nodes filter. Returned sorted canonical String rows confer no discovery or business-operation rights.
-- \@param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
-- \@param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
-- \@param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request changes no policy.
-- \@param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may require less.
-- \@param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after status/length checks.
-- \@param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
-- \@param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave it untouched; only
-- an overwritten sentinel reports a required extent.
-- \@return Unsigned Host status 0 on success; nonzero is the original ABI errno.
-- \@permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants
-- none.
-- \@failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125
-- revoke. Do not replay effects.
-- \@lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or
-- host pointers.
-- \@thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this
-- wrapper.
-- \@version ABI 1; exact selected ROS 1/ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
-- \@see share/platform/ros/haskell/API-CONTRACT.md; share/platform/ros/haskell/XMAKE-EXAMPLES.md
rawGraphListNodes :: Word64 -> Word32 -> Word64 -> Word64 -> Word64 -> Word64 -> Word64 -> IO Word32
rawGraphListNodes handle memory request_offset request_length response_offset capacity length_out_offset =
    invoke 19
      (fromIntegral handle)
      (fromIntegral memory)
      (fromIntegral request_offset)
      (fromIntegral request_length)
      (fromIntegral response_offset)
      (fromIntegral capacity)
      (fromIntegral length_out_offset)
-- | rawGraphListServices: List services within the explicit graph filter; decode sorted canonical String rows.
-- \@brief List services within the explicit graph filter; decode sorted canonical String rows.
-- \@details Use the exact trusted list services filter. Returned sorted canonical String rows confer no discovery or business-operation rights.
-- \@param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
-- \@param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
-- \@param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request changes no policy.
-- \@param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may require less.
-- \@param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after status/length checks.
-- \@param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
-- \@param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave it untouched; only
-- an overwritten sentinel reports a required extent.
-- \@return Unsigned Host status 0 on success; nonzero is the original ABI errno.
-- \@permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants
-- none.
-- \@failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125
-- revoke. Do not replay effects.
-- \@lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or
-- host pointers.
-- \@thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this
-- wrapper.
-- \@version ABI 1; exact selected ROS 1/ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
-- \@see share/platform/ros/haskell/API-CONTRACT.md; share/platform/ros/haskell/XMAKE-EXAMPLES.md
rawGraphListServices :: Word64 -> Word32 -> Word64 -> Word64 -> Word64 -> Word64 -> Word64 -> IO Word32
rawGraphListServices handle memory request_offset request_length response_offset capacity length_out_offset =
    invoke 20
      (fromIntegral handle)
      (fromIntegral memory)
      (fromIntegral request_offset)
      (fromIntegral request_length)
      (fromIntegral response_offset)
      (fromIntegral capacity)
      (fromIntegral length_out_offset)
-- | rawGraphListTopics: List topics within the explicit exact/prefix graph filter; decode sorted canonical String rows.
-- \@brief List topics within the explicit exact/prefix graph filter; decode sorted canonical String rows.
-- \@details Use the exact trusted list topics filter. Returned sorted canonical String rows confer no discovery or business-operation rights.
-- \@param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
-- \@param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
-- \@param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request changes no policy.
-- \@param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may require less.
-- \@param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after status/length checks.
-- \@param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
-- \@param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave it untouched; only
-- an overwritten sentinel reports a required extent.
-- \@return Unsigned Host status 0 on success; nonzero is the original ABI errno.
-- \@permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants
-- none.
-- \@failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125
-- revoke. Do not replay effects.
-- \@lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or
-- host pointers.
-- \@thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this
-- wrapper.
-- \@version ABI 1; exact selected ROS 1/ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
-- \@see share/platform/ros/haskell/API-CONTRACT.md; share/platform/ros/haskell/XMAKE-EXAMPLES.md
rawGraphListTopics :: Word64 -> Word32 -> Word64 -> Word64 -> Word64 -> Word64 -> Word64 -> IO Word32
rawGraphListTopics handle memory request_offset request_length response_offset capacity length_out_offset =
    invoke 21
      (fromIntegral handle)
      (fromIntegral memory)
      (fromIntegral request_offset)
      (fromIntegral request_length)
      (fromIntegral response_offset)
      (fromIntegral capacity)
      (fromIntegral length_out_offset)
-- | rawLifecycleChangeState: Apply the single ROS2 transition fixed by policy using an empty request; the guest cannot override that transition.
-- \@brief Apply the single ROS2 transition fixed by policy using an empty request; the guest cannot override that transition.
-- \@details ROS2 only. The single transition is fixed by trusted policy. A timeout/unknown result must not automatically replay controller changes.
-- \@param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
-- \@param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
-- \@param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request changes no policy.
-- \@param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may require less.
-- \@param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after status/length checks.
-- \@param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
-- \@param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave it untouched; only
-- an overwritten sentinel reports a required extent.
-- \@return Unsigned Host status 0 on success; nonzero is the original ABI errno.
-- \@permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants
-- none.
-- \@failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125
-- revoke. Do not replay effects.
-- \@lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or
-- host pointers.
-- \@thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this
-- wrapper.
-- \@version ABI 1; exact selected ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
-- \@see share/platform/ros/haskell/API-CONTRACT.md; share/platform/ros/haskell/XMAKE-EXAMPLES.md
rawLifecycleChangeState :: Word64 -> Word32 -> Word64 -> Word64 -> Word64 -> Word64 -> Word64 -> IO Word32
rawLifecycleChangeState handle memory request_offset request_length response_offset capacity length_out_offset =
    invoke 22
      (fromIntegral handle)
      (fromIntegral memory)
      (fromIntegral request_offset)
      (fromIntegral request_length)
      (fromIntegral response_offset)
      (fromIntegral capacity)
      (fromIntegral length_out_offset)
-- | rawLifecycleGetState: Read the separately selected ROS2 lifecycle node state as u8 state ID followed by canonical String label.
-- \@brief Read the separately selected ROS2 lifecycle node state as u8 state ID followed by canonical String label.
-- \@details ROS2 only. Decode state ID and canonical label together; an error is not a lifecycle state or evidence that a transition completed.
-- \@param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
-- \@param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
-- \@param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request changes no policy.
-- \@param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may require less.
-- \@param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after status/length checks.
-- \@param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
-- \@param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave it untouched; only
-- an overwritten sentinel reports a required extent.
-- \@return Unsigned Host status 0 on success; nonzero is the original ABI errno.
-- \@permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants
-- none.
-- \@failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125
-- revoke. Do not replay effects.
-- \@lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or
-- host pointers.
-- \@thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this
-- wrapper.
-- \@version ABI 1; exact selected ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
-- \@see share/platform/ros/haskell/API-CONTRACT.md; share/platform/ros/haskell/XMAKE-EXAMPLES.md
rawLifecycleGetState :: Word64 -> Word32 -> Word64 -> Word64 -> Word64 -> Word64 -> Word64 -> IO Word32
rawLifecycleGetState handle memory request_offset request_length response_offset capacity length_out_offset =
    invoke 23
      (fromIntegral handle)
      (fromIntegral memory)
      (fromIntegral request_offset)
      (fromIntegral request_length)
      (fromIntegral response_offset)
      (fromIntegral capacity)
      (fromIntegral length_out_offset)
-- | rawLogWrite: Write one canonical String to the separately granted ROS logger. This does not open a file or socket.
-- \@brief Write one canonical String to the separately granted ROS logger. This does not open a file or socket.
-- \@details Encode one complete canonical String for the selected ROS logger. Ordinary stderr is separate and does not require this ROS logging
-- grant.
-- \@param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
-- \@param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
-- \@param[in] payload_offset Byte offset of the complete canonical selected-type payload. It is not a native ROS object or host pointer.
-- \@param[in] payload_length Payload extent in bytes, within memory and the selected type/alias/envelope quota. Zero is type-dependent.
-- \@return Unsigned Host status 0 on success; nonzero is the original ABI errno.
-- \@permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants
-- none.
-- \@failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125
-- revoke. Do not replay effects.
-- \@lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or
-- host pointers.
-- \@thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this
-- wrapper.
-- \@version ABI 1; exact selected ROS 1/ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
-- \@see share/platform/ros/haskell/API-CONTRACT.md; share/platform/ros/haskell/XMAKE-EXAMPLES.md
rawLogWrite :: Word64 -> Word32 -> Word64 -> Word64 -> IO Word32
rawLogWrite handle memory payload_offset payload_length =
    invoke 24 (fromIntegral handle) (fromIntegral memory) (fromIntegral payload_offset) (fromIntegral payload_length) (0) (0) (0)
-- | rawParameterDeclare: Declare a typed parameter on the explicitly selected local ROS2 Gateway node. Remote declaration is unsupported.
-- \@brief Declare a typed parameter on the explicitly selected local ROS2 Gateway node. Remote declaration is unsupported.
-- \@details ROS2 local Gateway node only. Validate the selected kind/default before the call; no remote declaration emulation is supplied.
-- \@param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
-- \@param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
-- \@param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request changes no policy.
-- \@param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may require less.
-- \@param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after status/length checks.
-- \@param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
-- \@param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave it untouched; only
-- an overwritten sentinel reports a required extent.
-- \@return Unsigned Host status 0 on success; nonzero is the original ABI errno.
-- \@permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants
-- none.
-- \@failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125
-- revoke. Do not replay effects.
-- \@lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or
-- host pointers.
-- \@thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this
-- wrapper.
-- \@version ABI 1; exact selected ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
-- \@see share/platform/ros/haskell/API-CONTRACT.md; share/platform/ros/haskell/XMAKE-EXAMPLES.md
rawParameterDeclare :: Word64 -> Word32 -> Word64 -> Word64 -> Word64 -> Word64 -> Word64 -> IO Word32
rawParameterDeclare handle memory request_offset request_length response_offset capacity length_out_offset =
    invoke 25
      (fromIntegral handle)
      (fromIntegral memory)
      (fromIntegral request_offset)
      (fromIntegral request_length)
      (fromIntegral response_offset)
      (fromIntegral capacity)
      (fromIntegral length_out_offset)
-- | rawParameterDelete: Delete the explicitly granted ROS1 parameter using an empty request; no implicit parent-name authority is added.
-- \@brief Delete the explicitly granted ROS1 parameter using an empty request; no implicit parent-name authority is added.
-- \@details ROS1 only. Delete exactly the granted key; authority over a child key is not authority over its parent namespace.
-- \@param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
-- \@param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
-- \@param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request changes no policy.
-- \@param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may require less.
-- \@param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after status/length checks.
-- \@param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
-- \@param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave it untouched; only
-- an overwritten sentinel reports a required extent.
-- \@return Unsigned Host status 0 on success; nonzero is the original ABI errno.
-- \@permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants
-- none.
-- \@failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125
-- revoke. Do not replay effects.
-- \@lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or
-- host pointers.
-- \@thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this
-- wrapper.
-- \@version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its selected backend.
-- \@see share/platform/ros/haskell/API-CONTRACT.md; share/platform/ros/haskell/XMAKE-EXAMPLES.md
rawParameterDelete :: Word64 -> Word32 -> Word64 -> Word64 -> Word64 -> Word64 -> Word64 -> IO Word32
rawParameterDelete handle memory request_offset request_length response_offset capacity length_out_offset =
    invoke 26
      (fromIntegral handle)
      (fromIntegral memory)
      (fromIntegral request_offset)
      (fromIntegral request_length)
      (fromIntegral response_offset)
      (fromIntegral capacity)
      (fromIntegral length_out_offset)
-- | rawParameterDescribe: Read the separately authorized ROS2 parameter metadata as a canonical String.
-- \@brief Read the separately authorized ROS2 parameter metadata as a canonical String.
-- \@details ROS2 only. Returned metadata describes the selected resource; it neither declares a parameter nor authorizes a value mutation.
-- \@param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
-- \@param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
-- \@param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request changes no policy.
-- \@param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may require less.
-- \@param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after status/length checks.
-- \@param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
-- \@param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave it untouched; only
-- an overwritten sentinel reports a required extent.
-- \@return Unsigned Host status 0 on success; nonzero is the original ABI errno.
-- \@permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants
-- none.
-- \@failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125
-- revoke. Do not replay effects.
-- \@lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or
-- host pointers.
-- \@thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this
-- wrapper.
-- \@version ABI 1; exact selected ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
-- \@see share/platform/ros/haskell/API-CONTRACT.md; share/platform/ros/haskell/XMAKE-EXAMPLES.md
rawParameterDescribe :: Word64 -> Word32 -> Word64 -> Word64 -> Word64 -> Word64 -> Word64 -> IO Word32
rawParameterDescribe handle memory request_offset request_length response_offset capacity length_out_offset =
    invoke 27
      (fromIntegral handle)
      (fromIntegral memory)
      (fromIntegral request_offset)
      (fromIntegral request_length)
      (fromIntegral response_offset)
      (fromIntegral capacity)
      (fromIntegral length_out_offset)
-- | rawParameterExists: Query existence of the explicitly granted ROS1 parameter; decode one canonical Bool response.
-- \@brief Query existence of the explicitly granted ROS1 parameter; decode one canonical Bool response.
-- \@details ROS1 only. Decode one strict canonical Bool; an error must not be converted into a false existence result.
-- \@param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
-- \@param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
-- \@param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request changes no policy.
-- \@param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may require less.
-- \@param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after status/length checks.
-- \@param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
-- \@param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave it untouched; only
-- an overwritten sentinel reports a required extent.
-- \@return Unsigned Host status 0 on success; nonzero is the original ABI errno.
-- \@permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants
-- none.
-- \@failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125
-- revoke. Do not replay effects.
-- \@lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or
-- host pointers.
-- \@thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this
-- wrapper.
-- \@version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its selected backend.
-- \@see share/platform/ros/haskell/API-CONTRACT.md; share/platform/ros/haskell/XMAKE-EXAMPLES.md
rawParameterExists :: Word64 -> Word32 -> Word64 -> Word64 -> Word64 -> Word64 -> Word64 -> IO Word32
rawParameterExists handle memory request_offset request_length response_offset capacity length_out_offset =
    invoke 28
      (fromIntegral handle)
      (fromIntegral memory)
      (fromIntegral request_offset)
      (fromIntegral request_length)
      (fromIntegral response_offset)
      (fromIntegral capacity)
      (fromIntegral length_out_offset)
-- | rawParameterGet: Read the value fixed by the capability type. An empty request does not select a different node, name or value kind.
-- \@brief Read the value fixed by the capability type. An empty request does not select a different node, name or value kind.
-- \@details Decode only the value kind fixed by the capability. An empty request does not add node, parameter-name or parent-namespace authority.
-- \@param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
-- \@param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
-- \@param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request changes no policy.
-- \@param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may require less.
-- \@param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after status/length checks.
-- \@param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
-- \@param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave it untouched; only
-- an overwritten sentinel reports a required extent.
-- \@return Unsigned Host status 0 on success; nonzero is the original ABI errno.
-- \@permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants
-- none.
-- \@failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125
-- revoke. Do not replay effects.
-- \@lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or
-- host pointers.
-- \@thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this
-- wrapper.
-- \@version ABI 1; exact selected ROS 1/ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
-- \@see share/platform/ros/haskell/API-CONTRACT.md; share/platform/ros/haskell/XMAKE-EXAMPLES.md
rawParameterGet :: Word64 -> Word32 -> Word64 -> Word64 -> Word64 -> Word64 -> Word64 -> IO Word32
rawParameterGet handle memory request_offset request_length response_offset capacity length_out_offset =
    invoke 29
      (fromIntegral handle)
      (fromIntegral memory)
      (fromIntegral request_offset)
      (fromIntegral request_length)
      (fromIntegral response_offset)
      (fromIntegral capacity)
      (fromIntegral length_out_offset)
-- | rawParameterList: List the separately authorized parameter scope; decode the bounded canonical String result.
-- \@brief List the separately authorized parameter scope; decode the bounded canonical String result.
-- \@details Decode the bounded canonical String result for the selected scope. Returned names do not themselves grant get/set/delete access.
-- \@param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
-- \@param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
-- \@param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request changes no policy.
-- \@param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may require less.
-- \@param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after status/length checks.
-- \@param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
-- \@param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave it untouched; only
-- an overwritten sentinel reports a required extent.
-- \@return Unsigned Host status 0 on success; nonzero is the original ABI errno.
-- \@permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants
-- none.
-- \@failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125
-- revoke. Do not replay effects.
-- \@lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or
-- host pointers.
-- \@thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this
-- wrapper.
-- \@version ABI 1; exact selected ROS 1/ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
-- \@see share/platform/ros/haskell/API-CONTRACT.md; share/platform/ros/haskell/XMAKE-EXAMPLES.md
rawParameterList :: Word64 -> Word32 -> Word64 -> Word64 -> Word64 -> Word64 -> Word64 -> IO Word32
rawParameterList handle memory request_offset request_length response_offset capacity length_out_offset =
    invoke 30
      (fromIntegral handle)
      (fromIntegral memory)
      (fromIntegral request_offset)
      (fromIntegral request_length)
      (fromIntegral response_offset)
      (fromIntegral capacity)
      (fromIntegral length_out_offset)
-- | rawParameterSearch: Search the explicitly granted ROS1 resource with an empty request. Parent namespaces are included only with
-- search-parent-namespaces=true, for the same final key and within allowed-name-prefix before every native query.
-- \@brief Search the explicitly granted ROS1 resource with an empty request. Parent namespaces are included only with
-- search-parent-namespaces=true, for the same final key and within allowed-name-prefix before every native query.
-- \@details ROS1 only. Parent search is a separately configured opt-in and remains constrained by allowed-name-prefix before every native query.
-- \@param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
-- \@param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
-- \@param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request changes no policy.
-- \@param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may require less.
-- \@param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after status/length checks.
-- \@param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
-- \@param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave it untouched; only
-- an overwritten sentinel reports a required extent.
-- \@return Unsigned Host status 0 on success; nonzero is the original ABI errno.
-- \@permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants
-- none.
-- \@failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125
-- revoke. Do not replay effects.
-- \@lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or
-- host pointers.
-- \@thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this
-- wrapper.
-- \@version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its selected backend.
-- \@see share/platform/ros/haskell/API-CONTRACT.md; share/platform/ros/haskell/XMAKE-EXAMPLES.md
rawParameterSearch :: Word64 -> Word32 -> Word64 -> Word64 -> Word64 -> Word64 -> Word64 -> IO Word32
rawParameterSearch handle memory request_offset request_length response_offset capacity length_out_offset =
    invoke 31
      (fromIntegral handle)
      (fromIntegral memory)
      (fromIntegral request_offset)
      (fromIntegral request_length)
      (fromIntegral response_offset)
      (fromIntegral capacity)
      (fromIntegral length_out_offset)
-- | rawParameterSet: Set a canonical value of the explicitly granted parameter type. Numeric and element bounds remain enforced by the host.
-- \@brief Set a canonical value of the explicitly granted parameter type. Numeric and element bounds remain enforced by the host.
-- \@details Validate the complete typed value and all element bounds before the effect. Timeout does not establish that the native parameter
-- stayed unchanged.
-- \@param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
-- \@param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
-- \@param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request changes no policy.
-- \@param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may require less.
-- \@param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after status/length checks.
-- \@param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
-- \@param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave it untouched; only
-- an overwritten sentinel reports a required extent.
-- \@return Unsigned Host status 0 on success; nonzero is the original ABI errno.
-- \@permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants
-- none.
-- \@failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125
-- revoke. Do not replay effects.
-- \@lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or
-- host pointers.
-- \@thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this
-- wrapper.
-- \@version ABI 1; exact selected ROS 1/ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
-- \@see share/platform/ros/haskell/API-CONTRACT.md; share/platform/ros/haskell/XMAKE-EXAMPLES.md
rawParameterSet :: Word64 -> Word32 -> Word64 -> Word64 -> Word64 -> Word64 -> Word64 -> IO Word32
rawParameterSet handle memory request_offset request_length response_offset capacity length_out_offset =
    invoke 32
      (fromIntegral handle)
      (fromIntegral memory)
      (fromIntegral request_offset)
      (fromIntegral request_length)
      (fromIntegral response_offset)
      (fromIntegral capacity)
      (fromIntegral length_out_offset)
-- | rawParameterSubscribeEvents: Activate a separate ROS2 parameter-event projection grant. This takes only one handle, not the seven RPC arguments.
-- \@brief Activate a separate ROS2 parameter-event projection grant. This takes only one handle, not the seven RPC arguments.
-- \@details ROS2 only. Activate the separate projection grant and consume its exact event codec; do not pass the seven RPC arguments.
-- \@param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
-- \@return Unsigned Host status 0 on success; nonzero is the original ABI errno.
-- \@permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants
-- none.
-- \@failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125
-- revoke. Do not replay effects.
-- \@lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or
-- host pointers.
-- \@thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this
-- wrapper.
-- \@version ABI 1; exact selected ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
-- \@see share/platform/ros/haskell/API-CONTRACT.md; share/platform/ros/haskell/XMAKE-EXAMPLES.md
rawParameterSubscribeEvents :: Word64 -> IO Word32
rawParameterSubscribeEvents handle =
    invoke 33 (fromIntegral handle) (0) (0) (0) (0) (0) (0)
-- | rawParameterUndeclare: Undeclare a typed parameter on the explicitly selected local ROS2 Gateway node. A missing remote operation is not
-- emulated.
-- \@brief Undeclare a typed parameter on the explicitly selected local ROS2 Gateway node. A missing remote operation is not emulated.
-- \@details ROS2 local Gateway node only. An unsupported remote operation remains unsupported rather than being replaced by delete or set.
-- \@param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
-- \@param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
-- \@param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request changes no policy.
-- \@param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may require less.
-- \@param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after status/length checks.
-- \@param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
-- \@param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave it untouched; only
-- an overwritten sentinel reports a required extent.
-- \@return Unsigned Host status 0 on success; nonzero is the original ABI errno.
-- \@permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants
-- none.
-- \@failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125
-- revoke. Do not replay effects.
-- \@lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or
-- host pointers.
-- \@thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this
-- wrapper.
-- \@version ABI 1; exact selected ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
-- \@see share/platform/ros/haskell/API-CONTRACT.md; share/platform/ros/haskell/XMAKE-EXAMPLES.md
rawParameterUndeclare :: Word64 -> Word32 -> Word64 -> Word64 -> Word64 -> Word64 -> Word64 -> IO Word32
rawParameterUndeclare handle memory request_offset request_length response_offset capacity length_out_offset =
    invoke 34
      (fromIntegral handle)
      (fromIntegral memory)
      (fromIntegral request_offset)
      (fromIntegral request_length)
      (fromIntegral response_offset)
      (fromIntegral capacity)
      (fromIntegral length_out_offset)
-- | rawServiceAdvertise: Activate the explicitly granted service server. Poll owned request IDs through event_poll.
-- \@brief Activate the explicitly granted service server. Poll owned request IDs through event_poll.
-- \@details The server owns only requests actually delivered to it. A responder is a separate grant; advertising does not grant arbitrary responses.
-- \@param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
-- \@return Unsigned Host status 0 on success; nonzero is the original ABI errno.
-- \@permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants
-- none.
-- \@failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125
-- revoke. Do not replay effects.
-- \@lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or
-- host pointers.
-- \@thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this
-- wrapper.
-- \@version ABI 1; exact selected ROS 1/ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
-- \@see share/platform/ros/haskell/API-CONTRACT.md; share/platform/ros/haskell/XMAKE-EXAMPLES.md
rawServiceAdvertise :: Word64 -> IO Word32
rawServiceAdvertise handle =
    invoke 35 (fromIntegral handle) (0) (0) (0) (0) (0) (0)
-- | rawServiceCall: Call the explicitly selected service using its canonical request/response type and configured deadline. Do not automatically
-- replay a timed-out call.
-- \@brief Call the explicitly selected service using its canonical request/response type and configured deadline. Do not automatically replay a
-- timed-out call.
-- \@details Use the exact request/response canonical identity selected by the Host. The finite deadline belongs to trusted policy, not a
-- Guest-supplied route.
-- \@param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
-- \@param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
-- \@param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request changes no policy.
-- \@param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may require less.
-- \@param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after status/length checks.
-- \@param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
-- \@param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave it untouched; only
-- an overwritten sentinel reports a required extent.
-- \@return Unsigned Host status 0 on success; nonzero is the original ABI errno.
-- \@permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants
-- none.
-- \@failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125
-- revoke. Do not replay effects.
-- \@lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or
-- host pointers.
-- \@thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this
-- wrapper.
-- \@version ABI 1; exact selected ROS 1/ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
-- \@see share/platform/ros/haskell/API-CONTRACT.md; share/platform/ros/haskell/XMAKE-EXAMPLES.md
rawServiceCall :: Word64 -> Word32 -> Word64 -> Word64 -> Word64 -> Word64 -> Word64 -> IO Word32
rawServiceCall handle memory request_offset request_length response_offset capacity length_out_offset =
    invoke 36
      (fromIntegral handle)
      (fromIntegral memory)
      (fromIntegral request_offset)
      (fromIntegral request_length)
      (fromIntegral response_offset)
      (fromIntegral capacity)
      (fromIntegral length_out_offset)
-- | rawServiceRespond: Respond to an owned live request using a separate response grant and u64 request-ID-prefixed canonical response.
-- \@brief Respond to an owned live request using a separate response grant and u64 request-ID-prefixed canonical response.
-- \@details Prefix the response with the actually delivered request ID. This legacy operation does not implement the separate owned-native raw12
-- protocol.
-- \@param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
-- \@param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
-- \@param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request changes no policy.
-- \@param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may require less.
-- \@param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after status/length checks.
-- \@param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
-- \@param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave it untouched; only
-- an overwritten sentinel reports a required extent.
-- \@return Unsigned Host status 0 on success; nonzero is the original ABI errno.
-- \@permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants
-- none.
-- \@failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125
-- revoke. Do not replay effects.
-- \@lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or
-- host pointers.
-- \@thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this
-- wrapper.
-- \@version ABI 1; exact selected ROS 1/ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
-- \@see share/platform/ros/haskell/API-CONTRACT.md; share/platform/ros/haskell/XMAKE-EXAMPLES.md
rawServiceRespond :: Word64 -> Word32 -> Word64 -> Word64 -> Word64 -> Word64 -> Word64 -> IO Word32
rawServiceRespond handle memory request_offset request_length response_offset capacity length_out_offset =
    invoke 37
      (fromIntegral handle)
      (fromIntegral memory)
      (fromIntegral request_offset)
      (fromIntegral request_length)
      (fromIntegral response_offset)
      (fromIntegral capacity)
      (fromIntegral length_out_offset)
-- | rawServiceSubmit: Admit one bounded asynchronous service request. A successful acknowledgement writes requestID; completion requires explicit
-- service-response and resource-error observation. Never replay a timeout.
-- \@brief Admit one bounded asynchronous service request. A successful acknowledgement writes requestID; completion requires explicit
-- service-response and resource-error observation. Never replay a timeout.
-- \@details Register correlation/cleanup state before admission. Observe service-response and resource-error events explicitly; never replay
-- unknown delivery.
-- \@param[in] source_handle Separately authorized source owner in this Instance and backend. The observer does not confer source rights.
-- \@param[in] observer_handle Separately authorized event.observe owner paired with the selected source by trusted Host policy.
-- \@param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
-- \@param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request changes no policy.
-- \@param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may require less.
-- \@param[out] request_id_out_offset Byte offset of an eight-byte LE request-ID slot written on successful admission. Acknowledgement does not
-- mean that the native service completed.
-- \@return Unsigned Host status 0 on success; nonzero is the original ABI errno.
-- \@permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants
-- none.
-- \@failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125
-- revoke. Do not replay effects.
-- \@lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or
-- host pointers.
-- \@thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this
-- wrapper.
-- \@version ABI 1; exact selected ROS 1/ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
-- \@see share/platform/ros/haskell/API-CONTRACT.md; share/platform/ros/haskell/XMAKE-EXAMPLES.md
rawServiceSubmit :: Word64 -> Word64 -> Word32 -> Word64 -> Word64 -> Word64 -> IO Word32
rawServiceSubmit source_handle observer_handle memory request_offset request_length request_id_out_offset =
    invoke 38 (fromIntegral source_handle) (fromIntegral observer_handle) (fromIntegral memory) (fromIntegral request_offset) (fromIntegral
        request_length) (fromIntegral request_id_out_offset) (0)
-- | rawTfBroadcast: Broadcast one canonical TransformStamped for the separately configured frame pair. Do not normalize its quaternion implicitly.
-- \@brief Broadcast one canonical TransformStamped for the separately configured frame pair. Do not normalize its quaternion implicitly.
-- \@details Preserve every TransformStamped field and unit. Neither normalizing a quaternion nor changing frame names is an implicit codec step.
-- \@param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
-- \@param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
-- \@param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request changes no policy.
-- \@param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may require less.
-- \@param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after status/length checks.
-- \@param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
-- \@param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave it untouched; only
-- an overwritten sentinel reports a required extent.
-- \@return Unsigned Host status 0 on success; nonzero is the original ABI errno.
-- \@permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants
-- none.
-- \@failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125
-- revoke. Do not replay effects.
-- \@lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or
-- host pointers.
-- \@thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this
-- wrapper.
-- \@version ABI 1; exact selected ROS 1/ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
-- \@see share/platform/ros/haskell/API-CONTRACT.md; share/platform/ros/haskell/XMAKE-EXAMPLES.md
rawTfBroadcast :: Word64 -> Word32 -> Word64 -> Word64 -> Word64 -> Word64 -> Word64 -> IO Word32
rawTfBroadcast handle memory request_offset request_length response_offset capacity length_out_offset =
    invoke 39
      (fromIntegral handle)
      (fromIntegral memory)
      (fromIntegral request_offset)
      (fromIntegral request_length)
      (fromIntegral response_offset)
      (fromIntegral capacity)
      (fromIntegral length_out_offset)
-- | rawTfLookup: Request the separately configured source/target frame pair at u64 nanoseconds; zero selects the latest admitted transform.
-- \@brief Request the separately configured source/target frame pair at u64 nanoseconds; zero selects the latest admitted transform.
-- \@details The request is u64 nanoseconds in the admitted clock domain;0 selects latest. Source/target frames remain fixed by the independent grant.
-- \@param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
-- \@param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
-- \@param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request changes no policy.
-- \@param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may require less.
-- \@param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after status/length checks.
-- \@param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
-- \@param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave it untouched; only
-- an overwritten sentinel reports a required extent.
-- \@return Unsigned Host status 0 on success; nonzero is the original ABI errno.
-- \@permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants
-- none.
-- \@failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125
-- revoke. Do not replay effects.
-- \@lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or
-- host pointers.
-- \@thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this
-- wrapper.
-- \@version ABI 1; exact selected ROS 1/ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
-- \@see share/platform/ros/haskell/API-CONTRACT.md; share/platform/ros/haskell/XMAKE-EXAMPLES.md
rawTfLookup :: Word64 -> Word32 -> Word64 -> Word64 -> Word64 -> Word64 -> Word64 -> IO Word32
rawTfLookup handle memory request_offset request_length response_offset capacity length_out_offset =
    invoke 40
      (fromIntegral handle)
      (fromIntegral memory)
      (fromIntegral request_offset)
      (fromIntegral request_length)
      (fromIntegral response_offset)
      (fromIntegral capacity)
      (fromIntegral length_out_offset)
-- | rawTimeReadRos: Read the separately authorized ROS clock domain as little-endian u64 nanoseconds.
-- \@brief Read the separately authorized ROS clock domain as little-endian u64 nanoseconds.
-- \@details Read exact u64 nanoseconds in the separately authorized ros domain. Do not treat steady time as an epoch or borrow another clock grant.
-- \@param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
-- \@param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
-- \@param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request changes no policy.
-- \@param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may require less.
-- \@param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after status/length checks.
-- \@param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
-- \@param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave it untouched; only
-- an overwritten sentinel reports a required extent.
-- \@return Unsigned Host status 0 on success; nonzero is the original ABI errno.
-- \@permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants
-- none.
-- \@failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125
-- revoke. Do not replay effects.
-- \@lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or
-- host pointers.
-- \@thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this
-- wrapper.
-- \@version ABI 1; exact selected ROS 1/ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
-- \@see share/platform/ros/haskell/API-CONTRACT.md; share/platform/ros/haskell/XMAKE-EXAMPLES.md
rawTimeReadRos :: Word64 -> Word32 -> Word64 -> Word64 -> Word64 -> Word64 -> Word64 -> IO Word32
rawTimeReadRos handle memory request_offset request_length response_offset capacity length_out_offset =
    invoke 41
      (fromIntegral handle)
      (fromIntegral memory)
      (fromIntegral request_offset)
      (fromIntegral request_length)
      (fromIntegral response_offset)
      (fromIntegral capacity)
      (fromIntegral length_out_offset)
-- | rawTimeReadSteady: Read the independently authorized ROS2 steady clock as u64 nanoseconds.
-- \@brief Read the independently authorized ROS2 steady clock as u64 nanoseconds.
-- \@details Read exact u64 nanoseconds in the separately authorized steady domain. Do not treat steady time as an epoch or borrow another clock
-- grant.
-- \@param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
-- \@param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
-- \@param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request changes no policy.
-- \@param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may require less.
-- \@param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after status/length checks.
-- \@param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
-- \@param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave it untouched; only
-- an overwritten sentinel reports a required extent.
-- \@return Unsigned Host status 0 on success; nonzero is the original ABI errno.
-- \@permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants
-- none.
-- \@failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125
-- revoke. Do not replay effects.
-- \@lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or
-- host pointers.
-- \@thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this
-- wrapper.
-- \@version ABI 1; exact selected ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
-- \@see share/platform/ros/haskell/API-CONTRACT.md; share/platform/ros/haskell/XMAKE-EXAMPLES.md
rawTimeReadSteady :: Word64 -> Word32 -> Word64 -> Word64 -> Word64 -> Word64 -> Word64 -> IO Word32
rawTimeReadSteady handle memory request_offset request_length response_offset capacity length_out_offset =
    invoke 42
      (fromIntegral handle)
      (fromIntegral memory)
      (fromIntegral request_offset)
      (fromIntegral request_length)
      (fromIntegral response_offset)
      (fromIntegral capacity)
      (fromIntegral length_out_offset)
-- | rawTimeReadSystem: Read the independently authorized ROS2 system clock as u64 nanoseconds.
-- \@brief Read the independently authorized ROS2 system clock as u64 nanoseconds.
-- \@details Read exact u64 nanoseconds in the separately authorized system domain. Do not treat steady time as an epoch or borrow another clock
-- grant.
-- \@param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
-- \@param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
-- \@param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request changes no policy.
-- \@param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may require less.
-- \@param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after status/length checks.
-- \@param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
-- \@param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave it untouched; only
-- an overwritten sentinel reports a required extent.
-- \@return Unsigned Host status 0 on success; nonzero is the original ABI errno.
-- \@permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants
-- none.
-- \@failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125
-- revoke. Do not replay effects.
-- \@lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or
-- host pointers.
-- \@thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this
-- wrapper.
-- \@version ABI 1; exact selected ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
-- \@see share/platform/ros/haskell/API-CONTRACT.md; share/platform/ros/haskell/XMAKE-EXAMPLES.md
rawTimeReadSystem :: Word64 -> Word32 -> Word64 -> Word64 -> Word64 -> Word64 -> Word64 -> IO Word32
rawTimeReadSystem handle memory request_offset request_length response_offset capacity length_out_offset =
    invoke 43
      (fromIntegral handle)
      (fromIntegral memory)
      (fromIntegral request_offset)
      (fromIntegral request_length)
      (fromIntegral response_offset)
      (fromIntegral capacity)
      (fromIntegral length_out_offset)
-- | rawTimeReadWall: Read the independently authorized ROS1 wall clock; another time grant does not imply this one.
-- \@brief Read the independently authorized ROS1 wall clock; another time grant does not imply this one.
-- \@details Read exact u64 nanoseconds in the separately authorized wall domain. Do not treat steady time as an epoch or borrow another clock grant.
-- \@param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
-- \@param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
-- \@param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request changes no policy.
-- \@param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may require less.
-- \@param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after status/length checks.
-- \@param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
-- \@param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave it untouched; only
-- an overwritten sentinel reports a required extent.
-- \@return Unsigned Host status 0 on success; nonzero is the original ABI errno.
-- \@permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants
-- none.
-- \@failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125
-- revoke. Do not replay effects.
-- \@lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or
-- host pointers.
-- \@thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this
-- wrapper.
-- \@version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its selected backend.
-- \@see share/platform/ros/haskell/API-CONTRACT.md; share/platform/ros/haskell/XMAKE-EXAMPLES.md
rawTimeReadWall :: Word64 -> Word32 -> Word64 -> Word64 -> Word64 -> Word64 -> Word64 -> IO Word32
rawTimeReadWall handle memory request_offset request_length response_offset capacity length_out_offset =
    invoke 44
      (fromIntegral handle)
      (fromIntegral memory)
      (fromIntegral request_offset)
      (fromIntegral request_length)
      (fromIntegral response_offset)
      (fromIntegral capacity)
      (fromIntegral length_out_offset)
-- | rawTopicPublish: Publish one canonical generated message through a separately granted publisher alias.
-- \@brief Publish one canonical generated message through a separately granted publisher alias.
-- \@details Encode the full selected schema before this one effectful call. Acknowledgement is not a physical actuator-completion certificate.
-- \@param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
-- \@param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
-- \@param[in] payload_offset Byte offset of the complete canonical selected-type payload. It is not a native ROS object or host pointer.
-- \@param[in] payload_length Payload extent in bytes, within memory and the selected type/alias/envelope quota. Zero is type-dependent.
-- \@return Unsigned Host status 0 on success; nonzero is the original ABI errno.
-- \@permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants
-- none.
-- \@failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125
-- revoke. Do not replay effects.
-- \@lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or
-- host pointers.
-- \@thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this
-- wrapper.
-- \@version ABI 1; exact selected ROS 1/ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
-- \@see share/platform/ros/haskell/API-CONTRACT.md; share/platform/ros/haskell/XMAKE-EXAMPLES.md
rawTopicPublish :: Word64 -> Word32 -> Word64 -> Word64 -> IO Word32
rawTopicPublish handle memory payload_offset payload_length =
    invoke 45 (fromIntegral handle) (fromIntegral memory) (fromIntegral payload_offset) (fromIntegral payload_length) (0) (0) (0)
-- | rawTopicSubscribe: Activate a separately granted subscription queue. Receive messages through event_poll on the guest execution thread.
-- \@brief Activate a separately granted subscription queue. Receive messages through event_poll on the guest execution thread.
-- \@details Activation and payload consumption are separate. Poll on the Guest execution thread; no native callback re-enters the Guest.
-- \@param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
-- \@return Unsigned Host status 0 on success; nonzero is the original ABI errno.
-- \@permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants
-- none.
-- \@failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125
-- revoke. Do not replay effects.
-- \@lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or
-- host pointers.
-- \@thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this
-- wrapper.
-- \@version ABI 1; exact selected ROS 1/ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
-- \@see share/platform/ros/haskell/API-CONTRACT.md; share/platform/ros/haskell/XMAKE-EXAMPLES.md
rawTopicSubscribe :: Word64 -> IO Word32
rawTopicSubscribe handle =
    invoke 46 (fromIntegral handle) (0) (0) (0) (0) (0) (0)
data RPC
    = RpcActionAdvertise
    | RpcActionCancelAnyGoal
    | RpcActionCancelOwnGoal
    | RpcActionReceiveFeedback
    | RpcActionReceiveResult
    | RpcActionRespond
    | RpcActionSendGoal
    | RpcGraphInspectAction
    | RpcGraphInspectNode
    | RpcGraphInspectService
    | RpcGraphInspectTopic
    | RpcGraphListNodes
    | RpcGraphListServices
    | RpcGraphListTopics
    | RpcLifecycleChangeState
    | RpcLifecycleGetState
    | RpcParameterDeclare
    | RpcParameterDelete
    | RpcParameterDescribe
    | RpcParameterExists
    | RpcParameterGet
    | RpcParameterList
    | RpcParameterSearch
    | RpcParameterSet
    | RpcParameterUndeclare
    | RpcServiceCall
    | RpcServiceRespond
    | RpcTfBroadcast
    | RpcTfLookup
    | RpcTimeReadRos
    | RpcTimeReadSteady
    | RpcTimeReadSystem
    | RpcTimeReadWall deriving (Eq, Show)
rawRequest :: RPC -> Word64 -> Word64 -> Word64 -> Word64 -> Word64 -> Word64 -> IO Word32
rawRequest op h a n b c z = invoke (case op of
  RpcActionAdvertise -> 1
  RpcActionCancelAnyGoal -> 2
  RpcActionCancelOwnGoal -> 3
  RpcActionReceiveFeedback -> 4
  RpcActionReceiveResult -> 5
  RpcActionRespond -> 6
  RpcActionSendGoal -> 7
  RpcGraphInspectAction -> 15
  RpcGraphInspectNode -> 16
  RpcGraphInspectService -> 17
  RpcGraphInspectTopic -> 18
  RpcGraphListNodes -> 19
  RpcGraphListServices -> 20
  RpcGraphListTopics -> 21
  RpcLifecycleChangeState -> 22
  RpcLifecycleGetState -> 23
  RpcParameterDeclare -> 25
  RpcParameterDelete -> 26
  RpcParameterDescribe -> 27
  RpcParameterExists -> 28
  RpcParameterGet -> 29
  RpcParameterList -> 30
  RpcParameterSearch -> 31
  RpcParameterSet -> 32
  RpcParameterUndeclare -> 34
  RpcServiceCall -> 36
  RpcServiceRespond -> 37
  RpcTfBroadcast -> 39
  RpcTfLookup -> 40
  RpcTimeReadRos -> 41
  RpcTimeReadSteady -> 42
  RpcTimeReadSystem -> 43
  RpcTimeReadWall -> 44
  ) h 0 a n b c z
