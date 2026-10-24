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
/// Complete bounded value for ROS2 flexiv_msgs/action/ErrorRecovery_Goal.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Flexiv_msgsActionErrorRecovery_Goal {
    /// @brief Recover the robot from a fault back to an operational state. On success the robot is enabled,
    /// operational and in IDLE control mode. Restoring the control mode is deliberately left to a
    /// controller restart, which re-initializes the controller's own setpoint and so cannot apply a stale
    /// pre-fault command. Run RunAutoRecovery() if the robot is in recovery state after a joint position
    /// limit violation. This moves the involved joints slowly back into the allowed range and requires a
    /// robot reboot afterwards, so it is opt-in.
    /// @details Original flexiv_msgs/action/ErrorRecovery_Goal.run_auto_recovery; native type bool. Scalar
    /// value. Declared original default False. Storage belongs to the complete value and acquires no ROS
    /// resource.
    pub run_auto_recovery: bool,
}
impl Default for Ros2Flexiv_msgsActionErrorRecovery_Goal {
    fn default() -> Self {
        Self {
            run_auto_recovery: false,
        }
    }
}
impl Ros2Flexiv_msgsActionErrorRecovery_Goal {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_255a9d152d16f6abe76bca261fbd19c385548a2f64dd421c58c74dc19f1bfd41";
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
        put(out, at, &[u8::from(self.run_auto_recovery)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.run_auto_recovery = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Flexiv_msgsActionErrorRecovery_Goal {
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
/// Complete bounded value for ROS2 flexiv_msgs/action/ErrorRecovery_Result.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Flexiv_msgsActionErrorRecovery_Result {
    /// @brief Retain the complete original bool field.
    /// @details Original flexiv_msgs/action/ErrorRecovery_Result.success; native type bool. Scalar value.
    /// Storage belongs to the complete value and acquires no ROS resource.
    pub success: bool,
    /// @brief Operator-facing explanation of the outcome
    /// @details Original flexiv_msgs/action/ErrorRecovery_Result.message; native type string. Scalar value.
    /// UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
    /// resource.
    pub message: String,
    /// @brief True when the robot is operational again but controllers must be restarted to resume motion
    /// @details Original flexiv_msgs/action/ErrorRecovery_Result.requires_controller_restart; native type
    /// bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
    pub requires_controller_restart: bool,
    /// @brief Policy that applied to the condition found, values defined in RecoveryPolicy.msg
    /// @details Original flexiv_msgs/action/ErrorRecovery_Result.recovery_policy; native type uint8. Scalar
    /// value. Storage belongs to the complete value and acquires no ROS resource.
    pub recovery_policy: u8,
}
impl Default for Ros2Flexiv_msgsActionErrorRecovery_Result {
    fn default() -> Self {
        Self {
            success: Default::default(),
            message: Default::default(),
            requires_controller_restart: Default::default(),
            recovery_policy: Default::default(),
        }
    }
}
impl Ros2Flexiv_msgsActionErrorRecovery_Result {
    pub const MAX_WIRE_BYTES: usize = 263;
    pub const CARTESIAN_WIRE_BYTES: u64 = 263;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_e1f54f9716ae64b5da8c1463f36379fbfffe35ea983a25dcb9db6e09771fcedc";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if self.message.len() > 256 || self.message.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.message.len())?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        if n > 263 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
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
        put(out, at, &[u8::from(self.requires_controller_restart)]);
        put(out, at, &self.recovery_policy.to_le_bytes());
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
        value.message = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.requires_controller_restart = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.recovery_policy = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Flexiv_msgsActionErrorRecovery_Result {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 263 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 7 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS2 flexiv_msgs/action/ErrorRecovery_Feedback.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Flexiv_msgsActionErrorRecovery_Feedback {
    /// @brief Retain the complete original uint8 field.
    /// @details Original flexiv_msgs/action/ErrorRecovery_Feedback.recovery_state; native type uint8.
    /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
    pub recovery_state: u8,
    /// @brief Human-readable name of the recovery state above
    /// @details Original flexiv_msgs/action/ErrorRecovery_Feedback.recovery_state_name; native type string.
    /// Scalar value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
    /// acquires no ROS resource.
    pub recovery_state_name: String,
    /// @brief Seconds elapsed since the recovery started
    /// @details Original flexiv_msgs/action/ErrorRecovery_Feedback.elapsed_seconds; native type float32.
    /// Scalar value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value
    /// and acquires no ROS resource.
    pub elapsed_seconds: f32,
}
impl Default for Ros2Flexiv_msgsActionErrorRecovery_Feedback {
    fn default() -> Self {
        Self {
            recovery_state: Default::default(),
            recovery_state_name: Default::default(),
            elapsed_seconds: Default::default(),
        }
    }
}
impl Ros2Flexiv_msgsActionErrorRecovery_Feedback {
    pub const MAX_WIRE_BYTES: usize = 265;
    pub const CARTESIAN_WIRE_BYTES: u64 = 265;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_bf87aae8f76ba18d46ab7985e48a667f6b1ed99a403aa90921c80ae4d4ac197a";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if self.recovery_state_name.len() > 256 || self.recovery_state_name.as_bytes().contains(&0)
        {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.recovery_state_name.len())?;
        if !self.elapsed_seconds.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
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
        put(out, at, &self.recovery_state.to_le_bytes());
        put(
            out,
            at,
            &(self.recovery_state_name.len() as u32).to_le_bytes(),
        );
        put(out, at, self.recovery_state_name.as_bytes());
        put(out, at, &self.elapsed_seconds.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.recovery_state = decoded;
        let size = read_count(bytes, at)?;
        if size > 256 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.recovery_state_name = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.elapsed_seconds = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Flexiv_msgsActionErrorRecovery_Feedback {
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
/// Complete bounded value for ROS2 flexiv_msgs/msg/CartesianMotionForce.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Flexiv_msgsMsgCartesianMotionForce {
    /// @brief Cartesian motion-force command for one robot, consumed by cartesian_motion_force_controller
    /// and forwarded to flexiv::rdk::Robot::SendCartesianMotionForce(). Header. frame_id is ignored: the
    /// pose is always expressed in the robot's world frame.
    /// @details Original flexiv_msgs/msg/CartesianMotionForce.header; native type std_msgs/msg/Header.
    /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
    pub header: Ros2Std_msgsMsgHeader,
    /// @brief Target TCP pose in world frame. The orientation is normalized by the controller. [m]
    /// @details Original flexiv_msgs/msg/CartesianMotionForce.pose; native type geometry_msgs/msg/Pose.
    /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
    pub pose: Ros2Geometry_msgsMsgPose,
    /// @brief Target TCP wrench in the force control frame, only tracked on axes enabled for force control.
    /// It is the wrench sensed at the TCP, not exerted by it: +5 N in world Z pushes the TCP down. [N]:[Nm]
    /// @details Original flexiv_msgs/msg/CartesianMotionForce.wrench; native type geometry_msgs/msg/Wrench.
    /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
    pub wrench: Ros2Geometry_msgsMsgWrench,
    /// @brief Target TCP velocity in world frame when reaching the pose. Leave 0 for the most robust
    /// behaviour. [m/s]:[rad/s]
    /// @details Original flexiv_msgs/msg/CartesianMotionForce.velocity; native type
    /// geometry_msgs/msg/Twist. Scalar value. Storage belongs to the complete value and acquires no ROS
    /// resource.
    pub velocity: Ros2Geometry_msgsMsgTwist,
}
impl Default for Ros2Flexiv_msgsMsgCartesianMotionForce {
    fn default() -> Self {
        Self {
            header: Default::default(),
            pose: Default::default(),
            wrench: Default::default(),
            velocity: Default::default(),
        }
    }
}
impl Ros2Flexiv_msgsMsgCartesianMotionForce {
    pub const MAX_WIRE_BYTES: usize = 420;
    pub const CARTESIAN_WIRE_BYTES: u64 = 420;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_2f8de91fe69cf2aa5a50dabb1178e9dcef6b1196602e667a8901caeeb7cba8c3";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        n = add_size(n, self.pose.wire_size()?)?;
        n = add_size(n, self.wrench.wire_size()?)?;
        n = add_size(n, self.velocity.wire_size()?)?;
        if n > 420 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
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
        self.wrench.write_fields(out, at);
        self.velocity.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Std_msgsMsgHeader::read_fields(bytes, at)?;
        value.header = decoded;
        let decoded = Ros2Geometry_msgsMsgPose::read_fields(bytes, at)?;
        value.pose = decoded;
        let decoded = Ros2Geometry_msgsMsgWrench::read_fields(bytes, at)?;
        value.wrench = decoded;
        let decoded = Ros2Geometry_msgsMsgTwist::read_fields(bytes, at)?;
        value.velocity = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Flexiv_msgsMsgCartesianMotionForce {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 420 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 164 {
            return Err(invalid());
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
/// Complete bounded value for ROS2 flexiv_msgs/msg/JointImpedance.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Flexiv_msgsMsgJointImpedance {
    /// @brief Impedance properties of the robot's joint motion controller, used in the joint impedance
    /// control modes. Mirrors the arguments of flexiv::rdk::Robot::SetJointImpedance(). Header
    /// @details Original flexiv_msgs/msg/JointImpedance.header; native type std_msgs/msg/Header. Scalar
    /// value. Storage belongs to the complete value and acquires no ROS resource.
    pub header: Ros2Std_msgsMsgHeader,
    /// @brief Joint names in URDF order. Every array below is indexed by this.
    /// @details Original flexiv_msgs/msg/JointImpedance.joint_names; native type string. At most 32
    /// elements. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
    /// acquires no ROS resource.
    pub joint_names: Vec<String>,
    /// @brief Joint motion stiffness K_q. A joint at 0 is free-floating. [Nm/rad]
    /// @details Original flexiv_msgs/msg/JointImpedance.k_q; native type float64. At most 32 elements.
    /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
    /// no ROS resource.
    pub k_q: Vec<f64>,
    /// @brief Joint motion damping ratio Z_q, dimensionless. Valid range [0.3, 0.8], nominal 0.7
    /// @details Original flexiv_msgs/msg/JointImpedance.z_q; native type float64. At most 32 elements.
    /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
    /// no ROS resource.
    pub z_q: Vec<f64>,
    /// @brief Nominal joint motion stiffness, the upper bound of k_q. [Nm/rad]
    /// @details Original flexiv_msgs/msg/JointImpedance.k_q_nom; native type float64. At most 32 elements.
    /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
    /// no ROS resource.
    pub k_q_nom: Vec<f64>,
    /// @brief Whether these values are in effect on the robot. False while the robot is not in a joint
    /// impedance control mode: they are held and applied on the next controller start.
    /// @details Original flexiv_msgs/msg/JointImpedance.in_effect; native type bool. Scalar value. Storage
    /// belongs to the complete value and acquires no ROS resource.
    pub in_effect: bool,
}
impl Default for Ros2Flexiv_msgsMsgJointImpedance {
    fn default() -> Self {
        Self {
            header: Default::default(),
            joint_names: Default::default(),
            k_q: Default::default(),
            z_q: Default::default(),
            k_q_nom: Default::default(),
            in_effect: Default::default(),
        }
    }
}
impl Ros2Flexiv_msgsMsgJointImpedance {
    pub const MAX_WIRE_BYTES: usize = 9373;
    pub const CARTESIAN_WIRE_BYTES: u64 = 9373;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_f93719074c048d0ab915eeefd2e62bcdfe16ac74f06a3aa505f06ca6d8c3515a";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        if self.joint_names.len() > 32 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.joint_names {
            if element.len() > 256 || element.as_bytes().contains(&0) {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
            n = add_size(n, element.len())?;
        }
        if self.k_q.len() > 32 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.k_q {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if self.z_q.len() > 32 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.z_q {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if self.k_q_nom.len() > 32 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.k_q_nom {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        n = add_size(n, 1)?;
        if n > 9373 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
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
        put(out, at, &(self.k_q.len() as u32).to_le_bytes());
        for element in &self.k_q {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &(self.z_q.len() as u32).to_le_bytes());
        for element in &self.z_q {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &(self.k_q_nom.len() as u32).to_le_bytes());
        for element in &self.k_q_nom {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &[u8::from(self.in_effect)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Std_msgsMsgHeader::read_fields(bytes, at)?;
        value.header = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 32 {
                return Err(invalid());
            }
            value.joint_names = Vec::with_capacity(count);
            for i in 0..count {
                let size = read_count(bytes, at)?;
                if size > 256 {
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
            if count > 32 {
                return Err(invalid());
            }
            value.k_q = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.k_q.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 32 {
                return Err(invalid());
            }
            value.z_q = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.z_q.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 32 {
                return Err(invalid());
            }
            value.k_q_nom = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.k_q_nom.push(decoded);
            }
        }
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.in_effect = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Flexiv_msgsMsgJointImpedance {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 9373 {
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
/// Complete bounded value for ROS2 flexiv_msgs/msg/JointInertiaScale.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Flexiv_msgsMsgJointInertiaScale {
    /// @brief Inertia shaping scales of the robot's joint motion controller, used in the joint impedance
    /// control modes. Mirrors the argument of flexiv::rdk::Robot::SetJointInertiaScale(). Header
    /// @details Original flexiv_msgs/msg/JointInertiaScale.header; native type std_msgs/msg/Header. Scalar
    /// value. Storage belongs to the complete value and acquires no ROS resource.
    pub header: Ros2Std_msgsMsgHeader,
    /// @brief Joint names in URDF order. Every array below is indexed by this.
    /// @details Original flexiv_msgs/msg/JointInertiaScale.joint_names; native type string. At most 32
    /// elements. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
    /// acquires no ROS resource.
    pub joint_names: Vec<String>,
    /// @brief Inertia shaping scale sigma_q, dimensionless. Valid range [0.75, 1.0]. The nominal value 1.0
    /// means no shaping; a smaller scale makes the joint behave as if it were lighter.
    /// @details Original flexiv_msgs/msg/JointInertiaScale.inertia_scales; native type float64. At most 32
    /// elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
    /// acquires no ROS resource.
    pub inertia_scales: Vec<f64>,
    /// @brief Whether these values are in effect on the robot. False while the robot is not in a joint
    /// impedance control mode: they are held and applied on the next controller start.
    /// @details Original flexiv_msgs/msg/JointInertiaScale.in_effect; native type bool. Scalar value.
    /// Storage belongs to the complete value and acquires no ROS resource.
    pub in_effect: bool,
}
impl Default for Ros2Flexiv_msgsMsgJointInertiaScale {
    fn default() -> Self {
        Self {
            header: Default::default(),
            joint_names: Default::default(),
            inertia_scales: Default::default(),
            in_effect: Default::default(),
        }
    }
}
impl Ros2Flexiv_msgsMsgJointInertiaScale {
    pub const MAX_WIRE_BYTES: usize = 8853;
    pub const CARTESIAN_WIRE_BYTES: u64 = 8853;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_3dc5f0addd6835f698feda5133efb05cde46e480dee0e219436fcc4443018e1f";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        if self.joint_names.len() > 32 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.joint_names {
            if element.len() > 256 || element.as_bytes().contains(&0) {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
            n = add_size(n, element.len())?;
        }
        if self.inertia_scales.len() > 32 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.inertia_scales {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        n = add_size(n, 1)?;
        if n > 8853 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
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
        put(out, at, &(self.inertia_scales.len() as u32).to_le_bytes());
        for element in &self.inertia_scales {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &[u8::from(self.in_effect)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Std_msgsMsgHeader::read_fields(bytes, at)?;
        value.header = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 32 {
                return Err(invalid());
            }
            value.joint_names = Vec::with_capacity(count);
            for i in 0..count {
                let size = read_count(bytes, at)?;
                if size > 256 {
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
            if count > 32 {
                return Err(invalid());
            }
            value.inertia_scales = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.inertia_scales.push(decoded);
            }
        }
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.in_effect = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Flexiv_msgsMsgJointInertiaScale {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 8853 {
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
/// Complete bounded value for ROS2 flexiv_msgs/msg/MaxContactTorque.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Flexiv_msgsMsgMaxContactTorque {
    /// @brief Maximum contact torques of the robot's joint motion controller, used in the joint impedance
    /// control modes. Mirrors the argument of flexiv::rdk::Robot::SetMaxContactTorque(). Header
    /// @details Original flexiv_msgs/msg/MaxContactTorque.header; native type std_msgs/msg/Header. Scalar
    /// value. Storage belongs to the complete value and acquires no ROS resource.
    pub header: Ros2Std_msgsMsgHeader,
    /// @brief Joint names in URDF order. Every array below is indexed by this.
    /// @details Original flexiv_msgs/msg/MaxContactTorque.joint_names; native type string. At most 32
    /// elements. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
    /// acquires no ROS resource.
    pub joint_names: Vec<String>,
    /// @brief Maximum contact torque the controller regulates its output to maintain. [Nm]
    /// @details Original flexiv_msgs/msg/MaxContactTorque.max_contact_torques; native type float64. At most
    /// 32 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value
    /// and acquires no ROS resource.
    pub max_contact_torques: Vec<f64>,
    /// @brief Upper software limits of joint torques, the upper bound of max_contact_torques. [Nm]
    /// @details Original flexiv_msgs/msg/MaxContactTorque.tau_max; native type float64. At most 32
    /// elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
    /// acquires no ROS resource.
    pub tau_max: Vec<f64>,
    /// @brief Whether these values are in effect on the robot. False while the robot is not in a joint
    /// impedance control mode: they are held and applied on the next controller start.
    /// @details Original flexiv_msgs/msg/MaxContactTorque.in_effect; native type bool. Scalar value.
    /// Storage belongs to the complete value and acquires no ROS resource.
    pub in_effect: bool,
}
impl Default for Ros2Flexiv_msgsMsgMaxContactTorque {
    fn default() -> Self {
        Self {
            header: Default::default(),
            joint_names: Default::default(),
            max_contact_torques: Default::default(),
            tau_max: Default::default(),
            in_effect: Default::default(),
        }
    }
}
impl Ros2Flexiv_msgsMsgMaxContactTorque {
    pub const MAX_WIRE_BYTES: usize = 9113;
    pub const CARTESIAN_WIRE_BYTES: u64 = 9113;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_d98ebc099077f69f5311d46c2179d08367c301b6c9d1b272b3bc55ba3df185da";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        if self.joint_names.len() > 32 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.joint_names {
            if element.len() > 256 || element.as_bytes().contains(&0) {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
            n = add_size(n, element.len())?;
        }
        if self.max_contact_torques.len() > 32 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.max_contact_torques {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if self.tau_max.len() > 32 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.tau_max {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        n = add_size(n, 1)?;
        if n > 9113 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
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
        put(
            out,
            at,
            &(self.max_contact_torques.len() as u32).to_le_bytes(),
        );
        for element in &self.max_contact_torques {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &(self.tau_max.len() as u32).to_le_bytes());
        for element in &self.tau_max {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &[u8::from(self.in_effect)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Std_msgsMsgHeader::read_fields(bytes, at)?;
        value.header = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 32 {
                return Err(invalid());
            }
            value.joint_names = Vec::with_capacity(count);
            for i in 0..count {
                let size = read_count(bytes, at)?;
                if size > 256 {
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
            if count > 32 {
                return Err(invalid());
            }
            value.max_contact_torques = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.max_contact_torques.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 32 {
                return Err(invalid());
            }
            value.tau_max = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.tau_max.push(decoded);
            }
        }
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.in_effect = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Flexiv_msgsMsgMaxContactTorque {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 9113 {
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
        "UWVMROS1_79f6d3de38a4d7d514780f9d71fcc8b5cd413a3b511f1b31243c210265be0c87";
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
/// Complete bounded value for ROS2 flexiv_msgs/msg/RobotEvent.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Flexiv_msgsMsgRobotEvent {
    /// @brief Retain the complete original uint8 field.
    /// @details Original flexiv_msgs/msg/RobotEvent.level; native type uint8. Scalar value. Storage belongs
    /// to the complete value and acquires no ROS resource.
    pub level: u8,
    /// @brief Unique ID of the event
    /// @details Original flexiv_msgs/msg/RobotEvent.id; native type int32. Scalar value. Storage belongs to
    /// the complete value and acquires no ROS resource.
    pub id: i32,
    /// @brief Brief description of the event
    /// @details Original flexiv_msgs/msg/RobotEvent.description; native type string. Scalar value. UTF-8
    /// capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
    /// resource.
    pub description: String,
    /// @brief Consequences caused by the event
    /// @details Original flexiv_msgs/msg/RobotEvent.consequences; native type string. Scalar value. UTF-8
    /// capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
    /// resource.
    pub consequences: String,
    /// @brief Probable causes of the event
    /// @details Original flexiv_msgs/msg/RobotEvent.probable_causes; native type string. Scalar value.
    /// UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
    /// resource.
    pub probable_causes: String,
    /// @brief Recommended actions after the event
    /// @details Original flexiv_msgs/msg/RobotEvent.recommended_actions; native type string. Scalar value.
    /// UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
    /// resource.
    pub recommended_actions: String,
    /// @brief Timestamp of the event
    /// @details Original flexiv_msgs/msg/RobotEvent.timestamp; native type builtin_interfaces/msg/Time.
    /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
    pub timestamp: Ros2Builtin_interfacesMsgTime,
}
impl Default for Ros2Flexiv_msgsMsgRobotEvent {
    fn default() -> Self {
        Self {
            level: Default::default(),
            id: Default::default(),
            description: Default::default(),
            consequences: Default::default(),
            probable_causes: Default::default(),
            recommended_actions: Default::default(),
            timestamp: Default::default(),
        }
    }
}
impl Ros2Flexiv_msgsMsgRobotEvent {
    pub const MAX_WIRE_BYTES: usize = 1053;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1053;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_cbc02424eaea2ae9754309d070d424f0d0fcd078e67a64b22cbb1a36848e0a17";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        n = add_size(n, 4)?;
        if self.description.len() > 256 || self.description.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.description.len())?;
        if self.consequences.len() > 256 || self.consequences.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.consequences.len())?;
        if self.probable_causes.len() > 256 || self.probable_causes.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.probable_causes.len())?;
        if self.recommended_actions.len() > 256 || self.recommended_actions.as_bytes().contains(&0)
        {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.recommended_actions.len())?;
        n = add_size(n, self.timestamp.wire_size()?)?;
        if n > 1053 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.level.to_le_bytes());
        put(out, at, &self.id.to_le_bytes());
        put(out, at, &(self.description.len() as u32).to_le_bytes());
        put(out, at, self.description.as_bytes());
        put(out, at, &(self.consequences.len() as u32).to_le_bytes());
        put(out, at, self.consequences.as_bytes());
        put(out, at, &(self.probable_causes.len() as u32).to_le_bytes());
        put(out, at, self.probable_causes.as_bytes());
        put(
            out,
            at,
            &(self.recommended_actions.len() as u32).to_le_bytes(),
        );
        put(out, at, self.recommended_actions.as_bytes());
        self.timestamp.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.level = decoded;
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.id = decoded;
        let size = read_count(bytes, at)?;
        if size > 256 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.description = decoded;
        let size = read_count(bytes, at)?;
        if size > 256 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.consequences = decoded;
        let size = read_count(bytes, at)?;
        if size > 256 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.probable_causes = decoded;
        let size = read_count(bytes, at)?;
        if size > 256 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.recommended_actions = decoded;
        let decoded = Ros2Builtin_interfacesMsgTime::read_fields(bytes, at)?;
        value.timestamp = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Flexiv_msgsMsgRobotEvent {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 1053 {
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
/// Complete bounded value for ROS2 flexiv_msgs/msg/OperationalStatus.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Flexiv_msgsMsgOperationalStatus {
    /// @brief Operational status of the robot and of the driver supervising it. The status values mirror
    /// flexiv::rdk::OperationalStatus one-for-one. Header
    /// @details Original flexiv_msgs/msg/OperationalStatus.header; native type std_msgs/msg/Header. Scalar
    /// value. Storage belongs to the complete value and acquires no ROS resource.
    pub header: Ros2Std_msgsMsgHeader,
    /// @brief Retain the complete original uint8 field.
    /// @details Original flexiv_msgs/msg/OperationalStatus.operational_status; native type uint8. Scalar
    /// value. Storage belongs to the complete value and acquires no ROS resource.
    pub operational_status: u8,
    /// @brief Human-readable name of the operational status above
    /// @details Original flexiv_msgs/msg/OperationalStatus.operational_status_name; native type string.
    /// Scalar value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
    /// acquires no ROS resource.
    pub operational_status_name: String,
    /// @brief Retain the complete original uint8 field.
    /// @details Original flexiv_msgs/msg/OperationalStatus.driver_state; native type uint8. Scalar value.
    /// Storage belongs to the complete value and acquires no ROS resource.
    pub driver_state: u8,
    /// @brief Robot condition flags
    /// @details Original flexiv_msgs/msg/OperationalStatus.connected; native type bool. Scalar value.
    /// Storage belongs to the complete value and acquires no ROS resource.
    pub connected: bool,
    /// @brief Retain the complete original bool field.
    /// @details Original flexiv_msgs/msg/OperationalStatus.fault; native type bool. Scalar value. Storage
    /// belongs to the complete value and acquires no ROS resource.
    pub fault: bool,
    /// @brief Retain the complete original bool field.
    /// @details Original flexiv_msgs/msg/OperationalStatus.operational; native type bool. Scalar value.
    /// Storage belongs to the complete value and acquires no ROS resource.
    pub operational: bool,
    /// @brief Retain the complete original bool field.
    /// @details Original flexiv_msgs/msg/OperationalStatus.estop_released; native type bool. Scalar value.
    /// Storage belongs to the complete value and acquires no ROS resource.
    pub estop_released: bool,
    /// @brief Retain the complete original bool field.
    /// @details Original flexiv_msgs/msg/OperationalStatus.reduced; native type bool. Scalar value. Storage
    /// belongs to the complete value and acquires no ROS resource.
    pub reduced: bool,
    /// @brief Retain the complete original bool field.
    /// @details Original flexiv_msgs/msg/OperationalStatus.recovery_state; native type bool. Scalar value.
    /// Storage belongs to the complete value and acquires no ROS resource.
    pub recovery_state: bool,
    /// @brief Current robot control mode, values defined in Mode.msg
    /// @details Original flexiv_msgs/msg/OperationalStatus.control_mode; native type int8. Scalar value.
    /// Storage belongs to the complete value and acquires no ROS resource.
    pub control_mode: i8,
    /// @brief How the current condition should be recovered from, values defined in RecoveryPolicy.msg
    /// @details Original flexiv_msgs/msg/OperationalStatus.recovery_policy; native type uint8. Scalar
    /// value. Storage belongs to the complete value and acquires no ROS resource.
    pub recovery_policy: u8,
    /// @brief Operator-facing explanation of the current condition and what to do about it
    /// @details Original flexiv_msgs/msg/OperationalStatus.message; native type string. Scalar value. UTF-8
    /// capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
    /// resource.
    pub message: String,
    /// @brief Most recent error and critical events reported by the robot
    /// @details Original flexiv_msgs/msg/OperationalStatus.recent_events; native type
    /// flexiv_msgs/msg/RobotEvent. At most 16 elements. Storage belongs to the complete value and acquires
    /// no ROS resource.
    pub recent_events: Vec<Ros2Flexiv_msgsMsgRobotEvent>,
}
impl Default for Ros2Flexiv_msgsMsgOperationalStatus {
    fn default() -> Self {
        Self {
            header: Default::default(),
            operational_status: Default::default(),
            operational_status_name: Default::default(),
            driver_state: Default::default(),
            connected: Default::default(),
            fault: Default::default(),
            operational: Default::default(),
            estop_released: Default::default(),
            reduced: Default::default(),
            recovery_state: Default::default(),
            control_mode: Default::default(),
            recovery_policy: Default::default(),
            message: Default::default(),
            recent_events: Default::default(),
        }
    }
}
impl Ros2Flexiv_msgsMsgOperationalStatus {
    pub const MAX_WIRE_BYTES: usize = 17650;
    pub const CARTESIAN_WIRE_BYTES: u64 = 17650;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_fb8887a722a4b6d895ed17ba5db0f4145b4ddd01eecf876419b287dd07bc728b";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        n = add_size(n, 1)?;
        if self.operational_status_name.len() > 256
            || self.operational_status_name.as_bytes().contains(&0)
        {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.operational_status_name.len())?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        if self.message.len() > 256 || self.message.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.message.len())?;
        if self.recent_events.len() > 16 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.recent_events {
            n = add_size(n, element.wire_size()?)?;
        }
        if n > 17650 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
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
        put(out, at, &self.operational_status.to_le_bytes());
        put(
            out,
            at,
            &(self.operational_status_name.len() as u32).to_le_bytes(),
        );
        put(out, at, self.operational_status_name.as_bytes());
        put(out, at, &self.driver_state.to_le_bytes());
        put(out, at, &[u8::from(self.connected)]);
        put(out, at, &[u8::from(self.fault)]);
        put(out, at, &[u8::from(self.operational)]);
        put(out, at, &[u8::from(self.estop_released)]);
        put(out, at, &[u8::from(self.reduced)]);
        put(out, at, &[u8::from(self.recovery_state)]);
        put(out, at, &self.control_mode.to_le_bytes());
        put(out, at, &self.recovery_policy.to_le_bytes());
        put(out, at, &(self.message.len() as u32).to_le_bytes());
        put(out, at, self.message.as_bytes());
        put(out, at, &(self.recent_events.len() as u32).to_le_bytes());
        for element in &self.recent_events {
            element.write_fields(out, at);
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Std_msgsMsgHeader::read_fields(bytes, at)?;
        value.header = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.operational_status = decoded;
        let size = read_count(bytes, at)?;
        if size > 256 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.operational_status_name = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.driver_state = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.connected = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.fault = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.operational = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.estop_released = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.reduced = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.recovery_state = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.control_mode = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.recovery_policy = decoded;
        let size = read_count(bytes, at)?;
        if size > 256 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.message = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 16 {
                return Err(invalid());
            }
            value.recent_events = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros2Flexiv_msgsMsgRobotEvent::read_fields(bytes, at)?;
                value.recent_events.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Flexiv_msgsMsgOperationalStatus {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 17650 {
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
/// Complete bounded value for ROS2 flexiv_msgs/msg/RecoveryPolicy.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Flexiv_msgsMsgRecoveryPolicy {
    /// @brief Retain the complete original uint8 field.
    /// @details Original flexiv_msgs/msg/RecoveryPolicy.recovery_policy; native type uint8. Scalar value.
    /// Storage belongs to the complete value and acquires no ROS resource.
    pub recovery_policy: u8,
}
impl Default for Ros2Flexiv_msgsMsgRecoveryPolicy {
    fn default() -> Self {
        Self {
            recovery_policy: Default::default(),
        }
    }
}
impl Ros2Flexiv_msgsMsgRecoveryPolicy {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_0eb43d2482caac32e0977e6cd8ae7baeeba7fca2629c5cd1e1927e8a28af42bf";
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
        put(out, at, &self.recovery_policy.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.recovery_policy = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Flexiv_msgsMsgRecoveryPolicy {
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
/// Complete bounded value for ROS2 geometry_msgs/msg/AccelStamped.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Geometry_msgsMsgAccelStamped {
    /// @brief An accel with reference coordinate frame and timestamp
    /// @details Original geometry_msgs/msg/AccelStamped.header; native type std_msgs/msg/Header. Scalar
    /// value. Storage belongs to the complete value and acquires no ROS resource.
    pub header: Ros2Std_msgsMsgHeader,
    /// @brief Retain the complete original geometry_msgs/msg/Accel field.
    /// @details Original geometry_msgs/msg/AccelStamped.accel; native type geometry_msgs/msg/Accel. Scalar
    /// value. Storage belongs to the complete value and acquires no ROS resource.
    pub accel: Ros2Geometry_msgsMsgAccel,
}
impl Default for Ros2Geometry_msgsMsgAccelStamped {
    fn default() -> Self {
        Self {
            header: Default::default(),
            accel: Default::default(),
        }
    }
}
impl Ros2Geometry_msgsMsgAccelStamped {
    pub const MAX_WIRE_BYTES: usize = 316;
    pub const CARTESIAN_WIRE_BYTES: u64 = 316;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_99c561d1968cbb554a188d387fb085b6721227a88b7243a7f90682ae20782329";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        n = add_size(n, self.accel.wire_size()?)?;
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
        self.accel.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Std_msgsMsgHeader::read_fields(bytes, at)?;
        value.header = decoded;
        let decoded = Ros2Geometry_msgsMsgAccel::read_fields(bytes, at)?;
        value.accel = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Geometry_msgsMsgAccelStamped {
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
    /// @brief Measured TCP velocity expressed in world frame
    /// @details Original flexiv_msgs/msg/RobotStates.tcp_vel; native type geometry_msgs/msg/AccelStamped.
    /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
    pub tcp_vel: Ros2Geometry_msgsMsgAccelStamped,
    /// @brief Measured flange pose expressed in world frame
    /// @details Original flexiv_msgs/msg/RobotStates.flange_pose; native type
    /// geometry_msgs/msg/PoseStamped. Scalar value. Storage belongs to the complete value and acquires no
    /// ROS resource.
    pub flange_pose: Ros2Geometry_msgsMsgPoseStamped,
    /// @brief Force-torque (FT) sensor raw reading in flange frame
    /// @details Original flexiv_msgs/msg/RobotStates.ft_sensor_raw; native type
    /// geometry_msgs/msg/WrenchStamped. Scalar value. Storage belongs to the complete value and acquires no
    /// ROS resource.
    pub ft_sensor_raw: Ros2Geometry_msgsMsgWrenchStamped,
    /// @brief Estimated external wrench applied on TCP and expressed in TCP frame
    /// @details Original flexiv_msgs/msg/RobotStates.ext_wrench_in_tcp; native type
    /// geometry_msgs/msg/WrenchStamped. Scalar value. Storage belongs to the complete value and acquires no
    /// ROS resource.
    pub ext_wrench_in_tcp: Ros2Geometry_msgsMsgWrenchStamped,
    /// @brief Estimated external wrench applied on TCP and expressed in world frame
    /// @details Original flexiv_msgs/msg/RobotStates.ext_wrench_in_world; native type
    /// geometry_msgs/msg/WrenchStamped. Scalar value. Storage belongs to the complete value and acquires no
    /// ROS resource.
    pub ext_wrench_in_world: Ros2Geometry_msgsMsgWrenchStamped,
    /// @brief Unfiltered external wrench applied on TCP and expressed in TCP frame
    /// @details Original flexiv_msgs/msg/RobotStates.ext_wrench_in_tcp_raw; native type
    /// geometry_msgs/msg/WrenchStamped. Scalar value. Storage belongs to the complete value and acquires no
    /// ROS resource.
    pub ext_wrench_in_tcp_raw: Ros2Geometry_msgsMsgWrenchStamped,
    /// @brief Unfiltered external wrench applied on TCP and expressed in world frame
    /// @details Original flexiv_msgs/msg/RobotStates.ext_wrench_in_world_raw; native type
    /// geometry_msgs/msg/WrenchStamped. Scalar value. Storage belongs to the complete value and acquires no
    /// ROS resource.
    pub ext_wrench_in_world_raw: Ros2Geometry_msgsMsgWrenchStamped,
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
            tcp_vel: Default::default(),
            flange_pose: Default::default(),
            ft_sensor_raw: Default::default(),
            ext_wrench_in_tcp: Default::default(),
            ext_wrench_in_world: Default::default(),
            ext_wrench_in_tcp_raw: Default::default(),
            ext_wrench_in_world_raw: Default::default(),
        }
    }
}
impl Ros2Flexiv_msgsMsgRobotStates {
    pub const MAX_WIRE_BYTES: usize = 5160;
    pub const CARTESIAN_WIRE_BYTES: u64 = 5160;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_7e84612c73d2d16252a0b93f995b5afa7e032f3de3826f0577c89670dde1f2d2";
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
        n = add_size(n, self.tcp_vel.wire_size()?)?;
        n = add_size(n, self.flange_pose.wire_size()?)?;
        n = add_size(n, self.ft_sensor_raw.wire_size()?)?;
        n = add_size(n, self.ext_wrench_in_tcp.wire_size()?)?;
        n = add_size(n, self.ext_wrench_in_world.wire_size()?)?;
        n = add_size(n, self.ext_wrench_in_tcp_raw.wire_size()?)?;
        n = add_size(n, self.ext_wrench_in_world_raw.wire_size()?)?;
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
        self.tcp_vel.write_fields(out, at);
        self.flange_pose.write_fields(out, at);
        self.ft_sensor_raw.write_fields(out, at);
        self.ext_wrench_in_tcp.write_fields(out, at);
        self.ext_wrench_in_world.write_fields(out, at);
        self.ext_wrench_in_tcp_raw.write_fields(out, at);
        self.ext_wrench_in_world_raw.write_fields(out, at);
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
        let decoded = Ros2Geometry_msgsMsgAccelStamped::read_fields(bytes, at)?;
        value.tcp_vel = decoded;
        let decoded = Ros2Geometry_msgsMsgPoseStamped::read_fields(bytes, at)?;
        value.flange_pose = decoded;
        let decoded = Ros2Geometry_msgsMsgWrenchStamped::read_fields(bytes, at)?;
        value.ft_sensor_raw = decoded;
        let decoded = Ros2Geometry_msgsMsgWrenchStamped::read_fields(bytes, at)?;
        value.ext_wrench_in_tcp = decoded;
        let decoded = Ros2Geometry_msgsMsgWrenchStamped::read_fields(bytes, at)?;
        value.ext_wrench_in_world = decoded;
        let decoded = Ros2Geometry_msgsMsgWrenchStamped::read_fields(bytes, at)?;
        value.ext_wrench_in_tcp_raw = decoded;
        let decoded = Ros2Geometry_msgsMsgWrenchStamped::read_fields(bytes, at)?;
        value.ext_wrench_in_world_raw = decoded;
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
/// Complete bounded value for ROS2 flexiv_msgs/srv/GetOperationalStatus_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Flexiv_msgsSrvGetOperationalStatus_Request {}
impl Default for Ros2Flexiv_msgsSrvGetOperationalStatus_Request {
    fn default() -> Self {
        Self {}
    }
}
impl Ros2Flexiv_msgsSrvGetOperationalStatus_Request {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_7fd7ea129ca031bf1bf8d008b1273bc0deb676f3ae786731b420cd009bb3ae12";
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
impl Canonical for Ros2Flexiv_msgsSrvGetOperationalStatus_Request {
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
/// Complete bounded value for ROS2 flexiv_msgs/srv/GetOperationalStatus_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Flexiv_msgsSrvGetOperationalStatus_Response {
    /// @brief Retain the complete original flexiv_msgs/msg/OperationalStatus field.
    /// @details Original flexiv_msgs/srv/GetOperationalStatus_Response.status; native type
    /// flexiv_msgs/msg/OperationalStatus. Scalar value. Storage belongs to the complete value and acquires
    /// no ROS resource.
    pub status: Ros2Flexiv_msgsMsgOperationalStatus,
}
impl Default for Ros2Flexiv_msgsSrvGetOperationalStatus_Response {
    fn default() -> Self {
        Self {
            status: Default::default(),
        }
    }
}
impl Ros2Flexiv_msgsSrvGetOperationalStatus_Response {
    pub const MAX_WIRE_BYTES: usize = 17650;
    pub const CARTESIAN_WIRE_BYTES: u64 = 17650;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_b804d4a8c3dfdd26b0cad4314552092a90f439f0f364831b855bca4c30d49f42";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.status.wire_size()?)?;
        if n > 17650 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.status.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Flexiv_msgsMsgOperationalStatus::read_fields(bytes, at)?;
        value.status = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Flexiv_msgsSrvGetOperationalStatus_Response {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 17650 {
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
/// Complete bounded value for ROS2 flexiv_msgs/srv/SetCartesianImpedance_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Flexiv_msgsSrvSetCartesianImpedance_Request {
    /// @brief Set the impedance properties of the robot's Cartesian motion controller, used in the
    /// Cartesian motion-force control mode. For a robot pair, each array holds the left robot's values
    /// first.  An invalid request is rejected as a whole and nothing changes. Cartesian stiffness [k_x,
    /// k_y, k_z, k_Rx, k_Ry, k_Rz], 6 per robot. Valid range [0, k_x_nom]. Empty means k_x_nom.
    /// [N/m]:[Nm/rad]
    /// @details Original flexiv_msgs/srv/SetCartesianImpedance_Request.k_x; native type float64. At most 32
    /// elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
    /// acquires no ROS resource.
    pub k_x: Vec<f64>,
    /// @brief Cartesian damping ratio, 6 per robot. Valid range [0.3, 0.8]. Empty means the nominal 0.7.
    /// @details Original flexiv_msgs/srv/SetCartesianImpedance_Request.z_x; native type float64. At most 32
    /// elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
    /// acquires no ROS resource.
    pub z_x: Vec<f64>,
}
impl Default for Ros2Flexiv_msgsSrvSetCartesianImpedance_Request {
    fn default() -> Self {
        Self {
            k_x: Default::default(),
            z_x: Default::default(),
        }
    }
}
impl Ros2Flexiv_msgsSrvSetCartesianImpedance_Request {
    pub const MAX_WIRE_BYTES: usize = 520;
    pub const CARTESIAN_WIRE_BYTES: u64 = 520;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_a121634cb756eace8772aa4fb681a103b4716f6289a1ba66608d66ce2d83ff9f";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.k_x.len() > 32 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.k_x {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if self.z_x.len() > 32 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.z_x {
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
        put(out, at, &(self.k_x.len() as u32).to_le_bytes());
        for element in &self.k_x {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &(self.z_x.len() as u32).to_le_bytes());
        for element in &self.z_x {
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
            value.k_x = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.k_x.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 32 {
                return Err(invalid());
            }
            value.z_x = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.z_x.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Flexiv_msgsSrvSetCartesianImpedance_Request {
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
/// Complete bounded value for ROS2 flexiv_msgs/srv/SetCartesianImpedance_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Flexiv_msgsSrvSetCartesianImpedance_Response {
    /// @brief Retain the complete original bool field.
    /// @details Original flexiv_msgs/srv/SetCartesianImpedance_Response.success; native type bool. Scalar
    /// value. Storage belongs to the complete value and acquires no ROS resource.
    pub success: bool,
    /// @brief Operator-facing explanation of the outcome
    /// @details Original flexiv_msgs/srv/SetCartesianImpedance_Response.message; native type string. Scalar
    /// value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
    /// no ROS resource.
    pub message: String,
    /// @brief Nominal Cartesian stiffness, the upper bound of k_x, 6 per robot. [N/m]:[Nm/rad]
    /// @details Original flexiv_msgs/srv/SetCartesianImpedance_Response.k_x_nom; native type float64. At
    /// most 32 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete
    /// value and acquires no ROS resource.
    pub k_x_nom: Vec<f64>,
}
impl Default for Ros2Flexiv_msgsSrvSetCartesianImpedance_Response {
    fn default() -> Self {
        Self {
            success: Default::default(),
            message: Default::default(),
            k_x_nom: Default::default(),
        }
    }
}
impl Ros2Flexiv_msgsSrvSetCartesianImpedance_Response {
    pub const MAX_WIRE_BYTES: usize = 521;
    pub const CARTESIAN_WIRE_BYTES: u64 = 521;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_84cb649adf8fdcbc9e499dd9c8274542c7de6c466fbab5c2721349ee76974f29";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if self.message.len() > 256 || self.message.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.message.len())?;
        if self.k_x_nom.len() > 32 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.k_x_nom {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if n > 521 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
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
        put(out, at, &(self.k_x_nom.len() as u32).to_le_bytes());
        for element in &self.k_x_nom {
            put(out, at, &element.to_le_bytes());
        }
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
        value.message = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 32 {
                return Err(invalid());
            }
            value.k_x_nom = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.k_x_nom.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Flexiv_msgsSrvSetCartesianImpedance_Response {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 521 {
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
/// Complete bounded value for ROS2 flexiv_msgs/srv/SetCartesianMotionLimits_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Flexiv_msgsSrvSetCartesianMotionLimits_Request {
    /// @brief Set the motion limits the driver passes with every Cartesian motion-force command. Each array
    /// holds one entry per robot, left first. Only accepted while the Cartesian motion-force controller is
    /// running, and reset to the defaults on every controller start.  An invalid request is rejected as a
    /// whole and nothing changes. Maximum linear velocity. Must be positive. RDK default 0.5. [m/s]
    /// @details Original flexiv_msgs/srv/SetCartesianMotionLimits_Request.max_linear_vel; native type
    /// float64. At most 32 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to
    /// the complete value and acquires no ROS resource.
    pub max_linear_vel: Vec<f64>,
    /// @brief Maximum angular velocity. Must be positive. RDK default 1.0. [rad/s]
    /// @details Original flexiv_msgs/srv/SetCartesianMotionLimits_Request.max_angular_vel; native type
    /// float64. At most 32 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to
    /// the complete value and acquires no ROS resource.
    pub max_angular_vel: Vec<f64>,
    /// @brief Maximum linear acceleration. Must be positive. RDK default 2.0. [m/s^2]
    /// @details Original flexiv_msgs/srv/SetCartesianMotionLimits_Request.max_linear_acc; native type
    /// float64. At most 32 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to
    /// the complete value and acquires no ROS resource.
    pub max_linear_acc: Vec<f64>,
    /// @brief Maximum angular acceleration. Must be positive. RDK default 5.0. [rad/s^2]
    /// @details Original flexiv_msgs/srv/SetCartesianMotionLimits_Request.max_angular_acc; native type
    /// float64. At most 32 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to
    /// the complete value and acquires no ROS resource.
    pub max_angular_acc: Vec<f64>,
}
impl Default for Ros2Flexiv_msgsSrvSetCartesianMotionLimits_Request {
    fn default() -> Self {
        Self {
            max_linear_vel: Default::default(),
            max_angular_vel: Default::default(),
            max_linear_acc: Default::default(),
            max_angular_acc: Default::default(),
        }
    }
}
impl Ros2Flexiv_msgsSrvSetCartesianMotionLimits_Request {
    pub const MAX_WIRE_BYTES: usize = 1040;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1040;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_381d447a83ce08a843476dfe3b7e1650477b2575f873706d80d458e8153a6111";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.max_linear_vel.len() > 32 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.max_linear_vel {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if self.max_angular_vel.len() > 32 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.max_angular_vel {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if self.max_linear_acc.len() > 32 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.max_linear_acc {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if self.max_angular_acc.len() > 32 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.max_angular_acc {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if n > 1040 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.max_linear_vel.len() as u32).to_le_bytes());
        for element in &self.max_linear_vel {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &(self.max_angular_vel.len() as u32).to_le_bytes());
        for element in &self.max_angular_vel {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &(self.max_linear_acc.len() as u32).to_le_bytes());
        for element in &self.max_linear_acc {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &(self.max_angular_acc.len() as u32).to_le_bytes());
        for element in &self.max_angular_acc {
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
            value.max_linear_vel = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.max_linear_vel.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 32 {
                return Err(invalid());
            }
            value.max_angular_vel = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.max_angular_vel.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 32 {
                return Err(invalid());
            }
            value.max_linear_acc = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.max_linear_acc.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 32 {
                return Err(invalid());
            }
            value.max_angular_acc = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.max_angular_acc.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Flexiv_msgsSrvSetCartesianMotionLimits_Request {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 1040 {
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
/// Complete bounded value for ROS2 flexiv_msgs/srv/SetCartesianMotionLimits_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Flexiv_msgsSrvSetCartesianMotionLimits_Response {
    /// @brief Retain the complete original bool field.
    /// @details Original flexiv_msgs/srv/SetCartesianMotionLimits_Response.success; native type bool.
    /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
    pub success: bool,
    /// @brief Operator-facing explanation of the outcome
    /// @details Original flexiv_msgs/srv/SetCartesianMotionLimits_Response.message; native type string.
    /// Scalar value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
    /// acquires no ROS resource.
    pub message: String,
}
impl Default for Ros2Flexiv_msgsSrvSetCartesianMotionLimits_Response {
    fn default() -> Self {
        Self {
            success: Default::default(),
            message: Default::default(),
        }
    }
}
impl Ros2Flexiv_msgsSrvSetCartesianMotionLimits_Response {
    pub const MAX_WIRE_BYTES: usize = 261;
    pub const CARTESIAN_WIRE_BYTES: u64 = 261;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_0adcf054313396afa13673e6a125f8a6dcc85b1009d36860b6447512f52bdc36";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if self.message.len() > 256 || self.message.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.message.len())?;
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
        if size > 256 {
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
impl Canonical for Ros2Flexiv_msgsSrvSetCartesianMotionLimits_Response {
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
/// Complete bounded value for ROS2 flexiv_msgs/srv/SetForceControlAxis_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Flexiv_msgsSrvSetForceControlAxis_Request {
    /// @brief Set the Cartesian axes that are force-controlled in the Cartesian motion-force control mode.
    /// The other axes stay motion-controlled. For a robot pair, each array holds the left robot's values
    /// first.  An invalid request is rejected as a whole and nothing changes. Force control flags [X, Y, Z,
    /// Rx, Ry, Rz] in the force control frame, 6 per robot
    /// @details Original flexiv_msgs/srv/SetForceControlAxis_Request.enabled_axes; native type bool. At
    /// most 32 elements. Storage belongs to the complete value and acquires no ROS resource.
    pub enabled_axes: Vec<bool>,
    /// @brief Velocity limit of the force-controlled linear axes [X, Y, Z], 3 per robot, protecting against
    /// contact loss under active force control. Valid range [0.005, 2.0]. Empty means 1.0. [m/s]
    /// @details Original flexiv_msgs/srv/SetForceControlAxis_Request.max_linear_vel; native type float64.
    /// At most 32 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
    /// complete value and acquires no ROS resource.
    pub max_linear_vel: Vec<f64>,
}
impl Default for Ros2Flexiv_msgsSrvSetForceControlAxis_Request {
    fn default() -> Self {
        Self {
            enabled_axes: Default::default(),
            max_linear_vel: Default::default(),
        }
    }
}
impl Ros2Flexiv_msgsSrvSetForceControlAxis_Request {
    pub const MAX_WIRE_BYTES: usize = 296;
    pub const CARTESIAN_WIRE_BYTES: u64 = 296;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_f068f06ad10e40bd50d06800f4178636c89547f5302af856a00d49757b54fef0";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.enabled_axes.len() > 32 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.enabled_axes {
            n = add_size(n, 1)?;
        }
        if self.max_linear_vel.len() > 32 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.max_linear_vel {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if n > 296 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.enabled_axes.len() as u32).to_le_bytes());
        for element in &self.enabled_axes {
            put(out, at, &[u8::from(*element)]);
        }
        put(out, at, &(self.max_linear_vel.len() as u32).to_le_bytes());
        for element in &self.max_linear_vel {
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
            value.enabled_axes = Vec::with_capacity(count);
            for i in 0..count {
                let byte = take(bytes, at, 1)?[0];
                if byte > 1 {
                    return Err(invalid());
                }
                let decoded = byte != 0;
                value.enabled_axes.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 32 {
                return Err(invalid());
            }
            value.max_linear_vel = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.max_linear_vel.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Flexiv_msgsSrvSetForceControlAxis_Request {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 296 {
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
/// Complete bounded value for ROS2 flexiv_msgs/srv/SetForceControlAxis_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Flexiv_msgsSrvSetForceControlAxis_Response {
    /// @brief Retain the complete original bool field.
    /// @details Original flexiv_msgs/srv/SetForceControlAxis_Response.success; native type bool. Scalar
    /// value. Storage belongs to the complete value and acquires no ROS resource.
    pub success: bool,
    /// @brief Operator-facing explanation of the outcome
    /// @details Original flexiv_msgs/srv/SetForceControlAxis_Response.message; native type string. Scalar
    /// value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
    /// no ROS resource.
    pub message: String,
}
impl Default for Ros2Flexiv_msgsSrvSetForceControlAxis_Response {
    fn default() -> Self {
        Self {
            success: Default::default(),
            message: Default::default(),
        }
    }
}
impl Ros2Flexiv_msgsSrvSetForceControlAxis_Response {
    pub const MAX_WIRE_BYTES: usize = 261;
    pub const CARTESIAN_WIRE_BYTES: u64 = 261;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_26f01b6e3ddb369b49f0a6521104992e654ea628d864c0883b9ccc584234963b";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if self.message.len() > 256 || self.message.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.message.len())?;
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
        if size > 256 {
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
impl Canonical for Ros2Flexiv_msgsSrvSetForceControlAxis_Response {
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
/// Complete bounded value for ROS2 flexiv_msgs/srv/SetForceControlFrame_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Flexiv_msgsSrvSetForceControlFrame_Request {
    /// @brief Root coordinate of t_in_root, 1 per robot. WORLD is fixed, TCP moves with the end effector.
    /// @details Original flexiv_msgs/srv/SetForceControlFrame_Request.root_coord; native type uint8. At
    /// most 32 elements. Storage belongs to the complete value and acquires no ROS resource.
    pub root_coord: Vec<u8>,
    /// @brief Transformation from the root coordinate to the force control frame [x, y, z, qw, qx, qy, qz],
    /// 7 per robot. Empty means identity. [m]:[]
    /// @details Original flexiv_msgs/srv/SetForceControlFrame_Request.t_in_root; native type float64. At
    /// most 32 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete
    /// value and acquires no ROS resource.
    pub t_in_root: Vec<f64>,
}
impl Default for Ros2Flexiv_msgsSrvSetForceControlFrame_Request {
    fn default() -> Self {
        Self {
            root_coord: Default::default(),
            t_in_root: Default::default(),
        }
    }
}
impl Ros2Flexiv_msgsSrvSetForceControlFrame_Request {
    pub const MAX_WIRE_BYTES: usize = 296;
    pub const CARTESIAN_WIRE_BYTES: u64 = 296;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_3f061d3f029eddf256a9aa50f07767e77d5c3b2efd6ae69a2ad4a789f4692b30";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.root_coord.len() > 32 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.root_coord {
            n = add_size(n, 1)?;
        }
        if self.t_in_root.len() > 32 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.t_in_root {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if n > 296 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.root_coord.len() as u32).to_le_bytes());
        for element in &self.root_coord {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &(self.t_in_root.len() as u32).to_le_bytes());
        for element in &self.t_in_root {
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
            value.root_coord = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
                value.root_coord.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 32 {
                return Err(invalid());
            }
            value.t_in_root = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.t_in_root.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Flexiv_msgsSrvSetForceControlFrame_Request {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 296 {
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
/// Complete bounded value for ROS2 flexiv_msgs/srv/SetForceControlFrame_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Flexiv_msgsSrvSetForceControlFrame_Response {
    /// @brief Retain the complete original bool field.
    /// @details Original flexiv_msgs/srv/SetForceControlFrame_Response.success; native type bool. Scalar
    /// value. Storage belongs to the complete value and acquires no ROS resource.
    pub success: bool,
    /// @brief Operator-facing explanation of the outcome
    /// @details Original flexiv_msgs/srv/SetForceControlFrame_Response.message; native type string. Scalar
    /// value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
    /// no ROS resource.
    pub message: String,
}
impl Default for Ros2Flexiv_msgsSrvSetForceControlFrame_Response {
    fn default() -> Self {
        Self {
            success: Default::default(),
            message: Default::default(),
        }
    }
}
impl Ros2Flexiv_msgsSrvSetForceControlFrame_Response {
    pub const MAX_WIRE_BYTES: usize = 261;
    pub const CARTESIAN_WIRE_BYTES: u64 = 261;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_cfec8391d4df88d36f4e3afbb956b12b3274b3bd0a6a6284cb44d49f12a44bde";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if self.message.len() > 256 || self.message.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.message.len())?;
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
        if size > 256 {
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
impl Canonical for Ros2Flexiv_msgsSrvSetForceControlFrame_Response {
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
/// Complete bounded value for ROS2 flexiv_msgs/srv/SetJointImpedance_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Flexiv_msgsSrvSetJointImpedance_Request {
    /// @brief Set impedance properties of the robot's joint motion controller. Requires the driver to run
    /// with rdk_control_mode:=joint_impedance.  k_q must hold one entry per joint of the hardware
    /// component, in URDF order. z_q may be left empty to use the nominal damping ratio 0.7, matching the
    /// RDK argument default. An invalid request is rejected as a whole and nothing changes. Joint motion
    /// stiffness K_q, one entry per joint in URDF order. Valid range [0, k_q_nom]. Setting a joint to 0
    /// makes it free-floating, which in this position-streaming driver means the joint will sag under
    /// gravity. [Nm/rad]
    /// @details Original flexiv_msgs/srv/SetJointImpedance_Request.k_q; native type float64. At most 32
    /// elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
    /// acquires no ROS resource.
    pub k_q: Vec<f64>,
    /// @brief Joint motion damping ratio Z_q, one entry per joint in URDF order, or empty for the nominal
    /// 0.7. Valid range [0.3, 0.8]. Values away from nominal may lead to performance and stability issues.
    /// @details Original flexiv_msgs/srv/SetJointImpedance_Request.z_q; native type float64. At most 32
    /// elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
    /// acquires no ROS resource.
    pub z_q: Vec<f64>,
}
impl Default for Ros2Flexiv_msgsSrvSetJointImpedance_Request {
    fn default() -> Self {
        Self {
            k_q: Default::default(),
            z_q: Default::default(),
        }
    }
}
impl Ros2Flexiv_msgsSrvSetJointImpedance_Request {
    pub const MAX_WIRE_BYTES: usize = 520;
    pub const CARTESIAN_WIRE_BYTES: u64 = 520;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_5b1014a3a79fcd116f94142640c2c3e9c1867a2c54b9382f7165f7fda04a8584";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.k_q.len() > 32 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.k_q {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if self.z_q.len() > 32 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.z_q {
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
        put(out, at, &(self.k_q.len() as u32).to_le_bytes());
        for element in &self.k_q {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &(self.z_q.len() as u32).to_le_bytes());
        for element in &self.z_q {
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
            value.k_q = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.k_q.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 32 {
                return Err(invalid());
            }
            value.z_q = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.z_q.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Flexiv_msgsSrvSetJointImpedance_Request {
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
/// Complete bounded value for ROS2 flexiv_msgs/srv/SetJointImpedance_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Flexiv_msgsSrvSetJointImpedance_Response {
    /// @brief Retain the complete original bool field.
    /// @details Original flexiv_msgs/srv/SetJointImpedance_Response.success; native type bool. Scalar
    /// value. Storage belongs to the complete value and acquires no ROS resource.
    pub success: bool,
    /// @brief Operator-facing explanation of the outcome, naming the joint and the bound on a rejection
    /// @details Original flexiv_msgs/srv/SetJointImpedance_Response.message; native type string. Scalar
    /// value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
    /// no ROS resource.
    pub message: String,
    /// @brief The values now held by the driver, unchanged from before on a rejection
    /// @details Original flexiv_msgs/srv/SetJointImpedance_Response.setting; native type
    /// flexiv_msgs/msg/JointImpedance. Scalar value. Storage belongs to the complete value and acquires no
    /// ROS resource.
    pub setting: Ros2Flexiv_msgsMsgJointImpedance,
}
impl Default for Ros2Flexiv_msgsSrvSetJointImpedance_Response {
    fn default() -> Self {
        Self {
            success: Default::default(),
            message: Default::default(),
            setting: Default::default(),
        }
    }
}
impl Ros2Flexiv_msgsSrvSetJointImpedance_Response {
    pub const MAX_WIRE_BYTES: usize = 9634;
    pub const CARTESIAN_WIRE_BYTES: u64 = 9634;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_95a169dd0eb880ef3e71653a5e4cdf08e743db80df706e75664db582eb927f96";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if self.message.len() > 256 || self.message.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.message.len())?;
        n = add_size(n, self.setting.wire_size()?)?;
        if n > 9634 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
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
        self.setting.write_fields(out, at);
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
        value.message = decoded;
        let decoded = Ros2Flexiv_msgsMsgJointImpedance::read_fields(bytes, at)?;
        value.setting = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Flexiv_msgsSrvSetJointImpedance_Response {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 9634 {
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
/// Complete bounded value for ROS2 flexiv_msgs/srv/SetJointInertiaScale_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Flexiv_msgsSrvSetJointInertiaScale_Request {
    /// @brief Set inertia shaping scales of the robot's joint motion controller, which make the joints
    /// behave as if they were lighter. Requires the driver to run with rdk_control_mode:=joint_impedance.
    /// inertia_scales must hold one entry per joint of the hardware component, in URDF order. An invalid
    /// request is rejected as a whole and nothing changes. Inertia shaping scale sigma_q, one entry per
    /// joint in URDF order. Valid range [0.75, 1.0]. The nominal value 1.0 means no shaping; a smaller
    /// scale corresponds to lighter inertia.
    /// @details Original flexiv_msgs/srv/SetJointInertiaScale_Request.inertia_scales; native type float64.
    /// At most 32 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
    /// complete value and acquires no ROS resource.
    pub inertia_scales: Vec<f64>,
}
impl Default for Ros2Flexiv_msgsSrvSetJointInertiaScale_Request {
    fn default() -> Self {
        Self {
            inertia_scales: Default::default(),
        }
    }
}
impl Ros2Flexiv_msgsSrvSetJointInertiaScale_Request {
    pub const MAX_WIRE_BYTES: usize = 260;
    pub const CARTESIAN_WIRE_BYTES: u64 = 260;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_752da94424644200ef0e6463486a6dbc74b85c46acfaeac3b569b6248c1e2686";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.inertia_scales.len() > 32 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.inertia_scales {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if n > 260 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.inertia_scales.len() as u32).to_le_bytes());
        for element in &self.inertia_scales {
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
            value.inertia_scales = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.inertia_scales.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Flexiv_msgsSrvSetJointInertiaScale_Request {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 260 {
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
/// Complete bounded value for ROS2 flexiv_msgs/srv/SetJointInertiaScale_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Flexiv_msgsSrvSetJointInertiaScale_Response {
    /// @brief Retain the complete original bool field.
    /// @details Original flexiv_msgs/srv/SetJointInertiaScale_Response.success; native type bool. Scalar
    /// value. Storage belongs to the complete value and acquires no ROS resource.
    pub success: bool,
    /// @brief Operator-facing explanation of the outcome, naming the joint and the bound on a rejection
    /// @details Original flexiv_msgs/srv/SetJointInertiaScale_Response.message; native type string. Scalar
    /// value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
    /// no ROS resource.
    pub message: String,
    /// @brief The values now held by the driver, unchanged from before on a rejection
    /// @details Original flexiv_msgs/srv/SetJointInertiaScale_Response.setting; native type
    /// flexiv_msgs/msg/JointInertiaScale. Scalar value. Storage belongs to the complete value and acquires
    /// no ROS resource.
    pub setting: Ros2Flexiv_msgsMsgJointInertiaScale,
}
impl Default for Ros2Flexiv_msgsSrvSetJointInertiaScale_Response {
    fn default() -> Self {
        Self {
            success: Default::default(),
            message: Default::default(),
            setting: Default::default(),
        }
    }
}
impl Ros2Flexiv_msgsSrvSetJointInertiaScale_Response {
    pub const MAX_WIRE_BYTES: usize = 9114;
    pub const CARTESIAN_WIRE_BYTES: u64 = 9114;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_2b7d36ecdc70ec1a450a03d412cfd431e735fc3aa601f321007afabe00f51931";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if self.message.len() > 256 || self.message.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.message.len())?;
        n = add_size(n, self.setting.wire_size()?)?;
        if n > 9114 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
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
        self.setting.write_fields(out, at);
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
        value.message = decoded;
        let decoded = Ros2Flexiv_msgsMsgJointInertiaScale::read_fields(bytes, at)?;
        value.setting = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Flexiv_msgsSrvSetJointInertiaScale_Response {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 9114 {
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
/// Complete bounded value for ROS2 flexiv_msgs/srv/SetMaxContactTorque_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Flexiv_msgsSrvSetMaxContactTorque_Request {
    /// @brief Set maximum contact torques of the robot's joint motion controller. The controller regulates
    /// its output to keep contact torques with the environment under these values. Requires the driver to
    /// run with rdk_control_mode:=joint_impedance.  max_contact_torques must hold one entry per joint of
    /// the hardware component, in URDF order. An invalid request is rejected as a whole and nothing
    /// changes. Maximum contact torque, one entry per joint in URDF order. Valid range [0, tau_max].
    /// Raising this increases the force the robot may exert on its surroundings. [Nm]
    /// @details Original flexiv_msgs/srv/SetMaxContactTorque_Request.max_contact_torques; native type
    /// float64. At most 32 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to
    /// the complete value and acquires no ROS resource.
    pub max_contact_torques: Vec<f64>,
}
impl Default for Ros2Flexiv_msgsSrvSetMaxContactTorque_Request {
    fn default() -> Self {
        Self {
            max_contact_torques: Default::default(),
        }
    }
}
impl Ros2Flexiv_msgsSrvSetMaxContactTorque_Request {
    pub const MAX_WIRE_BYTES: usize = 260;
    pub const CARTESIAN_WIRE_BYTES: u64 = 260;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_8850403204dc91a11797a767dde6999163008f41ad5c89360d852d037806fb43";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.max_contact_torques.len() > 32 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.max_contact_torques {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if n > 260 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
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
            &(self.max_contact_torques.len() as u32).to_le_bytes(),
        );
        for element in &self.max_contact_torques {
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
            value.max_contact_torques = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.max_contact_torques.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Flexiv_msgsSrvSetMaxContactTorque_Request {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 260 {
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
/// Complete bounded value for ROS2 flexiv_msgs/srv/SetMaxContactTorque_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Flexiv_msgsSrvSetMaxContactTorque_Response {
    /// @brief Retain the complete original bool field.
    /// @details Original flexiv_msgs/srv/SetMaxContactTorque_Response.success; native type bool. Scalar
    /// value. Storage belongs to the complete value and acquires no ROS resource.
    pub success: bool,
    /// @brief Operator-facing explanation of the outcome, naming the joint and the bound on a rejection
    /// @details Original flexiv_msgs/srv/SetMaxContactTorque_Response.message; native type string. Scalar
    /// value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
    /// no ROS resource.
    pub message: String,
    /// @brief The values now held by the driver, unchanged from before on a rejection
    /// @details Original flexiv_msgs/srv/SetMaxContactTorque_Response.setting; native type
    /// flexiv_msgs/msg/MaxContactTorque. Scalar value. Storage belongs to the complete value and acquires
    /// no ROS resource.
    pub setting: Ros2Flexiv_msgsMsgMaxContactTorque,
}
impl Default for Ros2Flexiv_msgsSrvSetMaxContactTorque_Response {
    fn default() -> Self {
        Self {
            success: Default::default(),
            message: Default::default(),
            setting: Default::default(),
        }
    }
}
impl Ros2Flexiv_msgsSrvSetMaxContactTorque_Response {
    pub const MAX_WIRE_BYTES: usize = 9374;
    pub const CARTESIAN_WIRE_BYTES: u64 = 9374;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_602bd439ab984dd9d7f64786005dd4f5763d245121a09833f75cee914e9dd43c";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if self.message.len() > 256 || self.message.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.message.len())?;
        n = add_size(n, self.setting.wire_size()?)?;
        if n > 9374 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
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
        self.setting.write_fields(out, at);
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
        value.message = decoded;
        let decoded = Ros2Flexiv_msgsMsgMaxContactTorque::read_fields(bytes, at)?;
        value.setting = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Flexiv_msgsSrvSetMaxContactTorque_Response {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 9374 {
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
/// Complete bounded value for ROS2 flexiv_msgs/srv/SetMaxContactWrench_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Flexiv_msgsSrvSetMaxContactWrench_Request {
    /// @brief Set the maximum contact wrench for the motion-controlled axes of the Cartesian motion-force
    /// control mode. For a robot pair, the array holds the left robot's values first.  An invalid request
    /// is rejected as a whole and nothing changes. Maximum contact wrench [f_x, f_y, f_z, m_x, m_y, m_z], 6
    /// per robot. Must not be negative. Use infinity to disable the regulation. [N]:[Nm]
    /// @details Original flexiv_msgs/srv/SetMaxContactWrench_Request.max_wrench; native type float64. At
    /// most 32 elements. Finite IEEE values and the original positive-infinity sentinel; reject
    /// NaN/negative infinity. Storage belongs to the complete value and acquires no ROS resource.
    pub max_wrench: Vec<f64>,
}
impl Default for Ros2Flexiv_msgsSrvSetMaxContactWrench_Request {
    fn default() -> Self {
        Self {
            max_wrench: Default::default(),
        }
    }
}
impl Ros2Flexiv_msgsSrvSetMaxContactWrench_Request {
    pub const MAX_WIRE_BYTES: usize = 260;
    pub const CARTESIAN_WIRE_BYTES: u64 = 260;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_5a943fdeba115cb68b38d0a1d98e9247331419b4ec89ad0870387251fd5d9467";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.max_wrench.len() > 32 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.max_wrench {
            if (!element.is_finite() && element != f64::INFINITY) {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if n > 260 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.max_wrench.len() as u32).to_le_bytes());
        for element in &self.max_wrench {
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
            value.max_wrench = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if (!decoded.is_finite() && decoded != f64::INFINITY) {
                    return Err(invalid());
                }
                value.max_wrench.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Flexiv_msgsSrvSetMaxContactWrench_Request {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 260 {
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
/// Complete bounded value for ROS2 flexiv_msgs/srv/SetMaxContactWrench_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Flexiv_msgsSrvSetMaxContactWrench_Response {
    /// @brief Retain the complete original bool field.
    /// @details Original flexiv_msgs/srv/SetMaxContactWrench_Response.success; native type bool. Scalar
    /// value. Storage belongs to the complete value and acquires no ROS resource.
    pub success: bool,
    /// @brief Operator-facing explanation of the outcome
    /// @details Original flexiv_msgs/srv/SetMaxContactWrench_Response.message; native type string. Scalar
    /// value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
    /// no ROS resource.
    pub message: String,
}
impl Default for Ros2Flexiv_msgsSrvSetMaxContactWrench_Response {
    fn default() -> Self {
        Self {
            success: Default::default(),
            message: Default::default(),
        }
    }
}
impl Ros2Flexiv_msgsSrvSetMaxContactWrench_Response {
    pub const MAX_WIRE_BYTES: usize = 261;
    pub const CARTESIAN_WIRE_BYTES: u64 = 261;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_6a39df3ba6eacc0a230a8f039f16f03574d76818fb53e9445c29f175c2e1420e";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if self.message.len() > 256 || self.message.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.message.len())?;
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
        if size > 256 {
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
impl Canonical for Ros2Flexiv_msgsSrvSetMaxContactWrench_Response {
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
/// Complete bounded value for ROS2 flexiv_msgs/srv/SetNullSpaceObjectives_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Flexiv_msgsSrvSetNullSpaceObjectives_Request {
    /// @brief Set the weights of the three optimization objectives of the null-space posture control, used
    /// in the Cartesian motion-force control mode. Each array holds one entry per robot, left first.  An
    /// invalid request is rejected as a whole and nothing changes. Weight of translational manipulability.
    /// Valid range [0.0, 1.0]. RDK default 0.0.
    /// @details Original flexiv_msgs/srv/SetNullSpaceObjectives_Request.linear_manipulability; native type
    /// float64. At most 32 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to
    /// the complete value and acquires no ROS resource.
    pub linear_manipulability: Vec<f64>,
    /// @brief Weight of rotational manipulability. Valid range [0.0, 1.0]. RDK default 0.0.
    /// @details Original flexiv_msgs/srv/SetNullSpaceObjectives_Request.angular_manipulability; native type
    /// float64. At most 32 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to
    /// the complete value and acquires no ROS resource.
    pub angular_manipulability: Vec<f64>,
    /// @brief Weight of tracking the null-space posture reference. Valid range [0.1, 1.0]. RDK default 0.5.
    /// @details Original flexiv_msgs/srv/SetNullSpaceObjectives_Request.ref_positions_tracking; native type
    /// float64. At most 32 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to
    /// the complete value and acquires no ROS resource.
    pub ref_positions_tracking: Vec<f64>,
}
impl Default for Ros2Flexiv_msgsSrvSetNullSpaceObjectives_Request {
    fn default() -> Self {
        Self {
            linear_manipulability: Default::default(),
            angular_manipulability: Default::default(),
            ref_positions_tracking: Default::default(),
        }
    }
}
impl Ros2Flexiv_msgsSrvSetNullSpaceObjectives_Request {
    pub const MAX_WIRE_BYTES: usize = 780;
    pub const CARTESIAN_WIRE_BYTES: u64 = 780;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_01cb5842d8e2eca55e63f74f7f2c973038bc354a5c0ef2552d4f6e82e382bc27";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.linear_manipulability.len() > 32 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.linear_manipulability {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if self.angular_manipulability.len() > 32 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.angular_manipulability {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if self.ref_positions_tracking.len() > 32 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.ref_positions_tracking {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if n > 780 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
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
            &(self.linear_manipulability.len() as u32).to_le_bytes(),
        );
        for element in &self.linear_manipulability {
            put(out, at, &element.to_le_bytes());
        }
        put(
            out,
            at,
            &(self.angular_manipulability.len() as u32).to_le_bytes(),
        );
        for element in &self.angular_manipulability {
            put(out, at, &element.to_le_bytes());
        }
        put(
            out,
            at,
            &(self.ref_positions_tracking.len() as u32).to_le_bytes(),
        );
        for element in &self.ref_positions_tracking {
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
            value.linear_manipulability = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.linear_manipulability.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 32 {
                return Err(invalid());
            }
            value.angular_manipulability = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.angular_manipulability.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 32 {
                return Err(invalid());
            }
            value.ref_positions_tracking = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.ref_positions_tracking.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Flexiv_msgsSrvSetNullSpaceObjectives_Request {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 780 {
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
/// Complete bounded value for ROS2 flexiv_msgs/srv/SetNullSpaceObjectives_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Flexiv_msgsSrvSetNullSpaceObjectives_Response {
    /// @brief Retain the complete original bool field.
    /// @details Original flexiv_msgs/srv/SetNullSpaceObjectives_Response.success; native type bool. Scalar
    /// value. Storage belongs to the complete value and acquires no ROS resource.
    pub success: bool,
    /// @brief Operator-facing explanation of the outcome
    /// @details Original flexiv_msgs/srv/SetNullSpaceObjectives_Response.message; native type string.
    /// Scalar value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
    /// acquires no ROS resource.
    pub message: String,
}
impl Default for Ros2Flexiv_msgsSrvSetNullSpaceObjectives_Response {
    fn default() -> Self {
        Self {
            success: Default::default(),
            message: Default::default(),
        }
    }
}
impl Ros2Flexiv_msgsSrvSetNullSpaceObjectives_Response {
    pub const MAX_WIRE_BYTES: usize = 261;
    pub const CARTESIAN_WIRE_BYTES: u64 = 261;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_70fb3c7a3a0a6b46347624a273b6e7180ad1610ca09a5c672b5ad7a976b79298";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if self.message.len() > 256 || self.message.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.message.len())?;
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
        if size > 256 {
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
impl Canonical for Ros2Flexiv_msgsSrvSetNullSpaceObjectives_Response {
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
/// Complete bounded value for ROS2 flexiv_msgs/srv/SetNullSpacePosture_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Flexiv_msgsSrvSetNullSpacePosture_Request {
    /// @brief Set the reference joint positions of the null-space posture control, used in the Cartesian
    /// motion-force control mode.  An invalid request is rejected as a whole and nothing changes. Reference
    /// joint positions, one entry per joint of the hardware component in URDF order. Valid range [q_min,
    /// q_max]. [rad]
    /// @details Original flexiv_msgs/srv/SetNullSpacePosture_Request.ref_positions; native type float64. At
    /// most 32 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete
    /// value and acquires no ROS resource.
    pub ref_positions: Vec<f64>,
}
impl Default for Ros2Flexiv_msgsSrvSetNullSpacePosture_Request {
    fn default() -> Self {
        Self {
            ref_positions: Default::default(),
        }
    }
}
impl Ros2Flexiv_msgsSrvSetNullSpacePosture_Request {
    pub const MAX_WIRE_BYTES: usize = 260;
    pub const CARTESIAN_WIRE_BYTES: u64 = 260;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_0fb02e69195688307d15cc7f8b6f7a95f400d4083cc8c363e29071fee844b92d";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.ref_positions.len() > 32 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.ref_positions {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if n > 260 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.ref_positions.len() as u32).to_le_bytes());
        for element in &self.ref_positions {
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
            value.ref_positions = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.ref_positions.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Flexiv_msgsSrvSetNullSpacePosture_Request {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 260 {
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
/// Complete bounded value for ROS2 flexiv_msgs/srv/SetNullSpacePosture_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Flexiv_msgsSrvSetNullSpacePosture_Response {
    /// @brief Retain the complete original bool field.
    /// @details Original flexiv_msgs/srv/SetNullSpacePosture_Response.success; native type bool. Scalar
    /// value. Storage belongs to the complete value and acquires no ROS resource.
    pub success: bool,
    /// @brief Operator-facing explanation of the outcome
    /// @details Original flexiv_msgs/srv/SetNullSpacePosture_Response.message; native type string. Scalar
    /// value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
    /// no ROS resource.
    pub message: String,
}
impl Default for Ros2Flexiv_msgsSrvSetNullSpacePosture_Response {
    fn default() -> Self {
        Self {
            success: Default::default(),
            message: Default::default(),
        }
    }
}
impl Ros2Flexiv_msgsSrvSetNullSpacePosture_Response {
    pub const MAX_WIRE_BYTES: usize = 261;
    pub const CARTESIAN_WIRE_BYTES: u64 = 261;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_913c995a461fa70cd62293c1932d738a4a8b799c4ebd13a1a8afdaa8acef4293";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if self.message.len() > 256 || self.message.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.message.len())?;
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
        if size > 256 {
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
impl Canonical for Ros2Flexiv_msgsSrvSetNullSpacePosture_Response {
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
/// Complete bounded value for ROS2 flexiv_msgs/srv/SetPassiveForceControl_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Flexiv_msgsSrvSetPassiveForceControl_Request {
    /// @brief Enable or disable passive (open-loop) force control for the Cartesian motion-force control
    /// mode. Active (closed-loop) force control is the default. Only accepted while the robot is idle, i.e.
    /// before the Cartesian motion-force controller is started, and disabled again when it stops. One entry
    /// per robot, left first
    /// @details Original flexiv_msgs/srv/SetPassiveForceControl_Request.enabled; native type bool. At most
    /// 32 elements. Storage belongs to the complete value and acquires no ROS resource.
    pub enabled: Vec<bool>,
}
impl Default for Ros2Flexiv_msgsSrvSetPassiveForceControl_Request {
    fn default() -> Self {
        Self {
            enabled: Default::default(),
        }
    }
}
impl Ros2Flexiv_msgsSrvSetPassiveForceControl_Request {
    pub const MAX_WIRE_BYTES: usize = 36;
    pub const CARTESIAN_WIRE_BYTES: u64 = 36;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_603cd39ccf8c37d944afe9108085fe3ba72881d772e42f24f87ec380f3770d16";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.enabled.len() > 32 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.enabled {
            n = add_size(n, 1)?;
        }
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
        put(out, at, &(self.enabled.len() as u32).to_le_bytes());
        for element in &self.enabled {
            put(out, at, &[u8::from(*element)]);
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = read_count(bytes, at)?;
            if count > 32 {
                return Err(invalid());
            }
            value.enabled = Vec::with_capacity(count);
            for i in 0..count {
                let byte = take(bytes, at, 1)?[0];
                if byte > 1 {
                    return Err(invalid());
                }
                let decoded = byte != 0;
                value.enabled.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Flexiv_msgsSrvSetPassiveForceControl_Request {
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
/// Complete bounded value for ROS2 flexiv_msgs/srv/SetPassiveForceControl_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Flexiv_msgsSrvSetPassiveForceControl_Response {
    /// @brief Retain the complete original bool field.
    /// @details Original flexiv_msgs/srv/SetPassiveForceControl_Response.success; native type bool. Scalar
    /// value. Storage belongs to the complete value and acquires no ROS resource.
    pub success: bool,
    /// @brief Operator-facing explanation of the outcome
    /// @details Original flexiv_msgs/srv/SetPassiveForceControl_Response.message; native type string.
    /// Scalar value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
    /// acquires no ROS resource.
    pub message: String,
}
impl Default for Ros2Flexiv_msgsSrvSetPassiveForceControl_Response {
    fn default() -> Self {
        Self {
            success: Default::default(),
            message: Default::default(),
        }
    }
}
impl Ros2Flexiv_msgsSrvSetPassiveForceControl_Response {
    pub const MAX_WIRE_BYTES: usize = 261;
    pub const CARTESIAN_WIRE_BYTES: u64 = 261;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_73fe92bbcf47063293bde2f3542c719111f0bd82aaa6b500f15122c6aa1e7d35";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if self.message.len() > 256 || self.message.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.message.len())?;
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
        if size > 256 {
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
impl Canonical for Ros2Flexiv_msgsSrvSetPassiveForceControl_Response {
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

impl Ros2Flexiv_msgsActionErrorRecovery_Feedback {
    pub const STATE_IDLE: u8 = 0;
    pub const STATE_CLASSIFY: u8 = 1;
    pub const STATE_STOP: u8 = 2;
    pub const STATE_CLEAR_FAULT: u8 = 3;
    pub const STATE_WAIT_FAULT_CLEARED: u8 = 4;
    pub const STATE_ENABLE: u8 = 5;
    pub const STATE_WAIT_OPERATIONAL: u8 = 6;
    pub const STATE_UNLOCK_EXTERNAL_AXES: u8 = 7;
    pub const STATE_RUN_AUTO_RECOVERY: u8 = 8;
    pub const STATE_COMPLETE: u8 = 9;
    pub const STATE_FAILED: u8 = 10;
}

impl Ros2Flexiv_msgsMsgMode {
    pub const MODE_UNKNOWN: i8 = 0;
    pub const MODE_IDLE: i8 = 1;
    pub const MODE_RT_JOINT_TORQUE: i8 = 2;
    pub const MODE_RT_JOINT_IMPEDANCE: i8 = 3;
    pub const MODE_NRT_JOINT_IMPEDANCE: i8 = 4;
    pub const MODE_RT_JOINT_POSITION: i8 = 5;
    pub const MODE_NRT_JOINT_POSITION: i8 = 6;
    pub const MODE_NRT_PLAN_EXECUTION: i8 = 7;
    pub const MODE_NRT_PRIMITIVE_EXECUTION: i8 = 8;
    pub const MODE_RT_CARTESIAN_MOTION_FORCE: i8 = 9;
    pub const MODE_NRT_CARTESIAN_MOTION_FORCE: i8 = 10;
    pub const MODE_NRT_SUPER_PRIMITIVE: i8 = 11;
}

impl Ros2Flexiv_msgsMsgRobotEvent {
    pub const LEVEL_UNKNOWN: u8 = 0;
    pub const LEVEL_INFO: u8 = 1;
    pub const LEVEL_WARNING: u8 = 2;
    pub const LEVEL_ERROR: u8 = 3;
    pub const LEVEL_CRITICAL: u8 = 4;
}

impl Ros2Flexiv_msgsMsgOperationalStatus {
    pub const STATUS_UNKNOWN: u8 = 0;
    pub const STATUS_READY: u8 = 1;
    pub const STATUS_BOOTING: u8 = 2;
    pub const STATUS_ESTOP_NOT_RELEASED: u8 = 3;
    pub const STATUS_NOT_ENABLED: u8 = 4;
    pub const STATUS_RELEASING_BRAKE: u8 = 5;
    pub const STATUS_MINOR_FAULT: u8 = 6;
    pub const STATUS_CRITICAL_FAULT: u8 = 7;
    pub const STATUS_IN_REDUCED_STATE: u8 = 8;
    pub const STATUS_IN_RECOVERY_STATE: u8 = 9;
    pub const STATUS_IN_MANUAL_MODE: u8 = 10;
    pub const STATUS_IN_AUTO_MODE: u8 = 11;
    pub const DRIVER_UNINITIALIZED: u8 = 0;
    pub const DRIVER_READY: u8 = 1;
    pub const DRIVER_FAULT: u8 = 2;
    pub const DRIVER_RECOVERING: u8 = 3;
    pub const DRIVER_LOCKOUT: u8 = 4;
    pub const DRIVER_DISCONNECTED: u8 = 5;
}

impl Ros2Flexiv_msgsMsgRecoveryPolicy {
    pub const NONE: u8 = 0;
    pub const TRANSIENT: u8 = 1;
    pub const AUTO_RECOVERABLE: u8 = 2;
    pub const WAIT_OPERATOR: u8 = 3;
    pub const SAFETY_LOCKOUT: u8 = 4;
    pub const CONNECTION_LOST: u8 = 5;
}

impl Ros2Flexiv_msgsSrvSetForceControlFrame_Request {
    pub const WORLD: u8 = 0;
    pub const TCP: u8 = 1;
}
