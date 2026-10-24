//! Genuine optional owned-RMW ROS2 Service transport. No legacy business RPC.
//!
//! A caller-driven, process-local Group owns all aliases, actual native receipts,
//! nonreused ticket history and scratch before first open. It is !Send/!Sync.
//! Only the explicit unsafe Transport seam permits future model injection; the
//! normal Wasm backend performs the exact existing numeric raw12 imports.
//! Neither native type/codec strings nor numerical receipt values grant rights.
//!
//! @brief Retained original ROS2 Service clients and servers over numeric raw12.
//! @details Group owns endpoint history, scratch and reverse cleanup. Views and
//! tickets remain process-local; no endpoint slot, alias or ticket history is
//! recycled. Callback reentry refuses before mutation. All Guest calls are
//! synchronous on the admitted thread; delayed native responses require explicit
//! poll. Drop attempts cleanup but cannot report errors: call shutdown explicitly.
//! @permissions Separately granted call/observe or advertise/respond owners and
//! exact original native type/QoS/schema/quota/deadline policy. Availability needs
//! its own grant. Defaults create no Node, clock, executor or ROS authority.
//! @version Optional ROS2 owned-Service ABI 1 plus original business ABI 1.
//! @see Group; Transport; Diagnostic; raw; wire
#![no_std]
extern crate alloc;
use alloc::{rc::Rc, vec::Vec};
use core::{cell::Cell, marker::PhantomData, mem::size_of};
use roswasm::{codes, typed::Canonical, Error};
/// @brief Original optional numeric imports and concrete memory-zero transport.
/// @details Selecting this module grants no rights or target-runtime acceptance.
/// @see Transport; Group::new
pub mod raw;
/// Complete original32-record/seven-service canonical value family.
///
/// The pinned shared operator generated every field from the retained original
/// definitions. Pure codecs create no Native identity or capability. Their
/// source/formatter proof is share/platform/ros/rs/owned_control_records.json.
/// See the application binding functions for the exact Service-root pairing.
pub mod records;
/// @brief Checked UMRE/UMRC/URMI records with complete same-take metadata.
/// @details Pure parsers preserve control/data distinctions and all native bits.
/// @see Receipt; ServiceInfo; Delivery
pub mod wire;
pub use raw::Wasm;
pub use wire::{ControlEvent, Receipt, ServiceInfo};
fn err(code: u32) -> Error {
    Error::new(code)
}
fn codec_error(e: Error) -> Error {
    if e.code == 0 {
        err(22)
    } else {
        e
    }
}
fn service_name(name: &str) -> bool {
    let mut p = name.split('/');
    let a = p.next().unwrap_or("");
    let middle = p.next();
    let leaf = p.next().unwrap_or("");
    p.next().is_none()
        && middle == Some("srv")
        && a.as_bytes()
            .first()
            .map_or(false, |v| v.is_ascii_lowercase())
        && a.bytes()
            .all(|v| v.is_ascii_lowercase() || v.is_ascii_digit() || v == b'_')
        && leaf
            .as_bytes()
            .first()
            .map_or(false, |v| v.is_ascii_uppercase())
        && leaf.bytes().all(|v| v.is_ascii_alphanumeric() || v == b'_')
}
fn status(code: u32) -> Result<(), Error> {
    if code == 0 {
        Ok(())
    } else {
        Err(err(code))
    }
}
fn allocated<T: Default>(n: usize) -> Result<Vec<T>, Error> {
    let mut v = Vec::new();
    v.try_reserve_exact(n).map_err(|_| err(12))?;
    v.resize_with(n, T::default);
    Ok(v)
}

