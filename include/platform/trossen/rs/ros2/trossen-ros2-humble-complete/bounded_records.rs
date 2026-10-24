//! @file bounded_records.rs
//! @brief Provide the complete trossen ros2_humble canonical value surface.
//! @details The original 30 record catalog retains field order, constants, defaults and quotas.
//! Borrowed values and buffers must remain stable while a conversion is in progress.
//! Malformed, truncated and trailing wire values are refused through the shared wire error contract.
//! No declaration grants a capability or establishes a native ROS registry identity.
//! Original declarations and units are retained in share/platform/trossen/catalogs.
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
/// Complete bounded value for ROS2 builtin_interfaces/msg/Duration.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Builtin_interfacesMsgDuration {
    /// Declared sec; canonical bounds are part of CODEC_IDENTITY.
    pub sec: i32,
    /// Declared nanosec; canonical bounds are part of CODEC_IDENTITY.
    pub nanosec: u32,
}
impl Default for Ros2Builtin_interfacesMsgDuration {
    fn default() -> Self {
        Self {
            sec: Default::default(),
            nanosec: Default::default(),
        }
    }
}
impl Ros2Builtin_interfacesMsgDuration {
    pub const MAX_WIRE_BYTES: usize = 8;
    pub const CARTESIAN_WIRE_BYTES: u64 = 8;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4";
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
impl Canonical for Ros2Builtin_interfacesMsgDuration {
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
/// Complete bounded value for ROS2 std_msgs/msg/Header.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Std_msgsMsgHeader {
    /// Declared stamp; canonical bounds are part of CODEC_IDENTITY.
    pub stamp: Ros2Builtin_interfacesMsgTime,
    /// Declared frame_id; canonical bounds are part of CODEC_IDENTITY.
    pub frame_id: String,
}
impl Default for Ros2Std_msgsMsgHeader {
    fn default() -> Self {
        Self {
            stamp: Default::default(),
            frame_id: Default::default(),
        }
    }
}
impl Ros2Std_msgsMsgHeader {
    pub const MAX_WIRE_BYTES: usize = 140;
    pub const CARTESIAN_WIRE_BYTES: u64 = 140;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.stamp.wire_size()?)?;
        if self.frame_id.len() > 128 || self.frame_id.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.frame_id.len())?;
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
        self.stamp.write_fields(out, at);
        put(out, at, &(self.frame_id.len() as u32).to_le_bytes());
        put(out, at, self.frame_id.as_bytes());
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
        Ok(value)
    }
}
impl Canonical for Ros2Std_msgsMsgHeader {
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
/// Complete bounded value for ROS2 interbotix_footswitch_msgs/msg/FootswitchState.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Interbotix_footswitch_msgsMsgFootswitchState {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros2Std_msgsMsgHeader,
    /// Declared state; canonical bounds are part of CODEC_IDENTITY.
    pub state: [bool; 3],
}
impl Default for Ros2Interbotix_footswitch_msgsMsgFootswitchState {
    fn default() -> Self {
        Self {
            header: Default::default(),
            state: core::array::from_fn(|_| Default::default()),
        }
    }
}
impl Ros2Interbotix_footswitch_msgsMsgFootswitchState {
    pub const MAX_WIRE_BYTES: usize = 143;
    pub const CARTESIAN_WIRE_BYTES: u64 = 143;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_aeea56b64e751aa1b141270177969582a2a36c66276565733efe2180c376842c";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        for element in &self.state {
            n = add_size(n, 1)?;
        }
        if n > 143 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
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
        for element in &self.state {
            put(out, at, &[u8::from(*element)]);
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Std_msgsMsgHeader::read_fields(bytes, at)?;
        value.header = decoded;
        {
            let count = 3usize;
            if count > 3 {
                return Err(invalid());
            }
            for i in 0..count {
                let byte = take(bytes, at, 1)?[0];
                if byte > 1 {
                    return Err(invalid());
                }
                let decoded = byte != 0;
                value.state[i] = decoded;
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Interbotix_footswitch_msgsMsgFootswitchState {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 143 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 15 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS2 interbotix_slate_msgs/srv/SetLightState_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Interbotix_slate_msgsSrvSetLightState_Request {
    /// Declared light_state; canonical bounds are part of CODEC_IDENTITY.
    pub light_state: u32,
}
impl Default for Ros2Interbotix_slate_msgsSrvSetLightState_Request {
    fn default() -> Self {
        Self { light_state: 0 }
    }
}
impl Ros2Interbotix_slate_msgsSrvSetLightState_Request {
    pub const MAX_WIRE_BYTES: usize = 4;
    pub const CARTESIAN_WIRE_BYTES: u64 = 4;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_ff7ce99b264f9f71c006b31b92a9f265c87345e85a97e0cbfe1bef87faada554";
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
        put(out, at, &self.light_state.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.light_state = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Interbotix_slate_msgsSrvSetLightState_Request {
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
/// Complete bounded value for ROS2 interbotix_slate_msgs/srv/SetLightState_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Interbotix_slate_msgsSrvSetLightState_Response {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
    /// Declared message; canonical bounds are part of CODEC_IDENTITY.
    pub message: String,
}
impl Default for Ros2Interbotix_slate_msgsSrvSetLightState_Response {
    fn default() -> Self {
        Self {
            success: Default::default(),
            message: Default::default(),
        }
    }
}
impl Ros2Interbotix_slate_msgsSrvSetLightState_Response {
    pub const MAX_WIRE_BYTES: usize = 133;
    pub const CARTESIAN_WIRE_BYTES: u64 = 133;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_66b8c031625c139338db9a44150a4a1bb3373aaab6138e19170bd4d73fcb9784";
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
impl Canonical for Ros2Interbotix_slate_msgsSrvSetLightState_Response {
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
/// Complete bounded value for ROS2 interbotix_slate_msgs/srv/SetString_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Interbotix_slate_msgsSrvSetString_Request {
    /// Declared data; canonical bounds are part of CODEC_IDENTITY.
    pub data: String,
}
impl Default for Ros2Interbotix_slate_msgsSrvSetString_Request {
    fn default() -> Self {
        Self {
            data: Default::default(),
        }
    }
}
impl Ros2Interbotix_slate_msgsSrvSetString_Request {
    pub const MAX_WIRE_BYTES: usize = 132;
    pub const CARTESIAN_WIRE_BYTES: u64 = 132;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_73dee49ce66919e9dbe833756a932f480d5a73370743eff8f6c18f86b9b33c45";
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
impl Canonical for Ros2Interbotix_slate_msgsSrvSetString_Request {
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
/// Complete bounded value for ROS2 interbotix_slate_msgs/srv/SetString_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Interbotix_slate_msgsSrvSetString_Response {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
    /// Declared message; canonical bounds are part of CODEC_IDENTITY.
    pub message: String,
}
impl Default for Ros2Interbotix_slate_msgsSrvSetString_Response {
    fn default() -> Self {
        Self {
            success: Default::default(),
            message: Default::default(),
        }
    }
}
impl Ros2Interbotix_slate_msgsSrvSetString_Response {
    pub const MAX_WIRE_BYTES: usize = 133;
    pub const CARTESIAN_WIRE_BYTES: u64 = 133;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_b25e0d761dc29daba23de652fec51f967a432fd13fe78a5ade79e7cdb00b4e33";
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
impl Canonical for Ros2Interbotix_slate_msgsSrvSetString_Response {
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
/// Complete bounded value for ROS2 interbotix_xs_msgs/msg/ArmJoy.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Interbotix_xs_msgsMsgArmJoy {
    /// Declared ee_x_cmd; canonical bounds are part of CODEC_IDENTITY.
    pub ee_x_cmd: i8,
    /// Declared ee_y_cmd; canonical bounds are part of CODEC_IDENTITY.
    pub ee_y_cmd: i8,
    /// Declared ee_z_cmd; canonical bounds are part of CODEC_IDENTITY.
    pub ee_z_cmd: i8,
    /// Declared ee_roll_cmd; canonical bounds are part of CODEC_IDENTITY.
    pub ee_roll_cmd: i8,
    /// Declared ee_pitch_cmd; canonical bounds are part of CODEC_IDENTITY.
    pub ee_pitch_cmd: i8,
    /// Declared waist_cmd; canonical bounds are part of CODEC_IDENTITY.
    pub waist_cmd: i8,
    /// Declared gripper_cmd; canonical bounds are part of CODEC_IDENTITY.
    pub gripper_cmd: i8,
    /// Declared pose_cmd; canonical bounds are part of CODEC_IDENTITY.
    pub pose_cmd: i8,
    /// Declared speed_cmd; canonical bounds are part of CODEC_IDENTITY.
    pub speed_cmd: i8,
    /// Declared speed_toggle_cmd; canonical bounds are part of CODEC_IDENTITY.
    pub speed_toggle_cmd: i8,
    /// Declared gripper_pwm_cmd; canonical bounds are part of CODEC_IDENTITY.
    pub gripper_pwm_cmd: i8,
    /// Declared torque_cmd; canonical bounds are part of CODEC_IDENTITY.
    pub torque_cmd: i8,
}
impl Default for Ros2Interbotix_xs_msgsMsgArmJoy {
    fn default() -> Self {
        Self {
            ee_x_cmd: Default::default(),
            ee_y_cmd: Default::default(),
            ee_z_cmd: Default::default(),
            ee_roll_cmd: Default::default(),
            ee_pitch_cmd: Default::default(),
            waist_cmd: Default::default(),
            gripper_cmd: Default::default(),
            pose_cmd: Default::default(),
            speed_cmd: Default::default(),
            speed_toggle_cmd: Default::default(),
            gripper_pwm_cmd: Default::default(),
            torque_cmd: Default::default(),
        }
    }
}
impl Ros2Interbotix_xs_msgsMsgArmJoy {
    pub const MAX_WIRE_BYTES: usize = 12;
    pub const CARTESIAN_WIRE_BYTES: u64 = 12;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_26c3b0f22cf87c464b8cfa99b6de6ba7bc16efe7244ab36828c98e1518d69b1f";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
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
        put(out, at, &self.ee_x_cmd.to_le_bytes());
        put(out, at, &self.ee_y_cmd.to_le_bytes());
        put(out, at, &self.ee_z_cmd.to_le_bytes());
        put(out, at, &self.ee_roll_cmd.to_le_bytes());
        put(out, at, &self.ee_pitch_cmd.to_le_bytes());
        put(out, at, &self.waist_cmd.to_le_bytes());
        put(out, at, &self.gripper_cmd.to_le_bytes());
        put(out, at, &self.pose_cmd.to_le_bytes());
        put(out, at, &self.speed_cmd.to_le_bytes());
        put(out, at, &self.speed_toggle_cmd.to_le_bytes());
        put(out, at, &self.gripper_pwm_cmd.to_le_bytes());
        put(out, at, &self.torque_cmd.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.ee_x_cmd = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.ee_y_cmd = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.ee_z_cmd = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.ee_roll_cmd = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.ee_pitch_cmd = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.waist_cmd = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.gripper_cmd = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.pose_cmd = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.speed_cmd = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.speed_toggle_cmd = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.gripper_pwm_cmd = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.torque_cmd = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Interbotix_xs_msgsMsgArmJoy {
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
/// Complete bounded value for ROS2 interbotix_xs_msgs/msg/HexJoy.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Interbotix_xs_msgsMsgHexJoy {
    /// Declared world_x_cmd; canonical bounds are part of CODEC_IDENTITY.
    pub world_x_cmd: i8,
    /// Declared world_y_cmd; canonical bounds are part of CODEC_IDENTITY.
    pub world_y_cmd: i8,
    /// Declared world_yaw_cmd; canonical bounds are part of CODEC_IDENTITY.
    pub world_yaw_cmd: i8,
    /// Declared place_x_cmd; canonical bounds are part of CODEC_IDENTITY.
    pub place_x_cmd: i8,
    /// Declared place_y_cmd; canonical bounds are part of CODEC_IDENTITY.
    pub place_y_cmd: i8,
    /// Declared place_z_cmd; canonical bounds are part of CODEC_IDENTITY.
    pub place_z_cmd: i8,
    /// Declared place_roll_cmd; canonical bounds are part of CODEC_IDENTITY.
    pub place_roll_cmd: i8,
    /// Declared place_pitch_cmd; canonical bounds are part of CODEC_IDENTITY.
    pub place_pitch_cmd: i8,
    /// Declared pose_cmd; canonical bounds are part of CODEC_IDENTITY.
    pub pose_cmd: i8,
    /// Declared move_type_cmd; canonical bounds are part of CODEC_IDENTITY.
    pub move_type_cmd: i8,
    /// Declared gait_toggle_cmd; canonical bounds are part of CODEC_IDENTITY.
    pub gait_toggle_cmd: i8,
    /// Declared leg_toggle_cmd; canonical bounds are part of CODEC_IDENTITY.
    pub leg_toggle_cmd: i8,
    /// Declared stance_cmd; canonical bounds are part of CODEC_IDENTITY.
    pub stance_cmd: i8,
    /// Declared reboot_cmd; canonical bounds are part of CODEC_IDENTITY.
    pub reboot_cmd: i8,
    /// Declared set_home_pose_cmd; canonical bounds are part of CODEC_IDENTITY.
    pub set_home_pose_cmd: i8,
    /// Declared speed_cmd; canonical bounds are part of CODEC_IDENTITY.
    pub speed_cmd: i8,
    /// Declared speed_toggle_cmd; canonical bounds are part of CODEC_IDENTITY.
    pub speed_toggle_cmd: i8,
}
impl Default for Ros2Interbotix_xs_msgsMsgHexJoy {
    fn default() -> Self {
        Self {
            world_x_cmd: Default::default(),
            world_y_cmd: Default::default(),
            world_yaw_cmd: Default::default(),
            place_x_cmd: Default::default(),
            place_y_cmd: Default::default(),
            place_z_cmd: Default::default(),
            place_roll_cmd: Default::default(),
            place_pitch_cmd: Default::default(),
            pose_cmd: Default::default(),
            move_type_cmd: Default::default(),
            gait_toggle_cmd: Default::default(),
            leg_toggle_cmd: Default::default(),
            stance_cmd: Default::default(),
            reboot_cmd: Default::default(),
            set_home_pose_cmd: Default::default(),
            speed_cmd: Default::default(),
            speed_toggle_cmd: Default::default(),
        }
    }
}
impl Ros2Interbotix_xs_msgsMsgHexJoy {
    pub const MAX_WIRE_BYTES: usize = 17;
    pub const CARTESIAN_WIRE_BYTES: u64 = 17;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_17c4cc565057e8b555ae945fdad4c8010a26dc411ad2fcc6da2edb9a1d9e9e3d";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
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
        put(out, at, &self.world_x_cmd.to_le_bytes());
        put(out, at, &self.world_y_cmd.to_le_bytes());
        put(out, at, &self.world_yaw_cmd.to_le_bytes());
        put(out, at, &self.place_x_cmd.to_le_bytes());
        put(out, at, &self.place_y_cmd.to_le_bytes());
        put(out, at, &self.place_z_cmd.to_le_bytes());
        put(out, at, &self.place_roll_cmd.to_le_bytes());
        put(out, at, &self.place_pitch_cmd.to_le_bytes());
        put(out, at, &self.pose_cmd.to_le_bytes());
        put(out, at, &self.move_type_cmd.to_le_bytes());
        put(out, at, &self.gait_toggle_cmd.to_le_bytes());
        put(out, at, &self.leg_toggle_cmd.to_le_bytes());
        put(out, at, &self.stance_cmd.to_le_bytes());
        put(out, at, &self.reboot_cmd.to_le_bytes());
        put(out, at, &self.set_home_pose_cmd.to_le_bytes());
        put(out, at, &self.speed_cmd.to_le_bytes());
        put(out, at, &self.speed_toggle_cmd.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.world_x_cmd = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.world_y_cmd = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.world_yaw_cmd = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.place_x_cmd = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.place_y_cmd = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.place_z_cmd = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.place_roll_cmd = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.place_pitch_cmd = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.pose_cmd = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.move_type_cmd = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.gait_toggle_cmd = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.leg_toggle_cmd = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.stance_cmd = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.reboot_cmd = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.set_home_pose_cmd = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.speed_cmd = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.speed_toggle_cmd = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Interbotix_xs_msgsMsgHexJoy {
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
/// Complete bounded value for ROS2 interbotix_xs_msgs/msg/JointGroupCommand.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Interbotix_xs_msgsMsgJointGroupCommand {
    /// Declared name; canonical bounds are part of CODEC_IDENTITY.
    pub name: String,
    /// Declared cmd; canonical bounds are part of CODEC_IDENTITY.
    pub cmd: Vec<f32>,
}
impl Default for Ros2Interbotix_xs_msgsMsgJointGroupCommand {
    fn default() -> Self {
        Self {
            name: Default::default(),
            cmd: Default::default(),
        }
    }
}
impl Ros2Interbotix_xs_msgsMsgJointGroupCommand {
    pub const MAX_WIRE_BYTES: usize = 392;
    pub const CARTESIAN_WIRE_BYTES: u64 = 392;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_c038aeca8eb91f06dab5c70f8ed6b181442d0405df86ab2a19c20c076fffc42a";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.name.len() > 128 || self.name.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.name.len())?;
        if self.cmd.len() > 64 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.cmd {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
        }
        if n > 392 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
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
        put(out, at, &(self.cmd.len() as u32).to_le_bytes());
        for element in &self.cmd {
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
            if count > 64 {
                return Err(invalid());
            }
            value.cmd = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.cmd.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Interbotix_xs_msgsMsgJointGroupCommand {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 392 {
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
/// Complete bounded value for ROS2 interbotix_xs_msgs/msg/JointSingleCommand.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Interbotix_xs_msgsMsgJointSingleCommand {
    /// Declared name; canonical bounds are part of CODEC_IDENTITY.
    pub name: String,
    /// Declared cmd; canonical bounds are part of CODEC_IDENTITY.
    pub cmd: f32,
}
impl Default for Ros2Interbotix_xs_msgsMsgJointSingleCommand {
    fn default() -> Self {
        Self {
            name: Default::default(),
            cmd: Default::default(),
        }
    }
}
impl Ros2Interbotix_xs_msgsMsgJointSingleCommand {
    pub const MAX_WIRE_BYTES: usize = 136;
    pub const CARTESIAN_WIRE_BYTES: u64 = 136;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_6c5900103b35fd916f22997cb42cf48016f35edb4783012c1a9029486c03ac94";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.name.len() > 128 || self.name.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.name.len())?;
        if !self.cmd.is_finite() {
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
        put(out, at, &(self.name.len() as u32).to_le_bytes());
        put(out, at, self.name.as_bytes());
        put(out, at, &self.cmd.to_le_bytes());
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
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.cmd = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Interbotix_xs_msgsMsgJointSingleCommand {
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
/// Complete bounded value for ROS2 interbotix_xs_msgs/msg/JointTemps.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Interbotix_xs_msgsMsgJointTemps {
    /// Declared names; canonical bounds are part of CODEC_IDENTITY.
    pub names: Vec<String>,
    /// Declared temps; canonical bounds are part of CODEC_IDENTITY.
    pub temps: Vec<i32>,
}
impl Default for Ros2Interbotix_xs_msgsMsgJointTemps {
    fn default() -> Self {
        Self {
            names: Default::default(),
            temps: Default::default(),
        }
    }
}
impl Ros2Interbotix_xs_msgsMsgJointTemps {
    pub const MAX_WIRE_BYTES: usize = 8712;
    pub const CARTESIAN_WIRE_BYTES: u64 = 8712;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_e38f321a150c349a7bc72bbe45d004ac18cd2f147bf4cb73b1d53428a63fd2e4";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.names.len() > 64 {
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
        if self.temps.len() > 64 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.temps {
            n = add_size(n, 4)?;
        }
        if n > 8712 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.names.len() as u32).to_le_bytes());
        for element in &self.names {
            put(out, at, &(element.len() as u32).to_le_bytes());
            put(out, at, element.as_bytes());
        }
        put(out, at, &(self.temps.len() as u32).to_le_bytes());
        for element in &self.temps {
            put(out, at, &element.to_le_bytes());
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = read_count(bytes, at)?;
            if count > 64 {
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
            if count > 64 {
                return Err(invalid());
            }
            value.temps = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                value.temps.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Interbotix_xs_msgsMsgJointTemps {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 8712 {
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
/// Complete bounded value for ROS2 trajectory_msgs/msg/JointTrajectoryPoint.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Trajectory_msgsMsgJointTrajectoryPoint {
    /// Declared positions; canonical bounds are part of CODEC_IDENTITY.
    pub positions: Vec<f64>,
    /// Declared velocities; canonical bounds are part of CODEC_IDENTITY.
    pub velocities: Vec<f64>,
    /// Declared accelerations; canonical bounds are part of CODEC_IDENTITY.
    pub accelerations: Vec<f64>,
    /// Declared effort; canonical bounds are part of CODEC_IDENTITY.
    pub effort: Vec<f64>,
    /// Declared time_from_start; canonical bounds are part of CODEC_IDENTITY.
    pub time_from_start: Ros2Builtin_interfacesMsgDuration,
}
impl Default for Ros2Trajectory_msgsMsgJointTrajectoryPoint {
    fn default() -> Self {
        Self {
            positions: Default::default(),
            velocities: Default::default(),
            accelerations: Default::default(),
            effort: Default::default(),
            time_from_start: Default::default(),
        }
    }
}
impl Ros2Trajectory_msgsMsgJointTrajectoryPoint {
    pub const MAX_WIRE_BYTES: usize = 536;
    pub const CARTESIAN_WIRE_BYTES: u64 = 536;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_1fb219d3c64ec5983d869f0636700f9acc71296a1c104bf39a3a5dd6df7098f1";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.positions.len() > 16 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.positions {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if self.velocities.len() > 16 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.velocities {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if self.accelerations.len() > 16 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.accelerations {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if self.effort.len() > 16 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.effort {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        n = add_size(n, self.time_from_start.wire_size()?)?;
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
        put(out, at, &(self.positions.len() as u32).to_le_bytes());
        for element in &self.positions {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &(self.velocities.len() as u32).to_le_bytes());
        for element in &self.velocities {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &(self.accelerations.len() as u32).to_le_bytes());
        for element in &self.accelerations {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &(self.effort.len() as u32).to_le_bytes());
        for element in &self.effort {
            put(out, at, &element.to_le_bytes());
        }
        self.time_from_start.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = read_count(bytes, at)?;
            if count > 16 {
                return Err(invalid());
            }
            value.positions = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.positions.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 16 {
                return Err(invalid());
            }
            value.velocities = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.velocities.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 16 {
                return Err(invalid());
            }
            value.accelerations = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.accelerations.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 16 {
                return Err(invalid());
            }
            value.effort = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.effort.push(decoded);
            }
        }
        let decoded = Ros2Builtin_interfacesMsgDuration::read_fields(bytes, at)?;
        value.time_from_start = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Trajectory_msgsMsgJointTrajectoryPoint {
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
/// Complete bounded value for ROS2 trajectory_msgs/msg/JointTrajectory.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Trajectory_msgsMsgJointTrajectory {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros2Std_msgsMsgHeader,
    /// Declared joint_names; canonical bounds are part of CODEC_IDENTITY.
    pub joint_names: Vec<String>,
    /// Declared points; canonical bounds are part of CODEC_IDENTITY.
    pub points: Vec<Ros2Trajectory_msgsMsgJointTrajectoryPoint>,
}
impl Default for Ros2Trajectory_msgsMsgJointTrajectory {
    fn default() -> Self {
        Self {
            header: Default::default(),
            joint_names: Default::default(),
            points: Default::default(),
        }
    }
}
impl Ros2Trajectory_msgsMsgJointTrajectory {
    pub const MAX_WIRE_BYTES: usize = 4404;
    pub const CARTESIAN_WIRE_BYTES: u64 = 4404;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_98c0ef27ef94ae8fb4dd663b60fe91b607e56f32a68618f0e6eb975341b64ba7";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        if self.joint_names.len() > 16 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.joint_names {
            if element.len() > 128 || element.as_bytes().contains(&0) {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
            n = add_size(n, element.len())?;
        }
        if self.points.len() > 4 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.points {
            n = add_size(n, element.wire_size()?)?;
        }
        if n > 4404 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
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
        put(out, at, &(self.joint_names.len() as u32).to_le_bytes());
        for element in &self.joint_names {
            put(out, at, &(element.len() as u32).to_le_bytes());
            put(out, at, element.as_bytes());
        }
        put(out, at, &(self.points.len() as u32).to_le_bytes());
        for element in &self.points {
            element.write_fields(out, at);
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Std_msgsMsgHeader::read_fields(bytes, at)?;
        value.header = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 16 {
                return Err(invalid());
            }
            value.joint_names = Vec::with_capacity(count);
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
                value.joint_names.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 4 {
                return Err(invalid());
            }
            value.points = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros2Trajectory_msgsMsgJointTrajectoryPoint::read_fields(bytes, at)?;
                value.points.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Trajectory_msgsMsgJointTrajectory {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 4404 {
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
/// Complete bounded value for ROS2 interbotix_xs_msgs/msg/JointTrajectoryCommand.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand {
    /// Declared cmd_type; canonical bounds are part of CODEC_IDENTITY.
    pub cmd_type: String,
    /// Declared name; canonical bounds are part of CODEC_IDENTITY.
    pub name: String,
    /// Declared traj; canonical bounds are part of CODEC_IDENTITY.
    pub traj: Ros2Trajectory_msgsMsgJointTrajectory,
}
impl Default for Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand {
    fn default() -> Self {
        Self {
            cmd_type: Default::default(),
            name: Default::default(),
            traj: Default::default(),
        }
    }
}
impl Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand {
    pub const MAX_WIRE_BYTES: usize = 4668;
    pub const CARTESIAN_WIRE_BYTES: u64 = 4668;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_5695ab0bcd0212bf0fe4ab801303714958f3c862845fefa13078ea8514076f52";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.cmd_type.len() > 128 || self.cmd_type.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.cmd_type.len())?;
        if self.name.len() > 128 || self.name.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.name.len())?;
        n = add_size(n, self.traj.wire_size()?)?;
        if n > 4668 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.cmd_type.len() as u32).to_le_bytes());
        put(out, at, self.cmd_type.as_bytes());
        put(out, at, &(self.name.len() as u32).to_le_bytes());
        put(out, at, self.name.as_bytes());
        self.traj.write_fields(out, at);
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
        value.cmd_type = decoded;
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
        let decoded = Ros2Trajectory_msgsMsgJointTrajectory::read_fields(bytes, at)?;
        value.traj = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 4668 {
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
/// Complete bounded value for ROS2 interbotix_xs_msgs/msg/LocobotJoy.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Interbotix_xs_msgsMsgLocobotJoy {
    /// Declared base_x_cmd; canonical bounds are part of CODEC_IDENTITY.
    pub base_x_cmd: f64,
    /// Declared base_theta_cmd; canonical bounds are part of CODEC_IDENTITY.
    pub base_theta_cmd: f64,
    /// Declared base_reset_odom_cmd; canonical bounds are part of CODEC_IDENTITY.
    pub base_reset_odom_cmd: i8,
    /// Declared pan_cmd; canonical bounds are part of CODEC_IDENTITY.
    pub pan_cmd: i8,
    /// Declared tilt_cmd; canonical bounds are part of CODEC_IDENTITY.
    pub tilt_cmd: i8,
    /// Declared ee_x_cmd; canonical bounds are part of CODEC_IDENTITY.
    pub ee_x_cmd: i8,
    /// Declared ee_y_cmd; canonical bounds are part of CODEC_IDENTITY.
    pub ee_y_cmd: i8,
    /// Declared ee_z_cmd; canonical bounds are part of CODEC_IDENTITY.
    pub ee_z_cmd: i8,
    /// Declared ee_roll_cmd; canonical bounds are part of CODEC_IDENTITY.
    pub ee_roll_cmd: i8,
    /// Declared ee_pitch_cmd; canonical bounds are part of CODEC_IDENTITY.
    pub ee_pitch_cmd: i8,
    /// Declared waist_cmd; canonical bounds are part of CODEC_IDENTITY.
    pub waist_cmd: i8,
    /// Declared gripper_cmd; canonical bounds are part of CODEC_IDENTITY.
    pub gripper_cmd: i8,
    /// Declared pose_cmd; canonical bounds are part of CODEC_IDENTITY.
    pub pose_cmd: i8,
    /// Declared speed_cmd; canonical bounds are part of CODEC_IDENTITY.
    pub speed_cmd: i8,
    /// Declared speed_toggle_cmd; canonical bounds are part of CODEC_IDENTITY.
    pub speed_toggle_cmd: i8,
    /// Declared gripper_pwm_cmd; canonical bounds are part of CODEC_IDENTITY.
    pub gripper_pwm_cmd: i8,
}
impl Default for Ros2Interbotix_xs_msgsMsgLocobotJoy {
    fn default() -> Self {
        Self {
            base_x_cmd: Default::default(),
            base_theta_cmd: Default::default(),
            base_reset_odom_cmd: Default::default(),
            pan_cmd: Default::default(),
            tilt_cmd: Default::default(),
            ee_x_cmd: Default::default(),
            ee_y_cmd: Default::default(),
            ee_z_cmd: Default::default(),
            ee_roll_cmd: Default::default(),
            ee_pitch_cmd: Default::default(),
            waist_cmd: Default::default(),
            gripper_cmd: Default::default(),
            pose_cmd: Default::default(),
            speed_cmd: Default::default(),
            speed_toggle_cmd: Default::default(),
            gripper_pwm_cmd: Default::default(),
        }
    }
}
impl Ros2Interbotix_xs_msgsMsgLocobotJoy {
    pub const MAX_WIRE_BYTES: usize = 30;
    pub const CARTESIAN_WIRE_BYTES: u64 = 30;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_5a2637e1298987f966f0c70e1c2f37d6077d2ce531012b18349b5354f3189633";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if !self.base_x_cmd.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.base_theta_cmd.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        if n > 30 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.base_x_cmd.to_le_bytes());
        put(out, at, &self.base_theta_cmd.to_le_bytes());
        put(out, at, &self.base_reset_odom_cmd.to_le_bytes());
        put(out, at, &self.pan_cmd.to_le_bytes());
        put(out, at, &self.tilt_cmd.to_le_bytes());
        put(out, at, &self.ee_x_cmd.to_le_bytes());
        put(out, at, &self.ee_y_cmd.to_le_bytes());
        put(out, at, &self.ee_z_cmd.to_le_bytes());
        put(out, at, &self.ee_roll_cmd.to_le_bytes());
        put(out, at, &self.ee_pitch_cmd.to_le_bytes());
        put(out, at, &self.waist_cmd.to_le_bytes());
        put(out, at, &self.gripper_cmd.to_le_bytes());
        put(out, at, &self.pose_cmd.to_le_bytes());
        put(out, at, &self.speed_cmd.to_le_bytes());
        put(out, at, &self.speed_toggle_cmd.to_le_bytes());
        put(out, at, &self.gripper_pwm_cmd.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.base_x_cmd = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.base_theta_cmd = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.base_reset_odom_cmd = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.pan_cmd = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.tilt_cmd = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.ee_x_cmd = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.ee_y_cmd = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.ee_z_cmd = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.ee_roll_cmd = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.ee_pitch_cmd = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.waist_cmd = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.gripper_cmd = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.pose_cmd = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.speed_cmd = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.speed_toggle_cmd = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.gripper_pwm_cmd = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Interbotix_xs_msgsMsgLocobotJoy {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 30 {
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
/// Complete bounded value for ROS2 interbotix_xs_msgs/msg/TurretJoy.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Interbotix_xs_msgsMsgTurretJoy {
    /// Declared pan_cmd; canonical bounds are part of CODEC_IDENTITY.
    pub pan_cmd: i8,
    /// Declared tilt_cmd; canonical bounds are part of CODEC_IDENTITY.
    pub tilt_cmd: i8,
    /// Declared speed_cmd; canonical bounds are part of CODEC_IDENTITY.
    pub speed_cmd: i8,
    /// Declared speed_toggle_cmd; canonical bounds are part of CODEC_IDENTITY.
    pub speed_toggle_cmd: i8,
}
impl Default for Ros2Interbotix_xs_msgsMsgTurretJoy {
    fn default() -> Self {
        Self {
            pan_cmd: Default::default(),
            tilt_cmd: Default::default(),
            speed_cmd: Default::default(),
            speed_toggle_cmd: Default::default(),
        }
    }
}
impl Ros2Interbotix_xs_msgsMsgTurretJoy {
    pub const MAX_WIRE_BYTES: usize = 4;
    pub const CARTESIAN_WIRE_BYTES: u64 = 4;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_ed098904f5694e04331c31f8096f8c4f7b3f938ffa0007b65cba5ea2f6c36e0f";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
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
        put(out, at, &self.pan_cmd.to_le_bytes());
        put(out, at, &self.tilt_cmd.to_le_bytes());
        put(out, at, &self.speed_cmd.to_le_bytes());
        put(out, at, &self.speed_toggle_cmd.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.pan_cmd = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.tilt_cmd = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.speed_cmd = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.speed_toggle_cmd = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Interbotix_xs_msgsMsgTurretJoy {
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
/// Complete bounded value for ROS2 interbotix_xs_msgs/srv/MotorGains_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Interbotix_xs_msgsSrvMotorGains_Request {
    /// Declared cmd_type; canonical bounds are part of CODEC_IDENTITY.
    pub cmd_type: String,
    /// Declared name; canonical bounds are part of CODEC_IDENTITY.
    pub name: String,
    /// Declared kp_pos; canonical bounds are part of CODEC_IDENTITY.
    pub kp_pos: i32,
    /// Declared ki_pos; canonical bounds are part of CODEC_IDENTITY.
    pub ki_pos: i32,
    /// Declared kd_pos; canonical bounds are part of CODEC_IDENTITY.
    pub kd_pos: i32,
    /// Declared k1; canonical bounds are part of CODEC_IDENTITY.
    pub k1: i32,
    /// Declared k2; canonical bounds are part of CODEC_IDENTITY.
    pub k2: i32,
    /// Declared kp_vel; canonical bounds are part of CODEC_IDENTITY.
    pub kp_vel: i32,
    /// Declared ki_vel; canonical bounds are part of CODEC_IDENTITY.
    pub ki_vel: i32,
}
impl Default for Ros2Interbotix_xs_msgsSrvMotorGains_Request {
    fn default() -> Self {
        Self {
            cmd_type: Default::default(),
            name: Default::default(),
            kp_pos: Default::default(),
            ki_pos: Default::default(),
            kd_pos: Default::default(),
            k1: Default::default(),
            k2: Default::default(),
            kp_vel: Default::default(),
            ki_vel: Default::default(),
        }
    }
}
impl Ros2Interbotix_xs_msgsSrvMotorGains_Request {
    pub const MAX_WIRE_BYTES: usize = 292;
    pub const CARTESIAN_WIRE_BYTES: u64 = 292;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_1d4391978c6f8e54b26f7b5b16a56bc8bbe81f170e702082f1eee5a28ce1587f";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.cmd_type.len() > 128 || self.cmd_type.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.cmd_type.len())?;
        if self.name.len() > 128 || self.name.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.name.len())?;
        n = add_size(n, 4)?;
        n = add_size(n, 4)?;
        n = add_size(n, 4)?;
        n = add_size(n, 4)?;
        n = add_size(n, 4)?;
        n = add_size(n, 4)?;
        n = add_size(n, 4)?;
        if n > 292 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.cmd_type.len() as u32).to_le_bytes());
        put(out, at, self.cmd_type.as_bytes());
        put(out, at, &(self.name.len() as u32).to_le_bytes());
        put(out, at, self.name.as_bytes());
        put(out, at, &self.kp_pos.to_le_bytes());
        put(out, at, &self.ki_pos.to_le_bytes());
        put(out, at, &self.kd_pos.to_le_bytes());
        put(out, at, &self.k1.to_le_bytes());
        put(out, at, &self.k2.to_le_bytes());
        put(out, at, &self.kp_vel.to_le_bytes());
        put(out, at, &self.ki_vel.to_le_bytes());
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
        value.cmd_type = decoded;
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
        value.kp_pos = decoded;
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.ki_pos = decoded;
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.kd_pos = decoded;
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.k1 = decoded;
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.k2 = decoded;
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.kp_vel = decoded;
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.ki_vel = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Interbotix_xs_msgsSrvMotorGains_Request {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 292 {
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
/// Complete bounded value for ROS2 interbotix_xs_msgs/srv/MotorGains_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Interbotix_xs_msgsSrvMotorGains_Response {}
impl Default for Ros2Interbotix_xs_msgsSrvMotorGains_Response {
    fn default() -> Self {
        Self {}
    }
}
impl Ros2Interbotix_xs_msgsSrvMotorGains_Response {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_fade5fb84bdb51114ae0aa3a37d96b2fa6d29718f0ee1b688079459f948d7972";
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
impl Canonical for Ros2Interbotix_xs_msgsSrvMotorGains_Response {
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
/// Complete bounded value for ROS2 interbotix_xs_msgs/srv/OperatingModes_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Interbotix_xs_msgsSrvOperatingModes_Request {
    /// Declared cmd_type; canonical bounds are part of CODEC_IDENTITY.
    pub cmd_type: String,
    /// Declared name; canonical bounds are part of CODEC_IDENTITY.
    pub name: String,
    /// Declared mode; canonical bounds are part of CODEC_IDENTITY.
    pub mode: String,
    /// Declared profile_type; canonical bounds are part of CODEC_IDENTITY.
    pub profile_type: String,
    /// Declared profile_velocity; canonical bounds are part of CODEC_IDENTITY.
    pub profile_velocity: i32,
    /// Declared profile_acceleration; canonical bounds are part of CODEC_IDENTITY.
    pub profile_acceleration: i32,
}
impl Default for Ros2Interbotix_xs_msgsSrvOperatingModes_Request {
    fn default() -> Self {
        Self {
            cmd_type: Default::default(),
            name: Default::default(),
            mode: Default::default(),
            profile_type: Default::default(),
            profile_velocity: Default::default(),
            profile_acceleration: Default::default(),
        }
    }
}
impl Ros2Interbotix_xs_msgsSrvOperatingModes_Request {
    pub const MAX_WIRE_BYTES: usize = 536;
    pub const CARTESIAN_WIRE_BYTES: u64 = 536;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_79c4fb8d937d09f9bd7d97774174db4a647070f564f4496c9e77d117cba27f15";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.cmd_type.len() > 128 || self.cmd_type.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.cmd_type.len())?;
        if self.name.len() > 128 || self.name.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.name.len())?;
        if self.mode.len() > 128 || self.mode.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.mode.len())?;
        if self.profile_type.len() > 128 || self.profile_type.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.profile_type.len())?;
        n = add_size(n, 4)?;
        n = add_size(n, 4)?;
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
        put(out, at, &(self.cmd_type.len() as u32).to_le_bytes());
        put(out, at, self.cmd_type.as_bytes());
        put(out, at, &(self.name.len() as u32).to_le_bytes());
        put(out, at, self.name.as_bytes());
        put(out, at, &(self.mode.len() as u32).to_le_bytes());
        put(out, at, self.mode.as_bytes());
        put(out, at, &(self.profile_type.len() as u32).to_le_bytes());
        put(out, at, self.profile_type.as_bytes());
        put(out, at, &self.profile_velocity.to_le_bytes());
        put(out, at, &self.profile_acceleration.to_le_bytes());
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
        value.cmd_type = decoded;
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
        value.mode = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.profile_type = decoded;
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.profile_velocity = decoded;
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.profile_acceleration = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Interbotix_xs_msgsSrvOperatingModes_Request {
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
/// Complete bounded value for ROS2 interbotix_xs_msgs/srv/OperatingModes_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Interbotix_xs_msgsSrvOperatingModes_Response {}
impl Default for Ros2Interbotix_xs_msgsSrvOperatingModes_Response {
    fn default() -> Self {
        Self {}
    }
}
impl Ros2Interbotix_xs_msgsSrvOperatingModes_Response {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_28180c90e6e146915e81a6e9312148c6ce27741d3e0df6fb82abef65bb658345";
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
impl Canonical for Ros2Interbotix_xs_msgsSrvOperatingModes_Response {
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
/// Complete bounded value for ROS2 interbotix_xs_msgs/srv/Reboot_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Interbotix_xs_msgsSrvReboot_Request {
    /// Declared cmd_type; canonical bounds are part of CODEC_IDENTITY.
    pub cmd_type: String,
    /// Declared name; canonical bounds are part of CODEC_IDENTITY.
    pub name: String,
    /// Declared enable; canonical bounds are part of CODEC_IDENTITY.
    pub enable: bool,
    /// Declared smart_reboot; canonical bounds are part of CODEC_IDENTITY.
    pub smart_reboot: bool,
}
impl Default for Ros2Interbotix_xs_msgsSrvReboot_Request {
    fn default() -> Self {
        Self {
            cmd_type: Default::default(),
            name: Default::default(),
            enable: Default::default(),
            smart_reboot: Default::default(),
        }
    }
}
impl Ros2Interbotix_xs_msgsSrvReboot_Request {
    pub const MAX_WIRE_BYTES: usize = 266;
    pub const CARTESIAN_WIRE_BYTES: u64 = 266;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_877df815d5efae67de6098b2280ed73b6e93d9db6024622d522112de52eccd55";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.cmd_type.len() > 128 || self.cmd_type.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.cmd_type.len())?;
        if self.name.len() > 128 || self.name.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.name.len())?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        if n > 266 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.cmd_type.len() as u32).to_le_bytes());
        put(out, at, self.cmd_type.as_bytes());
        put(out, at, &(self.name.len() as u32).to_le_bytes());
        put(out, at, self.name.as_bytes());
        put(out, at, &[u8::from(self.enable)]);
        put(out, at, &[u8::from(self.smart_reboot)]);
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
        value.cmd_type = decoded;
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
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.enable = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.smart_reboot = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Interbotix_xs_msgsSrvReboot_Request {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 266 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 10 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS2 interbotix_xs_msgs/srv/Reboot_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Interbotix_xs_msgsSrvReboot_Response {}
impl Default for Ros2Interbotix_xs_msgsSrvReboot_Response {
    fn default() -> Self {
        Self {}
    }
}
impl Ros2Interbotix_xs_msgsSrvReboot_Response {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_00761585231e339f21ff40ffd8b9a025d67fe16b7d33410171c430d2aa2c051b";
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
impl Canonical for Ros2Interbotix_xs_msgsSrvReboot_Response {
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
/// Complete bounded value for ROS2 interbotix_xs_msgs/srv/RegisterValues_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Interbotix_xs_msgsSrvRegisterValues_Request {
    /// Declared cmd_type; canonical bounds are part of CODEC_IDENTITY.
    pub cmd_type: String,
    /// Declared name; canonical bounds are part of CODEC_IDENTITY.
    pub name: String,
    /// Declared reg; canonical bounds are part of CODEC_IDENTITY.
    pub reg: String,
    /// Declared value; canonical bounds are part of CODEC_IDENTITY.
    pub value: i32,
}
impl Default for Ros2Interbotix_xs_msgsSrvRegisterValues_Request {
    fn default() -> Self {
        Self {
            cmd_type: Default::default(),
            name: Default::default(),
            reg: Default::default(),
            value: Default::default(),
        }
    }
}
impl Ros2Interbotix_xs_msgsSrvRegisterValues_Request {
    pub const MAX_WIRE_BYTES: usize = 400;
    pub const CARTESIAN_WIRE_BYTES: u64 = 400;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_73ad91bb12d7c5ee8142f3657c3238a9bd547468e31a74f19a469343bd3241fd";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.cmd_type.len() > 128 || self.cmd_type.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.cmd_type.len())?;
        if self.name.len() > 128 || self.name.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.name.len())?;
        if self.reg.len() > 128 || self.reg.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.reg.len())?;
        n = add_size(n, 4)?;
        if n > 400 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.cmd_type.len() as u32).to_le_bytes());
        put(out, at, self.cmd_type.as_bytes());
        put(out, at, &(self.name.len() as u32).to_le_bytes());
        put(out, at, self.name.as_bytes());
        put(out, at, &(self.reg.len() as u32).to_le_bytes());
        put(out, at, self.reg.as_bytes());
        put(out, at, &self.value.to_le_bytes());
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
        value.cmd_type = decoded;
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
        value.reg = decoded;
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.value = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Interbotix_xs_msgsSrvRegisterValues_Request {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 400 {
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
/// Complete bounded value for ROS2 interbotix_xs_msgs/srv/RegisterValues_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Interbotix_xs_msgsSrvRegisterValues_Response {
    /// Declared values; canonical bounds are part of CODEC_IDENTITY.
    pub values: Vec<i32>,
}
impl Default for Ros2Interbotix_xs_msgsSrvRegisterValues_Response {
    fn default() -> Self {
        Self {
            values: Default::default(),
        }
    }
}
impl Ros2Interbotix_xs_msgsSrvRegisterValues_Response {
    pub const MAX_WIRE_BYTES: usize = 68;
    pub const CARTESIAN_WIRE_BYTES: u64 = 68;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_f8e4d0f5065281434cbd3c3845c92458348541dd0fc477b2552856941a58120a";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.values.len() > 16 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.values {
            n = add_size(n, 4)?;
        }
        if n > 68 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.values.len() as u32).to_le_bytes());
        for element in &self.values {
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
            value.values = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                value.values.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Interbotix_xs_msgsSrvRegisterValues_Response {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 68 {
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
/// Complete bounded value for ROS2 interbotix_xs_msgs/srv/RobotInfo_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Interbotix_xs_msgsSrvRobotInfo_Request {
    /// Declared cmd_type; canonical bounds are part of CODEC_IDENTITY.
    pub cmd_type: String,
    /// Declared name; canonical bounds are part of CODEC_IDENTITY.
    pub name: String,
}
impl Default for Ros2Interbotix_xs_msgsSrvRobotInfo_Request {
    fn default() -> Self {
        Self {
            cmd_type: Default::default(),
            name: Default::default(),
        }
    }
}
impl Ros2Interbotix_xs_msgsSrvRobotInfo_Request {
    pub const MAX_WIRE_BYTES: usize = 264;
    pub const CARTESIAN_WIRE_BYTES: u64 = 264;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_af4294279451a23fccc9c274609eb11479004d92b62ffa4e1dece0e88927a6f9";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.cmd_type.len() > 128 || self.cmd_type.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.cmd_type.len())?;
        if self.name.len() > 128 || self.name.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.name.len())?;
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
        put(out, at, &(self.cmd_type.len() as u32).to_le_bytes());
        put(out, at, self.cmd_type.as_bytes());
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
        value.cmd_type = decoded;
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
impl Canonical for Ros2Interbotix_xs_msgsSrvRobotInfo_Request {
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
/// Complete bounded value for ROS2 interbotix_xs_msgs/srv/RobotInfo_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Interbotix_xs_msgsSrvRobotInfo_Response {
    /// Declared mode; canonical bounds are part of CODEC_IDENTITY.
    pub mode: String,
    /// Declared profile_type; canonical bounds are part of CODEC_IDENTITY.
    pub profile_type: String,
    /// Declared joint_names; canonical bounds are part of CODEC_IDENTITY.
    pub joint_names: Vec<String>,
    /// Declared joint_ids; canonical bounds are part of CODEC_IDENTITY.
    pub joint_ids: Vec<i16>,
    /// Declared joint_lower_limits; canonical bounds are part of CODEC_IDENTITY.
    pub joint_lower_limits: Vec<f32>,
    /// Declared joint_upper_limits; canonical bounds are part of CODEC_IDENTITY.
    pub joint_upper_limits: Vec<f32>,
    /// Declared joint_velocity_limits; canonical bounds are part of CODEC_IDENTITY.
    pub joint_velocity_limits: Vec<f32>,
    /// Declared joint_sleep_positions; canonical bounds are part of CODEC_IDENTITY.
    pub joint_sleep_positions: Vec<f32>,
    /// Declared joint_state_indices; canonical bounds are part of CODEC_IDENTITY.
    pub joint_state_indices: Vec<i16>,
    /// Declared num_joints; canonical bounds are part of CODEC_IDENTITY.
    pub num_joints: i16,
    /// Declared name; canonical bounds are part of CODEC_IDENTITY.
    pub name: Vec<String>,
}
impl Default for Ros2Interbotix_xs_msgsSrvRobotInfo_Response {
    fn default() -> Self {
        Self {
            mode: Default::default(),
            profile_type: Default::default(),
            joint_names: Default::default(),
            joint_ids: Default::default(),
            joint_lower_limits: Default::default(),
            joint_upper_limits: Default::default(),
            joint_velocity_limits: Default::default(),
            joint_sleep_positions: Default::default(),
            joint_state_indices: Default::default(),
            num_joints: Default::default(),
            name: Default::default(),
        }
    }
}
impl Ros2Interbotix_xs_msgsSrvRobotInfo_Response {
    pub const MAX_WIRE_BYTES: usize = 18474;
    pub const CARTESIAN_WIRE_BYTES: u64 = 18474;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_28722f2f9b200bbe87da55a7ea34bdc98ea278f7332acaf45a59d318e0ea8b14";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.mode.len() > 128 || self.mode.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.mode.len())?;
        if self.profile_type.len() > 128 || self.profile_type.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.profile_type.len())?;
        if self.joint_names.len() > 64 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.joint_names {
            if element.len() > 128 || element.as_bytes().contains(&0) {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
            n = add_size(n, element.len())?;
        }
        if self.joint_ids.len() > 64 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.joint_ids {
            n = add_size(n, 2)?;
        }
        if self.joint_lower_limits.len() > 64 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.joint_lower_limits {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
        }
        if self.joint_upper_limits.len() > 64 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.joint_upper_limits {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
        }
        if self.joint_velocity_limits.len() > 64 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.joint_velocity_limits {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
        }
        if self.joint_sleep_positions.len() > 64 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.joint_sleep_positions {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
        }
        if self.joint_state_indices.len() > 64 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.joint_state_indices {
            n = add_size(n, 2)?;
        }
        n = add_size(n, 2)?;
        if self.name.len() > 64 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.name {
            if element.len() > 128 || element.as_bytes().contains(&0) {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
            n = add_size(n, element.len())?;
        }
        if n > 18474 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.mode.len() as u32).to_le_bytes());
        put(out, at, self.mode.as_bytes());
        put(out, at, &(self.profile_type.len() as u32).to_le_bytes());
        put(out, at, self.profile_type.as_bytes());
        put(out, at, &(self.joint_names.len() as u32).to_le_bytes());
        for element in &self.joint_names {
            put(out, at, &(element.len() as u32).to_le_bytes());
            put(out, at, element.as_bytes());
        }
        put(out, at, &(self.joint_ids.len() as u32).to_le_bytes());
        for element in &self.joint_ids {
            put(out, at, &element.to_le_bytes());
        }
        put(
            out,
            at,
            &(self.joint_lower_limits.len() as u32).to_le_bytes(),
        );
        for element in &self.joint_lower_limits {
            put(out, at, &element.to_le_bytes());
        }
        put(
            out,
            at,
            &(self.joint_upper_limits.len() as u32).to_le_bytes(),
        );
        for element in &self.joint_upper_limits {
            put(out, at, &element.to_le_bytes());
        }
        put(
            out,
            at,
            &(self.joint_velocity_limits.len() as u32).to_le_bytes(),
        );
        for element in &self.joint_velocity_limits {
            put(out, at, &element.to_le_bytes());
        }
        put(
            out,
            at,
            &(self.joint_sleep_positions.len() as u32).to_le_bytes(),
        );
        for element in &self.joint_sleep_positions {
            put(out, at, &element.to_le_bytes());
        }
        put(
            out,
            at,
            &(self.joint_state_indices.len() as u32).to_le_bytes(),
        );
        for element in &self.joint_state_indices {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.num_joints.to_le_bytes());
        put(out, at, &(self.name.len() as u32).to_le_bytes());
        for element in &self.name {
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
        value.mode = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.profile_type = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 64 {
                return Err(invalid());
            }
            value.joint_names = Vec::with_capacity(count);
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
                value.joint_names.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 64 {
                return Err(invalid());
            }
            value.joint_ids = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    i16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
                value.joint_ids.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 64 {
                return Err(invalid());
            }
            value.joint_lower_limits = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.joint_lower_limits.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 64 {
                return Err(invalid());
            }
            value.joint_upper_limits = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.joint_upper_limits.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 64 {
                return Err(invalid());
            }
            value.joint_velocity_limits = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.joint_velocity_limits.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 64 {
                return Err(invalid());
            }
            value.joint_sleep_positions = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.joint_sleep_positions.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 64 {
                return Err(invalid());
            }
            value.joint_state_indices = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    i16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
                value.joint_state_indices.push(decoded);
            }
        }
        let decoded = i16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.num_joints = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 64 {
                return Err(invalid());
            }
            value.name = Vec::with_capacity(count);
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
                value.name.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Interbotix_xs_msgsSrvRobotInfo_Response {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 18474 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 42 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS2 interbotix_xs_msgs/srv/TorqueEnable_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Interbotix_xs_msgsSrvTorqueEnable_Request {
    /// Declared cmd_type; canonical bounds are part of CODEC_IDENTITY.
    pub cmd_type: String,
    /// Declared name; canonical bounds are part of CODEC_IDENTITY.
    pub name: String,
    /// Declared enable; canonical bounds are part of CODEC_IDENTITY.
    pub enable: bool,
}
impl Default for Ros2Interbotix_xs_msgsSrvTorqueEnable_Request {
    fn default() -> Self {
        Self {
            cmd_type: Default::default(),
            name: Default::default(),
            enable: Default::default(),
        }
    }
}
impl Ros2Interbotix_xs_msgsSrvTorqueEnable_Request {
    pub const MAX_WIRE_BYTES: usize = 265;
    pub const CARTESIAN_WIRE_BYTES: u64 = 265;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_f5c5aa1cc5b2d81b7a8c70d4ad420315129124e151b9cbd6419ae5ece83297da";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.cmd_type.len() > 128 || self.cmd_type.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.cmd_type.len())?;
        if self.name.len() > 128 || self.name.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.name.len())?;
        n = add_size(n, 1)?;
        if n > 265 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.cmd_type.len() as u32).to_le_bytes());
        put(out, at, self.cmd_type.as_bytes());
        put(out, at, &(self.name.len() as u32).to_le_bytes());
        put(out, at, self.name.as_bytes());
        put(out, at, &[u8::from(self.enable)]);
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
        value.cmd_type = decoded;
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
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.enable = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Interbotix_xs_msgsSrvTorqueEnable_Request {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 265 {
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
/// Complete bounded value for ROS2 interbotix_xs_msgs/srv/TorqueEnable_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Interbotix_xs_msgsSrvTorqueEnable_Response {}
impl Default for Ros2Interbotix_xs_msgsSrvTorqueEnable_Response {
    fn default() -> Self {
        Self {}
    }
}
impl Ros2Interbotix_xs_msgsSrvTorqueEnable_Response {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_6ef9f0b62d47e7cf7f9761869145d65eaad9fd157f3bd0c5f87437f8d1b5d31b";
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
impl Canonical for Ros2Interbotix_xs_msgsSrvTorqueEnable_Response {
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

impl Ros2Interbotix_slate_msgsSrvSetLightState_Request {
    pub const LIGHT_STATE_OFF: u32 = 0;
    pub const LIGHT_STATE_RED: u32 = 1;
    pub const LIGHT_STATE_GREEN: u32 = 2;
    pub const LIGHT_STATE_YELLOW: u32 = 3;
    pub const LIGHT_STATE_BLUE: u32 = 4;
    pub const LIGHT_STATE_PURPLE: u32 = 5;
    pub const LIGHT_STATE_CYAN: u32 = 6;
    pub const LIGHT_STATE_WHITE: u32 = 7;
    pub const LIGHT_STATE_RED_FLASH: u32 = 9;
    pub const LIGHT_STATE_GREEN_FLASH: u32 = 10;
    pub const LIGHT_STATE_YELLOW_FLASH: u32 = 11;
    pub const LIGHT_STATE_BLUE_FLASH: u32 = 12;
    pub const LIGHT_STATE_PURPLE_FLASH: u32 = 13;
    pub const LIGHT_STATE_CYAN_FLASH: u32 = 14;
    pub const LIGHT_STATE_WHITE_FLASH: u32 = 15;
}

impl Ros2Interbotix_xs_msgsMsgArmJoy {
    pub const EE_X_INC: i8 = 1;
    pub const EE_X_DEC: i8 = 2;
    pub const EE_Y_INC: i8 = 3;
    pub const EE_Y_DEC: i8 = 4;
    pub const EE_Z_INC: i8 = 5;
    pub const EE_Z_DEC: i8 = 6;
    pub const EE_ROLL_CCW: i8 = 7;
    pub const EE_ROLL_CW: i8 = 8;
    pub const EE_PITCH_UP: i8 = 9;
    pub const EE_PITCH_DOWN: i8 = 10;
    pub const WAIST_CCW: i8 = 11;
    pub const WAIST_CW: i8 = 12;
    pub const GRIPPER_RELEASE: i8 = 13;
    pub const GRIPPER_GRASP: i8 = 14;
    pub const HOME_POSE: i8 = 15;
    pub const SLEEP_POSE: i8 = 16;
    pub const SPEED_INC: i8 = 17;
    pub const SPEED_DEC: i8 = 18;
    pub const SPEED_COARSE: i8 = 19;
    pub const SPEED_FINE: i8 = 20;
    pub const GRIPPER_PWM_INC: i8 = 21;
    pub const GRIPPER_PWM_DEC: i8 = 22;
    pub const TORQUE_ON: i8 = 23;
    pub const TORQUE_OFF: i8 = 24;
}

impl Ros2Interbotix_xs_msgsMsgHexJoy {
    pub const WORLD_X_INC: i8 = 1;
    pub const WORLD_X_DEC: i8 = 2;
    pub const WORLD_Y_INC: i8 = 3;
    pub const WORLD_Y_DEC: i8 = 4;
    pub const WORLD_YAW_CCW: i8 = 5;
    pub const WORLD_YAW_CW: i8 = 6;
    pub const PLACE_X_INC: i8 = 7;
    pub const PLACE_X_DEC: i8 = 8;
    pub const PLACE_Y_INC: i8 = 9;
    pub const PLACE_Y_DEC: i8 = 10;
    pub const PLACE_Z_INC: i8 = 11;
    pub const PLACE_Z_DEC: i8 = 12;
    pub const PLACE_ROLL_CCW: i8 = 13;
    pub const PLACE_ROLL_CW: i8 = 14;
    pub const PLACE_PITCH_UP: i8 = 15;
    pub const PLACE_PITCH_DOWN: i8 = 16;
    pub const MOVE_HEXAPOD: i8 = 17;
    pub const MOVE_LEG: i8 = 18;
    pub const HOME_POSE: i8 = 19;
    pub const SLEEP_POSE: i8 = 20;
    pub const GAIT_NEXT: i8 = 21;
    pub const GAIT_PREVIOUS: i8 = 22;
    pub const LEG_NEXT: i8 = 23;
    pub const LEG_PREVIOUS: i8 = 24;
    pub const WIDEN_STANCE: i8 = 25;
    pub const NARROW_STANCE: i8 = 26;
    pub const REBOOT_MOTORS: i8 = 27;
    pub const SET_HOME_POSE: i8 = 28;
    pub const SPEED_INC: i8 = 29;
    pub const SPEED_DEC: i8 = 30;
    pub const SPEED_COARSE: i8 = 31;
    pub const SPEED_FINE: i8 = 32;
}

impl Ros2Interbotix_xs_msgsMsgLocobotJoy {
    pub const RESET_ODOM: i8 = 1;
    pub const PAN_CCW: i8 = 2;
    pub const PAN_CW: i8 = 3;
    pub const TILT_UP: i8 = 4;
    pub const TILT_DOWN: i8 = 5;
    pub const PAN_TILT_HOME: i8 = 6;
    pub const EE_X_INC: i8 = 7;
    pub const EE_X_DEC: i8 = 8;
    pub const EE_Y_INC: i8 = 9;
    pub const EE_Y_DEC: i8 = 10;
    pub const EE_Z_INC: i8 = 11;
    pub const EE_Z_DEC: i8 = 12;
    pub const EE_ROLL_CCW: i8 = 13;
    pub const EE_ROLL_CW: i8 = 14;
    pub const EE_PITCH_UP: i8 = 15;
    pub const EE_PITCH_DOWN: i8 = 16;
    pub const WAIST_CCW: i8 = 17;
    pub const WAIST_CW: i8 = 18;
    pub const GRIPPER_RELEASE: i8 = 19;
    pub const GRIPPER_GRASP: i8 = 20;
    pub const HOME_POSE: i8 = 21;
    pub const SLEEP_POSE: i8 = 22;
    pub const SPEED_INC: i8 = 23;
    pub const SPEED_DEC: i8 = 24;
    pub const SPEED_COARSE: i8 = 25;
    pub const SPEED_FINE: i8 = 26;
    pub const GRIPPER_PWM_INC: i8 = 27;
    pub const GRIPPER_PWM_DEC: i8 = 28;
}

impl Ros2Interbotix_xs_msgsMsgTurretJoy {
    pub const PAN_CCW: i8 = 1;
    pub const PAN_CW: i8 = 2;
    pub const TILT_UP: i8 = 3;
    pub const TILT_DOWN: i8 = 4;
    pub const PAN_TILT_HOME: i8 = 5;
    pub const SPEED_INC: i8 = 6;
    pub const SPEED_DEC: i8 = 7;
    pub const SPEED_COARSE: i8 = 8;
    pub const SPEED_FINE: i8 = 9;
}
