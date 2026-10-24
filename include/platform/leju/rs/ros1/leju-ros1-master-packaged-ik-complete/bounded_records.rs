// @file bounded_records.rs
// @brief Full leju rs codecs and original record metadata.
// @details Complete leju ros1_master_packaged_ik values in rs. 17 original records retain 55 fields and 15
// interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
// definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
// profile API manual under document/platform/leju/en_US/catalog/.
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
/// Complete bounded value for ROS1 motion_capture_ik/armHandPose.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Motion_capture_ikArmHandPose {
    /// Declared pos_xyz; canonical bounds are part of CODEC_IDENTITY.
    pub pos_xyz: [f64; 3],
    /// Declared quat_xyzw; canonical bounds are part of CODEC_IDENTITY.
    pub quat_xyzw: [f64; 4],
    /// Declared elbow_pos_xyz; canonical bounds are part of CODEC_IDENTITY.
    pub elbow_pos_xyz: [f64; 3],
    /// Declared joint_angles; canonical bounds are part of CODEC_IDENTITY.
    pub joint_angles: [f64; 7],
}
impl Default for Ros1Motion_capture_ikArmHandPose {
    fn default() -> Self {
        Self {
            pos_xyz: core::array::from_fn(|_| Default::default()),
            quat_xyzw: core::array::from_fn(|_| Default::default()),
            elbow_pos_xyz: core::array::from_fn(|_| Default::default()),
            joint_angles: core::array::from_fn(|_| Default::default()),
        }
    }
}
impl Ros1Motion_capture_ikArmHandPose {
    pub const MAX_WIRE_BYTES: usize = 136;
    pub const CARTESIAN_WIRE_BYTES: u64 = 136;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_7cc97650a6f0bedb8bdbc0cc534eb422e8585c69f5b0ae92b6d4f213a2d90f08";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.pos_xyz {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.quat_xyzw {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.elbow_pos_xyz {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.joint_angles {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
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
        for element in &self.pos_xyz {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.quat_xyzw {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.elbow_pos_xyz {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.joint_angles {
            put(out, at, &element.to_le_bytes());
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = 3usize;
            if count > 3 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.pos_xyz[i] = decoded;
            }
        }
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
                value.quat_xyzw[i] = decoded;
            }
        }
        {
            let count = 3usize;
            if count > 3 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.elbow_pos_xyz[i] = decoded;
            }
        }
        {
            let count = 7usize;
            if count > 7 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.joint_angles[i] = decoded;
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros1Motion_capture_ikArmHandPose {
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
/// Complete bounded value for ROS1 motion_capture_ik/armHandPoseFree.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Motion_capture_ikArmHandPoseFree {
    /// Declared pos_xyz; canonical bounds are part of CODEC_IDENTITY.
    pub pos_xyz: [f64; 3],
    /// Declared quat_xyzw; canonical bounds are part of CODEC_IDENTITY.
    pub quat_xyzw: [f64; 4],
    /// Declared elbow_pos_xyz; canonical bounds are part of CODEC_IDENTITY.
    pub elbow_pos_xyz: [f64; 3],
    /// Declared joint_angles; canonical bounds are part of CODEC_IDENTITY.
    pub joint_angles: Vec<f64>,
}
impl Default for Ros1Motion_capture_ikArmHandPoseFree {
    fn default() -> Self {
        Self {
            pos_xyz: core::array::from_fn(|_| Default::default()),
            quat_xyzw: core::array::from_fn(|_| Default::default()),
            elbow_pos_xyz: core::array::from_fn(|_| Default::default()),
            joint_angles: Default::default(),
        }
    }
}
impl Ros1Motion_capture_ikArmHandPoseFree {
    pub const MAX_WIRE_BYTES: usize = 212;
    pub const CARTESIAN_WIRE_BYTES: u64 = 212;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_b46b274661ac382698a9bf1016ca647aecc41df8312020b740d73a87d2513caf";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.pos_xyz {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.quat_xyzw {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.elbow_pos_xyz {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if self.joint_angles.len() > 16 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.joint_angles {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if n > 212 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        for element in &self.pos_xyz {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.quat_xyzw {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.elbow_pos_xyz {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &(self.joint_angles.len() as u32).to_le_bytes());
        for element in &self.joint_angles {
            put(out, at, &element.to_le_bytes());
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = 3usize;
            if count > 3 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.pos_xyz[i] = decoded;
            }
        }
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
                value.quat_xyzw[i] = decoded;
            }
        }
        {
            let count = 3usize;
            if count > 3 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.elbow_pos_xyz[i] = decoded;
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 16 {
                return Err(invalid());
            }
            value.joint_angles = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.joint_angles.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros1Motion_capture_ikArmHandPoseFree {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 212 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 84 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 motion_capture_ik/changeArmCtrlModeRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Motion_capture_ikChangeArmCtrlModeRequest {
    /// Declared control_mode; canonical bounds are part of CODEC_IDENTITY.
    pub control_mode: bool,
}
impl Default for Ros1Motion_capture_ikChangeArmCtrlModeRequest {
    fn default() -> Self {
        Self {
            control_mode: Default::default(),
        }
    }
}
impl Ros1Motion_capture_ikChangeArmCtrlModeRequest {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_b73d3ed01f402673124afd1c6677ced89b5b55d207a1e8c4ff1312941fc00bbd";
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
        put(out, at, &[u8::from(self.control_mode)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.control_mode = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Motion_capture_ikChangeArmCtrlModeRequest {
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
/// Complete bounded value for ROS1 motion_capture_ik/changeArmCtrlModeResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Motion_capture_ikChangeArmCtrlModeResponse {
    /// Declared result; canonical bounds are part of CODEC_IDENTITY.
    pub result: bool,
}
impl Default for Ros1Motion_capture_ikChangeArmCtrlModeResponse {
    fn default() -> Self {
        Self {
            result: Default::default(),
        }
    }
}
impl Ros1Motion_capture_ikChangeArmCtrlModeResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_aee11b3bf042b1e989f7ed00d2f8e72821cfd8b6ee8232e14848ccf8ee754aac";
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
impl Canonical for Ros1Motion_capture_ikChangeArmCtrlModeResponse {
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
/// Complete bounded value for ROS1 motion_capture_ik/handPose.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Motion_capture_ikHandPose {
    /// Declared x; canonical bounds are part of CODEC_IDENTITY.
    pub x: f64,
    /// Declared y; canonical bounds are part of CODEC_IDENTITY.
    pub y: f64,
    /// Declared z; canonical bounds are part of CODEC_IDENTITY.
    pub z: f64,
    /// Declared roll; canonical bounds are part of CODEC_IDENTITY.
    pub roll: f64,
    /// Declared pitch; canonical bounds are part of CODEC_IDENTITY.
    pub pitch: f64,
    /// Declared yaw; canonical bounds are part of CODEC_IDENTITY.
    pub yaw: f64,
}
impl Default for Ros1Motion_capture_ikHandPose {
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
impl Ros1Motion_capture_ikHandPose {
    pub const MAX_WIRE_BYTES: usize = 48;
    pub const CARTESIAN_WIRE_BYTES: u64 = 48;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_dc924e15f38aa45188532c325292b2f9e3827f3dfa94ff946e30aa51f4fbee5f";
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
        if !self.roll.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.pitch.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.yaw.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
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
        put(out, at, &self.x.to_le_bytes());
        put(out, at, &self.y.to_le_bytes());
        put(out, at, &self.z.to_le_bytes());
        put(out, at, &self.roll.to_le_bytes());
        put(out, at, &self.pitch.to_le_bytes());
        put(out, at, &self.yaw.to_le_bytes());
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
        value.roll = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.pitch = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.yaw = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Motion_capture_ikHandPose {
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
/// Complete bounded value for ROS1 motion_capture_ik/ikSolveError.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Motion_capture_ikIkSolveError {
    /// Declared ik_type; canonical bounds are part of CODEC_IDENTITY.
    pub ik_type: String,
    /// Declared left_pose_error; canonical bounds are part of CODEC_IDENTITY.
    pub left_pose_error: Ros1Motion_capture_ikHandPose,
    /// Declared right_pose_error; canonical bounds are part of CODEC_IDENTITY.
    pub right_pose_error: Ros1Motion_capture_ikHandPose,
}
impl Default for Ros1Motion_capture_ikIkSolveError {
    fn default() -> Self {
        Self {
            ik_type: Default::default(),
            left_pose_error: Default::default(),
            right_pose_error: Default::default(),
        }
    }
}
impl Ros1Motion_capture_ikIkSolveError {
    pub const MAX_WIRE_BYTES: usize = 356;
    pub const CARTESIAN_WIRE_BYTES: u64 = 356;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_a20039cf8bf301a7ef643884130619c2ceb96c1c91ed15482dd6f582917e1e94";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.ik_type.len() > 256 || self.ik_type.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.ik_type.len())?;
        n = add_size(n, self.left_pose_error.wire_size()?)?;
        n = add_size(n, self.right_pose_error.wire_size()?)?;
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
        put(out, at, &(self.ik_type.len() as u32).to_le_bytes());
        put(out, at, self.ik_type.as_bytes());
        self.left_pose_error.write_fields(out, at);
        self.right_pose_error.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let size = read_count(bytes, at)?;
        if size > 256 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.ik_type = decoded;
        let decoded = Ros1Motion_capture_ikHandPose::read_fields(bytes, at)?;
        value.left_pose_error = decoded;
        let decoded = Ros1Motion_capture_ikHandPose::read_fields(bytes, at)?;
        value.right_pose_error = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Motion_capture_ikIkSolveError {
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
/// Complete bounded value for ROS1 motion_capture_ik/ikSolveParam.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Motion_capture_ikIkSolveParam {
    /// Declared major_optimality_tol; canonical bounds are part of CODEC_IDENTITY.
    pub major_optimality_tol: f64,
    /// Declared major_feasibility_tol; canonical bounds are part of CODEC_IDENTITY.
    pub major_feasibility_tol: f64,
    /// Declared minor_feasibility_tol; canonical bounds are part of CODEC_IDENTITY.
    pub minor_feasibility_tol: f64,
    /// Declared major_iterations_limit; canonical bounds are part of CODEC_IDENTITY.
    pub major_iterations_limit: f64,
    /// Declared oritation_constraint_tol; canonical bounds are part of CODEC_IDENTITY.
    pub oritation_constraint_tol: f64,
    /// Declared pos_constraint_tol; canonical bounds are part of CODEC_IDENTITY.
    pub pos_constraint_tol: f64,
    /// Declared pos_cost_weight; canonical bounds are part of CODEC_IDENTITY.
    pub pos_cost_weight: f64,
}
impl Default for Ros1Motion_capture_ikIkSolveParam {
    fn default() -> Self {
        Self {
            major_optimality_tol: Default::default(),
            major_feasibility_tol: Default::default(),
            minor_feasibility_tol: Default::default(),
            major_iterations_limit: Default::default(),
            oritation_constraint_tol: Default::default(),
            pos_constraint_tol: Default::default(),
            pos_cost_weight: Default::default(),
        }
    }
}
impl Ros1Motion_capture_ikIkSolveParam {
    pub const MAX_WIRE_BYTES: usize = 56;
    pub const CARTESIAN_WIRE_BYTES: u64 = 56;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_8058ba64ed6070b821470b5560062e78f2ef0fa09169e7a249b584d2d158d981";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if !self.major_optimality_tol.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.major_feasibility_tol.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.minor_feasibility_tol.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.major_iterations_limit.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.oritation_constraint_tol.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.pos_constraint_tol.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.pos_cost_weight.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
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
        put(out, at, &self.major_optimality_tol.to_le_bytes());
        put(out, at, &self.major_feasibility_tol.to_le_bytes());
        put(out, at, &self.minor_feasibility_tol.to_le_bytes());
        put(out, at, &self.major_iterations_limit.to_le_bytes());
        put(out, at, &self.oritation_constraint_tol.to_le_bytes());
        put(out, at, &self.pos_constraint_tol.to_le_bytes());
        put(out, at, &self.pos_cost_weight.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.major_optimality_tol = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.major_feasibility_tol = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.minor_feasibility_tol = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.major_iterations_limit = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.oritation_constraint_tol = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.pos_constraint_tol = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.pos_cost_weight = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Motion_capture_ikIkSolveParam {
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
/// Complete bounded value for ROS1 motion_capture_ik/recordArmHandPose.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Motion_capture_ikRecordArmHandPose {
    /// Declared left_pose; canonical bounds are part of CODEC_IDENTITY.
    pub left_pose: Ros1Motion_capture_ikArmHandPose,
    /// Declared right_pose; canonical bounds are part of CODEC_IDENTITY.
    pub right_pose: Ros1Motion_capture_ikArmHandPose,
}
impl Default for Ros1Motion_capture_ikRecordArmHandPose {
    fn default() -> Self {
        Self {
            left_pose: Default::default(),
            right_pose: Default::default(),
        }
    }
}
impl Ros1Motion_capture_ikRecordArmHandPose {
    pub const MAX_WIRE_BYTES: usize = 272;
    pub const CARTESIAN_WIRE_BYTES: u64 = 272;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_815baf88f4e7fdf82316c06aa2baacbc2f30160c53eb73de10dfcbc1ecda2b4a";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.left_pose.wire_size()?)?;
        n = add_size(n, self.right_pose.wire_size()?)?;
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
        self.left_pose.write_fields(out, at);
        self.right_pose.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Motion_capture_ikArmHandPose::read_fields(bytes, at)?;
        value.left_pose = decoded;
        let decoded = Ros1Motion_capture_ikArmHandPose::read_fields(bytes, at)?;
        value.right_pose = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Motion_capture_ikRecordArmHandPose {
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
        if bytes.len() < 272 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 motion_capture_ik/recordArmHandPoseFree.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Motion_capture_ikRecordArmHandPoseFree {
    /// Declared left_pose; canonical bounds are part of CODEC_IDENTITY.
    pub left_pose: Ros1Motion_capture_ikArmHandPoseFree,
    /// Declared right_pose; canonical bounds are part of CODEC_IDENTITY.
    pub right_pose: Ros1Motion_capture_ikArmHandPoseFree,
}
impl Default for Ros1Motion_capture_ikRecordArmHandPoseFree {
    fn default() -> Self {
        Self {
            left_pose: Default::default(),
            right_pose: Default::default(),
        }
    }
}
impl Ros1Motion_capture_ikRecordArmHandPoseFree {
    pub const MAX_WIRE_BYTES: usize = 424;
    pub const CARTESIAN_WIRE_BYTES: u64 = 424;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_895dcfe228b573faa0911f4c5ca89094cae4497c06b57ba9b827356e62071811";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.left_pose.wire_size()?)?;
        n = add_size(n, self.right_pose.wire_size()?)?;
        if n > 424 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.left_pose.write_fields(out, at);
        self.right_pose.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Motion_capture_ikArmHandPoseFree::read_fields(bytes, at)?;
        value.left_pose = decoded;
        let decoded = Ros1Motion_capture_ikArmHandPoseFree::read_fields(bytes, at)?;
        value.right_pose = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Motion_capture_ikRecordArmHandPoseFree {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 424 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 168 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 motion_capture_ik/robotArmQVVD.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Motion_capture_ikRobotArmQVVD {
    /// Declared q; canonical bounds are part of CODEC_IDENTITY.
    pub q: Vec<f64>,
    /// Declared v; canonical bounds are part of CODEC_IDENTITY.
    pub v: Vec<f64>,
    /// Declared vd; canonical bounds are part of CODEC_IDENTITY.
    pub vd: Vec<f64>,
}
impl Default for Ros1Motion_capture_ikRobotArmQVVD {
    fn default() -> Self {
        Self {
            q: Default::default(),
            v: Default::default(),
            vd: Default::default(),
        }
    }
}
impl Ros1Motion_capture_ikRobotArmQVVD {
    pub const MAX_WIRE_BYTES: usize = 396;
    pub const CARTESIAN_WIRE_BYTES: u64 = 396;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_c5cfc8e6be023981b9b846a4e676e456a407479a9428f4fbe43e1af9df17fbbb";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.q.len() > 16 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.q {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if self.v.len() > 16 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.v {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if self.vd.len() > 16 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.vd {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
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
        put(out, at, &(self.q.len() as u32).to_le_bytes());
        for element in &self.q {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &(self.v.len() as u32).to_le_bytes());
        for element in &self.v {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &(self.vd.len() as u32).to_le_bytes());
        for element in &self.vd {
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
            value.q = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.q.push(decoded);
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
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.v.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 16 {
                return Err(invalid());
            }
            value.vd = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.vd.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros1Motion_capture_ikRobotArmQVVD {
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
    pub const MAX_WIRE_BYTES: usize = 272;
    pub const CARTESIAN_WIRE_BYTES: u64 = 272;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_5501bfd608c585c739688d051f0090563b3966c945bd84b7b2b3681fc61d47d7";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 4)?;
        n = add_size(n, self.stamp.wire_size()?)?;
        if self.frame_id.len() > 256 || self.frame_id.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.frame_id.len())?;
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
        if size > 256 {
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
/// Complete bounded value for ROS1 motion_capture_ik/robotHandPosition.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Motion_capture_ikRobotHandPosition {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros1Std_msgsHeader,
    /// Declared left_hand_position; canonical bounds are part of CODEC_IDENTITY.
    pub left_hand_position: Vec<u8>,
    /// Declared right_hand_position; canonical bounds are part of CODEC_IDENTITY.
    pub right_hand_position: Vec<u8>,
}
impl Default for Ros1Motion_capture_ikRobotHandPosition {
    fn default() -> Self {
        Self {
            header: Default::default(),
            left_hand_position: Default::default(),
            right_hand_position: Default::default(),
        }
    }
}
impl Ros1Motion_capture_ikRobotHandPosition {
    pub const MAX_WIRE_BYTES: usize = 792;
    pub const CARTESIAN_WIRE_BYTES: u64 = 792;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_16c4f8c128cde34eba2cf878bad0706916193ba3b54f02dcd1e4556128e3b0aa";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        if self.left_hand_position.len() > 256 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.left_hand_position {
            n = add_size(n, 1)?;
        }
        if self.right_hand_position.len() > 256 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.right_hand_position {
            n = add_size(n, 1)?;
        }
        if n > 792 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
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
        put(
            out,
            at,
            &(self.left_hand_position.len() as u32).to_le_bytes(),
        );
        for element in &self.left_hand_position {
            put(out, at, &element.to_le_bytes());
        }
        put(
            out,
            at,
            &(self.right_hand_position.len() as u32).to_le_bytes(),
        );
        for element in &self.right_hand_position {
            put(out, at, &element.to_le_bytes());
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Std_msgsHeader::read_fields(bytes, at)?;
        value.header = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 256 {
                return Err(invalid());
            }
            value.left_hand_position = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
                value.left_hand_position.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 256 {
                return Err(invalid());
            }
            value.right_hand_position = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
                value.right_hand_position.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros1Motion_capture_ikRobotHandPosition {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 792 {
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
/// Complete bounded value for ROS1 motion_capture_ik/twoArmHandPose.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Motion_capture_ikTwoArmHandPose {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros1Std_msgsHeader,
    /// Declared left_pose; canonical bounds are part of CODEC_IDENTITY.
    pub left_pose: Ros1Motion_capture_ikArmHandPose,
    /// Declared right_pose; canonical bounds are part of CODEC_IDENTITY.
    pub right_pose: Ros1Motion_capture_ikArmHandPose,
}
impl Default for Ros1Motion_capture_ikTwoArmHandPose {
    fn default() -> Self {
        Self {
            header: Default::default(),
            left_pose: Default::default(),
            right_pose: Default::default(),
        }
    }
}
impl Ros1Motion_capture_ikTwoArmHandPose {
    pub const MAX_WIRE_BYTES: usize = 544;
    pub const CARTESIAN_WIRE_BYTES: u64 = 544;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_12c87f2d727015a1dd0d5c344812528ae43bfd48168fdaa68bac006fe0bbc181";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        n = add_size(n, self.left_pose.wire_size()?)?;
        n = add_size(n, self.right_pose.wire_size()?)?;
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
        self.left_pose.write_fields(out, at);
        self.right_pose.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Std_msgsHeader::read_fields(bytes, at)?;
        value.header = decoded;
        let decoded = Ros1Motion_capture_ikArmHandPose::read_fields(bytes, at)?;
        value.left_pose = decoded;
        let decoded = Ros1Motion_capture_ikArmHandPose::read_fields(bytes, at)?;
        value.right_pose = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Motion_capture_ikTwoArmHandPose {
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
        if bytes.len() < 288 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 motion_capture_ik/twoArmHandPoseCmd.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Motion_capture_ikTwoArmHandPoseCmd {
    /// Declared hand_poses; canonical bounds are part of CODEC_IDENTITY.
    pub hand_poses: Ros1Motion_capture_ikTwoArmHandPose,
    /// Declared use_custom_ik_param; canonical bounds are part of CODEC_IDENTITY.
    pub use_custom_ik_param: bool,
    /// Declared joint_angles_as_q0; canonical bounds are part of CODEC_IDENTITY.
    pub joint_angles_as_q0: bool,
    /// Declared ik_param; canonical bounds are part of CODEC_IDENTITY.
    pub ik_param: Ros1Motion_capture_ikIkSolveParam,
}
impl Default for Ros1Motion_capture_ikTwoArmHandPoseCmd {
    fn default() -> Self {
        Self {
            hand_poses: Default::default(),
            use_custom_ik_param: Default::default(),
            joint_angles_as_q0: Default::default(),
            ik_param: Default::default(),
        }
    }
}
impl Ros1Motion_capture_ikTwoArmHandPoseCmd {
    pub const MAX_WIRE_BYTES: usize = 602;
    pub const CARTESIAN_WIRE_BYTES: u64 = 602;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_aa53de9aca25b5e5ad518a3e3fd6a36f9501d620da4fbd56721a15b693ce6acc";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.hand_poses.wire_size()?)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, self.ik_param.wire_size()?)?;
        if n > 602 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.hand_poses.write_fields(out, at);
        put(out, at, &[u8::from(self.use_custom_ik_param)]);
        put(out, at, &[u8::from(self.joint_angles_as_q0)]);
        self.ik_param.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Motion_capture_ikTwoArmHandPose::read_fields(bytes, at)?;
        value.hand_poses = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.use_custom_ik_param = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.joint_angles_as_q0 = decoded;
        let decoded = Ros1Motion_capture_ikIkSolveParam::read_fields(bytes, at)?;
        value.ik_param = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Motion_capture_ikTwoArmHandPoseCmd {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 602 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 346 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 motion_capture_ik/twoArmHandPoseFree.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Motion_capture_ikTwoArmHandPoseFree {
    /// Declared header; canonical bounds are part of CODEC_IDENTITY.
    pub header: Ros1Std_msgsHeader,
    /// Declared left_pose; canonical bounds are part of CODEC_IDENTITY.
    pub left_pose: Ros1Motion_capture_ikArmHandPoseFree,
    /// Declared right_pose; canonical bounds are part of CODEC_IDENTITY.
    pub right_pose: Ros1Motion_capture_ikArmHandPoseFree,
}
impl Default for Ros1Motion_capture_ikTwoArmHandPoseFree {
    fn default() -> Self {
        Self {
            header: Default::default(),
            left_pose: Default::default(),
            right_pose: Default::default(),
        }
    }
}
impl Ros1Motion_capture_ikTwoArmHandPoseFree {
    pub const MAX_WIRE_BYTES: usize = 696;
    pub const CARTESIAN_WIRE_BYTES: u64 = 696;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_2b0e1aadf4405084b26888548a9c33bb9be57ec8f606122857a3b18c2a6f572c";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        n = add_size(n, self.left_pose.wire_size()?)?;
        n = add_size(n, self.right_pose.wire_size()?)?;
        if n > 696 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
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
        self.left_pose.write_fields(out, at);
        self.right_pose.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Std_msgsHeader::read_fields(bytes, at)?;
        value.header = decoded;
        let decoded = Ros1Motion_capture_ikArmHandPoseFree::read_fields(bytes, at)?;
        value.left_pose = decoded;
        let decoded = Ros1Motion_capture_ikArmHandPoseFree::read_fields(bytes, at)?;
        value.right_pose = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Motion_capture_ikTwoArmHandPoseFree {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 696 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 184 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 motion_capture_ik/twoArmHandPoseCmdFree.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Motion_capture_ikTwoArmHandPoseCmdFree {
    /// Declared hand_poses; canonical bounds are part of CODEC_IDENTITY.
    pub hand_poses: Ros1Motion_capture_ikTwoArmHandPoseFree,
    /// Declared use_custom_ik_param; canonical bounds are part of CODEC_IDENTITY.
    pub use_custom_ik_param: bool,
    /// Declared joint_angles_as_q0; canonical bounds are part of CODEC_IDENTITY.
    pub joint_angles_as_q0: bool,
    /// Declared ik_param; canonical bounds are part of CODEC_IDENTITY.
    pub ik_param: Ros1Motion_capture_ikIkSolveParam,
}
impl Default for Ros1Motion_capture_ikTwoArmHandPoseCmdFree {
    fn default() -> Self {
        Self {
            hand_poses: Default::default(),
            use_custom_ik_param: Default::default(),
            joint_angles_as_q0: Default::default(),
            ik_param: Default::default(),
        }
    }
}
impl Ros1Motion_capture_ikTwoArmHandPoseCmdFree {
    pub const MAX_WIRE_BYTES: usize = 754;
    pub const CARTESIAN_WIRE_BYTES: u64 = 754;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_425b1b5b856ec8d0d019829cf48728723199ff79e2b6fa5aaa3f045f1c4f8773";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.hand_poses.wire_size()?)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, self.ik_param.wire_size()?)?;
        if n > 754 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.hand_poses.write_fields(out, at);
        put(out, at, &[u8::from(self.use_custom_ik_param)]);
        put(out, at, &[u8::from(self.joint_angles_as_q0)]);
        self.ik_param.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Motion_capture_ikTwoArmHandPoseFree::read_fields(bytes, at)?;
        value.hand_poses = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.use_custom_ik_param = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.joint_angles_as_q0 = decoded;
        let decoded = Ros1Motion_capture_ikIkSolveParam::read_fields(bytes, at)?;
        value.ik_param = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Motion_capture_ikTwoArmHandPoseCmdFree {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 754 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 242 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
