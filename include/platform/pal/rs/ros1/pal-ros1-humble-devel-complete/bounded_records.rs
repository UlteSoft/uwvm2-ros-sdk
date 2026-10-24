//! @file bounded_records.rs
//! @brief Provide the complete pal ros1_humble_devel canonical value surface.
//! @details The original 275 record catalog retains field order, constants, defaults and quotas.
//! Borrowed values and buffers must remain stable while a conversion is in progress.
//! Malformed, truncated and trailing wire values are refused through the shared wire error contract.
//! No declaration grants a capability or establishes a native ROS registry identity.
//! Original declarations and units are retained in share/platform/pal/catalogs.
//! Generated bounded-v2 canonical values; no I/O, threads, clocks or authority.
//! Enable the existing SDK alloc feature. Containers/UTF-8 are validated before
//! output allocation; decoder lengths are checked before bounded allocations.
//! Empty interface components are zero-sized semantic values, not native byte copies.
extern crate alloc;
use alloc::{string::String, vec::Vec};
use roswasm::typed::Canonical;
use roswasm::{codes, Error};
fn invalid() -> Error {
    Error::new(codes::INVALID)
}
fn add_size(n: usize, m: usize) -> Result<usize, Error> {
    n.checked_add(m)
        .filter(|v| *v <= 32768)
        .ok_or(Error::new(codes::TOO_LARGE))
}
fn take<'a>(bytes: &'a [u8], at: &mut usize, n: usize) -> Result<&'a [u8], Error> {
    if *at > bytes.len() || n > bytes.len() - *at {
        return Err(invalid());
    }
    let start = *at;
    *at += n;
    Ok(&bytes[start..*at])
}
fn read_count(bytes: &[u8], at: &mut usize) -> Result<usize, Error> {
    Ok(u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?) as usize)
}
fn put(out: &mut [u8], at: &mut usize, bytes: &[u8]) {
    out[*at..*at + bytes.len()].copy_from_slice(bytes);
    *at += bytes.len();
}
/// Complete bounded value for ROS1 geometry_msgs/Vector3.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Geometry_msgsVector3 {
    /// Declared x; canonical bounds are part of CODEC_IDENTITY.
    pub x: f64,
    /// Declared y; canonical bounds are part of CODEC_IDENTITY.
    pub y: f64,
    /// Declared z; canonical bounds are part of CODEC_IDENTITY.
    pub z: f64,
}
impl Default for Ros1Geometry_msgsVector3 {
    fn default() -> Self {
        Self {
            x: Default::default(),
            y: Default::default(),
            z: Default::default(),
        }
    }
}
impl Ros1Geometry_msgsVector3 {
    pub const MAX_WIRE_BYTES: usize = 24;
    pub const CARTESIAN_WIRE_BYTES: u64 = 24;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_e90efcf4803d82763e0b83f8ef5502b5d042158873fcc91be32543d25d7632bc";
    /// Validate all fields and measure only their initialized canonical prefix.
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
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.x.to_le_bytes());
        put(out, at, &self.y.to_le_bytes());
        put(out, at, &self.z.to_le_bytes());
    }
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
impl Canonical for Ros1Geometry_msgsVector3 {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
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
/// Complete bounded value for ROS1 geometry_msgs/Accel.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Geometry_msgsAccel {
    /// Declared linear; canonical bounds are part of CODEC_IDENTITY.
    pub linear: Ros1Geometry_msgsVector3,
    /// Declared angular; canonical bounds are part of CODEC_IDENTITY.
    pub angular: Ros1Geometry_msgsVector3,
}
impl Default for Ros1Geometry_msgsAccel {
    fn default() -> Self {
        Self {
            linear: Default::default(),
            angular: Default::default(),
        }
    }
}
impl Ros1Geometry_msgsAccel {
    pub const MAX_WIRE_BYTES: usize = 48;
    pub const CARTESIAN_WIRE_BYTES: u64 = 48;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_3345762fc354a5698d41098276702c7d3cee87fe9a531b0229111b9b3bf700ed";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.linear.wire_size()?)?;
        n = add_size(n, self.angular.wire_size()?)?;
        if n > 48 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.linear.write_fields(out, at);
        self.angular.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Geometry_msgsVector3::read_fields(bytes, at)?;
        value.linear = decoded;
        let decoded = Ros1Geometry_msgsVector3::read_fields(bytes, at)?;
        value.angular = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Geometry_msgsAccel {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 48 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 48 {
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
/// Complete bounded value for ROS1 geometry_msgs/Point.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Geometry_msgsPoint {
    /// Declared x; canonical bounds are part of CODEC_IDENTITY.
    pub x: f64,
    /// Declared y; canonical bounds are part of CODEC_IDENTITY.
    pub y: f64,
    /// Declared z; canonical bounds are part of CODEC_IDENTITY.
    pub z: f64,
}
impl Default for Ros1Geometry_msgsPoint {
    fn default() -> Self {
        Self {
            x: Default::default(),
            y: Default::default(),
            z: Default::default(),
        }
    }
}
impl Ros1Geometry_msgsPoint {
    pub const MAX_WIRE_BYTES: usize = 24;
    pub const CARTESIAN_WIRE_BYTES: u64 = 24;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b";
    /// Validate all fields and measure only their initialized canonical prefix.
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
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.x.to_le_bytes());
        put(out, at, &self.y.to_le_bytes());
        put(out, at, &self.z.to_le_bytes());
    }
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
impl Canonical for Ros1Geometry_msgsPoint {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
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
/// Complete bounded value for ROS1 geometry_msgs/Point32.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Geometry_msgsPoint32 {
    /// Declared x; canonical bounds are part of CODEC_IDENTITY.
    pub x: f32,
    /// Declared y; canonical bounds are part of CODEC_IDENTITY.
    pub y: f32,
    /// Declared z; canonical bounds are part of CODEC_IDENTITY.
    pub z: f32,
}
impl Default for Ros1Geometry_msgsPoint32 {
    fn default() -> Self {
        Self {
            x: Default::default(),
            y: Default::default(),
            z: Default::default(),
        }
    }
}
impl Ros1Geometry_msgsPoint32 {
    pub const MAX_WIRE_BYTES: usize = 12;
    pub const CARTESIAN_WIRE_BYTES: u64 = 12;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_ac11d311f1db295f3e53b300246dbb111148097fe50787e812cd1bf627ecc59d";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if !self.x.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.y.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.z.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if n > 12 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.x.to_le_bytes());
        put(out, at, &self.y.to_le_bytes());
        put(out, at, &self.z.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.x = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.y = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.z = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Geometry_msgsPoint32 {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 12 {
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
/// Complete bounded value for ROS1 time.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Time {
    /// Declared sec; canonical bounds are part of CODEC_IDENTITY.
    pub sec: u32,
    /// Declared nsec; canonical bounds are part of CODEC_IDENTITY.
    pub nsec: u32,
}
impl Default for Ros1Time {
    fn default() -> Self {
        Self {
            sec: Default::default(),
            nsec: Default::default(),
        }
    }
}
impl Ros1Time {
    pub const MAX_WIRE_BYTES: usize = 8;
    pub const CARTESIAN_WIRE_BYTES: u64 = 8;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 4)?;
        n = add_size(n, 4)?;
        if self.nsec >= 1000000000 {
            return Err(invalid());
        }
        if n > 8 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.sec.to_le_bytes());
        put(out, at, &self.nsec.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.sec = decoded;
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.nsec = decoded;
        if value.nsec >= 1000000000 {
            return Err(invalid());
        }
        Ok(value)
    }
}
impl Canonical for Ros1Time {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
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
/// Complete bounded value for ROS1 std_msgs/Header.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Std_msgsHeader {
    /// Declared seq; canonical bounds are part of CODEC_IDENTITY.
    pub seq: u32,
    /// Declared stamp; canonical bounds are part of CODEC_IDENTITY.
    pub stamp: Ros1Time,
    /// Declared frame_id; canonical bounds are part of CODEC_IDENTITY.
    pub frame_id: String,
}
impl Default for Ros1Std_msgsHeader {
    fn default() -> Self {
        Self {
            seq: Default::default(),
            stamp: Default::default(),
            frame_id: Default::default(),
        }
    }
}
impl Ros1Std_msgsHeader {
    pub const MAX_WIRE_BYTES: usize = 144;
    pub const CARTESIAN_WIRE_BYTES: u64 = 144;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 4)?;
        n = add_size(n, self.stamp.wire_size()?)?;
        if self.frame_id.len() > 128 || self.frame_id.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.frame_id.len())?;
        if n > 144 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.seq.to_le_bytes());
        self.stamp.write_fields(out, at);
        put(out, at, &(self.frame_id.len() as u32).to_le_bytes());
        put(out, at, self.frame_id.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.seq = decoded;
        let decoded = Ros1Time::read_fields(bytes, at)?;
        value.stamp = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
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
impl Canonical for Ros1Std_msgsHeader {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 144 {
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
/// Complete bounded value for ROS1 geometry_msgs/PointStamped.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Geometry_msgsPointStamped {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros1Std_msgsHeader,
    /// Declared point; canonical bounds are part of CODEC_IDENTITY.
    pub point: Ros1Geometry_msgsPoint,
}
impl Default for Ros1Geometry_msgsPointStamped {
    fn default() -> Self {
        Self {
            header: Default::default(),
            point: Default::default(),
        }
    }
}
impl Ros1Geometry_msgsPointStamped {
    pub const MAX_WIRE_BYTES: usize = 168;
    pub const CARTESIAN_WIRE_BYTES: u64 = 168;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_4292765fd525ff25fcdf66cba24b1680e01d7a3f036f66a1d5bc21f5db935e90";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        n = add_size(n, self.point.wire_size()?)?;
        if n > 168 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.header.write_fields(out, at);
        self.point.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Std_msgsHeader::read_fields(bytes, at)?;
        value.header = decoded;
        let decoded = Ros1Geometry_msgsPoint::read_fields(bytes, at)?;
        value.point = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Geometry_msgsPointStamped {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 168 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 40 {
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
/// Complete bounded value for ROS1 geometry_msgs/Quaternion.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Geometry_msgsQuaternion {
    /// Declared x; canonical bounds are part of CODEC_IDENTITY.
    pub x: f64,
    /// Declared y; canonical bounds are part of CODEC_IDENTITY.
    pub y: f64,
    /// Declared z; canonical bounds are part of CODEC_IDENTITY.
    pub z: f64,
    /// Declared w; canonical bounds are part of CODEC_IDENTITY.
    pub w: f64,
}
impl Default for Ros1Geometry_msgsQuaternion {
    fn default() -> Self {
        Self {
            x: Default::default(),
            y: Default::default(),
            z: Default::default(),
            w: Default::default(),
        }
    }
}
impl Ros1Geometry_msgsQuaternion {
    pub const MAX_WIRE_BYTES: usize = 32;
    pub const CARTESIAN_WIRE_BYTES: u64 = 32;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934";
    /// Validate all fields and measure only their initialized canonical prefix.
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
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.x.to_le_bytes());
        put(out, at, &self.y.to_le_bytes());
        put(out, at, &self.z.to_le_bytes());
        put(out, at, &self.w.to_le_bytes());
    }
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
impl Canonical for Ros1Geometry_msgsQuaternion {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
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
/// Complete bounded value for ROS1 geometry_msgs/Pose.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Geometry_msgsPose {
    /// Declared position; canonical bounds are part of CODEC_IDENTITY.
    pub position: Ros1Geometry_msgsPoint,
    /// Declared orientation; canonical bounds are part of CODEC_IDENTITY.
    pub orientation: Ros1Geometry_msgsQuaternion,
}
impl Default for Ros1Geometry_msgsPose {
    fn default() -> Self {
        Self {
            position: Default::default(),
            orientation: Default::default(),
        }
    }
}
impl Ros1Geometry_msgsPose {
    pub const MAX_WIRE_BYTES: usize = 56;
    pub const CARTESIAN_WIRE_BYTES: u64 = 56;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.position.wire_size()?)?;
        n = add_size(n, self.orientation.wire_size()?)?;
        if n > 56 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.position.write_fields(out, at);
        self.orientation.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Geometry_msgsPoint::read_fields(bytes, at)?;
        value.position = decoded;
        let decoded = Ros1Geometry_msgsQuaternion::read_fields(bytes, at)?;
        value.orientation = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Geometry_msgsPose {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
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
/// Complete bounded value for ROS1 geometry_msgs/Pose2D.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Geometry_msgsPose2D {
    /// Declared x; canonical bounds are part of CODEC_IDENTITY.
    pub x: f64,
    /// Declared y; canonical bounds are part of CODEC_IDENTITY.
    pub y: f64,
    /// Declared theta; canonical bounds are part of CODEC_IDENTITY.
    pub theta: f64,
}
impl Default for Ros1Geometry_msgsPose2D {
    fn default() -> Self {
        Self {
            x: Default::default(),
            y: Default::default(),
            theta: Default::default(),
        }
    }
}
impl Ros1Geometry_msgsPose2D {
    pub const MAX_WIRE_BYTES: usize = 24;
    pub const CARTESIAN_WIRE_BYTES: u64 = 24;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_272e907f7422675f272752642d2421c870d46b48b101f1fc6dec5e9ea70b8b0f";
    /// Validate all fields and measure only their initialized canonical prefix.
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
        if !self.theta.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if n > 24 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.x.to_le_bytes());
        put(out, at, &self.y.to_le_bytes());
        put(out, at, &self.theta.to_le_bytes());
    }
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
        value.theta = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Geometry_msgsPose2D {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
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
/// Complete bounded value for ROS1 geometry_msgs/PoseArray.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Geometry_msgsPoseArray {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros1Std_msgsHeader,
    /// Declared poses; canonical bounds are part of CODEC_IDENTITY.
    pub poses: Vec<Ros1Geometry_msgsPose>,
}
impl Default for Ros1Geometry_msgsPoseArray {
    fn default() -> Self {
        Self {
            header: Default::default(),
            poses: Default::default(),
        }
    }
}
impl Ros1Geometry_msgsPoseArray {
    pub const MAX_WIRE_BYTES: usize = 372;
    pub const CARTESIAN_WIRE_BYTES: u64 = 372;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_cc369b2d02464c719f6c9c6eb8f4e328e7623ddd455372cea2085f44bb782900";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        if self.poses.len() > 4 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.poses {
            n = add_size(n, element.wire_size()?)?;
        }
        if n > 372 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.header.write_fields(out, at);
        put(out, at, &(self.poses.len() as u32).to_le_bytes());
        for element in &self.poses {
            element.write_fields(out, at);
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Std_msgsHeader::read_fields(bytes, at)?;
        value.header = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 4 {
                return Err(invalid());
            }
            value.poses = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros1Geometry_msgsPose::read_fields(bytes, at)?;
                value.poses.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros1Geometry_msgsPoseArray {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 372 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 20 {
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
/// Complete bounded value for ROS1 geometry_msgs/PoseStamped.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Geometry_msgsPoseStamped {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros1Std_msgsHeader,
    /// Declared pose; canonical bounds are part of CODEC_IDENTITY.
    pub pose: Ros1Geometry_msgsPose,
}
impl Default for Ros1Geometry_msgsPoseStamped {
    fn default() -> Self {
        Self {
            header: Default::default(),
            pose: Default::default(),
        }
    }
}
impl Ros1Geometry_msgsPoseStamped {
    pub const MAX_WIRE_BYTES: usize = 200;
    pub const CARTESIAN_WIRE_BYTES: u64 = 200;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_bb59c4e82f561266c0f10500bfbbd1a809e9c1122ecbf559a812326af3eb2e95";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        n = add_size(n, self.pose.wire_size()?)?;
        if n > 200 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.header.write_fields(out, at);
        self.pose.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Std_msgsHeader::read_fields(bytes, at)?;
        value.header = decoded;
        let decoded = Ros1Geometry_msgsPose::read_fields(bytes, at)?;
        value.pose = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Geometry_msgsPoseStamped {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 200 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 72 {
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
/// Complete bounded value for ROS1 geometry_msgs/PoseWithCovariance.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Geometry_msgsPoseWithCovariance {
    /// Declared pose; canonical bounds are part of CODEC_IDENTITY.
    pub pose: Ros1Geometry_msgsPose,
    /// Declared covariance; canonical bounds are part of CODEC_IDENTITY.
    pub covariance: [f64; 36],
}
impl Default for Ros1Geometry_msgsPoseWithCovariance {
    fn default() -> Self {
        Self {
            pose: Default::default(),
            covariance: core::array::from_fn(|_| Default::default()),
        }
    }
}
impl Ros1Geometry_msgsPoseWithCovariance {
    pub const MAX_WIRE_BYTES: usize = 344;
    pub const CARTESIAN_WIRE_BYTES: u64 = 344;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_17b25963aafb3adfd0432febe040c9b38a531a7a667949b89e0f3937585ef8cf";
    /// Validate all fields and measure only their initialized canonical prefix.
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
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.pose.write_fields(out, at);
        for element in &self.covariance {
            put(out, at, &element.to_le_bytes());
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Geometry_msgsPose::read_fields(bytes, at)?;
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
impl Canonical for Ros1Geometry_msgsPoseWithCovariance {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
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
/// Complete bounded value for ROS1 geometry_msgs/PoseWithCovarianceStamped.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Geometry_msgsPoseWithCovarianceStamped {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros1Std_msgsHeader,
    /// Declared pose; canonical bounds are part of CODEC_IDENTITY.
    pub pose: Ros1Geometry_msgsPoseWithCovariance,
}
impl Default for Ros1Geometry_msgsPoseWithCovarianceStamped {
    fn default() -> Self {
        Self {
            header: Default::default(),
            pose: Default::default(),
        }
    }
}
impl Ros1Geometry_msgsPoseWithCovarianceStamped {
    pub const MAX_WIRE_BYTES: usize = 488;
    pub const CARTESIAN_WIRE_BYTES: u64 = 488;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_6708292fe381a7f14aaf84f47a969f55af7446087bfcb309d3b86ab95f34a2d9";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        n = add_size(n, self.pose.wire_size()?)?;
        if n > 488 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.header.write_fields(out, at);
        self.pose.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Std_msgsHeader::read_fields(bytes, at)?;
        value.header = decoded;
        let decoded = Ros1Geometry_msgsPoseWithCovariance::read_fields(bytes, at)?;
        value.pose = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Geometry_msgsPoseWithCovarianceStamped {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 488 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 360 {
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
/// Complete bounded value for ROS1 geometry_msgs/Transform.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Geometry_msgsTransform {
    /// Declared translation; canonical bounds are part of CODEC_IDENTITY.
    pub translation: Ros1Geometry_msgsVector3,
    /// Declared rotation; canonical bounds are part of CODEC_IDENTITY.
    pub rotation: Ros1Geometry_msgsQuaternion,
}
impl Default for Ros1Geometry_msgsTransform {
    fn default() -> Self {
        Self {
            translation: Default::default(),
            rotation: Default::default(),
        }
    }
}
impl Ros1Geometry_msgsTransform {
    pub const MAX_WIRE_BYTES: usize = 56;
    pub const CARTESIAN_WIRE_BYTES: u64 = 56;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_61aabab03e8f766ea05949c9e5f4989186d72a26f793b8d11752e53f1f300085";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.translation.wire_size()?)?;
        n = add_size(n, self.rotation.wire_size()?)?;
        if n > 56 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.translation.write_fields(out, at);
        self.rotation.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Geometry_msgsVector3::read_fields(bytes, at)?;
        value.translation = decoded;
        let decoded = Ros1Geometry_msgsQuaternion::read_fields(bytes, at)?;
        value.rotation = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Geometry_msgsTransform {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
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
/// Complete bounded value for ROS1 geometry_msgs/TransformStamped.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Geometry_msgsTransformStamped {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros1Std_msgsHeader,
    /// Declared child_frame_id; canonical bounds are part of CODEC_IDENTITY.
    pub child_frame_id: String,
    /// Declared transform; canonical bounds are part of CODEC_IDENTITY.
    pub transform: Ros1Geometry_msgsTransform,
}
impl Default for Ros1Geometry_msgsTransformStamped {
    fn default() -> Self {
        Self {
            header: Default::default(),
            child_frame_id: Default::default(),
            transform: Default::default(),
        }
    }
}
impl Ros1Geometry_msgsTransformStamped {
    pub const MAX_WIRE_BYTES: usize = 332;
    pub const CARTESIAN_WIRE_BYTES: u64 = 332;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_f4e1d7f868984da7e3717192245f9adf2cc18c76bebaac6357ae2ed30b5b132c";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        if self.child_frame_id.len() > 128 || self.child_frame_id.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.child_frame_id.len())?;
        n = add_size(n, self.transform.wire_size()?)?;
        if n > 332 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.header.write_fields(out, at);
        put(out, at, &(self.child_frame_id.len() as u32).to_le_bytes());
        put(out, at, self.child_frame_id.as_bytes());
        self.transform.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Std_msgsHeader::read_fields(bytes, at)?;
        value.header = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.child_frame_id = decoded;
        let decoded = Ros1Geometry_msgsTransform::read_fields(bytes, at)?;
        value.transform = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Geometry_msgsTransformStamped {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 332 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 76 {
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
/// Complete bounded value for ROS1 geometry_msgs/Twist.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Geometry_msgsTwist {
    /// Declared linear; canonical bounds are part of CODEC_IDENTITY.
    pub linear: Ros1Geometry_msgsVector3,
    /// Declared angular; canonical bounds are part of CODEC_IDENTITY.
    pub angular: Ros1Geometry_msgsVector3,
}
impl Default for Ros1Geometry_msgsTwist {
    fn default() -> Self {
        Self {
            linear: Default::default(),
            angular: Default::default(),
        }
    }
}
impl Ros1Geometry_msgsTwist {
    pub const MAX_WIRE_BYTES: usize = 48;
    pub const CARTESIAN_WIRE_BYTES: u64 = 48;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_d5a69cfff4380fcf3e9c131ddb3dfb6def041cd7308a7ebdbc150b6483dfd921";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.linear.wire_size()?)?;
        n = add_size(n, self.angular.wire_size()?)?;
        if n > 48 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.linear.write_fields(out, at);
        self.angular.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Geometry_msgsVector3::read_fields(bytes, at)?;
        value.linear = decoded;
        let decoded = Ros1Geometry_msgsVector3::read_fields(bytes, at)?;
        value.angular = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Geometry_msgsTwist {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 48 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 48 {
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
/// Complete bounded value for ROS1 geometry_msgs/Wrench.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Geometry_msgsWrench {
    /// Declared force; canonical bounds are part of CODEC_IDENTITY.
    pub force: Ros1Geometry_msgsVector3,
    /// Declared torque; canonical bounds are part of CODEC_IDENTITY.
    pub torque: Ros1Geometry_msgsVector3,
}
impl Default for Ros1Geometry_msgsWrench {
    fn default() -> Self {
        Self {
            force: Default::default(),
            torque: Default::default(),
        }
    }
}
impl Ros1Geometry_msgsWrench {
    pub const MAX_WIRE_BYTES: usize = 48;
    pub const CARTESIAN_WIRE_BYTES: u64 = 48;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_b0938c4e084df68cf7c46445070ac3e9305d06f678275845aec6055db77617c3";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.force.wire_size()?)?;
        n = add_size(n, self.torque.wire_size()?)?;
        if n > 48 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.force.write_fields(out, at);
        self.torque.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Geometry_msgsVector3::read_fields(bytes, at)?;
        value.force = decoded;
        let decoded = Ros1Geometry_msgsVector3::read_fields(bytes, at)?;
        value.torque = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Geometry_msgsWrench {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 48 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 48 {
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
/// Complete bounded value for ROS1 humanoid_nav_msgs/StepTarget.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Humanoid_nav_msgsStepTarget {
    /// Declared pose; canonical bounds are part of CODEC_IDENTITY.
    pub pose: Ros1Geometry_msgsPose2D,
    /// Declared leg; canonical bounds are part of CODEC_IDENTITY.
    pub leg: u8,
}
impl Default for Ros1Humanoid_nav_msgsStepTarget {
    fn default() -> Self {
        Self {
            pose: Default::default(),
            leg: Default::default(),
        }
    }
}
impl Ros1Humanoid_nav_msgsStepTarget {
    pub const MAX_WIRE_BYTES: usize = 25;
    pub const CARTESIAN_WIRE_BYTES: u64 = 25;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_569ffb799d7e55047bf9191eee9af61296726974e01efa8e3b59be779f25c0e6";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.pose.wire_size()?)?;
        n = add_size(n, 1)?;
        if n > 25 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.pose.write_fields(out, at);
        put(out, at, &self.leg.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Geometry_msgsPose2D::read_fields(bytes, at)?;
        value.pose = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.leg = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Humanoid_nav_msgsStepTarget {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 25 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 25 {
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
/// Complete bounded value for ROS1 nav_msgs/MapMetaData.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Nav_msgsMapMetaData {
    /// Declared map_load_time; canonical bounds are part of CODEC_IDENTITY.
    pub map_load_time: Ros1Time,
    /// Declared resolution; canonical bounds are part of CODEC_IDENTITY.
    pub resolution: f32,
    /// Declared width; canonical bounds are part of CODEC_IDENTITY.
    pub width: u32,
    /// Declared height; canonical bounds are part of CODEC_IDENTITY.
    pub height: u32,
    /// Declared origin; canonical bounds are part of CODEC_IDENTITY.
    pub origin: Ros1Geometry_msgsPose,
}
impl Default for Ros1Nav_msgsMapMetaData {
    fn default() -> Self {
        Self {
            map_load_time: Default::default(),
            resolution: Default::default(),
            width: Default::default(),
            height: Default::default(),
            origin: Default::default(),
        }
    }
}
impl Ros1Nav_msgsMapMetaData {
    pub const MAX_WIRE_BYTES: usize = 76;
    pub const CARTESIAN_WIRE_BYTES: u64 = 76;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_2bd90889cc46f8b6669b9bdbdd911747e873c2e3fb948cd3c94a1add8c4555ec";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.map_load_time.wire_size()?)?;
        if !self.resolution.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, 4)?;
        n = add_size(n, 4)?;
        n = add_size(n, self.origin.wire_size()?)?;
        if n > 76 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.map_load_time.write_fields(out, at);
        put(out, at, &self.resolution.to_le_bytes());
        put(out, at, &self.width.to_le_bytes());
        put(out, at, &self.height.to_le_bytes());
        self.origin.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Time::read_fields(bytes, at)?;
        value.map_load_time = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.resolution = decoded;
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.width = decoded;
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.height = decoded;
        let decoded = Ros1Geometry_msgsPose::read_fields(bytes, at)?;
        value.origin = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Nav_msgsMapMetaData {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 76 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 76 {
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
/// Complete bounded value for ROS1 nav_msgs/OccupancyGrid.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Nav_msgsOccupancyGrid {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros1Std_msgsHeader,
    /// Declared info; canonical bounds are part of CODEC_IDENTITY.
    pub info: Ros1Nav_msgsMapMetaData,
    /// Declared data; canonical bounds are part of CODEC_IDENTITY.
    pub data: Vec<i8>,
}
impl Default for Ros1Nav_msgsOccupancyGrid {
    fn default() -> Self {
        Self {
            header: Default::default(),
            info: Default::default(),
            data: Default::default(),
        }
    }
}
impl Ros1Nav_msgsOccupancyGrid {
    pub const MAX_WIRE_BYTES: usize = 480;
    pub const CARTESIAN_WIRE_BYTES: u64 = 480;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_01c46df6fd069eca1664115a5bfaefa2497f0b44b1c0b11b6f293cb56b0c837d";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        n = add_size(n, self.info.wire_size()?)?;
        if self.data.len() > 256 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.data {
            n = add_size(n, 1)?;
        }
        if n > 480 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.header.write_fields(out, at);
        self.info.write_fields(out, at);
        put(out, at, &(self.data.len() as u32).to_le_bytes());
        for element in &self.data {
            put(out, at, &element.to_le_bytes());
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Std_msgsHeader::read_fields(bytes, at)?;
        value.header = decoded;
        let decoded = Ros1Nav_msgsMapMetaData::read_fields(bytes, at)?;
        value.info = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 256 {
                return Err(invalid());
            }
            value.data = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
                value.data.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros1Nav_msgsOccupancyGrid {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 480 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 96 {
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
/// Complete bounded value for ROS1 pal_behaviour_msgs/BehaviourArgument.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_behaviour_msgsBehaviourArgument {
    /// Declared key; canonical bounds are part of CODEC_IDENTITY.
    pub key: String,
    /// Declared value; canonical bounds are part of CODEC_IDENTITY.
    pub value: String,
}
impl Default for Ros1Pal_behaviour_msgsBehaviourArgument {
    fn default() -> Self {
        Self {
            key: Default::default(),
            value: Default::default(),
        }
    }
}
impl Ros1Pal_behaviour_msgsBehaviourArgument {
    pub const MAX_WIRE_BYTES: usize = 264;
    pub const CARTESIAN_WIRE_BYTES: u64 = 264;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_024bb88cf3b278e19491258b73c01eca83b0ccfd9381e96b9bb5733227bc4bc0";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.key.len() > 128 || self.key.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.key.len())?;
        if self.value.len() > 128 || self.value.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.value.len())?;
        if n > 264 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.key.len() as u32).to_le_bytes());
        put(out, at, self.key.as_bytes());
        put(out, at, &(self.value.len() as u32).to_le_bytes());
        put(out, at, self.value.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.key = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.value = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_behaviour_msgsBehaviourArgument {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 264 {
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
/// Complete bounded value for ROS1 pal_behaviour_msgs/BehaviourEventRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_behaviour_msgsBehaviourEventRequest {
    /// Declared name; canonical bounds are part of CODEC_IDENTITY.
    pub name: String,
    /// Declared arguments; canonical bounds are part of CODEC_IDENTITY.
    pub arguments: Vec<Ros1Pal_behaviour_msgsBehaviourArgument>,
}
impl Default for Ros1Pal_behaviour_msgsBehaviourEventRequest {
    fn default() -> Self {
        Self {
            name: Default::default(),
            arguments: Default::default(),
        }
    }
}
impl Ros1Pal_behaviour_msgsBehaviourEventRequest {
    pub const MAX_WIRE_BYTES: usize = 1192;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1192;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_048535054a3fb576c8101615baffb84809d2e09e6570527a185e54b54460374c";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.name.len() > 128 || self.name.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.name.len())?;
        if self.arguments.len() > 4 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.arguments {
            n = add_size(n, element.wire_size()?)?;
        }
        if n > 1192 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.name.len() as u32).to_le_bytes());
        put(out, at, self.name.as_bytes());
        put(out, at, &(self.arguments.len() as u32).to_le_bytes());
        for element in &self.arguments {
            element.write_fields(out, at);
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.name = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 4 {
                return Err(invalid());
            }
            value.arguments = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros1Pal_behaviour_msgsBehaviourArgument::read_fields(bytes, at)?;
                value.arguments.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros1Pal_behaviour_msgsBehaviourEventRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 1192 {
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
/// Complete bounded value for ROS1 pal_behaviour_msgs/BehaviourEventResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_behaviour_msgsBehaviourEventResponse {
    /// Declared response; canonical bounds are part of CODEC_IDENTITY.
    pub response: String,
}
impl Default for Ros1Pal_behaviour_msgsBehaviourEventResponse {
    fn default() -> Self {
        Self {
            response: Default::default(),
        }
    }
}
impl Ros1Pal_behaviour_msgsBehaviourEventResponse {
    pub const MAX_WIRE_BYTES: usize = 132;
    pub const CARTESIAN_WIRE_BYTES: u64 = 132;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_5d4451abae7cf7d65e7385b4e447df7f991644aa8763758b129e5df6920ba1fd";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.response.len() > 128 || self.response.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.response.len())?;
        if n > 132 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.response.len() as u32).to_le_bytes());
        put(out, at, self.response.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.response = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_behaviour_msgsBehaviourEventResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 132 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 4 {
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
/// Complete bounded value for ROS1 pal_behaviour_msgs/BehaviourTaskGoal.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_behaviour_msgsBehaviourTaskGoal {
    /// Declared taskName; canonical bounds are part of CODEC_IDENTITY.
    pub taskName: String,
    /// Declared arguments; canonical bounds are part of CODEC_IDENTITY.
    pub arguments: Vec<Ros1Pal_behaviour_msgsBehaviourArgument>,
}
impl Default for Ros1Pal_behaviour_msgsBehaviourTaskGoal {
    fn default() -> Self {
        Self {
            taskName: Default::default(),
            arguments: Default::default(),
        }
    }
}
impl Ros1Pal_behaviour_msgsBehaviourTaskGoal {
    pub const MAX_WIRE_BYTES: usize = 1192;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1192;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_298df310a5cc1085df5355d10a2ecd627415e85f1399f52eaba19a3e16f2389f";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.taskName.len() > 128 || self.taskName.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.taskName.len())?;
        if self.arguments.len() > 4 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.arguments {
            n = add_size(n, element.wire_size()?)?;
        }
        if n > 1192 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.taskName.len() as u32).to_le_bytes());
        put(out, at, self.taskName.as_bytes());
        put(out, at, &(self.arguments.len() as u32).to_le_bytes());
        for element in &self.arguments {
            element.write_fields(out, at);
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.taskName = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 4 {
                return Err(invalid());
            }
            value.arguments = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros1Pal_behaviour_msgsBehaviourArgument::read_fields(bytes, at)?;
                value.arguments.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros1Pal_behaviour_msgsBehaviourTaskGoal {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 1192 {
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
/// Complete bounded value for ROS1 pal_behaviour_msgs/BehaviourTaskResult.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_behaviour_msgsBehaviourTaskResult {}
impl Default for Ros1Pal_behaviour_msgsBehaviourTaskResult {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Pal_behaviour_msgsBehaviourTaskResult {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_e18dbdb679b8d00ba9ba5f72201ccf93eec866891009b3639f0892c64da18491";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if n > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {}
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        Ok(value)
    }
}
impl Canonical for Ros1Pal_behaviour_msgsBehaviourTaskResult {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 0 {
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
/// Complete bounded value for ROS1 pal_behaviour_msgs/BehaviourTaskFeedback.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_behaviour_msgsBehaviourTaskFeedback {}
impl Default for Ros1Pal_behaviour_msgsBehaviourTaskFeedback {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Pal_behaviour_msgsBehaviourTaskFeedback {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_4270594f10120216110afd3b219cec42018a71cc751bf09a379e608ce99b1752";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if n > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {}
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        Ok(value)
    }
}
impl Canonical for Ros1Pal_behaviour_msgsBehaviourTaskFeedback {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 0 {
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
/// Complete bounded value for ROS1 pal_behaviour_msgs/PresentationGoal.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_behaviour_msgsPresentationGoal {
    /// Declared presentationFile; canonical bounds are part of CODEC_IDENTITY.
    pub presentationFile: String,
}
impl Default for Ros1Pal_behaviour_msgsPresentationGoal {
    fn default() -> Self {
        Self {
            presentationFile: Default::default(),
        }
    }
}
impl Ros1Pal_behaviour_msgsPresentationGoal {
    pub const MAX_WIRE_BYTES: usize = 132;
    pub const CARTESIAN_WIRE_BYTES: u64 = 132;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_f63991747249e4417a36723dcfe3620fb3efc20784b6a60334f46b3476c76b96";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.presentationFile.len() > 128 || self.presentationFile.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.presentationFile.len())?;
        if n > 132 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.presentationFile.len() as u32).to_le_bytes());
        put(out, at, self.presentationFile.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.presentationFile = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_behaviour_msgsPresentationGoal {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 132 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 4 {
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
/// Complete bounded value for ROS1 pal_behaviour_msgs/PresentationResult.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_behaviour_msgsPresentationResult {}
impl Default for Ros1Pal_behaviour_msgsPresentationResult {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Pal_behaviour_msgsPresentationResult {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_416d43dac88c97f0b25fb206e5529d660fbadb5c8bf98c78190616eaae7c8c41";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if n > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {}
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        Ok(value)
    }
}
impl Canonical for Ros1Pal_behaviour_msgsPresentationResult {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 0 {
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
/// Complete bounded value for ROS1 pal_behaviour_msgs/PresentationFeedback.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_behaviour_msgsPresentationFeedback {}
impl Default for Ros1Pal_behaviour_msgsPresentationFeedback {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Pal_behaviour_msgsPresentationFeedback {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_a80db9d9290af9c76e0d611c42e60939bcfc26897ba56efb2cefd5df072f5970";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if n > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {}
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        Ok(value)
    }
}
impl Canonical for Ros1Pal_behaviour_msgsPresentationFeedback {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 0 {
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
/// Complete bounded value for ROS1 pal_common_msgs/DisableGoal.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_common_msgsDisableGoal {
    /// Declared duration; canonical bounds are part of CODEC_IDENTITY.
    pub duration: f32,
}
impl Default for Ros1Pal_common_msgsDisableGoal {
    fn default() -> Self {
        Self {
            duration: Default::default(),
        }
    }
}
impl Ros1Pal_common_msgsDisableGoal {
    pub const MAX_WIRE_BYTES: usize = 4;
    pub const CARTESIAN_WIRE_BYTES: u64 = 4;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_7b506fba552b6058cfbd7275e45a82399b686d73dc891bfee6dc506a02f1db3a";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if !self.duration.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if n > 4 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.duration.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.duration = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_common_msgsDisableGoal {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 4 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 4 {
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
/// Complete bounded value for ROS1 pal_common_msgs/DisableResult.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_common_msgsDisableResult {}
impl Default for Ros1Pal_common_msgsDisableResult {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Pal_common_msgsDisableResult {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_e16cdbd4052e095ead5edfda8c339d94483de63d5442139e0c8b0c5300a2056f";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if n > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {}
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        Ok(value)
    }
}
impl Canonical for Ros1Pal_common_msgsDisableResult {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 0 {
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
/// Complete bounded value for ROS1 pal_common_msgs/DisableFeedback.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_common_msgsDisableFeedback {}
impl Default for Ros1Pal_common_msgsDisableFeedback {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Pal_common_msgsDisableFeedback {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_892e1dc5726b25276dfd880aff5c9741922b938048d8fc044662fd6f11939555";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if n > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {}
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        Ok(value)
    }
}
impl Canonical for Ros1Pal_common_msgsDisableFeedback {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 0 {
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
/// Complete bounded value for ROS1 pal_common_msgs/EmptyGoal.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_common_msgsEmptyGoal {}
impl Default for Ros1Pal_common_msgsEmptyGoal {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Pal_common_msgsEmptyGoal {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_b2e8505fe9480002666ccc1bc6ed3e250f521f1e0fb2165336de288f0798c7ce";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if n > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {}
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        Ok(value)
    }
}
impl Canonical for Ros1Pal_common_msgsEmptyGoal {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 0 {
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
/// Complete bounded value for ROS1 pal_common_msgs/EmptyResult.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_common_msgsEmptyResult {}
impl Default for Ros1Pal_common_msgsEmptyResult {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Pal_common_msgsEmptyResult {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_7e831f6ff8bda7d3ff2a477bb867ce2b965d82e60c8c089a68a030be1c56202a";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if n > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {}
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        Ok(value)
    }
}
impl Canonical for Ros1Pal_common_msgsEmptyResult {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 0 {
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
/// Complete bounded value for ROS1 pal_common_msgs/EmptyFeedback.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_common_msgsEmptyFeedback {}
impl Default for Ros1Pal_common_msgsEmptyFeedback {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Pal_common_msgsEmptyFeedback {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_4e37b746163e601913c21f82128415e9493467848b1203b0744a4f7697125160";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if n > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {}
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        Ok(value)
    }
}
impl Canonical for Ros1Pal_common_msgsEmptyFeedback {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 0 {
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
/// Complete bounded value for ROS1 pal_common_msgs/GetStringRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_common_msgsGetStringRequest {}
impl Default for Ros1Pal_common_msgsGetStringRequest {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Pal_common_msgsGetStringRequest {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_5da980a34f4dc0c571eccf18e9b5ba9e3f600ec33066d5632e5eed6a57432975";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if n > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {}
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        Ok(value)
    }
}
impl Canonical for Ros1Pal_common_msgsGetStringRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 0 {
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
/// Complete bounded value for ROS1 pal_common_msgs/GetStringResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_common_msgsGetStringResponse {
    /// Declared data; canonical bounds are part of CODEC_IDENTITY.
    pub data: String,
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Pal_common_msgsGetStringResponse {
    fn default() -> Self {
        Self {
            data: Default::default(),
            success: Default::default(),
        }
    }
}
impl Ros1Pal_common_msgsGetStringResponse {
    pub const MAX_WIRE_BYTES: usize = 133;
    pub const CARTESIAN_WIRE_BYTES: u64 = 133;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_92faf0451e15a3363daed687078ea103a59e98135e888ad54f8dd9d282443a59";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.data.len() > 128 || self.data.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.data.len())?;
        n = add_size(n, 1)?;
        if n > 133 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.data.len() as u32).to_le_bytes());
        put(out, at, self.data.as_bytes());
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.data = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_common_msgsGetStringResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 133 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 5 {
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
/// Complete bounded value for ROS1 pal_common_msgs/JointCurrent.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_common_msgsJointCurrent {
    /// Declared joints; canonical bounds are part of CODEC_IDENTITY.
    pub joints: String,
    /// Declared current_limit; canonical bounds are part of CODEC_IDENTITY.
    pub current_limit: f32,
}
impl Default for Ros1Pal_common_msgsJointCurrent {
    fn default() -> Self {
        Self {
            joints: Default::default(),
            current_limit: Default::default(),
        }
    }
}
impl Ros1Pal_common_msgsJointCurrent {
    pub const MAX_WIRE_BYTES: usize = 136;
    pub const CARTESIAN_WIRE_BYTES: u64 = 136;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_5c8818c8e15e17e0696cd7301896246ea43e5309f24e8d00e3254283199a5b39";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.joints.len() > 128 || self.joints.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.joints.len())?;
        if !self.current_limit.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if n > 136 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.joints.len() as u32).to_le_bytes());
        put(out, at, self.joints.as_bytes());
        put(out, at, &self.current_limit.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.joints = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.current_limit = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_common_msgsJointCurrent {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 136 {
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
/// Complete bounded value for ROS1 pal_common_msgs/SetStringRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_common_msgsSetStringRequest {
    /// Declared data; canonical bounds are part of CODEC_IDENTITY.
    pub data: String,
}
impl Default for Ros1Pal_common_msgsSetStringRequest {
    fn default() -> Self {
        Self {
            data: Default::default(),
        }
    }
}
impl Ros1Pal_common_msgsSetStringRequest {
    pub const MAX_WIRE_BYTES: usize = 132;
    pub const CARTESIAN_WIRE_BYTES: u64 = 132;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_1266d5e50f2f3ada01139b7cf49daf4dd6a9a358edf26519c6b85bd2b9c675b3";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.data.len() > 128 || self.data.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.data.len())?;
        if n > 132 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.data.len() as u32).to_le_bytes());
        put(out, at, self.data.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.data = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_common_msgsSetStringRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 132 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 4 {
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
/// Complete bounded value for ROS1 pal_common_msgs/SetStringResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_common_msgsSetStringResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Pal_common_msgsSetStringResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Pal_common_msgsSetStringResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_77c77473e16b6242e69e1674bf3c1faf66169bb858144992be3f6cfd712bd370";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if n > 1 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_common_msgsSetStringResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 1 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 1 {
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
/// Complete bounded value for ROS1 pal_control_msgs/ActuatorCurrentLimit.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_control_msgsActuatorCurrentLimit {
    /// Declared actuator_names; canonical bounds are part of CODEC_IDENTITY.
    pub actuator_names: Vec<String>,
    /// Declared current_limits; canonical bounds are part of CODEC_IDENTITY.
    pub current_limits: Vec<f64>,
}
impl Default for Ros1Pal_control_msgsActuatorCurrentLimit {
    fn default() -> Self {
        Self {
            actuator_names: Default::default(),
            current_limits: Default::default(),
        }
    }
}
impl Ros1Pal_control_msgsActuatorCurrentLimit {
    pub const MAX_WIRE_BYTES: usize = 2248;
    pub const CARTESIAN_WIRE_BYTES: u64 = 2248;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_cf7369861a4d556cc9edc22cc60c79f484ca84e295c508a2ff7d7332247addbe";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.actuator_names.len() > 16 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.actuator_names {
            if element.len() > 128 || element.as_bytes().contains(&0) {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
            n = add_size(n, element.len())?;
        }
        if self.current_limits.len() > 16 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.current_limits {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if n > 2248 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.actuator_names.len() as u32).to_le_bytes());
        for element in &self.actuator_names {
            put(out, at, &(element.len() as u32).to_le_bytes());
            put(out, at, element.as_bytes());
        }
        put(out, at, &(self.current_limits.len() as u32).to_le_bytes());
        for element in &self.current_limits {
            put(out, at, &element.to_le_bytes());
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = read_count(bytes, at)?;
            if count > 16 {
                return Err(invalid());
            }
            value.actuator_names = Vec::with_capacity(count);
            for i in 0..count {
                let size = read_count(bytes, at)?;
                if size > 128 {
                    return Err(invalid());
                }
                let raw = take(bytes, at, size)?;
                if raw.contains(&0) {
                    return Err(invalid());
                }
                let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
                value.actuator_names.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 16 {
                return Err(invalid());
            }
            value.current_limits = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.current_limits.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros1Pal_control_msgsActuatorCurrentLimit {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 2248 {
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
/// Complete bounded value for ROS1 pal_control_msgs/CurrentLimitRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_control_msgsCurrentLimitRequest {
    /// Declared actuator_name; canonical bounds are part of CODEC_IDENTITY.
    pub actuator_name: String,
    /// Declared current_limit; canonical bounds are part of CODEC_IDENTITY.
    pub current_limit: f64,
}
impl Default for Ros1Pal_control_msgsCurrentLimitRequest {
    fn default() -> Self {
        Self {
            actuator_name: Default::default(),
            current_limit: Default::default(),
        }
    }
}
impl Ros1Pal_control_msgsCurrentLimitRequest {
    pub const MAX_WIRE_BYTES: usize = 140;
    pub const CARTESIAN_WIRE_BYTES: u64 = 140;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_b029cf04f0b1c9db6817fbd10f193d7402afbc84853aed53dc62646e56d030b5";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.actuator_name.len() > 128 || self.actuator_name.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.actuator_name.len())?;
        if !self.current_limit.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if n > 140 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.actuator_name.len() as u32).to_le_bytes());
        put(out, at, self.actuator_name.as_bytes());
        put(out, at, &self.current_limit.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.actuator_name = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.current_limit = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_control_msgsCurrentLimitRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 140 {
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
/// Complete bounded value for ROS1 pal_control_msgs/CurrentLimitResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_control_msgsCurrentLimitResponse {
    /// Declared status; canonical bounds are part of CODEC_IDENTITY.
    pub status: String,
}
impl Default for Ros1Pal_control_msgsCurrentLimitResponse {
    fn default() -> Self {
        Self {
            status: Default::default(),
        }
    }
}
impl Ros1Pal_control_msgsCurrentLimitResponse {
    pub const MAX_WIRE_BYTES: usize = 132;
    pub const CARTESIAN_WIRE_BYTES: u64 = 132;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_e3b16641e9b7be7b3cb0cf7198a63b41ebd0b38eb7dc6b7bd9263650279b0c37";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.status.len() > 128 || self.status.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.status.len())?;
        if n > 132 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.status.len() as u32).to_le_bytes());
        put(out, at, self.status.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.status = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_control_msgsCurrentLimitResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 132 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 4 {
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
/// Complete bounded value for ROS1 pal_control_msgs/MotionManagerGoal.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_control_msgsMotionManagerGoal {
    /// Declared filename; canonical bounds are part of CODEC_IDENTITY.
    pub filename: String,
    /// Declared plan; canonical bounds are part of CODEC_IDENTITY.
    pub plan: bool,
    /// Declared checkSafety; canonical bounds are part of CODEC_IDENTITY.
    pub checkSafety: bool,
    /// Declared repeat; canonical bounds are part of CODEC_IDENTITY.
    pub repeat: bool,
    /// Declared priority; canonical bounds are part of CODEC_IDENTITY.
    pub priority: u8,
    /// Declared queueTimeout; canonical bounds are part of CODEC_IDENTITY.
    pub queueTimeout: i32,
}
impl Default for Ros1Pal_control_msgsMotionManagerGoal {
    fn default() -> Self {
        Self {
            filename: Default::default(),
            plan: Default::default(),
            checkSafety: Default::default(),
            repeat: Default::default(),
            priority: Default::default(),
            queueTimeout: Default::default(),
        }
    }
}
impl Ros1Pal_control_msgsMotionManagerGoal {
    pub const MAX_WIRE_BYTES: usize = 140;
    pub const CARTESIAN_WIRE_BYTES: u64 = 140;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_d2191004950c3f14c8fd71cc2c59cbe39eb76a3c521327293e7355f88e8d2383";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.filename.len() > 128 || self.filename.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.filename.len())?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 4)?;
        if n > 140 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.filename.len() as u32).to_le_bytes());
        put(out, at, self.filename.as_bytes());
        put(out, at, &[u8::from(self.plan)]);
        put(out, at, &[u8::from(self.checkSafety)]);
        put(out, at, &[u8::from(self.repeat)]);
        put(out, at, &self.priority.to_le_bytes());
        put(out, at, &self.queueTimeout.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.filename = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.plan = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.checkSafety = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.repeat = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.priority = decoded;
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.queueTimeout = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_control_msgsMotionManagerGoal {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 140 {
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
/// Complete bounded value for ROS1 pal_control_msgs/MotionManagerResult.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_control_msgsMotionManagerResult {
    /// Declared message; canonical bounds are part of CODEC_IDENTITY.
    pub message: String,
}
impl Default for Ros1Pal_control_msgsMotionManagerResult {
    fn default() -> Self {
        Self {
            message: Default::default(),
        }
    }
}
impl Ros1Pal_control_msgsMotionManagerResult {
    pub const MAX_WIRE_BYTES: usize = 132;
    pub const CARTESIAN_WIRE_BYTES: u64 = 132;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_8c9a1d39fe8d1a23621b871bb0752196123c9eab96c31055c384d0056da3165c";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.message.len() > 128 || self.message.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.message.len())?;
        if n > 132 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.message.len() as u32).to_le_bytes());
        put(out, at, self.message.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.message = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_control_msgsMotionManagerResult {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 132 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 4 {
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
/// Complete bounded value for ROS1 pal_control_msgs/MotionManagerFeedback.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_control_msgsMotionManagerFeedback {}
impl Default for Ros1Pal_control_msgsMotionManagerFeedback {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Pal_control_msgsMotionManagerFeedback {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_90343a2a84a0db6a4730b7c9cb437ba55e9dd30c10b662db6dabe561ecf48009";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if n > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {}
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        Ok(value)
    }
}
impl Canonical for Ros1Pal_control_msgsMotionManagerFeedback {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 0 {
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
/// Complete bounded value for ROS1 duration.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Duration {
    /// Declared sec; canonical bounds are part of CODEC_IDENTITY.
    pub sec: i32,
    /// Declared nsec; canonical bounds are part of CODEC_IDENTITY.
    pub nsec: i32,
}
impl Default for Ros1Duration {
    fn default() -> Self {
        Self {
            sec: Default::default(),
            nsec: Default::default(),
        }
    }
}
impl Ros1Duration {
    pub const MAX_WIRE_BYTES: usize = 8;
    pub const CARTESIAN_WIRE_BYTES: u64 = 8;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_8dbec6cdfef79495208abb358c5e8283ec8d9d471f984424afcda997d142cca8";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 4)?;
        n = add_size(n, 4)?;
        if self.nsec < 0 || self.nsec >= 1000000000 {
            return Err(invalid());
        }
        if n > 8 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.sec.to_le_bytes());
        put(out, at, &self.nsec.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.sec = decoded;
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.nsec = decoded;
        if value.nsec < 0 || value.nsec >= 1000000000 {
            return Err(invalid());
        }
        Ok(value)
    }
}
impl Canonical for Ros1Duration {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
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
/// Complete bounded value for ROS1 pal_control_msgs/OperationalSpaceGoal.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_control_msgsOperationalSpaceGoal {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros1Std_msgsHeader,
    /// Declared has_vel; canonical bounds are part of CODEC_IDENTITY.
    pub has_vel: bool,
    /// Declared has_accel; canonical bounds are part of CODEC_IDENTITY.
    pub has_accel: bool,
    /// Declared duration; canonical bounds are part of CODEC_IDENTITY.
    pub duration: Ros1Duration,
    /// Declared pose; canonical bounds are part of CODEC_IDENTITY.
    pub pose: Ros1Geometry_msgsPose,
    /// Declared velocity; canonical bounds are part of CODEC_IDENTITY.
    pub velocity: Ros1Geometry_msgsTwist,
    /// Declared acceleration; canonical bounds are part of CODEC_IDENTITY.
    pub acceleration: Ros1Geometry_msgsAccel,
}
impl Default for Ros1Pal_control_msgsOperationalSpaceGoal {
    fn default() -> Self {
        Self {
            header: Default::default(),
            has_vel: Default::default(),
            has_accel: Default::default(),
            duration: Default::default(),
            pose: Default::default(),
            velocity: Default::default(),
            acceleration: Default::default(),
        }
    }
}
impl Ros1Pal_control_msgsOperationalSpaceGoal {
    pub const MAX_WIRE_BYTES: usize = 306;
    pub const CARTESIAN_WIRE_BYTES: u64 = 306;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_c2a633eaaae880b4becdac4e48068d798b121a63ed50339ae5f8eb455416c752";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, self.duration.wire_size()?)?;
        n = add_size(n, self.pose.wire_size()?)?;
        n = add_size(n, self.velocity.wire_size()?)?;
        n = add_size(n, self.acceleration.wire_size()?)?;
        if n > 306 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.header.write_fields(out, at);
        put(out, at, &[u8::from(self.has_vel)]);
        put(out, at, &[u8::from(self.has_accel)]);
        self.duration.write_fields(out, at);
        self.pose.write_fields(out, at);
        self.velocity.write_fields(out, at);
        self.acceleration.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Std_msgsHeader::read_fields(bytes, at)?;
        value.header = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.has_vel = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.has_accel = decoded;
        let decoded = Ros1Duration::read_fields(bytes, at)?;
        value.duration = decoded;
        let decoded = Ros1Geometry_msgsPose::read_fields(bytes, at)?;
        value.pose = decoded;
        let decoded = Ros1Geometry_msgsTwist::read_fields(bytes, at)?;
        value.velocity = decoded;
        let decoded = Ros1Geometry_msgsAccel::read_fields(bytes, at)?;
        value.acceleration = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_control_msgsOperationalSpaceGoal {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 306 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 178 {
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
/// Complete bounded value for ROS1 pal_control_msgs/RigidBodyTrajectoryPoint.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_control_msgsRigidBodyTrajectoryPoint {
    /// Declared duration; canonical bounds are part of CODEC_IDENTITY.
    pub duration: Ros1Duration,
    /// Declared pose; canonical bounds are part of CODEC_IDENTITY.
    pub pose: Ros1Geometry_msgsPose,
    /// Declared velocity; canonical bounds are part of CODEC_IDENTITY.
    pub velocity: Ros1Geometry_msgsTwist,
    /// Declared acceleration; canonical bounds are part of CODEC_IDENTITY.
    pub acceleration: Ros1Geometry_msgsAccel,
}
impl Default for Ros1Pal_control_msgsRigidBodyTrajectoryPoint {
    fn default() -> Self {
        Self {
            duration: Default::default(),
            pose: Default::default(),
            velocity: Default::default(),
            acceleration: Default::default(),
        }
    }
}
impl Ros1Pal_control_msgsRigidBodyTrajectoryPoint {
    pub const MAX_WIRE_BYTES: usize = 160;
    pub const CARTESIAN_WIRE_BYTES: u64 = 160;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_25a24ab0d2eea5acbd4f1e0e0ba45262aa18750fcfb7cd6e57361ac782006d8f";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.duration.wire_size()?)?;
        n = add_size(n, self.pose.wire_size()?)?;
        n = add_size(n, self.velocity.wire_size()?)?;
        n = add_size(n, self.acceleration.wire_size()?)?;
        if n > 160 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.duration.write_fields(out, at);
        self.pose.write_fields(out, at);
        self.velocity.write_fields(out, at);
        self.acceleration.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Duration::read_fields(bytes, at)?;
        value.duration = decoded;
        let decoded = Ros1Geometry_msgsPose::read_fields(bytes, at)?;
        value.pose = decoded;
        let decoded = Ros1Geometry_msgsTwist::read_fields(bytes, at)?;
        value.velocity = decoded;
        let decoded = Ros1Geometry_msgsAccel::read_fields(bytes, at)?;
        value.acceleration = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_control_msgsRigidBodyTrajectoryPoint {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 160 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 160 {
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
/// Complete bounded value for ROS1 pal_control_msgs/RigidBodyTrajectoryGoal.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_control_msgsRigidBodyTrajectoryGoal {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros1Std_msgsHeader,
    /// Declared interpolation_type; canonical bounds are part of CODEC_IDENTITY.
    pub interpolation_type: i8,
    /// Declared trajectory; canonical bounds are part of CODEC_IDENTITY.
    pub trajectory: Vec<Ros1Pal_control_msgsRigidBodyTrajectoryPoint>,
}
impl Default for Ros1Pal_control_msgsRigidBodyTrajectoryGoal {
    fn default() -> Self {
        Self {
            header: Default::default(),
            interpolation_type: Default::default(),
            trajectory: Default::default(),
        }
    }
}
impl Ros1Pal_control_msgsRigidBodyTrajectoryGoal {
    pub const MAX_WIRE_BYTES: usize = 789;
    pub const CARTESIAN_WIRE_BYTES: u64 = 789;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_03623f36fd48567680ea44e05f1e8fceb65f85bbbbfc9c76e19005deb2b2f599";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        n = add_size(n, 1)?;
        if self.trajectory.len() > 4 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.trajectory {
            n = add_size(n, element.wire_size()?)?;
        }
        if n > 789 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.header.write_fields(out, at);
        put(out, at, &self.interpolation_type.to_le_bytes());
        put(out, at, &(self.trajectory.len() as u32).to_le_bytes());
        for element in &self.trajectory {
            element.write_fields(out, at);
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Std_msgsHeader::read_fields(bytes, at)?;
        value.header = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.interpolation_type = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 4 {
                return Err(invalid());
            }
            value.trajectory = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros1Pal_control_msgsRigidBodyTrajectoryPoint::read_fields(bytes, at)?;
                value.trajectory.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros1Pal_control_msgsRigidBodyTrajectoryGoal {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 789 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 21 {
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
/// Complete bounded value for ROS1 pal_control_msgs/RigidBodyTrajectoryResult.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_control_msgsRigidBodyTrajectoryResult {
    /// Declared message; canonical bounds are part of CODEC_IDENTITY.
    pub message: String,
}
impl Default for Ros1Pal_control_msgsRigidBodyTrajectoryResult {
    fn default() -> Self {
        Self {
            message: Default::default(),
        }
    }
}
impl Ros1Pal_control_msgsRigidBodyTrajectoryResult {
    pub const MAX_WIRE_BYTES: usize = 132;
    pub const CARTESIAN_WIRE_BYTES: u64 = 132;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_7f2a255f550c28c0d817ada4d3a0419b4d44347d0d9050821395a65ae6431f9f";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.message.len() > 128 || self.message.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.message.len())?;
        if n > 132 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.message.len() as u32).to_le_bytes());
        put(out, at, self.message.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.message = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_control_msgsRigidBodyTrajectoryResult {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 132 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 4 {
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
/// Complete bounded value for ROS1 pal_control_msgs/RigidBodyTrajectoryFeedback.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_control_msgsRigidBodyTrajectoryFeedback {}
impl Default for Ros1Pal_control_msgsRigidBodyTrajectoryFeedback {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Pal_control_msgsRigidBodyTrajectoryFeedback {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_2ea6f2ce67dcc51782fa6db213b7a9e0c758b608961efc1e0783c8f14dbabd96";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if n > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {}
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        Ok(value)
    }
}
impl Canonical for Ros1Pal_control_msgsRigidBodyTrajectoryFeedback {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 0 {
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
/// Complete bounded value for ROS1 sensor_msgs/Image.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Sensor_msgsImage {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros1Std_msgsHeader,
    /// Declared height; canonical bounds are part of CODEC_IDENTITY.
    pub height: u32,
    /// Declared width; canonical bounds are part of CODEC_IDENTITY.
    pub width: u32,
    /// Declared encoding; canonical bounds are part of CODEC_IDENTITY.
    pub encoding: String,
    /// Declared is_bigendian; canonical bounds are part of CODEC_IDENTITY.
    pub is_bigendian: u8,
    /// Declared step; canonical bounds are part of CODEC_IDENTITY.
    pub step: u32,
    /// Declared data; canonical bounds are part of CODEC_IDENTITY.
    pub data: Vec<u8>,
}
impl Default for Ros1Sensor_msgsImage {
    fn default() -> Self {
        Self {
            header: Default::default(),
            height: Default::default(),
            width: Default::default(),
            encoding: Default::default(),
            is_bigendian: Default::default(),
            step: Default::default(),
            data: Default::default(),
        }
    }
}
impl Ros1Sensor_msgsImage {
    pub const MAX_WIRE_BYTES: usize = 4389;
    pub const CARTESIAN_WIRE_BYTES: u64 = 4389;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_da3bee65c72205c46f51ab123a4399369df1a0a1419c32fdcd350f16bd5f76ce";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        n = add_size(n, 4)?;
        n = add_size(n, 4)?;
        if self.encoding.len() > 128 || self.encoding.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.encoding.len())?;
        n = add_size(n, 1)?;
        n = add_size(n, 4)?;
        if self.data.len() > 4096 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.data {
            n = add_size(n, 1)?;
        }
        if n > 4389 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.header.write_fields(out, at);
        put(out, at, &self.height.to_le_bytes());
        put(out, at, &self.width.to_le_bytes());
        put(out, at, &(self.encoding.len() as u32).to_le_bytes());
        put(out, at, self.encoding.as_bytes());
        put(out, at, &self.is_bigendian.to_le_bytes());
        put(out, at, &self.step.to_le_bytes());
        put(out, at, &(self.data.len() as u32).to_le_bytes());
        for element in &self.data {
            put(out, at, &element.to_le_bytes());
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Std_msgsHeader::read_fields(bytes, at)?;
        value.header = decoded;
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.height = decoded;
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.width = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.encoding = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.is_bigendian = decoded;
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.step = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 4096 {
                return Err(invalid());
            }
            value.data = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
                value.data.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros1Sensor_msgsImage {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 4389 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 37 {
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
/// Complete bounded value for ROS1 pal_detection_msgs/AddTexturedObjectRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_detection_msgsAddTexturedObjectRequest {
    /// Declared img; canonical bounds are part of CODEC_IDENTITY.
    pub img: Ros1Sensor_msgsImage,
    /// Declared fullPathFileName; canonical bounds are part of CODEC_IDENTITY.
    pub fullPathFileName: String,
}
impl Default for Ros1Pal_detection_msgsAddTexturedObjectRequest {
    fn default() -> Self {
        Self {
            img: Default::default(),
            fullPathFileName: Default::default(),
        }
    }
}
impl Ros1Pal_detection_msgsAddTexturedObjectRequest {
    pub const MAX_WIRE_BYTES: usize = 4521;
    pub const CARTESIAN_WIRE_BYTES: u64 = 4521;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_0462d396de70e5db24dbbe0dab8c326f81120356b4d632fd3b56b433d89f616d";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.img.wire_size()?)?;
        if self.fullPathFileName.len() > 128 || self.fullPathFileName.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.fullPathFileName.len())?;
        if n > 4521 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.img.write_fields(out, at);
        put(out, at, &(self.fullPathFileName.len() as u32).to_le_bytes());
        put(out, at, self.fullPathFileName.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Sensor_msgsImage::read_fields(bytes, at)?;
        value.img = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.fullPathFileName = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_detection_msgsAddTexturedObjectRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 4521 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 41 {
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
/// Complete bounded value for ROS1 pal_detection_msgs/AddTexturedObjectResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_detection_msgsAddTexturedObjectResponse {
    /// Declared result; canonical bounds are part of CODEC_IDENTITY.
    pub result: bool,
}
impl Default for Ros1Pal_detection_msgsAddTexturedObjectResponse {
    fn default() -> Self {
        Self {
            result: Default::default(),
        }
    }
}
impl Ros1Pal_detection_msgsAddTexturedObjectResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_6eb1d5f37f64d4f141251e607533ebf037973dc704dbcf3e06d4fb8d2c86ee1d";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if n > 1 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &[u8::from(self.result)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.result = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_detection_msgsAddTexturedObjectResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 1 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 1 {
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
/// Complete bounded value for ROS1 pal_detection_msgs/ChangeObjectRecognizerModelRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_detection_msgsChangeObjectRecognizerModelRequest {
    /// Declared model_name; canonical bounds are part of CODEC_IDENTITY.
    pub model_name: String,
    /// Declared reset_desired_classes_param; canonical bounds are part of CODEC_IDENTITY.
    pub reset_desired_classes_param: bool,
}
impl Default for Ros1Pal_detection_msgsChangeObjectRecognizerModelRequest {
    fn default() -> Self {
        Self {
            model_name: Default::default(),
            reset_desired_classes_param: Default::default(),
        }
    }
}
impl Ros1Pal_detection_msgsChangeObjectRecognizerModelRequest {
    pub const MAX_WIRE_BYTES: usize = 133;
    pub const CARTESIAN_WIRE_BYTES: u64 = 133;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_d8071195e710803f51bfd07d74bd9450c5ce1ca21b464414ad806695692e0342";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.model_name.len() > 128 || self.model_name.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.model_name.len())?;
        n = add_size(n, 1)?;
        if n > 133 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.model_name.len() as u32).to_le_bytes());
        put(out, at, self.model_name.as_bytes());
        put(out, at, &[u8::from(self.reset_desired_classes_param)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.model_name = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.reset_desired_classes_param = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_detection_msgsChangeObjectRecognizerModelRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 133 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 5 {
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
/// Complete bounded value for ROS1 pal_detection_msgs/ChangeObjectRecognizerModelResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_detection_msgsChangeObjectRecognizerModelResponse {
    /// Declared status; canonical bounds are part of CODEC_IDENTITY.
    pub status: bool,
}
impl Default for Ros1Pal_detection_msgsChangeObjectRecognizerModelResponse {
    fn default() -> Self {
        Self {
            status: Default::default(),
        }
    }
}
impl Ros1Pal_detection_msgsChangeObjectRecognizerModelResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_cd5c9ca75201a47ae2eb04ec69ecea7762257b946bb2777a2c7224b51515775d";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if n > 1 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &[u8::from(self.status)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.status = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_detection_msgsChangeObjectRecognizerModelResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 1 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 1 {
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
/// Complete bounded value for ROS1 pal_detection_msgs/Detection2d.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_detection_msgsDetection2d {
    /// Declared x; canonical bounds are part of CODEC_IDENTITY.
    pub x: i64,
    /// Declared y; canonical bounds are part of CODEC_IDENTITY.
    pub y: i64,
    /// Declared width; canonical bounds are part of CODEC_IDENTITY.
    pub width: i64,
    /// Declared height; canonical bounds are part of CODEC_IDENTITY.
    pub height: i64,
}
impl Default for Ros1Pal_detection_msgsDetection2d {
    fn default() -> Self {
        Self {
            x: Default::default(),
            y: Default::default(),
            width: Default::default(),
            height: Default::default(),
        }
    }
}
impl Ros1Pal_detection_msgsDetection2d {
    pub const MAX_WIRE_BYTES: usize = 32;
    pub const CARTESIAN_WIRE_BYTES: u64 = 32;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_4f0e64fd7996b772586fce060823565b53147a7b29456c8a3b5f8fa48e81663e";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 8)?;
        n = add_size(n, 8)?;
        n = add_size(n, 8)?;
        n = add_size(n, 8)?;
        if n > 32 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.x.to_le_bytes());
        put(out, at, &self.y.to_le_bytes());
        put(out, at, &self.width.to_le_bytes());
        put(out, at, &self.height.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        value.x = decoded;
        let decoded = i64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        value.y = decoded;
        let decoded = i64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        value.width = decoded;
        let decoded = i64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        value.height = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_detection_msgsDetection2d {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
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
/// Complete bounded value for ROS1 pal_detection_msgs/Detections2d.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_detection_msgsDetections2d {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros1Std_msgsHeader,
    /// Declared detections; canonical bounds are part of CODEC_IDENTITY.
    pub detections: Vec<Ros1Pal_detection_msgsDetection2d>,
    /// Declared camera_pose; canonical bounds are part of CODEC_IDENTITY.
    pub camera_pose: Ros1Geometry_msgsTransformStamped,
}
impl Default for Ros1Pal_detection_msgsDetections2d {
    fn default() -> Self {
        Self {
            header: Default::default(),
            detections: Default::default(),
            camera_pose: Default::default(),
        }
    }
}
impl Ros1Pal_detection_msgsDetections2d {
    pub const MAX_WIRE_BYTES: usize = 608;
    pub const CARTESIAN_WIRE_BYTES: u64 = 608;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_0b21e2e5d47b2e4e46f46506940a84b3df0acef77d7e3c66716bc9cc7b0b8e04";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        if self.detections.len() > 4 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.detections {
            n = add_size(n, element.wire_size()?)?;
        }
        n = add_size(n, self.camera_pose.wire_size()?)?;
        if n > 608 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.header.write_fields(out, at);
        put(out, at, &(self.detections.len() as u32).to_le_bytes());
        for element in &self.detections {
            element.write_fields(out, at);
        }
        self.camera_pose.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Std_msgsHeader::read_fields(bytes, at)?;
        value.header = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 4 {
                return Err(invalid());
            }
            value.detections = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros1Pal_detection_msgsDetection2d::read_fields(bytes, at)?;
                value.detections.push(decoded);
            }
        }
        let decoded = Ros1Geometry_msgsTransformStamped::read_fields(bytes, at)?;
        value.camera_pose = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_detection_msgsDetections2d {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 608 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 96 {
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
/// Complete bounded value for ROS1 pal_detection_msgs/FaceDetection.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_detection_msgsFaceDetection {
    /// Declared x; canonical bounds are part of CODEC_IDENTITY.
    pub x: i32,
    /// Declared y; canonical bounds are part of CODEC_IDENTITY.
    pub y: i32,
    /// Declared width; canonical bounds are part of CODEC_IDENTITY.
    pub width: i32,
    /// Declared height; canonical bounds are part of CODEC_IDENTITY.
    pub height: i32,
    /// Declared eyesLocated; canonical bounds are part of CODEC_IDENTITY.
    pub eyesLocated: bool,
    /// Declared leftEyeX; canonical bounds are part of CODEC_IDENTITY.
    pub leftEyeX: i32,
    /// Declared leftEyeY; canonical bounds are part of CODEC_IDENTITY.
    pub leftEyeY: i32,
    /// Declared rightEyeX; canonical bounds are part of CODEC_IDENTITY.
    pub rightEyeX: i32,
    /// Declared rightEyeY; canonical bounds are part of CODEC_IDENTITY.
    pub rightEyeY: i32,
    /// Declared position; canonical bounds are part of CODEC_IDENTITY.
    pub position: Ros1Geometry_msgsPoint32,
    /// Declared name; canonical bounds are part of CODEC_IDENTITY.
    pub name: String,
    /// Declared confidence; canonical bounds are part of CODEC_IDENTITY.
    pub confidence: f32,
    /// Declared gender; canonical bounds are part of CODEC_IDENTITY.
    pub gender: String,
    /// Declared genderConfidence; canonical bounds are part of CODEC_IDENTITY.
    pub genderConfidence: f32,
    /// Declared expression; canonical bounds are part of CODEC_IDENTITY.
    pub expression: String,
    /// Declared expression_confidence; canonical bounds are part of CODEC_IDENTITY.
    pub expression_confidence: f32,
    /// Declared emotion_anger_confidence; canonical bounds are part of CODEC_IDENTITY.
    pub emotion_anger_confidence: f32,
    /// Declared emotion_disgust_confidence; canonical bounds are part of CODEC_IDENTITY.
    pub emotion_disgust_confidence: f32,
    /// Declared emotion_fear_confidence; canonical bounds are part of CODEC_IDENTITY.
    pub emotion_fear_confidence: f32,
    /// Declared emotion_happiness_confidence; canonical bounds are part of CODEC_IDENTITY.
    pub emotion_happiness_confidence: f32,
    /// Declared emotion_neutral_confidence; canonical bounds are part of CODEC_IDENTITY.
    pub emotion_neutral_confidence: f32,
    /// Declared emotion_sadness_confidence; canonical bounds are part of CODEC_IDENTITY.
    pub emotion_sadness_confidence: f32,
    /// Declared emotion_surprise_confidence; canonical bounds are part of CODEC_IDENTITY.
    pub emotion_surprise_confidence: f32,
}
impl Default for Ros1Pal_detection_msgsFaceDetection {
    fn default() -> Self {
        Self {
            x: Default::default(),
            y: Default::default(),
            width: Default::default(),
            height: Default::default(),
            eyesLocated: Default::default(),
            leftEyeX: Default::default(),
            leftEyeY: Default::default(),
            rightEyeX: Default::default(),
            rightEyeY: Default::default(),
            position: Default::default(),
            name: Default::default(),
            confidence: Default::default(),
            gender: Default::default(),
            genderConfidence: Default::default(),
            expression: Default::default(),
            expression_confidence: Default::default(),
            emotion_anger_confidence: Default::default(),
            emotion_disgust_confidence: Default::default(),
            emotion_fear_confidence: Default::default(),
            emotion_happiness_confidence: Default::default(),
            emotion_neutral_confidence: Default::default(),
            emotion_sadness_confidence: Default::default(),
            emotion_surprise_confidence: Default::default(),
        }
    }
}
impl Ros1Pal_detection_msgsFaceDetection {
    pub const MAX_WIRE_BYTES: usize = 481;
    pub const CARTESIAN_WIRE_BYTES: u64 = 481;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_792fe21dbe06a6a47493a66571ff9b324dba17447855965b2e4f3e79cd302395";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 4)?;
        n = add_size(n, 4)?;
        n = add_size(n, 4)?;
        n = add_size(n, 4)?;
        n = add_size(n, 1)?;
        n = add_size(n, 4)?;
        n = add_size(n, 4)?;
        n = add_size(n, 4)?;
        n = add_size(n, 4)?;
        n = add_size(n, self.position.wire_size()?)?;
        if self.name.len() > 128 || self.name.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.name.len())?;
        if !self.confidence.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if self.gender.len() > 128 || self.gender.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.gender.len())?;
        if !self.genderConfidence.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if self.expression.len() > 128 || self.expression.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.expression.len())?;
        if !self.expression_confidence.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.emotion_anger_confidence.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.emotion_disgust_confidence.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.emotion_fear_confidence.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.emotion_happiness_confidence.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.emotion_neutral_confidence.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.emotion_sadness_confidence.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.emotion_surprise_confidence.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if n > 481 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.x.to_le_bytes());
        put(out, at, &self.y.to_le_bytes());
        put(out, at, &self.width.to_le_bytes());
        put(out, at, &self.height.to_le_bytes());
        put(out, at, &[u8::from(self.eyesLocated)]);
        put(out, at, &self.leftEyeX.to_le_bytes());
        put(out, at, &self.leftEyeY.to_le_bytes());
        put(out, at, &self.rightEyeX.to_le_bytes());
        put(out, at, &self.rightEyeY.to_le_bytes());
        self.position.write_fields(out, at);
        put(out, at, &(self.name.len() as u32).to_le_bytes());
        put(out, at, self.name.as_bytes());
        put(out, at, &self.confidence.to_le_bytes());
        put(out, at, &(self.gender.len() as u32).to_le_bytes());
        put(out, at, self.gender.as_bytes());
        put(out, at, &self.genderConfidence.to_le_bytes());
        put(out, at, &(self.expression.len() as u32).to_le_bytes());
        put(out, at, self.expression.as_bytes());
        put(out, at, &self.expression_confidence.to_le_bytes());
        put(out, at, &self.emotion_anger_confidence.to_le_bytes());
        put(out, at, &self.emotion_disgust_confidence.to_le_bytes());
        put(out, at, &self.emotion_fear_confidence.to_le_bytes());
        put(out, at, &self.emotion_happiness_confidence.to_le_bytes());
        put(out, at, &self.emotion_neutral_confidence.to_le_bytes());
        put(out, at, &self.emotion_sadness_confidence.to_le_bytes());
        put(out, at, &self.emotion_surprise_confidence.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.x = decoded;
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.y = decoded;
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.width = decoded;
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.height = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.eyesLocated = decoded;
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.leftEyeX = decoded;
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.leftEyeY = decoded;
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.rightEyeX = decoded;
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.rightEyeY = decoded;
        let decoded = Ros1Geometry_msgsPoint32::read_fields(bytes, at)?;
        value.position = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.name = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.confidence = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.gender = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.genderConfidence = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.expression = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.expression_confidence = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.emotion_anger_confidence = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.emotion_disgust_confidence = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.emotion_fear_confidence = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.emotion_happiness_confidence = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.emotion_neutral_confidence = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.emotion_sadness_confidence = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.emotion_surprise_confidence = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_detection_msgsFaceDetection {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 481 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 97 {
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
/// Complete bounded value for ROS1 pal_detection_msgs/FaceDetections.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_detection_msgsFaceDetections {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros1Std_msgsHeader,
    /// Declared faces; canonical bounds are part of CODEC_IDENTITY.
    pub faces: Vec<Ros1Pal_detection_msgsFaceDetection>,
    /// Declared camera_pose; canonical bounds are part of CODEC_IDENTITY.
    pub camera_pose: Ros1Geometry_msgsTransformStamped,
}
impl Default for Ros1Pal_detection_msgsFaceDetections {
    fn default() -> Self {
        Self {
            header: Default::default(),
            faces: Default::default(),
            camera_pose: Default::default(),
        }
    }
}
impl Ros1Pal_detection_msgsFaceDetections {
    pub const MAX_WIRE_BYTES: usize = 2404;
    pub const CARTESIAN_WIRE_BYTES: u64 = 2404;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_ee4b1061b4a4d0bd25f5f2ae4725248e53c82181ab685036cc246100f6019a4b";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        if self.faces.len() > 4 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.faces {
            n = add_size(n, element.wire_size()?)?;
        }
        n = add_size(n, self.camera_pose.wire_size()?)?;
        if n > 2404 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.header.write_fields(out, at);
        put(out, at, &(self.faces.len() as u32).to_le_bytes());
        for element in &self.faces {
            element.write_fields(out, at);
        }
        self.camera_pose.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Std_msgsHeader::read_fields(bytes, at)?;
        value.header = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 4 {
                return Err(invalid());
            }
            value.faces = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros1Pal_detection_msgsFaceDetection::read_fields(bytes, at)?;
                value.faces.push(decoded);
            }
        }
        let decoded = Ros1Geometry_msgsTransformStamped::read_fields(bytes, at)?;
        value.camera_pose = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_detection_msgsFaceDetections {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 2404 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 96 {
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
/// Complete bounded value for ROS1 sensor_msgs/RegionOfInterest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Sensor_msgsRegionOfInterest {
    /// Declared x_offset; canonical bounds are part of CODEC_IDENTITY.
    pub x_offset: u32,
    /// Declared y_offset; canonical bounds are part of CODEC_IDENTITY.
    pub y_offset: u32,
    /// Declared height; canonical bounds are part of CODEC_IDENTITY.
    pub height: u32,
    /// Declared width; canonical bounds are part of CODEC_IDENTITY.
    pub width: u32,
    /// Declared do_rectify; canonical bounds are part of CODEC_IDENTITY.
    pub do_rectify: bool,
}
impl Default for Ros1Sensor_msgsRegionOfInterest {
    fn default() -> Self {
        Self {
            x_offset: Default::default(),
            y_offset: Default::default(),
            height: Default::default(),
            width: Default::default(),
            do_rectify: Default::default(),
        }
    }
}
impl Ros1Sensor_msgsRegionOfInterest {
    pub const MAX_WIRE_BYTES: usize = 17;
    pub const CARTESIAN_WIRE_BYTES: u64 = 17;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_28eb54e504fa3d32a4848f5b534e998656e34ce4fee49fd120b0fd729e569c86";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 4)?;
        n = add_size(n, 4)?;
        n = add_size(n, 4)?;
        n = add_size(n, 4)?;
        n = add_size(n, 1)?;
        if n > 17 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.x_offset.to_le_bytes());
        put(out, at, &self.y_offset.to_le_bytes());
        put(out, at, &self.height.to_le_bytes());
        put(out, at, &self.width.to_le_bytes());
        put(out, at, &[u8::from(self.do_rectify)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.x_offset = decoded;
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.y_offset = decoded;
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.height = decoded;
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.width = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.do_rectify = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Sensor_msgsRegionOfInterest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 17 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 17 {
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
/// Complete bounded value for ROS1 pal_detection_msgs/FaceThermalDetections.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_detection_msgsFaceThermalDetections {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros1Std_msgsHeader,
    /// Declared faces; canonical bounds are part of CODEC_IDENTITY.
    pub faces: Vec<Ros1Sensor_msgsRegionOfInterest>,
}
impl Default for Ros1Pal_detection_msgsFaceThermalDetections {
    fn default() -> Self {
        Self {
            header: Default::default(),
            faces: Default::default(),
        }
    }
}
impl Ros1Pal_detection_msgsFaceThermalDetections {
    pub const MAX_WIRE_BYTES: usize = 216;
    pub const CARTESIAN_WIRE_BYTES: u64 = 216;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_056b2da5537a5a7a7cb428e134dc11c22e271780146febf7af837a516fb9b07d";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        if self.faces.len() > 4 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.faces {
            n = add_size(n, element.wire_size()?)?;
        }
        if n > 216 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.header.write_fields(out, at);
        put(out, at, &(self.faces.len() as u32).to_le_bytes());
        for element in &self.faces {
            element.write_fields(out, at);
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Std_msgsHeader::read_fields(bytes, at)?;
        value.header = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 4 {
                return Err(invalid());
            }
            value.faces = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros1Sensor_msgsRegionOfInterest::read_fields(bytes, at)?;
                value.faces.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros1Pal_detection_msgsFaceThermalDetections {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 216 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 20 {
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
/// Complete bounded value for ROS1 pal_detection_msgs/Gesture.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_detection_msgsGesture {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros1Std_msgsHeader,
    /// Declared gestureId; canonical bounds are part of CODEC_IDENTITY.
    pub gestureId: String,
    /// Declared position3D; canonical bounds are part of CODEC_IDENTITY.
    pub position3D: Ros1Geometry_msgsPoint,
}
impl Default for Ros1Pal_detection_msgsGesture {
    fn default() -> Self {
        Self {
            header: Default::default(),
            gestureId: Default::default(),
            position3D: Default::default(),
        }
    }
}
impl Ros1Pal_detection_msgsGesture {
    pub const MAX_WIRE_BYTES: usize = 300;
    pub const CARTESIAN_WIRE_BYTES: u64 = 300;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_d9a3e3adffc40a24a70a967fa616ee81a8d21eb08d7656830e0915cd0945ac38";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        if self.gestureId.len() > 128 || self.gestureId.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.gestureId.len())?;
        n = add_size(n, self.position3D.wire_size()?)?;
        if n > 300 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.header.write_fields(out, at);
        put(out, at, &(self.gestureId.len() as u32).to_le_bytes());
        put(out, at, self.gestureId.as_bytes());
        self.position3D.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Std_msgsHeader::read_fields(bytes, at)?;
        value.header = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.gestureId = decoded;
        let decoded = Ros1Geometry_msgsPoint::read_fields(bytes, at)?;
        value.position3D = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_detection_msgsGesture {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 300 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 44 {
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
/// Complete bounded value for ROS1 pal_detection_msgs/LegDetections.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_detection_msgsLegDetections {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros1Std_msgsHeader,
    /// Declared position3D; canonical bounds are part of CODEC_IDENTITY.
    pub position3D: Vec<Ros1Geometry_msgsPoint>,
    /// Declared laser_pose; canonical bounds are part of CODEC_IDENTITY.
    pub laser_pose: Ros1Geometry_msgsTransformStamped,
}
impl Default for Ros1Pal_detection_msgsLegDetections {
    fn default() -> Self {
        Self {
            header: Default::default(),
            position3D: Default::default(),
            laser_pose: Default::default(),
        }
    }
}
impl Ros1Pal_detection_msgsLegDetections {
    pub const MAX_WIRE_BYTES: usize = 576;
    pub const CARTESIAN_WIRE_BYTES: u64 = 576;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_eaaabdd63d786de0b4bf51199a211f86024e9f835ede77f9bcf92dc77f67ac1d";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        if self.position3D.len() > 4 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.position3D {
            n = add_size(n, element.wire_size()?)?;
        }
        n = add_size(n, self.laser_pose.wire_size()?)?;
        if n > 576 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.header.write_fields(out, at);
        put(out, at, &(self.position3D.len() as u32).to_le_bytes());
        for element in &self.position3D {
            element.write_fields(out, at);
        }
        self.laser_pose.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Std_msgsHeader::read_fields(bytes, at)?;
        value.header = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 4 {
                return Err(invalid());
            }
            value.position3D = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros1Geometry_msgsPoint::read_fields(bytes, at)?;
                value.position3D.push(decoded);
            }
        }
        let decoded = Ros1Geometry_msgsTransformStamped::read_fields(bytes, at)?;
        value.laser_pose = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_detection_msgsLegDetections {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 576 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 96 {
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
/// Complete bounded value for ROS1 pal_detection_msgs/Obstacle.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_detection_msgsObstacle {
    /// Declared id; canonical bounds are part of CODEC_IDENTITY.
    pub id: i64,
    /// Declared position; canonical bounds are part of CODEC_IDENTITY.
    pub position: Ros1Geometry_msgsPoint,
    /// Declared position_covariance; canonical bounds are part of CODEC_IDENTITY.
    pub position_covariance: [f64; 4],
    /// Declared width; canonical bounds are part of CODEC_IDENTITY.
    pub width: f32,
    /// Declared height; canonical bounds are part of CODEC_IDENTITY.
    pub height: f32,
}
impl Default for Ros1Pal_detection_msgsObstacle {
    fn default() -> Self {
        Self {
            id: Default::default(),
            position: Default::default(),
            position_covariance: core::array::from_fn(|_| Default::default()),
            width: Default::default(),
            height: Default::default(),
        }
    }
}
impl Ros1Pal_detection_msgsObstacle {
    pub const MAX_WIRE_BYTES: usize = 72;
    pub const CARTESIAN_WIRE_BYTES: u64 = 72;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_ebc85fb238f48ed8d9d595afd92f5f28c4ead850154e350733e09ec1d407c661";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 8)?;
        n = add_size(n, self.position.wire_size()?)?;
        for element in &self.position_covariance {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if !self.width.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.height.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if n > 72 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.id.to_le_bytes());
        self.position.write_fields(out, at);
        for element in &self.position_covariance {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.width.to_le_bytes());
        put(out, at, &self.height.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        value.id = decoded;
        let decoded = Ros1Geometry_msgsPoint::read_fields(bytes, at)?;
        value.position = decoded;
        {
            let count = 4usize;
            if count > 4 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.position_covariance[i] = decoded;
            }
        }
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.width = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.height = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_detection_msgsObstacle {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 72 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 72 {
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
/// Complete bounded value for ROS1 pal_detection_msgs/Obstacles.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_detection_msgsObstacles {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros1Std_msgsHeader,
    /// Declared obstacles; canonical bounds are part of CODEC_IDENTITY.
    pub obstacles: Vec<Ros1Pal_detection_msgsObstacle>,
}
impl Default for Ros1Pal_detection_msgsObstacles {
    fn default() -> Self {
        Self {
            header: Default::default(),
            obstacles: Default::default(),
        }
    }
}
impl Ros1Pal_detection_msgsObstacles {
    pub const MAX_WIRE_BYTES: usize = 436;
    pub const CARTESIAN_WIRE_BYTES: u64 = 436;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_4dba9077149d1e00d54b01031f5de9ef885904c00e2ec10b262302fccb86fe7e";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        if self.obstacles.len() > 4 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.obstacles {
            n = add_size(n, element.wire_size()?)?;
        }
        if n > 436 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.header.write_fields(out, at);
        put(out, at, &(self.obstacles.len() as u32).to_le_bytes());
        for element in &self.obstacles {
            element.write_fields(out, at);
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Std_msgsHeader::read_fields(bytes, at)?;
        value.header = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 4 {
                return Err(invalid());
            }
            value.obstacles = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros1Pal_detection_msgsObstacle::read_fields(bytes, at)?;
                value.obstacles.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros1Pal_detection_msgsObstacles {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 436 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 20 {
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
/// Complete bounded value for ROS1 pal_detection_msgs/PersonDetection.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_detection_msgsPersonDetection {
    /// Declared full_body; canonical bounds are part of CODEC_IDENTITY.
    pub full_body: Ros1Pal_detection_msgsDetection2d,
    /// Declared face; canonical bounds are part of CODEC_IDENTITY.
    pub face: Ros1Pal_detection_msgsFaceDetection,
    /// Declared legs; canonical bounds are part of CODEC_IDENTITY.
    pub legs: Ros1Pal_detection_msgsLegDetections,
    /// Declared position3D; canonical bounds are part of CODEC_IDENTITY.
    pub position3D: Ros1Geometry_msgsPointStamped,
}
impl Default for Ros1Pal_detection_msgsPersonDetection {
    fn default() -> Self {
        Self {
            full_body: Default::default(),
            face: Default::default(),
            legs: Default::default(),
            position3D: Default::default(),
        }
    }
}
impl Ros1Pal_detection_msgsPersonDetection {
    pub const MAX_WIRE_BYTES: usize = 1257;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1257;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_4da91c014135c4fc077060bdfdde36f82e41d45729fe56642b33b83157d07853";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.full_body.wire_size()?)?;
        n = add_size(n, self.face.wire_size()?)?;
        n = add_size(n, self.legs.wire_size()?)?;
        n = add_size(n, self.position3D.wire_size()?)?;
        if n > 1257 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.full_body.write_fields(out, at);
        self.face.write_fields(out, at);
        self.legs.write_fields(out, at);
        self.position3D.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Pal_detection_msgsDetection2d::read_fields(bytes, at)?;
        value.full_body = decoded;
        let decoded = Ros1Pal_detection_msgsFaceDetection::read_fields(bytes, at)?;
        value.face = decoded;
        let decoded = Ros1Pal_detection_msgsLegDetections::read_fields(bytes, at)?;
        value.legs = decoded;
        let decoded = Ros1Geometry_msgsPointStamped::read_fields(bytes, at)?;
        value.position3D = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_detection_msgsPersonDetection {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 1257 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 265 {
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
/// Complete bounded value for ROS1 pal_detection_msgs/PersonDetections.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_detection_msgsPersonDetections {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros1Std_msgsHeader,
    /// Declared persons; canonical bounds are part of CODEC_IDENTITY.
    pub persons: Vec<Ros1Pal_detection_msgsPersonDetection>,
    /// Declared camera_pose; canonical bounds are part of CODEC_IDENTITY.
    pub camera_pose: Ros1Geometry_msgsTransformStamped,
}
impl Default for Ros1Pal_detection_msgsPersonDetections {
    fn default() -> Self {
        Self {
            header: Default::default(),
            persons: Default::default(),
            camera_pose: Default::default(),
        }
    }
}
impl Ros1Pal_detection_msgsPersonDetections {
    pub const MAX_WIRE_BYTES: usize = 5508;
    pub const CARTESIAN_WIRE_BYTES: u64 = 5508;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_cafbf2a5df82057119e9638012e379e0126c0cb951ca159747ebe69c1ed0fd91";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        if self.persons.len() > 4 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.persons {
            n = add_size(n, element.wire_size()?)?;
        }
        n = add_size(n, self.camera_pose.wire_size()?)?;
        if n > 5508 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.header.write_fields(out, at);
        put(out, at, &(self.persons.len() as u32).to_le_bytes());
        for element in &self.persons {
            element.write_fields(out, at);
        }
        self.camera_pose.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Std_msgsHeader::read_fields(bytes, at)?;
        value.header = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 4 {
                return Err(invalid());
            }
            value.persons = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros1Pal_detection_msgsPersonDetection::read_fields(bytes, at)?;
                value.persons.push(decoded);
            }
        }
        let decoded = Ros1Geometry_msgsTransformStamped::read_fields(bytes, at)?;
        value.camera_pose = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_detection_msgsPersonDetections {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 5508 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 96 {
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
/// Complete bounded value for ROS1 sensor_msgs/CompressedImage.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Sensor_msgsCompressedImage {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros1Std_msgsHeader,
    /// Declared format; canonical bounds are part of CODEC_IDENTITY.
    pub format: String,
    /// Declared data; canonical bounds are part of CODEC_IDENTITY.
    pub data: Vec<u8>,
}
impl Default for Ros1Sensor_msgsCompressedImage {
    fn default() -> Self {
        Self {
            header: Default::default(),
            format: Default::default(),
            data: Default::default(),
        }
    }
}
impl Ros1Sensor_msgsCompressedImage {
    pub const MAX_WIRE_BYTES: usize = 4376;
    pub const CARTESIAN_WIRE_BYTES: u64 = 4376;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_c72a32a46b8b10037ccaa32f7c5d403f908eed838df86faf2c7d36344cea958d";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        if self.format.len() > 128 || self.format.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.format.len())?;
        if self.data.len() > 4096 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.data {
            n = add_size(n, 1)?;
        }
        if n > 4376 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.header.write_fields(out, at);
        put(out, at, &(self.format.len() as u32).to_le_bytes());
        put(out, at, self.format.as_bytes());
        put(out, at, &(self.data.len() as u32).to_le_bytes());
        for element in &self.data {
            put(out, at, &element.to_le_bytes());
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Std_msgsHeader::read_fields(bytes, at)?;
        value.header = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.format = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 4096 {
                return Err(invalid());
            }
            value.data = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
                value.data.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros1Sensor_msgsCompressedImage {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 4376 {
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
/// Complete bounded value for ROS1 pal_detection_msgs/RecognizeObjectsGoal.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_detection_msgsRecognizeObjectsGoal {
    /// Declared input_image; canonical bounds are part of CODEC_IDENTITY.
    pub input_image: Ros1Sensor_msgsCompressedImage,
}
impl Default for Ros1Pal_detection_msgsRecognizeObjectsGoal {
    fn default() -> Self {
        Self {
            input_image: Default::default(),
        }
    }
}
impl Ros1Pal_detection_msgsRecognizeObjectsGoal {
    pub const MAX_WIRE_BYTES: usize = 4376;
    pub const CARTESIAN_WIRE_BYTES: u64 = 4376;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_9d87bc6c703c50a0b900a7d4bdcefeda5363c5b2f9affe4e9466a3b4f6dfc585";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.input_image.wire_size()?)?;
        if n > 4376 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.input_image.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Sensor_msgsCompressedImage::read_fields(bytes, at)?;
        value.input_image = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_detection_msgsRecognizeObjectsGoal {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 4376 {
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
/// Complete bounded value for ROS1 pal_detection_msgs/RecognizedObject.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_detection_msgsRecognizedObject {
    /// Declared object_class; canonical bounds are part of CODEC_IDENTITY.
    pub object_class: String,
    /// Declared confidence; canonical bounds are part of CODEC_IDENTITY.
    pub confidence: f32,
    /// Declared bounding_box; canonical bounds are part of CODEC_IDENTITY.
    pub bounding_box: Ros1Sensor_msgsRegionOfInterest,
}
impl Default for Ros1Pal_detection_msgsRecognizedObject {
    fn default() -> Self {
        Self {
            object_class: Default::default(),
            confidence: Default::default(),
            bounding_box: Default::default(),
        }
    }
}
impl Ros1Pal_detection_msgsRecognizedObject {
    pub const MAX_WIRE_BYTES: usize = 153;
    pub const CARTESIAN_WIRE_BYTES: u64 = 153;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_36cc36b8ff12ed25b3feadadc7e58a76c1e9c57aaa68b2a295c341c5075203fd";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.object_class.len() > 128 || self.object_class.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.object_class.len())?;
        if !self.confidence.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.bounding_box.wire_size()?)?;
        if n > 153 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.object_class.len() as u32).to_le_bytes());
        put(out, at, self.object_class.as_bytes());
        put(out, at, &self.confidence.to_le_bytes());
        self.bounding_box.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.object_class = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.confidence = decoded;
        let decoded = Ros1Sensor_msgsRegionOfInterest::read_fields(bytes, at)?;
        value.bounding_box = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_detection_msgsRecognizedObject {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 153 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 25 {
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
/// Complete bounded value for ROS1 pal_detection_msgs/RecognizedObjectArray.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_detection_msgsRecognizedObjectArray {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros1Std_msgsHeader,
    /// Declared objects; canonical bounds are part of CODEC_IDENTITY.
    pub objects: Vec<Ros1Pal_detection_msgsRecognizedObject>,
}
impl Default for Ros1Pal_detection_msgsRecognizedObjectArray {
    fn default() -> Self {
        Self {
            header: Default::default(),
            objects: Default::default(),
        }
    }
}
impl Ros1Pal_detection_msgsRecognizedObjectArray {
    pub const MAX_WIRE_BYTES: usize = 760;
    pub const CARTESIAN_WIRE_BYTES: u64 = 760;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_8d781116572e1ba9b5cc79b9d4ae844c64e3ef56a274da3de56cc2400baa51e0";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        if self.objects.len() > 4 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.objects {
            n = add_size(n, element.wire_size()?)?;
        }
        if n > 760 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.header.write_fields(out, at);
        put(out, at, &(self.objects.len() as u32).to_le_bytes());
        for element in &self.objects {
            element.write_fields(out, at);
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Std_msgsHeader::read_fields(bytes, at)?;
        value.header = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 4 {
                return Err(invalid());
            }
            value.objects = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros1Pal_detection_msgsRecognizedObject::read_fields(bytes, at)?;
                value.objects.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros1Pal_detection_msgsRecognizedObjectArray {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 760 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 20 {
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
/// Complete bounded value for ROS1 pal_detection_msgs/RecognizeObjectsResult.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_detection_msgsRecognizeObjectsResult {
    /// Declared image; canonical bounds are part of CODEC_IDENTITY.
    pub image: Ros1Sensor_msgsCompressedImage,
    /// Declared num_detections; canonical bounds are part of CODEC_IDENTITY.
    pub num_detections: i16,
    /// Declared recognized_objects; canonical bounds are part of CODEC_IDENTITY.
    pub recognized_objects: Ros1Pal_detection_msgsRecognizedObjectArray,
}
impl Default for Ros1Pal_detection_msgsRecognizeObjectsResult {
    fn default() -> Self {
        Self {
            image: Default::default(),
            num_detections: Default::default(),
            recognized_objects: Default::default(),
        }
    }
}
impl Ros1Pal_detection_msgsRecognizeObjectsResult {
    pub const MAX_WIRE_BYTES: usize = 5138;
    pub const CARTESIAN_WIRE_BYTES: u64 = 5138;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_1d30540a71461481094e70b11d19c4a327881fd6ed81689bc948b3de5853b8da";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.image.wire_size()?)?;
        n = add_size(n, 2)?;
        n = add_size(n, self.recognized_objects.wire_size()?)?;
        if n > 5138 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.image.write_fields(out, at);
        put(out, at, &self.num_detections.to_le_bytes());
        self.recognized_objects.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Sensor_msgsCompressedImage::read_fields(bytes, at)?;
        value.image = decoded;
        let decoded = i16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.num_detections = decoded;
        let decoded = Ros1Pal_detection_msgsRecognizedObjectArray::read_fields(bytes, at)?;
        value.recognized_objects = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_detection_msgsRecognizeObjectsResult {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 5138 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 46 {
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
/// Complete bounded value for ROS1 pal_detection_msgs/RecognizeObjectsFeedback.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_detection_msgsRecognizeObjectsFeedback {}
impl Default for Ros1Pal_detection_msgsRecognizeObjectsFeedback {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Pal_detection_msgsRecognizeObjectsFeedback {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_c18fdb9db683f1ae2a17cc0a7cdc2bcc3ca060ef0c05cacb4defc35af0829f94";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if n > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {}
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        Ok(value)
    }
}
impl Canonical for Ros1Pal_detection_msgsRecognizeObjectsFeedback {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 0 {
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
/// Complete bounded value for ROS1 pal_detection_msgs/RecognizedActions.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_detection_msgsRecognizedActions {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros1Std_msgsHeader,
    /// Declared action_name; canonical bounds are part of CODEC_IDENTITY.
    pub action_name: Vec<String>,
    /// Declared u; canonical bounds are part of CODEC_IDENTITY.
    pub u: Vec<i64>,
    /// Declared v; canonical bounds are part of CODEC_IDENTITY.
    pub v: Vec<i64>,
}
impl Default for Ros1Pal_detection_msgsRecognizedActions {
    fn default() -> Self {
        Self {
            header: Default::default(),
            action_name: Default::default(),
            u: Default::default(),
            v: Default::default(),
        }
    }
}
impl Ros1Pal_detection_msgsRecognizedActions {
    pub const MAX_WIRE_BYTES: usize = 2524;
    pub const CARTESIAN_WIRE_BYTES: u64 = 2524;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_b061282e0a4039af635d355d554c8f93af760ff116dfae31f36535b8b9378c33";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        if self.action_name.len() > 16 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.action_name {
            if element.len() > 128 || element.as_bytes().contains(&0) {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
            n = add_size(n, element.len())?;
        }
        if self.u.len() > 16 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.u {
            n = add_size(n, 8)?;
        }
        if self.v.len() > 16 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.v {
            n = add_size(n, 8)?;
        }
        if n > 2524 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.header.write_fields(out, at);
        put(out, at, &(self.action_name.len() as u32).to_le_bytes());
        for element in &self.action_name {
            put(out, at, &(element.len() as u32).to_le_bytes());
            put(out, at, element.as_bytes());
        }
        put(out, at, &(self.u.len() as u32).to_le_bytes());
        for element in &self.u {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &(self.v.len() as u32).to_le_bytes());
        for element in &self.v {
            put(out, at, &element.to_le_bytes());
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Std_msgsHeader::read_fields(bytes, at)?;
        value.header = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 16 {
                return Err(invalid());
            }
            value.action_name = Vec::with_capacity(count);
            for i in 0..count {
                let size = read_count(bytes, at)?;
                if size > 128 {
                    return Err(invalid());
                }
                let raw = take(bytes, at, size)?;
                if raw.contains(&0) {
                    return Err(invalid());
                }
                let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
                value.action_name.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 16 {
                return Err(invalid());
            }
            value.u = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    i64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                value.u.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 16 {
                return Err(invalid());
            }
            value.v = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    i64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                value.v.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros1Pal_detection_msgsRecognizedActions {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 2524 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 28 {
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
/// Complete bounded value for ROS1 pal_detection_msgs/RecognizerRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_detection_msgsRecognizerRequest {
    /// Declared enabled; canonical bounds are part of CODEC_IDENTITY.
    pub enabled: bool,
    /// Declared minConfidence; canonical bounds are part of CODEC_IDENTITY.
    pub minConfidence: f32,
}
impl Default for Ros1Pal_detection_msgsRecognizerRequest {
    fn default() -> Self {
        Self {
            enabled: Default::default(),
            minConfidence: Default::default(),
        }
    }
}
impl Ros1Pal_detection_msgsRecognizerRequest {
    pub const MAX_WIRE_BYTES: usize = 5;
    pub const CARTESIAN_WIRE_BYTES: u64 = 5;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_0d3ff43e5e851b33f710c9477383884c1db45971e4959df5892abff59fe29f55";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if !self.minConfidence.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if n > 5 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &[u8::from(self.enabled)]);
        put(out, at, &self.minConfidence.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.enabled = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.minConfidence = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_detection_msgsRecognizerRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 5 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 5 {
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
/// Complete bounded value for ROS1 pal_detection_msgs/RecognizerResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_detection_msgsRecognizerResponse {}
impl Default for Ros1Pal_detection_msgsRecognizerResponse {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Pal_detection_msgsRecognizerResponse {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_604e61f18d602f79b4e5a4145530ded34ac47d7a0ed97185c31457cef365935a";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if n > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {}
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        Ok(value)
    }
}
impl Canonical for Ros1Pal_detection_msgsRecognizerResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 0 {
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
/// Complete bounded value for ROS1 pal_detection_msgs/RotatedDetection2d.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_detection_msgsRotatedDetection2d {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros1Std_msgsHeader,
    /// Declared x; canonical bounds are part of CODEC_IDENTITY.
    pub x: Vec<i64>,
    /// Declared y; canonical bounds are part of CODEC_IDENTITY.
    pub y: Vec<i64>,
}
impl Default for Ros1Pal_detection_msgsRotatedDetection2d {
    fn default() -> Self {
        Self {
            header: Default::default(),
            x: Default::default(),
            y: Default::default(),
        }
    }
}
impl Ros1Pal_detection_msgsRotatedDetection2d {
    pub const MAX_WIRE_BYTES: usize = 408;
    pub const CARTESIAN_WIRE_BYTES: u64 = 408;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_2f22137d0171356fffb61ee8f668d07f90deadad0f900a2aa83ee0edfde0e52d";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        if self.x.len() > 16 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.x {
            n = add_size(n, 8)?;
        }
        if self.y.len() > 16 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.y {
            n = add_size(n, 8)?;
        }
        if n > 408 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.header.write_fields(out, at);
        put(out, at, &(self.x.len() as u32).to_le_bytes());
        for element in &self.x {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &(self.y.len() as u32).to_le_bytes());
        for element in &self.y {
            put(out, at, &element.to_le_bytes());
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Std_msgsHeader::read_fields(bytes, at)?;
        value.header = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 16 {
                return Err(invalid());
            }
            value.x = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    i64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                value.x.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 16 {
                return Err(invalid());
            }
            value.y = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    i64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                value.y.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros1Pal_detection_msgsRotatedDetection2d {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 408 {
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
/// Complete bounded value for ROS1 pal_detection_msgs/SelectTexturedObjectRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_detection_msgsSelectTexturedObjectRequest {
    /// Declared imageFullPathFileName; canonical bounds are part of CODEC_IDENTITY.
    pub imageFullPathFileName: String,
    /// Declared width; canonical bounds are part of CODEC_IDENTITY.
    pub width: f64,
    /// Declared height; canonical bounds are part of CODEC_IDENTITY.
    pub height: f64,
}
impl Default for Ros1Pal_detection_msgsSelectTexturedObjectRequest {
    fn default() -> Self {
        Self {
            imageFullPathFileName: Default::default(),
            width: Default::default(),
            height: Default::default(),
        }
    }
}
impl Ros1Pal_detection_msgsSelectTexturedObjectRequest {
    pub const MAX_WIRE_BYTES: usize = 148;
    pub const CARTESIAN_WIRE_BYTES: u64 = 148;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_866b10e9fcb4e51c9aa5f5a9b7c9c36cbef544fd685f3cfd77de8a3b759e1004";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.imageFullPathFileName.len() > 128
            || self.imageFullPathFileName.as_bytes().contains(&0)
        {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.imageFullPathFileName.len())?;
        if !self.width.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.height.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if n > 148 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(
            out,
            at,
            &(self.imageFullPathFileName.len() as u32).to_le_bytes(),
        );
        put(out, at, self.imageFullPathFileName.as_bytes());
        put(out, at, &self.width.to_le_bytes());
        put(out, at, &self.height.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.imageFullPathFileName = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.width = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.height = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_detection_msgsSelectTexturedObjectRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 148 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 20 {
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
/// Complete bounded value for ROS1 pal_detection_msgs/SelectTexturedObjectResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_detection_msgsSelectTexturedObjectResponse {
    /// Declared result; canonical bounds are part of CODEC_IDENTITY.
    pub result: bool,
}
impl Default for Ros1Pal_detection_msgsSelectTexturedObjectResponse {
    fn default() -> Self {
        Self {
            result: Default::default(),
        }
    }
}
impl Ros1Pal_detection_msgsSelectTexturedObjectResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_98857d1de78a0b8014ea0dfd0597f41b908869229b1ef9d815a983571180db22";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if n > 1 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &[u8::from(self.result)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.result = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_detection_msgsSelectTexturedObjectResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 1 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 1 {
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
/// Complete bounded value for ROS1 pal_detection_msgs/SetDatabaseRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_detection_msgsSetDatabaseRequest {
    /// Declared databaseName; canonical bounds are part of CODEC_IDENTITY.
    pub databaseName: String,
    /// Declared purgeAll; canonical bounds are part of CODEC_IDENTITY.
    pub purgeAll: bool,
}
impl Default for Ros1Pal_detection_msgsSetDatabaseRequest {
    fn default() -> Self {
        Self {
            databaseName: Default::default(),
            purgeAll: Default::default(),
        }
    }
}
impl Ros1Pal_detection_msgsSetDatabaseRequest {
    pub const MAX_WIRE_BYTES: usize = 133;
    pub const CARTESIAN_WIRE_BYTES: u64 = 133;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_fa4b3a519fcae8b8ac43d6e764203d720939a001c7f572e43e03c2f64904308b";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.databaseName.len() > 128 || self.databaseName.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.databaseName.len())?;
        n = add_size(n, 1)?;
        if n > 133 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.databaseName.len() as u32).to_le_bytes());
        put(out, at, self.databaseName.as_bytes());
        put(out, at, &[u8::from(self.purgeAll)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.databaseName = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.purgeAll = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_detection_msgsSetDatabaseRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 133 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 5 {
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
/// Complete bounded value for ROS1 pal_detection_msgs/SetDatabaseResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_detection_msgsSetDatabaseResponse {}
impl Default for Ros1Pal_detection_msgsSetDatabaseResponse {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Pal_detection_msgsSetDatabaseResponse {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_31307d8d81296f69a5bb7dbd54bc10aea47a41b1d1458b6d5451d53bdc2f9b46";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if n > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {}
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        Ok(value)
    }
}
impl Canonical for Ros1Pal_detection_msgsSetDatabaseResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 0 {
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
/// Complete bounded value for ROS1 pal_detection_msgs/StartEnrollmentRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_detection_msgsStartEnrollmentRequest {
    /// Declared name; canonical bounds are part of CODEC_IDENTITY.
    pub name: String,
}
impl Default for Ros1Pal_detection_msgsStartEnrollmentRequest {
    fn default() -> Self {
        Self {
            name: Default::default(),
        }
    }
}
impl Ros1Pal_detection_msgsStartEnrollmentRequest {
    pub const MAX_WIRE_BYTES: usize = 132;
    pub const CARTESIAN_WIRE_BYTES: u64 = 132;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_d1175a40ec4050b7d53f0929d9fb9ca6d33155c6df2295082e159db96e2fa7d8";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.name.len() > 128 || self.name.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.name.len())?;
        if n > 132 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.name.len() as u32).to_le_bytes());
        put(out, at, self.name.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.name = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_detection_msgsStartEnrollmentRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 132 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 4 {
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
/// Complete bounded value for ROS1 pal_detection_msgs/StartEnrollmentResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_detection_msgsStartEnrollmentResponse {
    /// Declared result; canonical bounds are part of CODEC_IDENTITY.
    pub result: bool,
}
impl Default for Ros1Pal_detection_msgsStartEnrollmentResponse {
    fn default() -> Self {
        Self {
            result: Default::default(),
        }
    }
}
impl Ros1Pal_detection_msgsStartEnrollmentResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_7d24b04c596d75db09309a7244e275e5980344aaf020f91a44bef100927d5b62";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if n > 1 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &[u8::from(self.result)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.result = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_detection_msgsStartEnrollmentResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 1 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 1 {
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
/// Complete bounded value for ROS1 pal_detection_msgs/StopEnrollmentRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_detection_msgsStopEnrollmentRequest {}
impl Default for Ros1Pal_detection_msgsStopEnrollmentRequest {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Pal_detection_msgsStopEnrollmentRequest {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_627511d9388c67421ccbd8f1928ec5a7e87ad1cc19f0e6b69b4be089ea69d3df";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if n > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {}
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        Ok(value)
    }
}
impl Canonical for Ros1Pal_detection_msgsStopEnrollmentRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 0 {
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
/// Complete bounded value for ROS1 pal_detection_msgs/StopEnrollmentResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_detection_msgsStopEnrollmentResponse {
    /// Declared enrollment_ok; canonical bounds are part of CODEC_IDENTITY.
    pub enrollment_ok: bool,
    /// Declared numFacesEnrolled; canonical bounds are part of CODEC_IDENTITY.
    pub numFacesEnrolled: i32,
    /// Declared error_msg; canonical bounds are part of CODEC_IDENTITY.
    pub error_msg: String,
}
impl Default for Ros1Pal_detection_msgsStopEnrollmentResponse {
    fn default() -> Self {
        Self {
            enrollment_ok: Default::default(),
            numFacesEnrolled: Default::default(),
            error_msg: Default::default(),
        }
    }
}
impl Ros1Pal_detection_msgsStopEnrollmentResponse {
    pub const MAX_WIRE_BYTES: usize = 137;
    pub const CARTESIAN_WIRE_BYTES: u64 = 137;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_30384a8e564b227756bc3e778edf7d0a0b60440baf8e966352600b15b1a9a1aa";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        n = add_size(n, 4)?;
        if self.error_msg.len() > 128 || self.error_msg.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.error_msg.len())?;
        if n > 137 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &[u8::from(self.enrollment_ok)]);
        put(out, at, &self.numFacesEnrolled.to_le_bytes());
        put(out, at, &(self.error_msg.len() as u32).to_le_bytes());
        put(out, at, self.error_msg.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.enrollment_ok = decoded;
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.numFacesEnrolled = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.error_msg = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_detection_msgsStopEnrollmentResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 137 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 9 {
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
/// Complete bounded value for ROS1 pal_detection_msgs/TexturedObjectDetection.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_detection_msgsTexturedObjectDetection {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros1Std_msgsHeader,
    /// Declared img; canonical bounds are part of CODEC_IDENTITY.
    pub img: Ros1Sensor_msgsCompressedImage,
    /// Declared roi; canonical bounds are part of CODEC_IDENTITY.
    pub roi: Ros1Pal_detection_msgsRotatedDetection2d,
}
impl Default for Ros1Pal_detection_msgsTexturedObjectDetection {
    fn default() -> Self {
        Self {
            header: Default::default(),
            img: Default::default(),
            roi: Default::default(),
        }
    }
}
impl Ros1Pal_detection_msgsTexturedObjectDetection {
    pub const MAX_WIRE_BYTES: usize = 4928;
    pub const CARTESIAN_WIRE_BYTES: u64 = 4928;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_4a13d12a14db4a3f8883d2bd66317d4b50bd2246fde7de5cdc966d4d35cff204";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        n = add_size(n, self.img.wire_size()?)?;
        n = add_size(n, self.roi.wire_size()?)?;
        if n > 4928 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.header.write_fields(out, at);
        self.img.write_fields(out, at);
        self.roi.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Std_msgsHeader::read_fields(bytes, at)?;
        value.header = decoded;
        let decoded = Ros1Sensor_msgsCompressedImage::read_fields(bytes, at)?;
        value.img = decoded;
        let decoded = Ros1Pal_detection_msgsRotatedDetection2d::read_fields(bytes, at)?;
        value.roi = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_detection_msgsTexturedObjectDetection {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 4928 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 64 {
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
/// Complete bounded value for ROS1 pal_detection_msgs/WaveDetection.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_detection_msgsWaveDetection {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros1Std_msgsHeader,
    /// Declared wave; canonical bounds are part of CODEC_IDENTITY.
    pub wave: bool,
    /// Declared u; canonical bounds are part of CODEC_IDENTITY.
    pub u: i8,
    /// Declared v; canonical bounds are part of CODEC_IDENTITY.
    pub v: i8,
}
impl Default for Ros1Pal_detection_msgsWaveDetection {
    fn default() -> Self {
        Self {
            header: Default::default(),
            wave: Default::default(),
            u: Default::default(),
            v: Default::default(),
        }
    }
}
impl Ros1Pal_detection_msgsWaveDetection {
    pub const MAX_WIRE_BYTES: usize = 147;
    pub const CARTESIAN_WIRE_BYTES: u64 = 147;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_9c121f0ad95f8e28a13b1b7b80c32f0cea55b737edccf63fe92908ed806db52e";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        if n > 147 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.header.write_fields(out, at);
        put(out, at, &[u8::from(self.wave)]);
        put(out, at, &self.u.to_le_bytes());
        put(out, at, &self.v.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Std_msgsHeader::read_fields(bytes, at)?;
        value.header = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.wave = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.u = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.v = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_detection_msgsWaveDetection {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 147 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 19 {
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
/// Complete bounded value for ROS1 pal_interaction_msgs/ASRActivation.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_interaction_msgsASRActivation {
    /// Declared action; canonical bounds are part of CODEC_IDENTITY.
    pub action: i8,
}
impl Default for Ros1Pal_interaction_msgsASRActivation {
    fn default() -> Self {
        Self {
            action: Default::default(),
        }
    }
}
impl Ros1Pal_interaction_msgsASRActivation {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_30f9e3f26cd145518ec1957bab9ca45f4cbe4ac25f82c8853ad1997bad1fdda7";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if n > 1 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.action.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.action = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_interaction_msgsASRActivation {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 1 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 1 {
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
/// Complete bounded value for ROS1 pal_interaction_msgs/actiontag.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_interaction_msgsActiontag {
    /// Declared key; canonical bounds are part of CODEC_IDENTITY.
    pub key: String,
    /// Declared value; canonical bounds are part of CODEC_IDENTITY.
    pub value: String,
}
impl Default for Ros1Pal_interaction_msgsActiontag {
    fn default() -> Self {
        Self {
            key: Default::default(),
            value: Default::default(),
        }
    }
}
impl Ros1Pal_interaction_msgsActiontag {
    pub const MAX_WIRE_BYTES: usize = 264;
    pub const CARTESIAN_WIRE_BYTES: u64 = 264;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_bd76d0c6a24ccccf66c8723e96bdb0bacf4b9f89fd569482dbb05b8c3a0e7a08";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.key.len() > 128 || self.key.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.key.len())?;
        if self.value.len() > 128 || self.value.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.value.len())?;
        if n > 264 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.key.len() as u32).to_le_bytes());
        put(out, at, self.key.as_bytes());
        put(out, at, &(self.value.len() as u32).to_le_bytes());
        put(out, at, self.value.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.key = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.value = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_interaction_msgsActiontag {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 264 {
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
/// Complete bounded value for ROS1 pal_interaction_msgs/asrresult.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_interaction_msgsAsrresult {
    /// Declared text; canonical bounds are part of CODEC_IDENTITY.
    pub text: String,
    /// Declared confidence; canonical bounds are part of CODEC_IDENTITY.
    pub confidence: i8,
    /// Declared start; canonical bounds are part of CODEC_IDENTITY.
    pub start: Ros1Time,
    /// Declared end; canonical bounds are part of CODEC_IDENTITY.
    pub end: Ros1Time,
    /// Declared tags; canonical bounds are part of CODEC_IDENTITY.
    pub tags: Vec<Ros1Pal_interaction_msgsActiontag>,
}
impl Default for Ros1Pal_interaction_msgsAsrresult {
    fn default() -> Self {
        Self {
            text: Default::default(),
            confidence: Default::default(),
            start: Default::default(),
            end: Default::default(),
            tags: Default::default(),
        }
    }
}
impl Ros1Pal_interaction_msgsAsrresult {
    pub const MAX_WIRE_BYTES: usize = 1209;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1209;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_b259acfd1ed092ec360582155843297af7f18152debe9cfae0573c695f271058";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.text.len() > 128 || self.text.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.text.len())?;
        n = add_size(n, 1)?;
        n = add_size(n, self.start.wire_size()?)?;
        n = add_size(n, self.end.wire_size()?)?;
        if self.tags.len() > 4 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.tags {
            n = add_size(n, element.wire_size()?)?;
        }
        if n > 1209 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.text.len() as u32).to_le_bytes());
        put(out, at, self.text.as_bytes());
        put(out, at, &self.confidence.to_le_bytes());
        self.start.write_fields(out, at);
        self.end.write_fields(out, at);
        put(out, at, &(self.tags.len() as u32).to_le_bytes());
        for element in &self.tags {
            element.write_fields(out, at);
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.text = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.confidence = decoded;
        let decoded = Ros1Time::read_fields(bytes, at)?;
        value.start = decoded;
        let decoded = Ros1Time::read_fields(bytes, at)?;
        value.end = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 4 {
                return Err(invalid());
            }
            value.tags = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros1Pal_interaction_msgsActiontag::read_fields(bytes, at)?;
                value.tags.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros1Pal_interaction_msgsAsrresult {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 1209 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 25 {
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
/// Complete bounded value for ROS1 pal_interaction_msgs/ASREvent.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_interaction_msgsASREvent {
    /// Declared event_id; canonical bounds are part of CODEC_IDENTITY.
    pub event_id: i8,
    /// Declared listen_state; canonical bounds are part of CODEC_IDENTITY.
    pub listen_state: i8,
    /// Declared recognized_utterance; canonical bounds are part of CODEC_IDENTITY.
    pub recognized_utterance: Ros1Pal_interaction_msgsAsrresult,
    /// Declared active; canonical bounds are part of CODEC_IDENTITY.
    pub active: bool,
}
impl Default for Ros1Pal_interaction_msgsASREvent {
    fn default() -> Self {
        Self {
            event_id: Default::default(),
            listen_state: Default::default(),
            recognized_utterance: Default::default(),
            active: Default::default(),
        }
    }
}
impl Ros1Pal_interaction_msgsASREvent {
    pub const MAX_WIRE_BYTES: usize = 1212;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1212;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_459ea9c0c0a993881cc4189329bc42ae244d6133b8d3ae789206dbc4655a0926";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, self.recognized_utterance.wire_size()?)?;
        n = add_size(n, 1)?;
        if n > 1212 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.event_id.to_le_bytes());
        put(out, at, &self.listen_state.to_le_bytes());
        self.recognized_utterance.write_fields(out, at);
        put(out, at, &[u8::from(self.active)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.event_id = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.listen_state = decoded;
        let decoded = Ros1Pal_interaction_msgsAsrresult::read_fields(bytes, at)?;
        value.recognized_utterance = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.active = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_interaction_msgsASREvent {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 1212 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 28 {
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
/// Complete bounded value for ROS1 pal_interaction_msgs/ASRFileGoal.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_interaction_msgsASRFileGoal {
    /// Declared file; canonical bounds are part of CODEC_IDENTITY.
    pub file: String,
    /// Declared lang_id; canonical bounds are part of CODEC_IDENTITY.
    pub lang_id: String,
    /// Declared grammar; canonical bounds are part of CODEC_IDENTITY.
    pub grammar: String,
}
impl Default for Ros1Pal_interaction_msgsASRFileGoal {
    fn default() -> Self {
        Self {
            file: Default::default(),
            lang_id: Default::default(),
            grammar: Default::default(),
        }
    }
}
impl Ros1Pal_interaction_msgsASRFileGoal {
    pub const MAX_WIRE_BYTES: usize = 396;
    pub const CARTESIAN_WIRE_BYTES: u64 = 396;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_9ccba4b3d861d0e759312bec211e5f198eb11bd3838088906a7cba85ab56dd35";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.file.len() > 128 || self.file.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.file.len())?;
        if self.lang_id.len() > 128 || self.lang_id.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.lang_id.len())?;
        if self.grammar.len() > 128 || self.grammar.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.grammar.len())?;
        if n > 396 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.file.len() as u32).to_le_bytes());
        put(out, at, self.file.as_bytes());
        put(out, at, &(self.lang_id.len() as u32).to_le_bytes());
        put(out, at, self.lang_id.as_bytes());
        put(out, at, &(self.grammar.len() as u32).to_le_bytes());
        put(out, at, self.grammar.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.file = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.lang_id = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.grammar = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_interaction_msgsASRFileGoal {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 396 {
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
/// Complete bounded value for ROS1 pal_interaction_msgs/ASRFileResult.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_interaction_msgsASRFileResult {
    /// Declared file; canonical bounds are part of CODEC_IDENTITY.
    pub file: String,
    /// Declared msg; canonical bounds are part of CODEC_IDENTITY.
    pub msg: String,
    /// Declared recognised_utterances; canonical bounds are part of CODEC_IDENTITY.
    pub recognised_utterances: Vec<Ros1Pal_interaction_msgsAsrresult>,
}
impl Default for Ros1Pal_interaction_msgsASRFileResult {
    fn default() -> Self {
        Self {
            file: Default::default(),
            msg: Default::default(),
            recognised_utterances: Default::default(),
        }
    }
}
impl Ros1Pal_interaction_msgsASRFileResult {
    pub const MAX_WIRE_BYTES: usize = 5104;
    pub const CARTESIAN_WIRE_BYTES: u64 = 5104;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_8fef2b5f288de2136bf3d58eca596fcb8d41c43e0eb428d5fac61cc0dfdc9db2";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.file.len() > 128 || self.file.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.file.len())?;
        if self.msg.len() > 128 || self.msg.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.msg.len())?;
        if self.recognised_utterances.len() > 4 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.recognised_utterances {
            n = add_size(n, element.wire_size()?)?;
        }
        if n > 5104 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.file.len() as u32).to_le_bytes());
        put(out, at, self.file.as_bytes());
        put(out, at, &(self.msg.len() as u32).to_le_bytes());
        put(out, at, self.msg.as_bytes());
        put(
            out,
            at,
            &(self.recognised_utterances.len() as u32).to_le_bytes(),
        );
        for element in &self.recognised_utterances {
            element.write_fields(out, at);
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.file = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.msg = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 4 {
                return Err(invalid());
            }
            value.recognised_utterances = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros1Pal_interaction_msgsAsrresult::read_fields(bytes, at)?;
                value.recognised_utterances.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros1Pal_interaction_msgsASRFileResult {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 5104 {
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
/// Complete bounded value for ROS1 pal_interaction_msgs/ASRFileFeedback.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_interaction_msgsASRFileFeedback {
    /// Declared recognised_utterance; canonical bounds are part of CODEC_IDENTITY.
    pub recognised_utterance: Ros1Pal_interaction_msgsAsrresult,
}
impl Default for Ros1Pal_interaction_msgsASRFileFeedback {
    fn default() -> Self {
        Self {
            recognised_utterance: Default::default(),
        }
    }
}
impl Ros1Pal_interaction_msgsASRFileFeedback {
    pub const MAX_WIRE_BYTES: usize = 1209;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1209;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_c5a53add76fa297f74af24e0ecb0d3dc68b3ce85eaecdff21a26a7441e2ad9c3";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.recognised_utterance.wire_size()?)?;
        if n > 1209 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.recognised_utterance.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Pal_interaction_msgsAsrresult::read_fields(bytes, at)?;
        value.recognised_utterance = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_interaction_msgsASRFileFeedback {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 1209 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 25 {
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
/// Complete bounded value for ROS1 pal_interaction_msgs/ASRLangModelMngmt.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_interaction_msgsASRLangModelMngmt {
    /// Declared action; canonical bounds are part of CODEC_IDENTITY.
    pub action: i8,
    /// Declared modelName; canonical bounds are part of CODEC_IDENTITY.
    pub modelName: String,
}
impl Default for Ros1Pal_interaction_msgsASRLangModelMngmt {
    fn default() -> Self {
        Self {
            action: Default::default(),
            modelName: Default::default(),
        }
    }
}
impl Ros1Pal_interaction_msgsASRLangModelMngmt {
    pub const MAX_WIRE_BYTES: usize = 133;
    pub const CARTESIAN_WIRE_BYTES: u64 = 133;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_9ef368d2c72d86f541952fd520429be4998fd28e46c32da1d60edc1cd63c3b09";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if self.modelName.len() > 128 || self.modelName.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.modelName.len())?;
        if n > 133 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.action.to_le_bytes());
        put(out, at, &(self.modelName.len() as u32).to_le_bytes());
        put(out, at, self.modelName.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.action = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.modelName = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_interaction_msgsASRLangModelMngmt {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 133 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 5 {
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
/// Complete bounded value for ROS1 pal_interaction_msgs/ASRLanguage.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_interaction_msgsASRLanguage {
    /// Declared language; canonical bounds are part of CODEC_IDENTITY.
    pub language: String,
}
impl Default for Ros1Pal_interaction_msgsASRLanguage {
    fn default() -> Self {
        Self {
            language: Default::default(),
        }
    }
}
impl Ros1Pal_interaction_msgsASRLanguage {
    pub const MAX_WIRE_BYTES: usize = 132;
    pub const CARTESIAN_WIRE_BYTES: u64 = 132;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_227aee498814954d3800e631b8dce3a5fd3d22dc5437ec24b03b5f8cc48000eb";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.language.len() > 128 || self.language.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.language.len())?;
        if n > 132 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.language.len() as u32).to_le_bytes());
        put(out, at, self.language.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.language = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_interaction_msgsASRLanguage {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 132 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 4 {
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
/// Complete bounded value for ROS1 pal_interaction_msgs/ASRSrvRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_interaction_msgsASRSrvRequest {
    /// Declared requests; canonical bounds are part of CODEC_IDENTITY.
    pub requests: Vec<i8>,
    /// Declared activation; canonical bounds are part of CODEC_IDENTITY.
    pub activation: Ros1Pal_interaction_msgsASRActivation,
    /// Declared model; canonical bounds are part of CODEC_IDENTITY.
    pub model: Ros1Pal_interaction_msgsASRLangModelMngmt,
    /// Declared lang; canonical bounds are part of CODEC_IDENTITY.
    pub lang: Ros1Pal_interaction_msgsASRLanguage,
}
impl Default for Ros1Pal_interaction_msgsASRSrvRequest {
    fn default() -> Self {
        Self {
            requests: Default::default(),
            activation: Default::default(),
            model: Default::default(),
            lang: Default::default(),
        }
    }
}
impl Ros1Pal_interaction_msgsASRSrvRequest {
    pub const MAX_WIRE_BYTES: usize = 526;
    pub const CARTESIAN_WIRE_BYTES: u64 = 526;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_3a7fc134e8d1e0c32421ff0ad9831a892e7bc94b211d8309f8a2c2e99720e170";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.requests.len() > 256 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.requests {
            n = add_size(n, 1)?;
        }
        n = add_size(n, self.activation.wire_size()?)?;
        n = add_size(n, self.model.wire_size()?)?;
        n = add_size(n, self.lang.wire_size()?)?;
        if n > 526 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.requests.len() as u32).to_le_bytes());
        for element in &self.requests {
            put(out, at, &element.to_le_bytes());
        }
        self.activation.write_fields(out, at);
        self.model.write_fields(out, at);
        self.lang.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = read_count(bytes, at)?;
            if count > 256 {
                return Err(invalid());
            }
            value.requests = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
                value.requests.push(decoded);
            }
        }
        let decoded = Ros1Pal_interaction_msgsASRActivation::read_fields(bytes, at)?;
        value.activation = decoded;
        let decoded = Ros1Pal_interaction_msgsASRLangModelMngmt::read_fields(bytes, at)?;
        value.model = decoded;
        let decoded = Ros1Pal_interaction_msgsASRLanguage::read_fields(bytes, at)?;
        value.lang = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_interaction_msgsASRSrvRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 526 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 14 {
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
/// Complete bounded value for ROS1 pal_interaction_msgs/ASRServiceRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_interaction_msgsASRServiceRequest {
    /// Declared request; canonical bounds are part of CODEC_IDENTITY.
    pub request: Ros1Pal_interaction_msgsASRSrvRequest,
}
impl Default for Ros1Pal_interaction_msgsASRServiceRequest {
    fn default() -> Self {
        Self {
            request: Default::default(),
        }
    }
}
impl Ros1Pal_interaction_msgsASRServiceRequest {
    pub const MAX_WIRE_BYTES: usize = 526;
    pub const CARTESIAN_WIRE_BYTES: u64 = 526;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_c78e78d5d88eb264ecc15c534da9e28e04bc6e3bb33685e24b9cf695aee73715";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.request.wire_size()?)?;
        if n > 526 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.request.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Pal_interaction_msgsASRSrvRequest::read_fields(bytes, at)?;
        value.request = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_interaction_msgsASRServiceRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 526 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 14 {
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
/// Complete bounded value for ROS1 pal_interaction_msgs/AudioDeviceDescription.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_interaction_msgsAudioDeviceDescription {
    /// Declared device_name; canonical bounds are part of CODEC_IDENTITY.
    pub device_name: String,
    /// Declared sample_rate; canonical bounds are part of CODEC_IDENTITY.
    pub sample_rate: u32,
    /// Declared sample_size; canonical bounds are part of CODEC_IDENTITY.
    pub sample_size: i8,
    /// Declared format; canonical bounds are part of CODEC_IDENTITY.
    pub format: i8,
    /// Declared buffer_size; canonical bounds are part of CODEC_IDENTITY.
    pub buffer_size: u16,
    /// Declared number_of_channels; canonical bounds are part of CODEC_IDENTITY.
    pub number_of_channels: i8,
}
impl Default for Ros1Pal_interaction_msgsAudioDeviceDescription {
    fn default() -> Self {
        Self {
            device_name: Default::default(),
            sample_rate: Default::default(),
            sample_size: Default::default(),
            format: Default::default(),
            buffer_size: Default::default(),
            number_of_channels: Default::default(),
        }
    }
}
impl Ros1Pal_interaction_msgsAudioDeviceDescription {
    pub const MAX_WIRE_BYTES: usize = 141;
    pub const CARTESIAN_WIRE_BYTES: u64 = 141;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_899a8393d0b03ca92891b0c60871b5e3a697750b036ef34b37709eed88139857";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.device_name.len() > 128 || self.device_name.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.device_name.len())?;
        n = add_size(n, 4)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 2)?;
        n = add_size(n, 1)?;
        if n > 141 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.device_name.len() as u32).to_le_bytes());
        put(out, at, self.device_name.as_bytes());
        put(out, at, &self.sample_rate.to_le_bytes());
        put(out, at, &self.sample_size.to_le_bytes());
        put(out, at, &self.format.to_le_bytes());
        put(out, at, &self.buffer_size.to_le_bytes());
        put(out, at, &self.number_of_channels.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.device_name = decoded;
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.sample_rate = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.sample_size = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.format = decoded;
        let decoded = u16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.buffer_size = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.number_of_channels = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_interaction_msgsAudioDeviceDescription {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 141 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 13 {
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
/// Complete bounded value for ROS1 pal_interaction_msgs/ASRStatus.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_interaction_msgsASRStatus {
    /// Declared active; canonical bounds are part of CODEC_IDENTITY.
    pub active: bool,
    /// Declared language; canonical bounds are part of CODEC_IDENTITY.
    pub language: String,
    /// Declared enabled_grammar; canonical bounds are part of CODEC_IDENTITY.
    pub enabled_grammar: String,
    /// Declared acoustic_env; canonical bounds are part of CODEC_IDENTITY.
    pub acoustic_env: String,
    /// Declared device; canonical bounds are part of CODEC_IDENTITY.
    pub device: Ros1Pal_interaction_msgsAudioDeviceDescription,
}
impl Default for Ros1Pal_interaction_msgsASRStatus {
    fn default() -> Self {
        Self {
            active: Default::default(),
            language: Default::default(),
            enabled_grammar: Default::default(),
            acoustic_env: Default::default(),
            device: Default::default(),
        }
    }
}
impl Ros1Pal_interaction_msgsASRStatus {
    pub const MAX_WIRE_BYTES: usize = 538;
    pub const CARTESIAN_WIRE_BYTES: u64 = 538;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_0469173f91448cb5069e27cab54cfd117d9a22d757e8a8303ac5cb1c53e7e985";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if self.language.len() > 128 || self.language.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.language.len())?;
        if self.enabled_grammar.len() > 128 || self.enabled_grammar.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.enabled_grammar.len())?;
        if self.acoustic_env.len() > 128 || self.acoustic_env.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.acoustic_env.len())?;
        n = add_size(n, self.device.wire_size()?)?;
        if n > 538 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &[u8::from(self.active)]);
        put(out, at, &(self.language.len() as u32).to_le_bytes());
        put(out, at, self.language.as_bytes());
        put(out, at, &(self.enabled_grammar.len() as u32).to_le_bytes());
        put(out, at, self.enabled_grammar.as_bytes());
        put(out, at, &(self.acoustic_env.len() as u32).to_le_bytes());
        put(out, at, self.acoustic_env.as_bytes());
        self.device.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.active = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.language = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.enabled_grammar = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.acoustic_env = decoded;
        let decoded = Ros1Pal_interaction_msgsAudioDeviceDescription::read_fields(bytes, at)?;
        value.device = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_interaction_msgsASRStatus {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 538 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 26 {
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
/// Complete bounded value for ROS1 pal_interaction_msgs/ASRSrvResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_interaction_msgsASRSrvResponse {
    /// Declared status; canonical bounds are part of CODEC_IDENTITY.
    pub status: Ros1Pal_interaction_msgsASRStatus,
    /// Declared error_msg; canonical bounds are part of CODEC_IDENTITY.
    pub error_msg: String,
    /// Declared warn_msg; canonical bounds are part of CODEC_IDENTITY.
    pub warn_msg: String,
}
impl Default for Ros1Pal_interaction_msgsASRSrvResponse {
    fn default() -> Self {
        Self {
            status: Default::default(),
            error_msg: Default::default(),
            warn_msg: Default::default(),
        }
    }
}
impl Ros1Pal_interaction_msgsASRSrvResponse {
    pub const MAX_WIRE_BYTES: usize = 802;
    pub const CARTESIAN_WIRE_BYTES: u64 = 802;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_b0d47bec71896b9a6090ee0e99c5dad16272306b7b266a99e3da0db334e24d3a";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.status.wire_size()?)?;
        if self.error_msg.len() > 128 || self.error_msg.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.error_msg.len())?;
        if self.warn_msg.len() > 128 || self.warn_msg.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.warn_msg.len())?;
        if n > 802 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.status.write_fields(out, at);
        put(out, at, &(self.error_msg.len() as u32).to_le_bytes());
        put(out, at, self.error_msg.as_bytes());
        put(out, at, &(self.warn_msg.len() as u32).to_le_bytes());
        put(out, at, self.warn_msg.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Pal_interaction_msgsASRStatus::read_fields(bytes, at)?;
        value.status = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.error_msg = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.warn_msg = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_interaction_msgsASRSrvResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 802 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 34 {
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
/// Complete bounded value for ROS1 pal_interaction_msgs/ASRServiceResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_interaction_msgsASRServiceResponse {
    /// Declared response; canonical bounds are part of CODEC_IDENTITY.
    pub response: Ros1Pal_interaction_msgsASRSrvResponse,
}
impl Default for Ros1Pal_interaction_msgsASRServiceResponse {
    fn default() -> Self {
        Self {
            response: Default::default(),
        }
    }
}
impl Ros1Pal_interaction_msgsASRServiceResponse {
    pub const MAX_WIRE_BYTES: usize = 802;
    pub const CARTESIAN_WIRE_BYTES: u64 = 802;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_bfa0a5701b04c4f637febfb3c24d5f49ebd690b82089ec88e21d7dca40028680";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.response.wire_size()?)?;
        if n > 802 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.response.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Pal_interaction_msgsASRSrvResponse::read_fields(bytes, at)?;
        value.response = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_interaction_msgsASRServiceResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 802 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 34 {
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
/// Complete bounded value for ROS1 pal_interaction_msgs/AudioPlayGoal.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_interaction_msgsAudioPlayGoal {
    /// Declared file; canonical bounds are part of CODEC_IDENTITY.
    pub file: String,
    /// Declared priority; canonical bounds are part of CODEC_IDENTITY.
    pub priority: u8,
}
impl Default for Ros1Pal_interaction_msgsAudioPlayGoal {
    fn default() -> Self {
        Self {
            file: Default::default(),
            priority: Default::default(),
        }
    }
}
impl Ros1Pal_interaction_msgsAudioPlayGoal {
    pub const MAX_WIRE_BYTES: usize = 133;
    pub const CARTESIAN_WIRE_BYTES: u64 = 133;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_1c2b6894e5b00f204c3d36af18802e5b54e2950b2ef22d3294460f3e7bd84e30";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.file.len() > 128 || self.file.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.file.len())?;
        n = add_size(n, 1)?;
        if n > 133 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.file.len() as u32).to_le_bytes());
        put(out, at, self.file.as_bytes());
        put(out, at, &self.priority.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.file = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.priority = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_interaction_msgsAudioPlayGoal {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 133 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 5 {
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
/// Complete bounded value for ROS1 pal_interaction_msgs/AudioPlayResult.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_interaction_msgsAudioPlayResult {}
impl Default for Ros1Pal_interaction_msgsAudioPlayResult {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Pal_interaction_msgsAudioPlayResult {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_46d6efb4dbf5cca76894398daf8b70e0f6577f624e90dc088beeca147a4f91fe";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if n > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {}
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        Ok(value)
    }
}
impl Canonical for Ros1Pal_interaction_msgsAudioPlayResult {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 0 {
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
/// Complete bounded value for ROS1 pal_interaction_msgs/AudioPlayFeedback.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_interaction_msgsAudioPlayFeedback {}
impl Default for Ros1Pal_interaction_msgsAudioPlayFeedback {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Pal_interaction_msgsAudioPlayFeedback {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_8715716200235ab9076d7f152ef277236349ffb02f01b16ba5f10ede343729bd";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if n > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {}
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        Ok(value)
    }
}
impl Canonical for Ros1Pal_interaction_msgsAudioPlayFeedback {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 0 {
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
/// Complete bounded value for ROS1 pal_interaction_msgs/AudioPlayerState.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_interaction_msgsAudioPlayerState {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros1Std_msgsHeader,
    /// Declared isPlaying; canonical bounds are part of CODEC_IDENTITY.
    pub isPlaying: bool,
    /// Declared msg; canonical bounds are part of CODEC_IDENTITY.
    pub msg: String,
}
impl Default for Ros1Pal_interaction_msgsAudioPlayerState {
    fn default() -> Self {
        Self {
            header: Default::default(),
            isPlaying: Default::default(),
            msg: Default::default(),
        }
    }
}
impl Ros1Pal_interaction_msgsAudioPlayerState {
    pub const MAX_WIRE_BYTES: usize = 277;
    pub const CARTESIAN_WIRE_BYTES: u64 = 277;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_01549954e3ca3bfb4dd7e5c82e8697d0a480d16757826cc4708266794ec85675";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        n = add_size(n, 1)?;
        if self.msg.len() > 128 || self.msg.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.msg.len())?;
        if n > 277 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.header.write_fields(out, at);
        put(out, at, &[u8::from(self.isPlaying)]);
        put(out, at, &(self.msg.len() as u32).to_le_bytes());
        put(out, at, self.msg.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Std_msgsHeader::read_fields(bytes, at)?;
        value.header = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.isPlaying = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.msg = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_interaction_msgsAudioPlayerState {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 277 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 21 {
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
/// Complete bounded value for ROS1 pal_interaction_msgs/DirectionOfArrival.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_interaction_msgsDirectionOfArrival {
    /// Declared doa; canonical bounds are part of CODEC_IDENTITY.
    pub doa: f32,
    /// Declared prob; canonical bounds are part of CODEC_IDENTITY.
    pub prob: f32,
    /// Declared power; canonical bounds are part of CODEC_IDENTITY.
    pub power: f32,
    /// Declared metadoa; canonical bounds are part of CODEC_IDENTITY.
    pub metadoa: String,
}
impl Default for Ros1Pal_interaction_msgsDirectionOfArrival {
    fn default() -> Self {
        Self {
            doa: Default::default(),
            prob: Default::default(),
            power: Default::default(),
            metadoa: Default::default(),
        }
    }
}
impl Ros1Pal_interaction_msgsDirectionOfArrival {
    pub const MAX_WIRE_BYTES: usize = 144;
    pub const CARTESIAN_WIRE_BYTES: u64 = 144;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_1569630ee3abd3caad9a14797d6381b68e764f0c00266d2de5c450f002c8f5fd";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if !self.doa.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.prob.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.power.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if self.metadoa.len() > 128 || self.metadoa.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.metadoa.len())?;
        if n > 144 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.doa.to_le_bytes());
        put(out, at, &self.prob.to_le_bytes());
        put(out, at, &self.power.to_le_bytes());
        put(out, at, &(self.metadoa.len() as u32).to_le_bytes());
        put(out, at, self.metadoa.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.doa = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.prob = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.power = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.metadoa = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_interaction_msgsDirectionOfArrival {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 144 {
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
/// Complete bounded value for ROS1 pal_interaction_msgs/EnablingSoundLocalisation.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_interaction_msgsEnablingSoundLocalisation {
    /// Declared enable; canonical bounds are part of CODEC_IDENTITY.
    pub enable: bool,
}
impl Default for Ros1Pal_interaction_msgsEnablingSoundLocalisation {
    fn default() -> Self {
        Self {
            enable: Default::default(),
        }
    }
}
impl Ros1Pal_interaction_msgsEnablingSoundLocalisation {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_8df033349e2f5d7072336e535fc87c1ff6148ed15bc36cc952a99d133a69d495";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if n > 1 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &[u8::from(self.enable)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.enable = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_interaction_msgsEnablingSoundLocalisation {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 1 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 1 {
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
/// Complete bounded value for ROS1 pal_interaction_msgs/I18nArgument.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_interaction_msgsI18nArgument {
    /// Declared section; canonical bounds are part of CODEC_IDENTITY.
    pub section: String,
    /// Declared key; canonical bounds are part of CODEC_IDENTITY.
    pub key: String,
    /// Declared expanded; canonical bounds are part of CODEC_IDENTITY.
    pub expanded: String,
}
impl Default for Ros1Pal_interaction_msgsI18nArgument {
    fn default() -> Self {
        Self {
            section: Default::default(),
            key: Default::default(),
            expanded: Default::default(),
        }
    }
}
impl Ros1Pal_interaction_msgsI18nArgument {
    pub const MAX_WIRE_BYTES: usize = 396;
    pub const CARTESIAN_WIRE_BYTES: u64 = 396;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_2ca48fd9d8f6dc4a1bc9b69c33c407ea1d6c400f22ceff31f784f161f41f27fb";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.section.len() > 128 || self.section.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.section.len())?;
        if self.key.len() > 128 || self.key.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.key.len())?;
        if self.expanded.len() > 128 || self.expanded.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.expanded.len())?;
        if n > 396 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.section.len() as u32).to_le_bytes());
        put(out, at, self.section.as_bytes());
        put(out, at, &(self.key.len() as u32).to_le_bytes());
        put(out, at, self.key.as_bytes());
        put(out, at, &(self.expanded.len() as u32).to_le_bytes());
        put(out, at, self.expanded.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.section = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.key = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.expanded = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_interaction_msgsI18nArgument {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 396 {
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
/// Complete bounded value for ROS1 pal_interaction_msgs/I18nText.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_interaction_msgsI18nText {
    /// Declared section; canonical bounds are part of CODEC_IDENTITY.
    pub section: String,
    /// Declared key; canonical bounds are part of CODEC_IDENTITY.
    pub key: String,
    /// Declared lang_id; canonical bounds are part of CODEC_IDENTITY.
    pub lang_id: String,
    /// Declared arguments; canonical bounds are part of CODEC_IDENTITY.
    pub arguments: Vec<Ros1Pal_interaction_msgsI18nArgument>,
}
impl Default for Ros1Pal_interaction_msgsI18nText {
    fn default() -> Self {
        Self {
            section: Default::default(),
            key: Default::default(),
            lang_id: Default::default(),
            arguments: Default::default(),
        }
    }
}
impl Ros1Pal_interaction_msgsI18nText {
    pub const MAX_WIRE_BYTES: usize = 1984;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1984;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_b3e1cb48129a6ed9cad7f0b543c770aa8b7b0362d00e71185bb6b5ad8c38816c";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.section.len() > 128 || self.section.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.section.len())?;
        if self.key.len() > 128 || self.key.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.key.len())?;
        if self.lang_id.len() > 128 || self.lang_id.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.lang_id.len())?;
        if self.arguments.len() > 4 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.arguments {
            n = add_size(n, element.wire_size()?)?;
        }
        if n > 1984 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.section.len() as u32).to_le_bytes());
        put(out, at, self.section.as_bytes());
        put(out, at, &(self.key.len() as u32).to_le_bytes());
        put(out, at, self.key.as_bytes());
        put(out, at, &(self.lang_id.len() as u32).to_le_bytes());
        put(out, at, self.lang_id.as_bytes());
        put(out, at, &(self.arguments.len() as u32).to_le_bytes());
        for element in &self.arguments {
            element.write_fields(out, at);
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.section = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.key = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.lang_id = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 4 {
                return Err(invalid());
            }
            value.arguments = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros1Pal_interaction_msgsI18nArgument::read_fields(bytes, at)?;
                value.arguments.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros1Pal_interaction_msgsI18nText {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 1984 {
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
/// Complete bounded value for ROS1 pal_interaction_msgs/TtsText.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_interaction_msgsTtsText {
    /// Declared text; canonical bounds are part of CODEC_IDENTITY.
    pub text: String,
    /// Declared lang_id; canonical bounds are part of CODEC_IDENTITY.
    pub lang_id: String,
}
impl Default for Ros1Pal_interaction_msgsTtsText {
    fn default() -> Self {
        Self {
            text: Default::default(),
            lang_id: Default::default(),
        }
    }
}
impl Ros1Pal_interaction_msgsTtsText {
    pub const MAX_WIRE_BYTES: usize = 264;
    pub const CARTESIAN_WIRE_BYTES: u64 = 264;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_0bf14fabb5b62c5341e606b8ac9f6abaf74a85033a10e9a8f1e5b8bdfe178a87";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.text.len() > 128 || self.text.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.text.len())?;
        if self.lang_id.len() > 128 || self.lang_id.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.lang_id.len())?;
        if n > 264 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.text.len() as u32).to_le_bytes());
        put(out, at, self.text.as_bytes());
        put(out, at, &(self.lang_id.len() as u32).to_le_bytes());
        put(out, at, self.lang_id.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.text = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.lang_id = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_interaction_msgsTtsText {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 264 {
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
/// Complete bounded value for ROS1 pal_interaction_msgs/GetSpeechDurationRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_interaction_msgsGetSpeechDurationRequest {
    /// Declared text; canonical bounds are part of CODEC_IDENTITY.
    pub text: Ros1Pal_interaction_msgsI18nText,
    /// Declared rawtext; canonical bounds are part of CODEC_IDENTITY.
    pub rawtext: Ros1Pal_interaction_msgsTtsText,
}
impl Default for Ros1Pal_interaction_msgsGetSpeechDurationRequest {
    fn default() -> Self {
        Self {
            text: Default::default(),
            rawtext: Default::default(),
        }
    }
}
impl Ros1Pal_interaction_msgsGetSpeechDurationRequest {
    pub const MAX_WIRE_BYTES: usize = 2248;
    pub const CARTESIAN_WIRE_BYTES: u64 = 2248;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_0926f4515183e6c9fd4cd5b20c6aa53014ba7dbd4e64113c9b6c514123ba7dc5";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.text.wire_size()?)?;
        n = add_size(n, self.rawtext.wire_size()?)?;
        if n > 2248 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.text.write_fields(out, at);
        self.rawtext.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Pal_interaction_msgsI18nText::read_fields(bytes, at)?;
        value.text = decoded;
        let decoded = Ros1Pal_interaction_msgsTtsText::read_fields(bytes, at)?;
        value.rawtext = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_interaction_msgsGetSpeechDurationRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 2248 {
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
/// Complete bounded value for ROS1 pal_interaction_msgs/GetSpeechDurationResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_interaction_msgsGetSpeechDurationResponse {
    /// Declared ok; canonical bounds are part of CODEC_IDENTITY.
    pub ok: bool,
    /// Declared words; canonical bounds are part of CODEC_IDENTITY.
    pub words: Vec<String>,
    /// Declared word_durations; canonical bounds are part of CODEC_IDENTITY.
    pub word_durations: Vec<Ros1Duration>,
}
impl Default for Ros1Pal_interaction_msgsGetSpeechDurationResponse {
    fn default() -> Self {
        Self {
            ok: Default::default(),
            words: Default::default(),
            word_durations: Default::default(),
        }
    }
}
impl Ros1Pal_interaction_msgsGetSpeechDurationResponse {
    pub const MAX_WIRE_BYTES: usize = 2249;
    pub const CARTESIAN_WIRE_BYTES: u64 = 2249;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_44379b24ddf4582ec184a0da7993d27b9f4ec5d430a129468bf8aef6d5437578";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if self.words.len() > 16 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.words {
            if element.len() > 128 || element.as_bytes().contains(&0) {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
            n = add_size(n, element.len())?;
        }
        if self.word_durations.len() > 16 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.word_durations {
            n = add_size(n, element.wire_size()?)?;
        }
        if n > 2249 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &[u8::from(self.ok)]);
        put(out, at, &(self.words.len() as u32).to_le_bytes());
        for element in &self.words {
            put(out, at, &(element.len() as u32).to_le_bytes());
            put(out, at, element.as_bytes());
        }
        put(out, at, &(self.word_durations.len() as u32).to_le_bytes());
        for element in &self.word_durations {
            element.write_fields(out, at);
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.ok = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 16 {
                return Err(invalid());
            }
            value.words = Vec::with_capacity(count);
            for i in 0..count {
                let size = read_count(bytes, at)?;
                if size > 128 {
                    return Err(invalid());
                }
                let raw = take(bytes, at, size)?;
                if raw.contains(&0) {
                    return Err(invalid());
                }
                let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
                value.words.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 16 {
                return Err(invalid());
            }
            value.word_durations = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros1Duration::read_fields(bytes, at)?;
                value.word_durations.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros1Pal_interaction_msgsGetSpeechDurationResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 2249 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 9 {
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
/// Complete bounded value for ROS1 pal_interaction_msgs/InputArgument.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_interaction_msgsInputArgument {
    /// Declared key; canonical bounds are part of CODEC_IDENTITY.
    pub key: String,
    /// Declared value; canonical bounds are part of CODEC_IDENTITY.
    pub value: String,
}
impl Default for Ros1Pal_interaction_msgsInputArgument {
    fn default() -> Self {
        Self {
            key: Default::default(),
            value: Default::default(),
        }
    }
}
impl Ros1Pal_interaction_msgsInputArgument {
    pub const MAX_WIRE_BYTES: usize = 264;
    pub const CARTESIAN_WIRE_BYTES: u64 = 264;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_96c3c0967199a746bf47ffd146123f31ec2f1949b7f3a343cad3825b8b1e8dd0";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.key.len() > 128 || self.key.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.key.len())?;
        if self.value.len() > 128 || self.value.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.value.len())?;
        if n > 264 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.key.len() as u32).to_le_bytes());
        put(out, at, self.key.as_bytes());
        put(out, at, &(self.value.len() as u32).to_le_bytes());
        put(out, at, self.value.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.key = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.value = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_interaction_msgsInputArgument {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 264 {
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
/// Complete bounded value for ROS1 pal_interaction_msgs/Input.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_interaction_msgsInput {
    /// Declared action; canonical bounds are part of CODEC_IDENTITY.
    pub action: String,
    /// Declared args; canonical bounds are part of CODEC_IDENTITY.
    pub args: Vec<Ros1Pal_interaction_msgsInputArgument>,
}
impl Default for Ros1Pal_interaction_msgsInput {
    fn default() -> Self {
        Self {
            action: Default::default(),
            args: Default::default(),
        }
    }
}
impl Ros1Pal_interaction_msgsInput {
    pub const MAX_WIRE_BYTES: usize = 1192;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1192;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_11478aeb5c676f50680ee5c4e75973b10cec5df40f09cbb8573ddad4eb91d307";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.action.len() > 128 || self.action.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.action.len())?;
        if self.args.len() > 4 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.args {
            n = add_size(n, element.wire_size()?)?;
        }
        if n > 1192 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.action.len() as u32).to_le_bytes());
        put(out, at, self.action.as_bytes());
        put(out, at, &(self.args.len() as u32).to_le_bytes());
        for element in &self.args {
            element.write_fields(out, at);
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.action = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 4 {
                return Err(invalid());
            }
            value.args = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros1Pal_interaction_msgsInputArgument::read_fields(bytes, at)?;
                value.args.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros1Pal_interaction_msgsInput {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 1192 {
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
/// Complete bounded value for ROS1 pal_interaction_msgs/SoundGoal.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_interaction_msgsSoundGoal {
    /// Declared text; canonical bounds are part of CODEC_IDENTITY.
    pub text: String,
    /// Declared lang_id; canonical bounds are part of CODEC_IDENTITY.
    pub lang_id: String,
    /// Declared wait_before_speaking; canonical bounds are part of CODEC_IDENTITY.
    pub wait_before_speaking: Ros1Duration,
}
impl Default for Ros1Pal_interaction_msgsSoundGoal {
    fn default() -> Self {
        Self {
            text: Default::default(),
            lang_id: Default::default(),
            wait_before_speaking: Default::default(),
        }
    }
}
impl Ros1Pal_interaction_msgsSoundGoal {
    pub const MAX_WIRE_BYTES: usize = 272;
    pub const CARTESIAN_WIRE_BYTES: u64 = 272;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_07b9c59deb5669b601a4e02708bd14d16a19263edde6f8fef3a4781724a4f3db";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.text.len() > 128 || self.text.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.text.len())?;
        if self.lang_id.len() > 128 || self.lang_id.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.lang_id.len())?;
        n = add_size(n, self.wait_before_speaking.wire_size()?)?;
        if n > 272 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.text.len() as u32).to_le_bytes());
        put(out, at, self.text.as_bytes());
        put(out, at, &(self.lang_id.len() as u32).to_le_bytes());
        put(out, at, self.lang_id.as_bytes());
        self.wait_before_speaking.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.text = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.lang_id = decoded;
        let decoded = Ros1Duration::read_fields(bytes, at)?;
        value.wait_before_speaking = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_interaction_msgsSoundGoal {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 272 {
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
/// Complete bounded value for ROS1 pal_interaction_msgs/SoundResult.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_interaction_msgsSoundResult {
    /// Declared text; canonical bounds are part of CODEC_IDENTITY.
    pub text: String,
}
impl Default for Ros1Pal_interaction_msgsSoundResult {
    fn default() -> Self {
        Self {
            text: Default::default(),
        }
    }
}
impl Ros1Pal_interaction_msgsSoundResult {
    pub const MAX_WIRE_BYTES: usize = 132;
    pub const CARTESIAN_WIRE_BYTES: u64 = 132;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_53c3ab50649a2ffe113e4ae246aa05736090d42f5a0158f2878292319ee89a86";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.text.len() > 128 || self.text.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.text.len())?;
        if n > 132 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.text.len() as u32).to_le_bytes());
        put(out, at, self.text.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.text = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_interaction_msgsSoundResult {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 132 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 4 {
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
/// Complete bounded value for ROS1 pal_interaction_msgs/SoundFeedback.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_interaction_msgsSoundFeedback {}
impl Default for Ros1Pal_interaction_msgsSoundFeedback {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Pal_interaction_msgsSoundFeedback {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_e9a77075706815852fbf5684df54d9d655925f7fecc7caa407d9076adc645d7d";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if n > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {}
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        Ok(value)
    }
}
impl Canonical for Ros1Pal_interaction_msgsSoundFeedback {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 0 {
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
/// Complete bounded value for ROS1 pal_interaction_msgs/SoundLocalisationServiceRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_interaction_msgsSoundLocalisationServiceRequest {
    /// Declared enabling; canonical bounds are part of CODEC_IDENTITY.
    pub enabling: Ros1Pal_interaction_msgsEnablingSoundLocalisation,
}
impl Default for Ros1Pal_interaction_msgsSoundLocalisationServiceRequest {
    fn default() -> Self {
        Self {
            enabling: Default::default(),
        }
    }
}
impl Ros1Pal_interaction_msgsSoundLocalisationServiceRequest {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_e7505ba44b9dc511311f5609c1618a1214362063600b32e2057dbe9cc2d32feb";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.enabling.wire_size()?)?;
        if n > 1 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.enabling.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Pal_interaction_msgsEnablingSoundLocalisation::read_fields(bytes, at)?;
        value.enabling = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_interaction_msgsSoundLocalisationServiceRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 1 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 1 {
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
/// Complete bounded value for ROS1 pal_interaction_msgs/SoundLocalisationServiceResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_interaction_msgsSoundLocalisationServiceResponse {}
impl Default for Ros1Pal_interaction_msgsSoundLocalisationServiceResponse {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Pal_interaction_msgsSoundLocalisationServiceResponse {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_205fe5e2195345e29bac8477e95059862a44b476a359d808551427941c64ad6e";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if n > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {}
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        Ok(value)
    }
}
impl Canonical for Ros1Pal_interaction_msgsSoundLocalisationServiceResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 0 {
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
/// Complete bounded value for ROS1 pal_interaction_msgs/TTSstate.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_interaction_msgsTTSstate {
    /// Declared isSpeaking; canonical bounds are part of CODEC_IDENTITY.
    pub isSpeaking: bool,
    /// Declared text; canonical bounds are part of CODEC_IDENTITY.
    pub text: String,
}
impl Default for Ros1Pal_interaction_msgsTTSstate {
    fn default() -> Self {
        Self {
            isSpeaking: Default::default(),
            text: Default::default(),
        }
    }
}
impl Ros1Pal_interaction_msgsTTSstate {
    pub const MAX_WIRE_BYTES: usize = 133;
    pub const CARTESIAN_WIRE_BYTES: u64 = 133;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_b9269838ab729ac39efc69c373314419ace1b43a2bf47176c822671aba9d9987";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if self.text.len() > 128 || self.text.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.text.len())?;
        if n > 133 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &[u8::from(self.isSpeaking)]);
        put(out, at, &(self.text.len() as u32).to_le_bytes());
        put(out, at, self.text.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.isSpeaking = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.text = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_interaction_msgsTTSstate {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 133 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 5 {
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
/// Complete bounded value for ROS1 pal_interaction_msgs/TtsGoal.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_interaction_msgsTtsGoal {
    /// Declared text; canonical bounds are part of CODEC_IDENTITY.
    pub text: Ros1Pal_interaction_msgsI18nText,
    /// Declared rawtext; canonical bounds are part of CODEC_IDENTITY.
    pub rawtext: Ros1Pal_interaction_msgsTtsText,
    /// Declared speakerName; canonical bounds are part of CODEC_IDENTITY.
    pub speakerName: String,
    /// Declared wait_before_speaking; canonical bounds are part of CODEC_IDENTITY.
    pub wait_before_speaking: f64,
}
impl Default for Ros1Pal_interaction_msgsTtsGoal {
    fn default() -> Self {
        Self {
            text: Default::default(),
            rawtext: Default::default(),
            speakerName: Default::default(),
            wait_before_speaking: Default::default(),
        }
    }
}
impl Ros1Pal_interaction_msgsTtsGoal {
    pub const MAX_WIRE_BYTES: usize = 2388;
    pub const CARTESIAN_WIRE_BYTES: u64 = 2388;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_d128a99394120e1688e4feb9906b033af53982dbf12040604502aeb8f59304c7";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.text.wire_size()?)?;
        n = add_size(n, self.rawtext.wire_size()?)?;
        if self.speakerName.len() > 128 || self.speakerName.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.speakerName.len())?;
        if !self.wait_before_speaking.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if n > 2388 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.text.write_fields(out, at);
        self.rawtext.write_fields(out, at);
        put(out, at, &(self.speakerName.len() as u32).to_le_bytes());
        put(out, at, self.speakerName.as_bytes());
        put(out, at, &self.wait_before_speaking.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Pal_interaction_msgsI18nText::read_fields(bytes, at)?;
        value.text = decoded;
        let decoded = Ros1Pal_interaction_msgsTtsText::read_fields(bytes, at)?;
        value.rawtext = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.speakerName = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.wait_before_speaking = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_interaction_msgsTtsGoal {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 2388 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 36 {
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
/// Complete bounded value for ROS1 pal_interaction_msgs/TtsResult.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_interaction_msgsTtsResult {
    /// Declared text; canonical bounds are part of CODEC_IDENTITY.
    pub text: String,
    /// Declared msg; canonical bounds are part of CODEC_IDENTITY.
    pub msg: String,
}
impl Default for Ros1Pal_interaction_msgsTtsResult {
    fn default() -> Self {
        Self {
            text: Default::default(),
            msg: Default::default(),
        }
    }
}
impl Ros1Pal_interaction_msgsTtsResult {
    pub const MAX_WIRE_BYTES: usize = 264;
    pub const CARTESIAN_WIRE_BYTES: u64 = 264;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_74f6eebecfd7e0e50e48ca3393fc0f9e9e24baec834bf39cb30455e9f0d9cf56";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.text.len() > 128 || self.text.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.text.len())?;
        if self.msg.len() > 128 || self.msg.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.msg.len())?;
        if n > 264 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.text.len() as u32).to_le_bytes());
        put(out, at, self.text.as_bytes());
        put(out, at, &(self.msg.len() as u32).to_le_bytes());
        put(out, at, self.msg.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.text = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.msg = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_interaction_msgsTtsResult {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 264 {
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
/// Complete bounded value for ROS1 pal_interaction_msgs/TtsMark.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_interaction_msgsTtsMark {
    /// Declared id; canonical bounds are part of CODEC_IDENTITY.
    pub id: String,
    /// Declared keys; canonical bounds are part of CODEC_IDENTITY.
    pub keys: Vec<String>,
    /// Declared value; canonical bounds are part of CODEC_IDENTITY.
    pub value: Vec<String>,
}
impl Default for Ros1Pal_interaction_msgsTtsMark {
    fn default() -> Self {
        Self {
            id: Default::default(),
            keys: Default::default(),
            value: Default::default(),
        }
    }
}
impl Ros1Pal_interaction_msgsTtsMark {
    pub const MAX_WIRE_BYTES: usize = 4364;
    pub const CARTESIAN_WIRE_BYTES: u64 = 4364;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_4f92d66f3ec5bc7645da4cb0dabce2d662ebffe13a67c999c5cf3d771f11fc95";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.id.len() > 128 || self.id.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.id.len())?;
        if self.keys.len() > 16 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.keys {
            if element.len() > 128 || element.as_bytes().contains(&0) {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
            n = add_size(n, element.len())?;
        }
        if self.value.len() > 16 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.value {
            if element.len() > 128 || element.as_bytes().contains(&0) {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
            n = add_size(n, element.len())?;
        }
        if n > 4364 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.id.len() as u32).to_le_bytes());
        put(out, at, self.id.as_bytes());
        put(out, at, &(self.keys.len() as u32).to_le_bytes());
        for element in &self.keys {
            put(out, at, &(element.len() as u32).to_le_bytes());
            put(out, at, element.as_bytes());
        }
        put(out, at, &(self.value.len() as u32).to_le_bytes());
        for element in &self.value {
            put(out, at, &(element.len() as u32).to_le_bytes());
            put(out, at, element.as_bytes());
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.id = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 16 {
                return Err(invalid());
            }
            value.keys = Vec::with_capacity(count);
            for i in 0..count {
                let size = read_count(bytes, at)?;
                if size > 128 {
                    return Err(invalid());
                }
                let raw = take(bytes, at, size)?;
                if raw.contains(&0) {
                    return Err(invalid());
                }
                let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
                value.keys.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 16 {
                return Err(invalid());
            }
            value.value = Vec::with_capacity(count);
            for i in 0..count {
                let size = read_count(bytes, at)?;
                if size > 128 {
                    return Err(invalid());
                }
                let raw = take(bytes, at, size)?;
                if raw.contains(&0) {
                    return Err(invalid());
                }
                let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
                value.value.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros1Pal_interaction_msgsTtsMark {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 4364 {
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
/// Complete bounded value for ROS1 pal_interaction_msgs/TtsFeedback.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_interaction_msgsTtsFeedback {
    /// Declared event_type; canonical bounds are part of CODEC_IDENTITY.
    pub event_type: u16,
    /// Declared timestamp; canonical bounds are part of CODEC_IDENTITY.
    pub timestamp: Ros1Time,
    /// Declared text_said; canonical bounds are part of CODEC_IDENTITY.
    pub text_said: String,
    /// Declared next_word; canonical bounds are part of CODEC_IDENTITY.
    pub next_word: String,
    /// Declared viseme_id; canonical bounds are part of CODEC_IDENTITY.
    pub viseme_id: String,
    /// Declared marks; canonical bounds are part of CODEC_IDENTITY.
    pub marks: Ros1Pal_interaction_msgsTtsMark,
}
impl Default for Ros1Pal_interaction_msgsTtsFeedback {
    fn default() -> Self {
        Self {
            event_type: Default::default(),
            timestamp: Default::default(),
            text_said: Default::default(),
            next_word: Default::default(),
            viseme_id: Default::default(),
            marks: Default::default(),
        }
    }
}
impl Ros1Pal_interaction_msgsTtsFeedback {
    pub const MAX_WIRE_BYTES: usize = 4770;
    pub const CARTESIAN_WIRE_BYTES: u64 = 4770;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_3154aa11cda4bc9750910ea8283b14106fc992d9b4f99055bdefd226bf784894";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 2)?;
        n = add_size(n, self.timestamp.wire_size()?)?;
        if self.text_said.len() > 128 || self.text_said.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.text_said.len())?;
        if self.next_word.len() > 128 || self.next_word.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.next_word.len())?;
        if self.viseme_id.len() > 128 || self.viseme_id.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.viseme_id.len())?;
        n = add_size(n, self.marks.wire_size()?)?;
        if n > 4770 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.event_type.to_le_bytes());
        self.timestamp.write_fields(out, at);
        put(out, at, &(self.text_said.len() as u32).to_le_bytes());
        put(out, at, self.text_said.as_bytes());
        put(out, at, &(self.next_word.len() as u32).to_le_bytes());
        put(out, at, self.next_word.as_bytes());
        put(out, at, &(self.viseme_id.len() as u32).to_le_bytes());
        put(out, at, self.viseme_id.as_bytes());
        self.marks.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.event_type = decoded;
        let decoded = Ros1Time::read_fields(bytes, at)?;
        value.timestamp = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.text_said = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.next_word = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.viseme_id = decoded;
        let decoded = Ros1Pal_interaction_msgsTtsMark::read_fields(bytes, at)?;
        value.marks = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_interaction_msgsTtsFeedback {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 4770 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 34 {
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
/// Complete bounded value for ROS1 pal_interaction_msgs/VoiceActivity.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_interaction_msgsVoiceActivity {
    /// Declared isSpeech; canonical bounds are part of CODEC_IDENTITY.
    pub isSpeech: bool,
}
impl Default for Ros1Pal_interaction_msgsVoiceActivity {
    fn default() -> Self {
        Self {
            isSpeech: Default::default(),
        }
    }
}
impl Ros1Pal_interaction_msgsVoiceActivity {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_c33952dbed35f2e6e08dd4dd8b7adf5c71a52106e2b274b988ec3218648b42a7";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if n > 1 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &[u8::from(self.isSpeech)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.isSpeech = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_interaction_msgsVoiceActivity {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 1 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 1 {
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
/// Complete bounded value for ROS1 pal_interaction_msgs/WebGuiEvent.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_interaction_msgsWebGuiEvent {
    /// Declared name; canonical bounds are part of CODEC_IDENTITY.
    pub name: String,
    /// Declared arg; canonical bounds are part of CODEC_IDENTITY.
    pub arg: String,
}
impl Default for Ros1Pal_interaction_msgsWebGuiEvent {
    fn default() -> Self {
        Self {
            name: Default::default(),
            arg: Default::default(),
        }
    }
}
impl Ros1Pal_interaction_msgsWebGuiEvent {
    pub const MAX_WIRE_BYTES: usize = 264;
    pub const CARTESIAN_WIRE_BYTES: u64 = 264;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_fb8030a4cb371da5dae852d62b28d8e7b03c3d37f0f6390c904ef3dc84084e23";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.name.len() > 128 || self.name.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.name.len())?;
        if self.arg.len() > 128 || self.arg.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.arg.len())?;
        if n > 264 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.name.len() as u32).to_le_bytes());
        put(out, at, self.name.as_bytes());
        put(out, at, &(self.arg.len() as u32).to_le_bytes());
        put(out, at, self.arg.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.name = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.arg = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_interaction_msgsWebGuiEvent {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 264 {
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
/// Complete bounded value for ROS1 pal_interaction_msgs/asrupdate.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_interaction_msgsAsrupdate {
    /// Declared language; canonical bounds are part of CODEC_IDENTITY.
    pub language: String,
    /// Declared enable_grammar; canonical bounds are part of CODEC_IDENTITY.
    pub enable_grammar: String,
    /// Declared disable_grammar; canonical bounds are part of CODEC_IDENTITY.
    pub disable_grammar: String,
    /// Declared acousticenv; canonical bounds are part of CODEC_IDENTITY.
    pub acousticenv: String,
    /// Declared active; canonical bounds are part of CODEC_IDENTITY.
    pub active: bool,
}
impl Default for Ros1Pal_interaction_msgsAsrupdate {
    fn default() -> Self {
        Self {
            language: Default::default(),
            enable_grammar: Default::default(),
            disable_grammar: Default::default(),
            acousticenv: Default::default(),
            active: Default::default(),
        }
    }
}
impl Ros1Pal_interaction_msgsAsrupdate {
    pub const MAX_WIRE_BYTES: usize = 529;
    pub const CARTESIAN_WIRE_BYTES: u64 = 529;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_34584358ab6faa36c96fbbe2de2bef7cba7ae6eb5879cd6b676a1826fb154fda";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.language.len() > 128 || self.language.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.language.len())?;
        if self.enable_grammar.len() > 128 || self.enable_grammar.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.enable_grammar.len())?;
        if self.disable_grammar.len() > 128 || self.disable_grammar.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.disable_grammar.len())?;
        if self.acousticenv.len() > 128 || self.acousticenv.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.acousticenv.len())?;
        n = add_size(n, 1)?;
        if n > 529 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.language.len() as u32).to_le_bytes());
        put(out, at, self.language.as_bytes());
        put(out, at, &(self.enable_grammar.len() as u32).to_le_bytes());
        put(out, at, self.enable_grammar.as_bytes());
        put(out, at, &(self.disable_grammar.len() as u32).to_le_bytes());
        put(out, at, self.disable_grammar.as_bytes());
        put(out, at, &(self.acousticenv.len() as u32).to_le_bytes());
        put(out, at, self.acousticenv.as_bytes());
        put(out, at, &[u8::from(self.active)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.language = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.enable_grammar = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.disable_grammar = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.acousticenv = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.active = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_interaction_msgsAsrupdate {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 529 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 17 {
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
/// Complete bounded value for ROS1 pal_interaction_msgs/audiosignal.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_interaction_msgsAudiosignal {
    /// Declared channel0; canonical bounds are part of CODEC_IDENTITY.
    pub channel0: Vec<f64>,
    /// Declared channel1; canonical bounds are part of CODEC_IDENTITY.
    pub channel1: Vec<f64>,
}
impl Default for Ros1Pal_interaction_msgsAudiosignal {
    fn default() -> Self {
        Self {
            channel0: Default::default(),
            channel1: Default::default(),
        }
    }
}
impl Ros1Pal_interaction_msgsAudiosignal {
    pub const MAX_WIRE_BYTES: usize = 264;
    pub const CARTESIAN_WIRE_BYTES: u64 = 264;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_f70d9a987e0f5443060a55d2f617d9a8fc9e59fe110a9acd256a186b64e5e809";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.channel0.len() > 16 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.channel0 {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if self.channel1.len() > 16 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.channel1 {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if n > 264 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.channel0.len() as u32).to_le_bytes());
        for element in &self.channel0 {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &(self.channel1.len() as u32).to_le_bytes());
        for element in &self.channel1 {
            put(out, at, &element.to_le_bytes());
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = read_count(bytes, at)?;
            if count > 16 {
                return Err(invalid());
            }
            value.channel0 = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.channel0.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 16 {
                return Err(invalid());
            }
            value.channel1 = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.channel1.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros1Pal_interaction_msgsAudiosignal {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 264 {
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
/// Complete bounded value for ROS1 pal_interaction_msgs/recognizerServiceRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_interaction_msgsRecognizerServiceRequest {
    /// Declared asrupdate; canonical bounds are part of CODEC_IDENTITY.
    pub asrupdate: Ros1Pal_interaction_msgsAsrupdate,
}
impl Default for Ros1Pal_interaction_msgsRecognizerServiceRequest {
    fn default() -> Self {
        Self {
            asrupdate: Default::default(),
        }
    }
}
impl Ros1Pal_interaction_msgsRecognizerServiceRequest {
    pub const MAX_WIRE_BYTES: usize = 529;
    pub const CARTESIAN_WIRE_BYTES: u64 = 529;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_369151b882d849a0ab75110068aedd9eac22d87afe7b5bc13af87a6f78588edc";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.asrupdate.wire_size()?)?;
        if n > 529 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.asrupdate.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Pal_interaction_msgsAsrupdate::read_fields(bytes, at)?;
        value.asrupdate = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_interaction_msgsRecognizerServiceRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 529 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 17 {
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
/// Complete bounded value for ROS1 pal_interaction_msgs/recognizerServiceResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_interaction_msgsRecognizerServiceResponse {}
impl Default for Ros1Pal_interaction_msgsRecognizerServiceResponse {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Pal_interaction_msgsRecognizerServiceResponse {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_3598ef995f13f4377e0e4eff270a9e277c3c94018f60aeb944119ce9f5b25813";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if n > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {}
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        Ok(value)
    }
}
impl Canonical for Ros1Pal_interaction_msgsRecognizerServiceResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 0 {
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
/// Complete bounded value for ROS1 pal_motion_model_msgs/GetMotionMapRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_motion_model_msgsGetMotionMapRequest {}
impl Default for Ros1Pal_motion_model_msgsGetMotionMapRequest {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Pal_motion_model_msgsGetMotionMapRequest {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_4bfce8e9cc79e30ec211aa18bafb432fa0d3ff4fa18569a1c0ef178fe2729e97";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if n > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {}
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        Ok(value)
    }
}
impl Canonical for Ros1Pal_motion_model_msgsGetMotionMapRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 0 {
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
/// Complete bounded value for ROS1 pal_motion_model_msgs/MotionModel.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_motion_model_msgsMotionModel {
    /// Declared heading_mean; canonical bounds are part of CODEC_IDENTITY.
    pub heading_mean: f32,
    /// Declared heading_std_dev; canonical bounds are part of CODEC_IDENTITY.
    pub heading_std_dev: f32,
    /// Declared linear_speed_mean; canonical bounds are part of CODEC_IDENTITY.
    pub linear_speed_mean: f32,
    /// Declared linear_speed_std_dev; canonical bounds are part of CODEC_IDENTITY.
    pub linear_speed_std_dev: f32,
    /// Declared angular_speed_mean; canonical bounds are part of CODEC_IDENTITY.
    pub angular_speed_mean: f32,
    /// Declared angular_speed_std_dev; canonical bounds are part of CODEC_IDENTITY.
    pub angular_speed_std_dev: f32,
}
impl Default for Ros1Pal_motion_model_msgsMotionModel {
    fn default() -> Self {
        Self {
            heading_mean: Default::default(),
            heading_std_dev: Default::default(),
            linear_speed_mean: Default::default(),
            linear_speed_std_dev: Default::default(),
            angular_speed_mean: Default::default(),
            angular_speed_std_dev: Default::default(),
        }
    }
}
impl Ros1Pal_motion_model_msgsMotionModel {
    pub const MAX_WIRE_BYTES: usize = 24;
    pub const CARTESIAN_WIRE_BYTES: u64 = 24;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_3d44b889a1c70d5e84107202bccf2143c8dd559a2cd5499d0c7319568469c1ea";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if !self.heading_mean.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.heading_std_dev.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.linear_speed_mean.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.linear_speed_std_dev.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.angular_speed_mean.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.angular_speed_std_dev.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if n > 24 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.heading_mean.to_le_bytes());
        put(out, at, &self.heading_std_dev.to_le_bytes());
        put(out, at, &self.linear_speed_mean.to_le_bytes());
        put(out, at, &self.linear_speed_std_dev.to_le_bytes());
        put(out, at, &self.angular_speed_mean.to_le_bytes());
        put(out, at, &self.angular_speed_std_dev.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.heading_mean = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.heading_std_dev = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.linear_speed_mean = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.linear_speed_std_dev = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.angular_speed_mean = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.angular_speed_std_dev = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_motion_model_msgsMotionModel {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
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
/// Complete bounded value for ROS1 pal_motion_model_msgs/MotionModelList.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_motion_model_msgsMotionModelList {
    /// Declared models; canonical bounds are part of CODEC_IDENTITY.
    pub models: Vec<Ros1Pal_motion_model_msgsMotionModel>,
}
impl Default for Ros1Pal_motion_model_msgsMotionModelList {
    fn default() -> Self {
        Self {
            models: Default::default(),
        }
    }
}
impl Ros1Pal_motion_model_msgsMotionModelList {
    pub const MAX_WIRE_BYTES: usize = 100;
    pub const CARTESIAN_WIRE_BYTES: u64 = 100;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_f85f87d53cc9ae6392347e9d2cc41d306260335b4568e671890ebdd43a27a294";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.models.len() > 4 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.models {
            n = add_size(n, element.wire_size()?)?;
        }
        if n > 100 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.models.len() as u32).to_le_bytes());
        for element in &self.models {
            element.write_fields(out, at);
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = read_count(bytes, at)?;
            if count > 4 {
                return Err(invalid());
            }
            value.models = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros1Pal_motion_model_msgsMotionModel::read_fields(bytes, at)?;
                value.models.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros1Pal_motion_model_msgsMotionModelList {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 100 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 4 {
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
/// Complete bounded value for ROS1 pal_motion_model_msgs/MotionModelMap.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_motion_model_msgsMotionModelMap {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros1Std_msgsHeader,
    /// Declared info; canonical bounds are part of CODEC_IDENTITY.
    pub info: Ros1Nav_msgsMapMetaData,
    /// Declared data; canonical bounds are part of CODEC_IDENTITY.
    pub data: Vec<Ros1Pal_motion_model_msgsMotionModelList>,
}
impl Default for Ros1Pal_motion_model_msgsMotionModelMap {
    fn default() -> Self {
        Self {
            header: Default::default(),
            info: Default::default(),
            data: Default::default(),
        }
    }
}
impl Ros1Pal_motion_model_msgsMotionModelMap {
    pub const MAX_WIRE_BYTES: usize = 624;
    pub const CARTESIAN_WIRE_BYTES: u64 = 624;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_6f1702acedc40207e16d9a06d68581fb055ac1b42135efdbbbd1477eff42b289";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        n = add_size(n, self.info.wire_size()?)?;
        if self.data.len() > 4 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.data {
            n = add_size(n, element.wire_size()?)?;
        }
        if n > 624 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.header.write_fields(out, at);
        self.info.write_fields(out, at);
        put(out, at, &(self.data.len() as u32).to_le_bytes());
        for element in &self.data {
            element.write_fields(out, at);
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Std_msgsHeader::read_fields(bytes, at)?;
        value.header = decoded;
        let decoded = Ros1Nav_msgsMapMetaData::read_fields(bytes, at)?;
        value.info = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 4 {
                return Err(invalid());
            }
            value.data = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros1Pal_motion_model_msgsMotionModelList::read_fields(bytes, at)?;
                value.data.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros1Pal_motion_model_msgsMotionModelMap {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 624 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 96 {
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
/// Complete bounded value for ROS1 pal_motion_model_msgs/GetMotionMapResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_motion_model_msgsGetMotionMapResponse {
    /// Declared map; canonical bounds are part of CODEC_IDENTITY.
    pub map: Ros1Pal_motion_model_msgsMotionModelMap,
}
impl Default for Ros1Pal_motion_model_msgsGetMotionMapResponse {
    fn default() -> Self {
        Self {
            map: Default::default(),
        }
    }
}
impl Ros1Pal_motion_model_msgsGetMotionMapResponse {
    pub const MAX_WIRE_BYTES: usize = 624;
    pub const CARTESIAN_WIRE_BYTES: u64 = 624;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_b031c17ef990e784eeeb7fbf270b482207c5de43323a9cbf37306ac07b159440";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.map.wire_size()?)?;
        if n > 624 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.map.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Pal_motion_model_msgsMotionModelMap::read_fields(bytes, at)?;
        value.map = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_motion_model_msgsGetMotionMapResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 624 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 96 {
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
/// Complete bounded value for ROS1 pal_multirobot_msgs/WifiServiceDetection.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_multirobot_msgsWifiServiceDetection {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros1Std_msgsHeader,
    /// Declared id; canonical bounds are part of CODEC_IDENTITY.
    pub id: String,
    /// Declared signal; canonical bounds are part of CODEC_IDENTITY.
    pub signal: i16,
}
impl Default for Ros1Pal_multirobot_msgsWifiServiceDetection {
    fn default() -> Self {
        Self {
            header: Default::default(),
            id: Default::default(),
            signal: Default::default(),
        }
    }
}
impl Ros1Pal_multirobot_msgsWifiServiceDetection {
    pub const MAX_WIRE_BYTES: usize = 278;
    pub const CARTESIAN_WIRE_BYTES: u64 = 278;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_1f9a244c4e98ec5f4eb60bd008a62b94a91a6982b56273510c3019b95f1b5741";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        if self.id.len() > 128 || self.id.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.id.len())?;
        n = add_size(n, 2)?;
        if n > 278 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.header.write_fields(out, at);
        put(out, at, &(self.id.len() as u32).to_le_bytes());
        put(out, at, self.id.as_bytes());
        put(out, at, &self.signal.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Std_msgsHeader::read_fields(bytes, at)?;
        value.header = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.id = decoded;
        let decoded = i16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.signal = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_multirobot_msgsWifiServiceDetection {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 278 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 22 {
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
/// Complete bounded value for ROS1 pal_navigation_msgs/AcknowledgmentRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_navigation_msgsAcknowledgmentRequest {
    /// Declared input; canonical bounds are part of CODEC_IDENTITY.
    pub input: String,
}
impl Default for Ros1Pal_navigation_msgsAcknowledgmentRequest {
    fn default() -> Self {
        Self {
            input: Default::default(),
        }
    }
}
impl Ros1Pal_navigation_msgsAcknowledgmentRequest {
    pub const MAX_WIRE_BYTES: usize = 132;
    pub const CARTESIAN_WIRE_BYTES: u64 = 132;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_0249fb5130ed44b9127f0cb73472fc4366de614fcc3be68ed3e7bf2a4636cae5";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.input.len() > 128 || self.input.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.input.len())?;
        if n > 132 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.input.len() as u32).to_le_bytes());
        put(out, at, self.input.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.input = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_navigation_msgsAcknowledgmentRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 132 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 4 {
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
/// Complete bounded value for ROS1 pal_navigation_msgs/AcknowledgmentResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_navigation_msgsAcknowledgmentResponse {
    /// Declared output; canonical bounds are part of CODEC_IDENTITY.
    pub output: bool,
    /// Declared error; canonical bounds are part of CODEC_IDENTITY.
    pub error: String,
}
impl Default for Ros1Pal_navigation_msgsAcknowledgmentResponse {
    fn default() -> Self {
        Self {
            output: Default::default(),
            error: Default::default(),
        }
    }
}
impl Ros1Pal_navigation_msgsAcknowledgmentResponse {
    pub const MAX_WIRE_BYTES: usize = 133;
    pub const CARTESIAN_WIRE_BYTES: u64 = 133;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_cbc0f207907bc8de9f5c04bbf13c54ce81e72797ffadd0fea44980d1aa2658ae";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if self.error.len() > 128 || self.error.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.error.len())?;
        if n > 133 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &[u8::from(self.output)]);
        put(out, at, &(self.error.len() as u32).to_le_bytes());
        put(out, at, self.error.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.output = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.error = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_navigation_msgsAcknowledgmentResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 133 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 5 {
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
/// Complete bounded value for ROS1 std_msgs/String.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Std_msgsString {
    /// Declared data; canonical bounds are part of CODEC_IDENTITY.
    pub data: String,
}
impl Default for Ros1Std_msgsString {
    fn default() -> Self {
        Self {
            data: Default::default(),
        }
    }
}
impl Ros1Std_msgsString {
    pub const MAX_WIRE_BYTES: usize = 132;
    pub const CARTESIAN_WIRE_BYTES: u64 = 132;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_8a71a2d5957414e5a34318653c6314c005aab13980a35fa331401a4acd4442dc";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.data.len() > 128 || self.data.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.data.len())?;
        if n > 132 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.data.len() as u32).to_le_bytes());
        put(out, at, self.data.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.data = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Std_msgsString {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 132 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 4 {
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
/// Complete bounded value for ROS1 pal_navigation_msgs/AvailableMaps.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_navigation_msgsAvailableMaps {
    /// Declared map_names; canonical bounds are part of CODEC_IDENTITY.
    pub map_names: Vec<Ros1Std_msgsString>,
}
impl Default for Ros1Pal_navigation_msgsAvailableMaps {
    fn default() -> Self {
        Self {
            map_names: Default::default(),
        }
    }
}
impl Ros1Pal_navigation_msgsAvailableMaps {
    pub const MAX_WIRE_BYTES: usize = 532;
    pub const CARTESIAN_WIRE_BYTES: u64 = 532;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_3ac5ca4dc811d8082ad915e4f81eca379f2165a639dc113bb078f9952ed7322d";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.map_names.len() > 4 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.map_names {
            n = add_size(n, element.wire_size()?)?;
        }
        if n > 532 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.map_names.len() as u32).to_le_bytes());
        for element in &self.map_names {
            element.write_fields(out, at);
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = read_count(bytes, at)?;
            if count > 4 {
                return Err(invalid());
            }
            value.map_names = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros1Std_msgsString::read_fields(bytes, at)?;
                value.map_names.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros1Pal_navigation_msgsAvailableMaps {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 532 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 4 {
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
/// Complete bounded value for ROS1 pal_navigation_msgs/ChangeBuildingRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_navigation_msgsChangeBuildingRequest {
    /// Declared building_name; canonical bounds are part of CODEC_IDENTITY.
    pub building_name: String,
    /// Declared floor_name; canonical bounds are part of CODEC_IDENTITY.
    pub floor_name: String,
}
impl Default for Ros1Pal_navigation_msgsChangeBuildingRequest {
    fn default() -> Self {
        Self {
            building_name: Default::default(),
            floor_name: Default::default(),
        }
    }
}
impl Ros1Pal_navigation_msgsChangeBuildingRequest {
    pub const MAX_WIRE_BYTES: usize = 264;
    pub const CARTESIAN_WIRE_BYTES: u64 = 264;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_6144b47179187bf53c27112461762b29e9af1841704a53981e0b633d798c094c";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.building_name.len() > 128 || self.building_name.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.building_name.len())?;
        if self.floor_name.len() > 128 || self.floor_name.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.floor_name.len())?;
        if n > 264 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.building_name.len() as u32).to_le_bytes());
        put(out, at, self.building_name.as_bytes());
        put(out, at, &(self.floor_name.len() as u32).to_le_bytes());
        put(out, at, self.floor_name.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.building_name = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.floor_name = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_navigation_msgsChangeBuildingRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 264 {
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
/// Complete bounded value for ROS1 pal_navigation_msgs/ChangeBuildingResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_navigation_msgsChangeBuildingResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Pal_navigation_msgsChangeBuildingResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Pal_navigation_msgsChangeBuildingResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_561da528ec2a5cc779e660da2d9218d3b64339cf0a7c3a889aabb5d8aa63e640";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if n > 1 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_navigation_msgsChangeBuildingResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 1 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 1 {
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
/// Complete bounded value for ROS1 pal_navigation_msgs/ChangeMapRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_navigation_msgsChangeMapRequest {
    /// Declared map; canonical bounds are part of CODEC_IDENTITY.
    pub map: Ros1Nav_msgsOccupancyGrid,
}
impl Default for Ros1Pal_navigation_msgsChangeMapRequest {
    fn default() -> Self {
        Self {
            map: Default::default(),
        }
    }
}
impl Ros1Pal_navigation_msgsChangeMapRequest {
    pub const MAX_WIRE_BYTES: usize = 480;
    pub const CARTESIAN_WIRE_BYTES: u64 = 480;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_5b418e8170efc2707f0667474c75034109e36b29e3d00f0b6ae1410a59beb4bf";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.map.wire_size()?)?;
        if n > 480 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.map.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Nav_msgsOccupancyGrid::read_fields(bytes, at)?;
        value.map = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_navigation_msgsChangeMapRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 480 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 96 {
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
/// Complete bounded value for ROS1 pal_navigation_msgs/ChangeMapResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_navigation_msgsChangeMapResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Pal_navigation_msgsChangeMapResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Pal_navigation_msgsChangeMapResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_29d8c048afd7b6e76c7045decd5d8af1d994db75f4af2c2e663d95c3579077f5";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if n > 1 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_navigation_msgsChangeMapResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 1 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 1 {
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
/// Complete bounded value for ROS1 pal_navigation_msgs/ChangeSyncMapRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_navigation_msgsChangeSyncMapRequest {
    /// Declared map; canonical bounds are part of CODEC_IDENTITY.
    pub map: Ros1Nav_msgsOccupancyGrid,
    /// Declared map_name; canonical bounds are part of CODEC_IDENTITY.
    pub map_name: String,
    /// Declared sources; canonical bounds are part of CODEC_IDENTITY.
    pub sources: Vec<String>,
}
impl Default for Ros1Pal_navigation_msgsChangeSyncMapRequest {
    fn default() -> Self {
        Self {
            map: Default::default(),
            map_name: Default::default(),
            sources: Default::default(),
        }
    }
}
impl Ros1Pal_navigation_msgsChangeSyncMapRequest {
    pub const MAX_WIRE_BYTES: usize = 2728;
    pub const CARTESIAN_WIRE_BYTES: u64 = 2728;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_d289a4940286f55bfade22fc3c87a511067e1f1ec078d8735acf455469846de5";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.map.wire_size()?)?;
        if self.map_name.len() > 128 || self.map_name.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.map_name.len())?;
        if self.sources.len() > 16 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.sources {
            if element.len() > 128 || element.as_bytes().contains(&0) {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
            n = add_size(n, element.len())?;
        }
        if n > 2728 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.map.write_fields(out, at);
        put(out, at, &(self.map_name.len() as u32).to_le_bytes());
        put(out, at, self.map_name.as_bytes());
        put(out, at, &(self.sources.len() as u32).to_le_bytes());
        for element in &self.sources {
            put(out, at, &(element.len() as u32).to_le_bytes());
            put(out, at, element.as_bytes());
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Nav_msgsOccupancyGrid::read_fields(bytes, at)?;
        value.map = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.map_name = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 16 {
                return Err(invalid());
            }
            value.sources = Vec::with_capacity(count);
            for i in 0..count {
                let size = read_count(bytes, at)?;
                if size > 128 {
                    return Err(invalid());
                }
                let raw = take(bytes, at, size)?;
                if raw.contains(&0) {
                    return Err(invalid());
                }
                let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
                value.sources.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros1Pal_navigation_msgsChangeSyncMapRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 2728 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 104 {
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
/// Complete bounded value for ROS1 pal_navigation_msgs/ChangeSyncMapResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_navigation_msgsChangeSyncMapResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Pal_navigation_msgsChangeSyncMapResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Pal_navigation_msgsChangeSyncMapResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_d10c4bb1230e579ed4b24537211cdfd6d7d155a7297681a14af9a5d9a3f2ab80";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if n > 1 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_navigation_msgsChangeSyncMapResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 1 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 1 {
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
/// Complete bounded value for ROS1 pal_navigation_msgs/DisableEmergencyRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_navigation_msgsDisableEmergencyRequest {
    /// Declared second; canonical bounds are part of CODEC_IDENTITY.
    pub second: f64,
    /// Declared useLEDs; canonical bounds are part of CODEC_IDENTITY.
    pub useLEDs: bool,
}
impl Default for Ros1Pal_navigation_msgsDisableEmergencyRequest {
    fn default() -> Self {
        Self {
            second: Default::default(),
            useLEDs: Default::default(),
        }
    }
}
impl Ros1Pal_navigation_msgsDisableEmergencyRequest {
    pub const MAX_WIRE_BYTES: usize = 9;
    pub const CARTESIAN_WIRE_BYTES: u64 = 9;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_70dbc31ae4309c03fa21a0247c16598ca1a9056243963854e9e17a4648cc599c";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if !self.second.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        n = add_size(n, 1)?;
        if n > 9 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.second.to_le_bytes());
        put(out, at, &[u8::from(self.useLEDs)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.second = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.useLEDs = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_navigation_msgsDisableEmergencyRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 9 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 9 {
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
/// Complete bounded value for ROS1 pal_navigation_msgs/DisableEmergencyResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_navigation_msgsDisableEmergencyResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Pal_navigation_msgsDisableEmergencyResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Pal_navigation_msgsDisableEmergencyResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_c5b7fa73ccceb51e2a6fa950f690a65f91f046644b75f878964d322d9b6573a4";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if n > 1 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_navigation_msgsDisableEmergencyResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 1 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 1 {
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
/// Complete bounded value for ROS1 pal_navigation_msgs/Emergency.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_navigation_msgsEmergency {
    /// Declared data; canonical bounds are part of CODEC_IDENTITY.
    pub data: bool,
    /// Declared forward; canonical bounds are part of CODEC_IDENTITY.
    pub forward: bool,
    /// Declared backward; canonical bounds are part of CODEC_IDENTITY.
    pub backward: bool,
    /// Declared msgs; canonical bounds are part of CODEC_IDENTITY.
    pub msgs: Vec<Ros1Std_msgsString>,
}
impl Default for Ros1Pal_navigation_msgsEmergency {
    fn default() -> Self {
        Self {
            data: Default::default(),
            forward: Default::default(),
            backward: Default::default(),
            msgs: Default::default(),
        }
    }
}
impl Ros1Pal_navigation_msgsEmergency {
    pub const MAX_WIRE_BYTES: usize = 535;
    pub const CARTESIAN_WIRE_BYTES: u64 = 535;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_00339764ab9f5d7e90ce08b5675434a1113e38b31e9f94166a6c8b994b02d635";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        if self.msgs.len() > 4 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.msgs {
            n = add_size(n, element.wire_size()?)?;
        }
        if n > 535 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &[u8::from(self.data)]);
        put(out, at, &[u8::from(self.forward)]);
        put(out, at, &[u8::from(self.backward)]);
        put(out, at, &(self.msgs.len() as u32).to_le_bytes());
        for element in &self.msgs {
            element.write_fields(out, at);
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.data = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.forward = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.backward = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 4 {
                return Err(invalid());
            }
            value.msgs = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros1Std_msgsString::read_fields(bytes, at)?;
                value.msgs.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros1Pal_navigation_msgsEmergency {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 535 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 7 {
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
/// Complete bounded value for ROS1 pal_navigation_msgs/EulerAngles.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_navigation_msgsEulerAngles {
    /// Declared sequence; canonical bounds are part of CODEC_IDENTITY.
    pub sequence: String,
    /// Declared angles_in_degrees; canonical bounds are part of CODEC_IDENTITY.
    pub angles_in_degrees: bool,
    /// Declared ai; canonical bounds are part of CODEC_IDENTITY.
    pub ai: f64,
    /// Declared aj; canonical bounds are part of CODEC_IDENTITY.
    pub aj: f64,
    /// Declared ak; canonical bounds are part of CODEC_IDENTITY.
    pub ak: f64,
}
impl Default for Ros1Pal_navigation_msgsEulerAngles {
    fn default() -> Self {
        Self {
            sequence: Default::default(),
            angles_in_degrees: Default::default(),
            ai: Default::default(),
            aj: Default::default(),
            ak: Default::default(),
        }
    }
}
impl Ros1Pal_navigation_msgsEulerAngles {
    pub const MAX_WIRE_BYTES: usize = 157;
    pub const CARTESIAN_WIRE_BYTES: u64 = 157;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_cc1bd6ac99235a0d92e3f458be257dcd81c88763822f7e9c5b3f034a76691d0f";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.sequence.len() > 128 || self.sequence.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.sequence.len())?;
        n = add_size(n, 1)?;
        if !self.ai.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.aj.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.ak.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if n > 157 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.sequence.len() as u32).to_le_bytes());
        put(out, at, self.sequence.as_bytes());
        put(out, at, &[u8::from(self.angles_in_degrees)]);
        put(out, at, &self.ai.to_le_bytes());
        put(out, at, &self.aj.to_le_bytes());
        put(out, at, &self.ak.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.sequence = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.angles_in_degrees = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.ai = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.aj = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.ak = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_navigation_msgsEulerAngles {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 157 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 29 {
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
/// Complete bounded value for ROS1 pal_navigation_msgs/EulerAnglesStamped.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_navigation_msgsEulerAnglesStamped {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros1Std_msgsHeader,
    /// Declared angles; canonical bounds are part of CODEC_IDENTITY.
    pub angles: Ros1Pal_navigation_msgsEulerAngles,
}
impl Default for Ros1Pal_navigation_msgsEulerAnglesStamped {
    fn default() -> Self {
        Self {
            header: Default::default(),
            angles: Default::default(),
        }
    }
}
impl Ros1Pal_navigation_msgsEulerAnglesStamped {
    pub const MAX_WIRE_BYTES: usize = 301;
    pub const CARTESIAN_WIRE_BYTES: u64 = 301;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_595448173da01bddbdba145a6bd1e6269a37b12ac4a7fdc26ca5cb5083452462";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        n = add_size(n, self.angles.wire_size()?)?;
        if n > 301 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.header.write_fields(out, at);
        self.angles.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Std_msgsHeader::read_fields(bytes, at)?;
        value.header = decoded;
        let decoded = Ros1Pal_navigation_msgsEulerAngles::read_fields(bytes, at)?;
        value.angles = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_navigation_msgsEulerAnglesStamped {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 301 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 45 {
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
/// Complete bounded value for ROS1 pal_navigation_msgs/ExecuteParkingGoal.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_navigation_msgsExecuteParkingGoal {
    /// Declared source_frame; canonical bounds are part of CODEC_IDENTITY.
    pub source_frame: String,
    /// Declared target_frame; canonical bounds are part of CODEC_IDENTITY.
    pub target_frame: String,
    /// Declared backwards; canonical bounds are part of CODEC_IDENTITY.
    pub backwards: bool,
    /// Declared max_lin_vel; canonical bounds are part of CODEC_IDENTITY.
    pub max_lin_vel: f64,
    /// Declared max_rot_vel; canonical bounds are part of CODEC_IDENTITY.
    pub max_rot_vel: f64,
}
impl Default for Ros1Pal_navigation_msgsExecuteParkingGoal {
    fn default() -> Self {
        Self {
            source_frame: Default::default(),
            target_frame: Default::default(),
            backwards: Default::default(),
            max_lin_vel: Default::default(),
            max_rot_vel: Default::default(),
        }
    }
}
impl Ros1Pal_navigation_msgsExecuteParkingGoal {
    pub const MAX_WIRE_BYTES: usize = 281;
    pub const CARTESIAN_WIRE_BYTES: u64 = 281;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_5bc772cbbc3a5f90165c84a9f5d81d961a789e78bbbf2fe19706d76be3e3dfae";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.source_frame.len() > 128 || self.source_frame.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.source_frame.len())?;
        if self.target_frame.len() > 128 || self.target_frame.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.target_frame.len())?;
        n = add_size(n, 1)?;
        if !self.max_lin_vel.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.max_rot_vel.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if n > 281 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.source_frame.len() as u32).to_le_bytes());
        put(out, at, self.source_frame.as_bytes());
        put(out, at, &(self.target_frame.len() as u32).to_le_bytes());
        put(out, at, self.target_frame.as_bytes());
        put(out, at, &[u8::from(self.backwards)]);
        put(out, at, &self.max_lin_vel.to_le_bytes());
        put(out, at, &self.max_rot_vel.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.source_frame = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.target_frame = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.backwards = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.max_lin_vel = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.max_rot_vel = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_navigation_msgsExecuteParkingGoal {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 281 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 25 {
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
/// Complete bounded value for ROS1 pal_navigation_msgs/ExecuteParkingResult.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_navigation_msgsExecuteParkingResult {}
impl Default for Ros1Pal_navigation_msgsExecuteParkingResult {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Pal_navigation_msgsExecuteParkingResult {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_51f06f36f320cad8e090e602ad2b390141b364fc4d13ea92a2cbf1cfb784f1ca";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if n > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {}
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        Ok(value)
    }
}
impl Canonical for Ros1Pal_navigation_msgsExecuteParkingResult {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 0 {
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
/// Complete bounded value for ROS1 pal_navigation_msgs/ExecuteParkingFeedback.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_navigation_msgsExecuteParkingFeedback {}
impl Default for Ros1Pal_navigation_msgsExecuteParkingFeedback {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Pal_navigation_msgsExecuteParkingFeedback {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_54fd7db88b179345d32957a36858d4dc1be0e3d1bdbee1ae2051cb69feabd842";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if n > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {}
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        Ok(value)
    }
}
impl Canonical for Ros1Pal_navigation_msgsExecuteParkingFeedback {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 0 {
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
/// Complete bounded value for ROS1 pal_navigation_msgs/FinalApproachPoseRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_navigation_msgsFinalApproachPoseRequest {
    /// Declared pose; canonical bounds are part of CODEC_IDENTITY.
    pub pose: Ros1Geometry_msgsPose,
}
impl Default for Ros1Pal_navigation_msgsFinalApproachPoseRequest {
    fn default() -> Self {
        Self {
            pose: Default::default(),
        }
    }
}
impl Ros1Pal_navigation_msgsFinalApproachPoseRequest {
    pub const MAX_WIRE_BYTES: usize = 56;
    pub const CARTESIAN_WIRE_BYTES: u64 = 56;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_52d199aa79bb76f00cff19792aefd0414fe7319a5f2e4f6c74f88ff7d3810f16";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.pose.wire_size()?)?;
        if n > 56 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.pose.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Geometry_msgsPose::read_fields(bytes, at)?;
        value.pose = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_navigation_msgsFinalApproachPoseRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
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
/// Complete bounded value for ROS1 std_msgs/Bool.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Std_msgsBool {
    /// Declared data; canonical bounds are part of CODEC_IDENTITY.
    pub data: bool,
}
impl Default for Ros1Std_msgsBool {
    fn default() -> Self {
        Self {
            data: Default::default(),
        }
    }
}
impl Ros1Std_msgsBool {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_cbbbbbf2df23f98389500cbf265f45ca9210c3495622a1fd122c1b8b76ce7d33";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if n > 1 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &[u8::from(self.data)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.data = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Std_msgsBool {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 1 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 1 {
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
/// Complete bounded value for ROS1 pal_navigation_msgs/FinalApproachPoseResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_navigation_msgsFinalApproachPoseResponse {
    /// Declared done; canonical bounds are part of CODEC_IDENTITY.
    pub done: Ros1Std_msgsBool,
}
impl Default for Ros1Pal_navigation_msgsFinalApproachPoseResponse {
    fn default() -> Self {
        Self {
            done: Default::default(),
        }
    }
}
impl Ros1Pal_navigation_msgsFinalApproachPoseResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_b0fdbf02ad6c5cd8352a6b66994bd075acfe88027276b560edb8f0f37ba1bf09";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.done.wire_size()?)?;
        if n > 1 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.done.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Std_msgsBool::read_fields(bytes, at)?;
        value.done = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_navigation_msgsFinalApproachPoseResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 1 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 1 {
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
/// Complete bounded value for ROS1 pal_navigation_msgs/GetMapConfigurationRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_navigation_msgsGetMapConfigurationRequest {}
impl Default for Ros1Pal_navigation_msgsGetMapConfigurationRequest {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Pal_navigation_msgsGetMapConfigurationRequest {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_4bfa959fc39c0b51bfa7b9874ff219c2ec1ec59462aa46bf3e504571bda6937e";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if n > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {}
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        Ok(value)
    }
}
impl Canonical for Ros1Pal_navigation_msgsGetMapConfigurationRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 0 {
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
/// Complete bounded value for ROS1 std_msgs/Float32.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Std_msgsFloat32 {
    /// Declared data; canonical bounds are part of CODEC_IDENTITY.
    pub data: f32,
}
impl Default for Ros1Std_msgsFloat32 {
    fn default() -> Self {
        Self {
            data: Default::default(),
        }
    }
}
impl Ros1Std_msgsFloat32 {
    pub const MAX_WIRE_BYTES: usize = 4;
    pub const CARTESIAN_WIRE_BYTES: u64 = 4;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_d19ba548217238df8898fc387f092102779ef51eb3dfece19928caf0025b40b9";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if !self.data.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if n > 4 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.data.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.data = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Std_msgsFloat32 {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 4 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 4 {
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
/// Complete bounded value for ROS1 pal_navigation_msgs/Highways.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_navigation_msgsHighways {
    /// Declared points; canonical bounds are part of CODEC_IDENTITY.
    pub points: Vec<Ros1Geometry_msgsPoint>,
    /// Declared directional; canonical bounds are part of CODEC_IDENTITY.
    pub directional: Ros1Std_msgsBool,
    /// Declared line_width; canonical bounds are part of CODEC_IDENTITY.
    pub line_width: Ros1Std_msgsFloat32,
    /// Declared name; canonical bounds are part of CODEC_IDENTITY.
    pub name: Ros1Std_msgsString,
}
impl Default for Ros1Pal_navigation_msgsHighways {
    fn default() -> Self {
        Self {
            points: Default::default(),
            directional: Default::default(),
            line_width: Default::default(),
            name: Default::default(),
        }
    }
}
impl Ros1Pal_navigation_msgsHighways {
    pub const MAX_WIRE_BYTES: usize = 237;
    pub const CARTESIAN_WIRE_BYTES: u64 = 237;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_f3717c2a5b4e42173901f70af63a28b4dd00e24adf686212a01ff442379f1c43";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.points.len() > 4 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.points {
            n = add_size(n, element.wire_size()?)?;
        }
        n = add_size(n, self.directional.wire_size()?)?;
        n = add_size(n, self.line_width.wire_size()?)?;
        n = add_size(n, self.name.wire_size()?)?;
        if n > 237 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.points.len() as u32).to_le_bytes());
        for element in &self.points {
            element.write_fields(out, at);
        }
        self.directional.write_fields(out, at);
        self.line_width.write_fields(out, at);
        self.name.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = read_count(bytes, at)?;
            if count > 4 {
                return Err(invalid());
            }
            value.points = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros1Geometry_msgsPoint::read_fields(bytes, at)?;
                value.points.push(decoded);
            }
        }
        let decoded = Ros1Std_msgsBool::read_fields(bytes, at)?;
        value.directional = decoded;
        let decoded = Ros1Std_msgsFloat32::read_fields(bytes, at)?;
        value.line_width = decoded;
        let decoded = Ros1Std_msgsString::read_fields(bytes, at)?;
        value.name = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_navigation_msgsHighways {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 237 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 13 {
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
/// Complete bounded value for ROS1 sensor_msgs/ChannelFloat32.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Sensor_msgsChannelFloat32 {
    /// Declared name; canonical bounds are part of CODEC_IDENTITY.
    pub name: String,
    /// Declared values; canonical bounds are part of CODEC_IDENTITY.
    pub values: Vec<f32>,
}
impl Default for Ros1Sensor_msgsChannelFloat32 {
    fn default() -> Self {
        Self {
            name: Default::default(),
            values: Default::default(),
        }
    }
}
impl Ros1Sensor_msgsChannelFloat32 {
    pub const MAX_WIRE_BYTES: usize = 200;
    pub const CARTESIAN_WIRE_BYTES: u64 = 200;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_a164e6a7d124c3c1d5cc165f622c492079b7b31686d4bcff3f8dc45b20a0213b";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.name.len() > 128 || self.name.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.name.len())?;
        if self.values.len() > 16 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.values {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
        }
        if n > 200 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.name.len() as u32).to_le_bytes());
        put(out, at, self.name.as_bytes());
        put(out, at, &(self.values.len() as u32).to_le_bytes());
        for element in &self.values {
            put(out, at, &element.to_le_bytes());
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.name = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 16 {
                return Err(invalid());
            }
            value.values = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.values.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros1Sensor_msgsChannelFloat32 {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 200 {
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
/// Complete bounded value for ROS1 sensor_msgs/PointCloud.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Sensor_msgsPointCloud {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros1Std_msgsHeader,
    /// Declared points; canonical bounds are part of CODEC_IDENTITY.
    pub points: Vec<Ros1Geometry_msgsPoint32>,
    /// Declared channels; canonical bounds are part of CODEC_IDENTITY.
    pub channels: Vec<Ros1Sensor_msgsChannelFloat32>,
}
impl Default for Ros1Sensor_msgsPointCloud {
    fn default() -> Self {
        Self {
            header: Default::default(),
            points: Default::default(),
            channels: Default::default(),
        }
    }
}
impl Ros1Sensor_msgsPointCloud {
    pub const MAX_WIRE_BYTES: usize = 1000;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1000;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_714f5812773665cb9e8cfb03b86e3926eaae188eed2d96cd775c20a9c42a3fce";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        if self.points.len() > 4 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.points {
            n = add_size(n, element.wire_size()?)?;
        }
        if self.channels.len() > 4 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.channels {
            n = add_size(n, element.wire_size()?)?;
        }
        if n > 1000 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.header.write_fields(out, at);
        put(out, at, &(self.points.len() as u32).to_le_bytes());
        for element in &self.points {
            element.write_fields(out, at);
        }
        put(out, at, &(self.channels.len() as u32).to_le_bytes());
        for element in &self.channels {
            element.write_fields(out, at);
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Std_msgsHeader::read_fields(bytes, at)?;
        value.header = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 4 {
                return Err(invalid());
            }
            value.points = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros1Geometry_msgsPoint32::read_fields(bytes, at)?;
                value.points.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 4 {
                return Err(invalid());
            }
            value.channels = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros1Sensor_msgsChannelFloat32::read_fields(bytes, at)?;
                value.channels.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros1Sensor_msgsPointCloud {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 1000 {
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
/// Complete bounded value for ROS1 pal_navigation_msgs/POI.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_navigation_msgsPOI {
    /// Declared points; canonical bounds are part of CODEC_IDENTITY.
    pub points: Ros1Sensor_msgsPointCloud,
    /// Declared ids; canonical bounds are part of CODEC_IDENTITY.
    pub ids: Vec<Ros1Std_msgsString>,
    /// Declared map_id; canonical bounds are part of CODEC_IDENTITY.
    pub map_id: Ros1Std_msgsString,
}
impl Default for Ros1Pal_navigation_msgsPOI {
    fn default() -> Self {
        Self {
            points: Default::default(),
            ids: Default::default(),
            map_id: Default::default(),
        }
    }
}
impl Ros1Pal_navigation_msgsPOI {
    pub const MAX_WIRE_BYTES: usize = 1664;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1664;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_3750170dda28a05b81a5c1255fb3e88adc6105bef955601cccb82a6639e796a4";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.points.wire_size()?)?;
        if self.ids.len() > 4 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.ids {
            n = add_size(n, element.wire_size()?)?;
        }
        n = add_size(n, self.map_id.wire_size()?)?;
        if n > 1664 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.points.write_fields(out, at);
        put(out, at, &(self.ids.len() as u32).to_le_bytes());
        for element in &self.ids {
            element.write_fields(out, at);
        }
        self.map_id.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Sensor_msgsPointCloud::read_fields(bytes, at)?;
        value.points = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 4 {
                return Err(invalid());
            }
            value.ids = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros1Std_msgsString::read_fields(bytes, at)?;
                value.ids.push(decoded);
            }
        }
        let decoded = Ros1Std_msgsString::read_fields(bytes, at)?;
        value.map_id = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_navigation_msgsPOI {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 1664 {
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
/// Complete bounded value for ROS1 pal_navigation_msgs/POIGroup.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_navigation_msgsPOIGroup {
    /// Declared group_name; canonical bounds are part of CODEC_IDENTITY.
    pub group_name: Ros1Std_msgsString,
    /// Declared poi_names; canonical bounds are part of CODEC_IDENTITY.
    pub poi_names: Vec<Ros1Std_msgsString>,
}
impl Default for Ros1Pal_navigation_msgsPOIGroup {
    fn default() -> Self {
        Self {
            group_name: Default::default(),
            poi_names: Default::default(),
        }
    }
}
impl Ros1Pal_navigation_msgsPOIGroup {
    pub const MAX_WIRE_BYTES: usize = 664;
    pub const CARTESIAN_WIRE_BYTES: u64 = 664;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_82b1a1a03ae086b33692ee39850fe1d5df11a3ed3f74cf32204a9851a55b0abf";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.group_name.wire_size()?)?;
        if self.poi_names.len() > 4 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.poi_names {
            n = add_size(n, element.wire_size()?)?;
        }
        if n > 664 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.group_name.write_fields(out, at);
        put(out, at, &(self.poi_names.len() as u32).to_le_bytes());
        for element in &self.poi_names {
            element.write_fields(out, at);
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Std_msgsString::read_fields(bytes, at)?;
        value.group_name = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 4 {
                return Err(invalid());
            }
            value.poi_names = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros1Std_msgsString::read_fields(bytes, at)?;
                value.poi_names.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros1Pal_navigation_msgsPOIGroup {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 664 {
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
/// Complete bounded value for ROS1 pal_navigation_msgs/VisualLocDB.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_navigation_msgsVisualLocDB {
    /// Declared documents; canonical bounds are part of CODEC_IDENTITY.
    pub documents: Vec<u8>,
    /// Declared tree; canonical bounds are part of CODEC_IDENTITY.
    pub tree: Vec<u8>,
    /// Declared weights; canonical bounds are part of CODEC_IDENTITY.
    pub weights: Vec<u8>,
}
impl Default for Ros1Pal_navigation_msgsVisualLocDB {
    fn default() -> Self {
        Self {
            documents: Default::default(),
            tree: Default::default(),
            weights: Default::default(),
        }
    }
}
impl Ros1Pal_navigation_msgsVisualLocDB {
    pub const MAX_WIRE_BYTES: usize = 780;
    pub const CARTESIAN_WIRE_BYTES: u64 = 780;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_644cacceb6580e474906170240e511dca1427355428ac346eb5ba2a74eceb063";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.documents.len() > 256 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.documents {
            n = add_size(n, 1)?;
        }
        if self.tree.len() > 256 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.tree {
            n = add_size(n, 1)?;
        }
        if self.weights.len() > 256 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.weights {
            n = add_size(n, 1)?;
        }
        if n > 780 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.documents.len() as u32).to_le_bytes());
        for element in &self.documents {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &(self.tree.len() as u32).to_le_bytes());
        for element in &self.tree {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &(self.weights.len() as u32).to_le_bytes());
        for element in &self.weights {
            put(out, at, &element.to_le_bytes());
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = read_count(bytes, at)?;
            if count > 256 {
                return Err(invalid());
            }
            value.documents = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
                value.documents.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 256 {
                return Err(invalid());
            }
            value.tree = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
                value.tree.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 256 {
                return Err(invalid());
            }
            value.weights = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
                value.weights.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros1Pal_navigation_msgsVisualLocDB {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 780 {
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
/// Complete bounded value for ROS1 pal_navigation_msgs/NiceMapTransformation.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_navigation_msgsNiceMapTransformation {
    /// Declared x; canonical bounds are part of CODEC_IDENTITY.
    pub x: f64,
    /// Declared y; canonical bounds are part of CODEC_IDENTITY.
    pub y: f64,
    /// Declared rotYawRad; canonical bounds are part of CODEC_IDENTITY.
    pub rotYawRad: f64,
    /// Declared scale; canonical bounds are part of CODEC_IDENTITY.
    pub scale: f64,
}
impl Default for Ros1Pal_navigation_msgsNiceMapTransformation {
    fn default() -> Self {
        Self {
            x: Default::default(),
            y: Default::default(),
            rotYawRad: Default::default(),
            scale: Default::default(),
        }
    }
}
impl Ros1Pal_navigation_msgsNiceMapTransformation {
    pub const MAX_WIRE_BYTES: usize = 32;
    pub const CARTESIAN_WIRE_BYTES: u64 = 32;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_0c52375fd069a4fc6f5d93c7652ddaba7e9e0002e40e5d0db64aa77e355d0ef0";
    /// Validate all fields and measure only their initialized canonical prefix.
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
        if !self.rotYawRad.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.scale.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if n > 32 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.x.to_le_bytes());
        put(out, at, &self.y.to_le_bytes());
        put(out, at, &self.rotYawRad.to_le_bytes());
        put(out, at, &self.scale.to_le_bytes());
    }
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
        value.rotYawRad = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.scale = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_navigation_msgsNiceMapTransformation {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
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
/// Complete bounded value for ROS1 pal_navigation_msgs/MapConfiguration.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_navigation_msgsMapConfiguration {
    /// Declared numberOfSubMaps; canonical bounds are part of CODEC_IDENTITY.
    pub numberOfSubMaps: i32,
    /// Declared highways; canonical bounds are part of CODEC_IDENTITY.
    pub highways: Vec<Ros1Pal_navigation_msgsHighways>,
    /// Declared pois; canonical bounds are part of CODEC_IDENTITY.
    pub pois: Ros1Pal_navigation_msgsPOI,
    /// Declared vo; canonical bounds are part of CODEC_IDENTITY.
    pub vo: Ros1Pal_navigation_msgsPOI,
    /// Declared zoi; canonical bounds are part of CODEC_IDENTITY.
    pub zoi: Ros1Pal_navigation_msgsPOI,
    /// Declared ramps; canonical bounds are part of CODEC_IDENTITY.
    pub ramps: Ros1Pal_navigation_msgsPOI,
    /// Declared poigroups; canonical bounds are part of CODEC_IDENTITY.
    pub poigroups: Vec<Ros1Pal_navigation_msgsPOIGroup>,
    /// Declared visualLocDb; canonical bounds are part of CODEC_IDENTITY.
    pub visualLocDb: Ros1Pal_navigation_msgsVisualLocDB,
    /// Declared navigation_map; canonical bounds are part of CODEC_IDENTITY.
    pub navigation_map: Ros1Nav_msgsOccupancyGrid,
    /// Declared user_map; canonical bounds are part of CODEC_IDENTITY.
    pub user_map: Ros1Sensor_msgsImage,
    /// Declared transform; canonical bounds are part of CODEC_IDENTITY.
    pub transform: Ros1Pal_navigation_msgsNiceMapTransformation,
}
impl Default for Ros1Pal_navigation_msgsMapConfiguration {
    fn default() -> Self {
        Self {
            numberOfSubMaps: Default::default(),
            highways: Default::default(),
            pois: Default::default(),
            vo: Default::default(),
            zoi: Default::default(),
            ramps: Default::default(),
            poigroups: Default::default(),
            visualLocDb: Default::default(),
            navigation_map: Default::default(),
            user_map: Default::default(),
            transform: Default::default(),
        }
    }
}
impl Ros1Pal_navigation_msgsMapConfiguration {
    pub const MAX_WIRE_BYTES: usize = 15953;
    pub const CARTESIAN_WIRE_BYTES: u64 = 15953;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_807b6436f6e7ee13b63cfadc9de5fd38ca3fedd2d0e902c3c7558c1d7b606255";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 4)?;
        if self.highways.len() > 4 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.highways {
            n = add_size(n, element.wire_size()?)?;
        }
        n = add_size(n, self.pois.wire_size()?)?;
        n = add_size(n, self.vo.wire_size()?)?;
        n = add_size(n, self.zoi.wire_size()?)?;
        n = add_size(n, self.ramps.wire_size()?)?;
        if self.poigroups.len() > 4 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.poigroups {
            n = add_size(n, element.wire_size()?)?;
        }
        n = add_size(n, self.visualLocDb.wire_size()?)?;
        n = add_size(n, self.navigation_map.wire_size()?)?;
        n = add_size(n, self.user_map.wire_size()?)?;
        n = add_size(n, self.transform.wire_size()?)?;
        if n > 15953 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.numberOfSubMaps.to_le_bytes());
        put(out, at, &(self.highways.len() as u32).to_le_bytes());
        for element in &self.highways {
            element.write_fields(out, at);
        }
        self.pois.write_fields(out, at);
        self.vo.write_fields(out, at);
        self.zoi.write_fields(out, at);
        self.ramps.write_fields(out, at);
        put(out, at, &(self.poigroups.len() as u32).to_le_bytes());
        for element in &self.poigroups {
            element.write_fields(out, at);
        }
        self.visualLocDb.write_fields(out, at);
        self.navigation_map.write_fields(out, at);
        self.user_map.write_fields(out, at);
        self.transform.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.numberOfSubMaps = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 4 {
                return Err(invalid());
            }
            value.highways = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros1Pal_navigation_msgsHighways::read_fields(bytes, at)?;
                value.highways.push(decoded);
            }
        }
        let decoded = Ros1Pal_navigation_msgsPOI::read_fields(bytes, at)?;
        value.pois = decoded;
        let decoded = Ros1Pal_navigation_msgsPOI::read_fields(bytes, at)?;
        value.vo = decoded;
        let decoded = Ros1Pal_navigation_msgsPOI::read_fields(bytes, at)?;
        value.zoi = decoded;
        let decoded = Ros1Pal_navigation_msgsPOI::read_fields(bytes, at)?;
        value.ramps = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 4 {
                return Err(invalid());
            }
            value.poigroups = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros1Pal_navigation_msgsPOIGroup::read_fields(bytes, at)?;
                value.poigroups.push(decoded);
            }
        }
        let decoded = Ros1Pal_navigation_msgsVisualLocDB::read_fields(bytes, at)?;
        value.visualLocDb = decoded;
        let decoded = Ros1Nav_msgsOccupancyGrid::read_fields(bytes, at)?;
        value.navigation_map = decoded;
        let decoded = Ros1Sensor_msgsImage::read_fields(bytes, at)?;
        value.user_map = decoded;
        let decoded = Ros1Pal_navigation_msgsNiceMapTransformation::read_fields(bytes, at)?;
        value.transform = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_navigation_msgsMapConfiguration {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 15953 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 317 {
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
/// Complete bounded value for ROS1 pal_navigation_msgs/GetMapConfigurationResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_navigation_msgsGetMapConfigurationResponse {
    /// Declared map_config; canonical bounds are part of CODEC_IDENTITY.
    pub map_config: Ros1Pal_navigation_msgsMapConfiguration,
}
impl Default for Ros1Pal_navigation_msgsGetMapConfigurationResponse {
    fn default() -> Self {
        Self {
            map_config: Default::default(),
        }
    }
}
impl Ros1Pal_navigation_msgsGetMapConfigurationResponse {
    pub const MAX_WIRE_BYTES: usize = 15953;
    pub const CARTESIAN_WIRE_BYTES: u64 = 15953;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_89a83992447a75bd8c210766b00ca09e0235d872716f57c6e438490c762cd60d";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.map_config.wire_size()?)?;
        if n > 15953 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.map_config.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Pal_navigation_msgsMapConfiguration::read_fields(bytes, at)?;
        value.map_config = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_navigation_msgsGetMapConfigurationResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 15953 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 317 {
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
/// Complete bounded value for ROS1 pal_navigation_msgs/GetNodesRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_navigation_msgsGetNodesRequest {}
impl Default for Ros1Pal_navigation_msgsGetNodesRequest {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Pal_navigation_msgsGetNodesRequest {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_dee03ae04981d1dc0c0b9e7af3a8379f8409e50a790c3be71894d97edb00c4e2";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if n > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {}
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        Ok(value)
    }
}
impl Canonical for Ros1Pal_navigation_msgsGetNodesRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 0 {
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
/// Complete bounded value for ROS1 pal_navigation_msgs/GetNodesResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_navigation_msgsGetNodesResponse {
    /// Declared node; canonical bounds are part of CODEC_IDENTITY.
    pub node: i8,
    /// Declared totPOI; canonical bounds are part of CODEC_IDENTITY.
    pub totPOI: i8,
}
impl Default for Ros1Pal_navigation_msgsGetNodesResponse {
    fn default() -> Self {
        Self {
            node: Default::default(),
            totPOI: Default::default(),
        }
    }
}
impl Ros1Pal_navigation_msgsGetNodesResponse {
    pub const MAX_WIRE_BYTES: usize = 2;
    pub const CARTESIAN_WIRE_BYTES: u64 = 2;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_415815a998e9ab87b1e40663082bddb4c8d19ac64b9165bb4e70feeaedd110a3";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        if n > 2 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.node.to_le_bytes());
        put(out, at, &self.totPOI.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.node = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.totPOI = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_navigation_msgsGetNodesResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 2 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 2 {
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
/// Complete bounded value for ROS1 pal_navigation_msgs/GetPOIRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_navigation_msgsGetPOIRequest {}
impl Default for Ros1Pal_navigation_msgsGetPOIRequest {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Pal_navigation_msgsGetPOIRequest {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_4405875fa858b2faaabaca085a3f16846b311ed7866c36b583887c827ad54cc6";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if n > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {}
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        Ok(value)
    }
}
impl Canonical for Ros1Pal_navigation_msgsGetPOIRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 0 {
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
/// Complete bounded value for ROS1 pal_navigation_msgs/GetPOIResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_navigation_msgsGetPOIResponse {
    /// Declared poi; canonical bounds are part of CODEC_IDENTITY.
    pub poi: Ros1Pal_navigation_msgsPOI,
}
impl Default for Ros1Pal_navigation_msgsGetPOIResponse {
    fn default() -> Self {
        Self {
            poi: Default::default(),
        }
    }
}
impl Ros1Pal_navigation_msgsGetPOIResponse {
    pub const MAX_WIRE_BYTES: usize = 1664;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1664;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_9d7a0f291c648928f13eeb120c69ce685be71ef4de559684d7b4a758dd74dfe3";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.poi.wire_size()?)?;
        if n > 1664 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.poi.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Pal_navigation_msgsPOI::read_fields(bytes, at)?;
        value.poi = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_navigation_msgsGetPOIResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 1664 {
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
/// Complete bounded value for ROS1 pal_navigation_msgs/GetSubMapRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_navigation_msgsGetSubMapRequest {
    /// Declared index; canonical bounds are part of CODEC_IDENTITY.
    pub index: i8,
}
impl Default for Ros1Pal_navigation_msgsGetSubMapRequest {
    fn default() -> Self {
        Self {
            index: Default::default(),
        }
    }
}
impl Ros1Pal_navigation_msgsGetSubMapRequest {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_93c60279a243153baa7ab19b93ae27fabfdfff99e28e961c782f7498550ca377";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if n > 1 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.index.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.index = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_navigation_msgsGetSubMapRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 1 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 1 {
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
/// Complete bounded value for ROS1 pal_navigation_msgs/GetSubMapResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_navigation_msgsGetSubMapResponse {}
impl Default for Ros1Pal_navigation_msgsGetSubMapResponse {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Pal_navigation_msgsGetSubMapResponse {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_0e89187a2b88f7eca611483f7dd8db9b09bad5da07cf65e350b1b1e7dbab6768";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if n > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {}
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        Ok(value)
    }
}
impl Canonical for Ros1Pal_navigation_msgsGetSubMapResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 0 {
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
/// Complete bounded value for ROS1 pal_navigation_msgs/GoToGoal.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_navigation_msgsGoToGoal {
    /// Declared target_pose; canonical bounds are part of CODEC_IDENTITY.
    pub target_pose: Ros1Geometry_msgsPoseStamped,
}
impl Default for Ros1Pal_navigation_msgsGoToGoal {
    fn default() -> Self {
        Self {
            target_pose: Default::default(),
        }
    }
}
impl Ros1Pal_navigation_msgsGoToGoal {
    pub const MAX_WIRE_BYTES: usize = 200;
    pub const CARTESIAN_WIRE_BYTES: u64 = 200;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_26ff6f3220dee058063f4d81ed396c7d152b56b735878ed3ce2929eeeebb24d1";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.target_pose.wire_size()?)?;
        if n > 200 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.target_pose.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Geometry_msgsPoseStamped::read_fields(bytes, at)?;
        value.target_pose = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_navigation_msgsGoToGoal {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 200 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 72 {
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
/// Complete bounded value for ROS1 pal_navigation_msgs/GoToResult.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_navigation_msgsGoToResult {}
impl Default for Ros1Pal_navigation_msgsGoToResult {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Pal_navigation_msgsGoToResult {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_89a3eb05425f5a9b3e7a514cc44ffcc0c2492cf0247d51c3fe4b5c1635d09ef1";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if n > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {}
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        Ok(value)
    }
}
impl Canonical for Ros1Pal_navigation_msgsGoToResult {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 0 {
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
/// Complete bounded value for ROS1 pal_navigation_msgs/GoToFeedback.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_navigation_msgsGoToFeedback {
    /// Declared base_position; canonical bounds are part of CODEC_IDENTITY.
    pub base_position: Ros1Geometry_msgsPoseStamped,
}
impl Default for Ros1Pal_navigation_msgsGoToFeedback {
    fn default() -> Self {
        Self {
            base_position: Default::default(),
        }
    }
}
impl Ros1Pal_navigation_msgsGoToFeedback {
    pub const MAX_WIRE_BYTES: usize = 200;
    pub const CARTESIAN_WIRE_BYTES: u64 = 200;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_1ae5791a0a5d958bb57df7596658f1ce3cc369b832229fc407d2205f7076847b";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.base_position.wire_size()?)?;
        if n > 200 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.base_position.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Geometry_msgsPoseStamped::read_fields(bytes, at)?;
        value.base_position = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_navigation_msgsGoToFeedback {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 200 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 72 {
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
/// Complete bounded value for ROS1 pal_navigation_msgs/GoToPOIGoal.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_navigation_msgsGoToPOIGoal {
    /// Declared poi; canonical bounds are part of CODEC_IDENTITY.
    pub poi: Ros1Std_msgsString,
}
impl Default for Ros1Pal_navigation_msgsGoToPOIGoal {
    fn default() -> Self {
        Self {
            poi: Default::default(),
        }
    }
}
impl Ros1Pal_navigation_msgsGoToPOIGoal {
    pub const MAX_WIRE_BYTES: usize = 132;
    pub const CARTESIAN_WIRE_BYTES: u64 = 132;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_76b73385b6183f03926456ae38d666a53db772bc4f9dfbb1060cf7955154f043";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.poi.wire_size()?)?;
        if n > 132 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.poi.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Std_msgsString::read_fields(bytes, at)?;
        value.poi = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_navigation_msgsGoToPOIGoal {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 132 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 4 {
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
/// Complete bounded value for ROS1 pal_navigation_msgs/GoToPOIResult.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_navigation_msgsGoToPOIResult {}
impl Default for Ros1Pal_navigation_msgsGoToPOIResult {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Pal_navigation_msgsGoToPOIResult {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_0378eb6adc3b300e5f7bb037789cfab4a986c333bfcb45d191e26f74867ef807";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if n > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {}
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        Ok(value)
    }
}
impl Canonical for Ros1Pal_navigation_msgsGoToPOIResult {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 0 {
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
/// Complete bounded value for ROS1 pal_navigation_msgs/GoToPOIFeedback.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_navigation_msgsGoToPOIFeedback {
    /// Declared base_position; canonical bounds are part of CODEC_IDENTITY.
    pub base_position: Ros1Geometry_msgsPoseStamped,
}
impl Default for Ros1Pal_navigation_msgsGoToPOIFeedback {
    fn default() -> Self {
        Self {
            base_position: Default::default(),
        }
    }
}
impl Ros1Pal_navigation_msgsGoToPOIFeedback {
    pub const MAX_WIRE_BYTES: usize = 200;
    pub const CARTESIAN_WIRE_BYTES: u64 = 200;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_78d8367fcd91cdb4d50ab664251531390a75e7042506bf60f048a3ddffe746d6";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.base_position.wire_size()?)?;
        if n > 200 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.base_position.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Geometry_msgsPoseStamped::read_fields(bytes, at)?;
        value.base_position = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_navigation_msgsGoToPOIFeedback {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 200 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 72 {
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
/// Complete bounded value for ROS1 pal_navigation_msgs/JoyPriorityGoal.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_navigation_msgsJoyPriorityGoal {}
impl Default for Ros1Pal_navigation_msgsJoyPriorityGoal {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Pal_navigation_msgsJoyPriorityGoal {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_d3276e0ecfb362f00a38258d939d052108742f0b7546303a86ea6cf51aa5d7d1";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if n > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {}
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        Ok(value)
    }
}
impl Canonical for Ros1Pal_navigation_msgsJoyPriorityGoal {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 0 {
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
/// Complete bounded value for ROS1 pal_navigation_msgs/JoyPriorityResult.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_navigation_msgsJoyPriorityResult {}
impl Default for Ros1Pal_navigation_msgsJoyPriorityResult {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Pal_navigation_msgsJoyPriorityResult {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_877ee5214e72b1c83d9d1335fe7684bb5688b6f6b84c073168b4f0594fa6b20d";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if n > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {}
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        Ok(value)
    }
}
impl Canonical for Ros1Pal_navigation_msgsJoyPriorityResult {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 0 {
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
/// Complete bounded value for ROS1 pal_navigation_msgs/JoyPriorityFeedback.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_navigation_msgsJoyPriorityFeedback {}
impl Default for Ros1Pal_navigation_msgsJoyPriorityFeedback {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Pal_navigation_msgsJoyPriorityFeedback {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_46000d5acaf6e01c153895486f7d8f5b19dd8d7df068459ad51cd767e8a979e7";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if n > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {}
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        Ok(value)
    }
}
impl Canonical for Ros1Pal_navigation_msgsJoyPriorityFeedback {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 0 {
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
/// Complete bounded value for ROS1 pal_navigation_msgs/JoyTurboGoal.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_navigation_msgsJoyTurboGoal {}
impl Default for Ros1Pal_navigation_msgsJoyTurboGoal {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Pal_navigation_msgsJoyTurboGoal {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_3a7c13c9dd95b66aa331ca3e9324fed749a2ca0c310f4d00ef8a77afd03cd3a5";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if n > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {}
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        Ok(value)
    }
}
impl Canonical for Ros1Pal_navigation_msgsJoyTurboGoal {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 0 {
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
/// Complete bounded value for ROS1 pal_navigation_msgs/JoyTurboResult.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_navigation_msgsJoyTurboResult {}
impl Default for Ros1Pal_navigation_msgsJoyTurboResult {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Pal_navigation_msgsJoyTurboResult {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_3cafcac3a4a1e9f17e9be6827f3c6888c21c7aa0f644a17b097301346f1fc97d";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if n > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {}
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        Ok(value)
    }
}
impl Canonical for Ros1Pal_navigation_msgsJoyTurboResult {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 0 {
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
/// Complete bounded value for ROS1 pal_navigation_msgs/JoyTurboFeedback.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_navigation_msgsJoyTurboFeedback {}
impl Default for Ros1Pal_navigation_msgsJoyTurboFeedback {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Pal_navigation_msgsJoyTurboFeedback {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_8028ff57865bec806da57ae6bf19e7928af52b969fe0c6662474f39eb27fbb8e";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if n > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {}
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        Ok(value)
    }
}
impl Canonical for Ros1Pal_navigation_msgsJoyTurboFeedback {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 0 {
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
/// Complete bounded value for ROS1 pal_navigation_msgs/LaserImage.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_navigation_msgsLaserImage {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros1Std_msgsHeader,
    /// Declared origin; canonical bounds are part of CODEC_IDENTITY.
    pub origin: Ros1Geometry_msgsPoint,
    /// Declared image; canonical bounds are part of CODEC_IDENTITY.
    pub image: Ros1Sensor_msgsCompressedImage,
    /// Declared height; canonical bounds are part of CODEC_IDENTITY.
    pub height: f32,
    /// Declared width; canonical bounds are part of CODEC_IDENTITY.
    pub width: f32,
    /// Declared resolution; canonical bounds are part of CODEC_IDENTITY.
    pub resolution: f32,
}
impl Default for Ros1Pal_navigation_msgsLaserImage {
    fn default() -> Self {
        Self {
            header: Default::default(),
            origin: Default::default(),
            image: Default::default(),
            height: Default::default(),
            width: Default::default(),
            resolution: Default::default(),
        }
    }
}
impl Ros1Pal_navigation_msgsLaserImage {
    pub const MAX_WIRE_BYTES: usize = 4556;
    pub const CARTESIAN_WIRE_BYTES: u64 = 4556;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_94e3d294205016ea87f46b5cf6bbc1bb7644f24f900ce1f9cbb4bac6004b66f2";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        n = add_size(n, self.origin.wire_size()?)?;
        n = add_size(n, self.image.wire_size()?)?;
        if !self.height.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.width.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.resolution.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if n > 4556 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.header.write_fields(out, at);
        self.origin.write_fields(out, at);
        self.image.write_fields(out, at);
        put(out, at, &self.height.to_le_bytes());
        put(out, at, &self.width.to_le_bytes());
        put(out, at, &self.resolution.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Std_msgsHeader::read_fields(bytes, at)?;
        value.header = decoded;
        let decoded = Ros1Geometry_msgsPoint::read_fields(bytes, at)?;
        value.origin = decoded;
        let decoded = Ros1Sensor_msgsCompressedImage::read_fields(bytes, at)?;
        value.image = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.height = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.width = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.resolution = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_navigation_msgsLaserImage {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 4556 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 76 {
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
/// Complete bounded value for ROS1 pal_navigation_msgs/ListMapsRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_navigation_msgsListMapsRequest {}
impl Default for Ros1Pal_navigation_msgsListMapsRequest {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Pal_navigation_msgsListMapsRequest {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_5705dfe7ff7affbbcc0469694234dba068652b4e2bf1409ab85cf07ee1fd2385";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if n > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {}
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        Ok(value)
    }
}
impl Canonical for Ros1Pal_navigation_msgsListMapsRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 0 {
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
/// Complete bounded value for ROS1 pal_navigation_msgs/ListMapsResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_navigation_msgsListMapsResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
    /// Declared maps; canonical bounds are part of CODEC_IDENTITY.
    pub maps: Vec<String>,
}
impl Default for Ros1Pal_navigation_msgsListMapsResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
            maps: Default::default(),
        }
    }
}
impl Ros1Pal_navigation_msgsListMapsResponse {
    pub const MAX_WIRE_BYTES: usize = 2117;
    pub const CARTESIAN_WIRE_BYTES: u64 = 2117;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_348a760b57b0c823d35a49efb65bdf8e11d1bcab3aaf218f51781de9fc5d8033";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if self.maps.len() > 16 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.maps {
            if element.len() > 128 || element.as_bytes().contains(&0) {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
            n = add_size(n, element.len())?;
        }
        if n > 2117 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &[u8::from(self.success)]);
        put(out, at, &(self.maps.len() as u32).to_le_bytes());
        for element in &self.maps {
            put(out, at, &(element.len() as u32).to_le_bytes());
            put(out, at, element.as_bytes());
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 16 {
                return Err(invalid());
            }
            value.maps = Vec::with_capacity(count);
            for i in 0..count {
                let size = read_count(bytes, at)?;
                if size > 128 {
                    return Err(invalid());
                }
                let raw = take(bytes, at, size)?;
                if raw.contains(&0) {
                    return Err(invalid());
                }
                let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
                value.maps.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros1Pal_navigation_msgsListMapsResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 2117 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 5 {
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
/// Complete bounded value for ROS1 pal_navigation_msgs/NavigationStatus.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_navigation_msgsNavigationStatus {
    /// Declared status; canonical bounds are part of CODEC_IDENTITY.
    pub status: Ros1Std_msgsString,
    /// Declared msg; canonical bounds are part of CODEC_IDENTITY.
    pub msg: Ros1Std_msgsString,
}
impl Default for Ros1Pal_navigation_msgsNavigationStatus {
    fn default() -> Self {
        Self {
            status: Default::default(),
            msg: Default::default(),
        }
    }
}
impl Ros1Pal_navigation_msgsNavigationStatus {
    pub const MAX_WIRE_BYTES: usize = 264;
    pub const CARTESIAN_WIRE_BYTES: u64 = 264;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_64ae750f64cce12a3e2c6379380c208ee9afab146582280af4b6e445a2ccb105";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.status.wire_size()?)?;
        n = add_size(n, self.msg.wire_size()?)?;
        if n > 264 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.status.write_fields(out, at);
        self.msg.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Std_msgsString::read_fields(bytes, at)?;
        value.status = decoded;
        let decoded = Ros1Std_msgsString::read_fields(bytes, at)?;
        value.msg = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_navigation_msgsNavigationStatus {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 264 {
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
/// Complete bounded value for ROS1 pal_navigation_msgs/PolarReading.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_navigation_msgsPolarReading {
    /// Declared angle; canonical bounds are part of CODEC_IDENTITY.
    pub angle: f32,
    /// Declared distance; canonical bounds are part of CODEC_IDENTITY.
    pub distance: f32,
}
impl Default for Ros1Pal_navigation_msgsPolarReading {
    fn default() -> Self {
        Self {
            angle: Default::default(),
            distance: Default::default(),
        }
    }
}
impl Ros1Pal_navigation_msgsPolarReading {
    pub const MAX_WIRE_BYTES: usize = 8;
    pub const CARTESIAN_WIRE_BYTES: u64 = 8;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_8fda83158c3186185b077be3457af2c77bb69a9efc6fedde6b2e0d2bfb902fd2";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if !self.angle.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.distance.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if n > 8 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.angle.to_le_bytes());
        put(out, at, &self.distance.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.angle = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.distance = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_navigation_msgsPolarReading {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
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
/// Complete bounded value for ROS1 pal_navigation_msgs/PolarReadingScan.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_navigation_msgsPolarReadingScan {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros1Std_msgsHeader,
    /// Declared readings; canonical bounds are part of CODEC_IDENTITY.
    pub readings: Vec<Ros1Pal_navigation_msgsPolarReading>,
}
impl Default for Ros1Pal_navigation_msgsPolarReadingScan {
    fn default() -> Self {
        Self {
            header: Default::default(),
            readings: Default::default(),
        }
    }
}
impl Ros1Pal_navigation_msgsPolarReadingScan {
    pub const MAX_WIRE_BYTES: usize = 180;
    pub const CARTESIAN_WIRE_BYTES: u64 = 180;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_80d29afd1790fc33923dd1233f118dce0189db42194aac17d6059873ead24245";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        if self.readings.len() > 4 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.readings {
            n = add_size(n, element.wire_size()?)?;
        }
        if n > 180 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.header.write_fields(out, at);
        put(out, at, &(self.readings.len() as u32).to_le_bytes());
        for element in &self.readings {
            element.write_fields(out, at);
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Std_msgsHeader::read_fields(bytes, at)?;
        value.header = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 4 {
                return Err(invalid());
            }
            value.readings = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros1Pal_navigation_msgsPolarReading::read_fields(bytes, at)?;
                value.readings.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros1Pal_navigation_msgsPolarReadingScan {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 180 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 20 {
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
/// Complete bounded value for ROS1 pal_navigation_msgs/RenameMapRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_navigation_msgsRenameMapRequest {
    /// Declared current_map_name; canonical bounds are part of CODEC_IDENTITY.
    pub current_map_name: String,
    /// Declared new_map_name; canonical bounds are part of CODEC_IDENTITY.
    pub new_map_name: String,
}
impl Default for Ros1Pal_navigation_msgsRenameMapRequest {
    fn default() -> Self {
        Self {
            current_map_name: Default::default(),
            new_map_name: Default::default(),
        }
    }
}
impl Ros1Pal_navigation_msgsRenameMapRequest {
    pub const MAX_WIRE_BYTES: usize = 264;
    pub const CARTESIAN_WIRE_BYTES: u64 = 264;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_a0c1e30166e0a09c94ab0192d8f0b34954eb795eb34f2636110dee13a1539852";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.current_map_name.len() > 128 || self.current_map_name.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.current_map_name.len())?;
        if self.new_map_name.len() > 128 || self.new_map_name.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.new_map_name.len())?;
        if n > 264 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.current_map_name.len() as u32).to_le_bytes());
        put(out, at, self.current_map_name.as_bytes());
        put(out, at, &(self.new_map_name.len() as u32).to_le_bytes());
        put(out, at, self.new_map_name.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.current_map_name = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.new_map_name = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_navigation_msgsRenameMapRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 264 {
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
/// Complete bounded value for ROS1 pal_navigation_msgs/RenameMapResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_navigation_msgsRenameMapResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
    /// Declared message; canonical bounds are part of CODEC_IDENTITY.
    pub message: String,
}
impl Default for Ros1Pal_navigation_msgsRenameMapResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
            message: Default::default(),
        }
    }
}
impl Ros1Pal_navigation_msgsRenameMapResponse {
    pub const MAX_WIRE_BYTES: usize = 133;
    pub const CARTESIAN_WIRE_BYTES: u64 = 133;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_9a2e4bcfbd5b7b7476b7dad1a51fa19f749806fefe395a55834a38e831b51807";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if self.message.len() > 128 || self.message.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.message.len())?;
        if n > 133 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &[u8::from(self.success)]);
        put(out, at, &(self.message.len() as u32).to_le_bytes());
        put(out, at, self.message.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.message = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_navigation_msgsRenameMapResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 133 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 5 {
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
/// Complete bounded value for ROS1 pal_navigation_msgs/SafetyZoneRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_navigation_msgsSafetyZoneRequest {
    /// Declared distance; canonical bounds are part of CODEC_IDENTITY.
    pub distance: f64,
    /// Declared leftAngleRad; canonical bounds are part of CODEC_IDENTITY.
    pub leftAngleRad: f64,
    /// Declared rightAngleRad; canonical bounds are part of CODEC_IDENTITY.
    pub rightAngleRad: f64,
    /// Declared sensorMask; canonical bounds are part of CODEC_IDENTITY.
    pub sensorMask: u32,
}
impl Default for Ros1Pal_navigation_msgsSafetyZoneRequest {
    fn default() -> Self {
        Self {
            distance: Default::default(),
            leftAngleRad: Default::default(),
            rightAngleRad: Default::default(),
            sensorMask: Default::default(),
        }
    }
}
impl Ros1Pal_navigation_msgsSafetyZoneRequest {
    pub const MAX_WIRE_BYTES: usize = 28;
    pub const CARTESIAN_WIRE_BYTES: u64 = 28;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_c7bfca2804a0307c6666f800ecaacccc5daf70a315407b097799b2ea2ce8d53f";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if !self.distance.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.leftAngleRad.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.rightAngleRad.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        n = add_size(n, 4)?;
        if n > 28 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.distance.to_le_bytes());
        put(out, at, &self.leftAngleRad.to_le_bytes());
        put(out, at, &self.rightAngleRad.to_le_bytes());
        put(out, at, &self.sensorMask.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.distance = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.leftAngleRad = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.rightAngleRad = decoded;
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.sensorMask = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_navigation_msgsSafetyZoneRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 28 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 28 {
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
/// Complete bounded value for ROS1 pal_navigation_msgs/SafetyZoneResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_navigation_msgsSafetyZoneResponse {
    /// Declared leftSafe; canonical bounds are part of CODEC_IDENTITY.
    pub leftSafe: bool,
    /// Declared leftMinDist; canonical bounds are part of CODEC_IDENTITY.
    pub leftMinDist: f64,
    /// Declared leftMinDistAngleRad; canonical bounds are part of CODEC_IDENTITY.
    pub leftMinDistAngleRad: f64,
    /// Declared rightSafe; canonical bounds are part of CODEC_IDENTITY.
    pub rightSafe: bool,
    /// Declared rightMinDist; canonical bounds are part of CODEC_IDENTITY.
    pub rightMinDist: f64,
    /// Declared rightMinDistAngleRad; canonical bounds are part of CODEC_IDENTITY.
    pub rightMinDistAngleRad: f64,
}
impl Default for Ros1Pal_navigation_msgsSafetyZoneResponse {
    fn default() -> Self {
        Self {
            leftSafe: Default::default(),
            leftMinDist: Default::default(),
            leftMinDistAngleRad: Default::default(),
            rightSafe: Default::default(),
            rightMinDist: Default::default(),
            rightMinDistAngleRad: Default::default(),
        }
    }
}
impl Ros1Pal_navigation_msgsSafetyZoneResponse {
    pub const MAX_WIRE_BYTES: usize = 34;
    pub const CARTESIAN_WIRE_BYTES: u64 = 34;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_237e4207a82e5b1a1caccdf5a010cef018d1bcebff8c00a550d11bb5f729d122";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if !self.leftMinDist.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.leftMinDistAngleRad.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        n = add_size(n, 1)?;
        if !self.rightMinDist.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.rightMinDistAngleRad.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if n > 34 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &[u8::from(self.leftSafe)]);
        put(out, at, &self.leftMinDist.to_le_bytes());
        put(out, at, &self.leftMinDistAngleRad.to_le_bytes());
        put(out, at, &[u8::from(self.rightSafe)]);
        put(out, at, &self.rightMinDist.to_le_bytes());
        put(out, at, &self.rightMinDistAngleRad.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.leftSafe = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.leftMinDist = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.leftMinDistAngleRad = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.rightSafe = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.rightMinDist = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.rightMinDistAngleRad = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_navigation_msgsSafetyZoneResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 34 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 34 {
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
/// Complete bounded value for ROS1 pal_navigation_msgs/SaveMapRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_navigation_msgsSaveMapRequest {
    /// Declared directory; canonical bounds are part of CODEC_IDENTITY.
    pub directory: String,
}
impl Default for Ros1Pal_navigation_msgsSaveMapRequest {
    fn default() -> Self {
        Self {
            directory: Default::default(),
        }
    }
}
impl Ros1Pal_navigation_msgsSaveMapRequest {
    pub const MAX_WIRE_BYTES: usize = 132;
    pub const CARTESIAN_WIRE_BYTES: u64 = 132;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_a5ff7c9bf1f8f2117dda21a7ac565fc743a6753a0de329ea601754bfed7fb07d";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.directory.len() > 128 || self.directory.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.directory.len())?;
        if n > 132 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.directory.len() as u32).to_le_bytes());
        put(out, at, self.directory.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.directory = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_navigation_msgsSaveMapRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 132 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 4 {
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
/// Complete bounded value for ROS1 pal_navigation_msgs/SaveMapResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_navigation_msgsSaveMapResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
    /// Declared name; canonical bounds are part of CODEC_IDENTITY.
    pub name: String,
    /// Declared full_path; canonical bounds are part of CODEC_IDENTITY.
    pub full_path: String,
    /// Declared message; canonical bounds are part of CODEC_IDENTITY.
    pub message: String,
}
impl Default for Ros1Pal_navigation_msgsSaveMapResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
            name: Default::default(),
            full_path: Default::default(),
            message: Default::default(),
        }
    }
}
impl Ros1Pal_navigation_msgsSaveMapResponse {
    pub const MAX_WIRE_BYTES: usize = 397;
    pub const CARTESIAN_WIRE_BYTES: u64 = 397;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_afc5ee8548a56c73711b0f2057a399d88b02485b96b9ef7c2c4deec48ddcb064";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if self.name.len() > 128 || self.name.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.name.len())?;
        if self.full_path.len() > 128 || self.full_path.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.full_path.len())?;
        if self.message.len() > 128 || self.message.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.message.len())?;
        if n > 397 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &[u8::from(self.success)]);
        put(out, at, &(self.name.len() as u32).to_le_bytes());
        put(out, at, self.name.as_bytes());
        put(out, at, &(self.full_path.len() as u32).to_le_bytes());
        put(out, at, self.full_path.as_bytes());
        put(out, at, &(self.message.len() as u32).to_le_bytes());
        put(out, at, self.message.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.name = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.full_path = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.message = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_navigation_msgsSaveMapResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 397 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 13 {
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
/// Complete bounded value for ROS1 pal_navigation_msgs/ServiceStatus.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_navigation_msgsServiceStatus {
    /// Declared serviceName; canonical bounds are part of CODEC_IDENTITY.
    pub serviceName: String,
    /// Declared is_running; canonical bounds are part of CODEC_IDENTITY.
    pub is_running: bool,
    /// Declared update_frequency; canonical bounds are part of CODEC_IDENTITY.
    pub update_frequency: f32,
    /// Declared latest_run_time; canonical bounds are part of CODEC_IDENTITY.
    pub latest_run_time: Ros1Time,
    /// Declared status; canonical bounds are part of CODEC_IDENTITY.
    pub status: bool,
}
impl Default for Ros1Pal_navigation_msgsServiceStatus {
    fn default() -> Self {
        Self {
            serviceName: Default::default(),
            is_running: Default::default(),
            update_frequency: Default::default(),
            latest_run_time: Default::default(),
            status: Default::default(),
        }
    }
}
impl Ros1Pal_navigation_msgsServiceStatus {
    pub const MAX_WIRE_BYTES: usize = 146;
    pub const CARTESIAN_WIRE_BYTES: u64 = 146;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_c08ab79758b14d1722aaaf425096153a299db64bf4efa8f154d08f20b0d68622";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.serviceName.len() > 128 || self.serviceName.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.serviceName.len())?;
        n = add_size(n, 1)?;
        if !self.update_frequency.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.latest_run_time.wire_size()?)?;
        n = add_size(n, 1)?;
        if n > 146 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.serviceName.len() as u32).to_le_bytes());
        put(out, at, self.serviceName.as_bytes());
        put(out, at, &[u8::from(self.is_running)]);
        put(out, at, &self.update_frequency.to_le_bytes());
        self.latest_run_time.write_fields(out, at);
        put(out, at, &[u8::from(self.status)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.serviceName = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.is_running = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.update_frequency = decoded;
        let decoded = Ros1Time::read_fields(bytes, at)?;
        value.latest_run_time = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.status = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_navigation_msgsServiceStatus {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 146 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 18 {
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
/// Complete bounded value for ROS1 pal_navigation_msgs/SetMapConfigurationRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_navigation_msgsSetMapConfigurationRequest {
    /// Declared map_config; canonical bounds are part of CODEC_IDENTITY.
    pub map_config: Ros1Pal_navigation_msgsMapConfiguration,
}
impl Default for Ros1Pal_navigation_msgsSetMapConfigurationRequest {
    fn default() -> Self {
        Self {
            map_config: Default::default(),
        }
    }
}
impl Ros1Pal_navigation_msgsSetMapConfigurationRequest {
    pub const MAX_WIRE_BYTES: usize = 15953;
    pub const CARTESIAN_WIRE_BYTES: u64 = 15953;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_f8205ddf6c3a59445ee1a9868259a07e4b5d2d88e3e722259410016317b88cd8";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.map_config.wire_size()?)?;
        if n > 15953 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.map_config.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Pal_navigation_msgsMapConfiguration::read_fields(bytes, at)?;
        value.map_config = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_navigation_msgsSetMapConfigurationRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 15953 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 317 {
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
/// Complete bounded value for ROS1 pal_navigation_msgs/SetMapConfigurationResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_navigation_msgsSetMapConfigurationResponse {}
impl Default for Ros1Pal_navigation_msgsSetMapConfigurationResponse {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Pal_navigation_msgsSetMapConfigurationResponse {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_ef256f903c5860e7f8eb52e644184d325614940a29b96beb716381d1a066f701";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if n > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {}
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        Ok(value)
    }
}
impl Canonical for Ros1Pal_navigation_msgsSetMapConfigurationResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 0 {
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
/// Complete bounded value for ROS1 pal_navigation_msgs/SetPOIRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_navigation_msgsSetPOIRequest {
    /// Declared poi; canonical bounds are part of CODEC_IDENTITY.
    pub poi: Ros1Pal_navigation_msgsPOI,
}
impl Default for Ros1Pal_navigation_msgsSetPOIRequest {
    fn default() -> Self {
        Self {
            poi: Default::default(),
        }
    }
}
impl Ros1Pal_navigation_msgsSetPOIRequest {
    pub const MAX_WIRE_BYTES: usize = 1664;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1664;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_ca248b399762c27d6bf941c2600ead52f026f9b5a1fde3987d6050b2626c582e";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.poi.wire_size()?)?;
        if n > 1664 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.poi.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Pal_navigation_msgsPOI::read_fields(bytes, at)?;
        value.poi = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_navigation_msgsSetPOIRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 1664 {
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
/// Complete bounded value for ROS1 pal_navigation_msgs/SetPOIResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_navigation_msgsSetPOIResponse {}
impl Default for Ros1Pal_navigation_msgsSetPOIResponse {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Pal_navigation_msgsSetPOIResponse {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_a273017f817a15e0936b8eba139ca9797c2f550b7b5926a9275416dce3dfbfd1";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if n > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {}
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        Ok(value)
    }
}
impl Canonical for Ros1Pal_navigation_msgsSetPOIResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 0 {
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
/// Complete bounded value for ROS1 pal_navigation_msgs/SetSubMapFloorRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_navigation_msgsSetSubMapFloorRequest {
    /// Declared index; canonical bounds are part of CODEC_IDENTITY.
    pub index: i8,
    /// Declared floor; canonical bounds are part of CODEC_IDENTITY.
    pub floor: i8,
}
impl Default for Ros1Pal_navigation_msgsSetSubMapFloorRequest {
    fn default() -> Self {
        Self {
            index: Default::default(),
            floor: Default::default(),
        }
    }
}
impl Ros1Pal_navigation_msgsSetSubMapFloorRequest {
    pub const MAX_WIRE_BYTES: usize = 2;
    pub const CARTESIAN_WIRE_BYTES: u64 = 2;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_4bade8d2022442add78465f9e7aa302fd650256c6e4fefedadc46f6ea3f19536";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        if n > 2 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.index.to_le_bytes());
        put(out, at, &self.floor.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.index = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.floor = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_navigation_msgsSetSubMapFloorRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 2 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 2 {
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
/// Complete bounded value for ROS1 pal_navigation_msgs/SetSubMapFloorResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_navigation_msgsSetSubMapFloorResponse {}
impl Default for Ros1Pal_navigation_msgsSetSubMapFloorResponse {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Pal_navigation_msgsSetSubMapFloorResponse {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_67d24dd2353c6ee7113822da8a23e15a5a465c6f692ef40d8ca8486b5fccc1ac";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if n > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {}
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        Ok(value)
    }
}
impl Canonical for Ros1Pal_navigation_msgsSetSubMapFloorResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 0 {
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
/// Complete bounded value for ROS1 pal_navigation_msgs/TabletPOI.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_navigation_msgsTabletPOI {
    /// Declared POIs; canonical bounds are part of CODEC_IDENTITY.
    pub POIs: Vec<Ros1Geometry_msgsPoint>,
    /// Declared IDs; canonical bounds are part of CODEC_IDENTITY.
    pub IDs: Vec<Ros1Std_msgsString>,
    /// Declared map_id; canonical bounds are part of CODEC_IDENTITY.
    pub map_id: Ros1Std_msgsString,
}
impl Default for Ros1Pal_navigation_msgsTabletPOI {
    fn default() -> Self {
        Self {
            POIs: Default::default(),
            IDs: Default::default(),
            map_id: Default::default(),
        }
    }
}
impl Ros1Pal_navigation_msgsTabletPOI {
    pub const MAX_WIRE_BYTES: usize = 764;
    pub const CARTESIAN_WIRE_BYTES: u64 = 764;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_0f632e29a4a78c036cf5ccb39ae26a0f64a7642d727698c06f2d879de9241ae0";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.POIs.len() > 4 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.POIs {
            n = add_size(n, element.wire_size()?)?;
        }
        if self.IDs.len() > 4 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.IDs {
            n = add_size(n, element.wire_size()?)?;
        }
        n = add_size(n, self.map_id.wire_size()?)?;
        if n > 764 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.POIs.len() as u32).to_le_bytes());
        for element in &self.POIs {
            element.write_fields(out, at);
        }
        put(out, at, &(self.IDs.len() as u32).to_le_bytes());
        for element in &self.IDs {
            element.write_fields(out, at);
        }
        self.map_id.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = read_count(bytes, at)?;
            if count > 4 {
                return Err(invalid());
            }
            value.POIs = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros1Geometry_msgsPoint::read_fields(bytes, at)?;
                value.POIs.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 4 {
                return Err(invalid());
            }
            value.IDs = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros1Std_msgsString::read_fields(bytes, at)?;
                value.IDs.push(decoded);
            }
        }
        let decoded = Ros1Std_msgsString::read_fields(bytes, at)?;
        value.map_id = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_navigation_msgsTabletPOI {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 764 {
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
/// Complete bounded value for ROS1 pal_navigation_msgs/VisualLocRecognizeRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_navigation_msgsVisualLocRecognizeRequest {}
impl Default for Ros1Pal_navigation_msgsVisualLocRecognizeRequest {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Pal_navigation_msgsVisualLocRecognizeRequest {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_7a4a33e9269b79d338bc44c15c0e9ffab87d8fe9c132fddd487df5b9248600e4";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if n > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {}
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        Ok(value)
    }
}
impl Canonical for Ros1Pal_navigation_msgsVisualLocRecognizeRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 0 {
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
/// Complete bounded value for ROS1 pal_navigation_msgs/VisualLocRecognizeResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_navigation_msgsVisualLocRecognizeResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
    /// Declared confidence; canonical bounds are part of CODEC_IDENTITY.
    pub confidence: f64,
    /// Declared estimatedPose; canonical bounds are part of CODEC_IDENTITY.
    pub estimatedPose: Ros1Geometry_msgsPoseWithCovarianceStamped,
}
impl Default for Ros1Pal_navigation_msgsVisualLocRecognizeResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
            confidence: Default::default(),
            estimatedPose: Default::default(),
        }
    }
}
impl Ros1Pal_navigation_msgsVisualLocRecognizeResponse {
    pub const MAX_WIRE_BYTES: usize = 497;
    pub const CARTESIAN_WIRE_BYTES: u64 = 497;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_306e234599c2ff8a294a8e078a4f6c43dbf8fba8d368fca5a6016826b098be89";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if !self.confidence.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        n = add_size(n, self.estimatedPose.wire_size()?)?;
        if n > 497 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &[u8::from(self.success)]);
        put(out, at, &self.confidence.to_le_bytes());
        self.estimatedPose.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.confidence = decoded;
        let decoded = Ros1Geometry_msgsPoseWithCovarianceStamped::read_fields(bytes, at)?;
        value.estimatedPose = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_navigation_msgsVisualLocRecognizeResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 497 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 369 {
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
/// Complete bounded value for ROS1 pal_navigation_msgs/VisualTrainingGoal.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_navigation_msgsVisualTrainingGoal {
    /// Declared action; canonical bounds are part of CODEC_IDENTITY.
    pub action: u8,
    /// Declared database_path; canonical bounds are part of CODEC_IDENTITY.
    pub database_path: String,
}
impl Default for Ros1Pal_navigation_msgsVisualTrainingGoal {
    fn default() -> Self {
        Self {
            action: Default::default(),
            database_path: Default::default(),
        }
    }
}
impl Ros1Pal_navigation_msgsVisualTrainingGoal {
    pub const MAX_WIRE_BYTES: usize = 133;
    pub const CARTESIAN_WIRE_BYTES: u64 = 133;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_ea430253b6b7cd7fd82e0e3cbc0c40cb6d4835444a09587d90f1b698dd53ade4";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if self.database_path.len() > 128 || self.database_path.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.database_path.len())?;
        if n > 133 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.action.to_le_bytes());
        put(out, at, &(self.database_path.len() as u32).to_le_bytes());
        put(out, at, self.database_path.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.action = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.database_path = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_navigation_msgsVisualTrainingGoal {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 133 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 5 {
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
/// Complete bounded value for ROS1 pal_navigation_msgs/VisualTrainingResult.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_navigation_msgsVisualTrainingResult {}
impl Default for Ros1Pal_navigation_msgsVisualTrainingResult {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Pal_navigation_msgsVisualTrainingResult {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_3a1c9623f4ec7e02ecf7a33978d54c95b9c3a42f4cb5004e11f062774175c387";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if n > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {}
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        Ok(value)
    }
}
impl Canonical for Ros1Pal_navigation_msgsVisualTrainingResult {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 0 {
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
/// Complete bounded value for ROS1 pal_navigation_msgs/VisualTrainingFeedback.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_navigation_msgsVisualTrainingFeedback {}
impl Default for Ros1Pal_navigation_msgsVisualTrainingFeedback {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Pal_navigation_msgsVisualTrainingFeedback {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_39409b2914607480bd3fb1f3ec5162c11ab8b8e773e23f7730693c2461deaab3";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if n > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {}
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        Ok(value)
    }
}
impl Canonical for Ros1Pal_navigation_msgsVisualTrainingFeedback {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 0 {
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
/// Complete bounded value for ROS1 pal_simulation_msgs/ExternalWrench.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_simulation_msgsExternalWrench {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros1Std_msgsHeader,
    /// Declared link_name; canonical bounds are part of CODEC_IDENTITY.
    pub link_name: String,
    /// Declared wrench; canonical bounds are part of CODEC_IDENTITY.
    pub wrench: Ros1Geometry_msgsWrench,
    /// Declared application_point; canonical bounds are part of CODEC_IDENTITY.
    pub application_point: Ros1Geometry_msgsPoint,
    /// Declared duration; canonical bounds are part of CODEC_IDENTITY.
    pub duration: Ros1Duration,
}
impl Default for Ros1Pal_simulation_msgsExternalWrench {
    fn default() -> Self {
        Self {
            header: Default::default(),
            link_name: Default::default(),
            wrench: Default::default(),
            application_point: Default::default(),
            duration: Default::default(),
        }
    }
}
impl Ros1Pal_simulation_msgsExternalWrench {
    pub const MAX_WIRE_BYTES: usize = 356;
    pub const CARTESIAN_WIRE_BYTES: u64 = 356;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_b85249fbffa7b83dd13e2f42d71c5a4136743e892760cf0eb65bbaf3dfd0824c";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        if self.link_name.len() > 128 || self.link_name.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.link_name.len())?;
        n = add_size(n, self.wrench.wire_size()?)?;
        n = add_size(n, self.application_point.wire_size()?)?;
        n = add_size(n, self.duration.wire_size()?)?;
        if n > 356 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.header.write_fields(out, at);
        put(out, at, &(self.link_name.len() as u32).to_le_bytes());
        put(out, at, self.link_name.as_bytes());
        self.wrench.write_fields(out, at);
        self.application_point.write_fields(out, at);
        self.duration.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Std_msgsHeader::read_fields(bytes, at)?;
        value.header = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.link_name = decoded;
        let decoded = Ros1Geometry_msgsWrench::read_fields(bytes, at)?;
        value.wrench = decoded;
        let decoded = Ros1Geometry_msgsPoint::read_fields(bytes, at)?;
        value.application_point = decoded;
        let decoded = Ros1Duration::read_fields(bytes, at)?;
        value.duration = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_simulation_msgsExternalWrench {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 356 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 100 {
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
/// Complete bounded value for ROS1 pal_tablet_msgs/FunctionalityStatus.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_tablet_msgsFunctionalityStatus {
    /// Declared errMessage; canonical bounds are part of CODEC_IDENTITY.
    pub errMessage: Ros1Std_msgsString,
    /// Declared errStatus; canonical bounds are part of CODEC_IDENTITY.
    pub errStatus: Ros1Std_msgsBool,
}
impl Default for Ros1Pal_tablet_msgsFunctionalityStatus {
    fn default() -> Self {
        Self {
            errMessage: Default::default(),
            errStatus: Default::default(),
        }
    }
}
impl Ros1Pal_tablet_msgsFunctionalityStatus {
    pub const MAX_WIRE_BYTES: usize = 133;
    pub const CARTESIAN_WIRE_BYTES: u64 = 133;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_ce7e4fc9d13688058739c422c63a6af44d883b54b3efde8aed4e3272f8b0de35";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.errMessage.wire_size()?)?;
        n = add_size(n, self.errStatus.wire_size()?)?;
        if n > 133 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.errMessage.write_fields(out, at);
        self.errStatus.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Std_msgsString::read_fields(bytes, at)?;
        value.errMessage = decoded;
        let decoded = Ros1Std_msgsBool::read_fields(bytes, at)?;
        value.errStatus = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_tablet_msgsFunctionalityStatus {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 133 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 5 {
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
/// Complete bounded value for ROS1 pal_tablet_msgs/RobotStatus.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_tablet_msgsRobotStatus {
    /// Declared messages; canonical bounds are part of CODEC_IDENTITY.
    pub messages: Vec<Ros1Pal_tablet_msgsFunctionalityStatus>,
}
impl Default for Ros1Pal_tablet_msgsRobotStatus {
    fn default() -> Self {
        Self {
            messages: Default::default(),
        }
    }
}
impl Ros1Pal_tablet_msgsRobotStatus {
    pub const MAX_WIRE_BYTES: usize = 536;
    pub const CARTESIAN_WIRE_BYTES: u64 = 536;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_b01e5783832f7b816d0dca678bca11f49554304116bf9a8fccc9b36b18b4478d";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.messages.len() > 4 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.messages {
            n = add_size(n, element.wire_size()?)?;
        }
        if n > 536 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.messages.len() as u32).to_le_bytes());
        for element in &self.messages {
            element.write_fields(out, at);
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = read_count(bytes, at)?;
            if count > 4 {
                return Err(invalid());
            }
            value.messages = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros1Pal_tablet_msgsFunctionalityStatus::read_fields(bytes, at)?;
                value.messages.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros1Pal_tablet_msgsRobotStatus {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 536 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 4 {
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
/// Complete bounded value for ROS1 pal_video_recording_msgs/StartRecordingRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_video_recording_msgsStartRecordingRequest {}
impl Default for Ros1Pal_video_recording_msgsStartRecordingRequest {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Pal_video_recording_msgsStartRecordingRequest {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_214a2bd3c382b4bd7dbb15d1b694e6d385bd9b2656944068177bd0408a16d914";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if n > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {}
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        Ok(value)
    }
}
impl Canonical for Ros1Pal_video_recording_msgsStartRecordingRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 0 {
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
/// Complete bounded value for ROS1 pal_video_recording_msgs/StartRecordingResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_video_recording_msgsStartRecordingResponse {}
impl Default for Ros1Pal_video_recording_msgsStartRecordingResponse {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Pal_video_recording_msgsStartRecordingResponse {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_03b8bcd879b02864300b8a90d721958a4335f53bd17abbd29178471de736d9b6";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if n > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {}
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        Ok(value)
    }
}
impl Canonical for Ros1Pal_video_recording_msgsStartRecordingResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 0 {
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
/// Complete bounded value for ROS1 pal_video_recording_msgs/StopRecordingRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_video_recording_msgsStopRecordingRequest {}
impl Default for Ros1Pal_video_recording_msgsStopRecordingRequest {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Pal_video_recording_msgsStopRecordingRequest {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_2fe53f84621ac67f592d86f028c2d5be67f4fee13663b82a9b128d50a8a1c4f5";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if n > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {}
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        Ok(value)
    }
}
impl Canonical for Ros1Pal_video_recording_msgsStopRecordingRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 0 {
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
/// Complete bounded value for ROS1 pal_video_recording_msgs/StopRecordingResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_video_recording_msgsStopRecordingResponse {}
impl Default for Ros1Pal_video_recording_msgsStopRecordingResponse {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Pal_video_recording_msgsStopRecordingResponse {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_0e7555737246a82dcf9203313b8bfc43c808fa1d8a405c4159bf3b837545b7c2";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if n > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {}
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        Ok(value)
    }
}
impl Canonical for Ros1Pal_video_recording_msgsStopRecordingResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 0 {
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
/// Complete bounded value for ROS1 pal_vision_msgs/DetectedObject.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_vision_msgsDetectedObject {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros1Std_msgsHeader,
    /// Declared position3D; canonical bounds are part of CODEC_IDENTITY.
    pub position3D: Ros1Geometry_msgsPoint,
}
impl Default for Ros1Pal_vision_msgsDetectedObject {
    fn default() -> Self {
        Self {
            header: Default::default(),
            position3D: Default::default(),
        }
    }
}
impl Ros1Pal_vision_msgsDetectedObject {
    pub const MAX_WIRE_BYTES: usize = 168;
    pub const CARTESIAN_WIRE_BYTES: u64 = 168;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_49ddd55b2f5fc8053980d77760c563c563113d1dafc899b0b5d619f98ab7ad25";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        n = add_size(n, self.position3D.wire_size()?)?;
        if n > 168 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.header.write_fields(out, at);
        self.position3D.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Std_msgsHeader::read_fields(bytes, at)?;
        value.header = decoded;
        let decoded = Ros1Geometry_msgsPoint::read_fields(bytes, at)?;
        value.position3D = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_vision_msgsDetectedObject {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 168 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 40 {
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
/// Complete bounded value for ROS1 std_msgs/ColorRGBA.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Std_msgsColorRGBA {
    /// Declared r; canonical bounds are part of CODEC_IDENTITY.
    pub r: f32,
    /// Declared g; canonical bounds are part of CODEC_IDENTITY.
    pub g: f32,
    /// Declared b; canonical bounds are part of CODEC_IDENTITY.
    pub b: f32,
    /// Declared a; canonical bounds are part of CODEC_IDENTITY.
    pub a: f32,
}
impl Default for Ros1Std_msgsColorRGBA {
    fn default() -> Self {
        Self {
            r: Default::default(),
            g: Default::default(),
            b: Default::default(),
            a: Default::default(),
        }
    }
}
impl Ros1Std_msgsColorRGBA {
    pub const MAX_WIRE_BYTES: usize = 16;
    pub const CARTESIAN_WIRE_BYTES: u64 = 16;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_2c956a9dd28dc999fc04f9704e68021ae940136f6c54d151975792a9344da90d";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if !self.r.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.g.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.b.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.a.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if n > 16 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.r.to_le_bytes());
        put(out, at, &self.g.to_le_bytes());
        put(out, at, &self.b.to_le_bytes());
        put(out, at, &self.a.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.r = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.g = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.b = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.a = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Std_msgsColorRGBA {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 16 {
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
/// Complete bounded value for ROS1 pal_vision_msgs/Rectangle.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_vision_msgsRectangle {
    /// Declared x; canonical bounds are part of CODEC_IDENTITY.
    pub x: i64,
    /// Declared y; canonical bounds are part of CODEC_IDENTITY.
    pub y: i64,
    /// Declared width; canonical bounds are part of CODEC_IDENTITY.
    pub width: i64,
    /// Declared height; canonical bounds are part of CODEC_IDENTITY.
    pub height: i64,
}
impl Default for Ros1Pal_vision_msgsRectangle {
    fn default() -> Self {
        Self {
            x: Default::default(),
            y: Default::default(),
            width: Default::default(),
            height: Default::default(),
        }
    }
}
impl Ros1Pal_vision_msgsRectangle {
    pub const MAX_WIRE_BYTES: usize = 32;
    pub const CARTESIAN_WIRE_BYTES: u64 = 32;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_fa96c9ba0ef62b6f620e1200ffde47ce33ae8d41e444c39ae65e6aa3b27954c4";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 8)?;
        n = add_size(n, 8)?;
        n = add_size(n, 8)?;
        n = add_size(n, 8)?;
        if n > 32 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.x.to_le_bytes());
        put(out, at, &self.y.to_le_bytes());
        put(out, at, &self.width.to_le_bytes());
        put(out, at, &self.height.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        value.x = decoded;
        let decoded = i64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        value.y = decoded;
        let decoded = i64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        value.width = decoded;
        let decoded = i64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        value.height = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_vision_msgsRectangle {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
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
/// Complete bounded value for ROS1 pal_vision_msgs/DetectedPerson.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_vision_msgsDetectedPerson {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros1Std_msgsHeader,
    /// Declared objectId; canonical bounds are part of CODEC_IDENTITY.
    pub objectId: i64,
    /// Declared boxColour; canonical bounds are part of CODEC_IDENTITY.
    pub boxColour: Ros1Std_msgsColorRGBA,
    /// Declared confidence; canonical bounds are part of CODEC_IDENTITY.
    pub confidence: f64,
    /// Declared position3D; canonical bounds are part of CODEC_IDENTITY.
    pub position3D: Ros1Geometry_msgsPoint,
    /// Declared box; canonical bounds are part of CODEC_IDENTITY.
    pub r#box: Ros1Pal_vision_msgsRectangle,
    /// Declared faceBox; canonical bounds are part of CODEC_IDENTITY.
    pub faceBox: Ros1Pal_vision_msgsRectangle,
}
impl Default for Ros1Pal_vision_msgsDetectedPerson {
    fn default() -> Self {
        Self {
            header: Default::default(),
            objectId: Default::default(),
            boxColour: Default::default(),
            confidence: Default::default(),
            position3D: Default::default(),
            r#box: Default::default(),
            faceBox: Default::default(),
        }
    }
}
impl Ros1Pal_vision_msgsDetectedPerson {
    pub const MAX_WIRE_BYTES: usize = 264;
    pub const CARTESIAN_WIRE_BYTES: u64 = 264;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_ce1f7b8789e0928dc98ba3819be067f6bb077a9144f475f5c50a849be781c82e";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        n = add_size(n, 8)?;
        n = add_size(n, self.boxColour.wire_size()?)?;
        if !self.confidence.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        n = add_size(n, self.position3D.wire_size()?)?;
        n = add_size(n, self.r#box.wire_size()?)?;
        n = add_size(n, self.faceBox.wire_size()?)?;
        if n > 264 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.header.write_fields(out, at);
        put(out, at, &self.objectId.to_le_bytes());
        self.boxColour.write_fields(out, at);
        put(out, at, &self.confidence.to_le_bytes());
        self.position3D.write_fields(out, at);
        self.r#box.write_fields(out, at);
        self.faceBox.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Std_msgsHeader::read_fields(bytes, at)?;
        value.header = decoded;
        let decoded = i64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        value.objectId = decoded;
        let decoded = Ros1Std_msgsColorRGBA::read_fields(bytes, at)?;
        value.boxColour = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.confidence = decoded;
        let decoded = Ros1Geometry_msgsPoint::read_fields(bytes, at)?;
        value.position3D = decoded;
        let decoded = Ros1Pal_vision_msgsRectangle::read_fields(bytes, at)?;
        value.r#box = decoded;
        let decoded = Ros1Pal_vision_msgsRectangle::read_fields(bytes, at)?;
        value.faceBox = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_vision_msgsDetectedPerson {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 264 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 136 {
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
/// Complete bounded value for ROS1 pal_vision_msgs/FaceDetection.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_vision_msgsFaceDetection {
    /// Declared position3D; canonical bounds are part of CODEC_IDENTITY.
    pub position3D: Ros1Geometry_msgsPoint,
    /// Declared imageBoundingBox; canonical bounds are part of CODEC_IDENTITY.
    pub imageBoundingBox: Ros1Pal_vision_msgsRectangle,
    /// Declared hog; canonical bounds are part of CODEC_IDENTITY.
    pub hog: Vec<f32>,
}
impl Default for Ros1Pal_vision_msgsFaceDetection {
    fn default() -> Self {
        Self {
            position3D: Default::default(),
            imageBoundingBox: Default::default(),
            hog: Default::default(),
        }
    }
}
impl Ros1Pal_vision_msgsFaceDetection {
    pub const MAX_WIRE_BYTES: usize = 124;
    pub const CARTESIAN_WIRE_BYTES: u64 = 124;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_57943eb9a19b9558fc5e7390bfbb3f7ab271cfb5ab7892bc1442a43c8d3217d5";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.position3D.wire_size()?)?;
        n = add_size(n, self.imageBoundingBox.wire_size()?)?;
        if self.hog.len() > 16 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.hog {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
        }
        if n > 124 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.position3D.write_fields(out, at);
        self.imageBoundingBox.write_fields(out, at);
        put(out, at, &(self.hog.len() as u32).to_le_bytes());
        for element in &self.hog {
            put(out, at, &element.to_le_bytes());
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Geometry_msgsPoint::read_fields(bytes, at)?;
        value.position3D = decoded;
        let decoded = Ros1Pal_vision_msgsRectangle::read_fields(bytes, at)?;
        value.imageBoundingBox = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 16 {
                return Err(invalid());
            }
            value.hog = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.hog.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros1Pal_vision_msgsFaceDetection {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 124 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 60 {
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
/// Complete bounded value for ROS1 pal_vision_msgs/FaceDetections.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_vision_msgsFaceDetections {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros1Std_msgsHeader,
    /// Declared imgID; canonical bounds are part of CODEC_IDENTITY.
    pub imgID: u32,
    /// Declared faces; canonical bounds are part of CODEC_IDENTITY.
    pub faces: Vec<Ros1Pal_vision_msgsFaceDetection>,
}
impl Default for Ros1Pal_vision_msgsFaceDetections {
    fn default() -> Self {
        Self {
            header: Default::default(),
            imgID: Default::default(),
            faces: Default::default(),
        }
    }
}
impl Ros1Pal_vision_msgsFaceDetections {
    pub const MAX_WIRE_BYTES: usize = 648;
    pub const CARTESIAN_WIRE_BYTES: u64 = 648;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_bc135c2c93419e99b87edabfe3a72e744e574ec703e77919736ae90f069417a0";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        n = add_size(n, 4)?;
        if self.faces.len() > 4 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.faces {
            n = add_size(n, element.wire_size()?)?;
        }
        if n > 648 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.header.write_fields(out, at);
        put(out, at, &self.imgID.to_le_bytes());
        put(out, at, &(self.faces.len() as u32).to_le_bytes());
        for element in &self.faces {
            element.write_fields(out, at);
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Std_msgsHeader::read_fields(bytes, at)?;
        value.header = decoded;
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.imgID = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 4 {
                return Err(invalid());
            }
            value.faces = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros1Pal_vision_msgsFaceDetection::read_fields(bytes, at)?;
                value.faces.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros1Pal_vision_msgsFaceDetections {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 648 {
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
/// Complete bounded value for ROS1 pal_vision_msgs/FaceRecognitionGoal.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_vision_msgsFaceRecognitionGoal {
    /// Declared order_id; canonical bounds are part of CODEC_IDENTITY.
    pub order_id: u8,
    /// Declared order_argument; canonical bounds are part of CODEC_IDENTITY.
    pub order_argument: String,
}
impl Default for Ros1Pal_vision_msgsFaceRecognitionGoal {
    fn default() -> Self {
        Self {
            order_id: Default::default(),
            order_argument: Default::default(),
        }
    }
}
impl Ros1Pal_vision_msgsFaceRecognitionGoal {
    pub const MAX_WIRE_BYTES: usize = 133;
    pub const CARTESIAN_WIRE_BYTES: u64 = 133;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_bcf0281ebf646f90ea48d50971aedcd174eec9bdf8cb45ca66c6e4aa672cda4b";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if self.order_argument.len() > 128 || self.order_argument.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.order_argument.len())?;
        if n > 133 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.order_id.to_le_bytes());
        put(out, at, &(self.order_argument.len() as u32).to_le_bytes());
        put(out, at, self.order_argument.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.order_id = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.order_argument = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_vision_msgsFaceRecognitionGoal {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 133 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 5 {
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
/// Complete bounded value for ROS1 pal_vision_msgs/FaceRecognitionResult.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_vision_msgsFaceRecognitionResult {
    /// Declared order_id; canonical bounds are part of CODEC_IDENTITY.
    pub order_id: u8,
    /// Declared names; canonical bounds are part of CODEC_IDENTITY.
    pub names: Vec<String>,
    /// Declared confidence; canonical bounds are part of CODEC_IDENTITY.
    pub confidence: Vec<f32>,
}
impl Default for Ros1Pal_vision_msgsFaceRecognitionResult {
    fn default() -> Self {
        Self {
            order_id: Default::default(),
            names: Default::default(),
            confidence: Default::default(),
        }
    }
}
impl Ros1Pal_vision_msgsFaceRecognitionResult {
    pub const MAX_WIRE_BYTES: usize = 2185;
    pub const CARTESIAN_WIRE_BYTES: u64 = 2185;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_47287112c67933fc592f58a910627ff0ddc35f2cf8f38437399ef1ed94e4d36e";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if self.names.len() > 16 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.names {
            if element.len() > 128 || element.as_bytes().contains(&0) {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
            n = add_size(n, element.len())?;
        }
        if self.confidence.len() > 16 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.confidence {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
        }
        if n > 2185 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.order_id.to_le_bytes());
        put(out, at, &(self.names.len() as u32).to_le_bytes());
        for element in &self.names {
            put(out, at, &(element.len() as u32).to_le_bytes());
            put(out, at, element.as_bytes());
        }
        put(out, at, &(self.confidence.len() as u32).to_le_bytes());
        for element in &self.confidence {
            put(out, at, &element.to_le_bytes());
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.order_id = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 16 {
                return Err(invalid());
            }
            value.names = Vec::with_capacity(count);
            for i in 0..count {
                let size = read_count(bytes, at)?;
                if size > 128 {
                    return Err(invalid());
                }
                let raw = take(bytes, at, size)?;
                if raw.contains(&0) {
                    return Err(invalid());
                }
                let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
                value.names.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 16 {
                return Err(invalid());
            }
            value.confidence = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.confidence.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros1Pal_vision_msgsFaceRecognitionResult {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 2185 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 9 {
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
/// Complete bounded value for ROS1 pal_vision_msgs/FaceRecognitionFeedback.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_vision_msgsFaceRecognitionFeedback {
    /// Declared order_id; canonical bounds are part of CODEC_IDENTITY.
    pub order_id: u8,
    /// Declared names; canonical bounds are part of CODEC_IDENTITY.
    pub names: Vec<String>,
    /// Declared confidence; canonical bounds are part of CODEC_IDENTITY.
    pub confidence: Vec<f32>,
}
impl Default for Ros1Pal_vision_msgsFaceRecognitionFeedback {
    fn default() -> Self {
        Self {
            order_id: Default::default(),
            names: Default::default(),
            confidence: Default::default(),
        }
    }
}
impl Ros1Pal_vision_msgsFaceRecognitionFeedback {
    pub const MAX_WIRE_BYTES: usize = 2185;
    pub const CARTESIAN_WIRE_BYTES: u64 = 2185;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_42cb3618f562e3083ca7069e0f41233a9584cd00b9a3d2cb791d5956735dbfd7";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if self.names.len() > 16 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.names {
            if element.len() > 128 || element.as_bytes().contains(&0) {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
            n = add_size(n, element.len())?;
        }
        if self.confidence.len() > 16 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.confidence {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
        }
        if n > 2185 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.order_id.to_le_bytes());
        put(out, at, &(self.names.len() as u32).to_le_bytes());
        for element in &self.names {
            put(out, at, &(element.len() as u32).to_le_bytes());
            put(out, at, element.as_bytes());
        }
        put(out, at, &(self.confidence.len() as u32).to_le_bytes());
        for element in &self.confidence {
            put(out, at, &element.to_le_bytes());
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.order_id = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 16 {
                return Err(invalid());
            }
            value.names = Vec::with_capacity(count);
            for i in 0..count {
                let size = read_count(bytes, at)?;
                if size > 128 {
                    return Err(invalid());
                }
                let raw = take(bytes, at, size)?;
                if raw.contains(&0) {
                    return Err(invalid());
                }
                let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
                value.names.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 16 {
                return Err(invalid());
            }
            value.confidence = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.confidence.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros1Pal_vision_msgsFaceRecognitionFeedback {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 2185 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 9 {
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
/// Complete bounded value for ROS1 pal_vision_msgs/FaceTrackingStartRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_vision_msgsFaceTrackingStartRequest {}
impl Default for Ros1Pal_vision_msgsFaceTrackingStartRequest {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Pal_vision_msgsFaceTrackingStartRequest {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_e41bf1927b5c764ff89ca9d9049719e35c96c1689ba4bb930d1e90480a13647c";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if n > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {}
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        Ok(value)
    }
}
impl Canonical for Ros1Pal_vision_msgsFaceTrackingStartRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 0 {
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
/// Complete bounded value for ROS1 pal_vision_msgs/FaceTrackingStartResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_vision_msgsFaceTrackingStartResponse {}
impl Default for Ros1Pal_vision_msgsFaceTrackingStartResponse {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Pal_vision_msgsFaceTrackingStartResponse {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_51e6335ecfe5827f0bae5e5610b5dec443373b1233942b40387958b1b47ba4bf";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if n > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {}
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        Ok(value)
    }
}
impl Canonical for Ros1Pal_vision_msgsFaceTrackingStartResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 0 {
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
/// Complete bounded value for ROS1 pal_vision_msgs/FaceTrackingStopRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_vision_msgsFaceTrackingStopRequest {}
impl Default for Ros1Pal_vision_msgsFaceTrackingStopRequest {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Pal_vision_msgsFaceTrackingStopRequest {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_850dd9a2cdf7e12197ac7efad3facaf4609c7be7c63d8157a6b92bc1e56926e5";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if n > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {}
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        Ok(value)
    }
}
impl Canonical for Ros1Pal_vision_msgsFaceTrackingStopRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 0 {
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
/// Complete bounded value for ROS1 pal_vision_msgs/FaceTrackingStopResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_vision_msgsFaceTrackingStopResponse {}
impl Default for Ros1Pal_vision_msgsFaceTrackingStopResponse {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Pal_vision_msgsFaceTrackingStopResponse {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_158adae14ad8a978f5c934c5aee9489306e9ddd31d9afa15ff1a9f9af8872b5f";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if n > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {}
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        Ok(value)
    }
}
impl Canonical for Ros1Pal_vision_msgsFaceTrackingStopResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 0 {
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
/// Complete bounded value for ROS1 pal_vision_msgs/FollowMeResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_vision_msgsFollowMeResponse {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros1Std_msgsHeader,
    /// Declared targetDetected; canonical bounds are part of CODEC_IDENTITY.
    pub targetDetected: bool,
}
impl Default for Ros1Pal_vision_msgsFollowMeResponse {
    fn default() -> Self {
        Self {
            header: Default::default(),
            targetDetected: Default::default(),
        }
    }
}
impl Ros1Pal_vision_msgsFollowMeResponse {
    pub const MAX_WIRE_BYTES: usize = 145;
    pub const CARTESIAN_WIRE_BYTES: u64 = 145;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_509edcb3854474332fd562cc897fff9266b789772700de1b4a447670fd0bb24f";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        n = add_size(n, 1)?;
        if n > 145 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.header.write_fields(out, at);
        put(out, at, &[u8::from(self.targetDetected)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Std_msgsHeader::read_fields(bytes, at)?;
        value.header = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.targetDetected = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_vision_msgsFollowMeResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 145 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 17 {
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
/// Complete bounded value for ROS1 pal_vision_msgs/FollowMeStartRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_vision_msgsFollowMeStartRequest {
    /// Declared maxSecondsTargetLost; canonical bounds are part of CODEC_IDENTITY.
    pub maxSecondsTargetLost: f32,
}
impl Default for Ros1Pal_vision_msgsFollowMeStartRequest {
    fn default() -> Self {
        Self {
            maxSecondsTargetLost: Default::default(),
        }
    }
}
impl Ros1Pal_vision_msgsFollowMeStartRequest {
    pub const MAX_WIRE_BYTES: usize = 4;
    pub const CARTESIAN_WIRE_BYTES: u64 = 4;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_9ad00d43667a3ac5324f5999d68f04b8c176c308d94c2ed4da9d357697b0faba";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if !self.maxSecondsTargetLost.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if n > 4 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.maxSecondsTargetLost.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.maxSecondsTargetLost = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_vision_msgsFollowMeStartRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 4 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 4 {
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
/// Complete bounded value for ROS1 pal_vision_msgs/FollowMeStartResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_vision_msgsFollowMeStartResponse {}
impl Default for Ros1Pal_vision_msgsFollowMeStartResponse {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Pal_vision_msgsFollowMeStartResponse {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_2d61bb56a1595cfb26c8607e75c06b6ad712ee04f23f8bb3ec2055a311d3376a";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if n > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {}
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        Ok(value)
    }
}
impl Canonical for Ros1Pal_vision_msgsFollowMeStartResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 0 {
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
/// Complete bounded value for ROS1 pal_vision_msgs/FollowMeStopRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_vision_msgsFollowMeStopRequest {}
impl Default for Ros1Pal_vision_msgsFollowMeStopRequest {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Pal_vision_msgsFollowMeStopRequest {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_6027cba04b80218bf304f2a426f716bba87534e477b5dda411c921ac27e9a8b2";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if n > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {}
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        Ok(value)
    }
}
impl Canonical for Ros1Pal_vision_msgsFollowMeStopRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 0 {
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
/// Complete bounded value for ROS1 pal_vision_msgs/FollowMeStopResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_vision_msgsFollowMeStopResponse {}
impl Default for Ros1Pal_vision_msgsFollowMeStopResponse {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Pal_vision_msgsFollowMeStopResponse {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_a2b3b521174fc092b8f04cdc09ff4a43113b71b9daa4977e7a233fc8a5c02cdb";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if n > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {}
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        Ok(value)
    }
}
impl Canonical for Ros1Pal_vision_msgsFollowMeStopResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 0 {
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
/// Complete bounded value for ROS1 pal_vision_msgs/Gesture.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_vision_msgsGesture {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros1Std_msgsHeader,
    /// Declared gestureId; canonical bounds are part of CODEC_IDENTITY.
    pub gestureId: String,
    /// Declared position3D; canonical bounds are part of CODEC_IDENTITY.
    pub position3D: Ros1Geometry_msgsPoint,
}
impl Default for Ros1Pal_vision_msgsGesture {
    fn default() -> Self {
        Self {
            header: Default::default(),
            gestureId: Default::default(),
            position3D: Default::default(),
        }
    }
}
impl Ros1Pal_vision_msgsGesture {
    pub const MAX_WIRE_BYTES: usize = 300;
    pub const CARTESIAN_WIRE_BYTES: u64 = 300;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_e947cfbffe33a44d3590ff6513d4486c7411747df12fed9c178662e5beb2e4d1";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        if self.gestureId.len() > 128 || self.gestureId.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.gestureId.len())?;
        n = add_size(n, self.position3D.wire_size()?)?;
        if n > 300 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.header.write_fields(out, at);
        put(out, at, &(self.gestureId.len() as u32).to_le_bytes());
        put(out, at, self.gestureId.as_bytes());
        self.position3D.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Std_msgsHeader::read_fields(bytes, at)?;
        value.header = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.gestureId = decoded;
        let decoded = Ros1Geometry_msgsPoint::read_fields(bytes, at)?;
        value.position3D = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_vision_msgsGesture {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 300 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 44 {
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
/// Complete bounded value for ROS1 pal_vision_msgs/HeadPanTilt.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_vision_msgsHeadPanTilt {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros1Std_msgsHeader,
    /// Declared pan; canonical bounds are part of CODEC_IDENTITY.
    pub pan: f32,
    /// Declared tilt; canonical bounds are part of CODEC_IDENTITY.
    pub tilt: f32,
}
impl Default for Ros1Pal_vision_msgsHeadPanTilt {
    fn default() -> Self {
        Self {
            header: Default::default(),
            pan: Default::default(),
            tilt: Default::default(),
        }
    }
}
impl Ros1Pal_vision_msgsHeadPanTilt {
    pub const MAX_WIRE_BYTES: usize = 152;
    pub const CARTESIAN_WIRE_BYTES: u64 = 152;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_69c6664a98a42741b82d5c147ccfabdb7bb7138cae590c77a2b63103cdf899cc";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        if !self.pan.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.tilt.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if n > 152 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.header.write_fields(out, at);
        put(out, at, &self.pan.to_le_bytes());
        put(out, at, &self.tilt.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Std_msgsHeader::read_fields(bytes, at)?;
        value.header = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.pan = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.tilt = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_vision_msgsHeadPanTilt {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 152 {
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
/// Complete bounded value for ROS1 pal_vision_msgs/HogDetection.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_vision_msgsHogDetection {
    /// Declared imageBoundingBox; canonical bounds are part of CODEC_IDENTITY.
    pub imageBoundingBox: Ros1Pal_vision_msgsRectangle,
    /// Declared direction; canonical bounds are part of CODEC_IDENTITY.
    pub direction: Ros1Geometry_msgsVector3,
    /// Declared hog; canonical bounds are part of CODEC_IDENTITY.
    pub hog: Vec<f32>,
    /// Declared principalEigenVectorRGB; canonical bounds are part of CODEC_IDENTITY.
    pub principalEigenVectorRGB: Ros1Std_msgsColorRGBA,
    /// Declared rgbClusterCenters; canonical bounds are part of CODEC_IDENTITY.
    pub rgbClusterCenters: Vec<Ros1Std_msgsColorRGBA>,
    /// Declared rgbDescriptor1; canonical bounds are part of CODEC_IDENTITY.
    pub rgbDescriptor1: Vec<u32>,
    /// Declared rgbDescriptor2; canonical bounds are part of CODEC_IDENTITY.
    pub rgbDescriptor2: Vec<u32>,
}
impl Default for Ros1Pal_vision_msgsHogDetection {
    fn default() -> Self {
        Self {
            imageBoundingBox: Default::default(),
            direction: Default::default(),
            hog: Default::default(),
            principalEigenVectorRGB: Default::default(),
            rgbClusterCenters: Default::default(),
            rgbDescriptor1: Default::default(),
            rgbDescriptor2: Default::default(),
        }
    }
}
impl Ros1Pal_vision_msgsHogDetection {
    pub const MAX_WIRE_BYTES: usize = 344;
    pub const CARTESIAN_WIRE_BYTES: u64 = 344;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_4d745cf6bb2b9fce9d25b0c7b15be14ba7aec15d19a6677f7d8f4dfc40c3dcf4";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.imageBoundingBox.wire_size()?)?;
        n = add_size(n, self.direction.wire_size()?)?;
        if self.hog.len() > 16 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.hog {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
        }
        n = add_size(n, self.principalEigenVectorRGB.wire_size()?)?;
        if self.rgbClusterCenters.len() > 4 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.rgbClusterCenters {
            n = add_size(n, element.wire_size()?)?;
        }
        if self.rgbDescriptor1.len() > 16 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.rgbDescriptor1 {
            n = add_size(n, 4)?;
        }
        if self.rgbDescriptor2.len() > 16 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.rgbDescriptor2 {
            n = add_size(n, 4)?;
        }
        if n > 344 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.imageBoundingBox.write_fields(out, at);
        self.direction.write_fields(out, at);
        put(out, at, &(self.hog.len() as u32).to_le_bytes());
        for element in &self.hog {
            put(out, at, &element.to_le_bytes());
        }
        self.principalEigenVectorRGB.write_fields(out, at);
        put(
            out,
            at,
            &(self.rgbClusterCenters.len() as u32).to_le_bytes(),
        );
        for element in &self.rgbClusterCenters {
            element.write_fields(out, at);
        }
        put(out, at, &(self.rgbDescriptor1.len() as u32).to_le_bytes());
        for element in &self.rgbDescriptor1 {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &(self.rgbDescriptor2.len() as u32).to_le_bytes());
        for element in &self.rgbDescriptor2 {
            put(out, at, &element.to_le_bytes());
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Pal_vision_msgsRectangle::read_fields(bytes, at)?;
        value.imageBoundingBox = decoded;
        let decoded = Ros1Geometry_msgsVector3::read_fields(bytes, at)?;
        value.direction = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 16 {
                return Err(invalid());
            }
            value.hog = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.hog.push(decoded);
            }
        }
        let decoded = Ros1Std_msgsColorRGBA::read_fields(bytes, at)?;
        value.principalEigenVectorRGB = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 4 {
                return Err(invalid());
            }
            value.rgbClusterCenters = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros1Std_msgsColorRGBA::read_fields(bytes, at)?;
                value.rgbClusterCenters.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 16 {
                return Err(invalid());
            }
            value.rgbDescriptor1 = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                value.rgbDescriptor1.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 16 {
                return Err(invalid());
            }
            value.rgbDescriptor2 = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                value.rgbDescriptor2.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros1Pal_vision_msgsHogDetection {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 344 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 88 {
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
/// Complete bounded value for ROS1 pal_vision_msgs/HogDetections.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_vision_msgsHogDetections {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros1Std_msgsHeader,
    /// Declared imgID; canonical bounds are part of CODEC_IDENTITY.
    pub imgID: u32,
    /// Declared persons; canonical bounds are part of CODEC_IDENTITY.
    pub persons: Vec<Ros1Pal_vision_msgsHogDetection>,
}
impl Default for Ros1Pal_vision_msgsHogDetections {
    fn default() -> Self {
        Self {
            header: Default::default(),
            imgID: Default::default(),
            persons: Default::default(),
        }
    }
}
impl Ros1Pal_vision_msgsHogDetections {
    pub const MAX_WIRE_BYTES: usize = 1528;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1528;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_8ea9e8cc6d81de0b518f3dd1fd3fedca765711f965644e2a0fa88b8d334cbace";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        n = add_size(n, 4)?;
        if self.persons.len() > 4 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.persons {
            n = add_size(n, element.wire_size()?)?;
        }
        if n > 1528 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.header.write_fields(out, at);
        put(out, at, &self.imgID.to_le_bytes());
        put(out, at, &(self.persons.len() as u32).to_le_bytes());
        for element in &self.persons {
            element.write_fields(out, at);
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Std_msgsHeader::read_fields(bytes, at)?;
        value.header = decoded;
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.imgID = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 4 {
                return Err(invalid());
            }
            value.persons = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros1Pal_vision_msgsHogDetection::read_fields(bytes, at)?;
                value.persons.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros1Pal_vision_msgsHogDetections {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 1528 {
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
/// Complete bounded value for ROS1 pal_vision_msgs/LegDetections.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_vision_msgsLegDetections {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros1Std_msgsHeader,
    /// Declared position3D; canonical bounds are part of CODEC_IDENTITY.
    pub position3D: Vec<Ros1Geometry_msgsPoint>,
}
impl Default for Ros1Pal_vision_msgsLegDetections {
    fn default() -> Self {
        Self {
            header: Default::default(),
            position3D: Default::default(),
        }
    }
}
impl Ros1Pal_vision_msgsLegDetections {
    pub const MAX_WIRE_BYTES: usize = 244;
    pub const CARTESIAN_WIRE_BYTES: u64 = 244;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_e175101eca8d474e2569d4e4e125fd84e8c8a73c957472cf7e4b6aae9dfa0549";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        if self.position3D.len() > 4 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.position3D {
            n = add_size(n, element.wire_size()?)?;
        }
        if n > 244 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.header.write_fields(out, at);
        put(out, at, &(self.position3D.len() as u32).to_le_bytes());
        for element in &self.position3D {
            element.write_fields(out, at);
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Std_msgsHeader::read_fields(bytes, at)?;
        value.header = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 4 {
                return Err(invalid());
            }
            value.position3D = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros1Geometry_msgsPoint::read_fields(bytes, at)?;
                value.position3D.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros1Pal_vision_msgsLegDetections {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 244 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 20 {
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
/// Complete bounded value for ROS1 pal_vision_msgs/LookToPixelRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_vision_msgsLookToPixelRequest {
    /// Declared x; canonical bounds are part of CODEC_IDENTITY.
    pub x: f32,
    /// Declared y; canonical bounds are part of CODEC_IDENTITY.
    pub y: f32,
}
impl Default for Ros1Pal_vision_msgsLookToPixelRequest {
    fn default() -> Self {
        Self {
            x: Default::default(),
            y: Default::default(),
        }
    }
}
impl Ros1Pal_vision_msgsLookToPixelRequest {
    pub const MAX_WIRE_BYTES: usize = 8;
    pub const CARTESIAN_WIRE_BYTES: u64 = 8;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_ead4559133ef68c0248064d865cceaeb335f6104424a199ebc4452e6878383ff";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if !self.x.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.y.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if n > 8 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.x.to_le_bytes());
        put(out, at, &self.y.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.x = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.y = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_vision_msgsLookToPixelRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
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
/// Complete bounded value for ROS1 pal_vision_msgs/LookToPixelResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_vision_msgsLookToPixelResponse {}
impl Default for Ros1Pal_vision_msgsLookToPixelResponse {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Pal_vision_msgsLookToPixelResponse {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_137d83d2b779310ee91811bd5a17c4d232fb2114246da1520656876385562ae1";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if n > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {}
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        Ok(value)
    }
}
impl Canonical for Ros1Pal_vision_msgsLookToPixelResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 0 {
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
/// Complete bounded value for ROS1 pal_visual_localization_msgs/VisualLocAddPlaceGoal.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoal {}
impl Default for Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoal {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoal {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_6d84634e1bebf082190a3992acd2379d94a375158775cf0a01c430779105049d";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if n > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {}
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        Ok(value)
    }
}
impl Canonical for Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoal {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 0 {
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
/// Complete bounded value for ROS1 pal_visual_localization_msgs/VisualLocAddPlaceResult.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_visual_localization_msgsVisualLocAddPlaceResult {
    /// Declared res; canonical bounds are part of CODEC_IDENTITY.
    pub res: bool,
}
impl Default for Ros1Pal_visual_localization_msgsVisualLocAddPlaceResult {
    fn default() -> Self {
        Self {
            res: Default::default(),
        }
    }
}
impl Ros1Pal_visual_localization_msgsVisualLocAddPlaceResult {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_604eadb052736d8c3999fff8ab635886d87f779943632ce01e89742d591c265a";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if n > 1 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &[u8::from(self.res)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.res = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_visual_localization_msgsVisualLocAddPlaceResult {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 1 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 1 {
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
/// Complete bounded value for ROS1 pal_visual_localization_msgs/VisualLocAddPlaceFeedback.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedback {}
impl Default for Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedback {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedback {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_ceb1b2594d5bf763de97096f0bb683276be372393e779d3b3334b3adc7a6f3b6";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if n > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {}
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        Ok(value)
    }
}
impl Canonical for Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedback {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 0 {
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
/// Complete bounded value for ROS1 pal_visual_localization_msgs/VisualLocRecognizeGoal.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_visual_localization_msgsVisualLocRecognizeGoal {}
impl Default for Ros1Pal_visual_localization_msgsVisualLocRecognizeGoal {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Pal_visual_localization_msgsVisualLocRecognizeGoal {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_b1aa9fe3f12a81861385e9421e153869ee3f2ba0949fe55c0ed0fe7170ae4c4a";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if n > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {}
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        Ok(value)
    }
}
impl Canonical for Ros1Pal_visual_localization_msgsVisualLocRecognizeGoal {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 0 {
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
/// Complete bounded value for ROS1 pal_visual_localization_msgs/VisualLocRecognizeResult.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_visual_localization_msgsVisualLocRecognizeResult {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
    /// Declared confidence; canonical bounds are part of CODEC_IDENTITY.
    pub confidence: f64,
    /// Declared estimatedPose; canonical bounds are part of CODEC_IDENTITY.
    pub estimatedPose: Ros1Geometry_msgsPoseWithCovarianceStamped,
}
impl Default for Ros1Pal_visual_localization_msgsVisualLocRecognizeResult {
    fn default() -> Self {
        Self {
            success: Default::default(),
            confidence: Default::default(),
            estimatedPose: Default::default(),
        }
    }
}
impl Ros1Pal_visual_localization_msgsVisualLocRecognizeResult {
    pub const MAX_WIRE_BYTES: usize = 497;
    pub const CARTESIAN_WIRE_BYTES: u64 = 497;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_e20e2e4ba374756256518e0e7075689be3c87660703926ab5d1cb33c8ff1c6da";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if !self.confidence.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        n = add_size(n, self.estimatedPose.wire_size()?)?;
        if n > 497 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &[u8::from(self.success)]);
        put(out, at, &self.confidence.to_le_bytes());
        self.estimatedPose.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.confidence = decoded;
        let decoded = Ros1Geometry_msgsPoseWithCovarianceStamped::read_fields(bytes, at)?;
        value.estimatedPose = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_visual_localization_msgsVisualLocRecognizeResult {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 497 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 369 {
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
/// Complete bounded value for ROS1 pal_visual_localization_msgs/VisualLocRecognizeFeedback.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedback {}
impl Default for Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedback {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedback {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_07206e6717d8ba2621e7a00f69d65a2e56102b64e84e0ef66e44e93a4468e65e";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if n > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {}
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        Ok(value)
    }
}
impl Canonical for Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedback {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 0 {
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
/// Complete bounded value for ROS1 pal_walking_msgs/ContactState.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_walking_msgsContactState {
    /// Declared type; canonical bounds are part of CODEC_IDENTITY.
    pub r#type: u8,
}
impl Default for Ros1Pal_walking_msgsContactState {
    fn default() -> Self {
        Self {
            r#type: Default::default(),
        }
    }
}
impl Ros1Pal_walking_msgsContactState {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_632dc784a31db78e0b56fe3c2f324e19dcdcac6d6bdc72e0f9fab21e2a8ea3a8";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if n > 1 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.r#type.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.r#type = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_walking_msgsContactState {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 1 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 1 {
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
/// Complete bounded value for ROS1 pal_walking_msgs/MoveHipFeetRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_walking_msgsMoveHipFeetRequest {
    /// Declared hip_poses; canonical bounds are part of CODEC_IDENTITY.
    pub hip_poses: Ros1Geometry_msgsPoseArray,
    /// Declared left_foot_poses; canonical bounds are part of CODEC_IDENTITY.
    pub left_foot_poses: Ros1Geometry_msgsPoseArray,
    /// Declared right_foot_poses; canonical bounds are part of CODEC_IDENTITY.
    pub right_foot_poses: Ros1Geometry_msgsPoseArray,
    /// Declared times_after_previous; canonical bounds are part of CODEC_IDENTITY.
    pub times_after_previous: Vec<Ros1Duration>,
}
impl Default for Ros1Pal_walking_msgsMoveHipFeetRequest {
    fn default() -> Self {
        Self {
            hip_poses: Default::default(),
            left_foot_poses: Default::default(),
            right_foot_poses: Default::default(),
            times_after_previous: Default::default(),
        }
    }
}
impl Ros1Pal_walking_msgsMoveHipFeetRequest {
    pub const MAX_WIRE_BYTES: usize = 1248;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1248;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_5fb083fec01e8eab76d0023802e8ec7590fc993ba7a68d1a2033c43065131c5c";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.hip_poses.wire_size()?)?;
        n = add_size(n, self.left_foot_poses.wire_size()?)?;
        n = add_size(n, self.right_foot_poses.wire_size()?)?;
        if self.times_after_previous.len() > 16 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.times_after_previous {
            n = add_size(n, element.wire_size()?)?;
        }
        if n > 1248 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.hip_poses.write_fields(out, at);
        self.left_foot_poses.write_fields(out, at);
        self.right_foot_poses.write_fields(out, at);
        put(
            out,
            at,
            &(self.times_after_previous.len() as u32).to_le_bytes(),
        );
        for element in &self.times_after_previous {
            element.write_fields(out, at);
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Geometry_msgsPoseArray::read_fields(bytes, at)?;
        value.hip_poses = decoded;
        let decoded = Ros1Geometry_msgsPoseArray::read_fields(bytes, at)?;
        value.left_foot_poses = decoded;
        let decoded = Ros1Geometry_msgsPoseArray::read_fields(bytes, at)?;
        value.right_foot_poses = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 16 {
                return Err(invalid());
            }
            value.times_after_previous = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros1Duration::read_fields(bytes, at)?;
                value.times_after_previous.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros1Pal_walking_msgsMoveHipFeetRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 1248 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 64 {
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
/// Complete bounded value for ROS1 pal_walking_msgs/MoveHipFeetResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_walking_msgsMoveHipFeetResponse {}
impl Default for Ros1Pal_walking_msgsMoveHipFeetResponse {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Pal_walking_msgsMoveHipFeetResponse {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_d5adee26d6498a466a886f9869495d90adae91081287903faa9b90ac6ab2306e";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if n > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {}
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        Ok(value)
    }
}
impl Canonical for Ros1Pal_walking_msgsMoveHipFeetResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 0 {
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
/// Complete bounded value for ROS1 pal_walking_msgs/SMStatus.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_walking_msgsSMStatus {
    /// Declared left_foot_pose; canonical bounds are part of CODEC_IDENTITY.
    pub left_foot_pose: Ros1Geometry_msgsPose,
    /// Declared right_foot_pose; canonical bounds are part of CODEC_IDENTITY.
    pub right_foot_pose: Ros1Geometry_msgsPose,
    /// Declared stance_foot_side; canonical bounds are part of CODEC_IDENTITY.
    pub stance_foot_side: u8,
    /// Declared future_swing_landing_pose; canonical bounds are part of CODEC_IDENTITY.
    pub future_swing_landing_pose: Ros1Geometry_msgsPose,
    /// Declared future_swing_side; canonical bounds are part of CODEC_IDENTITY.
    pub future_swing_side: u8,
}
impl Default for Ros1Pal_walking_msgsSMStatus {
    fn default() -> Self {
        Self {
            left_foot_pose: Default::default(),
            right_foot_pose: Default::default(),
            stance_foot_side: Default::default(),
            future_swing_landing_pose: Default::default(),
            future_swing_side: Default::default(),
        }
    }
}
impl Ros1Pal_walking_msgsSMStatus {
    pub const MAX_WIRE_BYTES: usize = 170;
    pub const CARTESIAN_WIRE_BYTES: u64 = 170;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_490c0966b36899ce64a1271d9c1eaf9802b9285eb7835b0565a3e2bbf01a0c6e";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.left_foot_pose.wire_size()?)?;
        n = add_size(n, self.right_foot_pose.wire_size()?)?;
        n = add_size(n, 1)?;
        n = add_size(n, self.future_swing_landing_pose.wire_size()?)?;
        n = add_size(n, 1)?;
        if n > 170 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.left_foot_pose.write_fields(out, at);
        self.right_foot_pose.write_fields(out, at);
        put(out, at, &self.stance_foot_side.to_le_bytes());
        self.future_swing_landing_pose.write_fields(out, at);
        put(out, at, &self.future_swing_side.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Geometry_msgsPose::read_fields(bytes, at)?;
        value.left_foot_pose = decoded;
        let decoded = Ros1Geometry_msgsPose::read_fields(bytes, at)?;
        value.right_foot_pose = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.stance_foot_side = decoded;
        let decoded = Ros1Geometry_msgsPose::read_fields(bytes, at)?;
        value.future_swing_landing_pose = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.future_swing_side = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_walking_msgsSMStatus {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 170 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 170 {
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
/// Complete bounded value for ROS1 pal_walking_msgs/SitRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_walking_msgsSitRequest {
    /// Declared down; canonical bounds are part of CODEC_IDENTITY.
    pub down: bool,
    /// Declared weight_threshold; canonical bounds are part of CODEC_IDENTITY.
    pub weight_threshold: f64,
}
impl Default for Ros1Pal_walking_msgsSitRequest {
    fn default() -> Self {
        Self {
            down: Default::default(),
            weight_threshold: Default::default(),
        }
    }
}
impl Ros1Pal_walking_msgsSitRequest {
    pub const MAX_WIRE_BYTES: usize = 9;
    pub const CARTESIAN_WIRE_BYTES: u64 = 9;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_8dc49a028691c5be0752fad0ad7cf1d2d4cc3e093ff8fe53b0f0f5dcf66241da";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if !self.weight_threshold.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if n > 9 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &[u8::from(self.down)]);
        put(out, at, &self.weight_threshold.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.down = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.weight_threshold = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_walking_msgsSitRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 9 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 9 {
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
/// Complete bounded value for ROS1 pal_walking_msgs/SitResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_walking_msgsSitResponse {}
impl Default for Ros1Pal_walking_msgsSitResponse {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Pal_walking_msgsSitResponse {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_6af9975562de7fe4864f8409ec5c1210f5d144c872e0ce9b553a391a1790df35";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if n > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {}
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        Ok(value)
    }
}
impl Canonical for Ros1Pal_walking_msgsSitResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 0 {
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
/// Complete bounded value for ROS1 pal_walking_msgs/StepOverRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_walking_msgsStepOverRequest {
    /// Declared step_length; canonical bounds are part of CODEC_IDENTITY.
    pub step_length: f64,
    /// Declared step_time; canonical bounds are part of CODEC_IDENTITY.
    pub step_time: f64,
    /// Declared step_height; canonical bounds are part of CODEC_IDENTITY.
    pub step_height: f64,
    /// Declared z_lipm; canonical bounds are part of CODEC_IDENTITY.
    pub z_lipm: f64,
}
impl Default for Ros1Pal_walking_msgsStepOverRequest {
    fn default() -> Self {
        Self {
            step_length: Default::default(),
            step_time: Default::default(),
            step_height: Default::default(),
            z_lipm: Default::default(),
        }
    }
}
impl Ros1Pal_walking_msgsStepOverRequest {
    pub const MAX_WIRE_BYTES: usize = 32;
    pub const CARTESIAN_WIRE_BYTES: u64 = 32;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_00736de4ce830d33f33d93ca8c703dfc555f0ecc2ac86d90002929f4cefaedde";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if !self.step_length.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.step_time.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.step_height.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.z_lipm.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if n > 32 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.step_length.to_le_bytes());
        put(out, at, &self.step_time.to_le_bytes());
        put(out, at, &self.step_height.to_le_bytes());
        put(out, at, &self.z_lipm.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.step_length = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.step_time = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.step_height = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.z_lipm = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_walking_msgsStepOverRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
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
/// Complete bounded value for ROS1 pal_walking_msgs/StepOverResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_walking_msgsStepOverResponse {
    /// Declared result; canonical bounds are part of CODEC_IDENTITY.
    pub result: String,
}
impl Default for Ros1Pal_walking_msgsStepOverResponse {
    fn default() -> Self {
        Self {
            result: Default::default(),
        }
    }
}
impl Ros1Pal_walking_msgsStepOverResponse {
    pub const MAX_WIRE_BYTES: usize = 132;
    pub const CARTESIAN_WIRE_BYTES: u64 = 132;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_e7803ee0f8ffd0f2c1eb698670454e2eaae232d60f629e5f0b3b57f876dce944";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.result.len() > 128 || self.result.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.result.len())?;
        if n > 132 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.result.len() as u32).to_le_bytes());
        put(out, at, self.result.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.result = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_walking_msgsStepOverResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 132 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 4 {
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
/// Complete bounded value for ROS1 pal_walking_msgs/WalkStepsRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_walking_msgsWalkStepsRequest {
    /// Declared nsteps; canonical bounds are part of CODEC_IDENTITY.
    pub nsteps: i32,
    /// Declared step_length; canonical bounds are part of CODEC_IDENTITY.
    pub step_length: f64,
    /// Declared step_time; canonical bounds are part of CODEC_IDENTITY.
    pub step_time: f64,
}
impl Default for Ros1Pal_walking_msgsWalkStepsRequest {
    fn default() -> Self {
        Self {
            nsteps: Default::default(),
            step_length: Default::default(),
            step_time: Default::default(),
        }
    }
}
impl Ros1Pal_walking_msgsWalkStepsRequest {
    pub const MAX_WIRE_BYTES: usize = 20;
    pub const CARTESIAN_WIRE_BYTES: u64 = 20;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_eab28f422b38937bef44f8c9ef8c5f08283d3fefd0f16865a91e641b489e446a";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 4)?;
        if !self.step_length.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.step_time.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if n > 20 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.nsteps.to_le_bytes());
        put(out, at, &self.step_length.to_le_bytes());
        put(out, at, &self.step_time.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.nsteps = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.step_length = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.step_time = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_walking_msgsWalkStepsRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 20 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 20 {
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
/// Complete bounded value for ROS1 pal_walking_msgs/WalkStepsResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_walking_msgsWalkStepsResponse {}
impl Default for Ros1Pal_walking_msgsWalkStepsResponse {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Pal_walking_msgsWalkStepsResponse {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_69cf3d1ffea1bbf362863bbaf88af9177ab0324312b2549fb248d3fa21a9522f";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if n > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {}
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        Ok(value)
    }
}
impl Canonical for Ros1Pal_walking_msgsWalkStepsResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 0 {
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
/// Complete bounded value for ROS1 pal_walking_msgs/WalkingStatus.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_walking_msgsWalkingStatus {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros1Std_msgsHeader,
    /// Declared hip_reference_pose; canonical bounds are part of CODEC_IDENTITY.
    pub hip_reference_pose: Ros1Geometry_msgsPose,
    /// Declared foot_reference_pose; canonical bounds are part of CODEC_IDENTITY.
    pub foot_reference_pose: [Ros1Geometry_msgsPose; 2],
    /// Declared zmp_reference; canonical bounds are part of CODEC_IDENTITY.
    pub zmp_reference: Ros1Geometry_msgsPoint,
}
impl Default for Ros1Pal_walking_msgsWalkingStatus {
    fn default() -> Self {
        Self {
            header: Default::default(),
            hip_reference_pose: Default::default(),
            foot_reference_pose: core::array::from_fn(|_| Default::default()),
            zmp_reference: Default::default(),
        }
    }
}
impl Ros1Pal_walking_msgsWalkingStatus {
    pub const MAX_WIRE_BYTES: usize = 336;
    pub const CARTESIAN_WIRE_BYTES: u64 = 336;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_8831e9c68eeb3e065e2986f7671b2925425e07b18a48228e977f984fb9c09e02";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        n = add_size(n, self.hip_reference_pose.wire_size()?)?;
        for element in &self.foot_reference_pose {
            n = add_size(n, element.wire_size()?)?;
        }
        n = add_size(n, self.zmp_reference.wire_size()?)?;
        if n > 336 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.header.write_fields(out, at);
        self.hip_reference_pose.write_fields(out, at);
        for element in &self.foot_reference_pose {
            element.write_fields(out, at);
        }
        self.zmp_reference.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Std_msgsHeader::read_fields(bytes, at)?;
        value.header = decoded;
        let decoded = Ros1Geometry_msgsPose::read_fields(bytes, at)?;
        value.hip_reference_pose = decoded;
        {
            let count = 2usize;
            if count > 2 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded = Ros1Geometry_msgsPose::read_fields(bytes, at)?;
                value.foot_reference_pose[i] = decoded;
            }
        }
        let decoded = Ros1Geometry_msgsPoint::read_fields(bytes, at)?;
        value.zmp_reference = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_walking_msgsWalkingStatus {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 336 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 208 {
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
/// Complete bounded value for ROS1 std_msgs/Duration.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Std_msgsDuration {
    /// Declared data; canonical bounds are part of CODEC_IDENTITY.
    pub data: Ros1Duration,
}
impl Default for Ros1Std_msgsDuration {
    fn default() -> Self {
        Self {
            data: Default::default(),
        }
    }
}
impl Ros1Std_msgsDuration {
    pub const MAX_WIRE_BYTES: usize = 8;
    pub const CARTESIAN_WIRE_BYTES: u64 = 8;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_195444342590aabe87833226c1cce7cc900519e5b1fe13ff460406396e3ce175";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.data.wire_size()?)?;
        if n > 8 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.data.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Duration::read_fields(bytes, at)?;
        value.data = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Std_msgsDuration {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
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
/// Complete bounded value for ROS1 pal_walking_msgs/WalkingStep.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_walking_msgsWalkingStep {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros1Std_msgsHeader,
    /// Declared step_target; canonical bounds are part of CODEC_IDENTITY.
    pub step_target: Ros1Humanoid_nav_msgsStepTarget,
    /// Declared step_duration; canonical bounds are part of CODEC_IDENTITY.
    pub step_duration: Ros1Std_msgsDuration,
    /// Declared step_list_size; canonical bounds are part of CODEC_IDENTITY.
    pub step_list_size: i32,
}
impl Default for Ros1Pal_walking_msgsWalkingStep {
    fn default() -> Self {
        Self {
            header: Default::default(),
            step_target: Default::default(),
            step_duration: Default::default(),
            step_list_size: Default::default(),
        }
    }
}
impl Ros1Pal_walking_msgsWalkingStep {
    pub const MAX_WIRE_BYTES: usize = 181;
    pub const CARTESIAN_WIRE_BYTES: u64 = 181;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_b6bacf08a7ff7277b0c96730c5b2691540af208dd61f2662990253ba4d1925dd";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        n = add_size(n, self.step_target.wire_size()?)?;
        n = add_size(n, self.step_duration.wire_size()?)?;
        n = add_size(n, 4)?;
        if n > 181 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.header.write_fields(out, at);
        self.step_target.write_fields(out, at);
        self.step_duration.write_fields(out, at);
        put(out, at, &self.step_list_size.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Std_msgsHeader::read_fields(bytes, at)?;
        value.header = decoded;
        let decoded = Ros1Humanoid_nav_msgsStepTarget::read_fields(bytes, at)?;
        value.step_target = decoded;
        let decoded = Ros1Std_msgsDuration::read_fields(bytes, at)?;
        value.step_duration = decoded;
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.step_list_size = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_walking_msgsWalkingStep {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 181 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 53 {
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
/// Complete bounded value for ROS1 pal_web_msgs/WebGoTo.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_web_msgsWebGoTo {
    /// Declared type; canonical bounds are part of CODEC_IDENTITY.
    pub r#type: u8,
    /// Declared value; canonical bounds are part of CODEC_IDENTITY.
    pub value: String,
}
impl Default for Ros1Pal_web_msgsWebGoTo {
    fn default() -> Self {
        Self {
            r#type: Default::default(),
            value: Default::default(),
        }
    }
}
impl Ros1Pal_web_msgsWebGoTo {
    pub const MAX_WIRE_BYTES: usize = 133;
    pub const CARTESIAN_WIRE_BYTES: u64 = 133;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_19f21af491edb41e15ccb284a67005ef6ed2209b873dd94e5241206f4d2471a5";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if self.value.len() > 128 || self.value.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.value.len())?;
        if n > 133 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.r#type.to_le_bytes());
        put(out, at, &(self.value.len() as u32).to_le_bytes());
        put(out, at, self.value.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.r#type = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.value = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_web_msgsWebGoTo {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 133 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 5 {
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
/// Complete bounded value for ROS1 pal_web_msgs/GetUserInputGoal.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_web_msgsGetUserInputGoal {
    /// Declared web_go_to; canonical bounds are part of CODEC_IDENTITY.
    pub web_go_to: Ros1Pal_web_msgsWebGoTo,
    /// Declared question_tts; canonical bounds are part of CODEC_IDENTITY.
    pub question_tts: Ros1Pal_interaction_msgsTtsGoal,
    /// Declared valid_asr_inputs; canonical bounds are part of CODEC_IDENTITY.
    pub valid_asr_inputs: Vec<String>,
    /// Declared asr_language; canonical bounds are part of CODEC_IDENTITY.
    pub asr_language: String,
    /// Declared asr_timeout; canonical bounds are part of CODEC_IDENTITY.
    pub asr_timeout: Ros1Duration,
    /// Declared retry_asr; canonical bounds are part of CODEC_IDENTITY.
    pub retry_asr: bool,
    /// Declared retry_tts; canonical bounds are part of CODEC_IDENTITY.
    pub retry_tts: Ros1Pal_interaction_msgsTtsGoal,
    /// Declared wait_for_interaction; canonical bounds are part of CODEC_IDENTITY.
    pub wait_for_interaction: bool,
}
impl Default for Ros1Pal_web_msgsGetUserInputGoal {
    fn default() -> Self {
        Self {
            web_go_to: Default::default(),
            question_tts: Default::default(),
            valid_asr_inputs: Default::default(),
            asr_language: Default::default(),
            asr_timeout: Default::default(),
            retry_asr: Default::default(),
            retry_tts: Default::default(),
            wait_for_interaction: Default::default(),
        }
    }
}
impl Ros1Pal_web_msgsGetUserInputGoal {
    pub const MAX_WIRE_BYTES: usize = 7167;
    pub const CARTESIAN_WIRE_BYTES: u64 = 7167;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_d170bc8de6aad94561016ef3c075df8c1f528911d42ac2eb9d22885db2533b3e";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.web_go_to.wire_size()?)?;
        n = add_size(n, self.question_tts.wire_size()?)?;
        if self.valid_asr_inputs.len() > 16 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.valid_asr_inputs {
            if element.len() > 128 || element.as_bytes().contains(&0) {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
            n = add_size(n, element.len())?;
        }
        if self.asr_language.len() > 128 || self.asr_language.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.asr_language.len())?;
        n = add_size(n, self.asr_timeout.wire_size()?)?;
        n = add_size(n, 1)?;
        n = add_size(n, self.retry_tts.wire_size()?)?;
        n = add_size(n, 1)?;
        if n > 7167 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.web_go_to.write_fields(out, at);
        self.question_tts.write_fields(out, at);
        put(out, at, &(self.valid_asr_inputs.len() as u32).to_le_bytes());
        for element in &self.valid_asr_inputs {
            put(out, at, &(element.len() as u32).to_le_bytes());
            put(out, at, element.as_bytes());
        }
        put(out, at, &(self.asr_language.len() as u32).to_le_bytes());
        put(out, at, self.asr_language.as_bytes());
        self.asr_timeout.write_fields(out, at);
        put(out, at, &[u8::from(self.retry_asr)]);
        self.retry_tts.write_fields(out, at);
        put(out, at, &[u8::from(self.wait_for_interaction)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Pal_web_msgsWebGoTo::read_fields(bytes, at)?;
        value.web_go_to = decoded;
        let decoded = Ros1Pal_interaction_msgsTtsGoal::read_fields(bytes, at)?;
        value.question_tts = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 16 {
                return Err(invalid());
            }
            value.valid_asr_inputs = Vec::with_capacity(count);
            for i in 0..count {
                let size = read_count(bytes, at)?;
                if size > 128 {
                    return Err(invalid());
                }
                let raw = take(bytes, at, size)?;
                if raw.contains(&0) {
                    return Err(invalid());
                }
                let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
                value.valid_asr_inputs.push(decoded);
            }
        }
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.asr_language = decoded;
        let decoded = Ros1Duration::read_fields(bytes, at)?;
        value.asr_timeout = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.retry_asr = decoded;
        let decoded = Ros1Pal_interaction_msgsTtsGoal::read_fields(bytes, at)?;
        value.retry_tts = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.wait_for_interaction = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_web_msgsGetUserInputGoal {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 7167 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 95 {
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
/// Complete bounded value for ROS1 pal_web_msgs/GetUserInputResult.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_web_msgsGetUserInputResult {
    /// Declared input; canonical bounds are part of CODEC_IDENTITY.
    pub input: Ros1Pal_interaction_msgsInput,
}
impl Default for Ros1Pal_web_msgsGetUserInputResult {
    fn default() -> Self {
        Self {
            input: Default::default(),
        }
    }
}
impl Ros1Pal_web_msgsGetUserInputResult {
    pub const MAX_WIRE_BYTES: usize = 1192;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1192;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_95e443de95ce17d423ad14004609c743ed1ff0bea7f69921384dd499ba9ba778";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.input.wire_size()?)?;
        if n > 1192 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.input.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Pal_interaction_msgsInput::read_fields(bytes, at)?;
        value.input = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_web_msgsGetUserInputResult {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 1192 {
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
/// Complete bounded value for ROS1 pal_web_msgs/GetUserInputFeedback.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_web_msgsGetUserInputFeedback {}
impl Default for Ros1Pal_web_msgsGetUserInputFeedback {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Pal_web_msgsGetUserInputFeedback {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_cc9395e24ce3a8ae3aa198453ac066da1bcb5f90a5883cc4c7dc6a6a52675395";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if n > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {}
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        Ok(value)
    }
}
impl Canonical for Ros1Pal_web_msgsGetUserInputFeedback {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 0 {
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
/// Complete bounded value for ROS1 pal_wifi_localization_msgs/GetWifiMapRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_wifi_localization_msgsGetWifiMapRequest {}
impl Default for Ros1Pal_wifi_localization_msgsGetWifiMapRequest {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Pal_wifi_localization_msgsGetWifiMapRequest {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_91f308677881cbf1a91911f58602b59adabc3935db966392d28ad81acd70d832";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if n > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {}
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        Ok(value)
    }
}
impl Canonical for Ros1Pal_wifi_localization_msgsGetWifiMapRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 0 {
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
/// Complete bounded value for ROS1 pal_wifi_localization_msgs/WifiSignal.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_wifi_localization_msgsWifiSignal {
    /// Declared id; canonical bounds are part of CODEC_IDENTITY.
    pub id: Ros1Std_msgsString,
    /// Declared mean; canonical bounds are part of CODEC_IDENTITY.
    pub mean: f32,
    /// Declared std_dev; canonical bounds are part of CODEC_IDENTITY.
    pub std_dev: f32,
}
impl Default for Ros1Pal_wifi_localization_msgsWifiSignal {
    fn default() -> Self {
        Self {
            id: Default::default(),
            mean: Default::default(),
            std_dev: Default::default(),
        }
    }
}
impl Ros1Pal_wifi_localization_msgsWifiSignal {
    pub const MAX_WIRE_BYTES: usize = 140;
    pub const CARTESIAN_WIRE_BYTES: u64 = 140;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_f2397d50da735cc25a1392f79d7dca7e1a4bf2837e5981cb987bdfbb0dcebf71";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.id.wire_size()?)?;
        if !self.mean.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.std_dev.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if n > 140 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.id.write_fields(out, at);
        put(out, at, &self.mean.to_le_bytes());
        put(out, at, &self.std_dev.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Std_msgsString::read_fields(bytes, at)?;
        value.id = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.mean = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.std_dev = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_wifi_localization_msgsWifiSignal {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 140 {
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
/// Complete bounded value for ROS1 pal_wifi_localization_msgs/WifiSignalList.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_wifi_localization_msgsWifiSignalList {
    /// Declared networks; canonical bounds are part of CODEC_IDENTITY.
    pub networks: Vec<Ros1Pal_wifi_localization_msgsWifiSignal>,
    /// Declared start_time; canonical bounds are part of CODEC_IDENTITY.
    pub start_time: Ros1Time,
    /// Declared end_time; canonical bounds are part of CODEC_IDENTITY.
    pub end_time: Ros1Time,
}
impl Default for Ros1Pal_wifi_localization_msgsWifiSignalList {
    fn default() -> Self {
        Self {
            networks: Default::default(),
            start_time: Default::default(),
            end_time: Default::default(),
        }
    }
}
impl Ros1Pal_wifi_localization_msgsWifiSignalList {
    pub const MAX_WIRE_BYTES: usize = 580;
    pub const CARTESIAN_WIRE_BYTES: u64 = 580;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_9a15f8c545d1fb461b8b4d42c31fe7803392a5277c9ee0377aa9b79888ae64fc";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.networks.len() > 4 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.networks {
            n = add_size(n, element.wire_size()?)?;
        }
        n = add_size(n, self.start_time.wire_size()?)?;
        n = add_size(n, self.end_time.wire_size()?)?;
        if n > 580 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.networks.len() as u32).to_le_bytes());
        for element in &self.networks {
            element.write_fields(out, at);
        }
        self.start_time.write_fields(out, at);
        self.end_time.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = read_count(bytes, at)?;
            if count > 4 {
                return Err(invalid());
            }
            value.networks = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros1Pal_wifi_localization_msgsWifiSignal::read_fields(bytes, at)?;
                value.networks.push(decoded);
            }
        }
        let decoded = Ros1Time::read_fields(bytes, at)?;
        value.start_time = decoded;
        let decoded = Ros1Time::read_fields(bytes, at)?;
        value.end_time = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_wifi_localization_msgsWifiSignalList {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 580 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 20 {
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
/// Complete bounded value for ROS1 pal_wifi_localization_msgs/WifiSignalMap.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_wifi_localization_msgsWifiSignalMap {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros1Std_msgsHeader,
    /// Declared info; canonical bounds are part of CODEC_IDENTITY.
    pub info: Ros1Nav_msgsMapMetaData,
    /// Declared sectors; canonical bounds are part of CODEC_IDENTITY.
    pub sectors: u32,
    /// Declared data; canonical bounds are part of CODEC_IDENTITY.
    pub data: Vec<Ros1Pal_wifi_localization_msgsWifiSignalList>,
}
impl Default for Ros1Pal_wifi_localization_msgsWifiSignalMap {
    fn default() -> Self {
        Self {
            header: Default::default(),
            info: Default::default(),
            sectors: Default::default(),
            data: Default::default(),
        }
    }
}
impl Ros1Pal_wifi_localization_msgsWifiSignalMap {
    pub const MAX_WIRE_BYTES: usize = 2548;
    pub const CARTESIAN_WIRE_BYTES: u64 = 2548;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_948926ffa19fd58fabf24b61ae0d2334e09b3815358f79b521dd3b84fe231a3e";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        n = add_size(n, self.info.wire_size()?)?;
        n = add_size(n, 4)?;
        if self.data.len() > 4 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.data {
            n = add_size(n, element.wire_size()?)?;
        }
        if n > 2548 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.header.write_fields(out, at);
        self.info.write_fields(out, at);
        put(out, at, &self.sectors.to_le_bytes());
        put(out, at, &(self.data.len() as u32).to_le_bytes());
        for element in &self.data {
            element.write_fields(out, at);
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Std_msgsHeader::read_fields(bytes, at)?;
        value.header = decoded;
        let decoded = Ros1Nav_msgsMapMetaData::read_fields(bytes, at)?;
        value.info = decoded;
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.sectors = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 4 {
                return Err(invalid());
            }
            value.data = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros1Pal_wifi_localization_msgsWifiSignalList::read_fields(bytes, at)?;
                value.data.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros1Pal_wifi_localization_msgsWifiSignalMap {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 2548 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 100 {
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
/// Complete bounded value for ROS1 pal_wifi_localization_msgs/GetWifiMapResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Pal_wifi_localization_msgsGetWifiMapResponse {
    /// Declared map; canonical bounds are part of CODEC_IDENTITY.
    pub map: Ros1Pal_wifi_localization_msgsWifiSignalMap,
}
impl Default for Ros1Pal_wifi_localization_msgsGetWifiMapResponse {
    fn default() -> Self {
        Self {
            map: Default::default(),
        }
    }
}
impl Ros1Pal_wifi_localization_msgsGetWifiMapResponse {
    pub const MAX_WIRE_BYTES: usize = 2548;
    pub const CARTESIAN_WIRE_BYTES: u64 = 2548;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_576278a043277d7621c6fc90fbbf583a0ad0ef9d7704fb8b5cca8b1b86c7bcb3";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.map.wire_size()?)?;
        if n > 2548 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.map.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Pal_wifi_localization_msgsWifiSignalMap::read_fields(bytes, at)?;
        value.map = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Pal_wifi_localization_msgsGetWifiMapResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 2548 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 100 {
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

impl Ros1Humanoid_nav_msgsStepTarget {
    pub const right: u8 = 0;
    pub const left: u8 = 1;
}

impl Ros1Pal_detection_msgsFaceDetection {
    pub const EXPRESSION_NEUTRAL: &'static str = "neutral";
    pub const EXPRESSION_SMILE: &'static str = "smile";
    pub const EXPRESSION_RAISED_BROWS: &'static str = "raised brows";
    pub const EXPRESSION_EYES_AWAY: &'static str = "eyes away";
    pub const EXPRESSION_SQUINTING: &'static str = "squinting";
    pub const EXPRESSION_FROWNING: &'static str = "frowning";
}

impl Ros1Pal_interaction_msgsASRActivation {
    pub const ACTIVATE: i8 = 1;
    pub const DEACTIVATE: i8 = 2;
    pub const PAUSE: i8 = 3;
    pub const RESUME: i8 = 4;
    pub const CALIBRATE: i8 = 5;
}

impl Ros1Pal_interaction_msgsAsrresult {
    pub const CONFIDENCE_UNDEFINED: i8 = -1;
    pub const CONFIDENCE_POOR: i8 = 1;
    pub const CONFIDENCE_LOW: i8 = 2;
    pub const CONFIDENCE_GOOD: i8 = 3;
    pub const CONFIDENCE_MAX: i8 = 4;
}

impl Ros1Pal_interaction_msgsASREvent {
    pub const EVENT_UNDEFINED: i8 = -1;
    pub const EVENT_LISTEN_STATE: i8 = 1;
    pub const EVENT_RECOGNIZED_UTT: i8 = 2;
    pub const EVENT_ASR_ACTIVATION: i8 = 3;
    pub const EVENT_FAILED_DECODING: i8 = 4;
    pub const LISTEN_UNDEFINED: i8 = 20;
    pub const LISTEN_CALIBRATION: i8 = 21;
    pub const LISTEN_WAITING_FOR_SPEECH: i8 = 22;
    pub const LISTEN_SPEECH_DETECTED: i8 = 23;
    pub const LISTEN_END_OF_SPEECH: i8 = 24;
}

impl Ros1Pal_interaction_msgsASRLangModelMngmt {
    pub const ENABLE: i8 = 1;
    pub const DISABLE: i8 = 2;
    pub const LOAD: i8 = 3;
    pub const UNLOAD: i8 = 4;
}

impl Ros1Pal_interaction_msgsASRSrvRequest {
    pub const ACTIVATION: i8 = 1;
    pub const GRAMMAR: i8 = 2;
    pub const LANGUAGE: i8 = 3;
    pub const STATUS: i8 = 4;
    pub const KWSPOTTING: i8 = 5;
}

impl Ros1Pal_interaction_msgsAudioDeviceDescription {
    pub const SIGNED: i8 = 0;
    pub const UNSIGNED: i8 = 1;
}

impl Ros1Pal_interaction_msgsInput {
    pub const INPUT_ACCEPT: &'static str = "INPUT_ACCEPT";
    pub const INPUT_REJECT: &'static str = "INPUT_REJECT";
    pub const INPUT_CANCEL: &'static str = "INPUT_CANCEL";
    pub const OK: &'static str = "ok";
    pub const YES: &'static str = "yes";
    pub const NO: &'static str = "no";
    pub const CANCEL: &'static str = "cancel";
    pub const ABORT: &'static str = "abort";
}

impl Ros1Pal_interaction_msgsTtsFeedback {
    pub const TTS_EVENT_INITIALIZATION: u16 = 1;
    pub const TTS_EVENT_SHUTDOWN: u16 = 2;
    pub const TTS_EVENT_SYNCHRONIZATION: u16 = 4;
    pub const TTS_EVENT_FINISHED_PLAYING_UTTERANCE: u16 = 8;
    pub const TTS_EVENT_MARK: u16 = 16;
    pub const TTS_EVENT_STARTED_PLAYING_WORD: u16 = 32;
    pub const TTS_EVENT_FINISHED_PLAYING_PHRASE: u16 = 64;
    pub const TTS_EVENT_FINISHED_PLAYING_SENTENCE: u16 = 128;
    pub const TTS_EVENT_VISEME: u16 = 256;
}

impl Ros1Pal_navigation_msgsSafetyZoneRequest {
    pub const NO_SENSORS: i8 = 0;
    pub const ALL_SENSORS: i8 = 127;
    pub const FRONT_SONARS: i8 = 1;
    pub const LEFT_SONARS: i8 = 2;
    pub const RIGHT_SONARS: i8 = 4;
    pub const BACK_SONARS: i8 = 8;
    pub const TORSO_SONARS: i8 = 16;
    pub const ONLY_SONARS: i8 = 31;
    pub const BASE_LASER: i8 = 32;
    pub const TORSO_LASER: i8 = 64;
    pub const ONLY_LASERS: i8 = 96;
}

impl Ros1Pal_navigation_msgsVisualTrainingGoal {
    pub const ACTION_TRAIN: u8 = 0;
}

impl Ros1Pal_walking_msgsContactState {
    pub const TYPE_DS: u8 = 0;
    pub const TYPE_LSS: u8 = 1;
    pub const TYPE_RSS: u8 = 2;
}

impl Ros1Pal_walking_msgsSMStatus {
    pub const right: u8 = 1;
    pub const left: u8 = 0;
}

impl Ros1Pal_web_msgsWebGoTo {
    pub const IMAGE: u8 = 0;
    pub const VIDEO: u8 = 1;
    pub const URI: u8 = 2;
    pub const URL: u8 = 3;
    pub const TOUCH_PAGE: u8 = 4;
}
