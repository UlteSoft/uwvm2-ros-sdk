// @file bounded_records.rs
// @brief Represent complete typed values and their bounded wire layout for nvidia-isaac-sim.
// @details Field widths, defaults and sequence limits follow the selected catalog. Keep backing storage alive
// while borrowed values are in use; preserve all decode failures before invoking a ROS operation.

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
    pub const MAX_WIRE_BYTES: usize = 76;
    pub const CARTESIAN_WIRE_BYTES: u64 = 76;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_afba9e74be3c5e3321750c1c4c30ba2925269f75b9da43a6d5c1e93d293d7396";
    /// Validate all fields and measure only their initialized canonical prefix.
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
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
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
/// Complete bounded value for ROS2 sensor_msgs/msg/JointState.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Sensor_msgsMsgJointState {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros2Std_msgsMsgHeader,
    /// Declared name; canonical bounds are part of CODEC_IDENTITY.
    pub name: Vec<String>,
    /// Declared position; canonical bounds are part of CODEC_IDENTITY.
    pub position: Vec<f64>,
    /// Declared velocity; canonical bounds are part of CODEC_IDENTITY.
    pub velocity: Vec<f64>,
    /// Declared effort; canonical bounds are part of CODEC_IDENTITY.
    pub effort: Vec<f64>,
}
impl Default for Ros2Sensor_msgsMsgJointState {
    fn default() -> Self {
        Self {
            header: Default::default(),
            name: Default::default(),
            position: Default::default(),
            velocity: Default::default(),
            effort: Default::default(),
        }
    }
}
impl Ros2Sensor_msgsMsgJointState {
    pub const MAX_WIRE_BYTES: usize = 5980;
    pub const CARTESIAN_WIRE_BYTES: u64 = 5980;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_2fe8e1de38676a3880ca61266fb575e3625198e66a1da1708cf8c103cb829cac";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        if self.name.len() > 64 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.name {
            if element.len() > 64 || element.as_bytes().contains(&0) {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
            n = add_size(n, element.len())?;
        }
        if self.position.len() > 64 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.position {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if self.velocity.len() > 64 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.velocity {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if self.effort.len() > 64 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.effort {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if (self.name.len() != 0
            && self.position.len() != 0
            && self.name.len() != self.position.len())
            || (self.name.len() != 0
                && self.velocity.len() != 0
                && self.name.len() != self.velocity.len())
            || (self.name.len() != 0
                && self.effort.len() != 0
                && self.name.len() != self.effort.len())
            || (self.position.len() != 0
                && self.velocity.len() != 0
                && self.position.len() != self.velocity.len())
            || (self.position.len() != 0
                && self.effort.len() != 0
                && self.position.len() != self.effort.len())
            || (self.velocity.len() != 0
                && self.effort.len() != 0
                && self.velocity.len() != self.effort.len())
        {
            return Err(invalid());
        }
        if n > 5980 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
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
        put(out, at, &(self.name.len() as u32).to_le_bytes());
        for element in &self.name {
            put(out, at, &(element.len() as u32).to_le_bytes());
            put(out, at, element.as_bytes());
        }
        put(out, at, &(self.position.len() as u32).to_le_bytes());
        for element in &self.position {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &(self.velocity.len() as u32).to_le_bytes());
        for element in &self.velocity {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &(self.effort.len() as u32).to_le_bytes());
        for element in &self.effort {
            put(out, at, &element.to_le_bytes());
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Std_msgsMsgHeader::read_fields(bytes, at)?;
        value.header = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 64 {
                return Err(invalid());
            }
            value.name = Vec::with_capacity(count);
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
                value.name.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 64 {
                return Err(invalid());
            }
            value.position = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.position.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 64 {
                return Err(invalid());
            }
            value.velocity = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.velocity.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 64 {
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
        if (value.name.len() != 0
            && value.position.len() != 0
            && value.name.len() != value.position.len())
            || (value.name.len() != 0
                && value.velocity.len() != 0
                && value.name.len() != value.velocity.len())
            || (value.name.len() != 0
                && value.effort.len() != 0
                && value.name.len() != value.effort.len())
            || (value.position.len() != 0
                && value.velocity.len() != 0
                && value.position.len() != value.velocity.len())
            || (value.position.len() != 0
                && value.effort.len() != 0
                && value.position.len() != value.effort.len())
            || (value.velocity.len() != 0
                && value.effort.len() != 0
                && value.velocity.len() != value.effort.len())
        {
            return Err(invalid());
        }
        Ok(value)
    }
}
impl Canonical for Ros2Sensor_msgsMsgJointState {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 5980 {
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
/// Complete bounded value for ROS2 uwvm_isaac_sim_bridge/msg/ClockEvent.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Uwvm_isaac_sim_bridgeMsgClockEvent {
    /// Declared kind; canonical bounds are part of CODEC_IDENTITY.
    pub kind: u8,
    /// Declared phase; canonical bounds are part of CODEC_IDENTITY.
    pub phase: u8,
    /// Declared frame; canonical bounds are part of CODEC_IDENTITY.
    pub frame: u32,
    /// Declared sec; canonical bounds are part of CODEC_IDENTITY.
    pub sec: i32,
    /// Declared nanosec; canonical bounds are part of CODEC_IDENTITY.
    pub nanosec: u32,
}
impl Default for Ros2Uwvm_isaac_sim_bridgeMsgClockEvent {
    fn default() -> Self {
        Self {
            kind: Default::default(),
            phase: Default::default(),
            frame: Default::default(),
            sec: Default::default(),
            nanosec: Default::default(),
        }
    }
}
impl Ros2Uwvm_isaac_sim_bridgeMsgClockEvent {
    pub const MAX_WIRE_BYTES: usize = 14;
    pub const CARTESIAN_WIRE_BYTES: u64 = 14;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_78b31f4b219f55bd576134f1b561194cb09c8ec0ac8dedafddd9b03ba6a198d6";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 4)?;
        n = add_size(n, 4)?;
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
        put(out, at, &self.kind.to_le_bytes());
        put(out, at, &self.phase.to_le_bytes());
        put(out, at, &self.frame.to_le_bytes());
        put(out, at, &self.sec.to_le_bytes());
        put(out, at, &self.nanosec.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.kind = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.phase = decoded;
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.frame = decoded;
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.sec = decoded;
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.nanosec = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Uwvm_isaac_sim_bridgeMsgClockEvent {
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
/// Complete bounded value for ROS2 uwvm_isaac_sim_bridge/srv/ClockControl_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request {
    /// Declared operation; canonical bounds are part of CODEC_IDENTITY.
    pub operation: u8,
    /// Declared session_nonce; canonical bounds are part of CODEC_IDENTITY.
    pub session_nonce: u64,
    /// Declared request_sequence; canonical bounds are part of CODEC_IDENTITY.
    pub request_sequence: u32,
    /// Declared phase; canonical bounds are part of CODEC_IDENTITY.
    pub phase: u8,
    /// Declared frame; canonical bounds are part of CODEC_IDENTITY.
    pub frame: u32,
    /// Declared impulse; canonical bounds are part of CODEC_IDENTITY.
    pub impulse: bool,
    /// Declared extra_update; canonical bounds are part of CODEC_IDENTITY.
    pub extra_update: bool,
    /// Declared pacing_milliseconds; canonical bounds are part of CODEC_IDENTITY.
    pub pacing_milliseconds: u16,
}
impl Default for Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request {
    fn default() -> Self {
        Self {
            operation: Default::default(),
            session_nonce: Default::default(),
            request_sequence: Default::default(),
            phase: Default::default(),
            frame: Default::default(),
            impulse: Default::default(),
            extra_update: Default::default(),
            pacing_milliseconds: Default::default(),
        }
    }
}
impl Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request {
    pub const MAX_WIRE_BYTES: usize = 22;
    pub const CARTESIAN_WIRE_BYTES: u64 = 22;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_8957fd758c2793d355e7356df436ea644a5d5da7ad7e2d179ed4d09936351b19";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        n = add_size(n, 8)?;
        n = add_size(n, 4)?;
        n = add_size(n, 1)?;
        n = add_size(n, 4)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 2)?;
        if n > 22 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.operation.to_le_bytes());
        put(out, at, &self.session_nonce.to_le_bytes());
        put(out, at, &self.request_sequence.to_le_bytes());
        put(out, at, &self.phase.to_le_bytes());
        put(out, at, &self.frame.to_le_bytes());
        put(out, at, &[u8::from(self.impulse)]);
        put(out, at, &[u8::from(self.extra_update)]);
        put(out, at, &self.pacing_milliseconds.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.operation = decoded;
        let decoded = u64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        value.session_nonce = decoded;
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.request_sequence = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.phase = decoded;
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.frame = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.impulse = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.extra_update = decoded;
        let decoded = u16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.pacing_milliseconds = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 22 {
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
/// Complete bounded value for ROS2 uwvm_isaac_sim_bridge/srv/ClockControl_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response {
    /// Declared status; canonical bounds are part of CODEC_IDENTITY.
    pub status: u32,
    /// Declared session_nonce; canonical bounds are part of CODEC_IDENTITY.
    pub session_nonce: u64,
    /// Declared request_sequence; canonical bounds are part of CODEC_IDENTITY.
    pub request_sequence: u32,
    /// Declared state; canonical bounds are part of CODEC_IDENTITY.
    pub state: u8,
    /// Declared actual_app_updates; canonical bounds are part of CODEC_IDENTITY.
    pub actual_app_updates: u64,
    /// Declared completed_steps; canonical bounds are part of CODEC_IDENTITY.
    pub completed_steps: u32,
    /// Declared has_event; canonical bounds are part of CODEC_IDENTITY.
    pub has_event: bool,
    /// Declared event; canonical bounds are part of CODEC_IDENTITY.
    pub event: Ros2Uwvm_isaac_sim_bridgeMsgClockEvent,
    /// Declared cleanup_status; canonical bounds are part of CODEC_IDENTITY.
    pub cleanup_status: u32,
}
impl Default for Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response {
    fn default() -> Self {
        Self {
            status: Default::default(),
            session_nonce: Default::default(),
            request_sequence: Default::default(),
            state: Default::default(),
            actual_app_updates: Default::default(),
            completed_steps: Default::default(),
            has_event: Default::default(),
            event: Default::default(),
            cleanup_status: Default::default(),
        }
    }
}
impl Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response {
    pub const MAX_WIRE_BYTES: usize = 48;
    pub const CARTESIAN_WIRE_BYTES: u64 = 48;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_3b7763445df65d2a26fb54bfe6d41984008b33253cd7a614f5f057832d909502";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 4)?;
        n = add_size(n, 8)?;
        n = add_size(n, 4)?;
        n = add_size(n, 1)?;
        n = add_size(n, 8)?;
        n = add_size(n, 4)?;
        n = add_size(n, 1)?;
        n = add_size(n, self.event.wire_size()?)?;
        n = add_size(n, 4)?;
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
        put(out, at, &self.status.to_le_bytes());
        put(out, at, &self.session_nonce.to_le_bytes());
        put(out, at, &self.request_sequence.to_le_bytes());
        put(out, at, &self.state.to_le_bytes());
        put(out, at, &self.actual_app_updates.to_le_bytes());
        put(out, at, &self.completed_steps.to_le_bytes());
        put(out, at, &[u8::from(self.has_event)]);
        self.event.write_fields(out, at);
        put(out, at, &self.cleanup_status.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.status = decoded;
        let decoded = u64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        value.session_nonce = decoded;
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.request_sequence = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.state = decoded;
        let decoded = u64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        value.actual_app_updates = decoded;
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.completed_steps = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.has_event = decoded;
        let decoded = Ros2Uwvm_isaac_sim_bridgeMsgClockEvent::read_fields(bytes, at)?;
        value.event = decoded;
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.cleanup_status = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response {
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

impl Ros2Uwvm_isaac_sim_bridgeMsgClockEvent {
    pub const AUTOMATIC: u8 = 1;
    pub const MANUAL: u8 = 2;
}

impl Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request {
    pub const START: u8 = 1;
    pub const STEP: u8 = 2;
    pub const FINISH: u8 = 3;
    pub const CANCEL: u8 = 4;
}
