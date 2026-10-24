// @file bounded_records.rs
// @brief Full agibot rs codecs and original record metadata.
// @details Complete agibot ros2_sdk_v1_1_0_rl values in rs. 19 original records retain 71 fields and 19 interface
// descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native definitions.
// Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the profile API
// manual under document/platform/agibot/en_US/catalog/.
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
/// Complete bounded value for ROS2 builtin_interfaces/msg/Time.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Builtin_interfacesMsgTime {
    /// Declared sec; canonical bounds are part of CODEC_IDENTITY.
    pub sec: i32,
    /// Declared nanosec; canonical bounds are part of CODEC_IDENTITY.
    pub nanosec: u32,
}
impl Default for Ros2Builtin_interfacesMsgTime {
    fn default() -> Self {
        Self {
            sec: Default::default(),
            nanosec: Default::default(),
        }
    }
}
impl Ros2Builtin_interfacesMsgTime {
    pub const MAX_WIRE_BYTES: usize = 8;
    pub const CARTESIAN_WIRE_BYTES: u64 = 8;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7";
    /// Validate all fields and measure only their initialized canonical prefix.
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
    /// Encode after complete validation; output remains unchanged on refusal.
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
        put(out, at, &self.nanosec.to_le_bytes());
    }
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
/// Complete bounded value for ROS2 aimdk_msgs/msg/RequestHeader.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsMsgRequestHeader {
    /// Declared stamp; canonical bounds are part of CODEC_IDENTITY.
    pub stamp: Ros2Builtin_interfacesMsgTime,
}
impl Default for Ros2Aimdk_msgsMsgRequestHeader {
    fn default() -> Self {
        Self {
            stamp: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsMsgRequestHeader {
    pub const MAX_WIRE_BYTES: usize = 8;
    pub const CARTESIAN_WIRE_BYTES: u64 = 8;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_743efde912144cd1db5072b5a1d26b943c3fb882612b07c1883400784947b000";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.stamp.wire_size()?)?;
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
        self.stamp.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Builtin_interfacesMsgTime::read_fields(bytes, at)?;
        value.stamp = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Aimdk_msgsMsgRequestHeader {
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
/// Complete bounded value for ROS2 aimdk_msgs/msg/CommonRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsMsgCommonRequest {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros2Aimdk_msgsMsgRequestHeader,
}
impl Default for Ros2Aimdk_msgsMsgCommonRequest {
    fn default() -> Self {
        Self {
            header: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsMsgCommonRequest {
    pub const MAX_WIRE_BYTES: usize = 8;
    pub const CARTESIAN_WIRE_BYTES: u64 = 8;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_d4dd21dc3b43faa42396e4c4aa0f1ad35a507b6bd313f5d197268e79d67dd9d7";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
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
        self.header.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Aimdk_msgsMsgRequestHeader::read_fields(bytes, at)?;
        value.header = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Aimdk_msgsMsgCommonRequest {
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
/// Complete bounded value for ROS2 aimdk_msgs/msg/ResponseHeader.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsMsgResponseHeader {
    /// Declared stamp; canonical bounds are part of CODEC_IDENTITY.
    pub stamp: Ros2Builtin_interfacesMsgTime,
    /// Declared code; canonical bounds are part of CODEC_IDENTITY.
    pub code: i64,
}
impl Default for Ros2Aimdk_msgsMsgResponseHeader {
    fn default() -> Self {
        Self {
            stamp: Default::default(),
            code: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsMsgResponseHeader {
    pub const MAX_WIRE_BYTES: usize = 16;
    pub const CARTESIAN_WIRE_BYTES: u64 = 16;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_1aff5b9cfbca54f9091a6295e28034b45d22481e0dbd8a75b1759cda18b57b90";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.stamp.wire_size()?)?;
        n = add_size(n, 8)?;
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
        self.stamp.write_fields(out, at);
        put(out, at, &self.code.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Builtin_interfacesMsgTime::read_fields(bytes, at)?;
        value.stamp = decoded;
        let decoded = i64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        value.code = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Aimdk_msgsMsgResponseHeader {
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
/// Complete bounded value for ROS2 aimdk_msgs/msg/CommonState.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsMsgCommonState {
    /// Declared value; canonical bounds are part of CODEC_IDENTITY.
    pub value: i32,
}
impl Default for Ros2Aimdk_msgsMsgCommonState {
    fn default() -> Self {
        Self {
            value: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsMsgCommonState {
    pub const MAX_WIRE_BYTES: usize = 4;
    pub const CARTESIAN_WIRE_BYTES: u64 = 4;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_263f2829cf13b7b12ceda8109834fa333d2da5828cd7a302a1818c044be4699e";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
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
        put(out, at, &self.value.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.value = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Aimdk_msgsMsgCommonState {
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
/// Complete bounded value for ROS2 aimdk_msgs/msg/CommonResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsMsgCommonResponse {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros2Aimdk_msgsMsgResponseHeader,
    /// Declared status; canonical bounds are part of CODEC_IDENTITY.
    pub status: Ros2Aimdk_msgsMsgCommonState,
    /// Declared message; canonical bounds are part of CODEC_IDENTITY.
    pub message: String,
}
impl Default for Ros2Aimdk_msgsMsgCommonResponse {
    fn default() -> Self {
        Self {
            header: Default::default(),
            status: Default::default(),
            message: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsMsgCommonResponse {
    pub const MAX_WIRE_BYTES: usize = 152;
    pub const CARTESIAN_WIRE_BYTES: u64 = 152;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_03f4cf42f82eef5064c9b0563dcfe07bb9e918e8a8d81e71c4d89490bf66afb6";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        n = add_size(n, self.status.wire_size()?)?;
        if self.message.len() > 128 || self.message.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.message.len())?;
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
        self.status.write_fields(out, at);
        put(out, at, &(self.message.len() as u32).to_le_bytes());
        put(out, at, self.message.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Aimdk_msgsMsgResponseHeader::read_fields(bytes, at)?;
        value.header = decoded;
        let decoded = Ros2Aimdk_msgsMsgCommonState::read_fields(bytes, at)?;
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
        value.message = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Aimdk_msgsMsgCommonResponse {
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
/// Complete bounded value for ROS2 aimdk_msgs/msg/CommonTaskResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsMsgCommonTaskResponse {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros2Aimdk_msgsMsgResponseHeader,
    /// Declared task_id; canonical bounds are part of CODEC_IDENTITY.
    pub task_id: u64,
    /// Declared state; canonical bounds are part of CODEC_IDENTITY.
    pub state: Ros2Aimdk_msgsMsgCommonState,
}
impl Default for Ros2Aimdk_msgsMsgCommonTaskResponse {
    fn default() -> Self {
        Self {
            header: Default::default(),
            task_id: Default::default(),
            state: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsMsgCommonTaskResponse {
    pub const MAX_WIRE_BYTES: usize = 28;
    pub const CARTESIAN_WIRE_BYTES: u64 = 28;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_6e0f13b88f5320fecc86125c92ef073379d31a439c1b8de3a87466c98f1b9ae2";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        n = add_size(n, 8)?;
        n = add_size(n, self.state.wire_size()?)?;
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
        self.header.write_fields(out, at);
        put(out, at, &self.task_id.to_le_bytes());
        self.state.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Aimdk_msgsMsgResponseHeader::read_fields(bytes, at)?;
        value.header = decoded;
        let decoded = u64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        value.task_id = decoded;
        let decoded = Ros2Aimdk_msgsMsgCommonState::read_fields(bytes, at)?;
        value.state = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Aimdk_msgsMsgCommonTaskResponse {
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
/// Complete bounded value for ROS2 aimdk_msgs/msg/DomainErrorState.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsMsgDomainErrorState {
    /// Declared value; canonical bounds are part of CODEC_IDENTITY.
    pub value: u8,
}
impl Default for Ros2Aimdk_msgsMsgDomainErrorState {
    fn default() -> Self {
        Self {
            value: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsMsgDomainErrorState {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_b8ba44e26d3df3c4c71f1ca9d4e91e967c8d8e1d95042ac7433a9a3294e9e231";
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
        put(out, at, &self.value.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.value = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Aimdk_msgsMsgDomainErrorState {
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
/// Complete bounded value for ROS2 aimdk_msgs/msg/JointCommand.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsMsgJointCommand {
    /// Declared name; canonical bounds are part of CODEC_IDENTITY.
    pub name: String,
    /// Declared position; canonical bounds are part of CODEC_IDENTITY.
    pub position: f64,
    /// Declared velocity; canonical bounds are part of CODEC_IDENTITY.
    pub velocity: f64,
    /// Declared effort; canonical bounds are part of CODEC_IDENTITY.
    pub effort: f64,
    /// Declared stiffness; canonical bounds are part of CODEC_IDENTITY.
    pub stiffness: f64,
    /// Declared damping; canonical bounds are part of CODEC_IDENTITY.
    pub damping: f64,
}
impl Default for Ros2Aimdk_msgsMsgJointCommand {
    fn default() -> Self {
        Self {
            name: Default::default(),
            position: Default::default(),
            velocity: Default::default(),
            effort: Default::default(),
            stiffness: Default::default(),
            damping: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsMsgJointCommand {
    pub const MAX_WIRE_BYTES: usize = 172;
    pub const CARTESIAN_WIRE_BYTES: u64 = 172;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_32c4e24dc7ea567136fc811efc68eea5b8d1072a5ed58e1c4b67b4d705a9fc3f";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.name.len() > 128 || self.name.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.name.len())?;
        if !self.position.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.velocity.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.effort.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.stiffness.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.damping.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if n > 172 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
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
        put(out, at, &self.position.to_le_bytes());
        put(out, at, &self.velocity.to_le_bytes());
        put(out, at, &self.effort.to_le_bytes());
        put(out, at, &self.stiffness.to_le_bytes());
        put(out, at, &self.damping.to_le_bytes());
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
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.position = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.velocity = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.effort = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.stiffness = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.damping = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Aimdk_msgsMsgJointCommand {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 172 {
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
/// Complete bounded value for ROS2 aimdk_msgs/msg/MessageHeader.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsMsgMessageHeader {
    /// Declared stamp; canonical bounds are part of CODEC_IDENTITY.
    pub stamp: Ros2Builtin_interfacesMsgTime,
    /// Declared frame_id; canonical bounds are part of CODEC_IDENTITY.
    pub frame_id: String,
    /// Declared sequence; canonical bounds are part of CODEC_IDENTITY.
    pub sequence: u32,
    /// Declared meas_stamp; canonical bounds are part of CODEC_IDENTITY.
    pub meas_stamp: Ros2Builtin_interfacesMsgTime,
}
impl Default for Ros2Aimdk_msgsMsgMessageHeader {
    fn default() -> Self {
        Self {
            stamp: Default::default(),
            frame_id: Default::default(),
            sequence: Default::default(),
            meas_stamp: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsMsgMessageHeader {
    pub const MAX_WIRE_BYTES: usize = 152;
    pub const CARTESIAN_WIRE_BYTES: u64 = 152;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_6d8d9a27611d419d618f848c44ebe2c30d5393995d1f4fa7ecd70c34ded52496";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.stamp.wire_size()?)?;
        if self.frame_id.len() > 128 || self.frame_id.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.frame_id.len())?;
        n = add_size(n, 4)?;
        n = add_size(n, self.meas_stamp.wire_size()?)?;
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
        self.stamp.write_fields(out, at);
        put(out, at, &(self.frame_id.len() as u32).to_le_bytes());
        put(out, at, self.frame_id.as_bytes());
        put(out, at, &self.sequence.to_le_bytes());
        self.meas_stamp.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Builtin_interfacesMsgTime::read_fields(bytes, at)?;
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
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.sequence = decoded;
        let decoded = Ros2Builtin_interfacesMsgTime::read_fields(bytes, at)?;
        value.meas_stamp = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Aimdk_msgsMsgMessageHeader {
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
/// Complete bounded value for ROS2 aimdk_msgs/msg/JointCommandArray.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsMsgJointCommandArray {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros2Aimdk_msgsMsgMessageHeader,
    /// Declared joints; canonical bounds are part of CODEC_IDENTITY.
    pub joints: Vec<Ros2Aimdk_msgsMsgJointCommand>,
}
impl Default for Ros2Aimdk_msgsMsgJointCommandArray {
    fn default() -> Self {
        Self {
            header: Default::default(),
            joints: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsMsgJointCommandArray {
    pub const MAX_WIRE_BYTES: usize = 11164;
    pub const CARTESIAN_WIRE_BYTES: u64 = 11164;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_b8f8d9b00f02524cfdd21f81d7e683290e92ba0b00d086d4506fd3600123d9d6";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        if self.joints.len() > 64 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.joints {
            n = add_size(n, element.wire_size()?)?;
        }
        if n > 11164 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
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
        put(out, at, &(self.joints.len() as u32).to_le_bytes());
        for element in &self.joints {
            element.write_fields(out, at);
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Aimdk_msgsMsgMessageHeader::read_fields(bytes, at)?;
        value.header = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 64 {
                return Err(invalid());
            }
            value.joints = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros2Aimdk_msgsMsgJointCommand::read_fields(bytes, at)?;
                value.joints.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Aimdk_msgsMsgJointCommandArray {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 11164 {
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
/// Complete bounded value for ROS2 aimdk_msgs/msg/JointState.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsMsgJointState {
    /// Declared name; canonical bounds are part of CODEC_IDENTITY.
    pub name: String,
    /// Declared position; canonical bounds are part of CODEC_IDENTITY.
    pub position: f64,
    /// Declared velocity; canonical bounds are part of CODEC_IDENTITY.
    pub velocity: f64,
    /// Declared effort; canonical bounds are part of CODEC_IDENTITY.
    pub effort: f64,
    /// Declared error_code; canonical bounds are part of CODEC_IDENTITY.
    pub error_code: u16,
}
impl Default for Ros2Aimdk_msgsMsgJointState {
    fn default() -> Self {
        Self {
            name: Default::default(),
            position: Default::default(),
            velocity: Default::default(),
            effort: Default::default(),
            error_code: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsMsgJointState {
    pub const MAX_WIRE_BYTES: usize = 158;
    pub const CARTESIAN_WIRE_BYTES: u64 = 158;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_00a7d9637f691d224a78c967343dd16161b29e12ca6f9fafadc0af5d7e405a53";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.name.len() > 128 || self.name.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.name.len())?;
        if !self.position.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.velocity.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.effort.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        n = add_size(n, 2)?;
        if n > 158 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
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
        put(out, at, &self.position.to_le_bytes());
        put(out, at, &self.velocity.to_le_bytes());
        put(out, at, &self.effort.to_le_bytes());
        put(out, at, &self.error_code.to_le_bytes());
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
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.position = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.velocity = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.effort = decoded;
        let decoded = u16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.error_code = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Aimdk_msgsMsgJointState {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 158 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 30 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS2 aimdk_msgs/msg/JointStateArray.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsMsgJointStateArray {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros2Aimdk_msgsMsgMessageHeader,
    /// Declared state; canonical bounds are part of CODEC_IDENTITY.
    pub state: Ros2Aimdk_msgsMsgDomainErrorState,
    /// Declared joints; canonical bounds are part of CODEC_IDENTITY.
    pub joints: Vec<Ros2Aimdk_msgsMsgJointState>,
}
impl Default for Ros2Aimdk_msgsMsgJointStateArray {
    fn default() -> Self {
        Self {
            header: Default::default(),
            state: Default::default(),
            joints: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsMsgJointStateArray {
    pub const MAX_WIRE_BYTES: usize = 10269;
    pub const CARTESIAN_WIRE_BYTES: u64 = 10269;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_4768076ae2f8c344f4030e7ca926d311e7706042187a2f9864a8a63f289f297e";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        n = add_size(n, self.state.wire_size()?)?;
        if self.joints.len() > 64 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.joints {
            n = add_size(n, element.wire_size()?)?;
        }
        if n > 10269 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
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
        self.state.write_fields(out, at);
        put(out, at, &(self.joints.len() as u32).to_le_bytes());
        for element in &self.joints {
            element.write_fields(out, at);
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Aimdk_msgsMsgMessageHeader::read_fields(bytes, at)?;
        value.header = decoded;
        let decoded = Ros2Aimdk_msgsMsgDomainErrorState::read_fields(bytes, at)?;
        value.state = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 64 {
                return Err(invalid());
            }
            value.joints = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros2Aimdk_msgsMsgJointState::read_fields(bytes, at)?;
                value.joints.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Aimdk_msgsMsgJointStateArray {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 10269 {
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
/// Complete bounded value for ROS2 aimdk_msgs/msg/ModuleChannelInfo.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsMsgModuleChannelInfo {
    /// Declared name; canonical bounds are part of CODEC_IDENTITY.
    pub name: String,
    /// Declared type; canonical bounds are part of CODEC_IDENTITY.
    pub r#type: String,
    /// Declared frequency; canonical bounds are part of CODEC_IDENTITY.
    pub frequency: f64,
    /// Declared min_time_diff; canonical bounds are part of CODEC_IDENTITY.
    pub min_time_diff: f64,
    /// Declared max_time_diff; canonical bounds are part of CODEC_IDENTITY.
    pub max_time_diff: f64,
    /// Declared std_dev; canonical bounds are part of CODEC_IDENTITY.
    pub std_dev: f64,
    /// Declared window_size; canonical bounds are part of CODEC_IDENTITY.
    pub window_size: i32,
    /// Declared timeout_threshold; canonical bounds are part of CODEC_IDENTITY.
    pub timeout_threshold: f64,
    /// Declared is_active; canonical bounds are part of CODEC_IDENTITY.
    pub is_active: bool,
    /// Declared is_timeout; canonical bounds are part of CODEC_IDENTITY.
    pub is_timeout: bool,
    /// Declared backends; canonical bounds are part of CODEC_IDENTITY.
    pub backends: Vec<String>,
}
impl Default for Ros2Aimdk_msgsMsgModuleChannelInfo {
    fn default() -> Self {
        Self {
            name: Default::default(),
            r#type: Default::default(),
            frequency: Default::default(),
            min_time_diff: Default::default(),
            max_time_diff: Default::default(),
            std_dev: Default::default(),
            window_size: Default::default(),
            timeout_threshold: Default::default(),
            is_active: Default::default(),
            is_timeout: Default::default(),
            backends: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsMsgModuleChannelInfo {
    pub const MAX_WIRE_BYTES: usize = 586;
    pub const CARTESIAN_WIRE_BYTES: u64 = 586;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_d6cfacaf7cd28f18d14ef270b868b354e896f937181c8d29279e1eac21990696";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.name.len() > 128 || self.name.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.name.len())?;
        if self.r#type.len() > 128 || self.r#type.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.r#type.len())?;
        if !self.frequency.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.min_time_diff.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.max_time_diff.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.std_dev.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        n = add_size(n, 4)?;
        if !self.timeout_threshold.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        if self.backends.len() > 4 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.backends {
            if element.len() > 64 || element.as_bytes().contains(&0) {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
            n = add_size(n, element.len())?;
        }
        if n > 586 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
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
        put(out, at, &(self.r#type.len() as u32).to_le_bytes());
        put(out, at, self.r#type.as_bytes());
        put(out, at, &self.frequency.to_le_bytes());
        put(out, at, &self.min_time_diff.to_le_bytes());
        put(out, at, &self.max_time_diff.to_le_bytes());
        put(out, at, &self.std_dev.to_le_bytes());
        put(out, at, &self.window_size.to_le_bytes());
        put(out, at, &self.timeout_threshold.to_le_bytes());
        put(out, at, &[u8::from(self.is_active)]);
        put(out, at, &[u8::from(self.is_timeout)]);
        put(out, at, &(self.backends.len() as u32).to_le_bytes());
        for element in &self.backends {
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
        value.r#type = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.frequency = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.min_time_diff = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.max_time_diff = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.std_dev = decoded;
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.window_size = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.timeout_threshold = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.is_active = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.is_timeout = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 4 {
                return Err(invalid());
            }
            value.backends = Vec::with_capacity(count);
            for i in 0..count {
                let size = read_count(bytes, at)?;
                if size > 64 {
                    return Err(invalid());
                }
                let raw = take(bytes, at, size)?;
                if raw.contains(&0) {
                    return Err(invalid());
                }
                let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
                value.backends.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Aimdk_msgsMsgModuleChannelInfo {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 586 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 58 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS2 aimdk_msgs/msg/ModuleRpcInfo.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsMsgModuleRpcInfo {
    /// Declared name; canonical bounds are part of CODEC_IDENTITY.
    pub name: String,
    /// Declared req_type; canonical bounds are part of CODEC_IDENTITY.
    pub req_type: String,
    /// Declared res_type; canonical bounds are part of CODEC_IDENTITY.
    pub res_type: String,
    /// Declared backends; canonical bounds are part of CODEC_IDENTITY.
    pub backends: Vec<String>,
}
impl Default for Ros2Aimdk_msgsMsgModuleRpcInfo {
    fn default() -> Self {
        Self {
            name: Default::default(),
            req_type: Default::default(),
            res_type: Default::default(),
            backends: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsMsgModuleRpcInfo {
    pub const MAX_WIRE_BYTES: usize = 672;
    pub const CARTESIAN_WIRE_BYTES: u64 = 672;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_e06e5cd98eaa4f17cebd95db53f6aa175cdc3682f3912f365947f8f8950d02d8";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.name.len() > 128 || self.name.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.name.len())?;
        if self.req_type.len() > 128 || self.req_type.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.req_type.len())?;
        if self.res_type.len() > 128 || self.res_type.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.res_type.len())?;
        if self.backends.len() > 4 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.backends {
            if element.len() > 64 || element.as_bytes().contains(&0) {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
            n = add_size(n, element.len())?;
        }
        if n > 672 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
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
        put(out, at, &(self.req_type.len() as u32).to_le_bytes());
        put(out, at, self.req_type.as_bytes());
        put(out, at, &(self.res_type.len() as u32).to_le_bytes());
        put(out, at, self.res_type.as_bytes());
        put(out, at, &(self.backends.len() as u32).to_le_bytes());
        for element in &self.backends {
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
        value.req_type = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.res_type = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 4 {
                return Err(invalid());
            }
            value.backends = Vec::with_capacity(count);
            for i in 0..count {
                let size = read_count(bytes, at)?;
                if size > 64 {
                    return Err(invalid());
                }
                let raw = take(bytes, at, size)?;
                if raw.contains(&0) {
                    return Err(invalid());
                }
                let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
                value.backends.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Aimdk_msgsMsgModuleRpcInfo {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 672 {
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
/// Complete bounded value for ROS2 aimdk_msgs/msg/ModuleResourceInfo.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsMsgModuleResourceInfo {
    /// Declared module_name; canonical bounds are part of CODEC_IDENTITY.
    pub module_name: String,
    /// Declared rpc_clients; canonical bounds are part of CODEC_IDENTITY.
    pub rpc_clients: Vec<Ros2Aimdk_msgsMsgModuleRpcInfo>,
    /// Declared rpc_services; canonical bounds are part of CODEC_IDENTITY.
    pub rpc_services: Vec<Ros2Aimdk_msgsMsgModuleRpcInfo>,
    /// Declared pub_channels; canonical bounds are part of CODEC_IDENTITY.
    pub pub_channels: Vec<Ros2Aimdk_msgsMsgModuleChannelInfo>,
    /// Declared sub_channels; canonical bounds are part of CODEC_IDENTITY.
    pub sub_channels: Vec<Ros2Aimdk_msgsMsgModuleChannelInfo>,
}
impl Default for Ros2Aimdk_msgsMsgModuleResourceInfo {
    fn default() -> Self {
        Self {
            module_name: Default::default(),
            rpc_clients: Default::default(),
            rpc_services: Default::default(),
            pub_channels: Default::default(),
            sub_channels: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsMsgModuleResourceInfo {
    pub const MAX_WIRE_BYTES: usize = 5180;
    pub const CARTESIAN_WIRE_BYTES: u64 = 5180;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_de2a3067e5bff40e7bd9949ce9923b6be34c8f822f74a036402a9253717aaa8f";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.module_name.len() > 128 || self.module_name.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.module_name.len())?;
        if self.rpc_clients.len() > 2 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.rpc_clients {
            n = add_size(n, element.wire_size()?)?;
        }
        if self.rpc_services.len() > 2 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.rpc_services {
            n = add_size(n, element.wire_size()?)?;
        }
        if self.pub_channels.len() > 2 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.pub_channels {
            n = add_size(n, element.wire_size()?)?;
        }
        if self.sub_channels.len() > 2 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.sub_channels {
            n = add_size(n, element.wire_size()?)?;
        }
        if n > 5180 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
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
        put(out, at, &(self.module_name.len() as u32).to_le_bytes());
        put(out, at, self.module_name.as_bytes());
        put(out, at, &(self.rpc_clients.len() as u32).to_le_bytes());
        for element in &self.rpc_clients {
            element.write_fields(out, at);
        }
        put(out, at, &(self.rpc_services.len() as u32).to_le_bytes());
        for element in &self.rpc_services {
            element.write_fields(out, at);
        }
        put(out, at, &(self.pub_channels.len() as u32).to_le_bytes());
        for element in &self.pub_channels {
            element.write_fields(out, at);
        }
        put(out, at, &(self.sub_channels.len() as u32).to_le_bytes());
        for element in &self.sub_channels {
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
        value.module_name = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 2 {
                return Err(invalid());
            }
            value.rpc_clients = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros2Aimdk_msgsMsgModuleRpcInfo::read_fields(bytes, at)?;
                value.rpc_clients.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 2 {
                return Err(invalid());
            }
            value.rpc_services = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros2Aimdk_msgsMsgModuleRpcInfo::read_fields(bytes, at)?;
                value.rpc_services.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 2 {
                return Err(invalid());
            }
            value.pub_channels = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros2Aimdk_msgsMsgModuleChannelInfo::read_fields(bytes, at)?;
                value.pub_channels.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 2 {
                return Err(invalid());
            }
            value.sub_channels = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros2Aimdk_msgsMsgModuleChannelInfo::read_fields(bytes, at)?;
                value.sub_channels.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Aimdk_msgsMsgModuleResourceInfo {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 5180 {
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
/// Complete bounded value for ROS2 aimdk_msgs/msg/ThreadResourceInfo.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsMsgThreadResourceInfo {
    /// Declared thread_id; canonical bounds are part of CODEC_IDENTITY.
    pub thread_id: u64,
    /// Declared thread_name; canonical bounds are part of CODEC_IDENTITY.
    pub thread_name: String,
    /// Declared cpu_usage_ratio; canonical bounds are part of CODEC_IDENTITY.
    pub cpu_usage_ratio: f64,
    /// Declared cpu_sched_policy; canonical bounds are part of CODEC_IDENTITY.
    pub cpu_sched_policy: String,
    /// Declared cpu_sched_priority; canonical bounds are part of CODEC_IDENTITY.
    pub cpu_sched_priority: i32,
    /// Declared bounding_cpus; canonical bounds are part of CODEC_IDENTITY.
    pub bounding_cpus: Vec<i32>,
}
impl Default for Ros2Aimdk_msgsMsgThreadResourceInfo {
    fn default() -> Self {
        Self {
            thread_id: Default::default(),
            thread_name: Default::default(),
            cpu_usage_ratio: Default::default(),
            cpu_sched_policy: Default::default(),
            cpu_sched_priority: Default::default(),
            bounding_cpus: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsMsgThreadResourceInfo {
    pub const MAX_WIRE_BYTES: usize = 352;
    pub const CARTESIAN_WIRE_BYTES: u64 = 352;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_7232a79e41b62d823fd87d761df60759839543aedbe5fa338fb46816687a0a15";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 8)?;
        if self.thread_name.len() > 128 || self.thread_name.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.thread_name.len())?;
        if !self.cpu_usage_ratio.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if self.cpu_sched_policy.len() > 128 || self.cpu_sched_policy.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.cpu_sched_policy.len())?;
        n = add_size(n, 4)?;
        if self.bounding_cpus.len() > 16 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.bounding_cpus {
            n = add_size(n, 4)?;
        }
        if n > 352 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
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
        put(out, at, &self.thread_id.to_le_bytes());
        put(out, at, &(self.thread_name.len() as u32).to_le_bytes());
        put(out, at, self.thread_name.as_bytes());
        put(out, at, &self.cpu_usage_ratio.to_le_bytes());
        put(out, at, &(self.cpu_sched_policy.len() as u32).to_le_bytes());
        put(out, at, self.cpu_sched_policy.as_bytes());
        put(out, at, &self.cpu_sched_priority.to_le_bytes());
        put(out, at, &(self.bounding_cpus.len() as u32).to_le_bytes());
        for element in &self.bounding_cpus {
            put(out, at, &element.to_le_bytes());
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        value.thread_id = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.thread_name = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.cpu_usage_ratio = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.cpu_sched_policy = decoded;
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.cpu_sched_priority = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 16 {
                return Err(invalid());
            }
            value.bounding_cpus = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                value.bounding_cpus.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Aimdk_msgsMsgThreadResourceInfo {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 352 {
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
/// Complete bounded value for ROS2 aimdk_msgs/msg/ProcessResourceInfo.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsMsgProcessResourceInfo {
    /// Declared process_id; canonical bounds are part of CODEC_IDENTITY.
    pub process_id: u64,
    /// Declared process_name; canonical bounds are part of CODEC_IDENTITY.
    pub process_name: String,
    /// Declared process_mem_usage; canonical bounds are part of CODEC_IDENTITY.
    pub process_mem_usage: u64,
    /// Declared process_mem_usage_ratio; canonical bounds are part of CODEC_IDENTITY.
    pub process_mem_usage_ratio: f64,
    /// Declared process_cpu_usage_ratio; canonical bounds are part of CODEC_IDENTITY.
    pub process_cpu_usage_ratio: f64,
    /// Declared thread_count; canonical bounds are part of CODEC_IDENTITY.
    pub thread_count: u64,
    /// Declared threads; canonical bounds are part of CODEC_IDENTITY.
    pub threads: Vec<Ros2Aimdk_msgsMsgThreadResourceInfo>,
}
impl Default for Ros2Aimdk_msgsMsgProcessResourceInfo {
    fn default() -> Self {
        Self {
            process_id: Default::default(),
            process_name: Default::default(),
            process_mem_usage: Default::default(),
            process_mem_usage_ratio: Default::default(),
            process_cpu_usage_ratio: Default::default(),
            thread_count: Default::default(),
            threads: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsMsgProcessResourceInfo {
    pub const MAX_WIRE_BYTES: usize = 1584;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1584;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_90b5f60525abc33814dfc7e3f7e6af23c7f43a232d74a904bd06f20d27ef9550";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 8)?;
        if self.process_name.len() > 128 || self.process_name.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.process_name.len())?;
        n = add_size(n, 8)?;
        if !self.process_mem_usage_ratio.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.process_cpu_usage_ratio.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        n = add_size(n, 8)?;
        if self.threads.len() > 4 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.threads {
            n = add_size(n, element.wire_size()?)?;
        }
        if n > 1584 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
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
        put(out, at, &self.process_id.to_le_bytes());
        put(out, at, &(self.process_name.len() as u32).to_le_bytes());
        put(out, at, self.process_name.as_bytes());
        put(out, at, &self.process_mem_usage.to_le_bytes());
        put(out, at, &self.process_mem_usage_ratio.to_le_bytes());
        put(out, at, &self.process_cpu_usage_ratio.to_le_bytes());
        put(out, at, &self.thread_count.to_le_bytes());
        put(out, at, &(self.threads.len() as u32).to_le_bytes());
        for element in &self.threads {
            element.write_fields(out, at);
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        value.process_id = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.process_name = decoded;
        let decoded = u64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        value.process_mem_usage = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.process_mem_usage_ratio = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.process_cpu_usage_ratio = decoded;
        let decoded = u64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        value.thread_count = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 4 {
                return Err(invalid());
            }
            value.threads = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros2Aimdk_msgsMsgThreadResourceInfo::read_fields(bytes, at)?;
                value.threads.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Aimdk_msgsMsgProcessResourceInfo {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 1584 {
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
/// Complete bounded value for ROS2 aimdk_msgs/msg/ProcessInfo.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsMsgProcessInfo {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros2Aimdk_msgsMsgMessageHeader,
    /// Declared app_name; canonical bounds are part of CODEC_IDENTITY.
    pub app_name: String,
    /// Declared resource; canonical bounds are part of CODEC_IDENTITY.
    pub resource: Ros2Aimdk_msgsMsgProcessResourceInfo,
    /// Declared modules; canonical bounds are part of CODEC_IDENTITY.
    pub modules: Vec<Ros2Aimdk_msgsMsgModuleResourceInfo>,
}
impl Default for Ros2Aimdk_msgsMsgProcessInfo {
    fn default() -> Self {
        Self {
            header: Default::default(),
            app_name: Default::default(),
            resource: Default::default(),
            modules: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsMsgProcessInfo {
    pub const MAX_WIRE_BYTES: usize = 12232;
    pub const CARTESIAN_WIRE_BYTES: u64 = 12232;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_190d10dc74d66eecf65495e2795525b4f6016bb3efde2f16310e54287e703996";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        if self.app_name.len() > 128 || self.app_name.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.app_name.len())?;
        n = add_size(n, self.resource.wire_size()?)?;
        if self.modules.len() > 2 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.modules {
            n = add_size(n, element.wire_size()?)?;
        }
        if n > 12232 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
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
        put(out, at, &(self.app_name.len() as u32).to_le_bytes());
        put(out, at, self.app_name.as_bytes());
        self.resource.write_fields(out, at);
        put(out, at, &(self.modules.len() as u32).to_le_bytes());
        for element in &self.modules {
            element.write_fields(out, at);
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Aimdk_msgsMsgMessageHeader::read_fields(bytes, at)?;
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
        value.app_name = decoded;
        let decoded = Ros2Aimdk_msgsMsgProcessResourceInfo::read_fields(bytes, at)?;
        value.resource = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 2 {
                return Err(invalid());
            }
            value.modules = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros2Aimdk_msgsMsgModuleResourceInfo::read_fields(bytes, at)?;
                value.modules.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Aimdk_msgsMsgProcessInfo {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 12232 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 80 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}

impl Ros2Aimdk_msgsMsgCommonState {
    pub const UNKNOWN: i32 = 0;
    pub const SUCCESS: i32 = 1;
    pub const FAILURE: i32 = 2;
    pub const ABORTED: i32 = 3;
    pub const TIMEOUT: i32 = 4;
    pub const INVALID: i32 = 5;
    pub const IN_MANUAL: i32 = 6;
    pub const NOT_READY: i32 = 100;
    pub const PENDING: i32 = 200;
    pub const CREATED: i32 = 300;
    pub const RUNNING: i32 = 400;
}

impl Ros2Aimdk_msgsMsgDomainErrorState {
    pub const NONE: u8 = 0;
    pub const DAMPING: u8 = 1;
    pub const POWERDOWN: u8 = 2;
    pub const DISABLE: u8 = 3;
    pub const DISCONNECT: u8 = 4;
}
