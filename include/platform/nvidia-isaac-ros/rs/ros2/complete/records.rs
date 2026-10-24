//! @file records.rs
//! @brief Preserve complete original typed records and bounded canonical codecs.
//! @details Values own their strings/sequences; no I/O, executor, clock or native
//! authority is created. Full field order, defaults, identities and bounds remain
//! those of the pinned platform catalog. Errors and allocation failures remain distinct.
extern crate alloc;
use alloc::{string::String, vec::Vec};
use roswasm::typed::Canonical;
use roswasm::{codes, Error};
/// @brief Construct the explicit invalid canonical-data error.
fn invalid() -> Error {
    Error::new(codes::INVALID)
}
/// @brief Measure a checked canonical prefix without allocation.
/// @param n Validated current byte count.
/// @param m Additional byte count.
/// @return Exact bounded sum or the original size error.
fn add_size(n: usize, m: usize) -> Result<usize, Error> {
    n.checked_add(m)
        .filter(|v| *v <= 32768)
        .ok_or(Error::new(codes::TOO_LARGE))
}
/// @brief Borrow the next complete validated input region.
/// @param bytes Borrowed complete canonical input.
/// @param at Internal cursor advanced on success.
/// @param n Exact required byte extent.
/// @return Borrowed region or invalid-data error; no partial region.
fn take<'a>(bytes: &'a [u8], at: &mut usize, n: usize) -> Result<&'a [u8], Error> {
    if *at > bytes.len() || n > bytes.len() - *at {
        return Err(invalid());
    }
    let start = *at;
    *at += n;
    Ok(&bytes[start..*at])
}
/// @brief Read the complete unsigned little-endian sequence count.
/// @param bytes Borrowed canonical input.
/// @param at Internal checked cursor.
/// @return Original count or invalid-data error.
fn read_count(bytes: &[u8], at: &mut usize) -> Result<usize, Error> {
    Ok(u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?) as usize)
}
/// @brief Copy one validated field into an already sized output.
/// @param out Owned destination with the full required capacity.
/// @param at Checked internal write cursor.
/// @param bytes Borrowed complete field bytes.
/// @pre The caller validated the whole output extent.
fn put(out: &mut [u8], at: &mut usize, bytes: &[u8]) {
    out[*at..*at + bytes.len()].copy_from_slice(bytes);
    *at += bytes.len();
}
/// @brief Complete bounded value for ROS2 builtin_interfaces/msg/Time.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Builtin_interfacesMsgTime {
    /// @brief Declared sec; canonical bounds are part of CODEC_IDENTITY.
    pub sec: i32,
    /// @brief Declared nanosec; canonical bounds are part of CODEC_IDENTITY.
    pub nanosec: u32,
}
impl Default for Ros2Builtin_interfacesMsgTime {
    /// @brief Preserve the declared canonical field defaults.
    /// @return Owned default record; no I/O or native authority is created.
    fn default() -> Self {
        Self {
            sec: Default::default(),
            nanosec: Default::default(),
        }
    }
}
impl Ros2Builtin_interfacesMsgTime {
    /// @brief Declared canonical byte-size bound; grants no storage or native authority.
    pub const MAX_WIRE_BYTES: usize = 8;
    /// @brief Declared canonical byte-size bound; grants no storage or native authority.
    pub const CARTESIAN_WIRE_BYTES: u64 = 8;
    /// @brief Declared canonical byte-size bound; grants no storage or native authority.
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Immutable canonical identity for field order, declared defaults and bounds.
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7";
    /// @brief Validate all fields and measure only their initialized canonical prefix.
    /// @param self Borrowed complete typed value.
    /// @return Exact byte count or the original invalid/size error.
    /// @details Every active sequence, UTF-8 string and finite-value constraint is checked.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 4)?;
        n = add_size(n, 4)?;
        if self.nanosec >= 1000000000 {
            return Err(invalid());
        }
        if n > 8 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// @brief Encode after complete validation; output remains unchanged on refusal.
    /// @param self Borrowed complete typed value.
    /// @param out Caller-owned destination.
    /// @return Encoded length or invalid/size error.
    /// @details Validation and capacity checks precede writes; refusal leaves output unchanged.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    /// @brief Write every already validated declared field in canonical order.
    /// @param self Borrowed validated record.
    /// @param out Complete preallocated wire buffer.
    /// @param at Internal write cursor.
    /// @pre Validation and extent checks succeeded.
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.sec.to_le_bytes());
        put(out, at, &self.nanosec.to_le_bytes());
    }
    /// @brief Decode all declared fields with their original nested bounds.
    /// @param bytes Borrowed complete input; retained values own their data.
    /// @param at Internal cursor; callers discard it after any refusal.
    /// @return Owned complete record or the original invalid/size error.
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.sec = decoded;
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.nanosec = decoded;
        if value.nanosec >= 1000000000 {
            return Err(invalid());
        }
        Ok(value)
    }
}
impl Canonical for Ros2Builtin_interfacesMsgTime {
    /// @brief Allocate one exact validated canonical output; never native serialization.
    /// @param self Borrowed complete typed value.
    /// @return Owned exact wire bytes or original validation error.
    /// @details Allocation failure remains a language runtime failure; no native serialization or authority is inferred.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete original canonical body.
    /// @param bytes Borrowed complete wire body within the declared maximum.
    /// @return Owned full typed record or invalid/size error.
    /// @details Truncation and trailing bytes are refused; returned strings and sequences do not borrow input memory.
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 8 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 8 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// @brief Complete bounded value for ROS2 std_msgs/msg/Header.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Std_msgsMsgHeader {
    /// @brief Declared stamp; canonical bounds are part of CODEC_IDENTITY.
    pub stamp: Ros2Builtin_interfacesMsgTime,
    /// @brief Declared frame_id; canonical bounds are part of CODEC_IDENTITY.
    pub frame_id: String,
}
impl Default for Ros2Std_msgsMsgHeader {
    /// @brief Preserve the declared canonical field defaults.
    /// @return Owned default record; no I/O or native authority is created.
    fn default() -> Self {
        Self {
            stamp: Default::default(),
            frame_id: Default::default(),
        }
    }
}
impl Ros2Std_msgsMsgHeader {
    /// @brief Declared canonical byte-size bound; grants no storage or native authority.
    pub const MAX_WIRE_BYTES: usize = 76;
    /// @brief Declared canonical byte-size bound; grants no storage or native authority.
    pub const CARTESIAN_WIRE_BYTES: u64 = 76;
    /// @brief Declared canonical byte-size bound; grants no storage or native authority.
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Immutable canonical identity for field order, declared defaults and bounds.
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_afba9e74be3c5e3321750c1c4c30ba2925269f75b9da43a6d5c1e93d293d7396";
    /// @brief Validate all fields and measure only their initialized canonical prefix.
    /// @param self Borrowed complete typed value.
    /// @return Exact byte count or the original invalid/size error.
    /// @details Every active sequence, UTF-8 string and finite-value constraint is checked.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.stamp.wire_size()?)?;
        if self.frame_id.len() > 64 || self.frame_id.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.frame_id.len())?;
        if n > 76 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// @brief Encode after complete validation; output remains unchanged on refusal.
    /// @param self Borrowed complete typed value.
    /// @param out Caller-owned destination.
    /// @return Encoded length or invalid/size error.
    /// @details Validation and capacity checks precede writes; refusal leaves output unchanged.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    /// @brief Write every already validated declared field in canonical order.
    /// @param self Borrowed validated record.
    /// @param out Complete preallocated wire buffer.
    /// @param at Internal write cursor.
    /// @pre Validation and extent checks succeeded.
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.stamp.write_fields(out, at);
        put(out, at, &(self.frame_id.len() as u32).to_le_bytes());
        put(out, at, self.frame_id.as_bytes());
    }
    /// @brief Decode all declared fields with their original nested bounds.
    /// @param bytes Borrowed complete input; retained values own their data.
    /// @param at Internal cursor; callers discard it after any refusal.
    /// @return Owned complete record or the original invalid/size error.
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Builtin_interfacesMsgTime::read_fields(bytes, at)?;
        value.stamp = decoded;
        let size = read_count(bytes, at)?;
        if size > 64 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.frame_id = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Std_msgsMsgHeader {
    /// @brief Allocate one exact validated canonical output; never native serialization.
    /// @param self Borrowed complete typed value.
    /// @return Owned exact wire bytes or original validation error.
    /// @details Allocation failure remains a language runtime failure; no native serialization or authority is inferred.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete original canonical body.
    /// @param bytes Borrowed complete wire body within the declared maximum.
    /// @return Owned full typed record or invalid/size error.
    /// @details Truncation and trailing bytes are refused; returned strings and sequences do not borrow input memory.
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 76 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 12 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// @brief Complete bounded value for ROS2 geometry_msgs/msg/Point.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Geometry_msgsMsgPoint {
    /// @brief Declared x; canonical bounds are part of CODEC_IDENTITY.
    pub x: f64,
    /// @brief Declared y; canonical bounds are part of CODEC_IDENTITY.
    pub y: f64,
    /// @brief Declared z; canonical bounds are part of CODEC_IDENTITY.
    pub z: f64,
}
impl Default for Ros2Geometry_msgsMsgPoint {
    /// @brief Preserve the declared canonical field defaults.
    /// @return Owned default record; no I/O or native authority is created.
    fn default() -> Self {
        Self {
            x: Default::default(),
            y: Default::default(),
            z: Default::default(),
        }
    }
}
impl Ros2Geometry_msgsMsgPoint {
    /// @brief Declared canonical byte-size bound; grants no storage or native authority.
    pub const MAX_WIRE_BYTES: usize = 24;
    /// @brief Declared canonical byte-size bound; grants no storage or native authority.
    pub const CARTESIAN_WIRE_BYTES: u64 = 24;
    /// @brief Declared canonical byte-size bound; grants no storage or native authority.
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Immutable canonical identity for field order, declared defaults and bounds.
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616";
    /// @brief Validate all fields and measure only their initialized canonical prefix.
    /// @param self Borrowed complete typed value.
    /// @return Exact byte count or the original invalid/size error.
    /// @details Every active sequence, UTF-8 string and finite-value constraint is checked.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if !self.x.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.y.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.z.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if n > 24 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// @brief Encode after complete validation; output remains unchanged on refusal.
    /// @param self Borrowed complete typed value.
    /// @param out Caller-owned destination.
    /// @return Encoded length or invalid/size error.
    /// @details Validation and capacity checks precede writes; refusal leaves output unchanged.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    /// @brief Write every already validated declared field in canonical order.
    /// @param self Borrowed validated record.
    /// @param out Complete preallocated wire buffer.
    /// @param at Internal write cursor.
    /// @pre Validation and extent checks succeeded.
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.x.to_le_bytes());
        put(out, at, &self.y.to_le_bytes());
        put(out, at, &self.z.to_le_bytes());
    }
    /// @brief Decode all declared fields with their original nested bounds.
    /// @param bytes Borrowed complete input; retained values own their data.
    /// @param at Internal cursor; callers discard it after any refusal.
    /// @return Owned complete record or the original invalid/size error.
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.x = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.y = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.z = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Geometry_msgsMsgPoint {
    /// @brief Allocate one exact validated canonical output; never native serialization.
    /// @param self Borrowed complete typed value.
    /// @return Owned exact wire bytes or original validation error.
    /// @details Allocation failure remains a language runtime failure; no native serialization or authority is inferred.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete original canonical body.
    /// @param bytes Borrowed complete wire body within the declared maximum.
    /// @return Owned full typed record or invalid/size error.
    /// @details Truncation and trailing bytes are refused; returned strings and sequences do not borrow input memory.
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 24 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 24 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// @brief Complete bounded value for ROS2 geometry_msgs/msg/Quaternion.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Geometry_msgsMsgQuaternion {
    /// @brief Declared x; canonical bounds are part of CODEC_IDENTITY.
    pub x: f64,
    /// @brief Declared y; canonical bounds are part of CODEC_IDENTITY.
    pub y: f64,
    /// @brief Declared z; canonical bounds are part of CODEC_IDENTITY.
    pub z: f64,
    /// @brief Declared w; canonical bounds are part of CODEC_IDENTITY.
    pub w: f64,
}
impl Default for Ros2Geometry_msgsMsgQuaternion {
    /// @brief Preserve the declared canonical field defaults.
    /// @return Owned default record; no I/O or native authority is created.
    fn default() -> Self {
        Self {
            x: f64::from_bits(0x0000000000000000),
            y: f64::from_bits(0x0000000000000000),
            z: f64::from_bits(0x0000000000000000),
            w: f64::from_bits(0x3ff0000000000000),
        }
    }
}
impl Ros2Geometry_msgsMsgQuaternion {
    /// @brief Declared canonical byte-size bound; grants no storage or native authority.
    pub const MAX_WIRE_BYTES: usize = 32;
    /// @brief Declared canonical byte-size bound; grants no storage or native authority.
    pub const CARTESIAN_WIRE_BYTES: u64 = 32;
    /// @brief Declared canonical byte-size bound; grants no storage or native authority.
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Immutable canonical identity for field order, declared defaults and bounds.
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672";
    /// @brief Validate all fields and measure only their initialized canonical prefix.
    /// @param self Borrowed complete typed value.
    /// @return Exact byte count or the original invalid/size error.
    /// @details Every active sequence, UTF-8 string and finite-value constraint is checked.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if !self.x.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.y.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.z.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.w.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if n > 32 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// @brief Encode after complete validation; output remains unchanged on refusal.
    /// @param self Borrowed complete typed value.
    /// @param out Caller-owned destination.
    /// @return Encoded length or invalid/size error.
    /// @details Validation and capacity checks precede writes; refusal leaves output unchanged.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    /// @brief Write every already validated declared field in canonical order.
    /// @param self Borrowed validated record.
    /// @param out Complete preallocated wire buffer.
    /// @param at Internal write cursor.
    /// @pre Validation and extent checks succeeded.
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.x.to_le_bytes());
        put(out, at, &self.y.to_le_bytes());
        put(out, at, &self.z.to_le_bytes());
        put(out, at, &self.w.to_le_bytes());
    }
    /// @brief Decode all declared fields with their original nested bounds.
    /// @param bytes Borrowed complete input; retained values own their data.
    /// @param at Internal cursor; callers discard it after any refusal.
    /// @return Owned complete record or the original invalid/size error.
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.x = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.y = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.z = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.w = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Geometry_msgsMsgQuaternion {
    /// @brief Allocate one exact validated canonical output; never native serialization.
    /// @param self Borrowed complete typed value.
    /// @return Owned exact wire bytes or original validation error.
    /// @details Allocation failure remains a language runtime failure; no native serialization or authority is inferred.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete original canonical body.
    /// @param bytes Borrowed complete wire body within the declared maximum.
    /// @return Owned full typed record or invalid/size error.
    /// @details Truncation and trailing bytes are refused; returned strings and sequences do not borrow input memory.
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 32 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 32 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// @brief Complete bounded value for ROS2 geometry_msgs/msg/Pose.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Geometry_msgsMsgPose {
    /// @brief Declared position; canonical bounds are part of CODEC_IDENTITY.
    pub position: Ros2Geometry_msgsMsgPoint,
    /// @brief Declared orientation; canonical bounds are part of CODEC_IDENTITY.
    pub orientation: Ros2Geometry_msgsMsgQuaternion,
}
impl Default for Ros2Geometry_msgsMsgPose {
    /// @brief Preserve the declared canonical field defaults.
    /// @return Owned default record; no I/O or native authority is created.
    fn default() -> Self {
        Self {
            position: Default::default(),
            orientation: Default::default(),
        }
    }
}
impl Ros2Geometry_msgsMsgPose {
    /// @brief Declared canonical byte-size bound; grants no storage or native authority.
    pub const MAX_WIRE_BYTES: usize = 56;
    /// @brief Declared canonical byte-size bound; grants no storage or native authority.
    pub const CARTESIAN_WIRE_BYTES: u64 = 56;
    /// @brief Declared canonical byte-size bound; grants no storage or native authority.
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Immutable canonical identity for field order, declared defaults and bounds.
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777";
    /// @brief Validate all fields and measure only their initialized canonical prefix.
    /// @param self Borrowed complete typed value.
    /// @return Exact byte count or the original invalid/size error.
    /// @details Every active sequence, UTF-8 string and finite-value constraint is checked.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.position.wire_size()?)?;
        n = add_size(n, self.orientation.wire_size()?)?;
        if n > 56 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// @brief Encode after complete validation; output remains unchanged on refusal.
    /// @param self Borrowed complete typed value.
    /// @param out Caller-owned destination.
    /// @return Encoded length or invalid/size error.
    /// @details Validation and capacity checks precede writes; refusal leaves output unchanged.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    /// @brief Write every already validated declared field in canonical order.
    /// @param self Borrowed validated record.
    /// @param out Complete preallocated wire buffer.
    /// @param at Internal write cursor.
    /// @pre Validation and extent checks succeeded.
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.position.write_fields(out, at);
        self.orientation.write_fields(out, at);
    }
    /// @brief Decode all declared fields with their original nested bounds.
    /// @param bytes Borrowed complete input; retained values own their data.
    /// @param at Internal cursor; callers discard it after any refusal.
    /// @return Owned complete record or the original invalid/size error.
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Geometry_msgsMsgPoint::read_fields(bytes, at)?;
        value.position = decoded;
        let decoded = Ros2Geometry_msgsMsgQuaternion::read_fields(bytes, at)?;
        value.orientation = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Geometry_msgsMsgPose {
    /// @brief Allocate one exact validated canonical output; never native serialization.
    /// @param self Borrowed complete typed value.
    /// @return Owned exact wire bytes or original validation error.
    /// @details Allocation failure remains a language runtime failure; no native serialization or authority is inferred.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete original canonical body.
    /// @param bytes Borrowed complete wire body within the declared maximum.
    /// @return Owned full typed record or invalid/size error.
    /// @details Truncation and trailing bytes are refused; returned strings and sequences do not borrow input memory.
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 56 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 56 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// @brief Complete bounded value for ROS2 geometry_msgs/msg/PoseWithCovariance.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Geometry_msgsMsgPoseWithCovariance {
    /// @brief Declared pose; canonical bounds are part of CODEC_IDENTITY.
    pub pose: Ros2Geometry_msgsMsgPose,
    /// @brief Declared covariance; canonical bounds are part of CODEC_IDENTITY.
    pub covariance: [f64; 36],
}
impl Default for Ros2Geometry_msgsMsgPoseWithCovariance {
    /// @brief Preserve the declared canonical field defaults.
    /// @return Owned default record; no I/O or native authority is created.
    fn default() -> Self {
        Self {
            pose: Default::default(),
            covariance: core::array::from_fn(|_| Default::default()),
        }
    }
}
impl Ros2Geometry_msgsMsgPoseWithCovariance {
    /// @brief Declared canonical byte-size bound; grants no storage or native authority.
    pub const MAX_WIRE_BYTES: usize = 344;
    /// @brief Declared canonical byte-size bound; grants no storage or native authority.
    pub const CARTESIAN_WIRE_BYTES: u64 = 344;
    /// @brief Declared canonical byte-size bound; grants no storage or native authority.
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Immutable canonical identity for field order, declared defaults and bounds.
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_8eb3e25c45769eb29691011c05315ed50f2b97eff488f9e8ee2dc70bddab4dc2";
    /// @brief Validate all fields and measure only their initialized canonical prefix.
    /// @param self Borrowed complete typed value.
    /// @return Exact byte count or the original invalid/size error.
    /// @details Every active sequence, UTF-8 string and finite-value constraint is checked.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.pose.wire_size()?)?;
        for element in &self.covariance {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if n > 344 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// @brief Encode after complete validation; output remains unchanged on refusal.
    /// @param self Borrowed complete typed value.
    /// @param out Caller-owned destination.
    /// @return Encoded length or invalid/size error.
    /// @details Validation and capacity checks precede writes; refusal leaves output unchanged.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    /// @brief Write every already validated declared field in canonical order.
    /// @param self Borrowed validated record.
    /// @param out Complete preallocated wire buffer.
    /// @param at Internal write cursor.
    /// @pre Validation and extent checks succeeded.
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.pose.write_fields(out, at);
        for element in &self.covariance {
            put(out, at, &element.to_le_bytes());
        }
    }
    /// @brief Decode all declared fields with their original nested bounds.
    /// @param bytes Borrowed complete input; retained values own their data.
    /// @param at Internal cursor; callers discard it after any refusal.
    /// @return Owned complete record or the original invalid/size error.
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Geometry_msgsMsgPose::read_fields(bytes, at)?;
        value.pose = decoded;
        {
            let count = 36usize;
            if count > 36 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.covariance[i] = decoded;
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Geometry_msgsMsgPoseWithCovariance {
    /// @brief Allocate one exact validated canonical output; never native serialization.
    /// @param self Borrowed complete typed value.
    /// @return Owned exact wire bytes or original validation error.
    /// @details Allocation failure remains a language runtime failure; no native serialization or authority is inferred.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete original canonical body.
    /// @param bytes Borrowed complete wire body within the declared maximum.
    /// @return Owned full typed record or invalid/size error.
    /// @details Truncation and trailing bytes are refused; returned strings and sequences do not borrow input memory.
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 344 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 344 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// @brief Complete bounded value for ROS2 geometry_msgs/msg/PoseWithCovarianceStamped.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Geometry_msgsMsgPoseWithCovarianceStamped {
    /// @brief Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros2Std_msgsMsgHeader,
    /// @brief Declared pose; canonical bounds are part of CODEC_IDENTITY.
    pub pose: Ros2Geometry_msgsMsgPoseWithCovariance,
}
impl Default for Ros2Geometry_msgsMsgPoseWithCovarianceStamped {
    /// @brief Preserve the declared canonical field defaults.
    /// @return Owned default record; no I/O or native authority is created.
    fn default() -> Self {
        Self {
            header: Default::default(),
            pose: Default::default(),
        }
    }
}
impl Ros2Geometry_msgsMsgPoseWithCovarianceStamped {
    /// @brief Declared canonical byte-size bound; grants no storage or native authority.
    pub const MAX_WIRE_BYTES: usize = 420;
    /// @brief Declared canonical byte-size bound; grants no storage or native authority.
    pub const CARTESIAN_WIRE_BYTES: u64 = 420;
    /// @brief Declared canonical byte-size bound; grants no storage or native authority.
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Immutable canonical identity for field order, declared defaults and bounds.
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_ea380172cde0ee5fef319aff50d92a80c314510e3d12efec45e9ae1f74974af3";
    /// @brief Validate all fields and measure only their initialized canonical prefix.
    /// @param self Borrowed complete typed value.
    /// @return Exact byte count or the original invalid/size error.
    /// @details Every active sequence, UTF-8 string and finite-value constraint is checked.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        n = add_size(n, self.pose.wire_size()?)?;
        if n > 420 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// @brief Encode after complete validation; output remains unchanged on refusal.
    /// @param self Borrowed complete typed value.
    /// @param out Caller-owned destination.
    /// @return Encoded length or invalid/size error.
    /// @details Validation and capacity checks precede writes; refusal leaves output unchanged.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    /// @brief Write every already validated declared field in canonical order.
    /// @param self Borrowed validated record.
    /// @param out Complete preallocated wire buffer.
    /// @param at Internal write cursor.
    /// @pre Validation and extent checks succeeded.
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.header.write_fields(out, at);
        self.pose.write_fields(out, at);
    }
    /// @brief Decode all declared fields with their original nested bounds.
    /// @param bytes Borrowed complete input; retained values own their data.
    /// @param at Internal cursor; callers discard it after any refusal.
    /// @return Owned complete record or the original invalid/size error.
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Std_msgsMsgHeader::read_fields(bytes, at)?;
        value.header = decoded;
        let decoded = Ros2Geometry_msgsMsgPoseWithCovariance::read_fields(bytes, at)?;
        value.pose = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Geometry_msgsMsgPoseWithCovarianceStamped {
    /// @brief Allocate one exact validated canonical output; never native serialization.
    /// @param self Borrowed complete typed value.
    /// @return Owned exact wire bytes or original validation error.
    /// @details Allocation failure remains a language runtime failure; no native serialization or authority is inferred.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete original canonical body.
    /// @param bytes Borrowed complete wire body within the declared maximum.
    /// @return Owned full typed record or invalid/size error.
    /// @details Truncation and trailing bytes are refused; returned strings and sequences do not borrow input memory.
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 420 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 356 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// @brief Complete bounded value for ROS2 isaac_ros_apriltag_interfaces/msg/AprilTagDetection.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection {
    /// @brief Declared family; canonical bounds are part of CODEC_IDENTITY.
    pub family: String,
    /// @brief Declared id; canonical bounds are part of CODEC_IDENTITY.
    pub id: i32,
    /// @brief Declared center; canonical bounds are part of CODEC_IDENTITY.
    pub center: Ros2Geometry_msgsMsgPoint,
    /// @brief Declared corners; canonical bounds are part of CODEC_IDENTITY.
    pub corners: [Ros2Geometry_msgsMsgPoint; 4],
    /// @brief Declared pose; canonical bounds are part of CODEC_IDENTITY.
    pub pose: Ros2Geometry_msgsMsgPoseWithCovarianceStamped,
}
impl Default for Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection {
    /// @brief Preserve the declared canonical field defaults.
    /// @return Owned default record; no I/O or native authority is created.
    fn default() -> Self {
        Self {
            family: Default::default(),
            id: Default::default(),
            center: Default::default(),
            corners: core::array::from_fn(|_| Default::default()),
            pose: Default::default(),
        }
    }
}
impl Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection {
    /// @brief Declared canonical byte-size bound; grants no storage or native authority.
    pub const MAX_WIRE_BYTES: usize = 612;
    /// @brief Declared canonical byte-size bound; grants no storage or native authority.
    pub const CARTESIAN_WIRE_BYTES: u64 = 612;
    /// @brief Declared canonical byte-size bound; grants no storage or native authority.
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Immutable canonical identity for field order, declared defaults and bounds.
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_5d840f0d9239a948ce5d17bbee6e248db8151ff31070667e506e9c1647ac6fe7";
    /// @brief Validate all fields and measure only their initialized canonical prefix.
    /// @param self Borrowed complete typed value.
    /// @return Exact byte count or the original invalid/size error.
    /// @details Every active sequence, UTF-8 string and finite-value constraint is checked.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.family.len() > 64 || self.family.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.family.len())?;
        n = add_size(n, 4)?;
        n = add_size(n, self.center.wire_size()?)?;
        for element in &self.corners {
            n = add_size(n, element.wire_size()?)?;
        }
        n = add_size(n, self.pose.wire_size()?)?;
        if n > 612 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// @brief Encode after complete validation; output remains unchanged on refusal.
    /// @param self Borrowed complete typed value.
    /// @param out Caller-owned destination.
    /// @return Encoded length or invalid/size error.
    /// @details Validation and capacity checks precede writes; refusal leaves output unchanged.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    /// @brief Write every already validated declared field in canonical order.
    /// @param self Borrowed validated record.
    /// @param out Complete preallocated wire buffer.
    /// @param at Internal write cursor.
    /// @pre Validation and extent checks succeeded.
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.family.len() as u32).to_le_bytes());
        put(out, at, self.family.as_bytes());
        put(out, at, &self.id.to_le_bytes());
        self.center.write_fields(out, at);
        for element in &self.corners {
            element.write_fields(out, at);
        }
        self.pose.write_fields(out, at);
    }
    /// @brief Decode all declared fields with their original nested bounds.
    /// @param bytes Borrowed complete input; retained values own their data.
    /// @param at Internal cursor; callers discard it after any refusal.
    /// @return Owned complete record or the original invalid/size error.
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let size = read_count(bytes, at)?;
        if size > 64 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.family = decoded;
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.id = decoded;
        let decoded = Ros2Geometry_msgsMsgPoint::read_fields(bytes, at)?;
        value.center = decoded;
        {
            let count = 4usize;
            if count > 4 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded = Ros2Geometry_msgsMsgPoint::read_fields(bytes, at)?;
                value.corners[i] = decoded;
            }
        }
        let decoded = Ros2Geometry_msgsMsgPoseWithCovarianceStamped::read_fields(bytes, at)?;
        value.pose = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection {
    /// @brief Allocate one exact validated canonical output; never native serialization.
    /// @param self Borrowed complete typed value.
    /// @return Owned exact wire bytes or original validation error.
    /// @details Allocation failure remains a language runtime failure; no native serialization or authority is inferred.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete original canonical body.
    /// @param bytes Borrowed complete wire body within the declared maximum.
    /// @return Owned full typed record or invalid/size error.
    /// @details Truncation and trailing bytes are refused; returned strings and sequences do not borrow input memory.
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 612 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 484 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// @brief Complete bounded value for ROS2 isaac_ros_apriltag_interfaces/msg/AprilTagDetectionArray.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray {
    /// @brief Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros2Std_msgsMsgHeader,
    /// @brief Declared detections; canonical bounds are part of CODEC_IDENTITY.
    pub detections: Vec<Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection>,
}
impl Default for Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray {
    /// @brief Preserve the declared canonical field defaults.
    /// @return Owned default record; no I/O or native authority is created.
    fn default() -> Self {
        Self {
            header: Default::default(),
            detections: Default::default(),
        }
    }
}
impl Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray {
    /// @brief Declared canonical byte-size bound; grants no storage or native authority.
    pub const MAX_WIRE_BYTES: usize = 9872;
    /// @brief Declared canonical byte-size bound; grants no storage or native authority.
    pub const CARTESIAN_WIRE_BYTES: u64 = 9872;
    /// @brief Declared canonical byte-size bound; grants no storage or native authority.
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Immutable canonical identity for field order, declared defaults and bounds.
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_60359e405aedd2a627e60bc35e849989fe5ed1d426afb2a884036aef93bfe0a5";
    /// @brief Validate all fields and measure only their initialized canonical prefix.
    /// @param self Borrowed complete typed value.
    /// @return Exact byte count or the original invalid/size error.
    /// @details Every active sequence, UTF-8 string and finite-value constraint is checked.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        if self.detections.len() > 16 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.detections {
            n = add_size(n, element.wire_size()?)?;
        }
        if n > 9872 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// @brief Encode after complete validation; output remains unchanged on refusal.
    /// @param self Borrowed complete typed value.
    /// @param out Caller-owned destination.
    /// @return Encoded length or invalid/size error.
    /// @details Validation and capacity checks precede writes; refusal leaves output unchanged.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    /// @brief Write every already validated declared field in canonical order.
    /// @param self Borrowed validated record.
    /// @param out Complete preallocated wire buffer.
    /// @param at Internal write cursor.
    /// @pre Validation and extent checks succeeded.
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.header.write_fields(out, at);
        put(out, at, &(self.detections.len() as u32).to_le_bytes());
        for element in &self.detections {
            element.write_fields(out, at);
        }
    }
    /// @brief Decode all declared fields with their original nested bounds.
    /// @param bytes Borrowed complete input; retained values own their data.
    /// @param at Internal cursor; callers discard it after any refusal.
    /// @return Owned complete record or the original invalid/size error.
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Std_msgsMsgHeader::read_fields(bytes, at)?;
        value.header = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 16 {
                return Err(invalid());
            }
            value.detections = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection::read_fields(bytes, at)?;
                value.detections.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray {
    /// @brief Allocate one exact validated canonical output; never native serialization.
    /// @param self Borrowed complete typed value.
    /// @return Owned exact wire bytes or original validation error.
    /// @details Allocation failure remains a language runtime failure; no native serialization or authority is inferred.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete original canonical body.
    /// @param bytes Borrowed complete wire body within the declared maximum.
    /// @return Owned full typed record or invalid/size error.
    /// @details Truncation and trailing bytes are refused; returned strings and sequences do not borrow input memory.
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 9872 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 16 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