/// Trusted synchronous transport contract, NOT an authority or plugin ABI.
///
/// # Safety
/// Every method must perform at most the named genuine operation, keep all
/// borrowed slices alive during its call, retain no pointer and never invoke
/// Guest callbacks. Nonzero errors preserve output. A model implementation is
/// local-test evidence only and cannot establish Guest/native qualification.
/// Implementations must not panic across an imported/retained native effect.
///
/// @brief Explicit trusted synchronous seam for original owned-Service operations.
/// @details The Group owns the implementation and serializes mutable calls.
/// Methods retain no borrowed pointer, transfer no Guest reference to Native and
/// perform no hidden retries. Status-bearing methods return the original unsigned
/// errno: 0 is success, every nonzero status preserves all output bytes. Version
/// methods return versions instead. There is no authority or provider-loader ABI.
/// @permissions Genuine Host calls require the current principal's exact original
/// grants. A local model implementation supplies no Guest/native acceptance.
/// @see raw::Wasm; Group::prepare; Diagnostic
pub unsafe trait Transport {
    /// @brief Report whether this implementation supports its selected execution target.
    /// @details Called before Group preallocation; it opens no endpoint or owner.
    /// @param[in] self Borrowed implementation, unchanged through this query.
    /// @return True for an implemented route; false makes preparation return 95.
    /// @see Group::prepare; raw::Wasm
    fn supported(&self) -> bool;
    /// @brief Query the original optional owned-Service ABI version.
    /// @details No endpoint or alias may be created by this version query.
    /// @param[in,out] self Exclusively borrowed implementation through synchronous return.
    /// @return Actual optional namespace version; Group requires 1 before any open.
    /// @see Transport::business_version; raw::abi_version
    fn version(&mut self) -> u32;
    /// @brief Query the original ROS2 business namespace ABI version.
    /// @details This independently verifies the namespace used for raw owner opens/closes.
    /// @param[in,out] self Exclusively borrowed implementation through synchronous return.
    /// @return Actual business ABI version; Group requires 1, not a status value.
    /// @see Transport::version; roswasm::raw::ros2::abi_version
    fn business_version(&mut self) -> u32;
    /// @brief Open one exact independently granted raw owner alias.
    /// @details Success writes one full generation/index handle; retain no alias pointer.
    /// @param[in,out] self Exclusive synchronous transport state.
    /// @param[in] alias Exact UTF-8 policy alias bytes, nonempty, at most 255, no NUL.
    /// @param[out] out Eight exclusive writable bytes for the nonzero LE u64 handle.
    /// @return Original unsigned open status; every nonzero result preserves out.
    /// @permissions The alias must already be granted to the current Instance.
    /// @see Transport::close; Group::client; Group::server
    fn open(&mut self, alias: &[u8], out: &mut [u8; 8]) -> u32;
    /// @brief Close one actual raw owner after native incarnation retirement.
    /// @details Closing a diagnostic numeric copy cannot transfer its ownership.
    /// @param[in,out] self Exclusive transport state through synchronous return.
    /// @param[in] handle Complete originally opened same-Instance handle.
    /// @return Original unsigned close status; no memory output is written.
    /// @permissions Existing owner association; no alias regrant or retry is added.
    /// @see Transport::retire; CloseReport; Group::shutdown
    fn close(&mut self, handle: u64) -> u32;
    /// @brief Activate one exact paired client or server endpoint.
    /// @details Selects original client_activate for role 3 or service_activate for
    /// role 4. The actual UMRE256 is still validated separately by Group.
    /// @param[in,out] self Exclusive synchronous transport state.
    /// @param[in] role Exactly 3 client or 4 server; other roles are unsupported.
    /// @param[in] source Full live call or advertise handle for that role.
    /// @param[in] peer Distinct paired observer or responder handle.
    /// @param[out] out Exactly 256 exclusive writable bytes for the actual receipt.
    /// @return Original unsigned status; nonzero preserves the complete output.
    /// @permissions Original independently admitted pair/type/QoS policy.
    /// @see Transport::inspect; wire::receipt; Diagnostic::activation
    fn activate(&mut self, role: u8, source: u64, peer: u64, out: &mut [u8; 256]) -> u32;
    /// @brief Query the actual current endpoint without reopening or replacing it.
    /// @details Writes an original UMRE256 for exact saved-incarnation validation.
    /// @param[in,out] self Exclusive synchronous transport state.
    /// @param[in] source Full original endpoint source handle.
    /// @param[in] incarnation Exact nonzero incarnation from its accepted receipt.
    /// @param[out] out Exactly 256 exclusive writable receipt bytes.
    /// @return Original unsigned status; every nonzero result preserves out.
    /// @permissions Original live endpoint and retained native-session association.
    /// @see Transport::activate; wire::receipt; Diagnostic::inspect_validation
    fn inspect(&mut self, source: u64, incarnation: u64, out: &mut [u8; 256]) -> u32;
    /// @brief Submit one complete canonical body through this retained client.
    /// @details A successful nonzero ticket is admission, never an already completed reply.
    /// @param[in,out] self Exclusive synchronous transport state.
    /// @param[in] source Full original call-owner handle.
    /// @param[in] incarnation Exact current client incarnation.
    /// @param[in] body Complete stable canonical request bytes, including true Empty.
    /// @param[out] out Eight exclusive writable LE bytes for the actual ticket.
    /// @return Original unsigned status; failure preserves out and is not replayed.
    /// @permissions Exact call/schema/quota/deadline and retained pair.
    /// @see Transport::peek; Transport::abandon; Client::submit
    fn submit(&mut self, source: u64, incarnation: u64, body: &[u8], out: &mut [u8; 8]) -> u32;
    /// @brief Locally abandon one pending client ticket without claiming DDS cancellation.
    /// @details Its late response is disposed through the original retained association.
    /// @param[in,out] self Exclusive synchronous transport state.
    /// @param[in] source Full original call-owner handle.
    /// @param[in] incarnation Exact current client incarnation.
    /// @param[in] ticket Nonzero actual ticket submitted by this endpoint.
    /// @return Original unsigned status; no memory output is written.
    /// @permissions Existing pending request, with no resubmit or rollback authority.
    /// @see Client::abandon; RequestState::Abandoned; Transport::submit
    fn abandon(&mut self, source: u64, incarnation: u64, ticket: u64) -> u32;
    /// @brief Send one complete response to an actual committed server ticket.
    /// @details An uncertain native send is never automatically retried.
    /// @param[in,out] self Exclusive synchronous transport state.
    /// @param[in] source Full original advertise-owner handle.
    /// @param[in] incarnation Exact current server incarnation.
    /// @param[in] peer Original independently opened respond-owner handle.
    /// @param[in] ticket Actual committed request ticket for this server.
    /// @param[in] body Complete stable canonical response bytes, including true Empty.
    /// @return Original unsigned status; no memory output is written.
    /// @permissions Exact original respond/type/quota/deadline grant.
    /// @see Server::respond; Transport::commit; Diagnostic::respond
    fn respond(
        &mut self,
        source: u64,
        incarnation: u64,
        peer: u64,
        ticket: u64,
        body: &[u8],
    ) -> u32;
    /// @brief Borrow one complete same-take UMRC160/URMI192/body packet.
    /// @details Concrete Wasm uses memory 0 and expects a 16-byte native writer GUID.
    /// The checked UMRC extent replaces a separate output-length slot.
    /// @param[in,out] self Exclusive synchronous transport state.
    /// @param[in] source Full original client/server source handle.
    /// @param[in] incarnation Exact current endpoint incarnation.
    /// @param[out] out Exclusive writable complete-packet capacity, at least 352 bytes.
    /// @return Original unsigned status; idle/error leaves every output byte unchanged.
    /// @permissions Existing pair and actual observer/server delivery admission.
    /// @see wire::envelope; wire::information; Transport::commit; Transport::cancel
    fn peek(&mut self, source: u64, incarnation: u64, out: &mut [u8]) -> u32;
    /// @brief ACK and consume one exact outstanding borrow.
    /// @details A lost/ambiguous ACK requires retirement rather than replay.
    /// @param[in,out] self Exclusive synchronous transport state.
    /// @param[in] source Full original endpoint source handle.
    /// @param[in] incarnation Exact current retained incarnation.
    /// @param[in] sequence Positive sequence from the accepted borrow.
    /// @param[in] reservation Exact distinct nonce from that same borrow.
    /// @return Original unsigned ACK status; no memory output is written.
    /// @permissions Exact existing borrow under its original endpoint/deadline.
    /// @see Transport::peek; Transport::cancel; Diagnostic::commit
    fn commit(&mut self, source: u64, incarnation: u64, sequence: u64, reservation: u64) -> u32;
    /// @brief Cancel one exact borrow while preserving its underlying record.
    /// @details A subsequent borrow needs a fresh nonce even at the same sequence.
    /// @param[in,out] self Exclusive synchronous transport state.
    /// @param[in] source Full original endpoint source handle.
    /// @param[in] incarnation Exact current retained incarnation.
    /// @param[in] sequence Positive sequence from the outstanding borrow.
    /// @param[in] reservation Exact nonce of that outstanding borrow.
    /// @return Original unsigned ACK status, retained separately from primary refusal.
    /// @permissions Exact existing borrow under its original endpoint/deadline.
    /// @see Transport::peek; Transport::commit; Diagnostic::cancel
    fn cancel(&mut self, source: u64, incarnation: u64, sequence: u64, reservation: u64) -> u32;
    /// @brief Query this retained client's actual availability through its third owner.
    /// @details Wait 0 observes once; finite waiting uses the actual admitted native
    /// deadline. Do not create a probe client, graph query, clock or sleep fallback.
    /// @param[in,out] self Exclusive synchronous transport state.
    /// @param[in] source Full original service.call owner handle.
    /// @param[in] incarnation Exact current client incarnation.
    /// @param[in] query Independently opened exact service.available owner handle.
    /// @param[in] wait_ns Explicit finite unsigned nanosecond bound; 0 is nonblocking.
    /// @param[out] out One exclusive writable byte, exactly 0 or 1 after success.
    /// @return Original unsigned status; 95 remains unsupported and preserves out.
    /// @permissions Independent query/type/quota/deadline admission, without call debit.
    /// @see Client::available; Diagnostic::available; raw::client_available
    fn available(
        &mut self,
        source: u64,
        incarnation: u64,
        query: u64,
        wait_ns: u64,
        out: &mut [u8; 1],
    ) -> u32;
    /// @brief Retire this actual native endpoint incarnation once before raw closes.
    /// @details Preserve disconnect/timeout/cleanup errors; never substitute a new
    /// endpoint or retry a possibly completed native cleanup operation.
    /// @param[in,out] self Exclusive synchronous transport state.
    /// @param[in] source Full original endpoint source handle.
    /// @param[in] incarnation Exact accepted native incarnation.
    /// @return Original unsigned retirement status; no memory output is written.
    /// @permissions Existing endpoint and original current-principal association.
    /// @see Transport::close; CloseReport; Group::shutdown
    fn retire(&mut self, source: u64, incarnation: u64) -> u32;
}
/// Exact owned codec adapter. A safe decoder cannot borrow its input through
/// this fixed-T function pointer. Return full private values/errors, not defaults.
/// @brief Complete owned record encoder/decoder and explicit canonical byte ceiling.
/// @details Function pointers are fixed caller-selected code, not dynamic Host
/// providers. Their implementations may allocate; decoding must own every returned
/// field rather than retain a pointer into Group's reusable packet scratch.
/// @see Codec::canonical; Definition; roswasm::typed::Canonical
pub struct Codec<T> {
    /// @brief Inclusive canonical body ceiling, in bytes, for this component.
    /// @details Group checks it against its corresponding request/response budget.
    /// @see Config::maximum_request; Config::maximum_response
    pub maximum: usize,
    /// @brief Encode the complete value into an owned canonical byte vector.
    /// @details Borrow T through return; preserve nonzero errors and never return
    /// a default/partial value. A zero-valued error is normalized to INVALID 22.
    /// @see Client::submit; Server::respond
    pub encode: fn(&T) -> Result<Vec<u8>, Error>,
    /// @brief Decode all bytes into a complete value with independently owned fields.
    /// @details Must reject truncation/trailing data under the selected codec.
    /// Group validates before ACK; a failed decode never publishes a value.
    /// @see Group; Client::poll; Server::poll
    pub decode: fn(&[u8]) -> Result<T, Error>,
}
impl<T: Canonical> Codec<T> {
    /// @brief Bind T's actual Canonical functions with an explicit byte ceiling.
    /// @details Does not validate a native type identity, allocate or call the Host.
    /// @param[in] maximum Inclusive canonical component extent in bytes.
    /// @return Owned adapter retaining T::encode and T::decode function pointers.
    /// @see Definition; Config; roswasm::typed::Canonical
    pub fn canonical(maximum: usize) -> Self {
        Self {
            maximum,
            encode: T::encode,
            decode: T::decode,
        }
    }
}
/// The genuine Service ROOT identity is independent of Request/Response IDs.
/// Host policy/type support independently proves these declared source facts.
/// @brief Exact Service-root declaration with complete request/response codecs.
/// @details Owns adapters and borrows only static identity strings. Construction
/// alone does not prove installed native type support or permit endpoint activation.
/// @see Group::client; Group::server; Codec
pub struct Definition<Q, S> {
    /// @brief Original package/srv/Service root name.
    /// @details Checked as a nonempty source name of at most 255 bytes; request
    /// and response component names cannot substitute for the Service root.
    /// @see Definition::canonical_identity; Group::client
    pub native_type: &'static str,
    /// @brief Complete original Service-root canonical identity string.
    /// @details Must contain UWVMROS1_ plus 64 lowercase hexadecimal digits.
    /// The Host independently checks the actual native binding and policy.
    /// @see Definition::native_type; Group::server
    pub canonical_identity: &'static str,
    /// @brief Complete request component codec and its explicit byte ceiling.
    /// @details Used for client submit and server take; no field projection is allowed.
    /// @see Codec; Config::maximum_request
    pub request: Codec<Q>,
    /// @brief Complete response component codec and its explicit byte ceiling.
    /// @details Used for server respond and client take, independently of request size.
    /// @see Codec; Config::maximum_response
    pub response: Codec<S>,
}
impl<Q, S> Definition<Q, S> {
    fn valid(&self, c: Config) -> bool {
        let n = self.native_type.as_bytes();
        let id = self.canonical_identity.as_bytes();
        !n.is_empty()
            && n.len() <= 255
            && n.iter()
                .all(|b| b.is_ascii_alphanumeric() || *b == b'_' || *b == b'/')
            && service_name(self.native_type)
            && id.len() == 73
            && id.starts_with(b"UWVMROS1_")
            && id[9..]
                .iter()
                .all(|b| b.is_ascii_digit() || (*b >= b'a' && *b <= b'f'))
            && self.request.maximum <= c.maximum_request
            && self.response.maximum <= c.maximum_response
    }
}
/// All permanent storage ceilings are explicit. There are no default aliases,
/// clocks, policy presets or endpoint opens in this value.
/// @brief Permanent local endpoint, transaction-history and body-storage ceilings.
/// @details Group validates these before allocating or opening any owner. These
/// local limits cannot enlarge a Host quota or supply a native endpoint grant.
/// @see Group::new; Group::prepare
#[derive(Clone, Copy, Debug)]
pub struct Config {
    /// @brief Lifetime endpoint-attempt capacity, inclusive range 1 through 256.
    /// @details Failed consumed attempts and closed endpoints keep their slots.
    /// @see Group::attempted_endpoints; Diagnostic
    pub endpoints: usize,
    /// @brief Lifetime transaction-history capacity per endpoint, 1 through 65536.
    /// @details Tombstones remain allocated and are not recycled after completion.
    /// @see Client::submit; RequestState
    pub transactions_per_endpoint: usize,
    /// @brief Inclusive local canonical request-body ceiling, 0 through 32768 bytes.
    /// @details Zero permits a complete Empty request, not an invented empty record.
    /// @see Definition::request; Config::maximum_response
    pub maximum_request: usize,
    /// @brief Inclusive local canonical response-body ceiling, 0 through 32768 bytes.
    /// @details Scratch also contains the real 352-byte transport overhead. The
    /// product of endpoint/history storage is separately bounded to 64 MiB.
    /// @see Definition::response; wire::OVERHEAD
    pub maximum_response: usize,
}
impl Config {
    fn valid(self) -> bool {
        self.endpoints > 0
            && self.endpoints <= 256
            && self.transactions_per_endpoint > 0
            && self.transactions_per_endpoint <= 65536
            && self.maximum_request <= 32768
            && self.maximum_response <= 32768
            && self
                .endpoints
                .checked_mul(self.transactions_per_endpoint)
                .and_then(|n| n.checked_mul(size_of::<Transaction>()))
                .map_or(false, |n| n <= 64 * 1024 * 1024)
    }
}
/// Every cleanup result is separately retained, including a real attempted0.
/// @brief Presence and original status of one recorded operation attempt.
/// @details attempted=false differs from an actual successful status 0; inspect
/// both fields. Copying a journal value never repeats the original operation.
/// @see Diagnostic; CloseReport
#[derive(Clone, Copy, Debug, Default, PartialEq, Eq)]
pub struct Attempt {
    /// @brief Whether this operation was actually attempted.
    /// @details False means code does not describe an observed operation result.
    /// @see Attempt::code; Diagnostic
    pub attempted: bool,
    /// @brief Original unsigned operation status, meaningful only when attempted.
    /// @details Zero is a real observed success when attempted=true; preserve
    /// all nonzero errors independently of primary and other cleanup statuses.
    /// @see Attempt::attempted; CloseReport
    pub code: u32,
}
impl Attempt {
    fn observed(code: u32) -> Self {
        Self {
            attempted: true,
            code,
        }
    }
}
/// Preallocated per-attempt journal. `primary` never gets replaced by cleanup.
/// @brief Owned diagnostic snapshot for one lifetime endpoint attempt.
/// @details Preserves the first nonzero primary, each operation's latest Attempt,
/// cumulative attempt counts and exact last association values. It is a local
/// journal, not proof of native delivery or a complete chronological trace.
/// @see Group::diagnostics; Attempt; CloseReport
#[derive(Clone, Copy, Debug, Default)]
pub struct Diagnostic {
    /// @brief Original full source handle, or 0 before a valid source open.
    /// @details Retained after cleanup for attribution; no ownership is transferred.
    /// @see Diagnostic::open; Group::diagnostics
    pub source: u64,
    /// @brief Original paired observer/responder handle, or 0 before its valid open.
    /// @details Retained as diagnostic data after reverse raw-owner cleanup.
    /// @see Diagnostic::role; Diagnostic::raw_close
    pub peer: u64,
    /// @brief Original separately opened availability-query owner, or 0 if absent.
    /// @details Presence never enlarges the call owner's quota or admits a clock.
    /// @see Client::available; Diagnostic::open
    pub query: u64,
    /// @brief First recorded nonzero primary status for this endpoint attempt.
    /// @details Cleanup errors are stored separately and never replace this value.
    /// @see Diagnostic::native_retire; Diagnostic::raw_close
    pub primary: u32,
    /// @brief Endpoint-attempt role, exactly 3 client or 4 server once selected.
    /// @details A default journal's 0 denotes no recorded endpoint role.
    /// @see Group::client; Group::server
    pub role: u8,
    /// @brief Actual open results in source, peer and optional query-owner order.
    /// @details Each Attempt distinguishes an unattempted slot from status 0.
    /// @see Attempt; Diagnostic::raw_close
    pub open: [Attempt; 3],
    /// @brief Actual native endpoint activation result.
    /// @details A successful raw call still requires activation_validation to pass.
    /// @see Diagnostic::activation_validation; wire::receipt
    pub activation: Attempt,
    /// @brief Local complete UMRE validation result after successful activation.
    /// @details No synthetic default receipt replaces a malformed native response.
    /// @see Diagnostic::activation; Receipt
    pub activation_validation: Attempt,
    /// @brief Latest actual current-incarnation inspection result.
    /// @details Its raw status remains separate from local inspection validation.
    /// @see Diagnostic::inspect_validation; raw::endpoint_inspect
    pub inspect: Attempt,
    /// @brief Latest local UMRE association/QoS/GID validation result.
    /// @details Compares the current inspection to the saved endpoint receipt.
    /// @see Diagnostic::inspect; wire::receipt
    pub inspect_validation: Attempt,
    /// @brief Latest actual client submission result.
    /// @details Submission success is not a completed response or commit ACK.
    /// @see Client::submit; Diagnostic::submissions
    pub submit: Attempt,
    /// @brief Latest actual server response-send result.
    /// @details An uncertain send remains a primary error; the response is not replayed.
    /// @see Server::respond; Diagnostic::responses
    pub respond: Attempt,
    /// @brief Latest actual borrow/peek result, including genuine idle status 11.
    /// @details No successful default record is constructed after a nonzero status.
    /// @see Diagnostic::peeks; raw::endpoint_peek
    pub peek: Attempt,
    /// @brief Latest local metadata/body decode result for an associated borrow.
    /// @details Decoding succeeds before exact commit and before exposing the value.
    /// @see Diagnostic::commit; Codec::decode
    pub decode: Attempt,
    /// @brief Latest actual exact commit-ACK result.
    /// @details A nonzero uncertain ACK never becomes a delivered value or safe retry.
    /// @see Diagnostic::commits; raw::endpoint_commit
    pub commit: Attempt,
    /// @brief Latest actual exact cancel-ACK result after a rejected borrow.
    /// @details Retained separately from the primary parse/decode refusal.
    /// @see Diagnostic::cancels; raw::endpoint_cancel
    pub cancel: Attempt,
    /// @brief Latest actual local client-ticket abandonment result.
    /// @details Does not assert native DDS cancellation or remove lifetime history.
    /// @see Client::abandon; RequestState::Abandoned
    pub abandon: Attempt,
    /// @brief Latest actual retained-client availability-query result.
    /// @details Status 95 remains unsupported; no graph/probe-client fallback runs.
    /// @see Client::available; Diagnostic::query
    pub available: Attempt,
    /// @brief Once-attempted native incarnation retirement result when a receipt exists.
    /// @details Remains distinct from all reverse raw-owner close results.
    /// @see Diagnostic::raw_close; Group::shutdown
    pub native_retire: Attempt,
    /// @brief Once-attempted raw-close results in source, peer, query slot order.
    /// @details Calls run in reverse slot order; the array preserves original identities.
    /// @see Diagnostic::open; Diagnostic::native_retire
    pub raw_close: [Attempt; 3],
    /// @brief Whether this endpoint's once-only physical cleanup path has run.
    /// @details True prevents replay even when retirement or a raw close failed.
    /// @see Diagnostic::poisoned; CloseReport
    pub closed: bool,
    /// @brief Whether ordinary endpoint operations are locally terminal.
    /// @details Poisoning may precede physical cleanup after a terminal control ACK.
    /// Explicit close can still own cleanup until closed becomes true.
    /// @see Client::close; Server::close; Diagnostic::closed
    pub poisoned: bool,
    /// @brief Cumulative actual client-submit attempt count.
    /// @details Incremented before transport submission; refusal still consumes an attempt.
    /// @see Diagnostic::submit; Client::submit
    pub submissions: u64,
    /// @brief Cumulative actual server-response attempt count.
    /// @details Incremented before send; no response attempt is implicitly replayed.
    /// @see Diagnostic::respond; Server::respond
    pub responses: u64,
    /// @brief Cumulative actual peek attempt count, including idle/refused calls.
    /// @details Counts caller-driven work, not physical time or native records received.
    /// @see Diagnostic::peek; Client::poll
    pub peeks: u64,
    /// @brief Cumulative actual commit-ACK attempt count.
    /// @details An attempt is distinct from a successful committed delivery.
    /// @see Diagnostic::commit; Diagnostic::last_committed_sequence
    pub commits: u64,
    /// @brief Cumulative actual cancel-ACK attempt count.
    /// @details Cancel preserves the underlying native record when it succeeds.
    /// @see Diagnostic::cancel; raw::endpoint_cancel
    pub cancels: u64,
    /// @brief Positive sequence of the latest fully associated UMRC borrow, or 0.
    /// @details Set before body decode and ACK; it does not establish consumption.
    /// @see Diagnostic::last_reservation; Diagnostic::last_committed_sequence
    pub last_sequence: u64,
    /// @brief Exact nonzero nonce of that latest associated borrow, or 0.
    /// @details Never reuse it for a different borrow, including one at the same sequence.
    /// @see Diagnostic::last_sequence; raw::endpoint_cancel
    pub last_reservation: u64,
    /// @brief Sequence of the latest successful commit ACK, or 0 before one occurs.
    /// @details Preserved independently of a newer outstanding or rejected borrow.
    /// @see Diagnostic::commit; Diagnostic::last_sequence
    pub last_committed_sequence: u64,
    /// @brief Latest actual submitted or committed packet ticket/correlation.
    /// @details Control correlations may be 0; never equate it with native_sequence.
    /// @see Ticket; ServiceInfo::native_sequence
    pub last_ticket: u64,
    /// @brief Permanently used transaction-history slots for this endpoint.
    /// @details Includes retained terminal/abandoned history; slots are never recycled.
    /// @see Config::transactions_per_endpoint; RequestState
    pub history_used: usize,
}
/// Native once-retire and reverse raw-owner closes, with no hidden retry.
/// @brief Independent primary and cleanup results for a single endpoint close.
/// @details Owns its status snapshot; a successful outer Result means the journal
/// was retrieved, not that every retire/close status is 0. Inspect each Attempt.
/// @see Client::close; Server::close; Group::shutdown
#[derive(Clone, Copy, Debug, Default)]
pub struct CloseReport {
    /// @brief Original first nonzero endpoint primary, independent of cleanup.
    /// @details A cleanup error never overwrites an earlier operation failure.
    /// @see Diagnostic::primary; CloseReport::native_retire
    pub primary: u32,
    /// @brief Actual once-retirement result when a valid native receipt was saved.
    /// @details attempted=false distinguishes absent receipt from successful retirement.
    /// @see Attempt; CloseReport::raw_close
    pub native_retire: Attempt,
    /// @brief Actual source/peer/query raw-close results, executed in reverse order.
    /// @details Unopened slots remain unattempted; failure is retained without retry.
    /// @see Attempt; Diagnostic::raw_close
    pub raw_close: [Attempt; 3],
}
#[derive(Clone, Copy)]
struct Alias {
    bytes: [u8; 255],
    len: u8,
}
impl Default for Alias {
    fn default() -> Self {
        Self {
            bytes: [0; 255],
            len: 0,
        }
    }
}
impl Alias {
    fn checked(s: &str) -> Result<Self, Error> {
        if s.is_empty() || s.len() > 255 || s.as_bytes().contains(&0) {
            return Err(err(22));
        }
        let mut a = Self::default();
        a.bytes[..s.len()].copy_from_slice(s.as_bytes());
        a.len = s.len() as u8;
        Ok(a)
    }
    fn same(&self, b: &Self) -> bool {
        self.len != 0
            && self.len == b.len
            && self.bytes[..self.len as usize] == b.bytes[..b.len as usize]
    }
}
#[derive(Clone, Copy, Debug, Default, PartialEq, Eq)]
enum State {
    #[default]
    Unused,
    Reserved,
    Waiting,
    Delivered,
    Done,
    Abandoned,
    Discarded,
}
#[derive(Clone, Copy, Debug, Default)]
struct Transaction {
    ticket: u64,
    state: State,
    error: u32,
    info: ServiceInfo,
}
struct Slot {
    aliases: [Alias; 3],
    handles: [u64; 3],
    receipt: Option<Receipt>,
    wire: [u8; 256],
    history: Vec<Transaction>,
    used: usize,
    diagnostic: Diagnostic,
}
impl Slot {
    fn new(history: usize) -> Result<Self, Error> {
        Ok(Self {
            aliases: [Alias::default(); 3],
            handles: [0; 3],
            receipt: None,
            wire: [0; 256],
            history: allocated(history)?,
            used: 0,
            diagnostic: Diagnostic::default(),
        })
    }
}
#[derive(Clone, Copy, Debug)]
struct Endpoint {
    index: usize,
    source: u64,
}
/// Opaque local correlation token. It is not a native sequence or permission.
/// @brief Process-local ticket tied to the endpoint that submitted or received it.
/// @details Copies preserve its private source association and full unsigned
/// value. The Group retains nonreused history after completion or abandonment.
/// @see Ticket::value; Client::submit; Server::respond
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Ticket {
    source: u64,
    value: u64,
}
impl Ticket {
    /// @brief Return the complete local correlation ticket value.
    /// @details A numeric copy has no authority and is neither the native signed
    /// request sequence nor an accepted-stream delivery sequence.
    /// @param[in] self Copy of the opaque ticket produced for this Group endpoint.
    /// @return Original nonzero u64 ticket without narrowing or conversion.
    /// @see Client::submit; Client::state; wire::ServiceInfo::native_sequence
    pub fn value(self) -> u64 {
        self.value
    }
}
/// Local request status; response data arrives only by real committed delivery.
/// @brief Local state of one retained client ticket while its endpoint is live.
/// @details Completed reports the saved terminal status; response data is
/// delivered separately through poll. Closed/poisoned endpoints refuse state access.
/// @see Client::state; Delivery
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum RequestState {
    /// @brief Request admitted with no completed delivery recorded locally.
    /// @details This state does not reserve a response or prove native completion.
    /// @see Client::poll; Client::abandon
    Waiting,
    /// @brief Terminal local status after the matching delivery/control was recorded.
    /// @details Does not contain the response or replace the original poll result.
    /// @see Client::poll; Diagnostic
    Completed {
        /// @brief Original terminal unsigned request error; 0 denotes a completed value.
        /// @details Retain nonzero control errors without replacing them with cleanup.
        /// @see Delivery; Diagnostic::primary
        error: u32,
    },
    /// @brief Locally abandoned or explicitly discarded request history.
    /// @details The tombstone remains; no native DDS cancellation is implied.
    /// @see Client::abandon; Group::shutdown
    Abandoned,
}
/// A fully decoded committed native record or explicit body-free control.
/// @brief One completely checked delivery after an actual successful commit ACK.
/// @details Data owns its decoded fields and original metadata. A control branch
/// has no fabricated native Service payload, timestamp or writer GUID.
/// @see Client::poll; Server::poll; wire::Information
#[derive(Debug)]
pub enum Delivery<T> {
    /// @brief Complete typed request/response with its actual same-take metadata.
    /// @details Produced only after association, full decode and exact commit succeed.
    /// @see ServiceInfo; Client::poll; Server::poll
    Value {
        /// @brief Opaque ticket associated with this exact endpoint delivery.
        /// @details Pass only to the same endpoint; a numeric copy grants no rights.
        /// @see Ticket; Server::respond
        ticket: Ticket,
        /// @brief Complete independently owned decoded request or response.
        /// @details Does not borrow Group's reusable packet scratch or Native memory.
        /// @see Codec::decode; Group
        value: T,
        /// @brief Exact native metadata from the same take as value.
        /// @details Native timestamps, signed sequence and writer GUID retain all bits.
        /// @see ServiceInfo; wire::information
        info: ServiceInfo,
    },
    /// @brief Explicit acknowledged resource-error or endpoint-closed control.
    /// @details Carries its original error/flags/correlation without invented data.
    /// @see ControlEvent; Diagnostic
    Control(ControlEvent),
}
enum Prepared<T> {
    Value {
        value: T,
        info: ServiceInfo,
        index: usize,
        abandoned: bool,
    },
    Control {
        event: ControlEvent,
        index: Option<usize>,
    },
}
/// Explicit client view. Group owns all native/raw state; dropping this view
/// cannot silently reopen/close or make an admitted request complete.
/// @brief Local typed client view into one Group-owned native endpoint.
/// @details Retains its source/index association and complete static codec
/// definition. Use the same live Group; dropping the view performs no cleanup.
/// @see Group::client; Client::submit; Client::close
pub struct Client<Q, S> {
    endpoint: Endpoint,
    definition: Definition<Q, S>,
}
/// @brief Local typed server view into one Group-owned retained native endpoint.
/// @details Owns its complete codec definition. Poll and respond use the same
/// Group and exact delivered tickets; dropping this view performs no cleanup.
/// @see Group::server; Server::serve_once; Server::close
pub struct Server<Q, S> {
    endpoint: Endpoint,
    definition: Definition<Q, S>,
}
/// Fully preallocated synchronous group; safe Rust prevents concurrent/reentrant
/// mutable operations. Rc marker intentionally excludes Send/Sync. No host lock
/// or borrowed native pointer escapes an individual import.
/// @brief Sole local owner of retained endpoints, histories, scratch and cleanup.
/// @details Allocate permanent storage before opening endpoints. The group is
/// intentionally neither Send nor Sync. Explicit shutdown retains all cleanup
/// statuses; Drop attempts it once and cannot report a returned failure.
/// @see Config; Group::new; Group::shutdown; Diagnostic
pub struct Group<B: Transport = Wasm> {
    transport: B,
    config: Config,
    slots: Vec<Slot>,
    used: usize,
    packet: Vec<u8>,
    receipt: [u8; 256],
    ticket: [u8; 8],
    callback: Cell<bool>,
    shutdown: bool,
    _local: PhantomData<Rc<()>>,
}
impl Group<Wasm> {
    /// @brief Preallocate a group using the genuine memory-zero raw12 transport.
    /// @details Opens no alias, Node, native endpoint or clock. ABI versions are
    /// queried later immediately before the first actual endpoint open attempt.
    /// @param[in] config Explicit permanent local capacity and body-storage ceilings.
    /// @return Owned single-thread group with no attempted endpoints.
    /// @failure INVALID 22 for invalid limits, UNSUPPORTED 95 outside wasm32,
    /// or NO_MEMORY 12 for failed fallible preallocation.
    /// @permissions None for construction; later operations require actual grants.
    /// @see Group::prepare; Group::client; Group::server
    pub fn new(config: Config) -> Result<Self, Error> {
        Self::prepare(config, Wasm)
    }
}
impl<B: Transport> Group<B> {
    /// Construct the explicit trusted backend seam. The safety promises of its
    /// implementation remain the caller's obligation; models are not Native proof.
    /// @brief Preallocate all permanent state with one explicit trusted Transport.
    /// @details Takes ownership of transport without an endpoint open or ABI query.
    /// Its unsafe implementation must uphold every Transport invariant; a local
    /// model result cannot establish real Guest or native execution acceptance.
    /// @param[in] config Exact permanent capacities; endpoint/history storage at most 64 MiB.
    /// @param[in] transport Owned synchronous backend implementing the unsafe contract.
    /// @return New independent Group with empty lifetime endpoint history.
    /// @failure INVALID 22, UNSUPPORTED 95 or fallible-allocation status 12.
    /// @permissions None from preparation; transport cannot invent Host grants.
    /// @see Transport; Group::new; Config
    pub fn prepare(config: Config, transport: B) -> Result<Self, Error> {
        if !config.valid() {
            return Err(err(22));
        }
        if !transport.supported() {
            return Err(err(95));
        }
        let mut slots = Vec::new();
        slots
            .try_reserve_exact(config.endpoints)
            .map_err(|_| err(12))?;
        for _ in 0..config.endpoints {
            slots.push(Slot::new(config.transactions_per_endpoint)?);
        }
        let maximum = core::cmp::max(config.maximum_request, config.maximum_response);
        let packet = allocated(wire::OVERHEAD + maximum)?;
        Ok(Self {
            transport,
            config,
            slots,
            used: 0,
            packet,
            receipt: [0; 256],
            ticket: [0; 8],
            callback: Cell::new(false),
            shutdown: false,
            _local: PhantomData,
        })
    }
    fn idle(&self) -> Result<(), Error> {
        if self.callback.get() {
            Err(err(17))
        } else if self.shutdown {
            Err(err(125))
        } else {
            Ok(())
        }
    }
    // Physical cleanup ownership remains available after a terminal control ACK.
    // `closed` means actual once-cleanup ran; `poisoned` alone is local terminal.
    fn owner_index(&self, e: Endpoint) -> Result<usize, Error> {
        self.idle()?;
        if e.index >= self.used
            || e.source == 0
            || self.slots[e.index].diagnostic.source != e.source
        {
            return Err(err(9));
        }
        if self.slots[e.index].diagnostic.closed {
            return Err(err(125));
        }
        Ok(e.index)
    }
    fn index(&self, e: Endpoint) -> Result<usize, Error> {
        let i = self.owner_index(e)?;
        if self.slots[i].diagnostic.poisoned {
            return Err(err(125));
        }
        Ok(i)
    }
    fn primary(&mut self, i: usize, code: u32) {
        if code != 0 && self.slots[i].diagnostic.primary == 0 {
            self.slots[i].diagnostic.primary = code;
        }
    }
    fn attempt_close(&mut self, i: usize) -> CloseReport {
        if !self.slots[i].diagnostic.closed {
            self.slots[i].diagnostic.closed = true;
            if let Some(r) = self.slots[i].receipt {
                if !self.slots[i].diagnostic.native_retire.attempted {
                    let code = self
                        .transport
                        .retire(r.binding.source, r.binding.incarnation);
                    self.slots[i].diagnostic.native_retire = Attempt::observed(code);
                }
            }
            for owner in (0..3).rev() {
                let h = self.slots[i].handles[owner];
                self.slots[i].handles[owner] = 0;
                if h != 0 {
                    let code = self.transport.close(h);
                    self.slots[i].diagnostic.raw_close[owner] = Attempt::observed(code);
                }
            }
            let used = self.slots[i].used;
            for t in &mut self.slots[i].history[..used] {
                if t.state == State::Waiting
                    || t.state == State::Delivered
                    || t.state == State::Reserved
                {
                    t.state = State::Abandoned;
                    t.error = 125;
                }
            }
        }
        let d = self.slots[i].diagnostic;
        CloseReport {
            primary: d.primary,
            native_retire: d.native_retire,
            raw_close: d.raw_close,
        }
    }
    fn terminal(&mut self, i: usize, code: u32) -> Error {
        self.primary(i, code);
        self.slots[i].diagnostic.poisoned = true;
        self.attempt_close(i);
        err(code)
    }
    fn open(
        &mut self,
        role: u8,
        primary: &str,
        peer: &str,
        query: Option<&str>,
    ) -> Result<Endpoint, Error> {
        self.idle()?;
        let aliases = [
            Alias::checked(primary)?,
            Alias::checked(peer)?,
            match query {
                Some(v) => Alias::checked(v)?,
                None => Alias::default(),
            },
        ];
        if role != 3 && role != 4 {
            return Err(err(95));
        }
        if role == 4 && query.is_some() {
            return Err(err(22));
        }
        for a in 0..3 {
            for b in 0..a {
                if aliases[a].same(&aliases[b]) {
                    return Err(err(22));
                }
            }
            for old in &self.slots[..self.used] {
                if old.aliases.iter().any(|v| aliases[a].same(v)) {
                    return Err(err(13));
                }
            }
        }
        if self.used == self.config.endpoints {
            return Err(err(90));
        }
        // No source row exists on ABI failure; both queries happen before any open.
        if self.transport.business_version() != 1 || self.transport.version() != 1 {
            return Err(err(95));
        }
        let i = self.used;
        self.used += 1;
        self.slots[i].aliases = aliases;
        self.slots[i].diagnostic.role = role;
        for owner in 0..3 {
            let a = self.slots[i].aliases[owner];
            if a.len == 0 {
                continue;
            }
            self.ticket.fill(0);
            let code = self
                .transport
                .open(&a.bytes[..a.len as usize], &mut self.ticket);
            self.slots[i].diagnostic.open[owner] = Attempt::observed(code);
            if code != 0 {
                return Err(self.terminal(i, code));
            }
            let h = u64::from_le_bytes(self.ticket);
            if !wire::full_handle(h) || self.slots[i].handles.contains(&h) {
                return Err(self.terminal(i, 22));
            }
            self.slots[i].handles[owner] = h;
            match owner {
                0 => self.slots[i].diagnostic.source = h,
                1 => self.slots[i].diagnostic.peer = h,
                _ => self.slots[i].diagnostic.query = h,
            }
        }
        self.receipt.fill(0xa5);
        let source = self.slots[i].handles[0];
        let paired = self.slots[i].handles[1];
        let code = self
            .transport
            .activate(role, source, paired, &mut self.receipt);
        self.slots[i].diagnostic.activation = Attempt::observed(code);
        if code != 0 {
            return Err(self.terminal(i, code));
        }
        match wire::receipt(&self.receipt, 1, role, source) {
            Ok(r) => {
                self.slots[i].receipt = Some(r);
                self.slots[i].wire = self.receipt;
                self.slots[i].diagnostic.activation_validation = Attempt::observed(0);
                Ok(Endpoint { index: i, source })
            }
            Err(e) => {
                self.slots[i].diagnostic.activation_validation = Attempt::observed(e.code);
                Err(self.terminal(i, e.code))
            }
        }
    }
    /// @brief Open and activate one exact typed retained ROS2 client.
    /// @details Validates the complete Service definition and distinct aliases,
    /// checks both ABIs, opens each owner and validates actual UMRE256. Once an
    /// endpoint attempt consumes a slot, failure/close never recycles that slot.
    /// @param[in,out] self Live Group; owns all opened handles and cleanup journals.
    /// @param[in] definition Owned root identity and full request/response codecs.
    /// @param[in] call Explicit service.call alias, 1 through 255 non-NUL UTF-8 bytes.
    /// @param[in] observer Distinct explicit event.observe alias for this client.
    /// @param[in] availability Optional distinct explicit service.available alias.
    /// @return Typed client view bound to this Group's retained source association.
    /// @failure INVALID 22 for definition/alias/receipt refusal, DENIED 13 for an
    /// already used alias, TOO_LARGE 90 for endpoint capacity, UNSUPPORTED 95 for
    /// ABI mismatch, or original Host status. Partial opens clean up once; inspect
    /// diagnostics separately. Busy/shutdown groups refuse with 17/125.
    /// @permissions All selected aliases must independently be granted and paired
    /// by the current trusted Host policy. Construction never installs policy.
    /// @see Group::diagnostics; Client::close; Group::server
    pub fn client<Q, S>(
        &mut self,
        definition: Definition<Q, S>,
        call: &str,
        observer: &str,
        availability: Option<&str>,
    ) -> Result<Client<Q, S>, Error> {
        if !definition.valid(self.config) {
            return Err(err(22));
        }
        let endpoint = self.open(3, call, observer, availability)?;
        Ok(Client {
            endpoint,
            definition,
        })
    }
    /// @brief Open and activate one exact typed retained ROS2 server.
    /// @details Uses independently granted advertise/respond owners, checks both
    /// ABI versions and the entire native receipt. No default Node, request,
    /// response value or parameter-store implementation is manufactured.
    /// @param[in,out] self Live Group retaining the endpoint and reverse cleanup.
    /// @param[in] definition Owned Service root and complete request/response codecs.
    /// @param[in] advertise Explicit service.advertise alias, 1 through 255 non-NUL bytes.
    /// @param[in] responder Distinct explicit service.respond alias for this server.
    /// @return Typed server view tied to this Group's original endpoint association.
    /// @failure Preserves original Host status and local definition/alias/receipt
    /// 22, alias reuse 13, capacity 90, ABI 95, busy 17 or shutdown 125 errors.
    /// Consumed attempt slots and diagnostic history are not recycled on failure.
    /// @permissions Exact independent advertise/respond grants, original native
    /// Service type, QoS, quotas and deadlines. No authority comes from type strings.
    /// @see Group::client; Group::diagnostics; Server::serve_once
    pub fn server<Q, S>(
        &mut self,
        definition: Definition<Q, S>,
        advertise: &str,
        responder: &str,
    ) -> Result<Server<Q, S>, Error> {
        if !definition.valid(self.config) {
            return Err(err(22));
        }
        let endpoint = self.open(4, advertise, responder, None)?;
        Ok(Server {
            endpoint,
            definition,
        })
    }
    fn inspect(&mut self, i: usize) -> Result<Receipt, Error> {
        let r = self.slots[i].receipt.ok_or(err(9))?;
        self.receipt.fill(0xa5);
        let code =
            self.transport
                .inspect(r.binding.source, r.binding.incarnation, &mut self.receipt);
        self.slots[i].diagnostic.inspect = Attempt::observed(code);
        if code != 0 {
            return Err(self.terminal(i, code));
        }
        let parsed = wire::receipt(&self.receipt, 2, r.role, r.binding.source);
        let code = match parsed {
            Err(e) => e.code,
            Ok(v) => {
                if v == r
                    && self.receipt[..6] == self.slots[i].wire[..6]
                    && self.receipt[7..] == self.slots[i].wire[7..]
                {
                    0
                } else {
                    13
                }
            }
        };
        self.slots[i].diagnostic.inspect_validation = Attempt::observed(code);
        if code != 0 {
            return Err(self.terminal(i, code));
        }
        Ok(r)
    }
    fn history(&self, i: usize, ticket: u64) -> Option<usize> {
        self.slots[i].history[..self.slots[i].used]
            .iter()
            .position(|t| ticket != 0 && t.ticket == ticket)
    }
    fn ticket_index(&self, i: usize, t: Ticket) -> Result<usize, Error> {
        if t.source != self.slots[i].diagnostic.source {
            return Err(err(9));
        }
        self.history(i, t.value).ok_or(err(9))
    }
    fn cancel(&mut self, i: usize, r: Receipt, b: wire::Borrow, reason: u32) -> Error {
        self.primary(i, reason);
        self.slots[i].diagnostic.cancels += 1;
        let code = self.transport.cancel(
            r.binding.source,
            r.binding.incarnation,
            b.sequence,
            b.reservation,
        );
        self.slots[i].diagnostic.cancel = Attempt::observed(code);
        self.terminal(i, reason)
    }
    fn take<T>(
        &mut self,
        e: Endpoint,
        codec: &Codec<T>,
        client: bool,
    ) -> Result<Option<Delivery<T>>, Error> {
        let i = self.index(e)?;
        let d = self.slots[i].diagnostic;
        if d.role != (if client { 3 } else { 4 }) {
            return Err(err(9));
        }
        if d.peeks == u64::MAX
            || d.commits == u64::MAX
            || d.cancels == u64::MAX
            || d.last_committed_sequence == u64::MAX
            || d.last_reservation == u64::MAX
            || (!client && self.slots[i].used == self.config.transactions_per_endpoint)
        {
            return Err(err(90));
        }
        let r = self.inspect(i)?;
        let capacity = wire::OVERHEAD + codec.maximum;
        self.packet[..capacity].fill(0xa5);
        self.slots[i].diagnostic.peeks += 1;
        let code = self.transport.peek(
            r.binding.source,
            r.binding.incarnation,
            &mut self.packet[..capacity],
        );
        self.slots[i].diagnostic.peek = Attempt::observed(code);
        if code == 11 {
            return Ok(None);
        }
        if code != 0 {
            return Err(self.terminal(i, code));
        }
        let b = match wire::envelope(
            &self.packet[..capacity],
            &r,
            self.slots[i].diagnostic.peer,
            codec.maximum,
        ) {
            Ok(v) => v,
            Err(e) => return Err(self.terminal(i, e.code)),
        };
        if b.sequence <= d.last_committed_sequence
            || (client && b.sequence != d.last_committed_sequence + 1)
            || b.reservation <= d.last_reservation
        {
            return Err(self.cancel(i, r, b, 13));
        }
        self.slots[i].diagnostic.last_sequence = b.sequence;
        self.slots[i].diagnostic.last_reservation = b.reservation;
        let info = match wire::information(&self.packet[..capacity], &r, b) {
            Ok(v) => v,
            Err(e) => {
                self.slots[i].diagnostic.decode = Attempt::observed(e.code);
                return Err(self.cancel(i, r, b, e.code));
            }
        };
        let existing = self.history(i, b.ticket);
        let prepared = match info {
            wire::Information::Service(native) => {
                let (index, abandoned) = if client {
                    match existing {
                        Some(t)
                            if matches!(
                                self.slots[i].history[t].state,
                                State::Waiting | State::Abandoned
                            ) =>
                        {
                            (t, self.slots[i].history[t].state == State::Abandoned)
                        }
                        _ => return Err(self.cancel(i, r, b, 13)),
                    }
                } else {
                    if existing.is_some()
                        || self.slots[i].history[..self.slots[i].used].iter().any(|t| {
                            t.info.writer_guid == native.writer_guid
                                && t.info.native_sequence == native.native_sequence
                        })
                    {
                        return Err(self.cancel(i, r, b, 13));
                    }
                    (self.slots[i].used, false)
                };
                // Full typed decode is prepared BEFORE ACK, even for an abandoned response.
                let value = match (codec.decode)(
                    &self.packet[wire::OVERHEAD..wire::OVERHEAD + b.body_bytes],
                ) {
                    Ok(v) => v,
                    Err(e) => {
                        let e = codec_error(e);
                        self.slots[i].diagnostic.decode = Attempt::observed(e.code);
                        return Err(self.cancel(i, r, b, e.code));
                    }
                };
                Prepared::Value {
                    value,
                    info: native,
                    index,
                    abandoned,
                }
            }
            wire::Information::Control(event) => {
                if b.ticket != 0
                    && existing.map_or(true, |t| {
                        if client {
                            !matches!(
                                self.slots[i].history[t].state,
                                State::Waiting | State::Abandoned
                            )
                        } else {
                            self.slots[i].history[t].state != State::Delivered
                        }
                    })
                {
                    return Err(self.cancel(i, r, b, 13));
                }
                Prepared::Control {
                    event,
                    index: existing,
                }
            }
        };
        self.slots[i].diagnostic.decode = Attempt::observed(0);
        self.slots[i].diagnostic.commits += 1;
        let code = self.transport.commit(
            r.binding.source,
            r.binding.incarnation,
            b.sequence,
            b.reservation,
        );
        self.slots[i].diagnostic.commit = Attempt::observed(code);
        if code != 0 {
            return Err(self.terminal(i, code));
        }
        self.slots[i].diagnostic.last_committed_sequence = b.sequence;
        self.slots[i].diagnostic.last_ticket = b.ticket;
        // ACK succeeded. No validation, allocation or fallible preparation remains.
        match prepared {
            Prepared::Value {
                value,
                info,
                index,
                abandoned,
            } => {
                if client {
                    self.slots[i].history[index].info = info;
                    if abandoned {
                        self.slots[i].history[index].state = State::Discarded;
                        return Ok(None);
                    }
                    self.slots[i].history[index].state = State::Done;
                } else {
                    self.slots[i].used += 1;
                    self.slots[i].history[index] = Transaction {
                        ticket: b.ticket,
                        state: State::Delivered,
                        error: 0,
                        info,
                    };
                    self.slots[i].diagnostic.history_used = self.slots[i].used;
                }
                Ok(Some(Delivery::Value {
                    ticket: Ticket {
                        source: e.source,
                        value: b.ticket,
                    },
                    value,
                    info,
                }))
            }
            Prepared::Control { event, index } => {
                if let Some(t) = index {
                    self.slots[i].history[t].state = State::Done;
                    self.slots[i].history[t].error =
                        if event.error != 0 { event.error } else { 125 };
                }
                if event.flags & 1 != 0 {
                    // A committed control is a complete result. No import may follow its ACK.
                    // Defer genuine once-retire/raw closes to explicit close/shutdown/Drop.
                    self.primary(i, if event.error != 0 { event.error } else { 125 });
                    self.slots[i].diagnostic.poisoned = true;
                    let used = self.slots[i].used;
                    for t in &mut self.slots[i].history[..used] {
                        if matches!(t.state, State::Waiting | State::Delivered | State::Reserved) {
                            t.state = State::Abandoned;
                            t.error = 125;
                        }
                    }
                }
                Ok(Some(Delivery::Control(event)))
            }
        }
    }
    /// @brief Copy the saved journal of one consumed endpoint-attempt slot.
    /// @details Read-only local observation remains available after failure or
    /// shutdown. It does not query the Host, retry cleanup or reserve a record.
    /// @param[in] self Group retaining the permanent attempt history.
    /// @param[in] index Zero-based consumed slot index, below attempted_endpoints.
    /// @return Owned Diagnostic copy, or None when this slot was never consumed.
    /// @permissions None; journal values cannot act as live owners or grants.
    /// @see Group::attempted_endpoints; Diagnostic; CloseReport
    pub fn diagnostics(&self, index: usize) -> Option<Diagnostic> {
        if index < self.used {
            Some(self.slots[index].diagnostic)
        } else {
            None
        }
    }
    /// @brief Count permanently consumed endpoint-attempt slots.
    /// @details Includes failed/closed attempts after ABI gating; does not count
    /// ABI-version refusal before a slot was reserved. No Host query is issued.
    /// @param[in] self Group owning this monotonic local endpoint history.
    /// @return Used slot count in the inclusive range 0 through Config::endpoints.
    /// @permissions None; the count cannot enlarge capacity or recycle history.
    /// @see Group::diagnostics; Config::endpoints
    pub fn attempted_endpoints(&self) -> usize {
        self.used
    }
    /// Reject callback reentry before any mutation; retire all entries in reverse,
    /// and retain every failure in existing preallocated endpoint diagnostics.
    /// @brief Permanently shut down and once-clean every consumed endpoint slot.
    /// @details Retires a saved native incarnation before closing query, peer and
    /// source owners. Each outcome remains in its own journal. Repeated calls
    /// read saved cleanup outcomes without repeating any physical cleanup.
    /// @param[in,out] self Group exclusively borrowed until synchronous cleanup returns.
    /// @return Ok when all attempted cleanup statuses are 0. Otherwise return the
    /// first nonzero status in reverse endpoint order, testing native retirement
    /// then source/peer/query journal slots. Physical raw-close calls run in reverse.
    /// @failure Callback reentry returns 17 before shutdown/mutation. A cleanup
    /// refusal does not restore a live group or replace its earlier primary error.
    /// @permissions Uses only this Group's existing endpoint/owner associations.
    /// @see Group::diagnostics; Client::close; Server::close; CloseReport
    pub fn shutdown(&mut self) -> Result<(), Error> {
        if self.callback.get() {
            return Err(err(17));
        }
        self.shutdown = true;
        let mut first = 0;
        for i in (0..self.used).rev() {
            let r = self.attempt_close(i);
            for a in core::iter::once(r.native_retire).chain(r.raw_close.into_iter()) {
                if first == 0 && a.attempted && a.code != 0 {
                    first = a.code;
                }
            }
        }
        status(first)
    }
}
impl<B: Transport> Drop for Group<B> {
    fn drop(&mut self) {
        let _ = self.shutdown();
    }
}
impl<Q, S> Client<Q, S> {
    /// @brief Copy the checked activation receipt for this live client view.
    /// @details Returns the saved complete native association/QoS/GID values;
    /// it is a local read and does not perform endpoint_inspect or grant rights.
    /// @param[in] self Client view retaining the original Group/source association.
    /// @param[in] g Same live Group that created this view.
    /// @return Owned original Receipt, independent of reusable packet storage.
    /// @failure Stale/foreign association 9, callback reentry 17 or closed/poisoned
    /// or shutdown state 125. No native operation or cleanup is started.
    /// @see Group::client; Receipt; raw::endpoint_inspect
    pub fn receipt<B: Transport>(&self, g: &Group<B>) -> Result<Receipt, Error> {
        let i = g.index(self.endpoint)?;
        g.slots[i].receipt.ok_or(err(9))
    }
    /// @brief Encode and submit one complete request through this retained client.
    /// @details Checks local lifetime history and request bounds, revalidates the
    /// actual endpoint, reserves a permanent history row and sends once. A
    /// successful nonzero, nonreused ticket records Waiting; it is not a response.
    /// @param[in] self Live typed view of the original client/source.
    /// @param[in,out] g Same exclusively borrowed Group; owns ticket history and scratch.
    /// @param[in] request Complete request value, unchanged through synchronous encoding.
    /// @return Opaque Ticket associated with this endpoint's actual admitted submission.
    /// @failure Capacity 90, codec error, invalid ticket 22 or original inspection/send
    /// status. An uncertain send poisons/cleans the endpoint; do not retry it.
    /// Inspect primary and cleanup journals independently.
    /// @permissions Exact original call/schema/direction/quota/deadline grant.
    /// @see Client::poll; Client::state; Client::abandon; Group::diagnostics
    pub fn submit<B: Transport>(&self, g: &mut Group<B>, request: &Q) -> Result<Ticket, Error> {
        let i = g.index(self.endpoint)?;
        if g.slots[i].used == g.config.transactions_per_endpoint
            || g.slots[i].diagnostic.submissions == u64::MAX
        {
            return Err(err(90));
        }
        let body = (self.definition.request.encode)(request).map_err(codec_error)?;
        if body.len() > self.definition.request.maximum {
            return Err(err(90));
        }
        let r = g.inspect(i)?;
        let t = g.slots[i].used;
        g.slots[i].used += 1;
        g.slots[i].history[t].state = State::Reserved;
        g.slots[i].diagnostic.history_used = g.slots[i].used;
        g.slots[i].diagnostic.submissions += 1;
        g.ticket.fill(0);
        let code = g.transport.submit(
            r.binding.source,
            r.binding.incarnation,
            &body,
            &mut g.ticket,
        );
        g.slots[i].diagnostic.submit = Attempt::observed(code);
        if code != 0 {
            return Err(g.terminal(i, code));
        }
        let ticket = u64::from_le_bytes(g.ticket);
        if ticket == 0 || g.history(i, ticket).is_some() {
            return Err(g.terminal(i, 22));
        }
        g.slots[i].history[t] = Transaction {
            ticket,
            state: State::Waiting,
            error: 0,
            info: ServiceInfo::default(),
        };
        g.slots[i].diagnostic.last_ticket = ticket;
        Ok(Ticket {
            source: self.endpoint.source,
            value: ticket,
        })
    }
    /// @brief Attempt one response/control delivery from this actual retained client.
    /// @details Borrows a complete same-take packet, checks association and every
    /// metadata/body field, then commits the exact sequence/nonce before publishing
    /// an owned result. A late abandoned response is decoded, ACKed and discarded.
    /// @param[in] self Live typed client view bound to g.
    /// @param[in,out] g Same exclusively borrowed Group; packet scratch may be reused.
    /// @return Some complete Delivery after successful ACK, or None for genuine
    /// idle/no value to expose. No default response stands in for idle.
    /// @failure Original Host/codec/metadata/ACK error. A refused known borrow is
    /// exactly canceled; ambiguous ACK/cancel retires the endpoint. No retry occurs.
    /// @permissions Existing exact client/observer and admitted delivery quotas.
    /// @see Delivery; Client::abandon; Diagnostic; raw::endpoint_commit
    pub fn poll<B: Transport>(&self, g: &mut Group<B>) -> Result<Option<Delivery<S>>, Error> {
        g.take(self.endpoint, &self.definition.response, true)
    }
    /// @brief Observe this endpoint's saved local state for one exact ticket.
    /// @details No Host call, native wait or completion poll occurs. A closed or
    /// poisoned endpoint refuses access rather than inventing a completed result.
    /// @param[in] self Original client view for this ticket's source association.
    /// @param[in] g Same live Group retaining its permanent request history.
    /// @param[in] ticket Opaque ticket returned for this client, unchanged in full width.
    /// @return Waiting, Completed with its saved error, or Abandoned local state.
    /// @failure Foreign/unknown ticket or source 9, callback reentry 17, or terminal 125.
    /// @permissions No new authority; this is a read of existing local history.
    /// @see Client::submit; Client::poll; RequestState
    pub fn state<B: Transport>(&self, g: &Group<B>, ticket: Ticket) -> Result<RequestState, Error> {
        let i = g.index(self.endpoint)?;
        let t = g.ticket_index(i, ticket)?;
        match g.slots[i].history[t].state {
            State::Waiting => Ok(RequestState::Waiting),
            State::Abandoned | State::Discarded => Ok(RequestState::Abandoned),
            State::Done => Ok(RequestState::Completed {
                error: g.slots[i].history[t].error,
            }),
            _ => Err(err(9)),
        }
    }
    /// Local abandonment only. The complete tombstone remains; this never claims
    /// native DDS cancellation and never makes the original request replay-safe.
    /// @brief Abandon one currently Waiting ticket and retain its lifetime tombstone.
    /// @details Revalidates the native endpoint, changes local history before the
    /// single raw abandonment call, and never recycles that history row.
    /// @param[in] self Live original client view for ticket.
    /// @param[in,out] g Same exclusively borrowed Group and permanent request history.
    /// @param[in] ticket Exact Waiting ticket belonging to this endpoint.
    /// @return Ok only after successful local-abandonment transport status.
    /// @failure Unknown/nonwaiting ticket 9 or original inspection/abandon error;
    /// a transport refusal poisons/cleans the endpoint without rollback or replay.
    /// @permissions Existing original client/request association; no new grant.
    /// @see Client::poll; RequestState::Abandoned; raw::client_abandon
    pub fn abandon<B: Transport>(&self, g: &mut Group<B>, ticket: Ticket) -> Result<(), Error> {
        let i = g.index(self.endpoint)?;
        let t = g.ticket_index(i, ticket)?;
        if g.slots[i].history[t].state != State::Waiting {
            return Err(err(9));
        }
        let r = g.inspect(i)?;
        g.slots[i].history[t].state = State::Abandoned;
        let code = g
            .transport
            .abandon(r.binding.source, r.binding.incarnation, ticket.value);
        g.slots[i].diagnostic.abandon = Attempt::observed(code);
        if code != 0 {
            return Err(g.terminal(i, code));
        }
        Ok(())
    }
    /// An explicit third owner queries THIS retained client. Host/native bounded
    /// waiting is the only clock used here. Positive95 remains95; no sleep/graph
    /// fallback or automatic retry is performed. Successful output must write0/1.
    /// @brief Query availability of this retained client with an explicit finite bound.
    /// @details The query uses its independent availability owner and native client;
    /// wait_ns=0 performs one observation. A snapshot reserves no later submission.
    /// @param[in] self Original live client view bound to g.
    /// @param[in,out] g Same exclusively borrowed Group and query-result journal.
    /// @param[in] wait_ns Explicit nanosecond bound, inclusive range 0 through 60000000000.
    /// @return The actual successful native observation as bool.
    /// @failure Missing query owner 13, invalid wait bound 22, malformed output 22,
    /// unsupported native query 95 or original inspection/query status. Query error
    /// remains separate from cleanup and never triggers a fallback probe client.
    /// @permissions Independently admitted service.available/type/quota/deadline grant.
    /// @see Group::client; raw::client_available; Diagnostic::available
    pub fn available<B: Transport>(&self, g: &mut Group<B>, wait_ns: u64) -> Result<bool, Error> {
        let i = g.index(self.endpoint)?;
        let query = g.slots[i].handles[2];
        if query == 0 {
            return Err(err(13));
        }
        if wait_ns > 60_000_000_000 {
            return Err(err(22));
        }
        let r = g.inspect(i)?;
        let mut output = [0xa5];
        let code = g.transport.available(
            r.binding.source,
            r.binding.incarnation,
            query,
            wait_ns,
            &mut output,
        );
        g.slots[i].diagnostic.available = Attempt::observed(code);
        if code != 0 {
            g.primary(i, code);
            return Err(err(code));
        }
        if output[0] > 1 {
            return Err(g.terminal(i, 22));
        }
        Ok(output[0] != 0)
    }
    /// Release this actual endpoint even after a locally terminal control ACK.
    /// Cleanup is a separate caller operation; its results never replace control.
    /// @brief Once-clean this view's retained client and independently opened owners.
    /// @details Native retirement precedes reverse raw closes. The returned journal
    /// preserves operation primary, retirement and every close result separately.
    /// @param[in] self Original client view, retained as stale after cleanup.
    /// @param[in,out] g Same exclusively borrowed Group owning physical cleanup.
    /// @return CloseReport when cleanup ownership is valid; inspect each Attempt
    /// even if the outer Result is Ok. No cleanup status is converted to success.
    /// @failure Foreign/stale view 9, callback reentry 17 or already closed/shutdown 125.
    /// A later close refuses rather than repeating physical cleanup.
    /// @permissions Existing endpoint/raw-owner association only.
    /// @see Group::shutdown; Group::diagnostics; CloseReport
    pub fn close<B: Transport>(&self, g: &mut Group<B>) -> Result<CloseReport, Error> {
        let i = g.owner_index(self.endpoint)?;
        Ok(g.attempt_close(i))
    }
}
impl<Q, S> Server<Q, S> {
    /// @brief Copy this live server's complete checked activation receipt.
    /// @details Local read of the saved native association and both QoS profiles;
    /// server GID extent remains 0. Does not perform another Host inspection.
    /// @param[in] self Original typed server view tied to g.
    /// @param[in] g Same live Group that owns this server endpoint.
    /// @return Owned Receipt with no borrow of Group's reusable packet buffer.
    /// @failure Stale/foreign association 9, callback reentry 17 or terminal state 125.
    /// @see Group::server; Receipt; raw::endpoint_inspect
    pub fn receipt<B: Transport>(&self, g: &Group<B>) -> Result<Receipt, Error> {
        let i = g.index(self.endpoint)?;
        g.slots[i].receipt.ok_or(err(9))
    }
    /// @brief Take one complete typed request or explicit server control record.
    /// @details The actual borrow, metadata and full request decode precede exact
    /// commit. Successful request tickets remain in permanent server history for
    /// exactly one response; Empty remains a real complete zero-body request.
    /// @param[in] self Live original server view and complete request codec.
    /// @param[in,out] g Same exclusively borrowed Group owning packet/history storage.
    /// @return Some owned Delivery after successful commit, or None for genuine idle.
    /// @failure Preserves original Host, metadata, codec and ACK errors. A known
    /// refused borrow is canceled exactly; uncertain ACKs retire the endpoint.
    /// @permissions Original advertise/respond pairing and actual delivery admission.
    /// @see Server::respond; Server::serve_once; Delivery; Diagnostic
    pub fn poll<B: Transport>(&self, g: &mut Group<B>) -> Result<Option<Delivery<Q>>, Error> {
        g.take(self.endpoint, &self.definition.request, false)
    }
    /// @brief Encode and send one complete response for a committed request ticket.
    /// @details Requires Delivered history, validates the complete response and
    /// current native endpoint, then marks history Done before the single send.
    /// No retry or default response replaces an uncertain native send.
    /// @param[in] self Original live server view bound to g and ticket.
    /// @param[in,out] g Same exclusively borrowed Group and permanent request history.
    /// @param[in] ticket Exact delivered request ticket belonging to this server.
    /// @param[in] response Complete response value, unchanged during synchronous encoding.
    /// @return Ok only after actual successful response-send status.
    /// @failure Invalid/non-delivered ticket 9, size/counter capacity 90, original
    /// codec/inspection/send error. Transport refusal poisons/cleans the endpoint;
    /// the ticket is never restored to a replayable request.
    /// @permissions Original independently granted respond/type/quota/deadline authority.
    /// @see Server::poll; Server::serve_once; Diagnostic::respond
    pub fn respond<B: Transport>(
        &self,
        g: &mut Group<B>,
        ticket: Ticket,
        response: &S,
    ) -> Result<(), Error> {
        let i = g.index(self.endpoint)?;
        let t = g.ticket_index(i, ticket)?;
        if g.slots[i].history[t].state != State::Delivered {
            return Err(err(9));
        }
        let body = (self.definition.response.encode)(response).map_err(codec_error)?;
        if body.len() > self.definition.response.maximum {
            return Err(err(90));
        }
        if g.slots[i].diagnostic.responses == u64::MAX {
            return Err(err(90));
        }
        let r = g.inspect(i)?;
        g.slots[i].history[t].state = State::Done;
        g.slots[i].diagnostic.responses += 1;
        let code = g.transport.respond(
            r.binding.source,
            r.binding.incarnation,
            g.slots[i].handles[1],
            ticket.value,
            &body,
        );
        g.slots[i].diagnostic.respond = Attempt::observed(code);
        if code != 0 {
            return Err(g.terminal(i, code));
        }
        Ok(())
    }
    /// Run one callback after a real committed request. Failure explicitly retires
    /// this endpoint and returns its primary; it is never an empty success reply.
    /// Panics/traps follow the producer's real unwind/abort contract; Host drain is
    /// still required if the Guest cannot run ordinary cleanup.
    /// @brief Poll once and invoke one local request handler after a real commit.
    /// @details Runs callback at most once with the complete owned request and
    /// borrowed same-take metadata. Holds the Group's callback lease through the
    /// handler, releases it, then sends the complete returned response once.
    /// @param[in] self Original live typed server view.
    /// @param[in,out] g Same exclusively borrowed Group; reentry refuses with 17.
    /// @param[in] callback Caller-owned FnOnce handler; retains no borrowed metadata.
    /// @return True after an actual request/handler/successful response, false for
    /// genuine idle. Neither branch invents a request or default response.
    /// @failure Original poll/control/handler/send status. A zero-valued handler
    /// error becomes INVALID 22. Handler/send failure retires this endpoint once;
    /// panics/traps provide no promise of ordinary Guest cleanup.
    /// @permissions Exact existing server/respond grants; callback supplies no policy.
    /// @see Server::poll; Server::respond; Group::shutdown; Diagnostic
    pub fn serve_once<B: Transport, F>(&self, g: &mut Group<B>, callback: F) -> Result<bool, Error>
    where
        F: FnOnce(Q, &ServiceInfo) -> Result<S, Error>,
    {
        match self.poll(g)? {
            None => Ok(false),
            Some(Delivery::Control(c)) => Err(err(if c.error != 0 { c.error } else { 125 })),
            Some(Delivery::Value {
                ticket,
                value,
                info,
            }) => {
                struct Reset<'a>(&'a Cell<bool>);
                impl Drop for Reset<'_> {
                    fn drop(&mut self) {
                        self.0.set(false);
                    }
                }
                g.callback.set(true);
                let reset = Reset(&g.callback);
                let result = callback(value, &info);
                drop(reset);
                match result {
                    Ok(response) => match self.respond(g, ticket, &response) {
                        Ok(()) => Ok(true),
                        Err(e) => {
                            if g.slots[self.endpoint.index].diagnostic.closed {
                                Err(e)
                            } else {
                                Err(g.terminal(self.endpoint.index, e.code))
                            }
                        }
                    },
                    Err(e) => {
                        let e = codec_error(e);
                        let i = g.index(self.endpoint)?;
                        Err(g.terminal(i, e.code))
                    }
                }
            }
        }
    }
    /// Release this actual endpoint even after a locally terminal control ACK.
    /// Cleanup is a separate caller operation; its results never replace control.
    /// @brief Once-retire this server and close its responder/source owners in reverse.
    /// @details Marks local cleanup ownership closed before calls. Each physical
    /// retirement/close result remains distinct from the endpoint's operation primary.
    /// @param[in] self Original server view, retained as stale after cleanup.
    /// @param[in,out] g Same exclusively borrowed Group owning endpoint cleanup.
    /// @return Owned CloseReport; outer Ok does not assert every cleanup status is 0.
    /// @failure Foreign/stale view 9, callback reentry 17 or already closed/shutdown 125.
    /// Repeated calls never replay the physical cleanup path.
    /// @permissions Uses only the existing retained endpoint and raw-owner identities.
    /// @see Group::shutdown; Group::diagnostics; CloseReport
    pub fn close<B: Transport>(&self, g: &mut Group<B>) -> Result<CloseReport, Error> {
        let i = g.owner_index(self.endpoint)?;
        Ok(g.attempt_close(i))
    }
}
