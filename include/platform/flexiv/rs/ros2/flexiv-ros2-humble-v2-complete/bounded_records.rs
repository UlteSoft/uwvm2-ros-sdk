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
    /// @brief This message communicates ROS Time defined here:
    /// https://design.ros2.org/articles/clock_and_time.html The seconds component, valid over all int32
    /// values.
    /// @details Original builtin_interfaces/msg/Time.sec; native type int32. Scalar value. Storage belongs
    /// to the complete value and acquires no ROS resource.
    pub sec: i32,
    /// @brief The nanoseconds component, valid in the range [0, 1e9), to be added to the seconds component.
    /// e.g. The time -1.7 seconds is represented as {sec: -2, nanosec: 3e8} The time 1.7 seconds is
    /// represented as {sec: 1, nanosec: 7e8}
    /// @details Original builtin_interfaces/msg/Time.nanosec; native type uint32. Scalar value. Storage
    /// belongs to the complete value and acquires no ROS resource.
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
/// Complete bounded value for ROS2 flexiv_msgs/action/Grasp_Goal.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Flexiv_msgsActionGrasp_Goal {
    /// @brief N
    /// @details Original flexiv_msgs/action/Grasp_Goal.force; native type float64. Scalar value. Finite
    /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
    /// resource.
    pub force: f64,
}
impl Default for Ros2Flexiv_msgsActionGrasp_Goal {
    fn default() -> Self {
        Self {
            force: Default::default(),
        }
    }
}
impl Ros2Flexiv_msgsActionGrasp_Goal {
    pub const MAX_WIRE_BYTES: usize = 8;
    pub const CARTESIAN_WIRE_BYTES: u64 = 8;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_43565e364b5b889f4afe37a991d7b42a2b045737ead93475f771995882eb67ce";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if !self.force.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
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
        put(out, at, &self.force.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.force = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Flexiv_msgsActionGrasp_Goal {
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
/// Complete bounded value for ROS2 flexiv_msgs/action/Grasp_Result.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Flexiv_msgsActionGrasp_Result {
    /// @brief Retain the complete original bool field.
    /// @details Original flexiv_msgs/action/Grasp_Result.success; native type bool. Scalar value. Storage
    /// belongs to the complete value and acquires no ROS resource.
    pub success: bool,
    /// @brief Retain the complete original string field.
    /// @details Original flexiv_msgs/action/Grasp_Result.error; native type string. Scalar value. UTF-8
    /// capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
    /// resource.
    pub error: String,
}
impl Default for Ros2Flexiv_msgsActionGrasp_Result {
    fn default() -> Self {
        Self {
            success: Default::default(),
            error: Default::default(),
        }
    }
}
impl Ros2Flexiv_msgsActionGrasp_Result {
    pub const MAX_WIRE_BYTES: usize = 261;
    pub const CARTESIAN_WIRE_BYTES: u64 = 261;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_76337e629cae7403379d16725f13850a1d38a2bc53d1bd478e79f8139484341a";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if self.error.len() > 256 || self.error.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.error.len())?;
        if n > 261 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
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
        put(out, at, &(self.error.len() as u32).to_le_bytes());
        put(out, at, self.error.as_bytes());
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
        if size > 256 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.error = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Flexiv_msgsActionGrasp_Result {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 261 {
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
/// Complete bounded value for ROS2 flexiv_msgs/action/Grasp_Feedback.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Flexiv_msgsActionGrasp_Feedback {
    /// @brief m
    /// @details Original flexiv_msgs/action/Grasp_Feedback.current_width; native type float64. Scalar
    /// value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
    /// acquires no ROS resource.
    pub current_width: f64,
    /// @brief N
    /// @details Original flexiv_msgs/action/Grasp_Feedback.current_force; native type float64. Scalar
    /// value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
    /// acquires no ROS resource.
    pub current_force: f64,
    /// @brief Retain the complete original bool field.
    /// @details Original flexiv_msgs/action/Grasp_Feedback.moving; native type bool. Scalar value. Storage
    /// belongs to the complete value and acquires no ROS resource.
    pub moving: bool,
}
impl Default for Ros2Flexiv_msgsActionGrasp_Feedback {
    fn default() -> Self {
        Self {
            current_width: Default::default(),
            current_force: Default::default(),
            moving: Default::default(),
        }
    }
}
impl Ros2Flexiv_msgsActionGrasp_Feedback {
    pub const MAX_WIRE_BYTES: usize = 17;
    pub const CARTESIAN_WIRE_BYTES: u64 = 17;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_f546cfb58043f2dd44da229d9b5687e88d2712378aa6e1db8cf0082c07e96c05";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if !self.current_width.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.current_force.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
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
        put(out, at, &self.current_width.to_le_bytes());
        put(out, at, &self.current_force.to_le_bytes());
        put(out, at, &[u8::from(self.moving)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.current_width = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.current_force = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.moving = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Flexiv_msgsActionGrasp_Feedback {
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
/// Complete bounded value for ROS2 flexiv_msgs/action/Move_Goal.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Flexiv_msgsActionMove_Goal {
    /// @brief m
    /// @details Original flexiv_msgs/action/Move_Goal.width; native type float64. Scalar value. Finite IEEE
    /// values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
    /// resource.
    pub width: f64,
    /// @brief m/s
    /// @details Original flexiv_msgs/action/Move_Goal.velocity; native type float64. Scalar value. Finite
    /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
    /// resource.
    pub velocity: f64,
    /// @brief N
    /// @details Original flexiv_msgs/action/Move_Goal.max_force; native type float64. Scalar value. Finite
    /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
    /// resource.
    pub max_force: f64,
}
impl Default for Ros2Flexiv_msgsActionMove_Goal {
    fn default() -> Self {
        Self {
            width: Default::default(),
            velocity: Default::default(),
            max_force: Default::default(),
        }
    }
}
impl Ros2Flexiv_msgsActionMove_Goal {
    pub const MAX_WIRE_BYTES: usize = 24;
    pub const CARTESIAN_WIRE_BYTES: u64 = 24;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_aea1dfd4e0fe2ea72865a4f9e4408564fe63c7eff23cc9eaefdedbb4a3b87ce2";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if !self.width.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.velocity.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.max_force.is_finite() {
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
        put(out, at, &self.width.to_le_bytes());
        put(out, at, &self.velocity.to_le_bytes());
        put(out, at, &self.max_force.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.width = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.velocity = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.max_force = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Flexiv_msgsActionMove_Goal {
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
/// Complete bounded value for ROS2 flexiv_msgs/action/Move_Result.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Flexiv_msgsActionMove_Result {
    /// @brief Retain the complete original bool field.
    /// @details Original flexiv_msgs/action/Move_Result.success; native type bool. Scalar value. Storage
    /// belongs to the complete value and acquires no ROS resource.
    pub success: bool,
    /// @brief Retain the complete original string field.
    /// @details Original flexiv_msgs/action/Move_Result.error; native type string. Scalar value. UTF-8
    /// capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
    /// resource.
    pub error: String,
}
impl Default for Ros2Flexiv_msgsActionMove_Result {
    fn default() -> Self {
        Self {
            success: Default::default(),
            error: Default::default(),
        }
    }
}
impl Ros2Flexiv_msgsActionMove_Result {
    pub const MAX_WIRE_BYTES: usize = 261;
    pub const CARTESIAN_WIRE_BYTES: u64 = 261;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_c95a78a3b488d7f47101110729258fcc28450dee51ab7666114da77ad139709d";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if self.error.len() > 256 || self.error.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.error.len())?;
        if n > 261 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
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
        put(out, at, &(self.error.len() as u32).to_le_bytes());
        put(out, at, self.error.as_bytes());
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
        if size > 256 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.error = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Flexiv_msgsActionMove_Result {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 261 {
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
/// Complete bounded value for ROS2 flexiv_msgs/action/Move_Feedback.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Flexiv_msgsActionMove_Feedback {
    /// @brief m
    /// @details Original flexiv_msgs/action/Move_Feedback.current_width; native type float64. Scalar value.
    /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
    /// no ROS resource.
    pub current_width: f64,
    /// @brief N
    /// @details Original flexiv_msgs/action/Move_Feedback.current_force; native type float64. Scalar value.
    /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
    /// no ROS resource.
    pub current_force: f64,
    /// @brief Retain the complete original bool field.
    /// @details Original flexiv_msgs/action/Move_Feedback.moving; native type bool. Scalar value. Storage
    /// belongs to the complete value and acquires no ROS resource.
    pub moving: bool,
}
impl Default for Ros2Flexiv_msgsActionMove_Feedback {
    fn default() -> Self {
        Self {
            current_width: Default::default(),
            current_force: Default::default(),
            moving: Default::default(),
        }
    }
}
impl Ros2Flexiv_msgsActionMove_Feedback {
    pub const MAX_WIRE_BYTES: usize = 17;
    pub const CARTESIAN_WIRE_BYTES: u64 = 17;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_b28cc267ea6cd964fb24bff71d4e6e8da37fae383f437aeec8afb01431a5cd38";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if !self.current_width.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.current_force.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
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
        put(out, at, &self.current_width.to_le_bytes());
        put(out, at, &self.current_force.to_le_bytes());
        put(out, at, &[u8::from(self.moving)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.current_width = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.current_force = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.moving = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Flexiv_msgsActionMove_Feedback {
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
/// Complete bounded value for ROS2 flexiv_msgs/msg/Digital.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Flexiv_msgsMsgDigital {
    /// @brief Retain the complete original uint8 field.
    /// @details Original flexiv_msgs/msg/Digital.pin; native type uint8. Scalar value. Storage belongs to
    /// the complete value and acquires no ROS resource.
    pub pin: u8,
    /// @brief Retain the complete original bool field.
    /// @details Original flexiv_msgs/msg/Digital.state; native type bool. Scalar value. Storage belongs to
    /// the complete value and acquires no ROS resource.
    pub state: bool,
}
impl Default for Ros2Flexiv_msgsMsgDigital {
    fn default() -> Self {
        Self {
            pin: Default::default(),
            state: Default::default(),
        }
    }
}
impl Ros2Flexiv_msgsMsgDigital {
    pub const MAX_WIRE_BYTES: usize = 2;
    pub const CARTESIAN_WIRE_BYTES: u64 = 2;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_88d2ffaf88359d000dbb247773404361a70fbc86b08a6fad118a73723f2c6fbf";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
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
        put(out, at, &self.pin.to_le_bytes());
        put(out, at, &[u8::from(self.state)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.pin = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.state = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Flexiv_msgsMsgDigital {
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
/// Complete bounded value for ROS2 flexiv_msgs/msg/GPIOStates.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Flexiv_msgsMsgGPIOStates {
    /// @brief Retain the complete original flexiv_msgs/msg/Digital field.
    /// @details Original flexiv_msgs/msg/GPIOStates.states; native type flexiv_msgs/msg/Digital. At most 32
    /// elements. Storage belongs to the complete value and acquires no ROS resource.
    pub states: Vec<Ros2Flexiv_msgsMsgDigital>,
}
impl Default for Ros2Flexiv_msgsMsgGPIOStates {
    fn default() -> Self {
        Self {
            states: Default::default(),
        }
    }
}
impl Ros2Flexiv_msgsMsgGPIOStates {
    pub const MAX_WIRE_BYTES: usize = 68;
    pub const CARTESIAN_WIRE_BYTES: u64 = 68;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_befebf3e30b73f80820c51af2339e0c5a86bef6b155f42fd538540c3fbbd7b14";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.states.len() > 32 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.states {
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
        put(out, at, &(self.states.len() as u32).to_le_bytes());
        for element in &self.states {
            element.write_fields(out, at);
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = read_count(bytes, at)?;
            if count > 32 {
                return Err(invalid());
            }
            value.states = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros2Flexiv_msgsMsgDigital::read_fields(bytes, at)?;
                value.states.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Flexiv_msgsMsgGPIOStates {
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
/// Complete bounded value for ROS2 flexiv_msgs/msg/JointPosVel.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Flexiv_msgsMsgJointPosVel {
    /// @brief Retain the complete original float64 field.
    /// @details Original flexiv_msgs/msg/JointPosVel.positions; native type float64. At most 32 elements.
    /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
    /// no ROS resource.
    pub positions: Vec<f64>,
    /// @brief Retain the complete original float64 field.
    /// @details Original flexiv_msgs/msg/JointPosVel.velocities; native type float64. At most 32 elements.
    /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
    /// no ROS resource.
    pub velocities: Vec<f64>,
}
impl Default for Ros2Flexiv_msgsMsgJointPosVel {
    fn default() -> Self {
        Self {
            positions: Default::default(),
            velocities: Default::default(),
        }
    }
}
impl Ros2Flexiv_msgsMsgJointPosVel {
    pub const MAX_WIRE_BYTES: usize = 520;
    pub const CARTESIAN_WIRE_BYTES: u64 = 520;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_ab1060b13eacca41febd2b58a61f0b93df867a9d6579b4f2b43bf5280f2df4ca";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.positions.len() > 32 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.positions {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if self.velocities.len() > 32 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.velocities {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if n > 520 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
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
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = read_count(bytes, at)?;
            if count > 32 {
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
            if count > 32 {
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
        if bytes.len() > 520 {
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
        "UWVMROS1_cccac829b8021d3eed69844ee81fbef0b785486d73a16ac212fd38b8100eb6d6";
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
/// Complete bounded value for ROS2 std_msgs/msg/Header.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Std_msgsMsgHeader {
    /// @brief Standard metadata for higher-level stamped data types. This is generally used to communicate
    /// timestamped data in a particular coordinate frame. Two-integer timestamp that is expressed as
    /// seconds and nanoseconds.
    /// @details Original std_msgs/msg/Header.stamp; native type builtin_interfaces/msg/Time. Scalar value.
    /// Storage belongs to the complete value and acquires no ROS resource.
    pub stamp: Ros2Builtin_interfacesMsgTime,
    /// @brief Transform frame with which this data is associated.
    /// @details Original std_msgs/msg/Header.frame_id; native type string. Scalar value. UTF-8 capacity 256
    /// bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS resource.
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
    pub const MAX_WIRE_BYTES: usize = 268;
    pub const CARTESIAN_WIRE_BYTES: u64 = 268;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_2f4f374a97a14337b36f87987a2c2fe2fba6dc9597fa4455029ba3bef65c1c2b";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.stamp.wire_size()?)?;
        if self.frame_id.len() > 256 || self.frame_id.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.frame_id.len())?;
        if n > 268 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
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
        if bytes.len() > 268 {
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
/// Complete bounded value for ROS2 geometry_msgs/msg/PoseStamped.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Geometry_msgsMsgPoseStamped {
    /// @brief A Pose with reference coordinate frame and timestamp
    /// @details Original geometry_msgs/msg/PoseStamped.header; native type std_msgs/msg/Header. Scalar
    /// value. Storage belongs to the complete value and acquires no ROS resource.
    pub header: Ros2Std_msgsMsgHeader,
    /// @brief Retain the complete original geometry_msgs/msg/Pose field.
    /// @details Original geometry_msgs/msg/PoseStamped.pose; native type geometry_msgs/msg/Pose. Scalar
    /// value. Storage belongs to the complete value and acquires no ROS resource.
    pub pose: Ros2Geometry_msgsMsgPose,
}
impl Default for Ros2Geometry_msgsMsgPoseStamped {
    fn default() -> Self {
        Self {
            header: Default::default(),
            pose: Default::default(),
        }
    }
}
impl Ros2Geometry_msgsMsgPoseStamped {
    pub const MAX_WIRE_BYTES: usize = 324;
    pub const CARTESIAN_WIRE_BYTES: u64 = 324;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_a8495b0ebccf56849f2c0f798064894dde7c4eb15988d22b3a684a9fd18d05ad";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        n = add_size(n, self.pose.wire_size()?)?;
        if n > 324 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
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
        self.pose.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Std_msgsMsgHeader::read_fields(bytes, at)?;
        value.header = decoded;
        let decoded = Ros2Geometry_msgsMsgPose::read_fields(bytes, at)?;
        value.pose = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Geometry_msgsMsgPoseStamped {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 324 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 68 {
            return Err(invalid());
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
/// Complete bounded value for ROS2 geometry_msgs/msg/Twist.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Geometry_msgsMsgTwist {
    /// @brief This expresses velocity in free space broken into its linear and angular parts.
    /// @details Original geometry_msgs/msg/Twist.linear; native type geometry_msgs/msg/Vector3. Scalar
    /// value. Storage belongs to the complete value and acquires no ROS resource.
    pub linear: Ros2Geometry_msgsMsgVector3,
    /// @brief Retain the complete original geometry_msgs/msg/Vector3 field.
    /// @details Original geometry_msgs/msg/Twist.angular; native type geometry_msgs/msg/Vector3. Scalar
    /// value. Storage belongs to the complete value and acquires no ROS resource.
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
/// Complete bounded value for ROS2 geometry_msgs/msg/TwistStamped.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Geometry_msgsMsgTwistStamped {
    /// @brief A twist with reference coordinate frame and timestamp
    /// @details Original geometry_msgs/msg/TwistStamped.header; native type std_msgs/msg/Header. Scalar
    /// value. Storage belongs to the complete value and acquires no ROS resource.
    pub header: Ros2Std_msgsMsgHeader,
    /// @brief Retain the complete original geometry_msgs/msg/Twist field.
    /// @details Original geometry_msgs/msg/TwistStamped.twist; native type geometry_msgs/msg/Twist. Scalar
    /// value. Storage belongs to the complete value and acquires no ROS resource.
    pub twist: Ros2Geometry_msgsMsgTwist,
}
impl Default for Ros2Geometry_msgsMsgTwistStamped {
    fn default() -> Self {
        Self {
            header: Default::default(),
            twist: Default::default(),
        }
    }
}
impl Ros2Geometry_msgsMsgTwistStamped {
    pub const MAX_WIRE_BYTES: usize = 316;
    pub const CARTESIAN_WIRE_BYTES: u64 = 316;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_e26c5749f60e59245f541ae7c9d66b0d5fc47eef38fa163338aa39316751e308";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        n = add_size(n, self.twist.wire_size()?)?;
        if n > 316 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
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
        self.twist.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Std_msgsMsgHeader::read_fields(bytes, at)?;
        value.header = decoded;
        let decoded = Ros2Geometry_msgsMsgTwist::read_fields(bytes, at)?;
        value.twist = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Geometry_msgsMsgTwistStamped {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 316 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 60 {
            return Err(invalid());
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
/// Complete bounded value for ROS2 geometry_msgs/msg/WrenchStamped.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Geometry_msgsMsgWrenchStamped {
    /// @brief A wrench with reference coordinate frame and timestamp
    /// @details Original geometry_msgs/msg/WrenchStamped.header; native type std_msgs/msg/Header. Scalar
    /// value. Storage belongs to the complete value and acquires no ROS resource.
    pub header: Ros2Std_msgsMsgHeader,
    /// @brief Retain the complete original geometry_msgs/msg/Wrench field.
    /// @details Original geometry_msgs/msg/WrenchStamped.wrench; native type geometry_msgs/msg/Wrench.
    /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
    pub wrench: Ros2Geometry_msgsMsgWrench,
}
impl Default for Ros2Geometry_msgsMsgWrenchStamped {
    fn default() -> Self {
        Self {
            header: Default::default(),
            wrench: Default::default(),
        }
    }
}
impl Ros2Geometry_msgsMsgWrenchStamped {
    pub const MAX_WIRE_BYTES: usize = 316;
    pub const CARTESIAN_WIRE_BYTES: u64 = 316;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_b9573c0cc3e84b6782f303e91813d65244f61e9f58639477158795d710127177";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        n = add_size(n, self.wrench.wire_size()?)?;
        if n > 316 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
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
        self.wrench.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Std_msgsMsgHeader::read_fields(bytes, at)?;
        value.header = decoded;
        let decoded = Ros2Geometry_msgsMsgWrench::read_fields(bytes, at)?;
        value.wrench = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Geometry_msgsMsgWrenchStamped {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 316 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 60 {
            return Err(invalid());
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
    /// @brief Header
    /// @details Original flexiv_msgs/msg/RobotStates.header; native type std_msgs/msg/Header. Scalar value.
    /// Storage belongs to the complete value and acquires no ROS resource.
    pub header: Ros2Std_msgsMsgHeader,
    /// @brief Robot system timestamp
    /// @details Original flexiv_msgs/msg/RobotStates.robot_timestamp; native type
    /// builtin_interfaces/msg/Time. Scalar value. Storage belongs to the complete value and acquires no ROS
    /// resource.
    pub robot_timestamp: Ros2Builtin_interfacesMsgTime,
    /// @brief Measured joint positions using link-side encoder
    /// @details Original flexiv_msgs/msg/RobotStates.q; native type float64. At most 32 elements. Finite
    /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
    /// resource.
    pub q: Vec<f64>,
    /// @brief Measured joint positions using motor-side encoder
    /// @details Original flexiv_msgs/msg/RobotStates.theta; native type float64. At most 32 elements.
    /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
    /// no ROS resource.
    pub theta: Vec<f64>,
    /// @brief Measured joint velocities using link-side encoder
    /// @details Original flexiv_msgs/msg/RobotStates.dq; native type float64. At most 32 elements. Finite
    /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
    /// resource.
    pub dq: Vec<f64>,
    /// @brief Measured joint velocities using motor-side encoder
    /// @details Original flexiv_msgs/msg/RobotStates.dtheta; native type float64. At most 32 elements.
    /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
    /// no ROS resource.
    pub dtheta: Vec<f64>,
    /// @brief Measured joint torques
    /// @details Original flexiv_msgs/msg/RobotStates.tau; native type float64. At most 32 elements. Finite
    /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
    /// resource.
    pub tau: Vec<f64>,
    /// @brief Numerical derivative of measured joint torques
    /// @details Original flexiv_msgs/msg/RobotStates.tau_dot; native type float64. At most 32 elements.
    /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
    /// no ROS resource.
    pub tau_dot: Vec<f64>,
    /// @brief Estimated external joint torques
    /// @details Original flexiv_msgs/msg/RobotStates.tau_ext; native type float64. At most 32 elements.
    /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
    /// no ROS resource.
    pub tau_ext: Vec<f64>,
    /// @brief Estimated interaction joint torques
    /// @details Original flexiv_msgs/msg/RobotStates.tau_interact; native type float64. At most 32
    /// elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
    /// acquires no ROS resource.
    pub tau_interact: Vec<f64>,
    /// @brief Measured joint temperatures
    /// @details Original flexiv_msgs/msg/RobotStates.temperature; native type float64. At most 32 elements.
    /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
    /// no ROS resource.
    pub temperature: Vec<f64>,
    /// @brief Measured TCP pose expressed in world frame
    /// @details Original flexiv_msgs/msg/RobotStates.tcp_pose; native type geometry_msgs/msg/PoseStamped.
    /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
    pub tcp_pose: Ros2Geometry_msgsMsgPoseStamped,
    /// @brief Measured TCP twist expressed in world frame
    /// @details Original flexiv_msgs/msg/RobotStates.tcp_twist; native type geometry_msgs/msg/TwistStamped.
    /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
    pub tcp_twist: Ros2Geometry_msgsMsgTwistStamped,
    /// @brief Measured flange pose expressed in world frame
    /// @details Original flexiv_msgs/msg/RobotStates.flange_pose; native type
    /// geometry_msgs/msg/PoseStamped. Scalar value. Storage belongs to the complete value and acquires no
    /// ROS resource.
    pub flange_pose: Ros2Geometry_msgsMsgPoseStamped,
    /// @brief Raw force-torque (FT) sensor reading in flange frame
    /// @details Original flexiv_msgs/msg/RobotStates.raw_ft_sensor; native type
    /// geometry_msgs/msg/WrenchStamped. Scalar value. Storage belongs to the complete value and acquires no
    /// ROS resource.
    pub raw_ft_sensor: Ros2Geometry_msgsMsgWrenchStamped,
    /// @brief Estimated external wrench applied on TCP and expressed in TCP frame
    /// @details Original flexiv_msgs/msg/RobotStates.tcp_wrench_local; native type
    /// geometry_msgs/msg/WrenchStamped. Scalar value. Storage belongs to the complete value and acquires no
    /// ROS resource.
    pub tcp_wrench_local: Ros2Geometry_msgsMsgWrenchStamped,
    /// @brief Estimated external wrench applied on TCP and expressed in world frame
    /// @details Original flexiv_msgs/msg/RobotStates.tcp_wrench; native type
    /// geometry_msgs/msg/WrenchStamped. Scalar value. Storage belongs to the complete value and acquires no
    /// ROS resource.
    pub tcp_wrench: Ros2Geometry_msgsMsgWrenchStamped,
    /// @brief Unfiltered external wrench applied on TCP and expressed in TCP frame
    /// @details Original flexiv_msgs/msg/RobotStates.raw_tcp_wrench_local; native type
    /// geometry_msgs/msg/WrenchStamped. Scalar value. Storage belongs to the complete value and acquires no
    /// ROS resource.
    pub raw_tcp_wrench_local: Ros2Geometry_msgsMsgWrenchStamped,
    /// @brief Unfiltered external wrench applied on TCP and expressed in world frame
    /// @details Original flexiv_msgs/msg/RobotStates.raw_tcp_wrench; native type
    /// geometry_msgs/msg/WrenchStamped. Scalar value. Storage belongs to the complete value and acquires no
    /// ROS resource.
    pub raw_tcp_wrench: Ros2Geometry_msgsMsgWrenchStamped,
}
impl Default for Ros2Flexiv_msgsMsgRobotStates {
    fn default() -> Self {
        Self {
            header: Default::default(),
            robot_timestamp: Default::default(),
            q: Default::default(),
            theta: Default::default(),
            dq: Default::default(),
            dtheta: Default::default(),
            tau: Default::default(),
            tau_dot: Default::default(),
            tau_ext: Default::default(),
            tau_interact: Default::default(),
            temperature: Default::default(),
            tcp_pose: Default::default(),
            tcp_twist: Default::default(),
            flange_pose: Default::default(),
            raw_ft_sensor: Default::default(),
            tcp_wrench_local: Default::default(),
            tcp_wrench: Default::default(),
            raw_tcp_wrench_local: Default::default(),
            raw_tcp_wrench: Default::default(),
        }
    }
}
impl Ros2Flexiv_msgsMsgRobotStates {
    pub const MAX_WIRE_BYTES: usize = 5160;
    pub const CARTESIAN_WIRE_BYTES: u64 = 5160;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_3faeb145bd2ce50b6478e44c55400cc484e619eb66783f56a4a0801d51af708a";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        n = add_size(n, self.robot_timestamp.wire_size()?)?;
        if self.q.len() > 32 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.q {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if self.theta.len() > 32 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.theta {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if self.dq.len() > 32 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.dq {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if self.dtheta.len() > 32 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.dtheta {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if self.tau.len() > 32 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.tau {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if self.tau_dot.len() > 32 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.tau_dot {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if self.tau_ext.len() > 32 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.tau_ext {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if self.tau_interact.len() > 32 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.tau_interact {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if self.temperature.len() > 32 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.temperature {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        n = add_size(n, self.tcp_pose.wire_size()?)?;
        n = add_size(n, self.tcp_twist.wire_size()?)?;
        n = add_size(n, self.flange_pose.wire_size()?)?;
        n = add_size(n, self.raw_ft_sensor.wire_size()?)?;
        n = add_size(n, self.tcp_wrench_local.wire_size()?)?;
        n = add_size(n, self.tcp_wrench.wire_size()?)?;
        n = add_size(n, self.raw_tcp_wrench_local.wire_size()?)?;
        n = add_size(n, self.raw_tcp_wrench.wire_size()?)?;
        if n > 5160 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
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
        self.robot_timestamp.write_fields(out, at);
        put(out, at, &(self.q.len() as u32).to_le_bytes());
        for element in &self.q {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &(self.theta.len() as u32).to_le_bytes());
        for element in &self.theta {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &(self.dq.len() as u32).to_le_bytes());
        for element in &self.dq {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &(self.dtheta.len() as u32).to_le_bytes());
        for element in &self.dtheta {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &(self.tau.len() as u32).to_le_bytes());
        for element in &self.tau {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &(self.tau_dot.len() as u32).to_le_bytes());
        for element in &self.tau_dot {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &(self.tau_ext.len() as u32).to_le_bytes());
        for element in &self.tau_ext {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &(self.tau_interact.len() as u32).to_le_bytes());
        for element in &self.tau_interact {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &(self.temperature.len() as u32).to_le_bytes());
        for element in &self.temperature {
            put(out, at, &element.to_le_bytes());
        }
        self.tcp_pose.write_fields(out, at);
        self.tcp_twist.write_fields(out, at);
        self.flange_pose.write_fields(out, at);
        self.raw_ft_sensor.write_fields(out, at);
        self.tcp_wrench_local.write_fields(out, at);
        self.tcp_wrench.write_fields(out, at);
        self.raw_tcp_wrench_local.write_fields(out, at);
        self.raw_tcp_wrench.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Std_msgsMsgHeader::read_fields(bytes, at)?;
        value.header = decoded;
        let decoded = Ros2Builtin_interfacesMsgTime::read_fields(bytes, at)?;
        value.robot_timestamp = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 32 {
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
            if count > 32 {
                return Err(invalid());
            }
            value.theta = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.theta.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 32 {
                return Err(invalid());
            }
            value.dq = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.dq.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 32 {
                return Err(invalid());
            }
            value.dtheta = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.dtheta.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 32 {
                return Err(invalid());
            }
            value.tau = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.tau.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 32 {
                return Err(invalid());
            }
            value.tau_dot = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.tau_dot.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 32 {
                return Err(invalid());
            }
            value.tau_ext = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.tau_ext.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 32 {
                return Err(invalid());
            }
            value.tau_interact = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.tau_interact.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 32 {
                return Err(invalid());
            }
            value.temperature = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.temperature.push(decoded);
            }
        }
        let decoded = Ros2Geometry_msgsMsgPoseStamped::read_fields(bytes, at)?;
        value.tcp_pose = decoded;
        let decoded = Ros2Geometry_msgsMsgTwistStamped::read_fields(bytes, at)?;
        value.tcp_twist = decoded;
        let decoded = Ros2Geometry_msgsMsgPoseStamped::read_fields(bytes, at)?;
        value.flange_pose = decoded;
        let decoded = Ros2Geometry_msgsMsgWrenchStamped::read_fields(bytes, at)?;
        value.raw_ft_sensor = decoded;
        let decoded = Ros2Geometry_msgsMsgWrenchStamped::read_fields(bytes, at)?;
        value.tcp_wrench_local = decoded;
        let decoded = Ros2Geometry_msgsMsgWrenchStamped::read_fields(bytes, at)?;
        value.tcp_wrench = decoded;
        let decoded = Ros2Geometry_msgsMsgWrenchStamped::read_fields(bytes, at)?;
        value.raw_tcp_wrench_local = decoded;
        let decoded = Ros2Geometry_msgsMsgWrenchStamped::read_fields(bytes, at)?;
        value.raw_tcp_wrench = decoded;
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
        if bytes.len() > 5160 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 552 {
            return Err(invalid());
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
    pub const MODE_RT_JOINT_IMPEDANCE: i8 = 2;
    pub const MODE_NRT_JOINT_IMPEDANCE: i8 = 3;
    pub const MODE_RT_JOINT_POSITION: i8 = 4;
    pub const MODE_NRT_JOINT_POSITION: i8 = 5;
    pub const MODE_NRT_PLAN_EXECUTION: i8 = 6;
    pub const MODE_NRT_PRIMITIVE_EXECUTION: i8 = 7;
    pub const MODE_RT_CARTESIAN_MOTION_FORCE: i8 = 8;
    pub const MODE_NRT_CARTESIAN_MOTION_FORCE: i8 = 9;
    pub const MODE_NRT_SUPER_PRIMITIVE: i8 = 10;
}
