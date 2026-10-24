//! Exact optional raw12 imports. The original81 business ABI is unchanged.
//! All memory indices are i32/u32; offsets/lengths/handles/tickets are i64/u64.
//! The memory-zero convenience transport refuses non-wasm32 before ANY import.
//!
//! @brief Original numeric ROS2 owned-Service imports and the memory-zero transport.
//! @details Every status-bearing operation returns 0 on success and the original
//! unsigned errno otherwise. Every nonzero result preserves output. Preserve
//! denial, stale owner, idle/quota, capacity, unsupported, disconnect, timeout and
//! revocation separately; an uncertain native effect is never safe to replay.
//! @lifetime Raw callers keep each admitted memory range live, stable and
//! correctly bounded through synchronous return. Integer offsets are not Rust
//! references or GC roots. Neither a ticket nor a receipt is bearer authority.
//! @thread Serialize operations on one source/incarnation on the admitted Guest
//! thread. No callback, executor, background task or native pointer is installed.
//! @permissions Default rights are empty. The current Runtime principal and
//! separately granted exact aliases/types/directions/quotas/deadlines govern calls.
//! @version Optional uwvm_ros2_rmw_srv_v1 ABI 1; original ROS business ABI unchanged.
//! @see crate::Transport; crate::wire; crate::Group
use crate::Transport;

