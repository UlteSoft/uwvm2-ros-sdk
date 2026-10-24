//! @file bounded_records.rs
//! @brief Provide the complete trossen ros1_main canonical value surface.
//! @details The original 61 record catalog retains field order, constants, defaults and quotas.
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
/// Complete bounded value for ROS1 interbotix_slate_msgs/SetStringRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Interbotix_slate_msgsSetStringRequest {
    /// Declared data; canonical bounds are part of CODEC_IDENTITY.
    pub data: String,
}
impl Default for Ros1Interbotix_slate_msgsSetStringRequest {
    fn default() -> Self {
        Self {
            data: Default::default(),
        }
    }
}
impl Ros1Interbotix_slate_msgsSetStringRequest {
    pub const MAX_WIRE_BYTES: usize = 132;
    pub const CARTESIAN_WIRE_BYTES: u64 = 132;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_bc58f043e73f33d5b3923bca8a1d515f62f405f3365b83adb17311a728d2f105";
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
impl Canonical for Ros1Interbotix_slate_msgsSetStringRequest {
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
/// Complete bounded value for ROS1 interbotix_slate_msgs/SetStringResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Interbotix_slate_msgsSetStringResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
    /// Declared message; canonical bounds are part of CODEC_IDENTITY.
    pub message: String,
}
impl Default for Ros1Interbotix_slate_msgsSetStringResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
            message: Default::default(),
        }
    }
}
impl Ros1Interbotix_slate_msgsSetStringResponse {
    pub const MAX_WIRE_BYTES: usize = 133;
    pub const CARTESIAN_WIRE_BYTES: u64 = 133;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_6f3a05dbee380f0a0f5b24b75833a99857293e656d705e4322b4b3f97a5e530c";
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
impl Canonical for Ros1Interbotix_slate_msgsSetStringResponse {
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
/// Complete bounded value for ROS1 interbotix_xs_msgs/ArmJoy.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Interbotix_xs_msgsArmJoy {
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
impl Default for Ros1Interbotix_xs_msgsArmJoy {
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
impl Ros1Interbotix_xs_msgsArmJoy {
    pub const MAX_WIRE_BYTES: usize = 12;
    pub const CARTESIAN_WIRE_BYTES: u64 = 12;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_f8a971ff01593f420de167c62e0f606fd3762866cc108659edcac50972cd3ea3";
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
impl Canonical for Ros1Interbotix_xs_msgsArmJoy {
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
/// Complete bounded value for ROS1 interbotix_xs_msgs/HexJoy.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Interbotix_xs_msgsHexJoy {
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
impl Default for Ros1Interbotix_xs_msgsHexJoy {
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
impl Ros1Interbotix_xs_msgsHexJoy {
    pub const MAX_WIRE_BYTES: usize = 17;
    pub const CARTESIAN_WIRE_BYTES: u64 = 17;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_b37a8bd136e63b066c12429e68af0721bb314a0b1131cb7e0e806faa56e04b37";
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
impl Canonical for Ros1Interbotix_xs_msgsHexJoy {
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
/// Complete bounded value for ROS1 interbotix_xs_msgs/JointGroupCommand.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Interbotix_xs_msgsJointGroupCommand {
    /// Declared name; canonical bounds are part of CODEC_IDENTITY.
    pub name: String,
    /// Declared cmd; canonical bounds are part of CODEC_IDENTITY.
    pub cmd: Vec<f32>,
}
impl Default for Ros1Interbotix_xs_msgsJointGroupCommand {
    fn default() -> Self {
        Self {
            name: Default::default(),
            cmd: Default::default(),
        }
    }
}
impl Ros1Interbotix_xs_msgsJointGroupCommand {
    pub const MAX_WIRE_BYTES: usize = 392;
    pub const CARTESIAN_WIRE_BYTES: u64 = 392;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_4fc3c13db66a0c916112022ddf02bd4be872e1b6124c7f2db43271b3a7b186ec";
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
impl Canonical for Ros1Interbotix_xs_msgsJointGroupCommand {
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
/// Complete bounded value for ROS1 interbotix_xs_msgs/JointSingleCommand.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Interbotix_xs_msgsJointSingleCommand {
    /// Declared name; canonical bounds are part of CODEC_IDENTITY.
    pub name: String,
    /// Declared cmd; canonical bounds are part of CODEC_IDENTITY.
    pub cmd: f32,
}
impl Default for Ros1Interbotix_xs_msgsJointSingleCommand {
    fn default() -> Self {
        Self {
            name: Default::default(),
            cmd: Default::default(),
        }
    }
}
impl Ros1Interbotix_xs_msgsJointSingleCommand {
    pub const MAX_WIRE_BYTES: usize = 136;
    pub const CARTESIAN_WIRE_BYTES: u64 = 136;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_6852cc1330e9c60378a89981a25fc2b01338a71225e57478c824a3aebc8b1af0";
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
impl Canonical for Ros1Interbotix_xs_msgsJointSingleCommand {
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
/// Complete bounded value for ROS1 interbotix_xs_msgs/JointTemps.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Interbotix_xs_msgsJointTemps {
    /// Declared names; canonical bounds are part of CODEC_IDENTITY.
    pub names: Vec<String>,
    /// Declared temps; canonical bounds are part of CODEC_IDENTITY.
    pub temps: Vec<i32>,
}
impl Default for Ros1Interbotix_xs_msgsJointTemps {
    fn default() -> Self {
        Self {
            names: Default::default(),
            temps: Default::default(),
        }
    }
}
impl Ros1Interbotix_xs_msgsJointTemps {
    pub const MAX_WIRE_BYTES: usize = 8712;
    pub const CARTESIAN_WIRE_BYTES: u64 = 8712;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_054409e3e97b0797e9c82e5c9d0dd5d7be1d421d3c78924dca8097e9ceb1a511";
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
impl Canonical for Ros1Interbotix_xs_msgsJointTemps {
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
/// Complete bounded value for ROS1 trajectory_msgs/JointTrajectoryPoint.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Trajectory_msgsJointTrajectoryPoint {
    /// Declared positions; canonical bounds are part of CODEC_IDENTITY.
    pub positions: Vec<f64>,
    /// Declared velocities; canonical bounds are part of CODEC_IDENTITY.
    pub velocities: Vec<f64>,
    /// Declared accelerations; canonical bounds are part of CODEC_IDENTITY.
    pub accelerations: Vec<f64>,
    /// Declared effort; canonical bounds are part of CODEC_IDENTITY.
    pub effort: Vec<f64>,
    /// Declared time_from_start; canonical bounds are part of CODEC_IDENTITY.
    pub time_from_start: Ros1Duration,
}
impl Default for Ros1Trajectory_msgsJointTrajectoryPoint {
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
impl Ros1Trajectory_msgsJointTrajectoryPoint {
    pub const MAX_WIRE_BYTES: usize = 536;
    pub const CARTESIAN_WIRE_BYTES: u64 = 536;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_e93c84b6980a95c9695bd13be2bf9ebc4b2f400fc8a39909578e59f3dd03db81";
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
        let decoded = Ros1Duration::read_fields(bytes, at)?;
        value.time_from_start = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Trajectory_msgsJointTrajectoryPoint {
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
/// Complete bounded value for ROS1 trajectory_msgs/JointTrajectory.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Trajectory_msgsJointTrajectory {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros1Std_msgsHeader,
    /// Declared joint_names; canonical bounds are part of CODEC_IDENTITY.
    pub joint_names: Vec<String>,
    /// Declared points; canonical bounds are part of CODEC_IDENTITY.
    pub points: Vec<Ros1Trajectory_msgsJointTrajectoryPoint>,
}
impl Default for Ros1Trajectory_msgsJointTrajectory {
    fn default() -> Self {
        Self {
            header: Default::default(),
            joint_names: Default::default(),
            points: Default::default(),
        }
    }
}
impl Ros1Trajectory_msgsJointTrajectory {
    pub const MAX_WIRE_BYTES: usize = 4408;
    pub const CARTESIAN_WIRE_BYTES: u64 = 4408;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_2fd934a09c8256baeb450d670d83acc51bad97dc2e7ad750126353964fa6c2b9";
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
        if n > 4408 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
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
        let decoded = Ros1Std_msgsHeader::read_fields(bytes, at)?;
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
                let decoded = Ros1Trajectory_msgsJointTrajectoryPoint::read_fields(bytes, at)?;
                value.points.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros1Trajectory_msgsJointTrajectory {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 4408 {
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
/// Complete bounded value for ROS1 interbotix_xs_msgs/JointTrajectoryCommand.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Interbotix_xs_msgsJointTrajectoryCommand {
    /// Declared cmd_type; canonical bounds are part of CODEC_IDENTITY.
    pub cmd_type: String,
    /// Declared name; canonical bounds are part of CODEC_IDENTITY.
    pub name: String,
    /// Declared traj; canonical bounds are part of CODEC_IDENTITY.
    pub traj: Ros1Trajectory_msgsJointTrajectory,
}
impl Default for Ros1Interbotix_xs_msgsJointTrajectoryCommand {
    fn default() -> Self {
        Self {
            cmd_type: Default::default(),
            name: Default::default(),
            traj: Default::default(),
        }
    }
}
impl Ros1Interbotix_xs_msgsJointTrajectoryCommand {
    pub const MAX_WIRE_BYTES: usize = 4672;
    pub const CARTESIAN_WIRE_BYTES: u64 = 4672;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_e14b0742b1f9fa372adf0af54f8e3493add79d33b1edd46cdf63c8b936f465d7";
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
        if n > 4672 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
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
        let decoded = Ros1Trajectory_msgsJointTrajectory::read_fields(bytes, at)?;
        value.traj = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Interbotix_xs_msgsJointTrajectoryCommand {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 4672 {
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
/// Complete bounded value for ROS1 interbotix_xs_msgs/LocobotJoy.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Interbotix_xs_msgsLocobotJoy {
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
impl Default for Ros1Interbotix_xs_msgsLocobotJoy {
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
impl Ros1Interbotix_xs_msgsLocobotJoy {
    pub const MAX_WIRE_BYTES: usize = 30;
    pub const CARTESIAN_WIRE_BYTES: u64 = 30;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_6463e76903b4bd46f2cc65e2bc902d65d0d1424258f965b25e519c1e4a012613";
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
impl Canonical for Ros1Interbotix_xs_msgsLocobotJoy {
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
/// Complete bounded value for ROS1 interbotix_xs_msgs/MotorGainsRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Interbotix_xs_msgsMotorGainsRequest {
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
impl Default for Ros1Interbotix_xs_msgsMotorGainsRequest {
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
impl Ros1Interbotix_xs_msgsMotorGainsRequest {
    pub const MAX_WIRE_BYTES: usize = 292;
    pub const CARTESIAN_WIRE_BYTES: u64 = 292;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_76fb61f914b65b53579fdbf64eb545a997f38c9b51111e6ae462c95169596009";
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
impl Canonical for Ros1Interbotix_xs_msgsMotorGainsRequest {
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
/// Complete bounded value for ROS1 interbotix_xs_msgs/MotorGainsResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Interbotix_xs_msgsMotorGainsResponse {}
impl Default for Ros1Interbotix_xs_msgsMotorGainsResponse {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Interbotix_xs_msgsMotorGainsResponse {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_813a545cdc27f32aad5d4716a649832feebeeaddae69abdf8f64d552f757fd89";
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
impl Canonical for Ros1Interbotix_xs_msgsMotorGainsResponse {
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
/// Complete bounded value for ROS1 interbotix_xs_msgs/OperatingModesRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Interbotix_xs_msgsOperatingModesRequest {
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
impl Default for Ros1Interbotix_xs_msgsOperatingModesRequest {
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
impl Ros1Interbotix_xs_msgsOperatingModesRequest {
    pub const MAX_WIRE_BYTES: usize = 536;
    pub const CARTESIAN_WIRE_BYTES: u64 = 536;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_cc0defc5d8cb4c230ea3b0f3bc50a6d271bc395621792897d1e80aae62adb7b3";
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
impl Canonical for Ros1Interbotix_xs_msgsOperatingModesRequest {
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
/// Complete bounded value for ROS1 interbotix_xs_msgs/OperatingModesResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Interbotix_xs_msgsOperatingModesResponse {}
impl Default for Ros1Interbotix_xs_msgsOperatingModesResponse {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Interbotix_xs_msgsOperatingModesResponse {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_5249025c535de294ab7e25ed0089749a891cd55451811dbac7aeef7daa75347e";
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
impl Canonical for Ros1Interbotix_xs_msgsOperatingModesResponse {
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
/// Complete bounded value for ROS1 interbotix_xs_msgs/RebootRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Interbotix_xs_msgsRebootRequest {
    /// Declared cmd_type; canonical bounds are part of CODEC_IDENTITY.
    pub cmd_type: String,
    /// Declared name; canonical bounds are part of CODEC_IDENTITY.
    pub name: String,
    /// Declared enable; canonical bounds are part of CODEC_IDENTITY.
    pub enable: bool,
    /// Declared smart_reboot; canonical bounds are part of CODEC_IDENTITY.
    pub smart_reboot: bool,
}
impl Default for Ros1Interbotix_xs_msgsRebootRequest {
    fn default() -> Self {
        Self {
            cmd_type: Default::default(),
            name: Default::default(),
            enable: Default::default(),
            smart_reboot: Default::default(),
        }
    }
}
impl Ros1Interbotix_xs_msgsRebootRequest {
    pub const MAX_WIRE_BYTES: usize = 266;
    pub const CARTESIAN_WIRE_BYTES: u64 = 266;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_5098fab3302fc6de5c2e24e82ca6f57ee4f358d9862ceb3a20c09435aa563f0a";
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
impl Canonical for Ros1Interbotix_xs_msgsRebootRequest {
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
/// Complete bounded value for ROS1 interbotix_xs_msgs/RebootResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Interbotix_xs_msgsRebootResponse {}
impl Default for Ros1Interbotix_xs_msgsRebootResponse {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Interbotix_xs_msgsRebootResponse {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_06aedc58f7bb6f26d5e54cd905f3d223ba297806e914a84a8fff02fe307a97a4";
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
impl Canonical for Ros1Interbotix_xs_msgsRebootResponse {
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
/// Complete bounded value for ROS1 interbotix_xs_msgs/RegisterValuesRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Interbotix_xs_msgsRegisterValuesRequest {
    /// Declared cmd_type; canonical bounds are part of CODEC_IDENTITY.
    pub cmd_type: String,
    /// Declared name; canonical bounds are part of CODEC_IDENTITY.
    pub name: String,
    /// Declared reg; canonical bounds are part of CODEC_IDENTITY.
    pub reg: String,
    /// Declared value; canonical bounds are part of CODEC_IDENTITY.
    pub value: i32,
}
impl Default for Ros1Interbotix_xs_msgsRegisterValuesRequest {
    fn default() -> Self {
        Self {
            cmd_type: Default::default(),
            name: Default::default(),
            reg: Default::default(),
            value: Default::default(),
        }
    }
}
impl Ros1Interbotix_xs_msgsRegisterValuesRequest {
    pub const MAX_WIRE_BYTES: usize = 400;
    pub const CARTESIAN_WIRE_BYTES: u64 = 400;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_e36f16bc2726f62b78852f690f13540ff9ba93c9ee4363624c007e7819312a4a";
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
impl Canonical for Ros1Interbotix_xs_msgsRegisterValuesRequest {
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
/// Complete bounded value for ROS1 interbotix_xs_msgs/RegisterValuesResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Interbotix_xs_msgsRegisterValuesResponse {
    /// Declared values; canonical bounds are part of CODEC_IDENTITY.
    pub values: Vec<i32>,
}
impl Default for Ros1Interbotix_xs_msgsRegisterValuesResponse {
    fn default() -> Self {
        Self {
            values: Default::default(),
        }
    }
}
impl Ros1Interbotix_xs_msgsRegisterValuesResponse {
    pub const MAX_WIRE_BYTES: usize = 68;
    pub const CARTESIAN_WIRE_BYTES: u64 = 68;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_9c7d3492c5d51a8d05f4fa0c4218e00194dabfb602271ec8ffc3075af9d2e659";
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
impl Canonical for Ros1Interbotix_xs_msgsRegisterValuesResponse {
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
/// Complete bounded value for ROS1 interbotix_xs_msgs/RobotInfoRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Interbotix_xs_msgsRobotInfoRequest {
    /// Declared cmd_type; canonical bounds are part of CODEC_IDENTITY.
    pub cmd_type: String,
    /// Declared name; canonical bounds are part of CODEC_IDENTITY.
    pub name: String,
}
impl Default for Ros1Interbotix_xs_msgsRobotInfoRequest {
    fn default() -> Self {
        Self {
            cmd_type: Default::default(),
            name: Default::default(),
        }
    }
}
impl Ros1Interbotix_xs_msgsRobotInfoRequest {
    pub const MAX_WIRE_BYTES: usize = 264;
    pub const CARTESIAN_WIRE_BYTES: u64 = 264;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_ead86305c002d1012c8779f9e7296776e27a3b00b4e3193acfdac16f79081176";
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
impl Canonical for Ros1Interbotix_xs_msgsRobotInfoRequest {
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
/// Complete bounded value for ROS1 interbotix_xs_msgs/RobotInfoResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Interbotix_xs_msgsRobotInfoResponse {
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
impl Default for Ros1Interbotix_xs_msgsRobotInfoResponse {
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
impl Ros1Interbotix_xs_msgsRobotInfoResponse {
    pub const MAX_WIRE_BYTES: usize = 18474;
    pub const CARTESIAN_WIRE_BYTES: u64 = 18474;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_0dfb738c428366ca7450d932212e3cc69d86042432b2ddd7cd58da3c0b6b6d5d";
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
impl Canonical for Ros1Interbotix_xs_msgsRobotInfoResponse {
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
/// Complete bounded value for ROS1 interbotix_xs_msgs/TorqueEnableRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Interbotix_xs_msgsTorqueEnableRequest {
    /// Declared cmd_type; canonical bounds are part of CODEC_IDENTITY.
    pub cmd_type: String,
    /// Declared name; canonical bounds are part of CODEC_IDENTITY.
    pub name: String,
    /// Declared enable; canonical bounds are part of CODEC_IDENTITY.
    pub enable: bool,
}
impl Default for Ros1Interbotix_xs_msgsTorqueEnableRequest {
    fn default() -> Self {
        Self {
            cmd_type: Default::default(),
            name: Default::default(),
            enable: Default::default(),
        }
    }
}
impl Ros1Interbotix_xs_msgsTorqueEnableRequest {
    pub const MAX_WIRE_BYTES: usize = 265;
    pub const CARTESIAN_WIRE_BYTES: u64 = 265;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_0586e2a4917ddf684f7834ada07775ccc118f0b2abbfd7fda72d4b76be8a146a";
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
impl Canonical for Ros1Interbotix_xs_msgsTorqueEnableRequest {
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
/// Complete bounded value for ROS1 interbotix_xs_msgs/TorqueEnableResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Interbotix_xs_msgsTorqueEnableResponse {}
impl Default for Ros1Interbotix_xs_msgsTorqueEnableResponse {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Interbotix_xs_msgsTorqueEnableResponse {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_6f010bb51e876d2e66fa7a227f13d4484ae800dd5ae256cfe770ad2b58f6ad44";
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
impl Canonical for Ros1Interbotix_xs_msgsTorqueEnableResponse {
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
/// Complete bounded value for ROS1 interbotix_xs_msgs/TurretJoy.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Interbotix_xs_msgsTurretJoy {
    /// Declared pan_cmd; canonical bounds are part of CODEC_IDENTITY.
    pub pan_cmd: i8,
    /// Declared tilt_cmd; canonical bounds are part of CODEC_IDENTITY.
    pub tilt_cmd: i8,
    /// Declared speed_cmd; canonical bounds are part of CODEC_IDENTITY.
    pub speed_cmd: i8,
    /// Declared speed_toggle_cmd; canonical bounds are part of CODEC_IDENTITY.
    pub speed_toggle_cmd: i8,
}
impl Default for Ros1Interbotix_xs_msgsTurretJoy {
    fn default() -> Self {
        Self {
            pan_cmd: Default::default(),
            tilt_cmd: Default::default(),
            speed_cmd: Default::default(),
            speed_toggle_cmd: Default::default(),
        }
    }
}
impl Ros1Interbotix_xs_msgsTurretJoy {
    pub const MAX_WIRE_BYTES: usize = 4;
    pub const CARTESIAN_WIRE_BYTES: u64 = 4;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_723dfe84ba93acb0acee9131da0af65fe5b508f33e43d5ff9d30d2137b102b70";
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
impl Canonical for Ros1Interbotix_xs_msgsTurretJoy {
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
/// Complete bounded value for ROS1 xarm_msgs/ClearErrRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Xarm_msgsClearErrRequest {}
impl Default for Ros1Xarm_msgsClearErrRequest {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Xarm_msgsClearErrRequest {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_ce83a45aee719e0916f27f8caab41c12bb15d04942bfdd0489047e7b79f3b9e8";
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
impl Canonical for Ros1Xarm_msgsClearErrRequest {
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
/// Complete bounded value for ROS1 xarm_msgs/ClearErrResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Xarm_msgsClearErrResponse {
    /// Declared ret; canonical bounds are part of CODEC_IDENTITY.
    pub ret: i16,
    /// Declared message; canonical bounds are part of CODEC_IDENTITY.
    pub message: String,
}
impl Default for Ros1Xarm_msgsClearErrResponse {
    fn default() -> Self {
        Self {
            ret: Default::default(),
            message: Default::default(),
        }
    }
}
impl Ros1Xarm_msgsClearErrResponse {
    pub const MAX_WIRE_BYTES: usize = 134;
    pub const CARTESIAN_WIRE_BYTES: u64 = 134;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_8edb7089d54f07c68008fdf769fa42d37da738066fce87da976c4888adf8a1a1";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 2)?;
        if self.message.len() > 128 || self.message.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.message.len())?;
        if n > 134 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.ret.to_le_bytes());
        put(out, at, &(self.message.len() as u32).to_le_bytes());
        put(out, at, self.message.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.ret = decoded;
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
impl Canonical for Ros1Xarm_msgsClearErrResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 134 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 6 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 xarm_msgs/ConfigToolModbusRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Xarm_msgsConfigToolModbusRequest {
    /// Declared baud_rate; canonical bounds are part of CODEC_IDENTITY.
    pub baud_rate: i32,
    /// Declared timeout_ms; canonical bounds are part of CODEC_IDENTITY.
    pub timeout_ms: i32,
}
impl Default for Ros1Xarm_msgsConfigToolModbusRequest {
    fn default() -> Self {
        Self {
            baud_rate: Default::default(),
            timeout_ms: Default::default(),
        }
    }
}
impl Ros1Xarm_msgsConfigToolModbusRequest {
    pub const MAX_WIRE_BYTES: usize = 8;
    pub const CARTESIAN_WIRE_BYTES: u64 = 8;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_2a1e6f98ac1ec94f8d670177cee7aa7ba3b60249b4311f42c518cf90f8575ae5";
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
        put(out, at, &self.baud_rate.to_le_bytes());
        put(out, at, &self.timeout_ms.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.baud_rate = decoded;
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.timeout_ms = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Xarm_msgsConfigToolModbusRequest {
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
/// Complete bounded value for ROS1 xarm_msgs/ConfigToolModbusResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Xarm_msgsConfigToolModbusResponse {
    /// Declared message; canonical bounds are part of CODEC_IDENTITY.
    pub message: String,
    /// Declared ret; canonical bounds are part of CODEC_IDENTITY.
    pub ret: i16,
}
impl Default for Ros1Xarm_msgsConfigToolModbusResponse {
    fn default() -> Self {
        Self {
            message: Default::default(),
            ret: Default::default(),
        }
    }
}
impl Ros1Xarm_msgsConfigToolModbusResponse {
    pub const MAX_WIRE_BYTES: usize = 134;
    pub const CARTESIAN_WIRE_BYTES: u64 = 134;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_1080c7a283e1a9406bc5e04432f074732d7b0f175e5e04d87c3ea811e4e9503b";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.message.len() > 128 || self.message.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.message.len())?;
        n = add_size(n, 2)?;
        if n > 134 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
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
        put(out, at, &self.ret.to_le_bytes());
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
        let decoded = i16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.ret = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Xarm_msgsConfigToolModbusResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 134 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 6 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 xarm_msgs/GetAnalogIORequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Xarm_msgsGetAnalogIORequest {
    /// Declared port_num; canonical bounds are part of CODEC_IDENTITY.
    pub port_num: i16,
}
impl Default for Ros1Xarm_msgsGetAnalogIORequest {
    fn default() -> Self {
        Self {
            port_num: Default::default(),
        }
    }
}
impl Ros1Xarm_msgsGetAnalogIORequest {
    pub const MAX_WIRE_BYTES: usize = 2;
    pub const CARTESIAN_WIRE_BYTES: u64 = 2;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_08bf2816e784cc03d6d2ea33d71e457038f9071f8d80726d05f566d60ab961e8";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 2)?;
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
        put(out, at, &self.port_num.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.port_num = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Xarm_msgsGetAnalogIORequest {
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
/// Complete bounded value for ROS1 xarm_msgs/GetAnalogIOResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Xarm_msgsGetAnalogIOResponse {
    /// Declared analog_value; canonical bounds are part of CODEC_IDENTITY.
    pub analog_value: f32,
    /// Declared ret; canonical bounds are part of CODEC_IDENTITY.
    pub ret: i16,
    /// Declared message; canonical bounds are part of CODEC_IDENTITY.
    pub message: String,
}
impl Default for Ros1Xarm_msgsGetAnalogIOResponse {
    fn default() -> Self {
        Self {
            analog_value: Default::default(),
            ret: Default::default(),
            message: Default::default(),
        }
    }
}
impl Ros1Xarm_msgsGetAnalogIOResponse {
    pub const MAX_WIRE_BYTES: usize = 138;
    pub const CARTESIAN_WIRE_BYTES: u64 = 138;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_7a70c05e7e63840aa7ba045fff4ae119046a0f438d8f3d9dcc436daa93bf7968";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if !self.analog_value.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, 2)?;
        if self.message.len() > 128 || self.message.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.message.len())?;
        if n > 138 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.analog_value.to_le_bytes());
        put(out, at, &self.ret.to_le_bytes());
        put(out, at, &(self.message.len() as u32).to_le_bytes());
        put(out, at, self.message.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.analog_value = decoded;
        let decoded = i16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.ret = decoded;
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
impl Canonical for Ros1Xarm_msgsGetAnalogIOResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 138 {
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
/// Complete bounded value for ROS1 xarm_msgs/GetControllerDigitalIORequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Xarm_msgsGetControllerDigitalIORequest {
    /// Declared io_num; canonical bounds are part of CODEC_IDENTITY.
    pub io_num: i16,
}
impl Default for Ros1Xarm_msgsGetControllerDigitalIORequest {
    fn default() -> Self {
        Self {
            io_num: Default::default(),
        }
    }
}
impl Ros1Xarm_msgsGetControllerDigitalIORequest {
    pub const MAX_WIRE_BYTES: usize = 2;
    pub const CARTESIAN_WIRE_BYTES: u64 = 2;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_122db0972339f94d0bf6f4028643a020e85b286a46fa69dec71e7e998bf43f3c";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 2)?;
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
        put(out, at, &self.io_num.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.io_num = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Xarm_msgsGetControllerDigitalIORequest {
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
/// Complete bounded value for ROS1 xarm_msgs/GetControllerDigitalIOResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Xarm_msgsGetControllerDigitalIOResponse {
    /// Declared ret; canonical bounds are part of CODEC_IDENTITY.
    pub ret: i16,
    /// Declared value; canonical bounds are part of CODEC_IDENTITY.
    pub value: i16,
    /// Declared message; canonical bounds are part of CODEC_IDENTITY.
    pub message: String,
}
impl Default for Ros1Xarm_msgsGetControllerDigitalIOResponse {
    fn default() -> Self {
        Self {
            ret: Default::default(),
            value: Default::default(),
            message: Default::default(),
        }
    }
}
impl Ros1Xarm_msgsGetControllerDigitalIOResponse {
    pub const MAX_WIRE_BYTES: usize = 136;
    pub const CARTESIAN_WIRE_BYTES: u64 = 136;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_b3ec2406480ce53df0f0c307ab2060db95b9aec06ff4883bbf5779a602d385a3";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 2)?;
        n = add_size(n, 2)?;
        if self.message.len() > 128 || self.message.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.message.len())?;
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
        put(out, at, &self.ret.to_le_bytes());
        put(out, at, &self.value.to_le_bytes());
        put(out, at, &(self.message.len() as u32).to_le_bytes());
        put(out, at, self.message.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.ret = decoded;
        let decoded = i16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.value = decoded;
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
impl Canonical for Ros1Xarm_msgsGetControllerDigitalIOResponse {
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
/// Complete bounded value for ROS1 xarm_msgs/GetDigitalIORequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Xarm_msgsGetDigitalIORequest {}
impl Default for Ros1Xarm_msgsGetDigitalIORequest {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Xarm_msgsGetDigitalIORequest {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_edd78f1a2ed7ab9fc8541c8b5f0f9ff32713c949c03b66728ef7c41ed50a23da";
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
impl Canonical for Ros1Xarm_msgsGetDigitalIORequest {
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
/// Complete bounded value for ROS1 xarm_msgs/GetDigitalIOResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Xarm_msgsGetDigitalIOResponse {
    /// Declared digital_1; canonical bounds are part of CODEC_IDENTITY.
    pub digital_1: i32,
    /// Declared digital_2; canonical bounds are part of CODEC_IDENTITY.
    pub digital_2: i32,
    /// Declared ret; canonical bounds are part of CODEC_IDENTITY.
    pub ret: i16,
    /// Declared message; canonical bounds are part of CODEC_IDENTITY.
    pub message: String,
}
impl Default for Ros1Xarm_msgsGetDigitalIOResponse {
    fn default() -> Self {
        Self {
            digital_1: Default::default(),
            digital_2: Default::default(),
            ret: Default::default(),
            message: Default::default(),
        }
    }
}
impl Ros1Xarm_msgsGetDigitalIOResponse {
    pub const MAX_WIRE_BYTES: usize = 142;
    pub const CARTESIAN_WIRE_BYTES: u64 = 142;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_7b727d69650d14f14d18d42f2cf5157062d21b2edb1ff856c3d3545c971a07b2";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 4)?;
        n = add_size(n, 4)?;
        n = add_size(n, 2)?;
        if self.message.len() > 128 || self.message.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.message.len())?;
        if n > 142 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.digital_1.to_le_bytes());
        put(out, at, &self.digital_2.to_le_bytes());
        put(out, at, &self.ret.to_le_bytes());
        put(out, at, &(self.message.len() as u32).to_le_bytes());
        put(out, at, self.message.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.digital_1 = decoded;
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.digital_2 = decoded;
        let decoded = i16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.ret = decoded;
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
impl Canonical for Ros1Xarm_msgsGetDigitalIOResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 142 {
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
/// Complete bounded value for ROS1 xarm_msgs/GetErrRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Xarm_msgsGetErrRequest {}
impl Default for Ros1Xarm_msgsGetErrRequest {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Xarm_msgsGetErrRequest {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_80135f34c2643001ed9d387e3665176a01c44b651c9db7ca0d549472c7f2f531";
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
impl Canonical for Ros1Xarm_msgsGetErrRequest {
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
/// Complete bounded value for ROS1 xarm_msgs/GetErrResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Xarm_msgsGetErrResponse {
    /// Declared err; canonical bounds are part of CODEC_IDENTITY.
    pub err: i16,
    /// Declared message; canonical bounds are part of CODEC_IDENTITY.
    pub message: String,
}
impl Default for Ros1Xarm_msgsGetErrResponse {
    fn default() -> Self {
        Self {
            err: Default::default(),
            message: Default::default(),
        }
    }
}
impl Ros1Xarm_msgsGetErrResponse {
    pub const MAX_WIRE_BYTES: usize = 134;
    pub const CARTESIAN_WIRE_BYTES: u64 = 134;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_4ea68a3d0983f04f6e7dada0885d456544ee4fa9ef0d2abc60a92cc18bda5037";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 2)?;
        if self.message.len() > 128 || self.message.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.message.len())?;
        if n > 134 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.err.to_le_bytes());
        put(out, at, &(self.message.len() as u32).to_le_bytes());
        put(out, at, self.message.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.err = decoded;
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
impl Canonical for Ros1Xarm_msgsGetErrResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 134 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 6 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 xarm_msgs/GripperConfigRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Xarm_msgsGripperConfigRequest {
    /// Declared pulse_vel; canonical bounds are part of CODEC_IDENTITY.
    pub pulse_vel: f32,
}
impl Default for Ros1Xarm_msgsGripperConfigRequest {
    fn default() -> Self {
        Self {
            pulse_vel: Default::default(),
        }
    }
}
impl Ros1Xarm_msgsGripperConfigRequest {
    pub const MAX_WIRE_BYTES: usize = 4;
    pub const CARTESIAN_WIRE_BYTES: u64 = 4;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_b82ba6fd59917a738ec433efd16f238d6538dfcaa3b6718f8f8fa1fa1d01c8c4";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if !self.pulse_vel.is_finite() {
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
        put(out, at, &self.pulse_vel.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.pulse_vel = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Xarm_msgsGripperConfigRequest {
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
/// Complete bounded value for ROS1 xarm_msgs/GripperConfigResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Xarm_msgsGripperConfigResponse {
    /// Declared ret; canonical bounds are part of CODEC_IDENTITY.
    pub ret: i16,
    /// Declared message; canonical bounds are part of CODEC_IDENTITY.
    pub message: String,
}
impl Default for Ros1Xarm_msgsGripperConfigResponse {
    fn default() -> Self {
        Self {
            ret: Default::default(),
            message: Default::default(),
        }
    }
}
impl Ros1Xarm_msgsGripperConfigResponse {
    pub const MAX_WIRE_BYTES: usize = 134;
    pub const CARTESIAN_WIRE_BYTES: u64 = 134;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_5e74e8890eda1059018d78fd4bddd8ae8154115268ee6197ef9369397f82dbb5";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 2)?;
        if self.message.len() > 128 || self.message.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.message.len())?;
        if n > 134 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.ret.to_le_bytes());
        put(out, at, &(self.message.len() as u32).to_le_bytes());
        put(out, at, self.message.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.ret = decoded;
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
impl Canonical for Ros1Xarm_msgsGripperConfigResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 134 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 6 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 xarm_msgs/GripperMoveRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Xarm_msgsGripperMoveRequest {
    /// Declared pulse_pos; canonical bounds are part of CODEC_IDENTITY.
    pub pulse_pos: f32,
}
impl Default for Ros1Xarm_msgsGripperMoveRequest {
    fn default() -> Self {
        Self {
            pulse_pos: Default::default(),
        }
    }
}
impl Ros1Xarm_msgsGripperMoveRequest {
    pub const MAX_WIRE_BYTES: usize = 4;
    pub const CARTESIAN_WIRE_BYTES: u64 = 4;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_cd6b6852054385df9f6a65c12f8d887adbb1e5d01e9ba5367fef38c738ffbae2";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if !self.pulse_pos.is_finite() {
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
        put(out, at, &self.pulse_pos.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.pulse_pos = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Xarm_msgsGripperMoveRequest {
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
/// Complete bounded value for ROS1 xarm_msgs/GripperMoveResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Xarm_msgsGripperMoveResponse {
    /// Declared ret; canonical bounds are part of CODEC_IDENTITY.
    pub ret: i16,
    /// Declared message; canonical bounds are part of CODEC_IDENTITY.
    pub message: String,
}
impl Default for Ros1Xarm_msgsGripperMoveResponse {
    fn default() -> Self {
        Self {
            ret: Default::default(),
            message: Default::default(),
        }
    }
}
impl Ros1Xarm_msgsGripperMoveResponse {
    pub const MAX_WIRE_BYTES: usize = 134;
    pub const CARTESIAN_WIRE_BYTES: u64 = 134;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_2802739906ad3231f0f4e2a60340dda1a5459be25907d68f4981e62faa6b2998";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 2)?;
        if self.message.len() > 128 || self.message.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.message.len())?;
        if n > 134 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.ret.to_le_bytes());
        put(out, at, &(self.message.len() as u32).to_le_bytes());
        put(out, at, self.message.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.ret = decoded;
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
impl Canonical for Ros1Xarm_msgsGripperMoveResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 134 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 6 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 xarm_msgs/GripperStateRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Xarm_msgsGripperStateRequest {}
impl Default for Ros1Xarm_msgsGripperStateRequest {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Xarm_msgsGripperStateRequest {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_96f47b84fe0876daf4cfb6cb46df97783ba7d38a4b3cef749e699d029db59d5d";
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
impl Canonical for Ros1Xarm_msgsGripperStateRequest {
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
/// Complete bounded value for ROS1 xarm_msgs/GripperStateResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Xarm_msgsGripperStateResponse {
    /// Declared curr_pos; canonical bounds are part of CODEC_IDENTITY.
    pub curr_pos: f32,
    /// Declared err_code; canonical bounds are part of CODEC_IDENTITY.
    pub err_code: i16,
}
impl Default for Ros1Xarm_msgsGripperStateResponse {
    fn default() -> Self {
        Self {
            curr_pos: Default::default(),
            err_code: Default::default(),
        }
    }
}
impl Ros1Xarm_msgsGripperStateResponse {
    pub const MAX_WIRE_BYTES: usize = 6;
    pub const CARTESIAN_WIRE_BYTES: u64 = 6;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_781669bd7ab4a0189b137cf07ab98b3382f17ad088a8818616caeaa70e27a0e4";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if !self.curr_pos.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, 2)?;
        if n > 6 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.curr_pos.to_le_bytes());
        put(out, at, &self.err_code.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.curr_pos = decoded;
        let decoded = i16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.err_code = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Xarm_msgsGripperStateResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 6 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 6 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 xarm_msgs/IOState.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Xarm_msgsIOState {
    /// Declared digital_1; canonical bounds are part of CODEC_IDENTITY.
    pub digital_1: i32,
    /// Declared digital_2; canonical bounds are part of CODEC_IDENTITY.
    pub digital_2: i32,
    /// Declared analog_1; canonical bounds are part of CODEC_IDENTITY.
    pub analog_1: f32,
    /// Declared analog_2; canonical bounds are part of CODEC_IDENTITY.
    pub analog_2: f32,
}
impl Default for Ros1Xarm_msgsIOState {
    fn default() -> Self {
        Self {
            digital_1: Default::default(),
            digital_2: Default::default(),
            analog_1: Default::default(),
            analog_2: Default::default(),
        }
    }
}
impl Ros1Xarm_msgsIOState {
    pub const MAX_WIRE_BYTES: usize = 16;
    pub const CARTESIAN_WIRE_BYTES: u64 = 16;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_93ef0c71a5fed6eaa7c8e87447b280778ffd05c376cf41a577c71acfeb02d996";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 4)?;
        n = add_size(n, 4)?;
        if !self.analog_1.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.analog_2.is_finite() {
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
        put(out, at, &self.digital_1.to_le_bytes());
        put(out, at, &self.digital_2.to_le_bytes());
        put(out, at, &self.analog_1.to_le_bytes());
        put(out, at, &self.analog_2.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.digital_1 = decoded;
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.digital_2 = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.analog_1 = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.analog_2 = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Xarm_msgsIOState {
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
/// Complete bounded value for ROS1 xarm_msgs/MoveRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Xarm_msgsMoveRequest {
    /// Declared pose; canonical bounds are part of CODEC_IDENTITY.
    pub pose: Vec<f32>,
    /// Declared mvvelo; canonical bounds are part of CODEC_IDENTITY.
    pub mvvelo: f32,
    /// Declared mvacc; canonical bounds are part of CODEC_IDENTITY.
    pub mvacc: f32,
    /// Declared mvtime; canonical bounds are part of CODEC_IDENTITY.
    pub mvtime: f32,
    /// Declared mvradii; canonical bounds are part of CODEC_IDENTITY.
    pub mvradii: f32,
}
impl Default for Ros1Xarm_msgsMoveRequest {
    fn default() -> Self {
        Self {
            pose: Default::default(),
            mvvelo: Default::default(),
            mvacc: Default::default(),
            mvtime: Default::default(),
            mvradii: Default::default(),
        }
    }
}
impl Ros1Xarm_msgsMoveRequest {
    pub const MAX_WIRE_BYTES: usize = 84;
    pub const CARTESIAN_WIRE_BYTES: u64 = 84;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_b0e6f307ca9a12c92e3b2a6acbc79b0aba223e67788a060e5dc443240c9235e5";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.pose.len() > 16 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.pose {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
        }
        if !self.mvvelo.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.mvacc.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.mvtime.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.mvradii.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if n > 84 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.pose.len() as u32).to_le_bytes());
        for element in &self.pose {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.mvvelo.to_le_bytes());
        put(out, at, &self.mvacc.to_le_bytes());
        put(out, at, &self.mvtime.to_le_bytes());
        put(out, at, &self.mvradii.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = read_count(bytes, at)?;
            if count > 16 {
                return Err(invalid());
            }
            value.pose = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.pose.push(decoded);
            }
        }
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.mvvelo = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.mvacc = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.mvtime = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.mvradii = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Xarm_msgsMoveRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 84 {
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
/// Complete bounded value for ROS1 xarm_msgs/MoveResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Xarm_msgsMoveResponse {
    /// Declared ret; canonical bounds are part of CODEC_IDENTITY.
    pub ret: i16,
    /// Declared message; canonical bounds are part of CODEC_IDENTITY.
    pub message: String,
}
impl Default for Ros1Xarm_msgsMoveResponse {
    fn default() -> Self {
        Self {
            ret: Default::default(),
            message: Default::default(),
        }
    }
}
impl Ros1Xarm_msgsMoveResponse {
    pub const MAX_WIRE_BYTES: usize = 134;
    pub const CARTESIAN_WIRE_BYTES: u64 = 134;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_5ebf8749e513dcb301f91344890ee5d60e5a8e60fab37dbfe88360f68ba0b658";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 2)?;
        if self.message.len() > 128 || self.message.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.message.len())?;
        if n > 134 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.ret.to_le_bytes());
        put(out, at, &(self.message.len() as u32).to_le_bytes());
        put(out, at, self.message.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.ret = decoded;
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
impl Canonical for Ros1Xarm_msgsMoveResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 134 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 6 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 xarm_msgs/RobotMsg.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Xarm_msgsRobotMsg {
    /// Declared state; canonical bounds are part of CODEC_IDENTITY.
    pub state: i16,
    /// Declared mode; canonical bounds are part of CODEC_IDENTITY.
    pub mode: i16,
    /// Declared cmdnum; canonical bounds are part of CODEC_IDENTITY.
    pub cmdnum: i16,
    /// Declared mt_brake; canonical bounds are part of CODEC_IDENTITY.
    pub mt_brake: i16,
    /// Declared mt_able; canonical bounds are part of CODEC_IDENTITY.
    pub mt_able: i16,
    /// Declared err; canonical bounds are part of CODEC_IDENTITY.
    pub err: i16,
    /// Declared warn; canonical bounds are part of CODEC_IDENTITY.
    pub warn: i16,
    /// Declared angle; canonical bounds are part of CODEC_IDENTITY.
    pub angle: Vec<f32>,
    /// Declared pose; canonical bounds are part of CODEC_IDENTITY.
    pub pose: [f32; 6],
    /// Declared offset; canonical bounds are part of CODEC_IDENTITY.
    pub offset: [f32; 6],
}
impl Default for Ros1Xarm_msgsRobotMsg {
    fn default() -> Self {
        Self {
            state: Default::default(),
            mode: Default::default(),
            cmdnum: Default::default(),
            mt_brake: Default::default(),
            mt_able: Default::default(),
            err: Default::default(),
            warn: Default::default(),
            angle: Default::default(),
            pose: core::array::from_fn(|_| Default::default()),
            offset: core::array::from_fn(|_| Default::default()),
        }
    }
}
impl Ros1Xarm_msgsRobotMsg {
    pub const MAX_WIRE_BYTES: usize = 130;
    pub const CARTESIAN_WIRE_BYTES: u64 = 130;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_0e645cbe57caece23f38f4a23ca610d3be2f4367841c2f493317d23b39df9e41";
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
        if self.angle.len() > 16 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.angle {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
        }
        for element in &self.pose {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
        }
        for element in &self.offset {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
        }
        if n > 130 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
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
        put(out, at, &self.mode.to_le_bytes());
        put(out, at, &self.cmdnum.to_le_bytes());
        put(out, at, &self.mt_brake.to_le_bytes());
        put(out, at, &self.mt_able.to_le_bytes());
        put(out, at, &self.err.to_le_bytes());
        put(out, at, &self.warn.to_le_bytes());
        put(out, at, &(self.angle.len() as u32).to_le_bytes());
        for element in &self.angle {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.pose {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.offset {
            put(out, at, &element.to_le_bytes());
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.state = decoded;
        let decoded = i16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.mode = decoded;
        let decoded = i16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.cmdnum = decoded;
        let decoded = i16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.mt_brake = decoded;
        let decoded = i16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.mt_able = decoded;
        let decoded = i16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.err = decoded;
        let decoded = i16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.warn = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 16 {
                return Err(invalid());
            }
            value.angle = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.angle.push(decoded);
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.pose[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.offset[i] = decoded;
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros1Xarm_msgsRobotMsg {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 130 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 66 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 xarm_msgs/SetAxisRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Xarm_msgsSetAxisRequest {
    /// Declared id; canonical bounds are part of CODEC_IDENTITY.
    pub id: i16,
    /// Declared data; canonical bounds are part of CODEC_IDENTITY.
    pub data: i16,
}
impl Default for Ros1Xarm_msgsSetAxisRequest {
    fn default() -> Self {
        Self {
            id: Default::default(),
            data: Default::default(),
        }
    }
}
impl Ros1Xarm_msgsSetAxisRequest {
    pub const MAX_WIRE_BYTES: usize = 4;
    pub const CARTESIAN_WIRE_BYTES: u64 = 4;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_e9c45f00c83898744975890928756584b0646cf287024b3cb841380c368639f6";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 2)?;
        n = add_size(n, 2)?;
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
        put(out, at, &self.id.to_le_bytes());
        put(out, at, &self.data.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.id = decoded;
        let decoded = i16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.data = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Xarm_msgsSetAxisRequest {
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
/// Complete bounded value for ROS1 xarm_msgs/SetAxisResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Xarm_msgsSetAxisResponse {
    /// Declared ret; canonical bounds are part of CODEC_IDENTITY.
    pub ret: i16,
    /// Declared message; canonical bounds are part of CODEC_IDENTITY.
    pub message: String,
}
impl Default for Ros1Xarm_msgsSetAxisResponse {
    fn default() -> Self {
        Self {
            ret: Default::default(),
            message: Default::default(),
        }
    }
}
impl Ros1Xarm_msgsSetAxisResponse {
    pub const MAX_WIRE_BYTES: usize = 134;
    pub const CARTESIAN_WIRE_BYTES: u64 = 134;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_7f383a428f1792369302fb7fef16b4b5c0cc9645e5d835472d2721448979daa7";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 2)?;
        if self.message.len() > 128 || self.message.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.message.len())?;
        if n > 134 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.ret.to_le_bytes());
        put(out, at, &(self.message.len() as u32).to_le_bytes());
        put(out, at, self.message.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.ret = decoded;
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
impl Canonical for Ros1Xarm_msgsSetAxisResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 134 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 6 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 xarm_msgs/SetDigitalIORequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Xarm_msgsSetDigitalIORequest {
    /// Declared io_num; canonical bounds are part of CODEC_IDENTITY.
    pub io_num: i16,
    /// Declared value; canonical bounds are part of CODEC_IDENTITY.
    pub value: i16,
}
impl Default for Ros1Xarm_msgsSetDigitalIORequest {
    fn default() -> Self {
        Self {
            io_num: Default::default(),
            value: Default::default(),
        }
    }
}
impl Ros1Xarm_msgsSetDigitalIORequest {
    pub const MAX_WIRE_BYTES: usize = 4;
    pub const CARTESIAN_WIRE_BYTES: u64 = 4;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_ac50ddbde487936e79606cb389b9bc074249136b4187a1334da6f09866cc3959";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 2)?;
        n = add_size(n, 2)?;
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
        put(out, at, &self.io_num.to_le_bytes());
        put(out, at, &self.value.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.io_num = decoded;
        let decoded = i16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.value = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Xarm_msgsSetDigitalIORequest {
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
/// Complete bounded value for ROS1 xarm_msgs/SetDigitalIOResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Xarm_msgsSetDigitalIOResponse {
    /// Declared ret; canonical bounds are part of CODEC_IDENTITY.
    pub ret: i16,
    /// Declared message; canonical bounds are part of CODEC_IDENTITY.
    pub message: String,
}
impl Default for Ros1Xarm_msgsSetDigitalIOResponse {
    fn default() -> Self {
        Self {
            ret: Default::default(),
            message: Default::default(),
        }
    }
}
impl Ros1Xarm_msgsSetDigitalIOResponse {
    pub const MAX_WIRE_BYTES: usize = 134;
    pub const CARTESIAN_WIRE_BYTES: u64 = 134;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_baca234a5695612047ed3dfb828ac1cae5b26bdd6c117a02824f4fd8e39f1a4c";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 2)?;
        if self.message.len() > 128 || self.message.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.message.len())?;
        if n > 134 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.ret.to_le_bytes());
        put(out, at, &(self.message.len() as u32).to_le_bytes());
        put(out, at, self.message.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.ret = decoded;
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
impl Canonical for Ros1Xarm_msgsSetDigitalIOResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 134 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 6 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 xarm_msgs/SetInt16Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Xarm_msgsSetInt16Request {
    /// Declared data; canonical bounds are part of CODEC_IDENTITY.
    pub data: i16,
}
impl Default for Ros1Xarm_msgsSetInt16Request {
    fn default() -> Self {
        Self {
            data: Default::default(),
        }
    }
}
impl Ros1Xarm_msgsSetInt16Request {
    pub const MAX_WIRE_BYTES: usize = 2;
    pub const CARTESIAN_WIRE_BYTES: u64 = 2;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_a218118282ed14fca33c7529762ce9849398540f031ad6e18e3a99a90226c5c7";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 2)?;
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
        put(out, at, &self.data.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.data = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Xarm_msgsSetInt16Request {
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
/// Complete bounded value for ROS1 xarm_msgs/SetInt16Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Xarm_msgsSetInt16Response {
    /// Declared ret; canonical bounds are part of CODEC_IDENTITY.
    pub ret: i16,
    /// Declared message; canonical bounds are part of CODEC_IDENTITY.
    pub message: String,
}
impl Default for Ros1Xarm_msgsSetInt16Response {
    fn default() -> Self {
        Self {
            ret: Default::default(),
            message: Default::default(),
        }
    }
}
impl Ros1Xarm_msgsSetInt16Response {
    pub const MAX_WIRE_BYTES: usize = 134;
    pub const CARTESIAN_WIRE_BYTES: u64 = 134;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_3b619ed23839ab6aa86a83898af3de7ed7cdcafd04f6528afd48fe1c2d58fd7d";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 2)?;
        if self.message.len() > 128 || self.message.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.message.len())?;
        if n > 134 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.ret.to_le_bytes());
        put(out, at, &(self.message.len() as u32).to_le_bytes());
        put(out, at, self.message.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.ret = decoded;
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
impl Canonical for Ros1Xarm_msgsSetInt16Response {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 134 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 6 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 xarm_msgs/SetLoadRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Xarm_msgsSetLoadRequest {
    /// Declared mass; canonical bounds are part of CODEC_IDENTITY.
    pub mass: f32,
    /// Declared xc; canonical bounds are part of CODEC_IDENTITY.
    pub xc: f32,
    /// Declared yc; canonical bounds are part of CODEC_IDENTITY.
    pub yc: f32,
    /// Declared zc; canonical bounds are part of CODEC_IDENTITY.
    pub zc: f32,
}
impl Default for Ros1Xarm_msgsSetLoadRequest {
    fn default() -> Self {
        Self {
            mass: Default::default(),
            xc: Default::default(),
            yc: Default::default(),
            zc: Default::default(),
        }
    }
}
impl Ros1Xarm_msgsSetLoadRequest {
    pub const MAX_WIRE_BYTES: usize = 16;
    pub const CARTESIAN_WIRE_BYTES: u64 = 16;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_47f2147c37956f007e24d79ddcdc080fb185aca0b30f5f2394f9c74bd00ee077";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if !self.mass.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.xc.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.yc.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.zc.is_finite() {
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
        put(out, at, &self.mass.to_le_bytes());
        put(out, at, &self.xc.to_le_bytes());
        put(out, at, &self.yc.to_le_bytes());
        put(out, at, &self.zc.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.mass = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.xc = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.yc = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.zc = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Xarm_msgsSetLoadRequest {
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
/// Complete bounded value for ROS1 xarm_msgs/SetLoadResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Xarm_msgsSetLoadResponse {
    /// Declared ret; canonical bounds are part of CODEC_IDENTITY.
    pub ret: i16,
    /// Declared message; canonical bounds are part of CODEC_IDENTITY.
    pub message: String,
}
impl Default for Ros1Xarm_msgsSetLoadResponse {
    fn default() -> Self {
        Self {
            ret: Default::default(),
            message: Default::default(),
        }
    }
}
impl Ros1Xarm_msgsSetLoadResponse {
    pub const MAX_WIRE_BYTES: usize = 134;
    pub const CARTESIAN_WIRE_BYTES: u64 = 134;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_ceea0b74ec65c7f3208f594ddb9180db48213a62764524e1b7eec866752ed2e3";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 2)?;
        if self.message.len() > 128 || self.message.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.message.len())?;
        if n > 134 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.ret.to_le_bytes());
        put(out, at, &(self.message.len() as u32).to_le_bytes());
        put(out, at, self.message.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.ret = decoded;
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
impl Canonical for Ros1Xarm_msgsSetLoadResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 134 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 6 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 xarm_msgs/SetToolModbusRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Xarm_msgsSetToolModbusRequest {
    /// Declared send_data; canonical bounds are part of CODEC_IDENTITY.
    pub send_data: Vec<u8>,
    /// Declared respond_len; canonical bounds are part of CODEC_IDENTITY.
    pub respond_len: i16,
}
impl Default for Ros1Xarm_msgsSetToolModbusRequest {
    fn default() -> Self {
        Self {
            send_data: Default::default(),
            respond_len: Default::default(),
        }
    }
}
impl Ros1Xarm_msgsSetToolModbusRequest {
    pub const MAX_WIRE_BYTES: usize = 262;
    pub const CARTESIAN_WIRE_BYTES: u64 = 262;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_f7201be7ca91c7cbc137d4d634a939e037f3fd070446ee174169563e00af3c5a";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.send_data.len() > 256 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.send_data {
            n = add_size(n, 1)?;
        }
        n = add_size(n, 2)?;
        if n > 262 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.send_data.len() as u32).to_le_bytes());
        for element in &self.send_data {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.respond_len.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = read_count(bytes, at)?;
            if count > 256 {
                return Err(invalid());
            }
            value.send_data = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
                value.send_data.push(decoded);
            }
        }
        let decoded = i16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.respond_len = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Xarm_msgsSetToolModbusRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 262 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 6 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 xarm_msgs/SetToolModbusResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Xarm_msgsSetToolModbusResponse {
    /// Declared ret; canonical bounds are part of CODEC_IDENTITY.
    pub ret: i16,
    /// Declared respond_data; canonical bounds are part of CODEC_IDENTITY.
    pub respond_data: Vec<u8>,
}
impl Default for Ros1Xarm_msgsSetToolModbusResponse {
    fn default() -> Self {
        Self {
            ret: Default::default(),
            respond_data: Default::default(),
        }
    }
}
impl Ros1Xarm_msgsSetToolModbusResponse {
    pub const MAX_WIRE_BYTES: usize = 262;
    pub const CARTESIAN_WIRE_BYTES: u64 = 262;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_685b6def078eaf41d45a4e43cfe037498224efca187275680a77b6068372ce15";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 2)?;
        if self.respond_data.len() > 256 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.respond_data {
            n = add_size(n, 1)?;
        }
        if n > 262 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.ret.to_le_bytes());
        put(out, at, &(self.respond_data.len() as u32).to_le_bytes());
        for element in &self.respond_data {
            put(out, at, &element.to_le_bytes());
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.ret = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 256 {
                return Err(invalid());
            }
            value.respond_data = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
                value.respond_data.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros1Xarm_msgsSetToolModbusResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 262 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 6 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 xarm_msgs/TCPOffsetRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Xarm_msgsTCPOffsetRequest {
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
impl Default for Ros1Xarm_msgsTCPOffsetRequest {
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
impl Ros1Xarm_msgsTCPOffsetRequest {
    pub const MAX_WIRE_BYTES: usize = 24;
    pub const CARTESIAN_WIRE_BYTES: u64 = 24;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_588f23b909cce18cc490801b9d2f0960335362b0c823651cda6d5c8a27ee0afd";
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
impl Canonical for Ros1Xarm_msgsTCPOffsetRequest {
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
/// Complete bounded value for ROS1 xarm_msgs/TCPOffsetResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Xarm_msgsTCPOffsetResponse {
    /// Declared ret; canonical bounds are part of CODEC_IDENTITY.
    pub ret: i16,
    /// Declared message; canonical bounds are part of CODEC_IDENTITY.
    pub message: String,
}
impl Default for Ros1Xarm_msgsTCPOffsetResponse {
    fn default() -> Self {
        Self {
            ret: Default::default(),
            message: Default::default(),
        }
    }
}
impl Ros1Xarm_msgsTCPOffsetResponse {
    pub const MAX_WIRE_BYTES: usize = 134;
    pub const CARTESIAN_WIRE_BYTES: u64 = 134;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_c61a6473a9eb1371fa56cbf60d6468fcac19197b9be04dd507b80f59e2d80773";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 2)?;
        if self.message.len() > 128 || self.message.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.message.len())?;
        if n > 134 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.ret.to_le_bytes());
        put(out, at, &(self.message.len() as u32).to_le_bytes());
        put(out, at, self.message.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.ret = decoded;
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
impl Canonical for Ros1Xarm_msgsTCPOffsetResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 134 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 6 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}

impl Ros1Interbotix_xs_msgsArmJoy {
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
    pub const GRIPPER_OPEN: i8 = 13;
    pub const GRIPPER_CLOSE: i8 = 14;
    pub const HOME_POSE: i8 = 15;
    pub const SLEEP_POSE: i8 = 16;
    pub const SPEED_INC: i8 = 17;
    pub const SPEED_DEC: i8 = 18;
    pub const SPEED_COURSE: i8 = 19;
    pub const SPEED_FINE: i8 = 20;
    pub const GRIPPER_PWM_INC: i8 = 21;
    pub const GRIPPER_PWM_DEC: i8 = 22;
    pub const TORQUE_ON: i8 = 23;
    pub const TORQUE_OFF: i8 = 24;
}

impl Ros1Interbotix_xs_msgsHexJoy {
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
    pub const SPEED_COURSE: i8 = 31;
    pub const SPEED_FINE: i8 = 32;
}

impl Ros1Interbotix_xs_msgsLocobotJoy {
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
    pub const GRIPPER_OPEN: i8 = 19;
    pub const GRIPPER_CLOSE: i8 = 20;
    pub const HOME_POSE: i8 = 21;
    pub const SLEEP_POSE: i8 = 22;
    pub const SPEED_INC: i8 = 23;
    pub const SPEED_DEC: i8 = 24;
    pub const SPEED_COURSE: i8 = 25;
    pub const SPEED_FINE: i8 = 26;
    pub const GRIPPER_PWM_INC: i8 = 27;
    pub const GRIPPER_PWM_DEC: i8 = 28;
}

impl Ros1Interbotix_xs_msgsTurretJoy {
    pub const PAN_CCW: i8 = 1;
    pub const PAN_CW: i8 = 2;
    pub const TILT_UP: i8 = 3;
    pub const TILT_DOWN: i8 = 4;
    pub const PAN_TILT_HOME: i8 = 5;
    pub const SPEED_INC: i8 = 6;
    pub const SPEED_DEC: i8 = 7;
    pub const SPEED_COURSE: i8 = 8;
    pub const SPEED_FINE: i8 = 9;
}
