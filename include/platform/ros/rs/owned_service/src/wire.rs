//! Actual UMRE256/UMRC160/URMI192 bounded little-endian parsing. No RMW/native
//! struct layout or pointer cast is guessed. Real zero GID/timestamps are data.
//!
//! @brief Parse original owned-Service wire records without native struct casts.
//! @details These pure synchronous checks allocate no resources, perform no
//! Host calls and grant no rights. Successful association checks compare the
//! caller-supplied authenticated receipt; arbitrary bytes cannot establish one.
//! Returned metadata owns its scalar/array values. Borrow descriptors retain no
//! Rust reference and must remain associated with their original immutable packet.
//! @version UMRE/UMRC/URMI version 1, ROS2 role 3 client or role 4 server.
//! @see crate::raw; crate::Group; crate::Transport
use roswasm::{codes, Error};
/// @brief Complete UMRE endpoint receipt extent, in bytes.
/// @details Exactly 256 bytes include association, both QoS profiles and GID slot.
/// @see receipt; Receipt
pub const ENDPOINT: usize = 256;
/// @brief UMRC delivery-control prefix extent, in bytes.
/// @details Exactly 160 bytes precede URMI metadata and the canonical body.
/// @see envelope; OVERHEAD
pub const CONTROL: usize = 160;
/// @brief Same-take URMI metadata extent, in bytes.
/// @details Exactly 192 bytes preserve native signed metadata and writer identity.
/// @see information; ServiceInfo
pub const METADATA: usize = 192;
/// @brief Minimum complete delivery extent, including both transport headers.
/// @details The 352 bytes exclude canonical body bytes; Empty still has this overhead.
/// @see CONTROL; METADATA; envelope
pub const OVERHEAD: usize = 352;
fn invalid() -> Error {
    Error::new(codes::INVALID)
}
fn le(b: &[u8], at: usize, n: usize) -> u64 {
    let mut v = 0;
    for i in 0..n {
        v |= (b[at + i] as u64) << (8 * i);
    }
    v
}
fn zero(b: &[u8]) -> bool {
    b.iter().all(|v| *v == 0)
}
/// A full Runtime-issued generation/index capability handle, not a pointer.
/// @brief Check that both halves of a numeric handle are nonzero.
/// @details This structural predicate does not authenticate ownership, generation
/// freshness, Instance, native session or an operation grant.
/// @param[in] h Unsigned full-width candidate; no memory is accessed through it.
/// @return True when both the lower index and upper generation halves are nonzero.
/// @see Binding; receipt
pub fn full_handle(h: u64) -> bool {
    h as u32 != 0 && (h >> 32) as u32 != 0
}
/// Actual normalized finite/saturated time representation in a QoS receipt.
/// @brief Owned unsigned seconds and nanoseconds from one actual QoS duration.
/// @details The receipt parser checks nanosec below 1000000000. No Guest clock,
/// deadline reservation or conversion to a native duration is performed.
/// @see Qos; receipt
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Time {
    /// @brief Whole duration seconds, retaining the original unsigned value.
    /// @details Saturated/large durations are not narrowed to a host-sized integer.
    /// @see Time::nanosec; Qos
    pub sec: u64,
    /// @brief Fractional nanoseconds, inclusive range 0 through 999999999.
    /// @details This subsecond component is checked independently of whole seconds.
    /// @see Time::sec; receipt
    pub nanosec: u64,
}
/// Both independently queried native QoS profiles are retained. These values
/// report the admitted native endpoint; Guest values never authorize/change it.
/// @brief One independently queried actual native endpoint QoS profile.
/// @details Owns its scalar duration values; changing this local value changes
/// neither the retained endpoint nor its trusted native QoS policy.
/// @see Receipt::qos; receipt
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Qos {
    /// @brief Original admitted history enum, restricted by this wire profile to 1 or 2.
    /// @details History value 1 requires nonzero depth; no queue is reserved here.
    /// @see Qos::depth; receipt
    pub history: u32,
    /// @brief Original reliability enum, restricted to 1 or 2.
    /// @details Reports the actual native endpoint rather than a requested override.
    /// @see Receipt::qos; receipt
    pub reliability: u32,
    /// @brief Original durability enum, restricted to 1 or 2.
    /// @details Copying it does not create retained messages or an extra native endpoint.
    /// @see Receipt::qos; receipt
    pub durability: u32,
    /// @brief Original liveliness enum, restricted to 1 or 2.
    /// @details A parsed policy value does not assert current peer liveness.
    /// @see Qos::lease; receipt
    pub liveliness: u32,
    /// @brief Actual native history-depth value, kept as unsigned 64 bits.
    /// @details Must be nonzero for history 1; it is independent of Guest quotas.
    /// @see Qos::history; crate::Config
    pub depth: u64,
    /// @brief Actual native deadline duration in normalized seconds/nanoseconds.
    /// @details A reported QoS deadline is independent of the Host operation deadline.
    /// @see Time; Qos::lifespan
    pub deadline: Time,
    /// @brief Actual native lifespan duration in normalized seconds/nanoseconds.
    /// @details This receipt value neither expires nor retires a Guest owner itself.
    /// @see Time; Qos::deadline
    pub lifespan: Time,
    /// @brief Actual native liveliness lease duration.
    /// @details Retains the complete unsigned native receipt representation.
    /// @see Time; Qos::liveliness
    pub lease: Time,
    /// @brief Actual native namespace-convention flag.
    /// @details Wire input must encode exactly 0 or 1; no Guest name override follows.
    /// @see receipt; Receipt
    pub avoid_ros_namespace_conventions: bool,
}
fn qos(b: &[u8]) -> Result<Qos, Error> {
    let q = Qos {
        history: le(b, 0, 4) as u32,
        reliability: le(b, 4, 4) as u32,
        durability: le(b, 8, 4) as u32,
        liveliness: le(b, 12, 4) as u32,
        depth: le(b, 16, 8),
        deadline: Time {
            sec: le(b, 24, 8),
            nanosec: le(b, 32, 8),
        },
        lifespan: Time {
            sec: le(b, 40, 8),
            nanosec: le(b, 48, 8),
        },
        lease: Time {
            sec: le(b, 56, 8),
            nanosec: le(b, 64, 8),
        },
        avoid_ros_namespace_conventions: b[72] != 0,
    };
    if !(1..=2).contains(&q.history)
        || !(1..=2).contains(&q.reliability)
        || !(1..=2).contains(&q.durability)
        || !(1..=2).contains(&q.liveliness)
        || (q.history == 1 && q.depth == 0)
        || q.deadline.nanosec >= 1_000_000_000
        || q.lifespan.nanosec >= 1_000_000_000
        || q.lease.nanosec >= 1_000_000_000
        || b[72] > 1
        || !zero(&b[73..80])
    {
        return Err(invalid());
    }
    Ok(q)
}
/// Full source/incarnation binding copied from actual authenticated receipt.
/// @brief Complete saved association of one retained endpoint incarnation.
/// @details The parser rejects zero identity components. Authentication still
/// depends on a successful original Host call; constructing this value grants none.
/// @see Receipt; receipt; envelope
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Binding {
    /// @brief Original complete source capability handle.
    /// @details Both generation and index halves must be nonzero; never narrow it.
    /// @see full_handle; crate::raw::endpoint_inspect
    pub source: u64,
    /// @brief Nonzero Instance identity from the authenticated receipt.
    /// @details Equality binds subsequent delivery to this original Guest Instance.
    /// @see Binding::runtime_generation; envelope
    pub instance: u64,
    /// @brief Nonzero Runtime generation of the saved Instance association.
    /// @details It cannot be reset by copying a receipt or reopening a Guest value.
    /// @see Binding::instance; envelope
    pub runtime_generation: u64,
    /// @brief Nonzero retained native-session identity.
    /// @details A disconnected old session does not become a replacement session.
    /// @see Binding::incarnation; crate::raw::endpoint_retire
    pub session: u64,
    /// @brief Nonzero native endpoint incarnation within the saved association.
    /// @details Every later raw12 endpoint operation must supply this exact value.
    /// @see crate::raw::endpoint_inspect; crate::raw::endpoint_retire
    pub incarnation: u64,
}
impl Binding {
    fn matches(&self, b: &[u8]) -> bool {
        b[7] == 2
            && le(b, 16, 8) == self.source
            && le(b, 24, 8) == self.instance
            && le(b, 32, 8) == self.runtime_generation
            && le(b, 40, 8) == self.session
            && le(b, 48, 8) == self.incarnation
    }
}
/// Original UMRE value. An absent client GID is explicitly extent0; a present
/// all-zero GID is permitted, and neither is fabricated as a request writer GUID.
/// @brief Complete owned endpoint receipt after exact UMRE256 checks.
/// @details Owns both actual QoS profiles and the fixed native-GID storage. Its
/// reported identity remains separate from each request's native writer GUID.
/// @see receipt; ServiceInfo::writer_guid
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Receipt {
    /// @brief Full source, Instance, generation, session and incarnation binding.
    /// @details Preserve it as one association for all later delivery/ACK checks.
    /// @see Binding; envelope
    pub binding: Binding,
    /// @brief Retained endpoint role: 3 for client or 4 for server.
    /// @details Determines whether service data is an actual response or request.
    /// @see information; receipt
    pub role: u8,
    /// @brief Both independently queried actual native QoS profiles in wire order.
    /// @details No defaults or local desired profiles replace either receipt value.
    /// @see Qos; receipt
    pub qos: [Qos; 2],
    /// @brief Meaningful native client-GID extent, inclusive range 0 through 32.
    /// @details Server receipts require 0; absent and present-all-zero GIDs differ.
    /// @see Receipt::native_gid; ServiceInfo::writer_guid
    pub native_gid_bytes: u8,
    /// @brief Fixed owned native client-GID byte slot, with zero unused tail.
    /// @details Inspect only native_gid_bytes bytes; this is not a request writer GUID.
    /// @see Receipt::native_gid_bytes; ServiceInfo
    pub native_gid: [u8; 32],
}
/// @brief Decode one exact endpoint activation or inspection receipt.
/// @details Checks version, backend, role, source association, reserved bytes,
/// complete native QoS profiles and the meaningful GID extent before returning.
/// @param[in] b Immutable complete 256-byte UMRE copy from a successful Host call.
/// @param[in] operation Expected UMRE operation: 1 activation or 2 inspection.
/// @param[in] role Expected endpoint role, exactly 3 client or 4 server.
/// @param[in] source Exact original full source handle supplied to that Host call.
/// @return Owned complete Receipt; no result borrows the input byte array.
/// @failure Returns original local INVALID status 22 on any rejected field.
/// No endpoint is opened, retired, consumed or acknowledged by this pure parser.
/// @permissions None for parsing; input authenticity requires its original Host call.
/// @see crate::raw::client_activate; crate::raw::endpoint_inspect; envelope
pub fn receipt(b: &[u8; 256], operation: u8, role: u8, source: u64) -> Result<Receipt, Error> {
    if le(b, 0, 4) != 0x45524d55
        || le(b, 4, 2) != 1
        || b[6] != operation
        || b[7] != 2
        || le(b, 8, 4) != 256
        || b[12] != role
        || !(role == 3 || role == 4)
        || b[13] != 2
        || b[14] > 32
        || b[15] != 0
        || !zero(&b[56..64])
        || (role == 4 && b[14] != 0)
        || !zero(&b[224 + b[14] as usize..256])
    {
        return Err(invalid());
    }
    let binding = Binding {
        source: le(b, 16, 8),
        instance: le(b, 24, 8),
        runtime_generation: le(b, 32, 8),
        session: le(b, 40, 8),
        incarnation: le(b, 48, 8),
    };
    if source != binding.source
        || !full_handle(source)
        || binding.instance == 0
        || binding.runtime_generation == 0
        || binding.session == 0
        || binding.incarnation == 0
    {
        return Err(invalid());
    }
    let mut gid = [0; 32];
    gid.copy_from_slice(&b[224..256]);
    Ok(Receipt {
        binding,
        role,
        qos: [qos(&b[64..144])?, qos(&b[144..224])?],
        native_gid_bytes: b[14],
        native_gid: gid,
    })
}
/// Same-take service metadata. Native sequence and times retain their signed
/// bits; the Gateway ticket and accepted-stream sequence are separate identities.
/// @brief Complete owned native Service metadata from the same take as its body.
/// @details Signed values retain every native bit, including real zeros and
/// negative values. No clock source, sequence or GUID is fabricated.
/// @see information; crate::Delivery
#[derive(Clone, Copy, Debug, Default, PartialEq, Eq)]
pub struct ServiceInfo {
    /// @brief Original signed native source timestamp.
    /// @details Retain its original nanosecond representation, including real zero.
    /// @see ServiceInfo::received_timestamp; information
    pub source_timestamp: i64,
    /// @brief Original signed native receive timestamp from this same take.
    /// @details No Guest steady/wall clock is substituted for an unavailable value.
    /// @see ServiceInfo::source_timestamp; information
    pub received_timestamp: i64,
    /// @brief Signed native request sequence preserved without narrowing.
    /// @details Distinct from the Gateway ticket and accepted delivery sequence.
    /// @see Borrow::ticket; Borrow::sequence
    pub native_sequence: i64,
    /// @brief Exact 16 native writer-GUID bytes from this same take.
    /// @details Real all-zero bytes remain data and are not replaced by the client GID.
    /// @see Receipt::native_gid; information
    pub writer_guid: [u8; 16],
}
/// A complete authenticated borrow prefix, sufficient only for exact cancel/ACK.
/// @brief Checked identity and body extent of one outstanding delivery borrow.
/// @details Contains no pointer or lifetime token. Keep it paired with the same
/// immutable packet and current Receipt until exact commit/cancel completes.
/// @see envelope; information; crate::raw::endpoint_commit
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Borrow {
    /// @brief Positive accepted-stream sequence of this borrowed delivery.
    /// @details Reborrowing a record may preserve sequence while changing reservation.
    /// @see Borrow::reservation; crate::raw::endpoint_commit
    pub sequence: u64,
    /// @brief Nonzero distinct per-borrow reservation nonce.
    /// @details Must match together with sequence; an old nonce never names a new borrow.
    /// @see Borrow::sequence; crate::raw::endpoint_cancel
    pub reservation: u64,
    /// @brief Full Gateway ticket associated with this packet.
    /// @details Data requires a nonzero ticket; endpoint controls may have other correlation.
    /// @see ServiceInfo::native_sequence; ControlEvent
    pub ticket: u64,
    /// @brief Complete canonical body extent, excluding UMRC and URMI headers.
    /// @details Logical Empty and body-free control records retain extent 0.
    /// @see OVERHEAD; information
    pub body_bytes: usize,
}
/// A real source control record has no invented native service metadata.
/// @brief Explicit resource-error or endpoint-closed control observation.
/// @details Owns only original control kind, flags, error and ticket. It contains
/// no service value, fabricated timestamp or invented native writer identity.
/// @see Information::Control; information; crate::Delivery::Control
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct ControlEvent {
    /// @brief Original URMI control kind, 6 resource-error or 7 endpoint-closed.
    /// @details The parser checks each kind's distinct flags/error constraints.
    /// @see ControlEvent::flags; information
    pub kind: u8,
    /// @brief Original control flags with no bits outside mask 3.
    /// @details Endpoint-closed requires bit 0; preserve both admitted flag bits.
    /// @see ControlEvent::kind; information
    pub flags: u8,
    /// @brief Original unsigned control error.
    /// @details Resource-error requires nonzero; cleanup cannot overwrite this primary.
    /// @see crate::Diagnostic::primary; information
    pub error: u32,
    /// @brief Original Gateway ticket/correlation from this packet.
    /// @details Never reinterpret it as a native signed request sequence or a grant.
    /// @see Borrow::ticket; ServiceInfo::native_sequence
    pub ticket: u64,
}
/// @brief Disjoint checked Service metadata or body-free control metadata.
/// @details Matching this enum preserves the absence of native Service fields
/// for control records; the pure parser does not commit or consume a borrow.
/// @see information; crate::Delivery
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum Information {
    /// @brief Complete same-take metadata for an actual Service request/response.
    /// @details Carries owned scalar/GUID values, without borrowing packet storage.
    /// @see ServiceInfo; information
    Service(ServiceInfo),
    /// @brief Actual body-free resource-error or endpoint-closed observation.
    /// @details No Service value or native metadata is manufactured for this branch.
    /// @see ControlEvent; information
    Control(ControlEvent),
}
/// @brief Check the complete UMRC delivery envelope and body bound.
/// @details Validates fixed fields, saved association, exact peer, full packet
/// extent and positive sequence/reservation before exposing an ACK descriptor.
/// @param[in] b Immutable complete packet copied by a successful endpoint_peek.
/// @param[in] r Authenticated current endpoint receipt saved by the caller.
/// @param[in] peer Exact paired observer/responder handle from the live endpoint.
/// @param[in] maximum Maximum canonical body bytes from the selected codec/grant.
/// @return Owned Borrow descriptor for this packet; URMI/body still require decoding.
/// @failure Returns INVALID 22 for malformed/foreign headers and TOO_LARGE 90
/// for a rejected metadata/body extent. Makes no Host call or ACK.
/// @permissions None for parsing; numeric equality does not authenticate arbitrary input.
/// @see information; crate::raw::endpoint_peek; crate::raw::endpoint_cancel
pub fn envelope(b: &[u8], r: &Receipt, peer: u64, maximum: usize) -> Result<Borrow, Error> {
    if b.len() < OVERHEAD
        || le(b, 0, 4) != 0x43524d55
        || le(b, 4, 2) != 1
        || b[6] != 5
        || le(b, 8, 4) != 160
        || b[12] != r.role
        || b[13] != 16
        || !zero(&b[14..16])
        || !zero(&b[128..160])
        || !r.binding.matches(b)
        || le(b, 56, 8) != peer
        || le(b, 72, 8) == 0
        || le(b, 80, 8) == 0
        || le(b, 88, 8) != 0
        || le(b, 96, 8) != b.len() as u64
        || le(b, 112, 8) != 0
        || le(b, 120, 8) != 0
    {
        return Err(invalid());
    }
    let n = le(b, 104, 8);
    if n < 192 || n > (b.len() - CONTROL) as u64 || n - 192 > maximum as u64 {
        return Err(Error::new(codes::TOO_LARGE));
    }
    Ok(Borrow {
        sequence: le(b, 72, 8),
        reservation: le(b, 80, 8),
        ticket: le(b, 64, 8),
        body_bytes: (n - 192) as usize,
    })
}
/// @brief Check same-take URMI metadata against its accepted UMRC borrow.
/// @details Validate envelope first, then pass the unchanged same packet. Data
/// and controls follow distinct constraints; signed native fields retain bits.
/// @param[in] packet Complete immutable packet used to produce e.
/// @param[in] r Exact authenticated endpoint receipt used by envelope.
/// @param[in] e Checked borrow descriptor of this same packet and endpoint.
/// @return Owned native ServiceInfo or explicit ControlEvent; no output borrows bytes.
/// @failure INVALID 22 rejects malformed/mismatched metadata; UNSUPPORTED 95
/// rejects a native writer GUID extent other than 16. No record is consumed.
/// @permissions None for parsing; original Host admission/authenticity stays external.
/// @see envelope; Information; crate::raw::endpoint_commit
pub fn information(packet: &[u8], r: &Receipt, e: Borrow) -> Result<Information, Error> {
    if packet.len() < OVERHEAD {
        return Err(invalid());
    }
    let b = &packet[CONTROL..OVERHEAD];
    if le(b, 0, 4) != 0x494d5255
        || le(b, 4, 2) != 1
        || le(b, 8, 4) != 192
        || !r.binding.matches(b)
        || le(b, 56, 8) != e.sequence
        || le(b, 64, 8) != e.ticket
        || le(b, 112, 8) != e.body_bytes as u64
        || b[123] != 0
        || !zero(&b[176..192])
    {
        return Err(invalid());
    }
    let kind = b[6];
    let flags = le(b, 12, 4);
    let control = kind == 6 || kind == 7;
    if control {
        let c = ControlEvent {
            kind,
            flags: b[122],
            error: le(b, 124, 4) as u32,
            ticket: e.ticket,
        };
        if flags != 0
            || e.body_bytes != 0
            || b[120] != 0
            || b[121] != 0
            || !zero(&b[128..176])
            || le(b, 72, 8) != 0
            || le(b, 80, 8) != 0
            || le(b, 88, 8) != u64::MAX
            || le(b, 96, 8) != u64::MAX
            || le(b, 104, 8) != 0
            || c.flags & !3 != 0
            || (kind == 6 && c.error == 0)
            || (kind == 7 && c.flags & 1 == 0)
        {
            return Err(invalid());
        }
        return Ok(Information::Control(c));
    }
    if b[121] != 16 {
        return Err(Error::new(codes::UNSUPPORTED));
    }
    if kind != (if r.role == 3 { 3 } else { 2 })
        || flags != 35
        || e.ticket == 0
        || le(b, 124, 4) != 0
        || b[122] != 0
        || b[120] != 0
        || !zero(&b[128..160])
        || le(b, 88, 8) != u64::MAX
        || le(b, 96, 8) != u64::MAX
    {
        return Err(invalid());
    }
    let mut writer = [0; 16];
    writer.copy_from_slice(&b[160..176]);
    Ok(Information::Service(ServiceInfo {
        source_timestamp: le(b, 72, 8) as i64,
        received_timestamp: le(b, 80, 8) as i64,
        native_sequence: le(b, 104, 8) as i64,
        writer_guid: writer,
    }))
}