#[cfg_attr(
    target_family = "wasm",
    link(wasm_import_module = "uwvm_ros2_rmw_srv_v1")
)]
unsafe extern "C" {
    /// @brief Query the optional owned-Service ABI version.
    /// @details Creates no endpoint and does not inspect a native service graph.
    /// @return Version 1; this is a version value, not a success status.
    /// @permissions Module admission only; no ROS owner is opened.
    /// @see Wasm; crate::Group::new
    pub fn abi_version() -> u32;
    /// @brief Activate one retained client from its exact call/observer pair.
    /// @details A successful activation writes the actual UMRE256 incarnation,
    /// both native QoS profiles and actual client GID, without submitting a request.
    /// @param[in] source Live same-Instance service.call handle.
    /// @param[in] observer Independently granted event.observe handle for this pair.
    /// @param[in] memory Admitted Guest memory index.
    /// @param[out] receipt Offset of 256 writable bytes, inspected only after status 0.
    /// @return Original unsigned status; a refusal preserves all receipt bytes.
    /// @permissions Exact call/observer pairing and native type/QoS policy.
    /// @see service_activate; endpoint_inspect; crate::wire::receipt
    pub fn client_activate(source: u64, observer: u64, memory: u32, receipt: u64) -> u32;
    /// @brief Activate one retained server from its advertise/respond pair.
    /// @details The native endpoint and its actual QoS come from trusted policy;
    /// the Guest supplies no node, service name or substitute type-support object.
    /// @param[in] source Live same-Instance service.advertise handle.
    /// @param[in] responder Independent service.respond handle for this source.
    /// @param[in] memory Admitted Guest memory index.
    /// @param[out] receipt Offset of 256 writable UMRE bytes; server GID extent is 0.
    /// @return Original unsigned status; a refusal preserves all receipt bytes.
    /// @permissions Exact advertise/respond pairing, schema and native QoS policy.
    /// @see client_activate; endpoint_inspect; crate::wire::Receipt
    pub fn service_activate(source: u64, responder: u64, memory: u32, receipt: u64) -> u32;
    /// @brief Inspect the exact current retained endpoint incarnation.
    /// @details Returns authenticated UMRE256 for this endpoint; it neither
    /// reactivates a closed endpoint nor refreshes a stale generation.
    /// @param[in] source Original live call or advertise handle.
    /// @param[in] incarnation Nonzero incarnation copied from successful activation.
    /// @param[in] memory Admitted Guest memory index.
    /// @param[out] receipt Offset of 256 writable bytes, unchanged on failure.
    /// @return Original unsigned status; inspect data is usable only on status 0.
    /// @permissions Existing current endpoint and its original trusted pair.
    /// @see endpoint_retire; crate::wire::receipt
    pub fn endpoint_inspect(source: u64, incarnation: u64, memory: u32, receipt: u64) -> u32;
    /// @brief Submit one complete canonical request through the retained client.
    /// @details Success means admission/submission, never a completed response.
    /// Do not retry an uncertain send or reinterpret its ticket as a native sequence.
    /// @param[in] source Original live service.call handle.
    /// @param[in] incarnation Exact current client incarnation.
    /// @param[in] memory Admitted memory containing both input and ticket output.
    /// @param[in] input Stable request-body byte offset; logical Empty has length 0.
    /// @param[in] length Complete canonical request extent in bytes within its grant.
    /// @param[out] ticket Offset of eight writable bytes for a nonzero LE u64 ticket.
    /// @return Original unsigned status; nonzero leaves the ticket slot unchanged.
    /// @permissions Original exact call/schema, quota, deadline and retained pair.
    /// @see endpoint_peek; client_abandon; crate::Client::submit
    pub fn client_submit(
        source: u64,
        incarnation: u64,
        memory: u32,
        input: u64,
        length: u64,
        ticket: u64,
    ) -> u32;
    /// @brief Abandon this client's pending ticket locally.
    /// @details Retains its tombstone and disposes a late response. This operation
    /// does not claim DDS request cancellation, rollback or permission to resubmit.
    /// @param[in] source Original live service.call handle.
    /// @param[in] incarnation Exact current client incarnation.
    /// @param[in] ticket Nonzero ticket returned for this client, never synthesized.
    /// @return Original unsigned status; no memory output is written.
    /// @permissions Existing pending request under its original client authority.
    /// @see client_submit; endpoint_retire; crate::Client::abandon
    pub fn client_abandon(source: u64, incarnation: u64, ticket: u64) -> u32;
    /// @brief Respond once to an actual committed server request ticket.
    /// @details The complete response is checked against the original Service
    /// response schema. A timeout may follow a native send; do not replay it.
    /// @param[in] source Original live service.advertise handle.
    /// @param[in] incarnation Exact current server incarnation.
    /// @param[in] responder Its independently granted service.respond handle.
    /// @param[in] ticket Nonzero ticket of this server's committed request.
    /// @param[in] memory Admitted Guest memory index containing the response.
    /// @param[in] input Stable offset of complete canonical response bytes.
    /// @param[in] length Exact response-body byte extent, including 0 for Empty.
    /// @return Original unsigned status; no memory output is written.
    /// @permissions Matching respond/type/direction/quota/deadline grant.
    /// @see endpoint_commit; crate::Server::respond
    pub fn service_respond(
        source: u64,
        incarnation: u64,
        responder: u64,
        ticket: u64,
        memory: u32,
        input: u64,
        length: u64,
    ) -> u32;
    /// @brief Borrow one complete same-take delivery without consuming it.
    /// @details Output is UMRC160 plus URMI192 plus the complete canonical body.
    /// Validate association, extent and body before exact commit or cancel.
    /// There is no second length output; read the checked UMRC record extent.
    /// @param[in] source Original retained endpoint source handle.
    /// @param[in] incarnation Exact current endpoint incarnation.
    /// @param[in] writer Expected native writer-GUID extent in bytes; this crate
    /// requires 16. The Host refuses 0 or extents above 16 with status 95.
    /// @param[in] memory Admitted Guest memory index.
    /// @param[out] packet Offset of exclusive writable complete-packet storage.
    /// @param[in] capacity Available bytes, inclusive range 352 through 4194304.
    /// @return Original unsigned status; idle/refusal preserves every output byte.
    /// @permissions Existing pair and actual observer/server delivery admission.
    /// @see endpoint_commit; endpoint_cancel; crate::wire::envelope
    pub fn endpoint_peek(
        source: u64,
        incarnation: u64,
        writer: u32,
        memory: u32,
        packet: u64,
        capacity: u64,
    ) -> u32;
    /// @brief Consume the exact delivery represented by a successful borrow.
    /// @details Sequence and reservation must match together. An uncertain ACK
    /// requires endpoint/session retirement; a retry cannot prove exactly-once use.
    /// @param[in] source Original retained endpoint source handle.
    /// @param[in] incarnation Exact current endpoint incarnation.
    /// @param[in] sequence Positive accepted-stream sequence from this borrow.
    /// @param[in] reservation Distinct nonreused reservation nonce from this borrow.
    /// @return Original unsigned ACK status; no output is written.
    /// @permissions Exact live borrow under its original deadline and endpoint.
    /// @see endpoint_peek; endpoint_cancel; endpoint_retire
    pub fn endpoint_commit(source: u64, incarnation: u64, sequence: u64, reservation: u64) -> u32;
    /// @brief Release an exact borrow while preserving its underlying record.
    /// @details A later borrow uses a fresh nonce, even for the same sequence.
    /// Preserve the primary refusal and this separate ACK result; never retry an
    /// ambiguous cancel or use cancel as native request cancellation.
    /// @param[in] source Original retained endpoint source handle.
    /// @param[in] incarnation Exact current endpoint incarnation.
    /// @param[in] sequence Positive sequence from the outstanding borrow.
    /// @param[in] reservation Exact outstanding borrow reservation nonce.
    /// @return Original unsigned ACK status; no output is written.
    /// @permissions Exact live borrow under its original deadline and endpoint.
    /// @see endpoint_peek; endpoint_commit; endpoint_retire
    pub fn endpoint_cancel(source: u64, incarnation: u64, sequence: u64, reservation: u64) -> u32;
    /// @brief Query availability through this actual retained client.
    /// @details Zero wait performs one observation. A finite wait is bounded by
    /// trusted Host/native deadlines; no probe client, graph query or Guest sleep
    /// substitutes for unavailable native functionality.
    /// @param[in] source Original live service.call handle.
    /// @param[in] incarnation Exact current client incarnation.
    /// @param[in] availability Independent service.available owner for this pair.
    /// @param[in] wait_ns Explicit unsigned nanosecond bound; 0 is nonblocking.
    /// @param[in] memory Admitted Guest memory index.
    /// @param[out] available Offset of one writable byte, exactly 0 or 1 on success.
    /// @return Original unsigned status; 95 stays unsupported and output is unchanged.
    /// @permissions Separate availability/schema/quota/deadline grant; no call debit.
    /// @see crate::Client::available; endpoint_inspect
    pub fn client_available(
        source: u64,
        incarnation: u64,
        availability: u64,
        wait_ns: u64,
        memory: u32,
        available: u64,
    ) -> u32;
    /// @brief Retire the exact native endpoint incarnation once.
    /// @details Tombstone its retained association before native cleanup. Close
    /// the raw owners separately and retain each outcome; an old disconnected
    /// session remains a disconnect, not a successful newly created endpoint.
    /// @param[in] source Original retained endpoint source handle.
    /// @param[in] incarnation Exact incarnation observed before cleanup.
    /// @return Original unsigned retirement status; no output is written.
    /// @permissions Existing endpoint association and its original Runtime principal.
    /// @see crate::Group::shutdown; crate::CloseReport
    pub fn endpoint_retire(source: u64, incarnation: u64) -> u32;
}
fn offset<T>(p: *const T) -> u64 {
    p as usize as u64
}
/// Genuine synchronous numeric memory-zero transport. This is not a mock or a
/// provider loader. Host policy still independently authorizes every operation.
/// @brief Concrete transport using the original numeric raw12 imports.
/// @details Supports only wasm32 with 32-bit pointers. Other targets report 95
/// without importing or calling the Host. It retains no borrowed Rust pointer.
/// @see Transport; crate::Group::new
pub struct Wasm;
macro_rules! actual {
    ($body:expr) => {{
        #[cfg(all(target_arch = "wasm32", target_pointer_width = "32"))]
        {
            unsafe { $body }
        }
        #[cfg(not(all(target_arch = "wasm32", target_pointer_width = "32")))]
        {
            95
        }
    }};
}
// SAFETY: Host calls copy complete slices synchronously; live Rust references
// cover every imported memory range. No GC object/native pointer is passed.
unsafe impl Transport for Wasm {
    fn supported(&self) -> bool {
        cfg!(all(target_arch = "wasm32", target_pointer_width = "32"))
    }
    fn version(&mut self) -> u32 {
        actual!(abi_version())
    }
    fn business_version(&mut self) -> u32 {
        actual!(roswasm::raw::ros2::abi_version())
    }
    fn open(&mut self, a: &[u8], out: &mut [u8; 8]) -> u32 {
        actual!(roswasm::raw::ros2::capability_open(
            0,
            offset(a.as_ptr()),
            a.len() as u64,
            offset(out.as_mut_ptr())
        ))
    }
    fn close(&mut self, h: u64) -> u32 {
        actual!(roswasm::raw::ros2::capability_close(h))
    }
    fn activate(&mut self, role: u8, h: u64, p: u64, out: &mut [u8; 256]) -> u32 {
        if role == 3 {
            actual!(client_activate(h, p, 0, offset(out.as_mut_ptr())))
        } else if role == 4 {
            actual!(service_activate(h, p, 0, offset(out.as_mut_ptr())))
        } else {
            95
        }
    }
    fn inspect(&mut self, h: u64, i: u64, out: &mut [u8; 256]) -> u32 {
        actual!(endpoint_inspect(h, i, 0, offset(out.as_mut_ptr())))
    }
    fn submit(&mut self, h: u64, i: u64, b: &[u8], out: &mut [u8; 8]) -> u32 {
        actual!(client_submit(
            h,
            i,
            0,
            offset(b.as_ptr()),
            b.len() as u64,
            offset(out.as_mut_ptr())
        ))
    }
    fn abandon(&mut self, h: u64, i: u64, t: u64) -> u32 {
        actual!(client_abandon(h, i, t))
    }
    fn respond(&mut self, h: u64, i: u64, p: u64, t: u64, b: &[u8]) -> u32 {
        actual!(service_respond(
            h,
            i,
            p,
            t,
            0,
            offset(b.as_ptr()),
            b.len() as u64
        ))
    }
    fn peek(&mut self, h: u64, i: u64, b: &mut [u8]) -> u32 {
        actual!(endpoint_peek(
            h,
            i,
            16,
            0,
            offset(b.as_mut_ptr()),
            b.len() as u64
        ))
    }
    fn commit(&mut self, h: u64, i: u64, s: u64, n: u64) -> u32 {
        actual!(endpoint_commit(h, i, s, n))
    }
    fn cancel(&mut self, h: u64, i: u64, s: u64, n: u64) -> u32 {
        actual!(endpoint_cancel(h, i, s, n))
    }
    fn available(&mut self, h: u64, i: u64, q: u64, w: u64, out: &mut [u8; 1]) -> u32 {
        actual!(client_available(h, i, q, w, 0, offset(out.as_mut_ptr())))
    }
    fn retire(&mut self, h: u64, i: u64) -> u32 {
        actual!(endpoint_retire(h, i))
    }
}
