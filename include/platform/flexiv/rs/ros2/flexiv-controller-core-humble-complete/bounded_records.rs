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
/// Complete bounded value for ROS2 builtin_interfaces/msg/Duration.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Builtin_interfacesMsgDuration {
    /// @brief Duration defines a period between two time points. Messages of this datatype are of ROS Time
    /// following this design: https://design.ros2.org/articles/clock_and_time.html The seconds component,
    /// valid over all int32 values.
    /// @details Original builtin_interfaces/msg/Duration.sec; native type int32. Scalar value. Storage
    /// belongs to the complete value and acquires no ROS resource.
    pub sec: i32,
    /// @brief The nanoseconds component, valid in the range [0, 1e9), to be added to the seconds component.
    /// e.g. The duration -1.7 seconds is represented as {sec: -2, nanosec: 3e8} The duration 1.7 seconds is
    /// represented as {sec: 1, nanosec: 7e8}
    /// @details Original builtin_interfaces/msg/Duration.nanosec; native type uint32. Scalar value. Storage
    /// belongs to the complete value and acquires no ROS resource.
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
/// Complete bounded value for ROS2 sensor_msgs/msg/JointState.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Sensor_msgsMsgJointState {
    /// @brief This is a message that holds data to describe the state of a set of torque controlled joints.
    /// The state of each joint (revolute or prismatic) is defined by: * the position of the joint (rad or
    /// m), * the velocity of the joint (rad/s or m/s) and * the effort that is applied in the joint (Nm or
    /// N).  Each joint is uniquely identified by its name The header specifies the time at which the joint
    /// states were recorded. All the joint states in one message have to be recorded at the same time.
    /// This message consists of a multiple arrays, one for each part of the joint state. The goal is to
    /// make each of the fields optional. When e.g. your joints have no effort associated with them, you can
    /// leave the effort array empty.  All arrays in this message should have the same size, or be empty.
    /// This is the only way to uniquely associate the joint name with the correct states.
    /// @details Original sensor_msgs/msg/JointState.header; native type std_msgs/msg/Header. Scalar value.
    /// Storage belongs to the complete value and acquires no ROS resource.
    pub header: Ros2Std_msgsMsgHeader,
    /// @brief Retain the complete original string field.
    /// @details Original sensor_msgs/msg/JointState.name; native type string. At most 32 elements. UTF-8
    /// capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
    /// resource.
    pub name: Vec<String>,
    /// @brief Retain the complete original float64 field.
    /// @details Original sensor_msgs/msg/JointState.position; native type float64. At most 32 elements.
    /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
    /// no ROS resource.
    pub position: Vec<f64>,
    /// @brief Retain the complete original float64 field.
    /// @details Original sensor_msgs/msg/JointState.velocity; native type float64. At most 32 elements.
    /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
    /// no ROS resource.
    pub velocity: Vec<f64>,
    /// @brief Retain the complete original float64 field.
    /// @details Original sensor_msgs/msg/JointState.effort; native type float64. At most 32 elements.
    /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
    /// no ROS resource.
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
    pub const MAX_WIRE_BYTES: usize = 9372;
    pub const CARTESIAN_WIRE_BYTES: u64 = 9372;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_3faa9cdc746cb2cf7ac581bb2b0b6e32e2c6601d72043c7893249142730d8556";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.header.wire_size()?)?;
        if self.name.len() > 32 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.name {
            if element.len() > 256 || element.as_bytes().contains(&0) {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
            n = add_size(n, element.len())?;
        }
        if self.position.len() > 32 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.position {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if self.velocity.len() > 32 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.velocity {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if self.effort.len() > 32 {
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
        if n > 9372 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
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
            if count > 32 {
                return Err(invalid());
            }
            value.name = Vec::with_capacity(count);
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
                value.name.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 32 {
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
            if count > 32 {
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
            if count > 32 {
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
        if bytes.len() > 9372 {
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
/// Complete bounded value for ROS2 trajectory_msgs/msg/JointTrajectoryPoint.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Trajectory_msgsMsgJointTrajectoryPoint {
    /// @brief Each trajectory point specifies either positions[, velocities[, accelerations]] or
    /// positions[, effort] for the trajectory to be executed. All specified values are in the same order as
    /// the joint names in JointTrajectory.msg. Single DOF joint positions for each joint relative to their
    /// "0" position. The units depend on the specific joint type: radians for revolute or continuous
    /// joints, and meters for prismatic joints.
    /// @details Original trajectory_msgs/msg/JointTrajectoryPoint.positions; native type float64. At most
    /// 32 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value
    /// and acquires no ROS resource.
    pub positions: Vec<f64>,
    /// @brief The rate of change in position of each joint. Units are joint type dependent. Radians/second
    /// for revolute or continuous joints, and meters/second for prismatic joints.
    /// @details Original trajectory_msgs/msg/JointTrajectoryPoint.velocities; native type float64. At most
    /// 32 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value
    /// and acquires no ROS resource.
    pub velocities: Vec<f64>,
    /// @brief Rate of change in velocity of each joint. Units are joint type dependent. Radians/second^2
    /// for revolute or continuous joints, and meters/second^2 for prismatic joints.
    /// @details Original trajectory_msgs/msg/JointTrajectoryPoint.accelerations; native type float64. At
    /// most 32 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete
    /// value and acquires no ROS resource.
    pub accelerations: Vec<f64>,
    /// @brief The torque or the force to be applied at each joint. For revolute/continuous joints effort
    /// denotes a torque in newton-meters. For prismatic joints, effort denotes a force in newtons.
    /// @details Original trajectory_msgs/msg/JointTrajectoryPoint.effort; native type float64. At most 32
    /// elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
    /// acquires no ROS resource.
    pub effort: Vec<f64>,
    /// @brief Desired time from the trajectory start to arrive at this trajectory point.
    /// @details Original trajectory_msgs/msg/JointTrajectoryPoint.time_from_start; native type
    /// builtin_interfaces/msg/Duration. Scalar value. Storage belongs to the complete value and acquires no
    /// ROS resource.
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
    pub const MAX_WIRE_BYTES: usize = 1048;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1048;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_8320f791cea3b2edbbe7b78c9a3750708fb0284ae6a322058921c8c105f7130c";
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
        if self.accelerations.len() > 32 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.accelerations {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if self.effort.len() > 32 {
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
        if n > 1048 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
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
        {
            let count = read_count(bytes, at)?;
            if count > 32 {
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
            if count > 32 {
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
        if bytes.len() > 1048 {
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
    /// @brief The header is used to specify the coordinate frame and the reference time for the trajectory
    /// durations
    /// @details Original trajectory_msgs/msg/JointTrajectory.header; native type std_msgs/msg/Header.
    /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
    pub header: Ros2Std_msgsMsgHeader,
    /// @brief The names of the active joints in each trajectory point. These names are ordered and must
    /// correspond to the values in each trajectory point.
    /// @details Original trajectory_msgs/msg/JointTrajectory.joint_names; native type string. At most 32
    /// elements. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
    /// acquires no ROS resource.
    pub joint_names: Vec<String>,
    /// @brief Array of trajectory points, which describe the positions, velocities, accelerations and/or
    /// efforts of the joints at each time point.
    /// @details Original trajectory_msgs/msg/JointTrajectory.points; native type
    /// trajectory_msgs/msg/JointTrajectoryPoint. At most 8 elements. Storage belongs to the complete value
    /// and acquires no ROS resource.
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
    pub const MAX_WIRE_BYTES: usize = 16980;
    pub const CARTESIAN_WIRE_BYTES: u64 = 16980;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_0b691c3ed52f8cc3bf5e4c5a7cec1d82a15d08b7d2575bd30b34c49e37877af4";
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
        if self.points.len() > 8 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.points {
            n = add_size(n, element.wire_size()?)?;
        }
        if n > 16980 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
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
            if count > 8 {
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
        if bytes.len() > 16980 {
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
/// Complete bounded value for ROS2 std_msgs/msg/MultiArrayDimension.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Std_msgsMsgMultiArrayDimension {
    /// @brief This was originally provided as an example message. It is deprecated as of Foxy It is
    /// recommended to create your own semantically meaningful message. However if you would like to
    /// continue using this please use the equivalent in example_msgs. label of given dimension
    /// @details Original std_msgs/msg/MultiArrayDimension.label; native type string. Scalar value. UTF-8
    /// capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
    /// resource.
    pub label: String,
    /// @brief size of given dimension (in type units)
    /// @details Original std_msgs/msg/MultiArrayDimension.size; native type uint32. Scalar value. Storage
    /// belongs to the complete value and acquires no ROS resource.
    pub size: u32,
    /// @brief stride of given dimension
    /// @details Original std_msgs/msg/MultiArrayDimension.stride; native type uint32. Scalar value. Storage
    /// belongs to the complete value and acquires no ROS resource.
    pub stride: u32,
}
impl Default for Ros2Std_msgsMsgMultiArrayDimension {
    fn default() -> Self {
        Self {
            label: Default::default(),
            size: Default::default(),
            stride: Default::default(),
        }
    }
}
impl Ros2Std_msgsMsgMultiArrayDimension {
    pub const MAX_WIRE_BYTES: usize = 268;
    pub const CARTESIAN_WIRE_BYTES: u64 = 268;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_95110a90e1600af2696a69f4dec6bfde2afe315bfd453bda2e1c84f5984ae80d";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.label.len() > 256 || self.label.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.label.len())?;
        n = add_size(n, 4)?;
        n = add_size(n, 4)?;
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
        put(out, at, &(self.label.len() as u32).to_le_bytes());
        put(out, at, self.label.as_bytes());
        put(out, at, &self.size.to_le_bytes());
        put(out, at, &self.stride.to_le_bytes());
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
        value.label = decoded;
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.size = decoded;
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.stride = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Std_msgsMsgMultiArrayDimension {
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
/// Complete bounded value for ROS2 std_msgs/msg/MultiArrayLayout.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Std_msgsMsgMultiArrayLayout {
    /// @brief This was originally provided as an example message. It is deprecated as of Foxy It is
    /// recommended to create your own semantically meaningful message. However if you would like to
    /// continue using this please use the equivalent in example_msgs. The multiarray declares a generic
    /// multi-dimensional array of a particular data type.  Dimensions are ordered from outer most to inner
    /// most.  Accessors should ALWAYS be written in terms of dimension stride and specified outer-most
    /// dimension first.  multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]  A
    /// standard, 3-channel 640x480 image with interleaved color channels would be specified as:
    /// dim[0].label  = "height" dim[0].size   = 480 dim[0].stride = 3*640*480 = 921600  (note dim[0] stride
    /// is just size of image) dim[1].label  = "width" dim[1].size   = 640 dim[1].stride = 3*640 = 1920
    /// dim[2].label  = "channel" dim[2].size   = 3 dim[2].stride = 3  multiarray(i,j,k) refers to the ith
    /// row, jth column, and kth channel. Array of dimension properties
    /// @details Original std_msgs/msg/MultiArrayLayout.dim; native type std_msgs/msg/MultiArrayDimension.
    /// At most 8 elements. Storage belongs to the complete value and acquires no ROS resource.
    pub dim: Vec<Ros2Std_msgsMsgMultiArrayDimension>,
    /// @brief padding bytes at front of data
    /// @details Original std_msgs/msg/MultiArrayLayout.data_offset; native type uint32. Scalar value.
    /// Storage belongs to the complete value and acquires no ROS resource.
    pub data_offset: u32,
}
impl Default for Ros2Std_msgsMsgMultiArrayLayout {
    fn default() -> Self {
        Self {
            dim: Default::default(),
            data_offset: Default::default(),
        }
    }
}
impl Ros2Std_msgsMsgMultiArrayLayout {
    pub const MAX_WIRE_BYTES: usize = 2152;
    pub const CARTESIAN_WIRE_BYTES: u64 = 2152;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_1e1ea54500602a3813c1cc3b5db7dfd9a7dd9260a3d5af43e8495f6b48e32f40";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.dim.len() > 8 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.dim {
            n = add_size(n, element.wire_size()?)?;
        }
        n = add_size(n, 4)?;
        if n > 2152 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
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
        put(out, at, &(self.dim.len() as u32).to_le_bytes());
        for element in &self.dim {
            element.write_fields(out, at);
        }
        put(out, at, &self.data_offset.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = read_count(bytes, at)?;
            if count > 8 {
                return Err(invalid());
            }
            value.dim = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros2Std_msgsMsgMultiArrayDimension::read_fields(bytes, at)?;
                value.dim.push(decoded);
            }
        }
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.data_offset = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Std_msgsMsgMultiArrayLayout {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 2152 {
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
/// Complete bounded value for ROS2 std_msgs/msg/Float64MultiArray.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Std_msgsMsgFloat64MultiArray {
    /// @brief This was originally provided as an example message. It is deprecated as of Foxy It is
    /// recommended to create your own semantically meaningful message. However if you would like to
    /// continue using this please use the equivalent in example_msgs. Please look at the MultiArrayLayout
    /// message definition for documentation on all multiarrays. specification of data layout
    /// @details Original std_msgs/msg/Float64MultiArray.layout; native type std_msgs/msg/MultiArrayLayout.
    /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
    pub layout: Ros2Std_msgsMsgMultiArrayLayout,
    /// @brief array of data
    /// @details Original std_msgs/msg/Float64MultiArray.data; native type float64. At most 32 elements.
    /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
    /// no ROS resource.
    pub data: Vec<f64>,
}
impl Default for Ros2Std_msgsMsgFloat64MultiArray {
    fn default() -> Self {
        Self {
            layout: Default::default(),
            data: Default::default(),
        }
    }
}
impl Ros2Std_msgsMsgFloat64MultiArray {
    pub const MAX_WIRE_BYTES: usize = 2412;
    pub const CARTESIAN_WIRE_BYTES: u64 = 2412;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_9950573380aa134d889e1662549f28ffd493e8c4da68170fd076c4c9cc3db8c2";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.layout.wire_size()?)?;
        if self.data.len() > 32 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.data {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if n > 2412 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
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
        self.layout.write_fields(out, at);
        put(out, at, &(self.data.len() as u32).to_le_bytes());
        for element in &self.data {
            put(out, at, &element.to_le_bytes());
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Std_msgsMsgMultiArrayLayout::read_fields(bytes, at)?;
        value.layout = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 32 {
                return Err(invalid());
            }
            value.data = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.data.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Std_msgsMsgFloat64MultiArray {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 2412 {
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
