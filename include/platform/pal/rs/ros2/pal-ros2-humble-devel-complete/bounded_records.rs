//! @file bounded_records.rs
//! @brief Provide the complete pal ros2_humble_devel canonical value surface.
//! @details The original 30 record catalog retains field order, constants, defaults and quotas.
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
/// Complete bounded value for ROS2 std_msgs/msg/ColorRGBA.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Std_msgsMsgColorRGBA {
    /// Declared r; canonical bounds are part of CODEC_IDENTITY.
    pub r: f32,
    /// Declared g; canonical bounds are part of CODEC_IDENTITY.
    pub g: f32,
    /// Declared b; canonical bounds are part of CODEC_IDENTITY.
    pub b: f32,
    /// Declared a; canonical bounds are part of CODEC_IDENTITY.
    pub a: f32,
}
impl Default for Ros2Std_msgsMsgColorRGBA {
    fn default() -> Self {
        Self {
            r: Default::default(),
            g: Default::default(),
            b: Default::default(),
            a: Default::default(),
        }
    }
}
impl Ros2Std_msgsMsgColorRGBA {
    pub const MAX_WIRE_BYTES: usize = 16;
    pub const CARTESIAN_WIRE_BYTES: u64 = 16;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_087e0282f02c82a1d8f4580a47ff359ea71b7e72d477da47f49fc6bff61238b2";
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
impl Canonical for Ros2Std_msgsMsgColorRGBA {
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
/// Complete bounded value for ROS2 pal_device_msgs/msg/LedFixedColorParams.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Pal_device_msgsMsgLedFixedColorParams {
    /// Declared color; canonical bounds are part of CODEC_IDENTITY.
    pub color: Ros2Std_msgsMsgColorRGBA,
}
impl Default for Ros2Pal_device_msgsMsgLedFixedColorParams {
    fn default() -> Self {
        Self {
            color: Default::default(),
        }
    }
}
impl Ros2Pal_device_msgsMsgLedFixedColorParams {
    pub const MAX_WIRE_BYTES: usize = 16;
    pub const CARTESIAN_WIRE_BYTES: u64 = 16;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_486720194d8ed9dff1b17a2c59382a33cf04cab290115ecda1125481a750feac";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.color.wire_size()?)?;
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
        self.color.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Std_msgsMsgColorRGBA::read_fields(bytes, at)?;
        value.color = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Pal_device_msgsMsgLedFixedColorParams {
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
/// Complete bounded value for ROS2 pal_device_msgs/msg/LedRainbowParams.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Pal_device_msgsMsgLedRainbowParams {
    /// Declared transition_duration; canonical bounds are part of CODEC_IDENTITY.
    pub transition_duration: Ros2Builtin_interfacesMsgDuration,
}
impl Default for Ros2Pal_device_msgsMsgLedRainbowParams {
    fn default() -> Self {
        Self {
            transition_duration: Default::default(),
        }
    }
}
impl Ros2Pal_device_msgsMsgLedRainbowParams {
    pub const MAX_WIRE_BYTES: usize = 8;
    pub const CARTESIAN_WIRE_BYTES: u64 = 8;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_de1034a751e90f65a6f722cf685ee462b658f71c1d71b49ca7ee81177a9fd2e2";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.transition_duration.wire_size()?)?;
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
        self.transition_duration.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Builtin_interfacesMsgDuration::read_fields(bytes, at)?;
        value.transition_duration = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Pal_device_msgsMsgLedRainbowParams {
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
/// Complete bounded value for ROS2 pal_device_msgs/msg/LedFadeParams.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Pal_device_msgsMsgLedFadeParams {
    /// Declared first_color; canonical bounds are part of CODEC_IDENTITY.
    pub first_color: Ros2Std_msgsMsgColorRGBA,
    /// Declared second_color; canonical bounds are part of CODEC_IDENTITY.
    pub second_color: Ros2Std_msgsMsgColorRGBA,
    /// Declared transition_duration; canonical bounds are part of CODEC_IDENTITY.
    pub transition_duration: Ros2Builtin_interfacesMsgDuration,
    /// Declared reverse_fade; canonical bounds are part of CODEC_IDENTITY.
    pub reverse_fade: bool,
}
impl Default for Ros2Pal_device_msgsMsgLedFadeParams {
    fn default() -> Self {
        Self {
            first_color: Default::default(),
            second_color: Default::default(),
            transition_duration: Default::default(),
            reverse_fade: Default::default(),
        }
    }
}
impl Ros2Pal_device_msgsMsgLedFadeParams {
    pub const MAX_WIRE_BYTES: usize = 41;
    pub const CARTESIAN_WIRE_BYTES: u64 = 41;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_a1b956d5fbae5ef515a7376ed137b3562722641b7a728ed294f210a1299167e5";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.first_color.wire_size()?)?;
        n = add_size(n, self.second_color.wire_size()?)?;
        n = add_size(n, self.transition_duration.wire_size()?)?;
        n = add_size(n, 1)?;
        if n > 41 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.first_color.write_fields(out, at);
        self.second_color.write_fields(out, at);
        self.transition_duration.write_fields(out, at);
        put(out, at, &[u8::from(self.reverse_fade)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Std_msgsMsgColorRGBA::read_fields(bytes, at)?;
        value.first_color = decoded;
        let decoded = Ros2Std_msgsMsgColorRGBA::read_fields(bytes, at)?;
        value.second_color = decoded;
        let decoded = Ros2Builtin_interfacesMsgDuration::read_fields(bytes, at)?;
        value.transition_duration = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.reverse_fade = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Pal_device_msgsMsgLedFadeParams {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 41 {
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
/// Complete bounded value for ROS2 pal_device_msgs/msg/LedBlinkParams.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Pal_device_msgsMsgLedBlinkParams {
    /// Declared first_color; canonical bounds are part of CODEC_IDENTITY.
    pub first_color: Ros2Std_msgsMsgColorRGBA,
    /// Declared second_color; canonical bounds are part of CODEC_IDENTITY.
    pub second_color: Ros2Std_msgsMsgColorRGBA,
    /// Declared first_color_duration; canonical bounds are part of CODEC_IDENTITY.
    pub first_color_duration: Ros2Builtin_interfacesMsgDuration,
    /// Declared second_color_duration; canonical bounds are part of CODEC_IDENTITY.
    pub second_color_duration: Ros2Builtin_interfacesMsgDuration,
}
impl Default for Ros2Pal_device_msgsMsgLedBlinkParams {
    fn default() -> Self {
        Self {
            first_color: Default::default(),
            second_color: Default::default(),
            first_color_duration: Default::default(),
            second_color_duration: Default::default(),
        }
    }
}
impl Ros2Pal_device_msgsMsgLedBlinkParams {
    pub const MAX_WIRE_BYTES: usize = 48;
    pub const CARTESIAN_WIRE_BYTES: u64 = 48;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_c1c8148bf78fc5ab210d7aa1498f6f2d84aeab0199ec41362e56054482f349bd";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.first_color.wire_size()?)?;
        n = add_size(n, self.second_color.wire_size()?)?;
        n = add_size(n, self.first_color_duration.wire_size()?)?;
        n = add_size(n, self.second_color_duration.wire_size()?)?;
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
        self.first_color.write_fields(out, at);
        self.second_color.write_fields(out, at);
        self.first_color_duration.write_fields(out, at);
        self.second_color_duration.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Std_msgsMsgColorRGBA::read_fields(bytes, at)?;
        value.first_color = decoded;
        let decoded = Ros2Std_msgsMsgColorRGBA::read_fields(bytes, at)?;
        value.second_color = decoded;
        let decoded = Ros2Builtin_interfacesMsgDuration::read_fields(bytes, at)?;
        value.first_color_duration = decoded;
        let decoded = Ros2Builtin_interfacesMsgDuration::read_fields(bytes, at)?;
        value.second_color_duration = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Pal_device_msgsMsgLedBlinkParams {
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
/// Complete bounded value for ROS2 pal_device_msgs/msg/LedProgressParams.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Pal_device_msgsMsgLedProgressParams {
    /// Declared first_color; canonical bounds are part of CODEC_IDENTITY.
    pub first_color: Ros2Std_msgsMsgColorRGBA,
    /// Declared second_color; canonical bounds are part of CODEC_IDENTITY.
    pub second_color: Ros2Std_msgsMsgColorRGBA,
    /// Declared percentage; canonical bounds are part of CODEC_IDENTITY.
    pub percentage: f32,
    /// Declared led_offset; canonical bounds are part of CODEC_IDENTITY.
    pub led_offset: f32,
}
impl Default for Ros2Pal_device_msgsMsgLedProgressParams {
    fn default() -> Self {
        Self {
            first_color: Default::default(),
            second_color: Default::default(),
            percentage: Default::default(),
            led_offset: Default::default(),
        }
    }
}
impl Ros2Pal_device_msgsMsgLedProgressParams {
    pub const MAX_WIRE_BYTES: usize = 40;
    pub const CARTESIAN_WIRE_BYTES: u64 = 40;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_db7c705edf5aa8c5512323dec23f75af30b0971c3c26a52a6d2c02ea918d7ab0";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.first_color.wire_size()?)?;
        n = add_size(n, self.second_color.wire_size()?)?;
        if !self.percentage.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.led_offset.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
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
        self.first_color.write_fields(out, at);
        self.second_color.write_fields(out, at);
        put(out, at, &self.percentage.to_le_bytes());
        put(out, at, &self.led_offset.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Std_msgsMsgColorRGBA::read_fields(bytes, at)?;
        value.first_color = decoded;
        let decoded = Ros2Std_msgsMsgColorRGBA::read_fields(bytes, at)?;
        value.second_color = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.percentage = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.led_offset = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Pal_device_msgsMsgLedProgressParams {
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
/// Complete bounded value for ROS2 pal_device_msgs/msg/LedFlowParams.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Pal_device_msgsMsgLedFlowParams {
    /// Declared first_color; canonical bounds are part of CODEC_IDENTITY.
    pub first_color: Ros2Std_msgsMsgColorRGBA,
    /// Declared second_color; canonical bounds are part of CODEC_IDENTITY.
    pub second_color: Ros2Std_msgsMsgColorRGBA,
    /// Declared percentage; canonical bounds are part of CODEC_IDENTITY.
    pub percentage: f32,
    /// Declared velocity; canonical bounds are part of CODEC_IDENTITY.
    pub velocity: f32,
}
impl Default for Ros2Pal_device_msgsMsgLedFlowParams {
    fn default() -> Self {
        Self {
            first_color: Default::default(),
            second_color: Default::default(),
            percentage: Default::default(),
            velocity: Default::default(),
        }
    }
}
impl Ros2Pal_device_msgsMsgLedFlowParams {
    pub const MAX_WIRE_BYTES: usize = 40;
    pub const CARTESIAN_WIRE_BYTES: u64 = 40;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_6dbf5187ca7c1e7a8c5235832799bf22e3fed9ac7b76f7ce5ee340a5d2b79561";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.first_color.wire_size()?)?;
        n = add_size(n, self.second_color.wire_size()?)?;
        if !self.percentage.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.velocity.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
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
        self.first_color.write_fields(out, at);
        self.second_color.write_fields(out, at);
        put(out, at, &self.percentage.to_le_bytes());
        put(out, at, &self.velocity.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Std_msgsMsgColorRGBA::read_fields(bytes, at)?;
        value.first_color = decoded;
        let decoded = Ros2Std_msgsMsgColorRGBA::read_fields(bytes, at)?;
        value.second_color = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.percentage = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.velocity = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Pal_device_msgsMsgLedFlowParams {
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
/// Complete bounded value for ROS2 pal_device_msgs/msg/LedPreProgrammedParams.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Pal_device_msgsMsgLedPreProgrammedParams {
    /// Declared preprogrammed_id; canonical bounds are part of CODEC_IDENTITY.
    pub preprogrammed_id: u8,
}
impl Default for Ros2Pal_device_msgsMsgLedPreProgrammedParams {
    fn default() -> Self {
        Self {
            preprogrammed_id: Default::default(),
        }
    }
}
impl Ros2Pal_device_msgsMsgLedPreProgrammedParams {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_219ebe0cb090162e2975ca24ae26cfdfc0226d535b730114058f11749a4905be";
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
        put(out, at, &self.preprogrammed_id.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.preprogrammed_id = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Pal_device_msgsMsgLedPreProgrammedParams {
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
/// Complete bounded value for ROS2 pal_device_msgs/msg/LedEffectViaTopicParams.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Pal_device_msgsMsgLedEffectViaTopicParams {
    /// Declared topic_name; canonical bounds are part of CODEC_IDENTITY.
    pub topic_name: String,
}
impl Default for Ros2Pal_device_msgsMsgLedEffectViaTopicParams {
    fn default() -> Self {
        Self {
            topic_name: Default::default(),
        }
    }
}
impl Ros2Pal_device_msgsMsgLedEffectViaTopicParams {
    pub const MAX_WIRE_BYTES: usize = 132;
    pub const CARTESIAN_WIRE_BYTES: u64 = 132;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_91ab4bac3cb9685f695a523fc63eb3d7c5c7db9c057f75d2b4685b192b39e485";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.topic_name.len() > 128 || self.topic_name.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.topic_name.len())?;
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
        put(out, at, &(self.topic_name.len() as u32).to_le_bytes());
        put(out, at, self.topic_name.as_bytes());
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
        value.topic_name = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Pal_device_msgsMsgLedEffectViaTopicParams {
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
/// Complete bounded value for ROS2 pal_device_msgs/msg/LedDataArrayParams.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Pal_device_msgsMsgLedDataArrayParams {
    /// Declared data; canonical bounds are part of CODEC_IDENTITY.
    pub data: Vec<Ros2Std_msgsMsgColorRGBA>,
}
impl Default for Ros2Pal_device_msgsMsgLedDataArrayParams {
    fn default() -> Self {
        Self {
            data: Default::default(),
        }
    }
}
impl Ros2Pal_device_msgsMsgLedDataArrayParams {
    pub const MAX_WIRE_BYTES: usize = 68;
    pub const CARTESIAN_WIRE_BYTES: u64 = 68;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_f52b27f234be53ae9cfc421d8434f6a9d0e02ca8fc88de7534dac2472a0a4349";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.data.len() > 4 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.data {
            n = add_size(n, element.wire_size()?)?;
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
        put(out, at, &(self.data.len() as u32).to_le_bytes());
        for element in &self.data {
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
            value.data = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros2Std_msgsMsgColorRGBA::read_fields(bytes, at)?;
                value.data.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Pal_device_msgsMsgLedDataArrayParams {
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
/// Complete bounded value for ROS2 pal_device_msgs/msg/LedEffectParams.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Pal_device_msgsMsgLedEffectParams {
    /// Declared effect_type; canonical bounds are part of CODEC_IDENTITY.
    pub effect_type: u8,
    /// Declared fixed_color; canonical bounds are part of CODEC_IDENTITY.
    pub fixed_color: Ros2Pal_device_msgsMsgLedFixedColorParams,
    /// Declared rainbow; canonical bounds are part of CODEC_IDENTITY.
    pub rainbow: Ros2Pal_device_msgsMsgLedRainbowParams,
    /// Declared fade; canonical bounds are part of CODEC_IDENTITY.
    pub fade: Ros2Pal_device_msgsMsgLedFadeParams,
    /// Declared blink; canonical bounds are part of CODEC_IDENTITY.
    pub blink: Ros2Pal_device_msgsMsgLedBlinkParams,
    /// Declared progress; canonical bounds are part of CODEC_IDENTITY.
    pub progress: Ros2Pal_device_msgsMsgLedProgressParams,
    /// Declared flow; canonical bounds are part of CODEC_IDENTITY.
    pub flow: Ros2Pal_device_msgsMsgLedFlowParams,
    /// Declared preprogrammed; canonical bounds are part of CODEC_IDENTITY.
    pub preprogrammed: Ros2Pal_device_msgsMsgLedPreProgrammedParams,
    /// Declared effect_via_topic; canonical bounds are part of CODEC_IDENTITY.
    pub effect_via_topic: Ros2Pal_device_msgsMsgLedEffectViaTopicParams,
    /// Declared data_array; canonical bounds are part of CODEC_IDENTITY.
    pub data_array: Ros2Pal_device_msgsMsgLedDataArrayParams,
}
impl Default for Ros2Pal_device_msgsMsgLedEffectParams {
    fn default() -> Self {
        Self {
            effect_type: Default::default(),
            fixed_color: Default::default(),
            rainbow: Default::default(),
            fade: Default::default(),
            blink: Default::default(),
            progress: Default::default(),
            flow: Default::default(),
            preprogrammed: Default::default(),
            effect_via_topic: Default::default(),
            data_array: Default::default(),
        }
    }
}
impl Ros2Pal_device_msgsMsgLedEffectParams {
    pub const MAX_WIRE_BYTES: usize = 395;
    pub const CARTESIAN_WIRE_BYTES: u64 = 395;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_dbaf26734baee7c339c249fb6bd35f42672b48bac23966670f525f5d921f8848";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        n = add_size(n, self.fixed_color.wire_size()?)?;
        n = add_size(n, self.rainbow.wire_size()?)?;
        n = add_size(n, self.fade.wire_size()?)?;
        n = add_size(n, self.blink.wire_size()?)?;
        n = add_size(n, self.progress.wire_size()?)?;
        n = add_size(n, self.flow.wire_size()?)?;
        n = add_size(n, self.preprogrammed.wire_size()?)?;
        n = add_size(n, self.effect_via_topic.wire_size()?)?;
        n = add_size(n, self.data_array.wire_size()?)?;
        if n > 395 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.effect_type.to_le_bytes());
        self.fixed_color.write_fields(out, at);
        self.rainbow.write_fields(out, at);
        self.fade.write_fields(out, at);
        self.blink.write_fields(out, at);
        self.progress.write_fields(out, at);
        self.flow.write_fields(out, at);
        self.preprogrammed.write_fields(out, at);
        self.effect_via_topic.write_fields(out, at);
        self.data_array.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.effect_type = decoded;
        let decoded = Ros2Pal_device_msgsMsgLedFixedColorParams::read_fields(bytes, at)?;
        value.fixed_color = decoded;
        let decoded = Ros2Pal_device_msgsMsgLedRainbowParams::read_fields(bytes, at)?;
        value.rainbow = decoded;
        let decoded = Ros2Pal_device_msgsMsgLedFadeParams::read_fields(bytes, at)?;
        value.fade = decoded;
        let decoded = Ros2Pal_device_msgsMsgLedBlinkParams::read_fields(bytes, at)?;
        value.blink = decoded;
        let decoded = Ros2Pal_device_msgsMsgLedProgressParams::read_fields(bytes, at)?;
        value.progress = decoded;
        let decoded = Ros2Pal_device_msgsMsgLedFlowParams::read_fields(bytes, at)?;
        value.flow = decoded;
        let decoded = Ros2Pal_device_msgsMsgLedPreProgrammedParams::read_fields(bytes, at)?;
        value.preprogrammed = decoded;
        let decoded = Ros2Pal_device_msgsMsgLedEffectViaTopicParams::read_fields(bytes, at)?;
        value.effect_via_topic = decoded;
        let decoded = Ros2Pal_device_msgsMsgLedDataArrayParams::read_fields(bytes, at)?;
        value.data_array = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Pal_device_msgsMsgLedEffectParams {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 395 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 203 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS2 pal_device_msgs/action/DoTimedLedEffect_Goal.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Pal_device_msgsActionDoTimedLedEffect_Goal {
    /// Declared devices; canonical bounds are part of CODEC_IDENTITY.
    pub devices: Vec<u32>,
    /// Declared params; canonical bounds are part of CODEC_IDENTITY.
    pub params: Ros2Pal_device_msgsMsgLedEffectParams,
    /// Declared effect_duration; canonical bounds are part of CODEC_IDENTITY.
    pub effect_duration: Ros2Builtin_interfacesMsgDuration,
    /// Declared priority; canonical bounds are part of CODEC_IDENTITY.
    pub priority: u8,
}
impl Default for Ros2Pal_device_msgsActionDoTimedLedEffect_Goal {
    fn default() -> Self {
        Self {
            devices: Default::default(),
            params: Default::default(),
            effect_duration: Default::default(),
            priority: Default::default(),
        }
    }
}
impl Ros2Pal_device_msgsActionDoTimedLedEffect_Goal {
    pub const MAX_WIRE_BYTES: usize = 472;
    pub const CARTESIAN_WIRE_BYTES: u64 = 472;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_a7d6aafeeae03e2122a76727ab8503990df3791f351161c72d75a6ecf868a4f2";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.devices.len() > 16 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.devices {
            n = add_size(n, 4)?;
        }
        n = add_size(n, self.params.wire_size()?)?;
        n = add_size(n, self.effect_duration.wire_size()?)?;
        n = add_size(n, 1)?;
        if n > 472 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.devices.len() as u32).to_le_bytes());
        for element in &self.devices {
            put(out, at, &element.to_le_bytes());
        }
        self.params.write_fields(out, at);
        self.effect_duration.write_fields(out, at);
        put(out, at, &self.priority.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = read_count(bytes, at)?;
            if count > 16 {
                return Err(invalid());
            }
            value.devices = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                value.devices.push(decoded);
            }
        }
        let decoded = Ros2Pal_device_msgsMsgLedEffectParams::read_fields(bytes, at)?;
        value.params = decoded;
        let decoded = Ros2Builtin_interfacesMsgDuration::read_fields(bytes, at)?;
        value.effect_duration = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.priority = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Pal_device_msgsActionDoTimedLedEffect_Goal {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 472 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 216 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS2 pal_device_msgs/action/DoTimedLedEffect_Result.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Pal_device_msgsActionDoTimedLedEffect_Result {}
impl Default for Ros2Pal_device_msgsActionDoTimedLedEffect_Result {
    fn default() -> Self {
        Self {}
    }
}
impl Ros2Pal_device_msgsActionDoTimedLedEffect_Result {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_2191f5a4810fe2c464b9a346a9615ebc44783f7a03037798b1c38c727db852f9";
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
impl Canonical for Ros2Pal_device_msgsActionDoTimedLedEffect_Result {
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
/// Complete bounded value for ROS2 pal_device_msgs/action/DoTimedLedEffect_Feedback.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback {}
impl Default for Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback {
    fn default() -> Self {
        Self {}
    }
}
impl Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_b82ad14c20ec79d1face7e2ca9c6013f6a48010c88f849fc81eee4a2e120fc6d";
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
impl Canonical for Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback {
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
/// Complete bounded value for ROS2 pal_device_msgs/msg/BatteryState.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Pal_device_msgsMsgBatteryState {
    /// Declared charge_state; canonical bounds are part of CODEC_IDENTITY.
    pub charge_state: i8,
    /// Declared battery_percentage; canonical bounds are part of CODEC_IDENTITY.
    pub battery_percentage: f32,
}
impl Default for Ros2Pal_device_msgsMsgBatteryState {
    fn default() -> Self {
        Self {
            charge_state: Default::default(),
            battery_percentage: Default::default(),
        }
    }
}
impl Ros2Pal_device_msgsMsgBatteryState {
    pub const MAX_WIRE_BYTES: usize = 5;
    pub const CARTESIAN_WIRE_BYTES: u64 = 5;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_a9ea99580734e3ff1f8254e19a2543e049b52bb480642e6b31beda7fff3dc904";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if !self.battery_percentage.is_finite() {
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
        put(out, at, &self.charge_state.to_le_bytes());
        put(out, at, &self.battery_percentage.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.charge_state = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.battery_percentage = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Pal_device_msgsMsgBatteryState {
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
/// Complete bounded value for ROS2 pal_device_msgs/msg/Bumper.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Pal_device_msgsMsgBumper {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros2Std_msgsMsgHeader,
    /// Declared is_pressed; canonical bounds are part of CODEC_IDENTITY.
    pub is_pressed: bool,
}
impl Default for Ros2Pal_device_msgsMsgBumper {
    fn default() -> Self {
        Self {
            header: Default::default(),
            is_pressed: Default::default(),
        }
    }
}
impl Ros2Pal_device_msgsMsgBumper {
    pub const MAX_WIRE_BYTES: usize = 141;
    pub const CARTESIAN_WIRE_BYTES: u64 = 141;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_3488ad42d9a7cb8a17881026b932b5d9559ecbc1525dc827ce898cd37c69c022";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
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
        self.header.write_fields(out, at);
        put(out, at, &[u8::from(self.is_pressed)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Std_msgsMsgHeader::read_fields(bytes, at)?;
        value.header = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.is_pressed = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Pal_device_msgsMsgBumper {
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
/// Complete bounded value for ROS2 pal_device_msgs/msg/LedGroup.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Pal_device_msgsMsgLedGroup {
    /// Declared led_mask; canonical bounds are part of CODEC_IDENTITY.
    pub led_mask: u32,
}
impl Default for Ros2Pal_device_msgsMsgLedGroup {
    fn default() -> Self {
        Self {
            led_mask: Default::default(),
        }
    }
}
impl Ros2Pal_device_msgsMsgLedGroup {
    pub const MAX_WIRE_BYTES: usize = 4;
    pub const CARTESIAN_WIRE_BYTES: u64 = 4;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_9a08d65251c3a90b87f2013644a3d13080e40edb3b70f9d87a21d0c5421973f0";
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
        put(out, at, &self.led_mask.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.led_mask = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Pal_device_msgsMsgLedGroup {
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
/// Complete bounded value for ROS2 pal_device_msgs/srv/CancelEffect_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Pal_device_msgsSrvCancelEffect_Request {
    /// Declared effect_id; canonical bounds are part of CODEC_IDENTITY.
    pub effect_id: u32,
}
impl Default for Ros2Pal_device_msgsSrvCancelEffect_Request {
    fn default() -> Self {
        Self {
            effect_id: Default::default(),
        }
    }
}
impl Ros2Pal_device_msgsSrvCancelEffect_Request {
    pub const MAX_WIRE_BYTES: usize = 4;
    pub const CARTESIAN_WIRE_BYTES: u64 = 4;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_120bf0cc7ea1a4b52b66f30b53feabfc144f7d0fa4436f964b4d78c0249af062";
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
        put(out, at, &self.effect_id.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.effect_id = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Pal_device_msgsSrvCancelEffect_Request {
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
/// Complete bounded value for ROS2 pal_device_msgs/srv/CancelEffect_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Pal_device_msgsSrvCancelEffect_Response {}
impl Default for Ros2Pal_device_msgsSrvCancelEffect_Response {
    fn default() -> Self {
        Self {}
    }
}
impl Ros2Pal_device_msgsSrvCancelEffect_Response {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_c54c991922500d0588c4dba48df2580f4a752fda5bdd175d318ebc1c31aad657";
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
impl Canonical for Ros2Pal_device_msgsSrvCancelEffect_Response {
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
/// Complete bounded value for ROS2 pal_device_msgs/srv/ShutdownAndWakeUpRobot_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request {
    /// Declared shutdown_duration; canonical bounds are part of CODEC_IDENTITY.
    pub shutdown_duration: Ros2Builtin_interfacesMsgDuration,
}
impl Default for Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request {
    fn default() -> Self {
        Self {
            shutdown_duration: Default::default(),
        }
    }
}
impl Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request {
    pub const MAX_WIRE_BYTES: usize = 8;
    pub const CARTESIAN_WIRE_BYTES: u64 = 8;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_3aa4e835b4cf21c77bd25b980b022133b5425f4eb8798832d4f8403bfc691166";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.shutdown_duration.wire_size()?)?;
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
        self.shutdown_duration.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Builtin_interfacesMsgDuration::read_fields(bytes, at)?;
        value.shutdown_duration = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request {
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
/// Complete bounded value for ROS2 pal_device_msgs/srv/ShutdownAndWakeUpRobot_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response {}
impl Default for Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response {
    fn default() -> Self {
        Self {}
    }
}
impl Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_a3db908cd8f5f47c150070a0e2df18fada891ac05b1492ecbd025ba67d7e46af";
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
impl Canonical for Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response {
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
/// Complete bounded value for ROS2 pal_device_msgs/srv/TimedBlinkEffect_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Pal_device_msgsSrvTimedBlinkEffect_Request {
    /// Declared leds; canonical bounds are part of CODEC_IDENTITY.
    pub leds: Ros2Pal_device_msgsMsgLedGroup,
    /// Declared first_color; canonical bounds are part of CODEC_IDENTITY.
    pub first_color: Ros2Std_msgsMsgColorRGBA,
    /// Declared second_color; canonical bounds are part of CODEC_IDENTITY.
    pub second_color: Ros2Std_msgsMsgColorRGBA,
    /// Declared first_color_duration; canonical bounds are part of CODEC_IDENTITY.
    pub first_color_duration: Ros2Builtin_interfacesMsgDuration,
    /// Declared second_color_duration; canonical bounds are part of CODEC_IDENTITY.
    pub second_color_duration: Ros2Builtin_interfacesMsgDuration,
    /// Declared effect_duration; canonical bounds are part of CODEC_IDENTITY.
    pub effect_duration: Ros2Builtin_interfacesMsgDuration,
    /// Declared priority; canonical bounds are part of CODEC_IDENTITY.
    pub priority: u8,
}
impl Default for Ros2Pal_device_msgsSrvTimedBlinkEffect_Request {
    fn default() -> Self {
        Self {
            leds: Default::default(),
            first_color: Default::default(),
            second_color: Default::default(),
            first_color_duration: Default::default(),
            second_color_duration: Default::default(),
            effect_duration: Default::default(),
            priority: Default::default(),
        }
    }
}
impl Ros2Pal_device_msgsSrvTimedBlinkEffect_Request {
    pub const MAX_WIRE_BYTES: usize = 61;
    pub const CARTESIAN_WIRE_BYTES: u64 = 61;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_17a50bf4f71fe6d4d3e9d146df74fac1c2d6ed69c5899c51517785cdfcb9b15c";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.leds.wire_size()?)?;
        n = add_size(n, self.first_color.wire_size()?)?;
        n = add_size(n, self.second_color.wire_size()?)?;
        n = add_size(n, self.first_color_duration.wire_size()?)?;
        n = add_size(n, self.second_color_duration.wire_size()?)?;
        n = add_size(n, self.effect_duration.wire_size()?)?;
        n = add_size(n, 1)?;
        if n > 61 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.leds.write_fields(out, at);
        self.first_color.write_fields(out, at);
        self.second_color.write_fields(out, at);
        self.first_color_duration.write_fields(out, at);
        self.second_color_duration.write_fields(out, at);
        self.effect_duration.write_fields(out, at);
        put(out, at, &self.priority.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Pal_device_msgsMsgLedGroup::read_fields(bytes, at)?;
        value.leds = decoded;
        let decoded = Ros2Std_msgsMsgColorRGBA::read_fields(bytes, at)?;
        value.first_color = decoded;
        let decoded = Ros2Std_msgsMsgColorRGBA::read_fields(bytes, at)?;
        value.second_color = decoded;
        let decoded = Ros2Builtin_interfacesMsgDuration::read_fields(bytes, at)?;
        value.first_color_duration = decoded;
        let decoded = Ros2Builtin_interfacesMsgDuration::read_fields(bytes, at)?;
        value.second_color_duration = decoded;
        let decoded = Ros2Builtin_interfacesMsgDuration::read_fields(bytes, at)?;
        value.effect_duration = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.priority = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Pal_device_msgsSrvTimedBlinkEffect_Request {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 61 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 61 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS2 pal_device_msgs/srv/TimedBlinkEffect_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Pal_device_msgsSrvTimedBlinkEffect_Response {
    /// Declared effect_id; canonical bounds are part of CODEC_IDENTITY.
    pub effect_id: u32,
}
impl Default for Ros2Pal_device_msgsSrvTimedBlinkEffect_Response {
    fn default() -> Self {
        Self {
            effect_id: Default::default(),
        }
    }
}
impl Ros2Pal_device_msgsSrvTimedBlinkEffect_Response {
    pub const MAX_WIRE_BYTES: usize = 4;
    pub const CARTESIAN_WIRE_BYTES: u64 = 4;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_ea08afa309ccd316b279952de55d50e4d49fe027387ba12e54eba4b488e4d66a";
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
        put(out, at, &self.effect_id.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.effect_id = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Pal_device_msgsSrvTimedBlinkEffect_Response {
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
/// Complete bounded value for ROS2 pal_device_msgs/srv/TimedColourEffect_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Pal_device_msgsSrvTimedColourEffect_Request {
    /// Declared leds; canonical bounds are part of CODEC_IDENTITY.
    pub leds: Ros2Pal_device_msgsMsgLedGroup,
    /// Declared color; canonical bounds are part of CODEC_IDENTITY.
    pub color: Ros2Std_msgsMsgColorRGBA,
    /// Declared effect_duration; canonical bounds are part of CODEC_IDENTITY.
    pub effect_duration: Ros2Builtin_interfacesMsgDuration,
    /// Declared priority; canonical bounds are part of CODEC_IDENTITY.
    pub priority: u8,
}
impl Default for Ros2Pal_device_msgsSrvTimedColourEffect_Request {
    fn default() -> Self {
        Self {
            leds: Default::default(),
            color: Default::default(),
            effect_duration: Default::default(),
            priority: Default::default(),
        }
    }
}
impl Ros2Pal_device_msgsSrvTimedColourEffect_Request {
    pub const MAX_WIRE_BYTES: usize = 29;
    pub const CARTESIAN_WIRE_BYTES: u64 = 29;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_bb25c25962a52120bd8575be65dabd983ac46c7a19794f3793b37c2bf8ccbfa8";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.leds.wire_size()?)?;
        n = add_size(n, self.color.wire_size()?)?;
        n = add_size(n, self.effect_duration.wire_size()?)?;
        n = add_size(n, 1)?;
        if n > 29 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.leds.write_fields(out, at);
        self.color.write_fields(out, at);
        self.effect_duration.write_fields(out, at);
        put(out, at, &self.priority.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Pal_device_msgsMsgLedGroup::read_fields(bytes, at)?;
        value.leds = decoded;
        let decoded = Ros2Std_msgsMsgColorRGBA::read_fields(bytes, at)?;
        value.color = decoded;
        let decoded = Ros2Builtin_interfacesMsgDuration::read_fields(bytes, at)?;
        value.effect_duration = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.priority = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Pal_device_msgsSrvTimedColourEffect_Request {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 29 {
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
/// Complete bounded value for ROS2 pal_device_msgs/srv/TimedColourEffect_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Pal_device_msgsSrvTimedColourEffect_Response {
    /// Declared effect_id; canonical bounds are part of CODEC_IDENTITY.
    pub effect_id: u32,
}
impl Default for Ros2Pal_device_msgsSrvTimedColourEffect_Response {
    fn default() -> Self {
        Self {
            effect_id: Default::default(),
        }
    }
}
impl Ros2Pal_device_msgsSrvTimedColourEffect_Response {
    pub const MAX_WIRE_BYTES: usize = 4;
    pub const CARTESIAN_WIRE_BYTES: u64 = 4;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_5cd500032cfe7a263100061b2ebda37e8639cbf8a9c6fc978e9525f59d9df1f9";
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
        put(out, at, &self.effect_id.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.effect_id = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Pal_device_msgsSrvTimedColourEffect_Response {
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
/// Complete bounded value for ROS2 pal_device_msgs/srv/TimedFadeEffect_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Pal_device_msgsSrvTimedFadeEffect_Request {
    /// Declared leds; canonical bounds are part of CODEC_IDENTITY.
    pub leds: Ros2Pal_device_msgsMsgLedGroup,
    /// Declared first_color; canonical bounds are part of CODEC_IDENTITY.
    pub first_color: Ros2Std_msgsMsgColorRGBA,
    /// Declared second_color; canonical bounds are part of CODEC_IDENTITY.
    pub second_color: Ros2Std_msgsMsgColorRGBA,
    /// Declared color_change_duration; canonical bounds are part of CODEC_IDENTITY.
    pub color_change_duration: Ros2Builtin_interfacesMsgDuration,
    /// Declared reverse_fade; canonical bounds are part of CODEC_IDENTITY.
    pub reverse_fade: bool,
    /// Declared effect_duration; canonical bounds are part of CODEC_IDENTITY.
    pub effect_duration: Ros2Builtin_interfacesMsgDuration,
    /// Declared priority; canonical bounds are part of CODEC_IDENTITY.
    pub priority: u8,
}
impl Default for Ros2Pal_device_msgsSrvTimedFadeEffect_Request {
    fn default() -> Self {
        Self {
            leds: Default::default(),
            first_color: Default::default(),
            second_color: Default::default(),
            color_change_duration: Default::default(),
            reverse_fade: Default::default(),
            effect_duration: Default::default(),
            priority: Default::default(),
        }
    }
}
impl Ros2Pal_device_msgsSrvTimedFadeEffect_Request {
    pub const MAX_WIRE_BYTES: usize = 54;
    pub const CARTESIAN_WIRE_BYTES: u64 = 54;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_07c57a457aa0767c766865c5c3b0fdbf5c46e39eac881b452fbc08933c1d3b13";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.leds.wire_size()?)?;
        n = add_size(n, self.first_color.wire_size()?)?;
        n = add_size(n, self.second_color.wire_size()?)?;
        n = add_size(n, self.color_change_duration.wire_size()?)?;
        n = add_size(n, 1)?;
        n = add_size(n, self.effect_duration.wire_size()?)?;
        n = add_size(n, 1)?;
        if n > 54 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.leds.write_fields(out, at);
        self.first_color.write_fields(out, at);
        self.second_color.write_fields(out, at);
        self.color_change_duration.write_fields(out, at);
        put(out, at, &[u8::from(self.reverse_fade)]);
        self.effect_duration.write_fields(out, at);
        put(out, at, &self.priority.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Pal_device_msgsMsgLedGroup::read_fields(bytes, at)?;
        value.leds = decoded;
        let decoded = Ros2Std_msgsMsgColorRGBA::read_fields(bytes, at)?;
        value.first_color = decoded;
        let decoded = Ros2Std_msgsMsgColorRGBA::read_fields(bytes, at)?;
        value.second_color = decoded;
        let decoded = Ros2Builtin_interfacesMsgDuration::read_fields(bytes, at)?;
        value.color_change_duration = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.reverse_fade = decoded;
        let decoded = Ros2Builtin_interfacesMsgDuration::read_fields(bytes, at)?;
        value.effect_duration = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.priority = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Pal_device_msgsSrvTimedFadeEffect_Request {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 54 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 54 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS2 pal_device_msgs/srv/TimedFadeEffect_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Pal_device_msgsSrvTimedFadeEffect_Response {
    /// Declared effect_id; canonical bounds are part of CODEC_IDENTITY.
    pub effect_id: u32,
}
impl Default for Ros2Pal_device_msgsSrvTimedFadeEffect_Response {
    fn default() -> Self {
        Self {
            effect_id: Default::default(),
        }
    }
}
impl Ros2Pal_device_msgsSrvTimedFadeEffect_Response {
    pub const MAX_WIRE_BYTES: usize = 4;
    pub const CARTESIAN_WIRE_BYTES: u64 = 4;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_2d94870076ef7b1fe03d8ef45d96588fa3850faa0eaf39efd218b21fe947e8f5";
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
        put(out, at, &self.effect_id.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.effect_id = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Pal_device_msgsSrvTimedFadeEffect_Response {
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

impl Ros2Pal_device_msgsMsgLedEffectParams {
    pub const FIXED_COLOR: u8 = 0;
    pub const RAINBOW: u8 = 1;
    pub const FADE: u8 = 2;
    pub const BLINK: u8 = 3;
    pub const PROGRESS: u8 = 4;
    pub const FLOW: u8 = 5;
    pub const PREPROGRAMMED_EFFECT: u8 = 6;
    pub const EFFECT_VIA_TOPIC: u8 = 7;
    pub const DATA_ARRAY: u8 = 8;
}

impl Ros2Pal_device_msgsMsgBatteryState {
    pub const FULL: u8 = 5;
    pub const HIGH: u8 = 4;
    pub const MEDIUM: u8 = 3;
    pub const LOW: u8 = 2;
    pub const CRITICAL_LOW: u8 = 1;
}

impl Ros2Pal_device_msgsMsgLedGroup {
    pub const LEFT_EAR: u8 = 1;
    pub const RIGHT_EAR: u8 = 2;
}
