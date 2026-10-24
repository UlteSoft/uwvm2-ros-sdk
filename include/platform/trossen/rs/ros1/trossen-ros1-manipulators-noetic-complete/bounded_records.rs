//! @file bounded_records.rs
//! @brief Provide the complete trossen ros1_manipulators_noetic canonical value surface.
//! @details The original 1 record catalog retains field order, constants, defaults and quotas.
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
/// Complete bounded value for ROS1 interbotix_uxarm_joy/ArmJoy.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Interbotix_uxarm_joyArmJoy {
    /// Declared ee_x_cmd; canonical bounds are part of CODEC_IDENTITY.
    pub ee_x_cmd: i8,
    /// Declared ee_y_cmd; canonical bounds are part of CODEC_IDENTITY.
    pub ee_y_cmd: i8,
    /// Declared ee_z_cmd; canonical bounds are part of CODEC_IDENTITY.
    pub ee_z_cmd: i8,
    /// Declared ee_yaw_cmd; canonical bounds are part of CODEC_IDENTITY.
    pub ee_yaw_cmd: i8,
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
    /// Declared gripper_speed_cmd; canonical bounds are part of CODEC_IDENTITY.
    pub gripper_speed_cmd: i8,
    /// Declared mode_cmd; canonical bounds are part of CODEC_IDENTITY.
    pub mode_cmd: i8,
}
impl Default for Ros1Interbotix_uxarm_joyArmJoy {
    fn default() -> Self {
        Self {
            ee_x_cmd: Default::default(),
            ee_y_cmd: Default::default(),
            ee_z_cmd: Default::default(),
            ee_yaw_cmd: Default::default(),
            ee_pitch_cmd: Default::default(),
            waist_cmd: Default::default(),
            gripper_cmd: Default::default(),
            pose_cmd: Default::default(),
            speed_cmd: Default::default(),
            speed_toggle_cmd: Default::default(),
            gripper_speed_cmd: Default::default(),
            mode_cmd: Default::default(),
        }
    }
}
impl Ros1Interbotix_uxarm_joyArmJoy {
    pub const MAX_WIRE_BYTES: usize = 12;
    pub const CARTESIAN_WIRE_BYTES: u64 = 12;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_70a9d567a462413c9a5c6ec9f44e79ee772a9327c22a2dc308fe6446fdb27d53";
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
        put(out, at, &self.ee_yaw_cmd.to_le_bytes());
        put(out, at, &self.ee_pitch_cmd.to_le_bytes());
        put(out, at, &self.waist_cmd.to_le_bytes());
        put(out, at, &self.gripper_cmd.to_le_bytes());
        put(out, at, &self.pose_cmd.to_le_bytes());
        put(out, at, &self.speed_cmd.to_le_bytes());
        put(out, at, &self.speed_toggle_cmd.to_le_bytes());
        put(out, at, &self.gripper_speed_cmd.to_le_bytes());
        put(out, at, &self.mode_cmd.to_le_bytes());
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
        value.ee_yaw_cmd = decoded;
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
        value.gripper_speed_cmd = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.mode_cmd = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Interbotix_uxarm_joyArmJoy {
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

impl Ros1Interbotix_uxarm_joyArmJoy {
    pub const EE_X_INC: i8 = 1;
    pub const EE_X_DEC: i8 = 2;
    pub const EE_Y_INC: i8 = 3;
    pub const EE_Y_DEC: i8 = 4;
    pub const EE_Z_INC: i8 = 5;
    pub const EE_Z_DEC: i8 = 6;
    pub const EE_YAW_CCW: i8 = 7;
    pub const EE_YAW_CW: i8 = 8;
    pub const EE_PITCH_UP: i8 = 9;
    pub const EE_PITCH_DOWN: i8 = 10;
    pub const WAIST_CCW: i8 = 11;
    pub const WAIST_CW: i8 = 12;
    pub const GRIPPER_OPEN: i8 = 13;
    pub const GRIPPER_CLOSE: i8 = 14;
    pub const HOME_POSE: i8 = 15;
    pub const HOLDUP_POSE: i8 = 16;
    pub const SPEED_INC: i8 = 17;
    pub const SPEED_DEC: i8 = 18;
    pub const SPEED_COARSE: i8 = 19;
    pub const SPEED_FINE: i8 = 20;
    pub const GRIPPER_SPEED_INC: i8 = 21;
    pub const GRIPPER_SPEED_DEC: i8 = 22;
    pub const MODE_SERVO: i8 = 23;
    pub const MODE_TEACH: i8 = 24;
}
