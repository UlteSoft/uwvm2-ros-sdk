// @file bounded_records.rs
// @brief Full agibot rs codecs and original record metadata.
// @details Complete agibot ros2_sdk_v0_8_1_main values in rs. 72 original records retain 227 fields and 55
// interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
// definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
// profile API manual under document/platform/agibot/en_US/catalog/.
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
/// Complete bounded value for ROS2 aimdk_msgs/msg/AgentPropertyIdType.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsMsgAgentPropertyIdType {
    /// Declared value; canonical bounds are part of CODEC_IDENTITY.
    pub value: u8,
}
impl Default for Ros2Aimdk_msgsMsgAgentPropertyIdType {
    fn default() -> Self {
        Self {
            value: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsMsgAgentPropertyIdType {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_96958ff52528b07c7f9bc239e80676edc77b27faa077a3bed7222cf32d1ebf0b";
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
impl Canonical for Ros2Aimdk_msgsMsgAgentPropertyIdType {
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
/// Complete bounded value for ROS2 aimdk_msgs/msg/AgentPropertiesValue.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsMsgAgentPropertiesValue {
    /// Declared key; canonical bounds are part of CODEC_IDENTITY.
    pub key: Ros2Aimdk_msgsMsgAgentPropertyIdType,
    /// Declared value; canonical bounds are part of CODEC_IDENTITY.
    pub value: String,
}
impl Default for Ros2Aimdk_msgsMsgAgentPropertiesValue {
    fn default() -> Self {
        Self {
            key: Default::default(),
            value: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsMsgAgentPropertiesValue {
    pub const MAX_WIRE_BYTES: usize = 133;
    pub const CARTESIAN_WIRE_BYTES: u64 = 133;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_c7ec8887e5fb223291cb324c1ae21f20490955108ee137db384c6775fb332c6a";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.key.wire_size()?)?;
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
        self.key.write_fields(out, at);
        put(out, at, &(self.value.len() as u32).to_le_bytes());
        put(out, at, self.value.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Aimdk_msgsMsgAgentPropertyIdType::read_fields(bytes, at)?;
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
impl Canonical for Ros2Aimdk_msgsMsgAgentPropertiesValue {
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
/// Complete bounded value for ROS2 aimdk_msgs/msg/AgentProperties.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsMsgAgentProperties {
    /// Declared properties; canonical bounds are part of CODEC_IDENTITY.
    pub properties: Vec<Ros2Aimdk_msgsMsgAgentPropertiesValue>,
}
impl Default for Ros2Aimdk_msgsMsgAgentProperties {
    fn default() -> Self {
        Self {
            properties: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsMsgAgentProperties {
    pub const MAX_WIRE_BYTES: usize = 536;
    pub const CARTESIAN_WIRE_BYTES: u64 = 536;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_e729493bf2dfbd5ed1f726a95ac39d42f33a28f476edd13f66e75f9cb591694f";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.properties.len() > 4 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.properties {
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
        put(out, at, &(self.properties.len() as u32).to_le_bytes());
        for element in &self.properties {
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
            value.properties = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros2Aimdk_msgsMsgAgentPropertiesValue::read_fields(bytes, at)?;
                value.properties.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Aimdk_msgsMsgAgentProperties {
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
/// Complete bounded value for ROS2 aimdk_msgs/msg/AudioVadStateType.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsMsgAudioVadStateType {
    /// Declared value; canonical bounds are part of CODEC_IDENTITY.
    pub value: u8,
}
impl Default for Ros2Aimdk_msgsMsgAudioVadStateType {
    fn default() -> Self {
        Self {
            value: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsMsgAudioVadStateType {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_edd7a6f6ad81c2c6479d3331d9e87a2fc66eedfb73f789caf0b888eeb9480526";
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
impl Canonical for Ros2Aimdk_msgsMsgAudioVadStateType {
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
/// Complete bounded value for ROS2 aimdk_msgs/msg/FaceEmojiStatus.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsMsgFaceEmojiStatus {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros2Aimdk_msgsMsgMessageHeader,
    /// Declared e_path; canonical bounds are part of CODEC_IDENTITY.
    pub e_path: String,
    /// Declared e_path_list; canonical bounds are part of CODEC_IDENTITY.
    pub e_path_list: Vec<String>,
    /// Declared e_id; canonical bounds are part of CODEC_IDENTITY.
    pub e_id: u8,
    /// Declared mode; canonical bounds are part of CODEC_IDENTITY.
    pub mode: u8,
    /// Declared priority; canonical bounds are part of CODEC_IDENTITY.
    pub priority: i32,
    /// Declared status; canonical bounds are part of CODEC_IDENTITY.
    pub status: u8,
    /// Declared time_to_end_ms; canonical bounds are part of CODEC_IDENTITY.
    pub time_to_end_ms: f64,
}
impl Default for Ros2Aimdk_msgsMsgFaceEmojiStatus {
    fn default() -> Self {
        Self {
            header: Default::default(),
            e_path: Default::default(),
            e_path_list: Default::default(),
            e_id: Default::default(),
            mode: Default::default(),
            priority: Default::default(),
            status: Default::default(),
            time_to_end_ms: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsMsgFaceEmojiStatus {
    pub const MAX_WIRE_BYTES: usize = 2415;
    pub const CARTESIAN_WIRE_BYTES: u64 = 2415;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_3200d2686ea5f26668f00d0249e774572668b4a36b3f8067dae4f93182af89f7";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        if self.e_path.len() > 128 || self.e_path.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.e_path.len())?;
        if self.e_path_list.len() > 16 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.e_path_list {
            if element.len() > 128 || element.as_bytes().contains(&0) {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
            n = add_size(n, element.len())?;
        }
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 4)?;
        n = add_size(n, 1)?;
        if !self.time_to_end_ms.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if n > 2415 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
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
        put(out, at, &(self.e_path.len() as u32).to_le_bytes());
        put(out, at, self.e_path.as_bytes());
        put(out, at, &(self.e_path_list.len() as u32).to_le_bytes());
        for element in &self.e_path_list {
            put(out, at, &(element.len() as u32).to_le_bytes());
            put(out, at, element.as_bytes());
        }
        put(out, at, &self.e_id.to_le_bytes());
        put(out, at, &self.mode.to_le_bytes());
        put(out, at, &self.priority.to_le_bytes());
        put(out, at, &self.status.to_le_bytes());
        put(out, at, &self.time_to_end_ms.to_le_bytes());
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
        value.e_path = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 16 {
                return Err(invalid());
            }
            value.e_path_list = Vec::with_capacity(count);
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
                value.e_path_list.push(decoded);
            }
        }
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.e_id = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.mode = decoded;
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.priority = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.status = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.time_to_end_ms = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Aimdk_msgsMsgFaceEmojiStatus {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 2415 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 47 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS2 aimdk_msgs/msg/HandCommand.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsMsgHandCommand {
    /// Declared name; canonical bounds are part of CODEC_IDENTITY.
    pub name: String,
    /// Declared position; canonical bounds are part of CODEC_IDENTITY.
    pub position: f64,
    /// Declared velocity; canonical bounds are part of CODEC_IDENTITY.
    pub velocity: f64,
    /// Declared acceleration; canonical bounds are part of CODEC_IDENTITY.
    pub acceleration: f64,
    /// Declared deceleration; canonical bounds are part of CODEC_IDENTITY.
    pub deceleration: f64,
    /// Declared effort; canonical bounds are part of CODEC_IDENTITY.
    pub effort: f64,
}
impl Default for Ros2Aimdk_msgsMsgHandCommand {
    fn default() -> Self {
        Self {
            name: Default::default(),
            position: Default::default(),
            velocity: Default::default(),
            acceleration: Default::default(),
            deceleration: Default::default(),
            effort: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsMsgHandCommand {
    pub const MAX_WIRE_BYTES: usize = 172;
    pub const CARTESIAN_WIRE_BYTES: u64 = 172;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_910f3d9c0907c60b2613097cc4c1426727987e2ab83f8bcc41787feb472dc4e8";
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
        if !self.acceleration.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.deceleration.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.effort.is_finite() {
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
        put(out, at, &self.acceleration.to_le_bytes());
        put(out, at, &self.deceleration.to_le_bytes());
        put(out, at, &self.effort.to_le_bytes());
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
        value.acceleration = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.deceleration = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.effort = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Aimdk_msgsMsgHandCommand {
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
/// Complete bounded value for ROS2 aimdk_msgs/msg/HandType.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsMsgHandType {
    /// Declared value; canonical bounds are part of CODEC_IDENTITY.
    pub value: u8,
}
impl Default for Ros2Aimdk_msgsMsgHandType {
    fn default() -> Self {
        Self {
            value: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsMsgHandType {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_e90b6ef9fea68be96eef98d3c6ce0120846da0638145a662f35a96edb690a6e6";
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
impl Canonical for Ros2Aimdk_msgsMsgHandType {
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
/// Complete bounded value for ROS2 aimdk_msgs/msg/HandCommandArray.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsMsgHandCommandArray {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros2Aimdk_msgsMsgMessageHeader,
    /// Declared left_hand_type; canonical bounds are part of CODEC_IDENTITY.
    pub left_hand_type: Ros2Aimdk_msgsMsgHandType,
    /// Declared left_hands; canonical bounds are part of CODEC_IDENTITY.
    pub left_hands: Vec<Ros2Aimdk_msgsMsgHandCommand>,
    /// Declared right_hand_type; canonical bounds are part of CODEC_IDENTITY.
    pub right_hand_type: Ros2Aimdk_msgsMsgHandType,
    /// Declared right_hands; canonical bounds are part of CODEC_IDENTITY.
    pub right_hands: Vec<Ros2Aimdk_msgsMsgHandCommand>,
}
impl Default for Ros2Aimdk_msgsMsgHandCommandArray {
    fn default() -> Self {
        Self {
            header: Default::default(),
            left_hand_type: Default::default(),
            left_hands: Default::default(),
            right_hand_type: Default::default(),
            right_hands: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsMsgHandCommandArray {
    pub const MAX_WIRE_BYTES: usize = 1538;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1538;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_6786b9d07c3f807c1b4b98a5f22481a2628c1bd530c04e75ad40a36058f5558e";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        n = add_size(n, self.left_hand_type.wire_size()?)?;
        if self.left_hands.len() > 4 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.left_hands {
            n = add_size(n, element.wire_size()?)?;
        }
        n = add_size(n, self.right_hand_type.wire_size()?)?;
        if self.right_hands.len() > 4 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.right_hands {
            n = add_size(n, element.wire_size()?)?;
        }
        if n > 1538 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
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
        self.left_hand_type.write_fields(out, at);
        put(out, at, &(self.left_hands.len() as u32).to_le_bytes());
        for element in &self.left_hands {
            element.write_fields(out, at);
        }
        self.right_hand_type.write_fields(out, at);
        put(out, at, &(self.right_hands.len() as u32).to_le_bytes());
        for element in &self.right_hands {
            element.write_fields(out, at);
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Aimdk_msgsMsgMessageHeader::read_fields(bytes, at)?;
        value.header = decoded;
        let decoded = Ros2Aimdk_msgsMsgHandType::read_fields(bytes, at)?;
        value.left_hand_type = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 4 {
                return Err(invalid());
            }
            value.left_hands = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros2Aimdk_msgsMsgHandCommand::read_fields(bytes, at)?;
                value.left_hands.push(decoded);
            }
        }
        let decoded = Ros2Aimdk_msgsMsgHandType::read_fields(bytes, at)?;
        value.right_hand_type = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 4 {
                return Err(invalid());
            }
            value.right_hands = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros2Aimdk_msgsMsgHandCommand::read_fields(bytes, at)?;
                value.right_hands.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Aimdk_msgsMsgHandCommandArray {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 1538 {
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
/// Complete bounded value for ROS2 aimdk_msgs/msg/HandState.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsMsgHandState {
    /// Declared name; canonical bounds are part of CODEC_IDENTITY.
    pub name: String,
    /// Declared position; canonical bounds are part of CODEC_IDENTITY.
    pub position: f64,
    /// Declared velocity; canonical bounds are part of CODEC_IDENTITY.
    pub velocity: f64,
    /// Declared effort; canonical bounds are part of CODEC_IDENTITY.
    pub effort: f64,
    /// Declared state; canonical bounds are part of CODEC_IDENTITY.
    pub state: i32,
    /// Declared faultcode; canonical bounds are part of CODEC_IDENTITY.
    pub faultcode: i32,
}
impl Default for Ros2Aimdk_msgsMsgHandState {
    fn default() -> Self {
        Self {
            name: Default::default(),
            position: Default::default(),
            velocity: Default::default(),
            effort: Default::default(),
            state: Default::default(),
            faultcode: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsMsgHandState {
    pub const MAX_WIRE_BYTES: usize = 164;
    pub const CARTESIAN_WIRE_BYTES: u64 = 164;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_9cfb695f97c9e314103a224bcb6b321de5f279cdae85d5eef7bec0c7968a875c";
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
        n = add_size(n, 4)?;
        n = add_size(n, 4)?;
        if n > 164 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
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
        put(out, at, &self.state.to_le_bytes());
        put(out, at, &self.faultcode.to_le_bytes());
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
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.state = decoded;
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.faultcode = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Aimdk_msgsMsgHandState {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 164 {
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
/// Complete bounded value for ROS2 aimdk_msgs/msg/HandStateArray.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsMsgHandStateArray {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros2Aimdk_msgsMsgMessageHeader,
    /// Declared left_hand_type; canonical bounds are part of CODEC_IDENTITY.
    pub left_hand_type: Ros2Aimdk_msgsMsgHandType,
    /// Declared left_hands; canonical bounds are part of CODEC_IDENTITY.
    pub left_hands: Vec<Ros2Aimdk_msgsMsgHandState>,
    /// Declared right_hand_type; canonical bounds are part of CODEC_IDENTITY.
    pub right_hand_type: Ros2Aimdk_msgsMsgHandType,
    /// Declared right_hands; canonical bounds are part of CODEC_IDENTITY.
    pub right_hands: Vec<Ros2Aimdk_msgsMsgHandState>,
}
impl Default for Ros2Aimdk_msgsMsgHandStateArray {
    fn default() -> Self {
        Self {
            header: Default::default(),
            left_hand_type: Default::default(),
            left_hands: Default::default(),
            right_hand_type: Default::default(),
            right_hands: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsMsgHandStateArray {
    pub const MAX_WIRE_BYTES: usize = 1474;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1474;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_241862e8351ba851c0b7124277b23dfc09df3344bae750f238422af6e820e46d";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        n = add_size(n, self.left_hand_type.wire_size()?)?;
        if self.left_hands.len() > 4 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.left_hands {
            n = add_size(n, element.wire_size()?)?;
        }
        n = add_size(n, self.right_hand_type.wire_size()?)?;
        if self.right_hands.len() > 4 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.right_hands {
            n = add_size(n, element.wire_size()?)?;
        }
        if n > 1474 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
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
        self.left_hand_type.write_fields(out, at);
        put(out, at, &(self.left_hands.len() as u32).to_le_bytes());
        for element in &self.left_hands {
            element.write_fields(out, at);
        }
        self.right_hand_type.write_fields(out, at);
        put(out, at, &(self.right_hands.len() as u32).to_le_bytes());
        for element in &self.right_hands {
            element.write_fields(out, at);
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Aimdk_msgsMsgMessageHeader::read_fields(bytes, at)?;
        value.header = decoded;
        let decoded = Ros2Aimdk_msgsMsgHandType::read_fields(bytes, at)?;
        value.left_hand_type = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 4 {
                return Err(invalid());
            }
            value.left_hands = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros2Aimdk_msgsMsgHandState::read_fields(bytes, at)?;
                value.left_hands.push(decoded);
            }
        }
        let decoded = Ros2Aimdk_msgsMsgHandType::read_fields(bytes, at)?;
        value.right_hand_type = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 4 {
                return Err(invalid());
            }
            value.right_hands = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros2Aimdk_msgsMsgHandState::read_fields(bytes, at)?;
                value.right_hands.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Aimdk_msgsMsgHandStateArray {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 1474 {
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
    /// Declared coil_temp; canonical bounds are part of CODEC_IDENTITY.
    pub coil_temp: u8,
    /// Declared motor_temp; canonical bounds are part of CODEC_IDENTITY.
    pub motor_temp: u8,
    /// Declared motor_vol; canonical bounds are part of CODEC_IDENTITY.
    pub motor_vol: u8,
}
impl Default for Ros2Aimdk_msgsMsgJointState {
    fn default() -> Self {
        Self {
            name: Default::default(),
            position: Default::default(),
            velocity: Default::default(),
            effort: Default::default(),
            coil_temp: Default::default(),
            motor_temp: Default::default(),
            motor_vol: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsMsgJointState {
    pub const MAX_WIRE_BYTES: usize = 159;
    pub const CARTESIAN_WIRE_BYTES: u64 = 159;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_1b786e0a54b6e19cbc8cdad4bffc7458534ce3db05064216eb3cf6b50674610f";
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
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        if n > 159 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
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
        put(out, at, &self.coil_temp.to_le_bytes());
        put(out, at, &self.motor_temp.to_le_bytes());
        put(out, at, &self.motor_vol.to_le_bytes());
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
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.coil_temp = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.motor_temp = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.motor_vol = decoded;
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
        if bytes.len() > 159 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 31 {
            return Err(invalid());
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
    /// Declared joints; canonical bounds are part of CODEC_IDENTITY.
    pub joints: Vec<Ros2Aimdk_msgsMsgJointState>,
}
impl Default for Ros2Aimdk_msgsMsgJointStateArray {
    fn default() -> Self {
        Self {
            header: Default::default(),
            joints: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsMsgJointStateArray {
    pub const MAX_WIRE_BYTES: usize = 10332;
    pub const CARTESIAN_WIRE_BYTES: u64 = 10332;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_6bf212a55e2cbe59e4e1bd675bdb41d3461db28e11d91244c21bac45070683fa";
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
        if n > 10332 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
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
        if bytes.len() > 10332 {
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
/// Complete bounded value for ROS2 aimdk_msgs/msg/McAction.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsMsgMcAction {
    /// Declared value; canonical bounds are part of CODEC_IDENTITY.
    pub value: i32,
}
impl Default for Ros2Aimdk_msgsMsgMcAction {
    fn default() -> Self {
        Self {
            value: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsMsgMcAction {
    pub const MAX_WIRE_BYTES: usize = 4;
    pub const CARTESIAN_WIRE_BYTES: u64 = 4;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_a43927486ae637ff4e5b8d60e1f45c91a9e3cf07b4505ea00550c6dc58e9354b";
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
impl Canonical for Ros2Aimdk_msgsMsgMcAction {
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
/// Complete bounded value for ROS2 aimdk_msgs/msg/McActionCommand.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsMsgMcActionCommand {
    /// Declared action; canonical bounds are part of CODEC_IDENTITY.
    pub action: Ros2Aimdk_msgsMsgMcAction,
    /// Declared action_desc; canonical bounds are part of CODEC_IDENTITY.
    pub action_desc: String,
}
impl Default for Ros2Aimdk_msgsMsgMcActionCommand {
    fn default() -> Self {
        Self {
            action: Default::default(),
            action_desc: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsMsgMcActionCommand {
    pub const MAX_WIRE_BYTES: usize = 136;
    pub const CARTESIAN_WIRE_BYTES: u64 = 136;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_9a529c7988535cbc65c36425ffb0935b210a806906598baa3a2f1f717df4f648";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.action.wire_size()?)?;
        if self.action_desc.len() > 128 || self.action_desc.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.action_desc.len())?;
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
        self.action.write_fields(out, at);
        put(out, at, &(self.action_desc.len() as u32).to_le_bytes());
        put(out, at, self.action_desc.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Aimdk_msgsMsgMcAction::read_fields(bytes, at)?;
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
        value.action_desc = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Aimdk_msgsMsgMcActionCommand {
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
/// Complete bounded value for ROS2 aimdk_msgs/msg/McActionStatus.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsMsgMcActionStatus {
    /// Declared value; canonical bounds are part of CODEC_IDENTITY.
    pub value: i32,
}
impl Default for Ros2Aimdk_msgsMsgMcActionStatus {
    fn default() -> Self {
        Self {
            value: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsMsgMcActionStatus {
    pub const MAX_WIRE_BYTES: usize = 4;
    pub const CARTESIAN_WIRE_BYTES: u64 = 4;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_8c05e9540004b968b042b32ed0164af4857574186776f311be9b3ecde209ad48";
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
impl Canonical for Ros2Aimdk_msgsMsgMcActionStatus {
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
/// Complete bounded value for ROS2 aimdk_msgs/msg/McActionInfo.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsMsgMcActionInfo {
    /// Declared current_action; canonical bounds are part of CODEC_IDENTITY.
    pub current_action: Ros2Aimdk_msgsMsgMcAction,
    /// Declared action_desc; canonical bounds are part of CODEC_IDENTITY.
    pub action_desc: String,
    /// Declared status; canonical bounds are part of CODEC_IDENTITY.
    pub status: Ros2Aimdk_msgsMsgMcActionStatus,
}
impl Default for Ros2Aimdk_msgsMsgMcActionInfo {
    fn default() -> Self {
        Self {
            current_action: Default::default(),
            action_desc: Default::default(),
            status: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsMsgMcActionInfo {
    pub const MAX_WIRE_BYTES: usize = 140;
    pub const CARTESIAN_WIRE_BYTES: u64 = 140;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_9c3c209060709befea26f340e6a607f4c6ddb00c638d1dedf5dd0cfa23f2e5e9";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.current_action.wire_size()?)?;
        if self.action_desc.len() > 128 || self.action_desc.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.action_desc.len())?;
        n = add_size(n, self.status.wire_size()?)?;
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
        self.current_action.write_fields(out, at);
        put(out, at, &(self.action_desc.len() as u32).to_le_bytes());
        put(out, at, self.action_desc.as_bytes());
        self.status.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Aimdk_msgsMsgMcAction::read_fields(bytes, at)?;
        value.current_action = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.action_desc = decoded;
        let decoded = Ros2Aimdk_msgsMsgMcActionStatus::read_fields(bytes, at)?;
        value.status = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Aimdk_msgsMsgMcActionInfo {
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
/// Complete bounded value for ROS2 aimdk_msgs/msg/McControlArea.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsMsgMcControlArea {
    /// Declared value; canonical bounds are part of CODEC_IDENTITY.
    pub value: i32,
}
impl Default for Ros2Aimdk_msgsMsgMcControlArea {
    fn default() -> Self {
        Self {
            value: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsMsgMcControlArea {
    pub const MAX_WIRE_BYTES: usize = 4;
    pub const CARTESIAN_WIRE_BYTES: u64 = 4;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_ca241b8a191674136f0eeb0deee84b5e284de71f384038c9a5d6083eb4fc75c9";
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
impl Canonical for Ros2Aimdk_msgsMsgMcControlArea {
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
/// Complete bounded value for ROS2 aimdk_msgs/msg/McInputAction.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsMsgMcInputAction {
    /// Declared value; canonical bounds are part of CODEC_IDENTITY.
    pub value: i32,
}
impl Default for Ros2Aimdk_msgsMsgMcInputAction {
    fn default() -> Self {
        Self {
            value: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsMsgMcInputAction {
    pub const MAX_WIRE_BYTES: usize = 4;
    pub const CARTESIAN_WIRE_BYTES: u64 = 4;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_7016737845145fd03a104665957b475c512400775b93981573a40d0da30e15d9";
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
impl Canonical for Ros2Aimdk_msgsMsgMcInputAction {
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
/// Complete bounded value for ROS2 aimdk_msgs/msg/McInputSource.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsMsgMcInputSource {
    /// Declared name; canonical bounds are part of CODEC_IDENTITY.
    pub name: String,
    /// Declared priority; canonical bounds are part of CODEC_IDENTITY.
    pub priority: i32,
    /// Declared timeout; canonical bounds are part of CODEC_IDENTITY.
    pub timeout: i32,
}
impl Default for Ros2Aimdk_msgsMsgMcInputSource {
    fn default() -> Self {
        Self {
            name: Default::default(),
            priority: Default::default(),
            timeout: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsMsgMcInputSource {
    pub const MAX_WIRE_BYTES: usize = 140;
    pub const CARTESIAN_WIRE_BYTES: u64 = 140;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_4909fe165c71d1104207b393ba76d55347aa02836ebac251f6b57259ced1d1dd";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.name.len() > 128 || self.name.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.name.len())?;
        n = add_size(n, 4)?;
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
        put(out, at, &(self.name.len() as u32).to_le_bytes());
        put(out, at, self.name.as_bytes());
        put(out, at, &self.priority.to_le_bytes());
        put(out, at, &self.timeout.to_le_bytes());
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
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.priority = decoded;
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.timeout = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Aimdk_msgsMsgMcInputSource {
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
/// Complete bounded value for ROS2 aimdk_msgs/msg/McLocomotionVelocity.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsMsgMcLocomotionVelocity {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros2Aimdk_msgsMsgMessageHeader,
    /// Declared source; canonical bounds are part of CODEC_IDENTITY.
    pub source: String,
    /// Declared forward_velocity; canonical bounds are part of CODEC_IDENTITY.
    pub forward_velocity: f64,
    /// Declared lateral_velocity; canonical bounds are part of CODEC_IDENTITY.
    pub lateral_velocity: f64,
    /// Declared angular_velocity; canonical bounds are part of CODEC_IDENTITY.
    pub angular_velocity: f64,
}
impl Default for Ros2Aimdk_msgsMsgMcLocomotionVelocity {
    fn default() -> Self {
        Self {
            header: Default::default(),
            source: Default::default(),
            forward_velocity: Default::default(),
            lateral_velocity: Default::default(),
            angular_velocity: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsMsgMcLocomotionVelocity {
    pub const MAX_WIRE_BYTES: usize = 308;
    pub const CARTESIAN_WIRE_BYTES: u64 = 308;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_a3c45cd56bc3098af00eefba2b2fc5c34c6439228d3429ab077d80b60ef8ca00";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        if self.source.len() > 128 || self.source.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.source.len())?;
        if !self.forward_velocity.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.lateral_velocity.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.angular_velocity.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if n > 308 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
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
        put(out, at, &(self.source.len() as u32).to_le_bytes());
        put(out, at, self.source.as_bytes());
        put(out, at, &self.forward_velocity.to_le_bytes());
        put(out, at, &self.lateral_velocity.to_le_bytes());
        put(out, at, &self.angular_velocity.to_le_bytes());
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
        value.source = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.forward_velocity = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.lateral_velocity = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.angular_velocity = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Aimdk_msgsMsgMcLocomotionVelocity {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 308 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 52 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS2 aimdk_msgs/msg/McPresetMotion.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsMsgMcPresetMotion {
    /// Declared value; canonical bounds are part of CODEC_IDENTITY.
    pub value: i32,
}
impl Default for Ros2Aimdk_msgsMsgMcPresetMotion {
    fn default() -> Self {
        Self {
            value: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsMsgMcPresetMotion {
    pub const MAX_WIRE_BYTES: usize = 4;
    pub const CARTESIAN_WIRE_BYTES: u64 = 4;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_7421ee5b50a30799907e6f521dd97874158a945019f09cecf168a8f3130c9153";
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
impl Canonical for Ros2Aimdk_msgsMsgMcPresetMotion {
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
/// Complete bounded value for ROS2 aimdk_msgs/msg/TtsPriorityLevel.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsMsgTtsPriorityLevel {
    /// Declared value; canonical bounds are part of CODEC_IDENTITY.
    pub value: u8,
}
impl Default for Ros2Aimdk_msgsMsgTtsPriorityLevel {
    fn default() -> Self {
        Self {
            value: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsMsgTtsPriorityLevel {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_38bce7b033528697c6667c348c66d327a0d63f176b519189d3720279591cd90a";
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
impl Canonical for Ros2Aimdk_msgsMsgTtsPriorityLevel {
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
/// Complete bounded value for ROS2 aimdk_msgs/msg/PlayMediaFileRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsMsgPlayMediaFileRequest {
    /// Declared file_name; canonical bounds are part of CODEC_IDENTITY.
    pub file_name: String,
    /// Declared sample_rate; canonical bounds are part of CODEC_IDENTITY.
    pub sample_rate: u32,
    /// Declared priority_level; canonical bounds are part of CODEC_IDENTITY.
    pub priority_level: Ros2Aimdk_msgsMsgTtsPriorityLevel,
    /// Declared priority_weight; canonical bounds are part of CODEC_IDENTITY.
    pub priority_weight: u32,
    /// Declared domain; canonical bounds are part of CODEC_IDENTITY.
    pub domain: String,
    /// Declared trace_id; canonical bounds are part of CODEC_IDENTITY.
    pub trace_id: String,
    /// Declared is_interrupted; canonical bounds are part of CODEC_IDENTITY.
    pub is_interrupted: bool,
}
impl Default for Ros2Aimdk_msgsMsgPlayMediaFileRequest {
    fn default() -> Self {
        Self {
            file_name: Default::default(),
            sample_rate: Default::default(),
            priority_level: Default::default(),
            priority_weight: Default::default(),
            domain: Default::default(),
            trace_id: Default::default(),
            is_interrupted: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsMsgPlayMediaFileRequest {
    pub const MAX_WIRE_BYTES: usize = 406;
    pub const CARTESIAN_WIRE_BYTES: u64 = 406;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_de5d1ad3e7b16b0aaac78736982e24c1a1f3366952cb1b08f59a86bfaf70d254";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.file_name.len() > 128 || self.file_name.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.file_name.len())?;
        n = add_size(n, 4)?;
        n = add_size(n, self.priority_level.wire_size()?)?;
        n = add_size(n, 4)?;
        if self.domain.len() > 128 || self.domain.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.domain.len())?;
        if self.trace_id.len() > 128 || self.trace_id.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.trace_id.len())?;
        n = add_size(n, 1)?;
        if n > 406 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
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
        put(out, at, &(self.file_name.len() as u32).to_le_bytes());
        put(out, at, self.file_name.as_bytes());
        put(out, at, &self.sample_rate.to_le_bytes());
        self.priority_level.write_fields(out, at);
        put(out, at, &self.priority_weight.to_le_bytes());
        put(out, at, &(self.domain.len() as u32).to_le_bytes());
        put(out, at, self.domain.as_bytes());
        put(out, at, &(self.trace_id.len() as u32).to_le_bytes());
        put(out, at, self.trace_id.as_bytes());
        put(out, at, &[u8::from(self.is_interrupted)]);
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
        value.file_name = decoded;
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.sample_rate = decoded;
        let decoded = Ros2Aimdk_msgsMsgTtsPriorityLevel::read_fields(bytes, at)?;
        value.priority_level = decoded;
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.priority_weight = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.domain = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.trace_id = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.is_interrupted = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Aimdk_msgsMsgPlayMediaFileRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 406 {
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
/// Complete bounded value for ROS2 aimdk_msgs/msg/PlayTtsRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsMsgPlayTtsRequest {
    /// Declared text; canonical bounds are part of CODEC_IDENTITY.
    pub text: String,
    /// Declared priority_level; canonical bounds are part of CODEC_IDENTITY.
    pub priority_level: Ros2Aimdk_msgsMsgTtsPriorityLevel,
    /// Declared priority_weight; canonical bounds are part of CODEC_IDENTITY.
    pub priority_weight: u32,
    /// Declared domain; canonical bounds are part of CODEC_IDENTITY.
    pub domain: String,
    /// Declared trace_id; canonical bounds are part of CODEC_IDENTITY.
    pub trace_id: String,
    /// Declared is_interrupted; canonical bounds are part of CODEC_IDENTITY.
    pub is_interrupted: bool,
}
impl Default for Ros2Aimdk_msgsMsgPlayTtsRequest {
    fn default() -> Self {
        Self {
            text: Default::default(),
            priority_level: Default::default(),
            priority_weight: Default::default(),
            domain: Default::default(),
            trace_id: Default::default(),
            is_interrupted: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsMsgPlayTtsRequest {
    pub const MAX_WIRE_BYTES: usize = 402;
    pub const CARTESIAN_WIRE_BYTES: u64 = 402;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_d6410f21a03f560429a39216f36ce03ad040323054f5775b75586b3890802bbd";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.text.len() > 128 || self.text.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.text.len())?;
        n = add_size(n, self.priority_level.wire_size()?)?;
        n = add_size(n, 4)?;
        if self.domain.len() > 128 || self.domain.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.domain.len())?;
        if self.trace_id.len() > 128 || self.trace_id.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.trace_id.len())?;
        n = add_size(n, 1)?;
        if n > 402 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
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
        self.priority_level.write_fields(out, at);
        put(out, at, &self.priority_weight.to_le_bytes());
        put(out, at, &(self.domain.len() as u32).to_le_bytes());
        put(out, at, self.domain.as_bytes());
        put(out, at, &(self.trace_id.len() as u32).to_le_bytes());
        put(out, at, self.trace_id.as_bytes());
        put(out, at, &[u8::from(self.is_interrupted)]);
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
        let decoded = Ros2Aimdk_msgsMsgTtsPriorityLevel::read_fields(bytes, at)?;
        value.priority_level = decoded;
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.priority_weight = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.domain = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.trace_id = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.is_interrupted = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Aimdk_msgsMsgPlayTtsRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 402 {
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
/// Complete bounded value for ROS2 aimdk_msgs/msg/PlayTtsResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsMsgPlayTtsResponse {
    /// Declared text; canonical bounds are part of CODEC_IDENTITY.
    pub text: String,
    /// Declared priority_level; canonical bounds are part of CODEC_IDENTITY.
    pub priority_level: Ros2Aimdk_msgsMsgTtsPriorityLevel,
    /// Declared priority_weight; canonical bounds are part of CODEC_IDENTITY.
    pub priority_weight: u32,
    /// Declared domain; canonical bounds are part of CODEC_IDENTITY.
    pub domain: String,
    /// Declared trace_id; canonical bounds are part of CODEC_IDENTITY.
    pub trace_id: String,
    /// Declared is_success; canonical bounds are part of CODEC_IDENTITY.
    pub is_success: bool,
    /// Declared error_message; canonical bounds are part of CODEC_IDENTITY.
    pub error_message: String,
    /// Declared estimated_duration; canonical bounds are part of CODEC_IDENTITY.
    pub estimated_duration: u32,
}
impl Default for Ros2Aimdk_msgsMsgPlayTtsResponse {
    fn default() -> Self {
        Self {
            text: Default::default(),
            priority_level: Default::default(),
            priority_weight: Default::default(),
            domain: Default::default(),
            trace_id: Default::default(),
            is_success: Default::default(),
            error_message: Default::default(),
            estimated_duration: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsMsgPlayTtsResponse {
    pub const MAX_WIRE_BYTES: usize = 538;
    pub const CARTESIAN_WIRE_BYTES: u64 = 538;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_8347d2c5ae04c1db9ea2fd0c6afdffcb5e1327a170e15a7e861a00a08c8a8af3";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.text.len() > 128 || self.text.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.text.len())?;
        n = add_size(n, self.priority_level.wire_size()?)?;
        n = add_size(n, 4)?;
        if self.domain.len() > 128 || self.domain.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.domain.len())?;
        if self.trace_id.len() > 128 || self.trace_id.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.trace_id.len())?;
        n = add_size(n, 1)?;
        if self.error_message.len() > 128 || self.error_message.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.error_message.len())?;
        n = add_size(n, 4)?;
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
        put(out, at, &(self.text.len() as u32).to_le_bytes());
        put(out, at, self.text.as_bytes());
        self.priority_level.write_fields(out, at);
        put(out, at, &self.priority_weight.to_le_bytes());
        put(out, at, &(self.domain.len() as u32).to_le_bytes());
        put(out, at, self.domain.as_bytes());
        put(out, at, &(self.trace_id.len() as u32).to_le_bytes());
        put(out, at, self.trace_id.as_bytes());
        put(out, at, &[u8::from(self.is_success)]);
        put(out, at, &(self.error_message.len() as u32).to_le_bytes());
        put(out, at, self.error_message.as_bytes());
        put(out, at, &self.estimated_duration.to_le_bytes());
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
        let decoded = Ros2Aimdk_msgsMsgTtsPriorityLevel::read_fields(bytes, at)?;
        value.priority_level = decoded;
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.priority_weight = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.domain = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.trace_id = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.is_success = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.error_message = decoded;
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.estimated_duration = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Aimdk_msgsMsgPlayTtsResponse {
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
/// Complete bounded value for ROS2 aimdk_msgs/msg/PmuState.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsMsgPmuState {
    /// Declared pmu_software_version; canonical bounds are part of CODEC_IDENTITY.
    pub pmu_software_version: String,
    /// Declared pmu_hardware_version; canonical bounds are part of CODEC_IDENTITY.
    pub pmu_hardware_version: String,
    /// Declared pmu_protocol_version; canonical bounds are part of CODEC_IDENTITY.
    pub pmu_protocol_version: String,
    /// Declared pmu_bool_status; canonical bounds are part of CODEC_IDENTITY.
    pub pmu_bool_status: u32,
    /// Declared head_power_current; canonical bounds are part of CODEC_IDENTITY.
    pub head_power_current: f64,
    /// Declared output_48v_current; canonical bounds are part of CODEC_IDENTITY.
    pub output_48v_current: f64,
    /// Declared rk3588_current; canonical bounds are part of CODEC_IDENTITY.
    pub rk3588_current: f64,
    /// Declared output_12v_current; canonical bounds are part of CODEC_IDENTITY.
    pub output_12v_current: f64,
    /// Declared bus_48v_current; canonical bounds are part of CODEC_IDENTITY.
    pub bus_48v_current: f64,
    /// Declared orin_current; canonical bounds are part of CODEC_IDENTITY.
    pub orin_current: f64,
    /// Declared bus_48v_pmos_voltage; canonical bounds are part of CODEC_IDENTITY.
    pub bus_48v_pmos_voltage: f64,
    /// Declared battery_voltage; canonical bounds are part of CODEC_IDENTITY.
    pub battery_voltage: f64,
    /// Declared fan_voltage; canonical bounds are part of CODEC_IDENTITY.
    pub fan_voltage: f64,
    /// Declared output_12v_voltage; canonical bounds are part of CODEC_IDENTITY.
    pub output_12v_voltage: f64,
    /// Declared output_48v_voltage; canonical bounds are part of CODEC_IDENTITY.
    pub output_48v_voltage: f64,
    /// Declared bus_48v_voltage; canonical bounds are part of CODEC_IDENTITY.
    pub bus_48v_voltage: f64,
    /// Declared head_power_voltage; canonical bounds are part of CODEC_IDENTITY.
    pub head_power_voltage: f64,
    /// Declared orin_voltage; canonical bounds are part of CODEC_IDENTITY.
    pub orin_voltage: f64,
    /// Declared rk3588_voltage; canonical bounds are part of CODEC_IDENTITY.
    pub rk3588_voltage: f64,
    /// Declared bms_manufacturer; canonical bounds are part of CODEC_IDENTITY.
    pub bms_manufacturer: String,
    /// Declared bms_serial_number; canonical bounds are part of CODEC_IDENTITY.
    pub bms_serial_number: String,
    /// Declared bms_hardware_version; canonical bounds are part of CODEC_IDENTITY.
    pub bms_hardware_version: String,
    /// Declared bms_software_version; canonical bounds are part of CODEC_IDENTITY.
    pub bms_software_version: String,
    /// Declared bms_status_bits; canonical bounds are part of CODEC_IDENTITY.
    pub bms_status_bits: u32,
    /// Declared battery_balance_line_resistance; canonical bounds are part of CODEC_IDENTITY.
    pub battery_balance_line_resistance: u16,
    /// Declared battery_pack_voltage; canonical bounds are part of CODEC_IDENTITY.
    pub battery_pack_voltage: f64,
    /// Declared battery_current; canonical bounds are part of CODEC_IDENTITY.
    pub battery_current: f64,
    /// Declared battery_output_power; canonical bounds are part of CODEC_IDENTITY.
    pub battery_output_power: f64,
    /// Declared battery_temperature; canonical bounds are part of CODEC_IDENTITY.
    pub battery_temperature: f64,
    /// Declared battery_remaining_capacity; canonical bounds are part of CODEC_IDENTITY.
    pub battery_remaining_capacity: u32,
    /// Declared battery_remaining_capacity_percentage; canonical bounds are part of CODEC_IDENTITY.
    pub battery_remaining_capacity_percentage: u8,
    /// Declared battery_cycle_count; canonical bounds are part of CODEC_IDENTITY.
    pub battery_cycle_count: u16,
    /// Declared battery_cycle_total_capacity; canonical bounds are part of CODEC_IDENTITY.
    pub battery_cycle_total_capacity: u32,
}
impl Default for Ros2Aimdk_msgsMsgPmuState {
    fn default() -> Self {
        Self {
            pmu_software_version: Default::default(),
            pmu_hardware_version: Default::default(),
            pmu_protocol_version: Default::default(),
            pmu_bool_status: Default::default(),
            head_power_current: Default::default(),
            output_48v_current: Default::default(),
            rk3588_current: Default::default(),
            output_12v_current: Default::default(),
            bus_48v_current: Default::default(),
            orin_current: Default::default(),
            bus_48v_pmos_voltage: Default::default(),
            battery_voltage: Default::default(),
            fan_voltage: Default::default(),
            output_12v_voltage: Default::default(),
            output_48v_voltage: Default::default(),
            bus_48v_voltage: Default::default(),
            head_power_voltage: Default::default(),
            orin_voltage: Default::default(),
            rk3588_voltage: Default::default(),
            bms_manufacturer: Default::default(),
            bms_serial_number: Default::default(),
            bms_hardware_version: Default::default(),
            bms_software_version: Default::default(),
            bms_status_bits: Default::default(),
            battery_balance_line_resistance: Default::default(),
            battery_pack_voltage: Default::default(),
            battery_current: Default::default(),
            battery_output_power: Default::default(),
            battery_temperature: Default::default(),
            battery_remaining_capacity: Default::default(),
            battery_remaining_capacity_percentage: Default::default(),
            battery_cycle_count: Default::default(),
            battery_cycle_total_capacity: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsMsgPmuState {
    pub const MAX_WIRE_BYTES: usize = 1097;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1097;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_5b7bda78c820384993ef98ff4563e61cc55fa29d5176db91b91bd787c91b8a1c";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.pmu_software_version.len() > 128
            || self.pmu_software_version.as_bytes().contains(&0)
        {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.pmu_software_version.len())?;
        if self.pmu_hardware_version.len() > 128
            || self.pmu_hardware_version.as_bytes().contains(&0)
        {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.pmu_hardware_version.len())?;
        if self.pmu_protocol_version.len() > 128
            || self.pmu_protocol_version.as_bytes().contains(&0)
        {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.pmu_protocol_version.len())?;
        n = add_size(n, 4)?;
        if !self.head_power_current.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.output_48v_current.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.rk3588_current.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.output_12v_current.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.bus_48v_current.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.orin_current.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.bus_48v_pmos_voltage.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.battery_voltage.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.fan_voltage.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.output_12v_voltage.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.output_48v_voltage.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.bus_48v_voltage.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.head_power_voltage.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.orin_voltage.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.rk3588_voltage.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if self.bms_manufacturer.len() > 128 || self.bms_manufacturer.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.bms_manufacturer.len())?;
        if self.bms_serial_number.len() > 128 || self.bms_serial_number.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.bms_serial_number.len())?;
        if self.bms_hardware_version.len() > 128
            || self.bms_hardware_version.as_bytes().contains(&0)
        {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.bms_hardware_version.len())?;
        if self.bms_software_version.len() > 128
            || self.bms_software_version.as_bytes().contains(&0)
        {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.bms_software_version.len())?;
        n = add_size(n, 4)?;
        n = add_size(n, 2)?;
        if !self.battery_pack_voltage.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.battery_current.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.battery_output_power.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.battery_temperature.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        n = add_size(n, 4)?;
        n = add_size(n, 1)?;
        n = add_size(n, 2)?;
        n = add_size(n, 4)?;
        if n > 1097 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
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
            &(self.pmu_software_version.len() as u32).to_le_bytes(),
        );
        put(out, at, self.pmu_software_version.as_bytes());
        put(
            out,
            at,
            &(self.pmu_hardware_version.len() as u32).to_le_bytes(),
        );
        put(out, at, self.pmu_hardware_version.as_bytes());
        put(
            out,
            at,
            &(self.pmu_protocol_version.len() as u32).to_le_bytes(),
        );
        put(out, at, self.pmu_protocol_version.as_bytes());
        put(out, at, &self.pmu_bool_status.to_le_bytes());
        put(out, at, &self.head_power_current.to_le_bytes());
        put(out, at, &self.output_48v_current.to_le_bytes());
        put(out, at, &self.rk3588_current.to_le_bytes());
        put(out, at, &self.output_12v_current.to_le_bytes());
        put(out, at, &self.bus_48v_current.to_le_bytes());
        put(out, at, &self.orin_current.to_le_bytes());
        put(out, at, &self.bus_48v_pmos_voltage.to_le_bytes());
        put(out, at, &self.battery_voltage.to_le_bytes());
        put(out, at, &self.fan_voltage.to_le_bytes());
        put(out, at, &self.output_12v_voltage.to_le_bytes());
        put(out, at, &self.output_48v_voltage.to_le_bytes());
        put(out, at, &self.bus_48v_voltage.to_le_bytes());
        put(out, at, &self.head_power_voltage.to_le_bytes());
        put(out, at, &self.orin_voltage.to_le_bytes());
        put(out, at, &self.rk3588_voltage.to_le_bytes());
        put(out, at, &(self.bms_manufacturer.len() as u32).to_le_bytes());
        put(out, at, self.bms_manufacturer.as_bytes());
        put(
            out,
            at,
            &(self.bms_serial_number.len() as u32).to_le_bytes(),
        );
        put(out, at, self.bms_serial_number.as_bytes());
        put(
            out,
            at,
            &(self.bms_hardware_version.len() as u32).to_le_bytes(),
        );
        put(out, at, self.bms_hardware_version.as_bytes());
        put(
            out,
            at,
            &(self.bms_software_version.len() as u32).to_le_bytes(),
        );
        put(out, at, self.bms_software_version.as_bytes());
        put(out, at, &self.bms_status_bits.to_le_bytes());
        put(out, at, &self.battery_balance_line_resistance.to_le_bytes());
        put(out, at, &self.battery_pack_voltage.to_le_bytes());
        put(out, at, &self.battery_current.to_le_bytes());
        put(out, at, &self.battery_output_power.to_le_bytes());
        put(out, at, &self.battery_temperature.to_le_bytes());
        put(out, at, &self.battery_remaining_capacity.to_le_bytes());
        put(
            out,
            at,
            &self.battery_remaining_capacity_percentage.to_le_bytes(),
        );
        put(out, at, &self.battery_cycle_count.to_le_bytes());
        put(out, at, &self.battery_cycle_total_capacity.to_le_bytes());
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
        value.pmu_software_version = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.pmu_hardware_version = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.pmu_protocol_version = decoded;
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.pmu_bool_status = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.head_power_current = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.output_48v_current = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.rk3588_current = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.output_12v_current = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.bus_48v_current = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.orin_current = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.bus_48v_pmos_voltage = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.battery_voltage = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.fan_voltage = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.output_12v_voltage = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.output_48v_voltage = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.bus_48v_voltage = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.head_power_voltage = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.orin_voltage = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.rk3588_voltage = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.bms_manufacturer = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.bms_serial_number = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.bms_hardware_version = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.bms_software_version = decoded;
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.bms_status_bits = decoded;
        let decoded = u16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.battery_balance_line_resistance = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.battery_pack_voltage = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.battery_current = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.battery_output_power = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.battery_temperature = decoded;
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.battery_remaining_capacity = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.battery_remaining_capacity_percentage = decoded;
        let decoded = u16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.battery_cycle_count = decoded;
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.battery_cycle_total_capacity = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Aimdk_msgsMsgPmuState {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 1097 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 201 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS2 aimdk_msgs/msg/ProcessedAudioOutput.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsMsgProcessedAudioOutput {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros2Aimdk_msgsMsgMessageHeader,
    /// Declared stream_id; canonical bounds are part of CODEC_IDENTITY.
    pub stream_id: u32,
    /// Declared audio_vad_state; canonical bounds are part of CODEC_IDENTITY.
    pub audio_vad_state: Ros2Aimdk_msgsMsgAudioVadStateType,
    /// Declared audio_data; canonical bounds are part of CODEC_IDENTITY.
    pub audio_data: Vec<u8>,
}
impl Default for Ros2Aimdk_msgsMsgProcessedAudioOutput {
    fn default() -> Self {
        Self {
            header: Default::default(),
            stream_id: Default::default(),
            audio_vad_state: Default::default(),
            audio_data: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsMsgProcessedAudioOutput {
    pub const MAX_WIRE_BYTES: usize = 417;
    pub const CARTESIAN_WIRE_BYTES: u64 = 417;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_8b0ea5b4fc3db2efe41730f74a261ee6ea94ad34ee35ff42ae5288ddf501cc30";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        n = add_size(n, 4)?;
        n = add_size(n, self.audio_vad_state.wire_size()?)?;
        if self.audio_data.len() > 256 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.audio_data {
            n = add_size(n, 1)?;
        }
        if n > 417 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
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
        put(out, at, &self.stream_id.to_le_bytes());
        self.audio_vad_state.write_fields(out, at);
        put(out, at, &(self.audio_data.len() as u32).to_le_bytes());
        for element in &self.audio_data {
            put(out, at, &element.to_le_bytes());
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Aimdk_msgsMsgMessageHeader::read_fields(bytes, at)?;
        value.header = decoded;
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.stream_id = decoded;
        let decoded = Ros2Aimdk_msgsMsgAudioVadStateType::read_fields(bytes, at)?;
        value.audio_vad_state = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 256 {
                return Err(invalid());
            }
            value.audio_data = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
                value.audio_data.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Aimdk_msgsMsgProcessedAudioOutput {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 417 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 33 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS2 aimdk_msgs/msg/TouchState.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsMsgTouchState {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros2Aimdk_msgsMsgMessageHeader,
    /// Declared event_type; canonical bounds are part of CODEC_IDENTITY.
    pub event_type: u8,
    /// Declared data; canonical bounds are part of CODEC_IDENTITY.
    pub data: [u32; 8],
    /// Declared threshold; canonical bounds are part of CODEC_IDENTITY.
    pub threshold: [u32; 8],
    /// Declared is_touched; canonical bounds are part of CODEC_IDENTITY.
    pub is_touched: [bool; 8],
}
impl Default for Ros2Aimdk_msgsMsgTouchState {
    fn default() -> Self {
        Self {
            header: Default::default(),
            event_type: Default::default(),
            data: core::array::from_fn(|_| Default::default()),
            threshold: core::array::from_fn(|_| Default::default()),
            is_touched: core::array::from_fn(|_| Default::default()),
        }
    }
}
impl Ros2Aimdk_msgsMsgTouchState {
    pub const MAX_WIRE_BYTES: usize = 225;
    pub const CARTESIAN_WIRE_BYTES: u64 = 225;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_90d5626f09f2254a102224e74c1f8a4d8db63910b7e5eeafa519afd79c7b1564";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        n = add_size(n, 1)?;
        for element in &self.data {
            n = add_size(n, 4)?;
        }
        for element in &self.threshold {
            n = add_size(n, 4)?;
        }
        for element in &self.is_touched {
            n = add_size(n, 1)?;
        }
        if n > 225 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
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
        put(out, at, &self.event_type.to_le_bytes());
        for element in &self.data {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.threshold {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.is_touched {
            put(out, at, &[u8::from(*element)]);
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Aimdk_msgsMsgMessageHeader::read_fields(bytes, at)?;
        value.header = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.event_type = decoded;
        {
            let count = 8usize;
            if count > 8 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                value.data[i] = decoded;
            }
        }
        {
            let count = 8usize;
            if count > 8 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                value.threshold[i] = decoded;
            }
        }
        {
            let count = 8usize;
            if count > 8 {
                return Err(invalid());
            }
            for i in 0..count {
                let byte = take(bytes, at, 1)?[0];
                if byte > 1 {
                    return Err(invalid());
                }
                let decoded = byte != 0;
                value.is_touched[i] = decoded;
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Aimdk_msgsMsgTouchState {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 225 {
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
/// Complete bounded value for ROS2 aimdk_msgs/srv/GetAllJointState_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsSrvGetAllJointState_Request {
    /// Declared request; canonical bounds are part of CODEC_IDENTITY.
    pub request: Ros2Aimdk_msgsMsgCommonRequest,
}
impl Default for Ros2Aimdk_msgsSrvGetAllJointState_Request {
    fn default() -> Self {
        Self {
            request: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsSrvGetAllJointState_Request {
    pub const MAX_WIRE_BYTES: usize = 8;
    pub const CARTESIAN_WIRE_BYTES: u64 = 8;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_6ebdd4b2a15c8d5f3089fa93003d73adb818d92b51ecb65ea817b72e0ee90260";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.request.wire_size()?)?;
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
        self.request.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Aimdk_msgsMsgCommonRequest::read_fields(bytes, at)?;
        value.request = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Aimdk_msgsSrvGetAllJointState_Request {
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
/// Complete bounded value for ROS2 aimdk_msgs/srv/GetAllJointState_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsSrvGetAllJointState_Response {
    /// Declared reponse; canonical bounds are part of CODEC_IDENTITY.
    pub reponse: Ros2Aimdk_msgsMsgCommonResponse,
    /// Declared head_joints; canonical bounds are part of CODEC_IDENTITY.
    pub head_joints: Vec<Ros2Aimdk_msgsMsgJointState>,
    /// Declared arm_joints; canonical bounds are part of CODEC_IDENTITY.
    pub arm_joints: Vec<Ros2Aimdk_msgsMsgJointState>,
    /// Declared waist_joints; canonical bounds are part of CODEC_IDENTITY.
    pub waist_joints: Vec<Ros2Aimdk_msgsMsgJointState>,
    /// Declared leg_joints; canonical bounds are part of CODEC_IDENTITY.
    pub leg_joints: Vec<Ros2Aimdk_msgsMsgJointState>,
}
impl Default for Ros2Aimdk_msgsSrvGetAllJointState_Response {
    fn default() -> Self {
        Self {
            reponse: Default::default(),
            head_joints: Default::default(),
            arm_joints: Default::default(),
            waist_joints: Default::default(),
            leg_joints: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsSrvGetAllJointState_Response {
    pub const MAX_WIRE_BYTES: usize = 2712;
    pub const CARTESIAN_WIRE_BYTES: u64 = 2712;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_14baa3fa0f7685798bdc9f15f4f65ca87070ca388fcbe65696fa030b0d68f793";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.reponse.wire_size()?)?;
        if self.head_joints.len() > 4 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.head_joints {
            n = add_size(n, element.wire_size()?)?;
        }
        if self.arm_joints.len() > 4 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.arm_joints {
            n = add_size(n, element.wire_size()?)?;
        }
        if self.waist_joints.len() > 4 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.waist_joints {
            n = add_size(n, element.wire_size()?)?;
        }
        if self.leg_joints.len() > 4 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.leg_joints {
            n = add_size(n, element.wire_size()?)?;
        }
        if n > 2712 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
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
        self.reponse.write_fields(out, at);
        put(out, at, &(self.head_joints.len() as u32).to_le_bytes());
        for element in &self.head_joints {
            element.write_fields(out, at);
        }
        put(out, at, &(self.arm_joints.len() as u32).to_le_bytes());
        for element in &self.arm_joints {
            element.write_fields(out, at);
        }
        put(out, at, &(self.waist_joints.len() as u32).to_le_bytes());
        for element in &self.waist_joints {
            element.write_fields(out, at);
        }
        put(out, at, &(self.leg_joints.len() as u32).to_le_bytes());
        for element in &self.leg_joints {
            element.write_fields(out, at);
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Aimdk_msgsMsgCommonResponse::read_fields(bytes, at)?;
        value.reponse = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 4 {
                return Err(invalid());
            }
            value.head_joints = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros2Aimdk_msgsMsgJointState::read_fields(bytes, at)?;
                value.head_joints.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 4 {
                return Err(invalid());
            }
            value.arm_joints = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros2Aimdk_msgsMsgJointState::read_fields(bytes, at)?;
                value.arm_joints.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 4 {
                return Err(invalid());
            }
            value.waist_joints = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros2Aimdk_msgsMsgJointState::read_fields(bytes, at)?;
                value.waist_joints.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 4 {
                return Err(invalid());
            }
            value.leg_joints = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros2Aimdk_msgsMsgJointState::read_fields(bytes, at)?;
                value.leg_joints.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Aimdk_msgsSrvGetAllJointState_Response {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 2712 {
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
/// Complete bounded value for ROS2 aimdk_msgs/srv/GetCurrentInputSource_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsSrvGetCurrentInputSource_Request {
    /// Declared request; canonical bounds are part of CODEC_IDENTITY.
    pub request: Ros2Aimdk_msgsMsgCommonRequest,
}
impl Default for Ros2Aimdk_msgsSrvGetCurrentInputSource_Request {
    fn default() -> Self {
        Self {
            request: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsSrvGetCurrentInputSource_Request {
    pub const MAX_WIRE_BYTES: usize = 8;
    pub const CARTESIAN_WIRE_BYTES: u64 = 8;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_d5b73ba9bc2ea2f864884a0e278e2a3e327e0af405594a5e7aac7d3884e7143a";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.request.wire_size()?)?;
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
        self.request.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Aimdk_msgsMsgCommonRequest::read_fields(bytes, at)?;
        value.request = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Aimdk_msgsSrvGetCurrentInputSource_Request {
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
/// Complete bounded value for ROS2 aimdk_msgs/srv/GetCurrentInputSource_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsSrvGetCurrentInputSource_Response {
    /// Declared response; canonical bounds are part of CODEC_IDENTITY.
    pub response: Ros2Aimdk_msgsMsgCommonTaskResponse,
    /// Declared input_source; canonical bounds are part of CODEC_IDENTITY.
    pub input_source: Ros2Aimdk_msgsMsgMcInputSource,
}
impl Default for Ros2Aimdk_msgsSrvGetCurrentInputSource_Response {
    fn default() -> Self {
        Self {
            response: Default::default(),
            input_source: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsSrvGetCurrentInputSource_Response {
    pub const MAX_WIRE_BYTES: usize = 168;
    pub const CARTESIAN_WIRE_BYTES: u64 = 168;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_74952e748930b62ef98f8837c39e3925425b6f3a715fadb0d01339104bafbe5e";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.response.wire_size()?)?;
        n = add_size(n, self.input_source.wire_size()?)?;
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
        self.response.write_fields(out, at);
        self.input_source.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Aimdk_msgsMsgCommonTaskResponse::read_fields(bytes, at)?;
        value.response = decoded;
        let decoded = Ros2Aimdk_msgsMsgMcInputSource::read_fields(bytes, at)?;
        value.input_source = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Aimdk_msgsSrvGetCurrentInputSource_Response {
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
/// Complete bounded value for ROS2 aimdk_msgs/srv/GetHandType_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsSrvGetHandType_Request {
    /// Declared request; canonical bounds are part of CODEC_IDENTITY.
    pub request: Ros2Aimdk_msgsMsgCommonRequest,
}
impl Default for Ros2Aimdk_msgsSrvGetHandType_Request {
    fn default() -> Self {
        Self {
            request: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsSrvGetHandType_Request {
    pub const MAX_WIRE_BYTES: usize = 8;
    pub const CARTESIAN_WIRE_BYTES: u64 = 8;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_d286d9ff63fa2191490e6aa526330d2a448b37fc47231d9e42d61a3b4ddca470";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.request.wire_size()?)?;
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
        self.request.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Aimdk_msgsMsgCommonRequest::read_fields(bytes, at)?;
        value.request = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Aimdk_msgsSrvGetHandType_Request {
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
/// Complete bounded value for ROS2 aimdk_msgs/srv/GetHandType_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsSrvGetHandType_Response {
    /// Declared reponse; canonical bounds are part of CODEC_IDENTITY.
    pub reponse: Ros2Aimdk_msgsMsgCommonResponse,
    /// Declared left_hands_type; canonical bounds are part of CODEC_IDENTITY.
    pub left_hands_type: Ros2Aimdk_msgsMsgHandType,
    /// Declared right_hands_type; canonical bounds are part of CODEC_IDENTITY.
    pub right_hands_type: Ros2Aimdk_msgsMsgHandType,
}
impl Default for Ros2Aimdk_msgsSrvGetHandType_Response {
    fn default() -> Self {
        Self {
            reponse: Default::default(),
            left_hands_type: Default::default(),
            right_hands_type: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsSrvGetHandType_Response {
    pub const MAX_WIRE_BYTES: usize = 154;
    pub const CARTESIAN_WIRE_BYTES: u64 = 154;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_04f69fc5f7df302c1e73d2a51ffaef813b002ec387014b6d4d8a648e1e5d098c";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.reponse.wire_size()?)?;
        n = add_size(n, self.left_hands_type.wire_size()?)?;
        n = add_size(n, self.right_hands_type.wire_size()?)?;
        if n > 154 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
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
        self.reponse.write_fields(out, at);
        self.left_hands_type.write_fields(out, at);
        self.right_hands_type.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Aimdk_msgsMsgCommonResponse::read_fields(bytes, at)?;
        value.reponse = decoded;
        let decoded = Ros2Aimdk_msgsMsgHandType::read_fields(bytes, at)?;
        value.left_hands_type = decoded;
        let decoded = Ros2Aimdk_msgsMsgHandType::read_fields(bytes, at)?;
        value.right_hands_type = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Aimdk_msgsSrvGetHandType_Response {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 154 {
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
/// Complete bounded value for ROS2 aimdk_msgs/srv/GetMcAction_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsSrvGetMcAction_Request {
    /// Declared request; canonical bounds are part of CODEC_IDENTITY.
    pub request: Ros2Aimdk_msgsMsgCommonRequest,
}
impl Default for Ros2Aimdk_msgsSrvGetMcAction_Request {
    fn default() -> Self {
        Self {
            request: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsSrvGetMcAction_Request {
    pub const MAX_WIRE_BYTES: usize = 8;
    pub const CARTESIAN_WIRE_BYTES: u64 = 8;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_f6dc5b72271fc51bfb1950b67d671619b65dfabc7931e12889a237fe47d18cfe";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.request.wire_size()?)?;
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
        self.request.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Aimdk_msgsMsgCommonRequest::read_fields(bytes, at)?;
        value.request = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Aimdk_msgsSrvGetMcAction_Request {
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
/// Complete bounded value for ROS2 aimdk_msgs/srv/GetMcAction_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsSrvGetMcAction_Response {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros2Aimdk_msgsMsgResponseHeader,
    /// Declared info; canonical bounds are part of CODEC_IDENTITY.
    pub info: Ros2Aimdk_msgsMsgMcActionInfo,
}
impl Default for Ros2Aimdk_msgsSrvGetMcAction_Response {
    fn default() -> Self {
        Self {
            header: Default::default(),
            info: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsSrvGetMcAction_Response {
    pub const MAX_WIRE_BYTES: usize = 156;
    pub const CARTESIAN_WIRE_BYTES: u64 = 156;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_e2518bce930bc6f8e195b638d9eb5c132dffa93449c94b6f044e6192843df18f";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        n = add_size(n, self.info.wire_size()?)?;
        if n > 156 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
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
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Aimdk_msgsMsgResponseHeader::read_fields(bytes, at)?;
        value.header = decoded;
        let decoded = Ros2Aimdk_msgsMsgMcActionInfo::read_fields(bytes, at)?;
        value.info = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Aimdk_msgsSrvGetMcAction_Response {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 156 {
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
/// Complete bounded value for ROS2 aimdk_msgs/srv/GetMute_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsSrvGetMute_Request {
    /// Declared request; canonical bounds are part of CODEC_IDENTITY.
    pub request: Ros2Aimdk_msgsMsgCommonRequest,
}
impl Default for Ros2Aimdk_msgsSrvGetMute_Request {
    fn default() -> Self {
        Self {
            request: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsSrvGetMute_Request {
    pub const MAX_WIRE_BYTES: usize = 8;
    pub const CARTESIAN_WIRE_BYTES: u64 = 8;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_0f3d2a1679b2af2dca96bcdba69e8f076e9a333d4166a53501de40594c723ca5";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.request.wire_size()?)?;
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
        self.request.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Aimdk_msgsMsgCommonRequest::read_fields(bytes, at)?;
        value.request = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Aimdk_msgsSrvGetMute_Request {
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
/// Complete bounded value for ROS2 aimdk_msgs/srv/GetMute_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsSrvGetMute_Response {
    /// Declared reponse; canonical bounds are part of CODEC_IDENTITY.
    pub reponse: Ros2Aimdk_msgsMsgCommonResponse,
    /// Declared is_mute; canonical bounds are part of CODEC_IDENTITY.
    pub is_mute: bool,
}
impl Default for Ros2Aimdk_msgsSrvGetMute_Response {
    fn default() -> Self {
        Self {
            reponse: Default::default(),
            is_mute: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsSrvGetMute_Response {
    pub const MAX_WIRE_BYTES: usize = 153;
    pub const CARTESIAN_WIRE_BYTES: u64 = 153;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_c1beb5c0c269083a0be2c3a4718043ec92639b6ac58cf1d74bae051bec2d8a42";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.reponse.wire_size()?)?;
        n = add_size(n, 1)?;
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
        self.reponse.write_fields(out, at);
        put(out, at, &[u8::from(self.is_mute)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Aimdk_msgsMsgCommonResponse::read_fields(bytes, at)?;
        value.reponse = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.is_mute = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Aimdk_msgsSrvGetMute_Response {
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
/// Complete bounded value for ROS2 aimdk_msgs/srv/GetVolume_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsSrvGetVolume_Request {
    /// Declared request; canonical bounds are part of CODEC_IDENTITY.
    pub request: Ros2Aimdk_msgsMsgCommonRequest,
}
impl Default for Ros2Aimdk_msgsSrvGetVolume_Request {
    fn default() -> Self {
        Self {
            request: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsSrvGetVolume_Request {
    pub const MAX_WIRE_BYTES: usize = 8;
    pub const CARTESIAN_WIRE_BYTES: u64 = 8;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_6e0d1472098c746f350535d30a3281758480e8e7c7b8ef54485310dae16dfc2b";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.request.wire_size()?)?;
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
        self.request.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Aimdk_msgsMsgCommonRequest::read_fields(bytes, at)?;
        value.request = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Aimdk_msgsSrvGetVolume_Request {
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
/// Complete bounded value for ROS2 aimdk_msgs/srv/GetVolume_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsSrvGetVolume_Response {
    /// Declared reponse; canonical bounds are part of CODEC_IDENTITY.
    pub reponse: Ros2Aimdk_msgsMsgCommonResponse,
    /// Declared audio_volume; canonical bounds are part of CODEC_IDENTITY.
    pub audio_volume: u32,
}
impl Default for Ros2Aimdk_msgsSrvGetVolume_Response {
    fn default() -> Self {
        Self {
            reponse: Default::default(),
            audio_volume: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsSrvGetVolume_Response {
    pub const MAX_WIRE_BYTES: usize = 156;
    pub const CARTESIAN_WIRE_BYTES: u64 = 156;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_24a04a12d640be4e17e24d372b0bbb2f65a89bd56e4ee1448e252db2c833c266";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.reponse.wire_size()?)?;
        n = add_size(n, 4)?;
        if n > 156 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
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
        self.reponse.write_fields(out, at);
        put(out, at, &self.audio_volume.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Aimdk_msgsMsgCommonResponse::read_fields(bytes, at)?;
        value.reponse = decoded;
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.audio_volume = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Aimdk_msgsSrvGetVolume_Response {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 156 {
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
/// Complete bounded value for ROS2 aimdk_msgs/srv/LedStripCommand_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsSrvLedStripCommand_Request {
    /// Declared request; canonical bounds are part of CODEC_IDENTITY.
    pub request: Ros2Aimdk_msgsMsgCommonRequest,
    /// Declared led_strip_mode; canonical bounds are part of CODEC_IDENTITY.
    pub led_strip_mode: u8,
    /// Declared r; canonical bounds are part of CODEC_IDENTITY.
    pub r: u8,
    /// Declared g; canonical bounds are part of CODEC_IDENTITY.
    pub g: u8,
    /// Declared b; canonical bounds are part of CODEC_IDENTITY.
    pub b: u8,
}
impl Default for Ros2Aimdk_msgsSrvLedStripCommand_Request {
    fn default() -> Self {
        Self {
            request: Default::default(),
            led_strip_mode: Default::default(),
            r: Default::default(),
            g: Default::default(),
            b: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsSrvLedStripCommand_Request {
    pub const MAX_WIRE_BYTES: usize = 12;
    pub const CARTESIAN_WIRE_BYTES: u64 = 12;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_bd3167edba193b3ed932c8f6e841d229cf6e6574b2ce0c157d5f8bfc4cbc80a6";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.request.wire_size()?)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
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
        self.request.write_fields(out, at);
        put(out, at, &self.led_strip_mode.to_le_bytes());
        put(out, at, &self.r.to_le_bytes());
        put(out, at, &self.g.to_le_bytes());
        put(out, at, &self.b.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Aimdk_msgsMsgCommonRequest::read_fields(bytes, at)?;
        value.request = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.led_strip_mode = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.r = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.g = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.b = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Aimdk_msgsSrvLedStripCommand_Request {
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
/// Complete bounded value for ROS2 aimdk_msgs/srv/LedStripCommand_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsSrvLedStripCommand_Response {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros2Aimdk_msgsMsgResponseHeader,
    /// Declared status_code; canonical bounds are part of CODEC_IDENTITY.
    pub status_code: u16,
}
impl Default for Ros2Aimdk_msgsSrvLedStripCommand_Response {
    fn default() -> Self {
        Self {
            header: Default::default(),
            status_code: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsSrvLedStripCommand_Response {
    pub const MAX_WIRE_BYTES: usize = 18;
    pub const CARTESIAN_WIRE_BYTES: u64 = 18;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_3e08fb0103545c0d4e1558eba1dd8adad52f90ef083e7e8fb336087386e3c2a9";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        n = add_size(n, 2)?;
        if n > 18 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
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
        put(out, at, &self.status_code.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Aimdk_msgsMsgResponseHeader::read_fields(bytes, at)?;
        value.header = decoded;
        let decoded = u16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.status_code = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Aimdk_msgsSrvLedStripCommand_Response {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 18 {
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
/// Complete bounded value for ROS2 aimdk_msgs/srv/PlayEmoji_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsSrvPlayEmoji_Request {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros2Aimdk_msgsMsgCommonRequest,
    /// Declared emotion_id; canonical bounds are part of CODEC_IDENTITY.
    pub emotion_id: u8,
    /// Declared mode; canonical bounds are part of CODEC_IDENTITY.
    pub mode: u8,
    /// Declared priority; canonical bounds are part of CODEC_IDENTITY.
    pub priority: i32,
}
impl Default for Ros2Aimdk_msgsSrvPlayEmoji_Request {
    fn default() -> Self {
        Self {
            header: Default::default(),
            emotion_id: Default::default(),
            mode: Default::default(),
            priority: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsSrvPlayEmoji_Request {
    pub const MAX_WIRE_BYTES: usize = 14;
    pub const CARTESIAN_WIRE_BYTES: u64 = 14;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_ba31bdc232369e170ee9fb00ac8e51639d81a657de8f6e61f9acfccc2a083d43";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 4)?;
        if n > 14 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
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
        put(out, at, &self.emotion_id.to_le_bytes());
        put(out, at, &self.mode.to_le_bytes());
        put(out, at, &self.priority.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Aimdk_msgsMsgCommonRequest::read_fields(bytes, at)?;
        value.header = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.emotion_id = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.mode = decoded;
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.priority = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Aimdk_msgsSrvPlayEmoji_Request {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 14 {
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
/// Complete bounded value for ROS2 aimdk_msgs/srv/PlayEmoji_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsSrvPlayEmoji_Response {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros2Aimdk_msgsMsgCommonResponse,
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
    /// Declared message; canonical bounds are part of CODEC_IDENTITY.
    pub message: String,
}
impl Default for Ros2Aimdk_msgsSrvPlayEmoji_Response {
    fn default() -> Self {
        Self {
            header: Default::default(),
            success: Default::default(),
            message: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsSrvPlayEmoji_Response {
    pub const MAX_WIRE_BYTES: usize = 285;
    pub const CARTESIAN_WIRE_BYTES: u64 = 285;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_5e5ba0082cf9bf5d9b9c7eae034efd76bd44503306bb4994e06862a802cfb6b9";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        n = add_size(n, 1)?;
        if self.message.len() > 128 || self.message.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.message.len())?;
        if n > 285 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
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
        put(out, at, &[u8::from(self.success)]);
        put(out, at, &(self.message.len() as u32).to_le_bytes());
        put(out, at, self.message.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Aimdk_msgsMsgCommonResponse::read_fields(bytes, at)?;
        value.header = decoded;
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
impl Canonical for Ros2Aimdk_msgsSrvPlayEmoji_Response {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 285 {
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
/// Complete bounded value for ROS2 aimdk_msgs/srv/PlayMediaFile_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsSrvPlayMediaFile_Request {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros2Aimdk_msgsMsgCommonRequest,
    /// Declared media_file_req; canonical bounds are part of CODEC_IDENTITY.
    pub media_file_req: Ros2Aimdk_msgsMsgPlayMediaFileRequest,
}
impl Default for Ros2Aimdk_msgsSrvPlayMediaFile_Request {
    fn default() -> Self {
        Self {
            header: Default::default(),
            media_file_req: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsSrvPlayMediaFile_Request {
    pub const MAX_WIRE_BYTES: usize = 414;
    pub const CARTESIAN_WIRE_BYTES: u64 = 414;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_546706b9797f99c98a014f9849171aef262775e8ab702cfe6517d92f5047247c";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        n = add_size(n, self.media_file_req.wire_size()?)?;
        if n > 414 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
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
        self.media_file_req.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Aimdk_msgsMsgCommonRequest::read_fields(bytes, at)?;
        value.header = decoded;
        let decoded = Ros2Aimdk_msgsMsgPlayMediaFileRequest::read_fields(bytes, at)?;
        value.media_file_req = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Aimdk_msgsSrvPlayMediaFile_Request {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 414 {
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
/// Complete bounded value for ROS2 aimdk_msgs/srv/PlayMediaFile_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsSrvPlayMediaFile_Response {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros2Aimdk_msgsMsgCommonResponse,
    /// Declared tts_resp; canonical bounds are part of CODEC_IDENTITY.
    pub tts_resp: Ros2Aimdk_msgsMsgPlayTtsResponse,
}
impl Default for Ros2Aimdk_msgsSrvPlayMediaFile_Response {
    fn default() -> Self {
        Self {
            header: Default::default(),
            tts_resp: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsSrvPlayMediaFile_Response {
    pub const MAX_WIRE_BYTES: usize = 690;
    pub const CARTESIAN_WIRE_BYTES: u64 = 690;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_124871324704ab61f208168e64d4789376b3935b34895e824996e07561795099";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        n = add_size(n, self.tts_resp.wire_size()?)?;
        if n > 690 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
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
        self.tts_resp.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Aimdk_msgsMsgCommonResponse::read_fields(bytes, at)?;
        value.header = decoded;
        let decoded = Ros2Aimdk_msgsMsgPlayTtsResponse::read_fields(bytes, at)?;
        value.tts_resp = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Aimdk_msgsSrvPlayMediaFile_Response {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 690 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 50 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS2 aimdk_msgs/srv/PlayTts_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsSrvPlayTts_Request {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros2Aimdk_msgsMsgCommonRequest,
    /// Declared tts_req; canonical bounds are part of CODEC_IDENTITY.
    pub tts_req: Ros2Aimdk_msgsMsgPlayTtsRequest,
}
impl Default for Ros2Aimdk_msgsSrvPlayTts_Request {
    fn default() -> Self {
        Self {
            header: Default::default(),
            tts_req: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsSrvPlayTts_Request {
    pub const MAX_WIRE_BYTES: usize = 410;
    pub const CARTESIAN_WIRE_BYTES: u64 = 410;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_2325b475e9d2777afe139aff54b29254f3e0ac0fd1fa499db049cf535810c6f7";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        n = add_size(n, self.tts_req.wire_size()?)?;
        if n > 410 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
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
        self.tts_req.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Aimdk_msgsMsgCommonRequest::read_fields(bytes, at)?;
        value.header = decoded;
        let decoded = Ros2Aimdk_msgsMsgPlayTtsRequest::read_fields(bytes, at)?;
        value.tts_req = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Aimdk_msgsSrvPlayTts_Request {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 410 {
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
/// Complete bounded value for ROS2 aimdk_msgs/srv/PlayTts_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsSrvPlayTts_Response {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros2Aimdk_msgsMsgCommonResponse,
    /// Declared tts_resp; canonical bounds are part of CODEC_IDENTITY.
    pub tts_resp: Ros2Aimdk_msgsMsgPlayTtsResponse,
}
impl Default for Ros2Aimdk_msgsSrvPlayTts_Response {
    fn default() -> Self {
        Self {
            header: Default::default(),
            tts_resp: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsSrvPlayTts_Response {
    pub const MAX_WIRE_BYTES: usize = 690;
    pub const CARTESIAN_WIRE_BYTES: u64 = 690;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_a0587cd9d9294f30dc27c095bfc1acdf54d98b47cf4ac8ddd77b6b75530c290a";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        n = add_size(n, self.tts_resp.wire_size()?)?;
        if n > 690 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
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
        self.tts_resp.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Aimdk_msgsMsgCommonResponse::read_fields(bytes, at)?;
        value.header = decoded;
        let decoded = Ros2Aimdk_msgsMsgPlayTtsResponse::read_fields(bytes, at)?;
        value.tts_resp = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Aimdk_msgsSrvPlayTts_Response {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 690 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 50 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS2 aimdk_msgs/srv/PlayVideo_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsSrvPlayVideo_Request {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros2Aimdk_msgsMsgCommonRequest,
    /// Declared video_path; canonical bounds are part of CODEC_IDENTITY.
    pub video_path: String,
    /// Declared mode; canonical bounds are part of CODEC_IDENTITY.
    pub mode: u8,
    /// Declared priority; canonical bounds are part of CODEC_IDENTITY.
    pub priority: i32,
}
impl Default for Ros2Aimdk_msgsSrvPlayVideo_Request {
    fn default() -> Self {
        Self {
            header: Default::default(),
            video_path: Default::default(),
            mode: Default::default(),
            priority: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsSrvPlayVideo_Request {
    pub const MAX_WIRE_BYTES: usize = 145;
    pub const CARTESIAN_WIRE_BYTES: u64 = 145;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_a42348160bfed67c90f9ddc96beaca7b37e6099ba67c8c025d6ac0f95e6bc878";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        if self.video_path.len() > 128 || self.video_path.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.video_path.len())?;
        n = add_size(n, 1)?;
        n = add_size(n, 4)?;
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
        put(out, at, &(self.video_path.len() as u32).to_le_bytes());
        put(out, at, self.video_path.as_bytes());
        put(out, at, &self.mode.to_le_bytes());
        put(out, at, &self.priority.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Aimdk_msgsMsgCommonRequest::read_fields(bytes, at)?;
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
        value.video_path = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.mode = decoded;
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.priority = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Aimdk_msgsSrvPlayVideo_Request {
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
/// Complete bounded value for ROS2 aimdk_msgs/srv/PlayVideo_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsSrvPlayVideo_Response {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros2Aimdk_msgsMsgCommonResponse,
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
    /// Declared message; canonical bounds are part of CODEC_IDENTITY.
    pub message: String,
}
impl Default for Ros2Aimdk_msgsSrvPlayVideo_Response {
    fn default() -> Self {
        Self {
            header: Default::default(),
            success: Default::default(),
            message: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsSrvPlayVideo_Response {
    pub const MAX_WIRE_BYTES: usize = 285;
    pub const CARTESIAN_WIRE_BYTES: u64 = 285;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_f714873f193ca3ee0d02c822dbc3262033a2fe7913748ba177136a24d5b7f627";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        n = add_size(n, 1)?;
        if self.message.len() > 128 || self.message.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.message.len())?;
        if n > 285 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
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
        put(out, at, &[u8::from(self.success)]);
        put(out, at, &(self.message.len() as u32).to_le_bytes());
        put(out, at, self.message.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Aimdk_msgsMsgCommonResponse::read_fields(bytes, at)?;
        value.header = decoded;
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
impl Canonical for Ros2Aimdk_msgsSrvPlayVideo_Response {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 285 {
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
/// Complete bounded value for ROS2 aimdk_msgs/srv/SetAgentPropertiesRequest_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros2Aimdk_msgsMsgCommonRequest,
    /// Declared contents; canonical bounds are part of CODEC_IDENTITY.
    pub contents: Ros2Aimdk_msgsMsgAgentProperties,
}
impl Default for Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request {
    fn default() -> Self {
        Self {
            header: Default::default(),
            contents: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request {
    pub const MAX_WIRE_BYTES: usize = 544;
    pub const CARTESIAN_WIRE_BYTES: u64 = 544;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_965af85f35239b728d7b2ea3c8e995a7cd54d3254bc1e89d3eeb36612ada5dec";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        n = add_size(n, self.contents.wire_size()?)?;
        if n > 544 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
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
        self.contents.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Aimdk_msgsMsgCommonRequest::read_fields(bytes, at)?;
        value.header = decoded;
        let decoded = Ros2Aimdk_msgsMsgAgentProperties::read_fields(bytes, at)?;
        value.contents = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 544 {
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
/// Complete bounded value for ROS2 aimdk_msgs/srv/SetAgentPropertiesRequest_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros2Aimdk_msgsMsgCommonResponse,
}
impl Default for Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response {
    fn default() -> Self {
        Self {
            header: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response {
    pub const MAX_WIRE_BYTES: usize = 152;
    pub const CARTESIAN_WIRE_BYTES: u64 = 152;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_193eace6181c5da860dd9fa0d274415bdcb2246f7054acece8ae925414b0a81b";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
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
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Aimdk_msgsMsgCommonResponse::read_fields(bytes, at)?;
        value.header = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response {
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
/// Complete bounded value for ROS2 aimdk_msgs/srv/SetMcAction_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsSrvSetMcAction_Request {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros2Aimdk_msgsMsgRequestHeader,
    /// Declared command; canonical bounds are part of CODEC_IDENTITY.
    pub command: Ros2Aimdk_msgsMsgMcActionCommand,
}
impl Default for Ros2Aimdk_msgsSrvSetMcAction_Request {
    fn default() -> Self {
        Self {
            header: Default::default(),
            command: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsSrvSetMcAction_Request {
    pub const MAX_WIRE_BYTES: usize = 144;
    pub const CARTESIAN_WIRE_BYTES: u64 = 144;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_6ad0e14f9aefc0ae34c383eec4498c556c97757f03eb315b74977327691489d5";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        n = add_size(n, self.command.wire_size()?)?;
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
        self.header.write_fields(out, at);
        self.command.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Aimdk_msgsMsgRequestHeader::read_fields(bytes, at)?;
        value.header = decoded;
        let decoded = Ros2Aimdk_msgsMsgMcActionCommand::read_fields(bytes, at)?;
        value.command = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Aimdk_msgsSrvSetMcAction_Request {
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
/// Complete bounded value for ROS2 aimdk_msgs/srv/SetMcAction_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsSrvSetMcAction_Response {
    /// Declared response; canonical bounds are part of CODEC_IDENTITY.
    pub response: Ros2Aimdk_msgsMsgCommonResponse,
}
impl Default for Ros2Aimdk_msgsSrvSetMcAction_Response {
    fn default() -> Self {
        Self {
            response: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsSrvSetMcAction_Response {
    pub const MAX_WIRE_BYTES: usize = 152;
    pub const CARTESIAN_WIRE_BYTES: u64 = 152;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_64c336314ea7d3635494d1e3f9da9b23442653033e3ddfb0936440520141d24f";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.response.wire_size()?)?;
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
        self.response.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Aimdk_msgsMsgCommonResponse::read_fields(bytes, at)?;
        value.response = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Aimdk_msgsSrvSetMcAction_Response {
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
/// Complete bounded value for ROS2 aimdk_msgs/srv/SetMcInputSource_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsSrvSetMcInputSource_Request {
    /// Declared request; canonical bounds are part of CODEC_IDENTITY.
    pub request: Ros2Aimdk_msgsMsgCommonRequest,
    /// Declared action; canonical bounds are part of CODEC_IDENTITY.
    pub action: Ros2Aimdk_msgsMsgMcInputAction,
    /// Declared input_source; canonical bounds are part of CODEC_IDENTITY.
    pub input_source: Ros2Aimdk_msgsMsgMcInputSource,
}
impl Default for Ros2Aimdk_msgsSrvSetMcInputSource_Request {
    fn default() -> Self {
        Self {
            request: Default::default(),
            action: Default::default(),
            input_source: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsSrvSetMcInputSource_Request {
    pub const MAX_WIRE_BYTES: usize = 152;
    pub const CARTESIAN_WIRE_BYTES: u64 = 152;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_853ae368291aa7e14c665d3d47caad66ba626c086ad759180c31223a9785b021";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.request.wire_size()?)?;
        n = add_size(n, self.action.wire_size()?)?;
        n = add_size(n, self.input_source.wire_size()?)?;
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
        self.request.write_fields(out, at);
        self.action.write_fields(out, at);
        self.input_source.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Aimdk_msgsMsgCommonRequest::read_fields(bytes, at)?;
        value.request = decoded;
        let decoded = Ros2Aimdk_msgsMsgMcInputAction::read_fields(bytes, at)?;
        value.action = decoded;
        let decoded = Ros2Aimdk_msgsMsgMcInputSource::read_fields(bytes, at)?;
        value.input_source = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Aimdk_msgsSrvSetMcInputSource_Request {
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
/// Complete bounded value for ROS2 aimdk_msgs/srv/SetMcInputSource_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsSrvSetMcInputSource_Response {
    /// Declared response; canonical bounds are part of CODEC_IDENTITY.
    pub response: Ros2Aimdk_msgsMsgCommonTaskResponse,
}
impl Default for Ros2Aimdk_msgsSrvSetMcInputSource_Response {
    fn default() -> Self {
        Self {
            response: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsSrvSetMcInputSource_Response {
    pub const MAX_WIRE_BYTES: usize = 28;
    pub const CARTESIAN_WIRE_BYTES: u64 = 28;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_0c0764d24b86f57f3c2f1a59966a787113cf9411cf89f40d29a7708bf03650cb";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.response.wire_size()?)?;
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
        self.response.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Aimdk_msgsMsgCommonTaskResponse::read_fields(bytes, at)?;
        value.response = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Aimdk_msgsSrvSetMcInputSource_Response {
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
/// Complete bounded value for ROS2 aimdk_msgs/srv/SetMcPresetMotion_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsSrvSetMcPresetMotion_Request {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros2Aimdk_msgsMsgRequestHeader,
    /// Declared area; canonical bounds are part of CODEC_IDENTITY.
    pub area: Ros2Aimdk_msgsMsgMcControlArea,
    /// Declared motion; canonical bounds are part of CODEC_IDENTITY.
    pub motion: Ros2Aimdk_msgsMsgMcPresetMotion,
    /// Declared interrupt; canonical bounds are part of CODEC_IDENTITY.
    pub interrupt: bool,
    /// Declared ani_path; canonical bounds are part of CODEC_IDENTITY.
    pub ani_path: String,
}
impl Default for Ros2Aimdk_msgsSrvSetMcPresetMotion_Request {
    fn default() -> Self {
        Self {
            header: Default::default(),
            area: Default::default(),
            motion: Default::default(),
            interrupt: Default::default(),
            ani_path: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsSrvSetMcPresetMotion_Request {
    pub const MAX_WIRE_BYTES: usize = 149;
    pub const CARTESIAN_WIRE_BYTES: u64 = 149;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_f8789c1eb47184c1a1c219ac861b5551d22bdc624caf1f7022523160c6cd62ea";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        n = add_size(n, self.area.wire_size()?)?;
        n = add_size(n, self.motion.wire_size()?)?;
        n = add_size(n, 1)?;
        if self.ani_path.len() > 128 || self.ani_path.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.ani_path.len())?;
        if n > 149 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
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
        self.area.write_fields(out, at);
        self.motion.write_fields(out, at);
        put(out, at, &[u8::from(self.interrupt)]);
        put(out, at, &(self.ani_path.len() as u32).to_le_bytes());
        put(out, at, self.ani_path.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Aimdk_msgsMsgRequestHeader::read_fields(bytes, at)?;
        value.header = decoded;
        let decoded = Ros2Aimdk_msgsMsgMcControlArea::read_fields(bytes, at)?;
        value.area = decoded;
        let decoded = Ros2Aimdk_msgsMsgMcPresetMotion::read_fields(bytes, at)?;
        value.motion = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.interrupt = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.ani_path = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Aimdk_msgsSrvSetMcPresetMotion_Request {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 149 {
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
/// Complete bounded value for ROS2 aimdk_msgs/srv/SetMcPresetMotion_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsSrvSetMcPresetMotion_Response {
    /// Declared response; canonical bounds are part of CODEC_IDENTITY.
    pub response: Ros2Aimdk_msgsMsgCommonTaskResponse,
}
impl Default for Ros2Aimdk_msgsSrvSetMcPresetMotion_Response {
    fn default() -> Self {
        Self {
            response: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsSrvSetMcPresetMotion_Response {
    pub const MAX_WIRE_BYTES: usize = 28;
    pub const CARTESIAN_WIRE_BYTES: u64 = 28;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_9534060f44b6d36c7f0c585e7ce1f1e8b06a2561a2161a29fe6d0e4d22c77e85";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.response.wire_size()?)?;
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
        self.response.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Aimdk_msgsMsgCommonTaskResponse::read_fields(bytes, at)?;
        value.response = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Aimdk_msgsSrvSetMcPresetMotion_Response {
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
/// Complete bounded value for ROS2 aimdk_msgs/srv/SetMute_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsSrvSetMute_Request {
    /// Declared request; canonical bounds are part of CODEC_IDENTITY.
    pub request: Ros2Aimdk_msgsMsgCommonRequest,
    /// Declared is_mute; canonical bounds are part of CODEC_IDENTITY.
    pub is_mute: bool,
}
impl Default for Ros2Aimdk_msgsSrvSetMute_Request {
    fn default() -> Self {
        Self {
            request: Default::default(),
            is_mute: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsSrvSetMute_Request {
    pub const MAX_WIRE_BYTES: usize = 9;
    pub const CARTESIAN_WIRE_BYTES: u64 = 9;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_a37f6b638f226a9d150315baa5b11e6994422ba8f58541ac7b04df11e5c21fe3";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.request.wire_size()?)?;
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
        self.request.write_fields(out, at);
        put(out, at, &[u8::from(self.is_mute)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Aimdk_msgsMsgCommonRequest::read_fields(bytes, at)?;
        value.request = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.is_mute = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Aimdk_msgsSrvSetMute_Request {
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
/// Complete bounded value for ROS2 aimdk_msgs/srv/SetMute_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsSrvSetMute_Response {
    /// Declared reponse; canonical bounds are part of CODEC_IDENTITY.
    pub reponse: Ros2Aimdk_msgsMsgCommonResponse,
    /// Declared is_mute; canonical bounds are part of CODEC_IDENTITY.
    pub is_mute: bool,
}
impl Default for Ros2Aimdk_msgsSrvSetMute_Response {
    fn default() -> Self {
        Self {
            reponse: Default::default(),
            is_mute: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsSrvSetMute_Response {
    pub const MAX_WIRE_BYTES: usize = 153;
    pub const CARTESIAN_WIRE_BYTES: u64 = 153;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_0ba7d8046b7a0d23deb0b4cdb2ba5d144543a68a2468d657cc0b29f60efdca50";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.reponse.wire_size()?)?;
        n = add_size(n, 1)?;
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
        self.reponse.write_fields(out, at);
        put(out, at, &[u8::from(self.is_mute)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Aimdk_msgsMsgCommonResponse::read_fields(bytes, at)?;
        value.reponse = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.is_mute = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Aimdk_msgsSrvSetMute_Response {
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
/// Complete bounded value for ROS2 aimdk_msgs/srv/SetVolume_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsSrvSetVolume_Request {
    /// Declared request; canonical bounds are part of CODEC_IDENTITY.
    pub request: Ros2Aimdk_msgsMsgCommonRequest,
    /// Declared audio_volume; canonical bounds are part of CODEC_IDENTITY.
    pub audio_volume: u32,
}
impl Default for Ros2Aimdk_msgsSrvSetVolume_Request {
    fn default() -> Self {
        Self {
            request: Default::default(),
            audio_volume: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsSrvSetVolume_Request {
    pub const MAX_WIRE_BYTES: usize = 12;
    pub const CARTESIAN_WIRE_BYTES: u64 = 12;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_09161b7a7ae47ab702190725e42e27cd247f681702de05c4f68fa59581f85aad";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.request.wire_size()?)?;
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
        self.request.write_fields(out, at);
        put(out, at, &self.audio_volume.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Aimdk_msgsMsgCommonRequest::read_fields(bytes, at)?;
        value.request = decoded;
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.audio_volume = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Aimdk_msgsSrvSetVolume_Request {
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
/// Complete bounded value for ROS2 aimdk_msgs/srv/SetVolume_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Aimdk_msgsSrvSetVolume_Response {
    /// Declared reponse; canonical bounds are part of CODEC_IDENTITY.
    pub reponse: Ros2Aimdk_msgsMsgCommonResponse,
    /// Declared audio_volume; canonical bounds are part of CODEC_IDENTITY.
    pub audio_volume: u32,
}
impl Default for Ros2Aimdk_msgsSrvSetVolume_Response {
    fn default() -> Self {
        Self {
            reponse: Default::default(),
            audio_volume: Default::default(),
        }
    }
}
impl Ros2Aimdk_msgsSrvSetVolume_Response {
    pub const MAX_WIRE_BYTES: usize = 156;
    pub const CARTESIAN_WIRE_BYTES: u64 = 156;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_e5baf36b9fe876cfa8633c769aa7bcf085b813a7174de2bd6dd2026bc3744a1e";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.reponse.wire_size()?)?;
        n = add_size(n, 4)?;
        if n > 156 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
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
        self.reponse.write_fields(out, at);
        put(out, at, &self.audio_volume.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Aimdk_msgsMsgCommonResponse::read_fields(bytes, at)?;
        value.reponse = decoded;
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.audio_volume = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Aimdk_msgsSrvSetVolume_Response {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 156 {
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

impl Ros2Aimdk_msgsMsgAgentPropertyIdType {
    pub const AGENT_PROPERTY_UNDEFINED: u8 = 0;
    pub const AGENT_PROPERTY_LANGUAGE: u8 = 1;
    pub const AGENT_PROPERTY_RUN_MODE: u8 = 2;
    pub const AGENT_PROPERTY_GREET: u8 = 3;
    pub const AGENT_PROPERTY_HEAD_FOLLOW: u8 = 4;
    pub const AGENT_PROPERTY_DUPLEX_TIMEOUT: u8 = 5;
    pub const AGENT_PROPERTY_ENVIRONMENT_SWITCH: u8 = 6;
    pub const AGENT_PROPERTY_WELCOME_STATUS: u8 = 7;
}

impl Ros2Aimdk_msgsMsgAudioVadStateType {
    pub const AUDIO_VAD_STATE_NONE: u8 = 0;
    pub const AUDIO_VAD_STATE_BEGIN: u8 = 1;
    pub const AUDIO_VAD_STATE_PROCESSING: u8 = 2;
    pub const AUDIO_VAD_STATE_END: u8 = 3;
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

impl Ros2Aimdk_msgsMsgFaceEmojiStatus {
    pub const STATUS_IDLE: u8 = 0;
    pub const STATUS_START: u8 = 1;
    pub const STATUS_RUNNING: u8 = 2;
    pub const STATUS_FINISHED: u8 = 3;
    pub const STATUS_STOPPED: u8 = 4;
}

impl Ros2Aimdk_msgsMsgHandType {
    pub const NONE: u8 = 0;
    pub const NIMBLE_HANDS: u8 = 1;
    pub const CLAW: u8 = 2;
    pub const ERROR: u8 = 255;
}

impl Ros2Aimdk_msgsMsgMcAction {
    pub const PASSIVE_DEFAULT: i32 = 1;
    pub const SOFT_EMERGENCY_STOP: i32 = 2;
    pub const DAMPING_DEFAULT: i32 = 3;
    pub const ZERO_TORQUE_DEFAULT: i32 = 4;
    pub const JOINT_DEFAULT: i32 = 100;
    pub const JOINT_FREEZE: i32 = 101;
    pub const STAND_DEFAULT: i32 = 200;
    pub const STAND_BODY_CONTROL: i32 = 201;
    pub const LOCOMOTION_DEFAULT: i32 = 300;
    pub const RUN_DEFAULT: i32 = 301;
    pub const LOCOMOTION_STEP: i32 = 302;
    pub const VR_REMOTE_CONTROLLER: i32 = 400;
    pub const SIT_DOWN_DEFAULT: i32 = 2000;
    pub const CROUCH_DOWN_DEFAULT: i32 = 2002;
    pub const LIE_DOWN_DEFAULT: i32 = 2004;
    pub const STAND_UP_DEFAULT: i32 = 2005;
    pub const ASCEND_STAIRS: i32 = 2006;
    pub const DESCEND_STAIRS: i32 = 2008;
}

impl Ros2Aimdk_msgsMsgMcActionStatus {
    pub const IDLE: i32 = 0;
    pub const RUNNING: i32 = 100;
    pub const TRANSITION: i32 = 200;
}

impl Ros2Aimdk_msgsMsgMcControlArea {
    pub const NONE: i32 = 0;
    pub const LEFT_HAND: i32 = 1;
    pub const RIGHT_HAND: i32 = 2;
    pub const HEAD: i32 = 4;
    pub const WAIST: i32 = 8;
}

impl Ros2Aimdk_msgsMsgMcInputAction {
    pub const INPUTACTION_ADD: i32 = 1001;
    pub const INPUTACTION_MODIFY: i32 = 1002;
    pub const INPUTACTION_DELETE: i32 = 1003;
    pub const INPUTACTION_ENABLE: i32 = 2001;
    pub const INPUTACTION_DISABLE: i32 = 2002;
}

impl Ros2Aimdk_msgsMsgMcPresetMotion {
    pub const RAISE_HAND: i32 = 1001;
    pub const WAVE_HAND: i32 = 1002;
    pub const SHAKE_HAND: i32 = 1003;
    pub const FLYING_KISS_HAND: i32 = 1004;
    pub const CLAP_HAND: i32 = 1008;
    pub const TURN_WAVE_HAND: i32 = 2001;
    pub const INTERACTION_BOW: i32 = 3001;
    pub const INTERACTION_LIKE: i32 = 3002;
    pub const INTERACTION_YE: i32 = 3003;
    pub const INTERACTION_SWEATHEART: i32 = 3004;
    pub const SALUTE: i32 = 1013;
    pub const INTERACTION_SAD: i32 = 3006;
    pub const INTERACTION_LIGHTWAVE: i32 = 3007;
    pub const INTERACTION_HUG: i32 = 3008;
    pub const INTERACTION_HANDX: i32 = 3009;
    pub const INTERACTION_CHESTWAVE: i32 = 3010;
    pub const INTERACTION_CHEER: i32 = 3011;
    pub const INTERACTION_BLOWKISS: i32 = 3012;
    pub const INTERACTION_BASSDANCE1: i32 = 3013;
    pub const INTERACTION_BASSDANCE2: i32 = 3014;
    pub const HITCLAP: i32 = 3015;
    pub const INTERACTION_SPEAK: i32 = 3016;
    pub const CLIPFIST: i32 = 1009;
    pub const INTERACTION_PHOTOPOSTURE: i32 = 3018;
    pub const INTERACTION_PHOTOTRIPPLEPOSTURE: i32 = 3019;
    pub const POINT_HEAD: i32 = 4001;
    pub const SHAKE_HEAD: i32 = 4002;
}

impl Ros2Aimdk_msgsMsgTtsPriorityLevel {
    pub const UNKNOWN: u8 = 0;
    pub const BACKGROUND_L1: u8 = 1;
    pub const SERVICE_L2: u8 = 2;
    pub const MISSION_L4: u8 = 4;
    pub const INTERACTION_L6: u8 = 6;
    pub const WARNING_L8: u8 = 8;
    pub const SAFETY_L10: u8 = 10;
}

impl Ros2Aimdk_msgsMsgTouchState {
    pub const UNKNOWN: u8 = 0;
    pub const IDLE: u8 = 1;
    pub const TOUCH: u8 = 2;
    pub const SLIDE: u8 = 3;
    pub const PAT_ONCE: u8 = 4;
    pub const PAT_TWICE: u8 = 5;
    pub const PAT_TRIPLE: u8 = 6;
}

impl Ros2Aimdk_msgsSrvLedStripCommand_Request {
    pub const LED_STRIP_MODE_CONSTANT: u8 = 0;
    pub const LED_STRIP_MODE_BREATH: u8 = 1;
    pub const LED_STRIP_MODE_FLASH: u8 = 2;
    pub const LED_STRIP_MODE_FLOW: u8 = 3;
    pub const LED_STRIP_MODE_MAX: u8 = 4;
}

impl Ros2Aimdk_msgsSrvPlayEmoji_Request {
    pub const EMOTION_UNKNOWN: u8 = 0;
    pub const EMOTION_IDLE_BLINK: u8 = 1;
    pub const EMOTION_IDLE_CALM_1: u8 = 10;
    pub const EMOTION_IDLE_CALM_2: u8 = 11;
    pub const EMOTION_IDLE_GAME: u8 = 20;
    pub const EMOTION_IDLE_CUTE_1: u8 = 30;
    pub const EMOTION_IDLE_CUTE_2: u8 = 31;
    pub const EMOTION_IDLE_CUTE_3: u8 = 32;
    pub const EMOTION_IDLE_CUTE_4: u8 = 33;
    pub const EMOTION_EYE_CLOSE: u8 = 40;
    pub const EMOTION_EYE_OPEN: u8 = 50;
    pub const EMOTION_EYE_BORING_1: u8 = 60;
    pub const EMOTION_EYE_ABNORMAL: u8 = 70;
    pub const EMOTION_EYE_SLEEPY: u8 = 80;
    pub const EMOTION_EYE_HAPPY: u8 = 90;
    pub const EMOTION_EYE_EXTREMEHAPPY_1: u8 = 100;
    pub const EMOTION_EYE_EXTREMEHAPPY_2: u8 = 101;
    pub const EMOTION_EYE_SAD: u8 = 110;
    pub const EMOTION_EYE_SYMPATHY: u8 = 120;
    pub const EMOTION_EYE_CONFUSE: u8 = 130;
    pub const EMOTION_EYE_SHOCK: u8 = 140;
    pub const EMOTION_EYE_ACTCUTE: u8 = 150;
    pub const EMOTION_EYE_SERIOUS: u8 = 160;
    pub const EMOTION_EYE_THINKING: u8 = 170;
    pub const EMOTION_EYE_ANGRY: u8 = 180;
    pub const EMOTION_EYE_EXTREMEANGRY: u8 = 190;
    pub const EMOTION_EYE_ADORE: u8 = 200;
    pub const EMOTION_EYE_EXTREMEADORE: u8 = 210;
    pub const EMOTION_EYE_CHARGE: u8 = 220;
    pub const EMOTION_MODE_ONCE: u8 = 1;
    pub const EMOTION_MODE_LOOP: u8 = 2;
}

impl Ros2Aimdk_msgsSrvPlayVideo_Request {
    pub const EMOTION_MODE_ONCE: u8 = 1;
    pub const EMOTION_MODE_LOOP: u8 = 2;
}
