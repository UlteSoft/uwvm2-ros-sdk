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
/// Complete bounded value for ROS2 flexiv_msgs/msg/JointPosVel.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Flexiv_msgsMsgJointPosVel {
    /// @brief Retain the complete original float64 field.
    /// @details Original flexiv_msgs/msg/JointPosVel.positions; native type float64. Exactly 7 elements.
    /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
    /// no ROS resource.
    pub positions: [f64; 7],
    /// @brief Retain the complete original float64 field.
    /// @details Original flexiv_msgs/msg/JointPosVel.velocities; native type float64. Exactly 7 elements.
    /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
    /// no ROS resource.
    pub velocities: [f64; 7],
}
impl Default for Ros2Flexiv_msgsMsgJointPosVel {
    fn default() -> Self {
        Self {
            positions: core::array::from_fn(|_| Default::default()),
            velocities: core::array::from_fn(|_| Default::default()),
        }
    }
}
impl Ros2Flexiv_msgsMsgJointPosVel {
    pub const MAX_WIRE_BYTES: usize = 112;
    pub const CARTESIAN_WIRE_BYTES: u64 = 112;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_c56feb3a74545187381d2d82c230038aaa70fca3a9243486374d69f3fc3103a8";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.positions {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.velocities {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if n > 112 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        for element in &self.positions {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.velocities {
            put(out, at, &element.to_le_bytes());
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
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
                value.positions[i] = decoded;
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
                value.velocities[i] = decoded;
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Flexiv_msgsMsgJointPosVel {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 112 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 112 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS2 flexiv_msgs/msg/Mode.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Flexiv_msgsMsgMode {
    /// @brief Retain the complete original int8 field.
    /// @details Original flexiv_msgs/msg/Mode.mode; native type int8. Scalar value. Storage belongs to the
    /// complete value and acquires no ROS resource.
    pub mode: i8,
}
impl Default for Ros2Flexiv_msgsMsgMode {
    fn default() -> Self {
        Self {
            mode: Default::default(),
        }
    }
}
impl Ros2Flexiv_msgsMsgMode {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_285581852d18aa98aa5f42e3d920b263b9bc6907766f17daa503c58e81a2064f";
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
        put(out, at, &self.mode.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.mode = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Flexiv_msgsMsgMode {
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
/// Complete bounded value for ROS2 geometry_msgs/msg/Point.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Geometry_msgsMsgPoint {
    /// @brief This contains the position of a point in free space
    /// @details Original geometry_msgs/msg/Point.x; native type float64. Scalar value. Finite IEEE values;
    /// no implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
    pub x: f64,
    /// @brief Retain the complete original float64 field.
    /// @details Original geometry_msgs/msg/Point.y; native type float64. Scalar value. Finite IEEE values;
    /// no implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
    pub y: f64,
    /// @brief Retain the complete original float64 field.
    /// @details Original geometry_msgs/msg/Point.z; native type float64. Scalar value. Finite IEEE values;
    /// no implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
    pub z: f64,
}
impl Default for Ros2Geometry_msgsMsgPoint {
    fn default() -> Self {
        Self {
            x: Default::default(),
            y: Default::default(),
            z: Default::default(),
        }
    }
}
impl Ros2Geometry_msgsMsgPoint {
    pub const MAX_WIRE_BYTES: usize = 24;
    pub const CARTESIAN_WIRE_BYTES: u64 = 24;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616";
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
impl Canonical for Ros2Geometry_msgsMsgPoint {
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
/// Complete bounded value for ROS2 geometry_msgs/msg/Quaternion.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Geometry_msgsMsgQuaternion {
    /// @brief This represents an orientation in free space in quaternion form.
    /// @details Original geometry_msgs/msg/Quaternion.x; native type float64. Scalar value. Declared
    /// original default 0.0. Finite IEEE values; no implicit unit conversion. Storage belongs to the
    /// complete value and acquires no ROS resource.
    pub x: f64,
    /// @brief Retain the complete original float64 field.
    /// @details Original geometry_msgs/msg/Quaternion.y; native type float64. Scalar value. Declared
    /// original default 0.0. Finite IEEE values; no implicit unit conversion. Storage belongs to the
    /// complete value and acquires no ROS resource.
    pub y: f64,
    /// @brief Retain the complete original float64 field.
    /// @details Original geometry_msgs/msg/Quaternion.z; native type float64. Scalar value. Declared
    /// original default 0.0. Finite IEEE values; no implicit unit conversion. Storage belongs to the
    /// complete value and acquires no ROS resource.
    pub z: f64,
    /// @brief Retain the complete original float64 field.
    /// @details Original geometry_msgs/msg/Quaternion.w; native type float64. Scalar value. Declared
    /// original default 1.0. Finite IEEE values; no implicit unit conversion. Storage belongs to the
    /// complete value and acquires no ROS resource.
    pub w: f64,
}
impl Default for Ros2Geometry_msgsMsgQuaternion {
    fn default() -> Self {
        Self {
            x: f64::from_bits(0x0000000000000000),
            y: f64::from_bits(0x0000000000000000),
            z: f64::from_bits(0x0000000000000000),
            w: f64::from_bits(0x3ff0000000000000),
        }
    }
}
impl Ros2Geometry_msgsMsgQuaternion {
    pub const MAX_WIRE_BYTES: usize = 32;
    pub const CARTESIAN_WIRE_BYTES: u64 = 32;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672";
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
impl Canonical for Ros2Geometry_msgsMsgQuaternion {
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
/// Complete bounded value for ROS2 geometry_msgs/msg/Pose.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Geometry_msgsMsgPose {
    /// @brief A representation of pose in free space, composed of position and orientation.
    /// @details Original geometry_msgs/msg/Pose.position; native type geometry_msgs/msg/Point. Scalar
    /// value. Storage belongs to the complete value and acquires no ROS resource.
    pub position: Ros2Geometry_msgsMsgPoint,
    /// @brief Retain the complete original geometry_msgs/msg/Quaternion field.
    /// @details Original geometry_msgs/msg/Pose.orientation; native type geometry_msgs/msg/Quaternion.
    /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
    pub orientation: Ros2Geometry_msgsMsgQuaternion,
}
impl Default for Ros2Geometry_msgsMsgPose {
    fn default() -> Self {
        Self {
            position: Default::default(),
            orientation: Default::default(),
        }
    }
}
impl Ros2Geometry_msgsMsgPose {
    pub const MAX_WIRE_BYTES: usize = 56;
    pub const CARTESIAN_WIRE_BYTES: u64 = 56;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777";
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
        let decoded = Ros2Geometry_msgsMsgPoint::read_fields(bytes, at)?;
        value.position = decoded;
        let decoded = Ros2Geometry_msgsMsgQuaternion::read_fields(bytes, at)?;
        value.orientation = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Geometry_msgsMsgPose {
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
/// Complete bounded value for ROS2 geometry_msgs/msg/Vector3.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Geometry_msgsMsgVector3 {
    /// @brief This represents a vector in free space. This is semantically different than a point. A vector
    /// is always anchored at the origin. When a transform is applied to a vector, only the rotational
    /// component is applied.
    /// @details Original geometry_msgs/msg/Vector3.x; native type float64. Scalar value. Finite IEEE
    /// values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
    /// resource.
    pub x: f64,
    /// @brief Retain the complete original float64 field.
    /// @details Original geometry_msgs/msg/Vector3.y; native type float64. Scalar value. Finite IEEE
    /// values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
    /// resource.
    pub y: f64,
    /// @brief Retain the complete original float64 field.
    /// @details Original geometry_msgs/msg/Vector3.z; native type float64. Scalar value. Finite IEEE
    /// values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
    /// resource.
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
/// Complete bounded value for ROS2 geometry_msgs/msg/Accel.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Geometry_msgsMsgAccel {
    /// @brief This expresses acceleration in free space broken into its linear and angular parts.
    /// @details Original geometry_msgs/msg/Accel.linear; native type geometry_msgs/msg/Vector3. Scalar
    /// value. Storage belongs to the complete value and acquires no ROS resource.
    pub linear: Ros2Geometry_msgsMsgVector3,
    /// @brief Retain the complete original geometry_msgs/msg/Vector3 field.
    /// @details Original geometry_msgs/msg/Accel.angular; native type geometry_msgs/msg/Vector3. Scalar
    /// value. Storage belongs to the complete value and acquires no ROS resource.
    pub angular: Ros2Geometry_msgsMsgVector3,
}
impl Default for Ros2Geometry_msgsMsgAccel {
    fn default() -> Self {
        Self {
            linear: Default::default(),
            angular: Default::default(),
        }
    }
}
impl Ros2Geometry_msgsMsgAccel {
    pub const MAX_WIRE_BYTES: usize = 48;
    pub const CARTESIAN_WIRE_BYTES: u64 = 48;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_87264cb87970315248345c43cc629bbc0c9f9b2a8c6c4bc089da81c7af552fde";
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
impl Canonical for Ros2Geometry_msgsMsgAccel {
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
/// Complete bounded value for ROS2 geometry_msgs/msg/Wrench.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Geometry_msgsMsgWrench {
    /// @brief This represents force in free space, separated into its linear and angular parts.
    /// @details Original geometry_msgs/msg/Wrench.force; native type geometry_msgs/msg/Vector3. Scalar
    /// value. Storage belongs to the complete value and acquires no ROS resource.
    pub force: Ros2Geometry_msgsMsgVector3,
    /// @brief Retain the complete original geometry_msgs/msg/Vector3 field.
    /// @details Original geometry_msgs/msg/Wrench.torque; native type geometry_msgs/msg/Vector3. Scalar
    /// value. Storage belongs to the complete value and acquires no ROS resource.
    pub torque: Ros2Geometry_msgsMsgVector3,
}
impl Default for Ros2Geometry_msgsMsgWrench {
    fn default() -> Self {
        Self {
            force: Default::default(),
            torque: Default::default(),
        }
    }
}
impl Ros2Geometry_msgsMsgWrench {
    pub const MAX_WIRE_BYTES: usize = 48;
    pub const CARTESIAN_WIRE_BYTES: u64 = 48;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_fdfdf2474c0129b0ce1f85972cc87fd80478ac7d2429d9de1ec58951a82a11b6";
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
        let decoded = Ros2Geometry_msgsMsgVector3::read_fields(bytes, at)?;
        value.force = decoded;
        let decoded = Ros2Geometry_msgsMsgVector3::read_fields(bytes, at)?;
        value.torque = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Geometry_msgsMsgWrench {
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
/// Complete bounded value for ROS2 flexiv_msgs/msg/RobotStates.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Flexiv_msgsMsgRobotStates {
    /// @brief Retain the complete original float64 field.
    /// @details Original flexiv_msgs/msg/RobotStates.q; native type float64. Exactly 7 elements. Finite
    /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
    /// resource.
    pub q: [f64; 7],
    /// @brief Retain the complete original float64 field.
    /// @details Original flexiv_msgs/msg/RobotStates.theta; native type float64. Exactly 7 elements. Finite
    /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
    /// resource.
    pub theta: [f64; 7],
    /// @brief Retain the complete original float64 field.
    /// @details Original flexiv_msgs/msg/RobotStates.dq; native type float64. Exactly 7 elements. Finite
    /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
    /// resource.
    pub dq: [f64; 7],
    /// @brief Retain the complete original float64 field.
    /// @details Original flexiv_msgs/msg/RobotStates.dtheta; native type float64. Exactly 7 elements.
    /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
    /// no ROS resource.
    pub dtheta: [f64; 7],
    /// @brief Retain the complete original float64 field.
    /// @details Original flexiv_msgs/msg/RobotStates.tau; native type float64. Exactly 7 elements. Finite
    /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
    /// resource.
    pub tau: [f64; 7],
    /// @brief Retain the complete original float64 field.
    /// @details Original flexiv_msgs/msg/RobotStates.tau_des; native type float64. Exactly 7 elements.
    /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
    /// no ROS resource.
    pub tau_des: [f64; 7],
    /// @brief Retain the complete original float64 field.
    /// @details Original flexiv_msgs/msg/RobotStates.tau_dot; native type float64. Exactly 7 elements.
    /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
    /// no ROS resource.
    pub tau_dot: [f64; 7],
    /// @brief Retain the complete original float64 field.
    /// @details Original flexiv_msgs/msg/RobotStates.tau_ext; native type float64. Exactly 7 elements.
    /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
    /// no ROS resource.
    pub tau_ext: [f64; 7],
    /// @brief Retain the complete original geometry_msgs/msg/Pose field.
    /// @details Original flexiv_msgs/msg/RobotStates.tcp_pose; native type geometry_msgs/msg/Pose. Scalar
    /// value. Storage belongs to the complete value and acquires no ROS resource.
    pub tcp_pose: Ros2Geometry_msgsMsgPose,
    /// @brief Retain the complete original geometry_msgs/msg/Pose field.
    /// @details Original flexiv_msgs/msg/RobotStates.tcp_pose_des; native type geometry_msgs/msg/Pose.
    /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
    pub tcp_pose_des: Ros2Geometry_msgsMsgPose,
    /// @brief Retain the complete original geometry_msgs/msg/Accel field.
    /// @details Original flexiv_msgs/msg/RobotStates.tcp_vel; native type geometry_msgs/msg/Accel. Scalar
    /// value. Storage belongs to the complete value and acquires no ROS resource.
    pub tcp_vel: Ros2Geometry_msgsMsgAccel,
    /// @brief Retain the complete original geometry_msgs/msg/Pose field.
    /// @details Original flexiv_msgs/msg/RobotStates.cam_pose; native type geometry_msgs/msg/Pose. Scalar
    /// value. Storage belongs to the complete value and acquires no ROS resource.
    pub cam_pose: Ros2Geometry_msgsMsgPose,
    /// @brief Retain the complete original geometry_msgs/msg/Pose field.
    /// @details Original flexiv_msgs/msg/RobotStates.flange_pose; native type geometry_msgs/msg/Pose.
    /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
    pub flange_pose: Ros2Geometry_msgsMsgPose,
    /// @brief Retain the complete original geometry_msgs/msg/Wrench field.
    /// @details Original flexiv_msgs/msg/RobotStates.ft_sensor_raw; native type geometry_msgs/msg/Wrench.
    /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
    pub ft_sensor_raw: Ros2Geometry_msgsMsgWrench,
    /// @brief Retain the complete original geometry_msgs/msg/Wrench field.
    /// @details Original flexiv_msgs/msg/RobotStates.ext_wrench_tcp_frame; native type
    /// geometry_msgs/msg/Wrench. Scalar value. Storage belongs to the complete value and acquires no ROS
    /// resource.
    pub ext_wrench_tcp_frame: Ros2Geometry_msgsMsgWrench,
    /// @brief Retain the complete original geometry_msgs/msg/Wrench field.
    /// @details Original flexiv_msgs/msg/RobotStates.ext_wrench_base_frame; native type
    /// geometry_msgs/msg/Wrench. Scalar value. Storage belongs to the complete value and acquires no ROS
    /// resource.
    pub ext_wrench_base_frame: Ros2Geometry_msgsMsgWrench,
}
impl Default for Ros2Flexiv_msgsMsgRobotStates {
    fn default() -> Self {
        Self {
            q: core::array::from_fn(|_| Default::default()),
            theta: core::array::from_fn(|_| Default::default()),
            dq: core::array::from_fn(|_| Default::default()),
            dtheta: core::array::from_fn(|_| Default::default()),
            tau: core::array::from_fn(|_| Default::default()),
            tau_des: core::array::from_fn(|_| Default::default()),
            tau_dot: core::array::from_fn(|_| Default::default()),
            tau_ext: core::array::from_fn(|_| Default::default()),
            tcp_pose: Default::default(),
            tcp_pose_des: Default::default(),
            tcp_vel: Default::default(),
            cam_pose: Default::default(),
            flange_pose: Default::default(),
            ft_sensor_raw: Default::default(),
            ext_wrench_tcp_frame: Default::default(),
            ext_wrench_base_frame: Default::default(),
        }
    }
}
impl Ros2Flexiv_msgsMsgRobotStates {
    pub const MAX_WIRE_BYTES: usize = 864;
    pub const CARTESIAN_WIRE_BYTES: u64 = 864;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_ce6c3a354edf285fa22f8cfb509c4a5f33c1ef82b7dc3d749ae1ecd29dde844b";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.q {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.theta {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.dq {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.dtheta {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.tau {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.tau_des {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.tau_dot {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.tau_ext {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        n = add_size(n, self.tcp_pose.wire_size()?)?;
        n = add_size(n, self.tcp_pose_des.wire_size()?)?;
        n = add_size(n, self.tcp_vel.wire_size()?)?;
        n = add_size(n, self.cam_pose.wire_size()?)?;
        n = add_size(n, self.flange_pose.wire_size()?)?;
        n = add_size(n, self.ft_sensor_raw.wire_size()?)?;
        n = add_size(n, self.ext_wrench_tcp_frame.wire_size()?)?;
        n = add_size(n, self.ext_wrench_base_frame.wire_size()?)?;
        if n > 864 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        for element in &self.q {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.theta {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.dq {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.dtheta {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.tau {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.tau_des {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.tau_dot {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.tau_ext {
            put(out, at, &element.to_le_bytes());
        }
        self.tcp_pose.write_fields(out, at);
        self.tcp_pose_des.write_fields(out, at);
        self.tcp_vel.write_fields(out, at);
        self.cam_pose.write_fields(out, at);
        self.flange_pose.write_fields(out, at);
        self.ft_sensor_raw.write_fields(out, at);
        self.ext_wrench_tcp_frame.write_fields(out, at);
        self.ext_wrench_base_frame.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
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
                value.q[i] = decoded;
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
                value.theta[i] = decoded;
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
                value.dq[i] = decoded;
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
                value.dtheta[i] = decoded;
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
                value.tau[i] = decoded;
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
                value.tau_des[i] = decoded;
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
                value.tau_dot[i] = decoded;
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
                value.tau_ext[i] = decoded;
            }
        }
        let decoded = Ros2Geometry_msgsMsgPose::read_fields(bytes, at)?;
        value.tcp_pose = decoded;
        let decoded = Ros2Geometry_msgsMsgPose::read_fields(bytes, at)?;
        value.tcp_pose_des = decoded;
        let decoded = Ros2Geometry_msgsMsgAccel::read_fields(bytes, at)?;
        value.tcp_vel = decoded;
        let decoded = Ros2Geometry_msgsMsgPose::read_fields(bytes, at)?;
        value.cam_pose = decoded;
        let decoded = Ros2Geometry_msgsMsgPose::read_fields(bytes, at)?;
        value.flange_pose = decoded;
        let decoded = Ros2Geometry_msgsMsgWrench::read_fields(bytes, at)?;
        value.ft_sensor_raw = decoded;
        let decoded = Ros2Geometry_msgsMsgWrench::read_fields(bytes, at)?;
        value.ext_wrench_tcp_frame = decoded;
        let decoded = Ros2Geometry_msgsMsgWrench::read_fields(bytes, at)?;
        value.ext_wrench_base_frame = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Flexiv_msgsMsgRobotStates {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 864 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 864 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}

impl Ros2Flexiv_msgsMsgMode {
    pub const MODE_UNKNOWN: i8 = -1;
    pub const MODE_IDLE: i8 = 0;
    pub const MODE_RT_JOINT_TORQUE: i8 = 1;
    pub const MODE_RT_JOINT_POSITION: i8 = 2;
    pub const MODE_NRT_JOINT_POSITION: i8 = 3;
    pub const MODE_NRT_PLAN_EXECUTION: i8 = 4;
    pub const MODE_NRT_PRIMITIVE_EXECUTION: i8 = 5;
    pub const MODE_RT_CARTESIAN_MOTION_FORCE_BASE: i8 = 6;
    pub const MODE_RT_CARTESIAN_MOTION_FORCE_TCP: i8 = 7;
    pub const MODE_NRT_CARTESIAN_MOTION_FORCE_BASE: i8 = 8;
    pub const MODE_NRT_CARTESIAN_MOTION_FORCE_TCP: i8 = 9;
}
