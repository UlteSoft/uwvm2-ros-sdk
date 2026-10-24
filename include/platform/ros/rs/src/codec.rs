//! Checked canonical wire helpers, independent of native ROS serialization.
//!
//! These functions allocate nothing. Encode into an explicitly bounded caller
//! buffer, then pass exactly the returned prefix to the import. Decode only a
//! successful returned prefix. Strings are UTF-8 u32 byte length plus bytes;
//! integers and finite IEEE754 doubles are little endian. Failure is an Error,
//! never a fallback empty value. The host still applies all configured quotas.
//!
//! Each `value`, `values` or `out` slice is borrowed only for the synchronous
//! call. Decoded strings, request payloads and sequences borrow their input;
//! retain those bytes unchanged for the returned borrow's lifetime. Scalar
//! results and ID wrappers are copied values. No codec opens an owner, imports
//! a ROS operation or authenticates the origin of caller-supplied bytes.
//! Encoders check their complete logical value and output extent before the
//! first write; ordinary returned errors preserve `out`. Success initializes
//! exactly the returned prefix and leaves its tail unchanged. Local capacity
//! refusal is90 with a locally calculated `Error::required`; malformed data or
//! a nonrepresentable String extent is22 with no required length. These helpers
//! impose their stated value bounds and caller capacity, not a global IPC byte
//! ceiling. Actual transport/schema quotas remain independently enforced.
use crate::{codes, Error};
use core::convert::{TryFrom, TryInto};
fn invalid() -> Error {
    Error::new(codes::INVALID)
}
fn capacity(out: &[u8], required: usize) -> Result<(), Error> {
    if out.len() < required {
        Err(Error {
            code: codes::TOO_LARGE,
            required: Some(required as u64),
        })
    } else {
        Ok(())
    }
}
fn u64_at(input: &[u8], at: usize) -> Result<u64, Error> {
    let bytes = input.get(at..at + 8).ok_or_else(invalid)?;
    Ok(u64::from_le_bytes(bytes.try_into().map_err(|_| invalid())?))
}
/// Encode `value` as its u32 byte length followed by the exact UTF-8 bytes.
/// `out` receives no terminator. Rust's `str` already guarantees UTF-8; embedded
/// NUL remains data and may be refused by a separately selected native adapter.
/// Returns `value.len()+4` on success,22 if its length does not fit u32/usize,
/// or90 with the complete local required size if `out` is too small. Errors
/// leave `out` untouched. No host call or allocation occurs.
pub fn encode_string(value: &str, out: &mut [u8]) -> Result<usize, Error> {
    let len = u32::try_from(value.len()).map_err(|_| invalid())?;
    let n = value.len().checked_add(4).ok_or_else(invalid)?;
    capacity(out, n)?;
    out[..4].copy_from_slice(&len.to_le_bytes());
    out[4..n].copy_from_slice(value.as_bytes());
    Ok(n)
}
/// Decode exactly one String from `value`, including its u32 length prefix.
/// Returns the borrowed UTF-8 suffix, including any embedded NUL. It remains
/// valid only while the original input is retained unchanged. Missing/trailing
/// bytes, a mismatched declared length or invalid UTF-8 returns22; an empty
/// successful String is distinct from failure. No copy or host query occurs.
pub fn decode_string(value: &[u8]) -> Result<&str, Error> {
    if value.len() < 4 {
        return Err(invalid());
    }
    let n = u32::from_le_bytes(value[..4].try_into().map_err(|_| invalid())?) as usize;
    if n != value.len() - 4 {
        return Err(invalid());
    }
    core::str::from_utf8(&value[4..]).map_err(|_| invalid())
}
/// Encode `value` as one canonical byte0/1 in `out`; return initialized length1.
/// An empty output returns90 with required1 and remains untouched. This also
/// encodes a SetBool request body, without a server request-ID prefix or grant.
pub fn encode_bool(value: bool, out: &mut [u8]) -> Result<usize, Error> {
    capacity(out, 1)?;
    out[0] = u8::from(value);
    Ok(1)
}
/// Decode `value` as exactly one byte0/1; return its Bool by value.
/// Any other byte or extent returns22. Successful false is not an error result.
pub fn decode_bool(value: &[u8]) -> Result<bool, Error> {
    if value.len() != 1 || value[0] > 1 {
        return Err(invalid());
    }
    Ok(value[0] != 0)
}
/// Encode copied `value` as linear xyz then angular xyz, six LE Float64 fields.
/// Every component must be finite; finite negative zero is preserved bitwise.
/// Returns initialized length48,22 for any NaN/infinity, or90 with required48
/// for short `out`. All checks precede writes. This local codec neither changes
/// physical units nor enforces a native grant's magnitude, frame or rate bounds.
pub fn encode_twist(value: [f64; 6], out: &mut [u8]) -> Result<usize, Error> {
    if value.iter().any(|x| !x.is_finite()) {
        return Err(invalid());
    }
    capacity(out, 48)?;
    for (i, field) in value.iter().enumerate() {
        out[i * 8..(i + 1) * 8].copy_from_slice(&field.to_bits().to_le_bytes());
    }
    Ok(48)
}
/// Decode `value` as exactly48 bytes containing six finite LE Float64 values.
/// Returns an owned six-element array preserving finite bits and field order.
/// Incorrect extent, NaN or infinity returns22; no partial array is published.
pub fn decode_twist(value: &[u8]) -> Result<[f64; 6], Error> {
    if value.len() != 48 {
        return Err(invalid());
    }
    let mut out = [0.0; 6];
    for (i, field) in out.iter_mut().enumerate() {
        *field = f64::from_bits(u64_at(value, i * 8)?);
        if !field.is_finite() {
            return Err(invalid());
        }
    }
    Ok(out)
}
/// A complete Trigger/SetBool response: one Bool and one canonical UTF-8 message.
/// This plain local value is not an import status or proof of native delivery.
#[derive(Debug, PartialEq, Eq)]
pub struct ServiceResponse<'a> {
    /// Application response flag, copied by value and independent of ABI status.
    /// A successful transport may carry false; direct construction proves no
    /// response source, authorization or native service effect.
    pub success: bool,
    /// Exact UTF-8 response text borrowed for `'a`, with embedded NUL preserved.
    /// Decoding borrows the canonical input; encoding borrows this text only
    /// until return. No terminator or native storage lifetime is implied.
    pub message: &'a str,
}
/// Encode `value.success` followed by `value.message` into `out`.
/// Returns `message.len()+5`;22 rejects a nonrepresentable String/total extent,
/// and90 reports the complete local required size. All checks precede writes,
/// including the nested String. Neither a request ID nor Host status is encoded.
pub fn encode_service_response(
    value: &ServiceResponse<'_>,
    out: &mut [u8],
) -> Result<usize, Error> {
    u32::try_from(value.message.len()).map_err(|_| invalid())?;
    let n = value.message.len().checked_add(5).ok_or_else(invalid)?;
    capacity(out, n)?;
    out[0] = u8::from(value.success);
    encode_string(value.message, &mut out[1..n])?;
    Ok(n)
}
/// Decode `value` as one Bool followed by one complete canonical String.
/// Returns the copied flag and borrowed message without allocating. A short,
/// noncanonical or trailing-byte response returns22; application false remains
/// a successful decoded value. Keep the original input alive and unchanged.
pub fn decode_service_response(value: &[u8]) -> Result<ServiceResponse<'_>, Error> {
    if value.len() < 5 {
        return Err(invalid());
    }
    Ok(ServiceResponse {
        success: decode_bool(&value[..1])?,
        message: decode_string(&value[1..])?,
    })
}
/// An opaque nonzero service request ID, copied rather than owning a resource.
/// Safe construction is restricted to structural decoding. Parsing caller bytes
/// does not prove that a Gateway issued this ID or that the caller owns it;
/// the actual response operation independently verifies source and ownership.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct RequestId(u64);
impl RequestId {
    /// Return `self`'s exact u64 value without an import or ownership transfer.
    /// Use only with the independently admitted matching request/source; the
    /// number itself is neither a capability nor authority to synthesize a reply.
    pub fn raw(self) -> u64 {
        self.0
    }
}
/// Decode `value` as exactly one nonzero eight-byte LE Trigger request ID.
/// Returns its copied wrapper, or22 for zero/wrong extent. This parses the
/// complete empty-request event envelope and authenticates no input provenance.
pub fn decode_trigger_event(value: &[u8]) -> Result<RequestId, Error> {
    if value.len() != 8 {
        return Err(invalid());
    }
    let n = u64_at(value, 0)?;
    if n == 0 {
        return Err(invalid());
    }
    Ok(RequestId(n))
}
/// Decode `value` as exactly nine bytes: nonzero request ID then canonical Bool.
/// Returns copied `(id, request)`, or22 for wrong extent, zero ID or invalid Bool.
/// The caller must still bind that data to the actual advertised event source.
pub fn decode_set_bool_event(value: &[u8]) -> Result<(RequestId, bool), Error> {
    if value.len() != 9 {
        return Err(invalid());
    }
    Ok((
        decode_trigger_event(&value[..8])?,
        decode_bool(&value[8..])?,
    ))
}
/// One structurally complete builtin Trigger/SetBool event borrowed from input.
/// Its ID and request prefix remain associated for local dispatch; this value
/// does not authenticate a Gateway, advertised source or native request.
#[derive(Debug, PartialEq, Eq)]
pub struct ServiceRequest<'a> {
    /// Copied nonzero request token. The Host independently checks the original
    /// source/owner on a real response; copying this field grants no reply right.
    pub id: RequestId,
    /// Borrowed empty Trigger body or exactly one canonical SetBool byte.
    /// The slice excludes the eight-byte ID; retain the original event input
    /// unchanged for `'a`. It is not a separately owned native request object.
    pub request: &'a [u8],
}
/// Decode a complete supported Trigger/SetBool event without allocation.
/// Custom native Service adapters are not registered by this helper. Extra,
/// missing, zero-ID or noncanonical Bool bytes are rejected before callbacks.
/// `value` must contain the full eight/nine-byte event. Returns its copied ID
/// and borrowed request body, or22 on refusal. It invokes no callback itself.
pub fn decode_service_request(value: &[u8]) -> Result<ServiceRequest<'_>, Error> {
    if value.len() != 8 && value.len() != 9 {
        return Err(invalid());
    }
    let id = decode_trigger_event(&value[..8])?;
    if value.len() == 9 {
        decode_bool(&value[8..])?;
    }
    Ok(ServiceRequest {
        id,
        request: &value[8..],
    })
}
/// Encode a service-server reply using an ID obtained from the advertised queue.
/// Advertising and replying require separate grants on the same resource/type.
/// `id` is copied as eight LE bytes before the complete Bool/String `value`;
/// `out` is borrowed writable storage. Returns `message.len()+13`,22 for an
/// invalid representable extent, or90 with the complete local required size.
/// Returned errors leave output untouched. Encoding neither sends a response
/// nor confirms the ID's source, current ownership or once-only response state.
pub fn encode_service_reply(
    id: RequestId,
    value: &ServiceResponse<'_>,
    out: &mut [u8],
) -> Result<usize, Error> {
    let n = value.message.len().checked_add(13).ok_or_else(invalid)?;
    u32::try_from(value.message.len()).map_err(|_| invalid())?;
    capacity(out, n)?;
    out[..8].copy_from_slice(&id.0.to_le_bytes());
    encode_service_response(value, &mut out[8..n])?;
    Ok(n)
}
/// An opaque structurally nonzero Fibonacci goal token, stored as a copied u64.
/// Decoding arbitrary bytes cannot attest to native issuance or goal ownership.
/// Copying the token creates no grant and transfers no native resource.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct GoalId(u64);
impl GoalId {
    /// Return `self`'s exact u64 value, with no import, lookup or rights change.
    /// Actual feedback/result/cancel operations still require their own admitted
    /// aliases and this same original goal/source scope.
    pub fn raw(self) -> u64 {
        self.0
    }
    /// Return `self`'s exact eight LE bytes as an owned array, without allocation.
    /// This is only request data for separately admitted operations, not proof
    /// of a live goal or a cancellation/feedback/result authorization.
    pub fn bytes(self) -> [u8; 8] {
        self.0.to_le_bytes()
    }
}
/// Encode `order` in0..46 as four LE i32 bytes in `out`; return length4.
/// Out-of-range order returns22, short output returns90 with required4, and both
/// preserve output. This local limit does not raise a smaller native grant bound.
pub fn encode_fibonacci_goal(order: i32, out: &mut [u8]) -> Result<usize, Error> {
    if !(0..=46).contains(&order) {
        return Err(invalid());
    }
    capacity(out, 4)?;
    out[..4].copy_from_slice(&order.to_le_bytes());
    Ok(4)
}
/// Decode `value` as exactly one nonzero eight-byte LE goal ID.
/// Returns its copied token or22 for zero/wrong extent. Use a genuinely successful
/// actual operation response; this structural helper does not establish that.
pub fn decode_goal_id(value: &[u8]) -> Result<GoalId, Error> {
    if value.len() != 8 {
        return Err(invalid());
    }
    let id = u64_at(value, 0)?;
    if id == 0 {
        return Err(invalid());
    }
    Ok(GoalId(id))
}
/// Decode `value` as exactly12 bytes: a nonzero goal ID and LE i32 order0..46.
/// Returns copied `(id, order)`, or22 for bad length, zero ID or invalid order.
/// No advertised source, native action state or authority is authenticated.
pub fn decode_fibonacci_goal_event(value: &[u8]) -> Result<(GoalId, i32), Error> {
    if value.len() != 12 {
        return Err(invalid());
    }
    let id = decode_goal_id(&value[..8])?;
    let order = i32::from_le_bytes(value[8..].try_into().map_err(|_| invalid())?);
    if !(0..=46).contains(&order) {
        return Err(invalid());
    }
    Ok((id, order))
}
/// A checked borrowed Fibonacci sequence envelope. It exposes a checked iterator
/// instead of casting byte storage to an aligned native i32 array.
/// Input order/count/nonnegative values are structurally checked, without
/// verifying the Fibonacci recurrence or the authenticity of native action state.
#[derive(Debug)]
pub struct FibonacciSequence<'a> {
    /// Copied structurally nonzero goal token; this public field is local data.
    /// Directly changing it does not rebind the input to another admitted goal.
    pub goal: GoalId,
    /// Feedback=1, success=2, abort=3 or cancel=4. Feedback decoding supplies1
    /// locally because its received wire envelope has no kind byte. The public
    /// mutable field does not certify a corresponding native transition.
    pub kind: u8,
    values: &'a [u8],
}
impl FibonacciSequence<'_> {
    /// Iterate over the previously checked borrowed values as copied LE i32s.
    /// The iterator borrows `self`; retain the original input as well. It adds
    /// no allocation, validation, native observation or mathematical recurrence
    /// check; empty sequences yield an empty iterator successfully.
    pub fn values(&self) -> impl Iterator<Item = i32> + '_ {
        self.values
            .chunks_exact(4)
            .map(|v| i32::from_le_bytes([v[0], v[1], v[2], v[3]]))
    }
}
fn sequence(value: &[u8], has_kind: bool) -> Result<FibonacciSequence<'_>, Error> {
    let prefix = if has_kind { 13 } else { 12 };
    if value.len() < prefix {
        return Err(invalid());
    }
    let goal = decode_goal_id(&value[..8])?;
    let kind = if has_kind { value[8] } else { 1 };
    if has_kind && !(2..=4).contains(&kind) {
        return Err(invalid());
    }
    let at = if has_kind { 9 } else { 8 };
    let n = u32::from_le_bytes(value[at..at + 4].try_into().map_err(|_| invalid())?) as usize;
    if n > 48 || value.len() - prefix != n * 4 {
        return Err(invalid());
    }
    for bytes in value[prefix..].chunks_exact(4) {
        if i32::from_le_bytes([bytes[0], bytes[1], bytes[2], bytes[3]]) < 0 {
            return Err(invalid());
        }
    }
    Ok(FibonacciSequence {
        goal,
        kind,
        values: &value[prefix..],
    })
}
/// Decode full received `value`: nonzero ID, u32 count and at most48 LE i32s.
/// Returns a borrowed sequence with local kind1; count/extent mismatch or any
/// negative value returns22. No wire kind byte, allocation or Host query occurs.
pub fn decode_fibonacci_feedback(value: &[u8]) -> Result<FibonacciSequence<'_>, Error> {
    sequence(value, false)
}
/// Decode terminal `value` as nonzero ID, outcome2/3/4, count and exact values.
/// Returns a sequence borrowing the input; more than48, negative values, invalid
/// outcome or incomplete/trailing bytes returns22. A kind4 byte alone does not
/// prove a genuine native cancellation or authorize one.
pub fn decode_fibonacci_result(value: &[u8]) -> Result<FibonacciSequence<'_>, Error> {
    sequence(value, true)
}
/// Encode an Action server feedback/result. Kind1/2/3/4 has the canonical server
/// envelope; kind4 is accepted by the host only for a genuinely cancelling goal.
/// Copy `id`, `kind`, count and every `values` element into `out`; return
/// `13+4*values.len()`. Invalid kind, more than48 or a negative value returns22;
/// short output returns90 with the complete local required size. All checks
/// precede writes. No action transition or native effect occurs in this codec.
pub fn encode_fibonacci_reply(
    id: GoalId,
    kind: u8,
    values: &[i32],
    out: &mut [u8],
) -> Result<usize, Error> {
    if !(1..=4).contains(&kind) || values.len() > 48 || values.iter().any(|v| *v < 0) {
        return Err(invalid());
    }
    let n = 13 + values.len() * 4;
    capacity(out, n)?;
    out[..8].copy_from_slice(&id.0.to_le_bytes());
    out[8] = kind;
    out[9..13].copy_from_slice(&(values.len() as u32).to_le_bytes());
    for (i, value) in values.iter().enumerate() {
        out[13 + i * 4..17 + i * 4].copy_from_slice(&value.to_le_bytes());
    }
    Ok(n)
}
/// Decode `value` as exactly eight LE bytes and return the full u64 nanoseconds.
/// Incorrect extent returns22; zero is valid data. The selected clock operation
/// defines the epoch/domain. These bytes prove neither clock access, freshness,
/// synchronization nor a physical timestamp, and the helper grants no clock.
pub fn decode_time(value: &[u8]) -> Result<u64, Error> {
    if value.len() != 8 {
        Err(invalid())
    } else {
        u64_at(value, 0)
    }
}

