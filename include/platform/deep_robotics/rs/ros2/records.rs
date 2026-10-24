// @file records.rs
// @brief Represent complete typed values and their bounded wire layout for deep_robotics.
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
/// Complete bounded value for ROS2 drdds/msg/MetaType.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2DrddsMsgMetaType {
    /// Declared frame_id; canonical bounds are part of CODEC_IDENTITY.
    pub frame_id: u64,
    /// Declared stamp; canonical bounds are part of CODEC_IDENTITY.
    pub stamp: Ros2Builtin_interfacesMsgTime,
}
impl Default for Ros2DrddsMsgMetaType {
    fn default() -> Self {
        Self {
            frame_id: Default::default(),
            stamp: Default::default(),
        }
    }
}
impl Ros2DrddsMsgMetaType {
    pub const MAX_WIRE_BYTES: usize = 16;
    pub const CARTESIAN_WIRE_BYTES: u64 = 16;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_589934883c499944b42386d9aa89152e69c3bb41dcf26d0246cacdbb1b50162f";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 8)?;
        n = add_size(n, self.stamp.wire_size()?)?;
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
        put(out, at, &self.frame_id.to_le_bytes());
        self.stamp.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        value.frame_id = decoded;
        let decoded = Ros2Builtin_interfacesMsgTime::read_fields(bytes, at)?;
        value.stamp = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2DrddsMsgMetaType {
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
/// Complete bounded value for ROS2 drdds/msg/BatteryDataValue.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2DrddsMsgBatteryDataValue {
    /// Declared voltage; canonical bounds are part of CODEC_IDENTITY.
    pub voltage: u16,
    /// Declared current; canonical bounds are part of CODEC_IDENTITY.
    pub current: i16,
    /// Declared remaining_capacity; canonical bounds are part of CODEC_IDENTITY.
    pub remaining_capacity: u16,
    /// Declared nominal_capacity; canonical bounds are part of CODEC_IDENTITY.
    pub nominal_capacity: u16,
    /// Declared cycles; canonical bounds are part of CODEC_IDENTITY.
    pub cycles: u16,
    /// Declared production_date; canonical bounds are part of CODEC_IDENTITY.
    pub production_date: u16,
    /// Declared balanced_low; canonical bounds are part of CODEC_IDENTITY.
    pub balanced_low: u16,
    /// Declared balanced_high; canonical bounds are part of CODEC_IDENTITY.
    pub balanced_high: u16,
    /// Declared protected_state; canonical bounds are part of CODEC_IDENTITY.
    pub protected_state: u16,
    /// Declared software_version; canonical bounds are part of CODEC_IDENTITY.
    pub software_version: u8,
    /// Declared battery_level; canonical bounds are part of CODEC_IDENTITY.
    pub battery_level: u8,
    /// Declared mos_state; canonical bounds are part of CODEC_IDENTITY.
    pub mos_state: u8,
    /// Declared battery_quantity; canonical bounds are part of CODEC_IDENTITY.
    pub battery_quantity: u8,
    /// Declared battery_ntc; canonical bounds are part of CODEC_IDENTITY.
    pub battery_ntc: u8,
    /// Declared battery_temperature; canonical bounds are part of CODEC_IDENTITY.
    pub battery_temperature: Vec<f32>,
    /// Declared battery_serialnum; canonical bounds are part of CODEC_IDENTITY.
    pub battery_serialnum: [u8; 32],
}
impl Default for Ros2DrddsMsgBatteryDataValue {
    fn default() -> Self {
        Self {
            voltage: Default::default(),
            current: Default::default(),
            remaining_capacity: Default::default(),
            nominal_capacity: Default::default(),
            cycles: Default::default(),
            production_date: Default::default(),
            balanced_low: Default::default(),
            balanced_high: Default::default(),
            protected_state: Default::default(),
            software_version: Default::default(),
            battery_level: Default::default(),
            mos_state: Default::default(),
            battery_quantity: Default::default(),
            battery_ntc: Default::default(),
            battery_temperature: Default::default(),
            battery_serialnum: core::array::from_fn(|_| Default::default()),
        }
    }
}
impl Ros2DrddsMsgBatteryDataValue {
    pub const MAX_WIRE_BYTES: usize = 123;
    pub const CARTESIAN_WIRE_BYTES: u64 = 123;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_076c053d37d08f14e5a1a886e696e6a0f7fe3a7bea54b38206cdcba3a23313bc";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 2)?;
        n = add_size(n, 2)?;
        n = add_size(n, 2)?;
        n = add_size(n, 2)?;
        n = add_size(n, 2)?;
        n = add_size(n, 2)?;
        n = add_size(n, 2)?;
        n = add_size(n, 2)?;
        n = add_size(n, 2)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        if self.battery_temperature.len() > 16 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.battery_temperature {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
        }
        for element in &self.battery_serialnum {
            n = add_size(n, 1)?;
        }
        if n > 123 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.voltage.to_le_bytes());
        put(out, at, &self.current.to_le_bytes());
        put(out, at, &self.remaining_capacity.to_le_bytes());
        put(out, at, &self.nominal_capacity.to_le_bytes());
        put(out, at, &self.cycles.to_le_bytes());
        put(out, at, &self.production_date.to_le_bytes());
        put(out, at, &self.balanced_low.to_le_bytes());
        put(out, at, &self.balanced_high.to_le_bytes());
        put(out, at, &self.protected_state.to_le_bytes());
        put(out, at, &self.software_version.to_le_bytes());
        put(out, at, &self.battery_level.to_le_bytes());
        put(out, at, &self.mos_state.to_le_bytes());
        put(out, at, &self.battery_quantity.to_le_bytes());
        put(out, at, &self.battery_ntc.to_le_bytes());
        put(
            out,
            at,
            &(self.battery_temperature.len() as u32).to_le_bytes(),
        );
        for element in &self.battery_temperature {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.battery_serialnum {
            put(out, at, &element.to_le_bytes());
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.voltage = decoded;
        let decoded = i16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.current = decoded;
        let decoded = u16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.remaining_capacity = decoded;
        let decoded = u16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.nominal_capacity = decoded;
        let decoded = u16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.cycles = decoded;
        let decoded = u16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.production_date = decoded;
        let decoded = u16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.balanced_low = decoded;
        let decoded = u16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.balanced_high = decoded;
        let decoded = u16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.protected_state = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.software_version = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.battery_level = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.mos_state = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.battery_quantity = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.battery_ntc = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 16 {
                return Err(invalid());
            }
            value.battery_temperature = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.battery_temperature.push(decoded);
            }
        }
        {
            let count = 32usize;
            if count > 32 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
                value.battery_serialnum[i] = decoded;
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2DrddsMsgBatteryDataValue {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 123 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 59 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS2 drdds/msg/BatteryData.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2DrddsMsgBatteryData {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros2DrddsMsgMetaType,
    /// Declared data; canonical bounds are part of CODEC_IDENTITY.
    pub data: Vec<Ros2DrddsMsgBatteryDataValue>,
}
impl Default for Ros2DrddsMsgBatteryData {
    fn default() -> Self {
        Self {
            header: Default::default(),
            data: Default::default(),
        }
    }
}
impl Ros2DrddsMsgBatteryData {
    pub const MAX_WIRE_BYTES: usize = 512;
    pub const CARTESIAN_WIRE_BYTES: u64 = 512;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_8ab951a101e2e9522c39bcbb7fabea8966e78ea8141cb568e0aa1ac0c89d692e";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        if self.data.len() > 4 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.data {
            n = add_size(n, element.wire_size()?)?;
        }
        if n > 512 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
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
        put(out, at, &(self.data.len() as u32).to_le_bytes());
        for element in &self.data {
            element.write_fields(out, at);
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2DrddsMsgMetaType::read_fields(bytes, at)?;
        value.header = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 4 {
                return Err(invalid());
            }
            value.data = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros2DrddsMsgBatteryDataValue::read_fields(bytes, at)?;
                value.data.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2DrddsMsgBatteryData {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 512 {
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
/// Complete bounded value for ROS2 drdds/msg/GamepadData.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2DrddsMsgGamepadData {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros2DrddsMsgMetaType,
    /// Declared left_axis_x; canonical bounds are part of CODEC_IDENTITY.
    pub left_axis_x: f32,
    /// Declared left_axis_y; canonical bounds are part of CODEC_IDENTITY.
    pub left_axis_y: f32,
    /// Declared right_axis_x; canonical bounds are part of CODEC_IDENTITY.
    pub right_axis_x: f32,
    /// Declared right_axis_y; canonical bounds are part of CODEC_IDENTITY.
    pub right_axis_y: f32,
    /// Declared buttons; canonical bounds are part of CODEC_IDENTITY.
    pub buttons: u16,
}
impl Default for Ros2DrddsMsgGamepadData {
    fn default() -> Self {
        Self {
            header: Default::default(),
            left_axis_x: Default::default(),
            left_axis_y: Default::default(),
            right_axis_x: Default::default(),
            right_axis_y: Default::default(),
            buttons: Default::default(),
        }
    }
}
impl Ros2DrddsMsgGamepadData {
    pub const MAX_WIRE_BYTES: usize = 34;
    pub const CARTESIAN_WIRE_BYTES: u64 = 34;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_14c915cd4dc71671a25bdc811b65f0fc26aeb415e234205d5d53e53dfd3c6978";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        if !self.left_axis_x.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.left_axis_y.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.right_axis_x.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.right_axis_y.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, 2)?;
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
        self.header.write_fields(out, at);
        put(out, at, &self.left_axis_x.to_le_bytes());
        put(out, at, &self.left_axis_y.to_le_bytes());
        put(out, at, &self.right_axis_x.to_le_bytes());
        put(out, at, &self.right_axis_y.to_le_bytes());
        put(out, at, &self.buttons.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2DrddsMsgMetaType::read_fields(bytes, at)?;
        value.header = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.left_axis_x = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.left_axis_y = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.right_axis_x = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.right_axis_y = decoded;
        let decoded = u16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.buttons = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2DrddsMsgGamepadData {
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
/// Complete bounded value for ROS2 drdds/msg/ImuDataValue.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2DrddsMsgImuDataValue {
    /// Declared roll; canonical bounds are part of CODEC_IDENTITY.
    pub roll: f32,
    /// Declared pitch; canonical bounds are part of CODEC_IDENTITY.
    pub pitch: f32,
    /// Declared yaw; canonical bounds are part of CODEC_IDENTITY.
    pub yaw: f32,
    /// Declared omega_x; canonical bounds are part of CODEC_IDENTITY.
    pub omega_x: f32,
    /// Declared omega_y; canonical bounds are part of CODEC_IDENTITY.
    pub omega_y: f32,
    /// Declared omega_z; canonical bounds are part of CODEC_IDENTITY.
    pub omega_z: f32,
    /// Declared acc_x; canonical bounds are part of CODEC_IDENTITY.
    pub acc_x: f32,
    /// Declared acc_y; canonical bounds are part of CODEC_IDENTITY.
    pub acc_y: f32,
    /// Declared acc_z; canonical bounds are part of CODEC_IDENTITY.
    pub acc_z: f32,
}
impl Default for Ros2DrddsMsgImuDataValue {
    fn default() -> Self {
        Self {
            roll: Default::default(),
            pitch: Default::default(),
            yaw: Default::default(),
            omega_x: Default::default(),
            omega_y: Default::default(),
            omega_z: Default::default(),
            acc_x: Default::default(),
            acc_y: Default::default(),
            acc_z: Default::default(),
        }
    }
}
impl Ros2DrddsMsgImuDataValue {
    pub const MAX_WIRE_BYTES: usize = 36;
    pub const CARTESIAN_WIRE_BYTES: u64 = 36;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_c857b56c129bf59c4c6d6e1ea61b4f46e01f6a938b7eb55826c52f0b1f18e859";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if !self.roll.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.pitch.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.yaw.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.omega_x.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.omega_y.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.omega_z.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.acc_x.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.acc_y.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.acc_z.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if n > 36 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.roll.to_le_bytes());
        put(out, at, &self.pitch.to_le_bytes());
        put(out, at, &self.yaw.to_le_bytes());
        put(out, at, &self.omega_x.to_le_bytes());
        put(out, at, &self.omega_y.to_le_bytes());
        put(out, at, &self.omega_z.to_le_bytes());
        put(out, at, &self.acc_x.to_le_bytes());
        put(out, at, &self.acc_y.to_le_bytes());
        put(out, at, &self.acc_z.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.roll = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.pitch = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.yaw = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.omega_x = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.omega_y = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.omega_z = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.acc_x = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.acc_y = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.acc_z = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2DrddsMsgImuDataValue {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 36 {
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
/// Complete bounded value for ROS2 drdds/msg/ImuData.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2DrddsMsgImuData {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros2DrddsMsgMetaType,
    /// Declared data; canonical bounds are part of CODEC_IDENTITY.
    pub data: Ros2DrddsMsgImuDataValue,
}
impl Default for Ros2DrddsMsgImuData {
    fn default() -> Self {
        Self {
            header: Default::default(),
            data: Default::default(),
        }
    }
}
impl Ros2DrddsMsgImuData {
    pub const MAX_WIRE_BYTES: usize = 52;
    pub const CARTESIAN_WIRE_BYTES: u64 = 52;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_c98e1cc04d46c99666aea581a36b338bdd91561f843dc4cdfcd86a48e6cb989c";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        n = add_size(n, self.data.wire_size()?)?;
        if n > 52 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
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
        self.data.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2DrddsMsgMetaType::read_fields(bytes, at)?;
        value.header = decoded;
        let decoded = Ros2DrddsMsgImuDataValue::read_fields(bytes, at)?;
        value.data = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2DrddsMsgImuData {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 52 {
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
/// Complete bounded value for ROS2 drdds/msg/JointCmdValue.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2DrddsMsgJointCmdValue {
    /// Declared name; canonical bounds are part of CODEC_IDENTITY.
    pub name: Vec<u8>,
    /// Declared data_id; canonical bounds are part of CODEC_IDENTITY.
    pub data_id: u16,
    /// Declared control_word; canonical bounds are part of CODEC_IDENTITY.
    pub control_word: u16,
    /// Declared position; canonical bounds are part of CODEC_IDENTITY.
    pub position: f32,
    /// Declared torque; canonical bounds are part of CODEC_IDENTITY.
    pub torque: f32,
    /// Declared velocity; canonical bounds are part of CODEC_IDENTITY.
    pub velocity: f32,
    /// Declared kp; canonical bounds are part of CODEC_IDENTITY.
    pub kp: f32,
    /// Declared kd; canonical bounds are part of CODEC_IDENTITY.
    pub kd: f32,
}
impl Default for Ros2DrddsMsgJointCmdValue {
    fn default() -> Self {
        Self {
            name: Default::default(),
            data_id: Default::default(),
            control_word: Default::default(),
            position: Default::default(),
            torque: Default::default(),
            velocity: Default::default(),
            kp: Default::default(),
            kd: Default::default(),
        }
    }
}
impl Ros2DrddsMsgJointCmdValue {
    pub const MAX_WIRE_BYTES: usize = 284;
    pub const CARTESIAN_WIRE_BYTES: u64 = 284;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_f685f314bb39c4543735ba73d92655c4cace1d1162a9c699275b3937460738de";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.name.len() > 256 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.name {
            n = add_size(n, 1)?;
        }
        n = add_size(n, 2)?;
        n = add_size(n, 2)?;
        if !self.position.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.torque.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.velocity.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.kp.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.kd.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if n > 284 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
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
        for element in &self.name {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.data_id.to_le_bytes());
        put(out, at, &self.control_word.to_le_bytes());
        put(out, at, &self.position.to_le_bytes());
        put(out, at, &self.torque.to_le_bytes());
        put(out, at, &self.velocity.to_le_bytes());
        put(out, at, &self.kp.to_le_bytes());
        put(out, at, &self.kd.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = read_count(bytes, at)?;
            if count > 256 {
                return Err(invalid());
            }
            value.name = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
                value.name.push(decoded);
            }
        }
        let decoded = u16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.data_id = decoded;
        let decoded = u16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.control_word = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.position = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.torque = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.velocity = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.kp = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.kd = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2DrddsMsgJointCmdValue {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 284 {
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
/// Complete bounded value for ROS2 drdds/msg/JointData.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2DrddsMsgJointData {
    /// Declared name; canonical bounds are part of CODEC_IDENTITY.
    pub name: [u8; 4],
    /// Declared data_id; canonical bounds are part of CODEC_IDENTITY.
    pub data_id: u16,
    /// Declared status_word; canonical bounds are part of CODEC_IDENTITY.
    pub status_word: u16,
    /// Declared position; canonical bounds are part of CODEC_IDENTITY.
    pub position: f32,
    /// Declared torque; canonical bounds are part of CODEC_IDENTITY.
    pub torque: f32,
    /// Declared velocity; canonical bounds are part of CODEC_IDENTITY.
    pub velocity: f32,
    /// Declared motion_temp; canonical bounds are part of CODEC_IDENTITY.
    pub motion_temp: f32,
    /// Declared driver_temp; canonical bounds are part of CODEC_IDENTITY.
    pub driver_temp: f32,
}
impl Default for Ros2DrddsMsgJointData {
    fn default() -> Self {
        Self {
            name: core::array::from_fn(|_| Default::default()),
            data_id: Default::default(),
            status_word: Default::default(),
            position: Default::default(),
            torque: Default::default(),
            velocity: Default::default(),
            motion_temp: Default::default(),
            driver_temp: Default::default(),
        }
    }
}
impl Ros2DrddsMsgJointData {
    pub const MAX_WIRE_BYTES: usize = 28;
    pub const CARTESIAN_WIRE_BYTES: u64 = 28;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_269b21fc3b8c1461496b2aab41fc3354e9dc17cc9050ca7ce1962e62afce7e05";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.name {
            n = add_size(n, 1)?;
        }
        n = add_size(n, 2)?;
        n = add_size(n, 2)?;
        if !self.position.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.torque.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.velocity.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.motion_temp.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.driver_temp.is_finite() {
            return Err(invalid());
        }
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
        for element in &self.name {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.data_id.to_le_bytes());
        put(out, at, &self.status_word.to_le_bytes());
        put(out, at, &self.position.to_le_bytes());
        put(out, at, &self.torque.to_le_bytes());
        put(out, at, &self.velocity.to_le_bytes());
        put(out, at, &self.motion_temp.to_le_bytes());
        put(out, at, &self.driver_temp.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = 4usize;
            if count > 4 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
                value.name[i] = decoded;
            }
        }
        let decoded = u16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.data_id = decoded;
        let decoded = u16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.status_word = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.position = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.torque = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.velocity = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.motion_temp = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.driver_temp = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2DrddsMsgJointData {
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
/// Complete bounded value for ROS2 drdds/msg/JointDataCmd.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2DrddsMsgJointDataCmd {
    /// Declared name; canonical bounds are part of CODEC_IDENTITY.
    pub name: [u8; 4],
    /// Declared data_id; canonical bounds are part of CODEC_IDENTITY.
    pub data_id: u16,
    /// Declared control_word; canonical bounds are part of CODEC_IDENTITY.
    pub control_word: u16,
    /// Declared position; canonical bounds are part of CODEC_IDENTITY.
    pub position: f32,
    /// Declared torque; canonical bounds are part of CODEC_IDENTITY.
    pub torque: f32,
    /// Declared velocity; canonical bounds are part of CODEC_IDENTITY.
    pub velocity: f32,
    /// Declared kp; canonical bounds are part of CODEC_IDENTITY.
    pub kp: f32,
    /// Declared kd; canonical bounds are part of CODEC_IDENTITY.
    pub kd: f32,
}
impl Default for Ros2DrddsMsgJointDataCmd {
    fn default() -> Self {
        Self {
            name: core::array::from_fn(|_| Default::default()),
            data_id: Default::default(),
            control_word: Default::default(),
            position: Default::default(),
            torque: Default::default(),
            velocity: Default::default(),
            kp: Default::default(),
            kd: Default::default(),
        }
    }
}
impl Ros2DrddsMsgJointDataCmd {
    pub const MAX_WIRE_BYTES: usize = 28;
    pub const CARTESIAN_WIRE_BYTES: u64 = 28;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_c68c64167c2bd6ce84e78a37fe245c0c2bc40d4b2945a486f257222b2e1e7e0e";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.name {
            n = add_size(n, 1)?;
        }
        n = add_size(n, 2)?;
        n = add_size(n, 2)?;
        if !self.position.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.torque.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.velocity.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.kp.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.kd.is_finite() {
            return Err(invalid());
        }
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
        for element in &self.name {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.data_id.to_le_bytes());
        put(out, at, &self.control_word.to_le_bytes());
        put(out, at, &self.position.to_le_bytes());
        put(out, at, &self.torque.to_le_bytes());
        put(out, at, &self.velocity.to_le_bytes());
        put(out, at, &self.kp.to_le_bytes());
        put(out, at, &self.kd.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = 4usize;
            if count > 4 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
                value.name[i] = decoded;
            }
        }
        let decoded = u16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.data_id = decoded;
        let decoded = u16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.control_word = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.position = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.torque = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.velocity = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.kp = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.kd = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2DrddsMsgJointDataCmd {
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
/// Complete bounded value for ROS2 drdds/msg/JointValue.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2DrddsMsgJointValue {
    /// Declared name; canonical bounds are part of CODEC_IDENTITY.
    pub name: Vec<u8>,
    /// Declared data_id; canonical bounds are part of CODEC_IDENTITY.
    pub data_id: u16,
    /// Declared status_word; canonical bounds are part of CODEC_IDENTITY.
    pub status_word: u16,
    /// Declared position; canonical bounds are part of CODEC_IDENTITY.
    pub position: f32,
    /// Declared torque; canonical bounds are part of CODEC_IDENTITY.
    pub torque: f32,
    /// Declared velocity; canonical bounds are part of CODEC_IDENTITY.
    pub velocity: f32,
    /// Declared motion_temp; canonical bounds are part of CODEC_IDENTITY.
    pub motion_temp: f32,
    /// Declared driver_temp; canonical bounds are part of CODEC_IDENTITY.
    pub driver_temp: f32,
}
impl Default for Ros2DrddsMsgJointValue {
    fn default() -> Self {
        Self {
            name: Default::default(),
            data_id: Default::default(),
            status_word: Default::default(),
            position: Default::default(),
            torque: Default::default(),
            velocity: Default::default(),
            motion_temp: Default::default(),
            driver_temp: Default::default(),
        }
    }
}
impl Ros2DrddsMsgJointValue {
    pub const MAX_WIRE_BYTES: usize = 284;
    pub const CARTESIAN_WIRE_BYTES: u64 = 284;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_5c0cb9ecbc1169e7b4cf4656cd0105466cb4e9269c946339debabfd64e5824da";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.name.len() > 256 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.name {
            n = add_size(n, 1)?;
        }
        n = add_size(n, 2)?;
        n = add_size(n, 2)?;
        if !self.position.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.torque.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.velocity.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.motion_temp.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.driver_temp.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if n > 284 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
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
        for element in &self.name {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.data_id.to_le_bytes());
        put(out, at, &self.status_word.to_le_bytes());
        put(out, at, &self.position.to_le_bytes());
        put(out, at, &self.torque.to_le_bytes());
        put(out, at, &self.velocity.to_le_bytes());
        put(out, at, &self.motion_temp.to_le_bytes());
        put(out, at, &self.driver_temp.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = read_count(bytes, at)?;
            if count > 256 {
                return Err(invalid());
            }
            value.name = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
                value.name.push(decoded);
            }
        }
        let decoded = u16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.data_id = decoded;
        let decoded = u16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.status_word = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.position = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.torque = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.velocity = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.motion_temp = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.driver_temp = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2DrddsMsgJointValue {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 284 {
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
/// Complete bounded value for ROS2 drdds/msg/JointsDataValue.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2DrddsMsgJointsDataValue {
    /// Declared joints_data; canonical bounds are part of CODEC_IDENTITY.
    pub joints_data: [Ros2DrddsMsgJointData; 16],
}
impl Default for Ros2DrddsMsgJointsDataValue {
    fn default() -> Self {
        Self {
            joints_data: core::array::from_fn(|_| Default::default()),
        }
    }
}
impl Ros2DrddsMsgJointsDataValue {
    pub const MAX_WIRE_BYTES: usize = 448;
    pub const CARTESIAN_WIRE_BYTES: u64 = 448;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_e1c01b2edfac0d76f024533b582b3be527bbe70f8be7be45ea74dab31e764bd8";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.joints_data {
            n = add_size(n, element.wire_size()?)?;
        }
        if n > 448 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        for element in &self.joints_data {
            element.write_fields(out, at);
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = 16usize;
            if count > 16 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded = Ros2DrddsMsgJointData::read_fields(bytes, at)?;
                value.joints_data[i] = decoded;
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2DrddsMsgJointsDataValue {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 448 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 448 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS2 drdds/msg/JointsData.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2DrddsMsgJointsData {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros2DrddsMsgMetaType,
    /// Declared data; canonical bounds are part of CODEC_IDENTITY.
    pub data: Ros2DrddsMsgJointsDataValue,
}
impl Default for Ros2DrddsMsgJointsData {
    fn default() -> Self {
        Self {
            header: Default::default(),
            data: Default::default(),
        }
    }
}
impl Ros2DrddsMsgJointsData {
    pub const MAX_WIRE_BYTES: usize = 464;
    pub const CARTESIAN_WIRE_BYTES: u64 = 464;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_58eaf7ff13be07922dbb6edfb9109be96a3adad0fbd512a5f66af24dc7b4d43d";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        n = add_size(n, self.data.wire_size()?)?;
        if n > 464 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
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
        self.data.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2DrddsMsgMetaType::read_fields(bytes, at)?;
        value.header = decoded;
        let decoded = Ros2DrddsMsgJointsDataValue::read_fields(bytes, at)?;
        value.data = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2DrddsMsgJointsData {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 464 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 464 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS2 drdds/msg/JointsDataCmdValue.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2DrddsMsgJointsDataCmdValue {
    /// Declared joints_data; canonical bounds are part of CODEC_IDENTITY.
    pub joints_data: [Ros2DrddsMsgJointDataCmd; 16],
}
impl Default for Ros2DrddsMsgJointsDataCmdValue {
    fn default() -> Self {
        Self {
            joints_data: core::array::from_fn(|_| Default::default()),
        }
    }
}
impl Ros2DrddsMsgJointsDataCmdValue {
    pub const MAX_WIRE_BYTES: usize = 448;
    pub const CARTESIAN_WIRE_BYTES: u64 = 448;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_797ad7349b381083eafb361a8a7d4f28d64c8f3a1ee5719a3008d687893ab016";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.joints_data {
            n = add_size(n, element.wire_size()?)?;
        }
        if n > 448 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        for element in &self.joints_data {
            element.write_fields(out, at);
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = 16usize;
            if count > 16 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded = Ros2DrddsMsgJointDataCmd::read_fields(bytes, at)?;
                value.joints_data[i] = decoded;
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2DrddsMsgJointsDataCmdValue {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 448 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 448 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS2 drdds/msg/JointsDataCmd.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2DrddsMsgJointsDataCmd {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros2DrddsMsgMetaType,
    /// Declared data; canonical bounds are part of CODEC_IDENTITY.
    pub data: Ros2DrddsMsgJointsDataCmdValue,
}
impl Default for Ros2DrddsMsgJointsDataCmd {
    fn default() -> Self {
        Self {
            header: Default::default(),
            data: Default::default(),
        }
    }
}
impl Ros2DrddsMsgJointsDataCmd {
    pub const MAX_WIRE_BYTES: usize = 464;
    pub const CARTESIAN_WIRE_BYTES: u64 = 464;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_5b1676cb4fbfd6970756ce6221ca6abf1911bd7e8108146fd9afccf62180bb45";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        n = add_size(n, self.data.wire_size()?)?;
        if n > 464 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
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
        self.data.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2DrddsMsgMetaType::read_fields(bytes, at)?;
        value.header = decoded;
        let decoded = Ros2DrddsMsgJointsDataCmdValue::read_fields(bytes, at)?;
        value.data = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2DrddsMsgJointsDataCmd {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 464 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 464 {
            return Err(invalid());
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
/// Complete bounded value for ROS2 geometry_msgs/msg/Vector3.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Geometry_msgsMsgVector3 {
    /// Declared x; canonical bounds are part of CODEC_IDENTITY.
    pub x: f64,
    /// Declared y; canonical bounds are part of CODEC_IDENTITY.
    pub y: f64,
    /// Declared z; canonical bounds are part of CODEC_IDENTITY.
    pub z: f64,
}
impl Default for Ros2Geometry_msgsMsgVector3 {
    fn default() -> Self {
        Self {
            x: Default::default(),
            y: Default::default(),
            z: Default::default(),
        }
    }
}
impl Ros2Geometry_msgsMsgVector3 {
    pub const MAX_WIRE_BYTES: usize = 24;
    pub const CARTESIAN_WIRE_BYTES: u64 = 24;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e";
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
impl Canonical for Ros2Geometry_msgsMsgVector3 {
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
/// Complete bounded value for ROS2 geometry_msgs/msg/Twist.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Geometry_msgsMsgTwist {
    /// Declared linear; canonical bounds are part of CODEC_IDENTITY.
    pub linear: Ros2Geometry_msgsMsgVector3,
    /// Declared angular; canonical bounds are part of CODEC_IDENTITY.
    pub angular: Ros2Geometry_msgsMsgVector3,
}
impl Default for Ros2Geometry_msgsMsgTwist {
    fn default() -> Self {
        Self {
            linear: Default::default(),
            angular: Default::default(),
        }
    }
}
impl Ros2Geometry_msgsMsgTwist {
    pub const MAX_WIRE_BYTES: usize = 48;
    pub const CARTESIAN_WIRE_BYTES: u64 = 48;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e";
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
        let decoded = Ros2Geometry_msgsMsgVector3::read_fields(bytes, at)?;
        value.linear = decoded;
        let decoded = Ros2Geometry_msgsMsgVector3::read_fields(bytes, at)?;
        value.angular = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Geometry_msgsMsgTwist {
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
    pub const MAX_WIRE_BYTES: usize = 6044;
    pub const CARTESIAN_WIRE_BYTES: u64 = 6044;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_81135016cfa64b7f2845d6090ce9f70691df1472ab66993c7d98b2a79399907f";
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
        if n > 6044 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
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
        if bytes.len() > 6044 {
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
/// Complete bounded value for ROS2 drdds/msg/RobotStatus.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2DrddsMsgRobotStatus {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros2Std_msgsMsgHeader,
    /// Declared robot; canonical bounds are part of CODEC_IDENTITY.
    pub robot: String,
    /// Declared command_source; canonical bounds are part of CODEC_IDENTITY.
    pub command_source: String,
    /// Declared current_state; canonical bounds are part of CODEC_IDENTITY.
    pub current_state: String,
    /// Declared current_state_id; canonical bounds are part of CODEC_IDENTITY.
    pub current_state_id: u8,
    /// Declared requested_state; canonical bounds are part of CODEC_IDENTITY.
    pub requested_state: String,
    /// Declared requested_state_id; canonical bounds are part of CODEC_IDENTITY.
    pub requested_state_id: u8,
    /// Declared safety_mode; canonical bounds are part of CODEC_IDENTITY.
    pub safety_mode: u8,
    /// Declared command; canonical bounds are part of CODEC_IDENTITY.
    pub command: Ros2Geometry_msgsMsgTwist,
    /// Declared command_timed_out; canonical bounds are part of CODEC_IDENTITY.
    pub command_timed_out: bool,
    /// Declared rejected_commands; canonical bounds are part of CODEC_IDENTITY.
    pub rejected_commands: u64,
    /// Declared command_updates; canonical bounds are part of CODEC_IDENTITY.
    pub command_updates: u64,
    /// Declared joint_stamp; canonical bounds are part of CODEC_IDENTITY.
    pub joint_stamp: f64,
    /// Declared imu_stamp; canonical bounds are part of CODEC_IDENTITY.
    pub imu_stamp: f64,
    /// Declared telemetry_fresh; canonical bounds are part of CODEC_IDENTITY.
    pub telemetry_fresh: bool,
    /// Declared joints; canonical bounds are part of CODEC_IDENTITY.
    pub joints: Ros2Sensor_msgsMsgJointState,
    /// Declared base_rpy; canonical bounds are part of CODEC_IDENTITY.
    pub base_rpy: Ros2Geometry_msgsMsgVector3,
    /// Declared base_angular_velocity; canonical bounds are part of CODEC_IDENTITY.
    pub base_angular_velocity: Ros2Geometry_msgsMsgVector3,
}
impl Default for Ros2DrddsMsgRobotStatus {
    fn default() -> Self {
        Self {
            header: Default::default(),
            robot: Default::default(),
            command_source: Default::default(),
            current_state: Default::default(),
            current_state_id: Default::default(),
            requested_state: Default::default(),
            requested_state_id: Default::default(),
            safety_mode: Default::default(),
            command: Default::default(),
            command_timed_out: Default::default(),
            rejected_commands: Default::default(),
            command_updates: Default::default(),
            joint_stamp: Default::default(),
            imu_stamp: Default::default(),
            telemetry_fresh: Default::default(),
            joints: Default::default(),
            base_rpy: Default::default(),
            base_angular_velocity: Default::default(),
        }
    }
}
impl Ros2DrddsMsgRobotStatus {
    pub const MAX_WIRE_BYTES: usize = 6845;
    pub const CARTESIAN_WIRE_BYTES: u64 = 6845;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_aa90e870c49613a133808e9eade2720e131e77b95138c0a5efe47e1e3cb052ae";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        if self.robot.len() > 128 || self.robot.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.robot.len())?;
        if self.command_source.len() > 128 || self.command_source.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.command_source.len())?;
        if self.current_state.len() > 128 || self.current_state.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.current_state.len())?;
        n = add_size(n, 1)?;
        if self.requested_state.len() > 128 || self.requested_state.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.requested_state.len())?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, self.command.wire_size()?)?;
        n = add_size(n, 1)?;
        n = add_size(n, 8)?;
        n = add_size(n, 8)?;
        if !self.joint_stamp.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.imu_stamp.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        n = add_size(n, 1)?;
        n = add_size(n, self.joints.wire_size()?)?;
        n = add_size(n, self.base_rpy.wire_size()?)?;
        n = add_size(n, self.base_angular_velocity.wire_size()?)?;
        if n > 6845 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
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
        put(out, at, &(self.robot.len() as u32).to_le_bytes());
        put(out, at, self.robot.as_bytes());
        put(out, at, &(self.command_source.len() as u32).to_le_bytes());
        put(out, at, self.command_source.as_bytes());
        put(out, at, &(self.current_state.len() as u32).to_le_bytes());
        put(out, at, self.current_state.as_bytes());
        put(out, at, &self.current_state_id.to_le_bytes());
        put(out, at, &(self.requested_state.len() as u32).to_le_bytes());
        put(out, at, self.requested_state.as_bytes());
        put(out, at, &self.requested_state_id.to_le_bytes());
        put(out, at, &self.safety_mode.to_le_bytes());
        self.command.write_fields(out, at);
        put(out, at, &[u8::from(self.command_timed_out)]);
        put(out, at, &self.rejected_commands.to_le_bytes());
        put(out, at, &self.command_updates.to_le_bytes());
        put(out, at, &self.joint_stamp.to_le_bytes());
        put(out, at, &self.imu_stamp.to_le_bytes());
        put(out, at, &[u8::from(self.telemetry_fresh)]);
        self.joints.write_fields(out, at);
        self.base_rpy.write_fields(out, at);
        self.base_angular_velocity.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Std_msgsMsgHeader::read_fields(bytes, at)?;
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
        value.robot = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.command_source = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.current_state = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.current_state_id = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.requested_state = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.requested_state_id = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.safety_mode = decoded;
        let decoded = Ros2Geometry_msgsMsgTwist::read_fields(bytes, at)?;
        value.command = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.command_timed_out = decoded;
        let decoded = u64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        value.rejected_commands = decoded;
        let decoded = u64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        value.command_updates = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.joint_stamp = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.imu_stamp = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.telemetry_fresh = decoded;
        let decoded = Ros2Sensor_msgsMsgJointState::read_fields(bytes, at)?;
        value.joints = decoded;
        let decoded = Ros2Geometry_msgsMsgVector3::read_fields(bytes, at)?;
        value.base_rpy = decoded;
        let decoded = Ros2Geometry_msgsMsgVector3::read_fields(bytes, at)?;
        value.base_angular_velocity = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2DrddsMsgRobotStatus {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 6845 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 189 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS2 drdds/msg/StdMsgFloat32.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2DrddsMsgStdMsgFloat32 {
    /// Declared value; canonical bounds are part of CODEC_IDENTITY.
    pub value: f32,
}
impl Default for Ros2DrddsMsgStdMsgFloat32 {
    fn default() -> Self {
        Self {
            value: Default::default(),
        }
    }
}
impl Ros2DrddsMsgStdMsgFloat32 {
    pub const MAX_WIRE_BYTES: usize = 4;
    pub const CARTESIAN_WIRE_BYTES: u64 = 4;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_60c4d2a6c37bc75722023dbd51c1796b1330023c2c773bd4da25aebb4d665c33";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if !self.value.is_finite() {
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
        put(out, at, &self.value.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.value = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2DrddsMsgStdMsgFloat32 {
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
/// Complete bounded value for ROS2 drdds/msg/StdMsgInt32.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2DrddsMsgStdMsgInt32 {
    /// Declared value; canonical bounds are part of CODEC_IDENTITY.
    pub value: i32,
}
impl Default for Ros2DrddsMsgStdMsgInt32 {
    fn default() -> Self {
        Self {
            value: Default::default(),
        }
    }
}
impl Ros2DrddsMsgStdMsgInt32 {
    pub const MAX_WIRE_BYTES: usize = 4;
    pub const CARTESIAN_WIRE_BYTES: u64 = 4;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_460694ceb9e0e29101e97b5758a3171e02b7830565fec83358ee7fa6157d42b1";
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
impl Canonical for Ros2DrddsMsgStdMsgInt32 {
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
/// Complete bounded value for ROS2 drdds/msg/StdStatus.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2DrddsMsgStdStatus {
    /// Declared state; canonical bounds are part of CODEC_IDENTITY.
    pub state: i32,
    /// Declared error_code; canonical bounds are part of CODEC_IDENTITY.
    pub error_code: u32,
}
impl Default for Ros2DrddsMsgStdStatus {
    fn default() -> Self {
        Self {
            state: Default::default(),
            error_code: Default::default(),
        }
    }
}
impl Ros2DrddsMsgStdStatus {
    pub const MAX_WIRE_BYTES: usize = 8;
    pub const CARTESIAN_WIRE_BYTES: u64 = 8;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_4d9ff460d62c4251ecda42a2637156e54b5e9adcce2ff442299c04968d6a2b28";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 4)?;
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
        put(out, at, &self.state.to_le_bytes());
        put(out, at, &self.error_code.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.state = decoded;
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.error_code = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2DrddsMsgStdStatus {
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
/// Complete bounded value for ROS2 drdds/msg/SteerValue.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2DrddsMsgSteerValue {
    /// Declared x; canonical bounds are part of CODEC_IDENTITY.
    pub x: f32,
    /// Declared y; canonical bounds are part of CODEC_IDENTITY.
    pub y: f32,
    /// Declared z; canonical bounds are part of CODEC_IDENTITY.
    pub z: f32,
    /// Declared roll; canonical bounds are part of CODEC_IDENTITY.
    pub roll: f32,
    /// Declared pitch; canonical bounds are part of CODEC_IDENTITY.
    pub pitch: f32,
    /// Declared yaw; canonical bounds are part of CODEC_IDENTITY.
    pub yaw: f32,
}
impl Default for Ros2DrddsMsgSteerValue {
    fn default() -> Self {
        Self {
            x: Default::default(),
            y: Default::default(),
            z: Default::default(),
            roll: Default::default(),
            pitch: Default::default(),
            yaw: Default::default(),
        }
    }
}
impl Ros2DrddsMsgSteerValue {
    pub const MAX_WIRE_BYTES: usize = 24;
    pub const CARTESIAN_WIRE_BYTES: u64 = 24;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_10007d7ed0f14ea52138dba2c3dfee590070ed8f2c0e5f48adab2486c371a236";
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
        if !self.roll.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.pitch.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.yaw.is_finite() {
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
        put(out, at, &self.x.to_le_bytes());
        put(out, at, &self.y.to_le_bytes());
        put(out, at, &self.z.to_le_bytes());
        put(out, at, &self.roll.to_le_bytes());
        put(out, at, &self.pitch.to_le_bytes());
        put(out, at, &self.yaw.to_le_bytes());
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
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.roll = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.pitch = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.yaw = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2DrddsMsgSteerValue {
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
/// Complete bounded value for ROS2 drdds/msg/Steer.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2DrddsMsgSteer {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros2DrddsMsgMetaType,
    /// Declared data; canonical bounds are part of CODEC_IDENTITY.
    pub data: Ros2DrddsMsgSteerValue,
}
impl Default for Ros2DrddsMsgSteer {
    fn default() -> Self {
        Self {
            header: Default::default(),
            data: Default::default(),
        }
    }
}
impl Ros2DrddsMsgSteer {
    pub const MAX_WIRE_BYTES: usize = 40;
    pub const CARTESIAN_WIRE_BYTES: u64 = 40;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_0749b852b4689e1d6df3fe333e91280ae87065f16267a255e548d73ed9e14793";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        n = add_size(n, self.data.wire_size()?)?;
        if n > 40 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
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
        self.data.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2DrddsMsgMetaType::read_fields(bytes, at)?;
        value.header = decoded;
        let decoded = Ros2DrddsMsgSteerValue::read_fields(bytes, at)?;
        value.data = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2DrddsMsgSteer {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 40 {
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
/// Complete bounded value for ROS2 drdds/srv/StdSrvInt32_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2DrddsSrvStdSrvInt32_Request {
    /// Declared command; canonical bounds are part of CODEC_IDENTITY.
    pub command: i32,
}
impl Default for Ros2DrddsSrvStdSrvInt32_Request {
    fn default() -> Self {
        Self {
            command: Default::default(),
        }
    }
}
impl Ros2DrddsSrvStdSrvInt32_Request {
    pub const MAX_WIRE_BYTES: usize = 4;
    pub const CARTESIAN_WIRE_BYTES: u64 = 4;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_00be6642e848f5cb36a34038277cf0002cdd2a76de8384ac17e11cd101fcd25e";
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
        put(out, at, &self.command.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.command = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2DrddsSrvStdSrvInt32_Request {
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
/// Complete bounded value for ROS2 drdds/srv/StdSrvInt32_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2DrddsSrvStdSrvInt32_Response {
    /// Declared result; canonical bounds are part of CODEC_IDENTITY.
    pub result: i32,
}
impl Default for Ros2DrddsSrvStdSrvInt32_Response {
    fn default() -> Self {
        Self {
            result: Default::default(),
        }
    }
}
impl Ros2DrddsSrvStdSrvInt32_Response {
    pub const MAX_WIRE_BYTES: usize = 4;
    pub const CARTESIAN_WIRE_BYTES: u64 = 4;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_a264c039c6b47e96c72615b8eba30d74b4bba736dabe5d52457f173930a9dcb4";
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
        put(out, at, &self.result.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.result = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2DrddsSrvStdSrvInt32_Response {
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