/// Return the owned zero-byte canonical Trigger request array, infallibly.
/// No allocation, artificial payload byte, request ID or Host operation occurs.
pub fn encode_trigger_request() -> [u8; 0] {
    []
}
/// Check borrowed `value` is exactly empty; return `Ok(())` without allocation.
/// Any byte returns22. This validates the body, not an ID-prefixed server event.
pub fn decode_trigger_request(value: &[u8]) -> Result<(), Error> {
    if value.is_empty() {
        Ok(())
    } else {
        Err(invalid())
    }
}
/// Encode a received-feedback shape (ID+count+values, no kind byte). Use this
/// only as a canonical fixture/adapter helper; receiving needs a separate grant.
/// Copy `id` and at most48 nonnegative `values` into caller `out`; return
/// `12+4*values.len()`. Invalid values return22, and short output returns90 with
/// complete local required size. Refusal preserves output; no event is enqueued.
pub fn encode_fibonacci_feedback(
    id: GoalId,
    values: &[i32],
    out: &mut [u8],
) -> Result<usize, Error> {
    if values.len() > 48 || values.iter().any(|v| *v < 0) {
        return Err(invalid());
    }
    let n = 12 + values.len() * 4;
    capacity(out, n)?;
    out[..8].copy_from_slice(&id.0.to_le_bytes());
    out[8..12].copy_from_slice(&(values.len() as u32).to_le_bytes());
    for (i, v) in values.iter().enumerate() {
        out[12 + i * 4..16 + i * 4].copy_from_slice(&v.to_le_bytes());
    }
    Ok(n)
}
/// Decode a canonical server response with feedback1 or terminal2/3/4. This
/// structural decoder cannot attest to the native goal's cancellation state.
/// `value` must contain nonzero ID, kind, count and exactly that many LE i32s.
/// Returns a sequence borrowing the original input, or22 for bad kind/ID/extent,
/// more than48 values or a negative element. Empty values are valid successful
/// data. Keep the input alive and unchanged for the returned borrow's lifetime.
pub fn decode_fibonacci_reply(value: &[u8]) -> Result<FibonacciSequence<'_>, Error> {
    if value.len() < 13 || !(1..=4).contains(&value[8]) {
        return Err(invalid());
    }
    let goal = decode_goal_id(&value[..8])?;
    let n = u32::from_le_bytes(value[9..13].try_into().map_err(|_| invalid())?) as usize;
    if n > 48 || value.len() - 13 != n * 4 {
        return Err(invalid());
    }
    for b in value[13..].chunks_exact(4) {
        if i32::from_le_bytes([b[0], b[1], b[2], b[3]]) < 0 {
            return Err(invalid());
        }
    }
    Ok(FibonacciSequence {
        goal,
        kind: value[8],
        values: &value[13..],
    })
}
