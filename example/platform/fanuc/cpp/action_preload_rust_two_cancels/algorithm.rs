// @file algorithm.rs
// @brief Own and round-trip all fields of the original complete FANUC Action.
// @details This genuine Rust no_std reactor decodes sixteen original records,
// including every trajectory/tolerance/transform/twist/time/text/sequence field.
// It re-encodes typed owned values rather than echoing bytes or a scalar demo.
// Calls are serialized; this module has private memory and receives no ROS grant.
#![no_std]
#![allow(non_camel_case_types, non_snake_case)]
use core::cell::UnsafeCell;

/// Owned UTF-8 storage; len is the original canonical byte count without a terminator.
#[derive(Clone, Copy)]
struct Text<const N: usize> {
    len: usize,
    data: [u8; N],
}
impl<const N: usize> Default for Text<N> {
    fn default() -> Self {
        Self {
            len: 0,
            data: [0; N],
        }
    }
}
impl<const N: usize> Text<N> {
    fn bytes(&self) -> &[u8] {
        &self.data[..self.len]
    }
}
/// Owned bounded original sequence; no pointer from another module is retained.
#[derive(Clone, Copy)]
struct Sequence<T: Copy, const N: usize> {
    len: usize,
    data: [T; N],
}
impl<T: Copy + Default, const N: usize> Default for Sequence<T, N> {
    fn default() -> Self {
        Self {
            len: 0,
            data: [T::default(); N],
        }
    }
}
struct Decoder<'a> {
    input: &'a [u8],
    offset: usize,
    fields: u32,
}
impl<'a> Decoder<'a> {
    fn take<const N: usize>(&mut self) -> Result<[u8; N], u32> {
        let end = self.offset.checked_add(N).ok_or(22u32)?;
        if end > self.input.len() {
            return Err(22);
        }
        let mut result = [0; N];
        result.copy_from_slice(&self.input[self.offset..end]);
        self.offset = end;
        self.fields += 1;
        Ok(result)
    }
    fn text<const N: usize>(&mut self) -> Result<Text<N>, u32> {
        let count = self.u32()? as usize;
        if count > N || count > self.input.len() - self.offset {
            return Err(22);
        }
        let bytes = &self.input[self.offset..self.offset + count];
        core::str::from_utf8(bytes).map_err(|_| 22u32)?;
        let mut result = Text::<N>::default();
        result.len = count;
        result.data[..count].copy_from_slice(bytes);
        self.offset += count;
        Ok(result)
    }

    fn f32(&mut self) -> Result<f32, u32> {
        let value = f32::from_le_bytes(self.take::<4>()?);
        if !value.is_finite() {
            return Err(22);
        }
        Ok(value)
    }
    fn f64(&mut self) -> Result<f64, u32> {
        let value = f64::from_le_bytes(self.take::<8>()?);
        if !value.is_finite() {
            return Err(22);
        }
        Ok(value)
    }
    fn i16(&mut self) -> Result<i16, u32> {
        let value = i16::from_le_bytes(self.take::<2>()?);
        Ok(value)
    }
    fn i32(&mut self) -> Result<i32, u32> {
        let value = i32::from_le_bytes(self.take::<4>()?);
        Ok(value)
    }
    fn i64(&mut self) -> Result<i64, u32> {
        let value = i64::from_le_bytes(self.take::<8>()?);
        Ok(value)
    }
    fn i8(&mut self) -> Result<i8, u32> {
        let value = i8::from_le_bytes(self.take::<1>()?);
        Ok(value)
    }
    fn u16(&mut self) -> Result<u16, u32> {
        let value = u16::from_le_bytes(self.take::<2>()?);
        Ok(value)
    }
    fn u32(&mut self) -> Result<u32, u32> {
        let value = u32::from_le_bytes(self.take::<4>()?);
        Ok(value)
    }
    fn u64(&mut self) -> Result<u64, u32> {
        let value = u64::from_le_bytes(self.take::<8>()?);
        Ok(value)
    }
    fn u8(&mut self) -> Result<u8, u32> {
        let value = u8::from_le_bytes(self.take::<1>()?);
        Ok(value)
    }
    fn bool(&mut self) -> Result<bool, u32> {
        match self.u8()? {
            0 => Ok(false),
            1 => Ok(true),
            _ => Err(22),
        }
    }
}
struct Encoder<'a> {
    output: &'a mut [u8],
    offset: usize,
}
impl<'a> Encoder<'a> {
    fn bytes(&mut self, bytes: &[u8]) -> Result<(), u32> {
        if bytes.len() > self.output.len() - self.offset {
            return Err(90);
        }
        self.output[self.offset..self.offset + bytes.len()].copy_from_slice(bytes);
        self.offset += bytes.len();
        Ok(())
    }
    fn text<const N: usize>(&mut self, value: &Text<N>) -> Result<(), u32> {
        self.bytes(&(value.len as u32).to_le_bytes())?;
        self.bytes(value.bytes())
    }
}

/// Complete owned original control_msgs/action/FollowJointTrajectory_Goal; all declared fields retain their bounds and scalar units.
#[derive(Clone, Copy, Default)]
struct Ros2Control_msgsActionFollowJointTrajectory_Goal {
    /// Original trajectory; owned storage and original canonical representation.
    trajectory: Ros2Trajectory_msgsMsgJointTrajectory,
    /// Original multi_dof_trajectory; owned storage and original canonical representation.
    multi_dof_trajectory: Ros2Trajectory_msgsMsgMultiDOFJointTrajectory,
    /// Original path_tolerance; owned storage and original canonical representation.
    path_tolerance: Sequence<Ros2Control_msgsMsgJointTolerance, 12>,
    /// Original component_path_tolerance; owned storage and original canonical representation.
    component_path_tolerance: Sequence<Ros2Control_msgsMsgJointComponentTolerance, 12>,
    /// Original goal_tolerance; owned storage and original canonical representation.
    goal_tolerance: Sequence<Ros2Control_msgsMsgJointTolerance, 12>,
    /// Original component_goal_tolerance; owned storage and original canonical representation.
    component_goal_tolerance: Sequence<Ros2Control_msgsMsgJointComponentTolerance, 12>,
    /// Original goal_time_tolerance; owned storage and original canonical representation.
    goal_time_tolerance: Ros2Builtin_interfacesMsgDuration,
}
fn decode_Ros2Control_msgsActionFollowJointTrajectory_Goal(
    d: &mut Decoder,
) -> Result<Ros2Control_msgsActionFollowJointTrajectory_Goal, u32> {
    let mut value = Ros2Control_msgsActionFollowJointTrajectory_Goal::default();
    value.trajectory = decode_Ros2Trajectory_msgsMsgJointTrajectory(d)?;
    value.multi_dof_trajectory = decode_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory(d)?;
    let count = d.u32()? as usize;
    if count > 12 {
        return Err(22);
    }
    value.path_tolerance.len = count;
    for i in 0..count {
        value.path_tolerance.data[i] = decode_Ros2Control_msgsMsgJointTolerance(d)?;
    }
    let count = d.u32()? as usize;
    if count > 12 {
        return Err(22);
    }
    value.component_path_tolerance.len = count;
    for i in 0..count {
        value.component_path_tolerance.data[i] =
            decode_Ros2Control_msgsMsgJointComponentTolerance(d)?;
    }
    let count = d.u32()? as usize;
    if count > 12 {
        return Err(22);
    }
    value.goal_tolerance.len = count;
    for i in 0..count {
        value.goal_tolerance.data[i] = decode_Ros2Control_msgsMsgJointTolerance(d)?;
    }
    let count = d.u32()? as usize;
    if count > 12 {
        return Err(22);
    }
    value.component_goal_tolerance.len = count;
    for i in 0..count {
        value.component_goal_tolerance.data[i] =
            decode_Ros2Control_msgsMsgJointComponentTolerance(d)?;
    }
    value.goal_time_tolerance = decode_Ros2Builtin_interfacesMsgDuration(d)?;
    Ok(value)
}
fn encode_Ros2Control_msgsActionFollowJointTrajectory_Goal(
    e: &mut Encoder,
    value: &Ros2Control_msgsActionFollowJointTrajectory_Goal,
) -> Result<(), u32> {
    encode_Ros2Trajectory_msgsMsgJointTrajectory(e, &value.trajectory)?;
    encode_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory(e, &value.multi_dof_trajectory)?;
    e.bytes(&(value.path_tolerance.len as u32).to_le_bytes())?;
    for i in 0..value.path_tolerance.len {
        encode_Ros2Control_msgsMsgJointTolerance(e, &value.path_tolerance.data[i])?;
    }
    e.bytes(&(value.component_path_tolerance.len as u32).to_le_bytes())?;
    for i in 0..value.component_path_tolerance.len {
        encode_Ros2Control_msgsMsgJointComponentTolerance(
            e,
            &value.component_path_tolerance.data[i],
        )?;
    }
    e.bytes(&(value.goal_tolerance.len as u32).to_le_bytes())?;
    for i in 0..value.goal_tolerance.len {
        encode_Ros2Control_msgsMsgJointTolerance(e, &value.goal_tolerance.data[i])?;
    }
    e.bytes(&(value.component_goal_tolerance.len as u32).to_le_bytes())?;
    for i in 0..value.component_goal_tolerance.len {
        encode_Ros2Control_msgsMsgJointComponentTolerance(
            e,
            &value.component_goal_tolerance.data[i],
        )?;
    }
    encode_Ros2Builtin_interfacesMsgDuration(e, &value.goal_time_tolerance)?;
    Ok(())
}
/// Complete owned original trajectory_msgs/msg/JointTrajectory; all declared fields retain their bounds and scalar units.
#[derive(Clone, Copy, Default)]
struct Ros2Trajectory_msgsMsgJointTrajectory {
    /// Original header; owned storage and original canonical representation.
    header: Ros2Std_msgsMsgHeader,
    /// Original joint_names; owned storage and original canonical representation.
    joint_names: Sequence<Text<64>, 12>,
    /// Original points; owned storage and original canonical representation.
    points: Sequence<Ros2Trajectory_msgsMsgJointTrajectoryPoint, 8>,
}
fn decode_Ros2Trajectory_msgsMsgJointTrajectory(
    d: &mut Decoder,
) -> Result<Ros2Trajectory_msgsMsgJointTrajectory, u32> {
    let mut value = Ros2Trajectory_msgsMsgJointTrajectory::default();
    value.header = decode_Ros2Std_msgsMsgHeader(d)?;
    let count = d.u32()? as usize;
    if count > 12 {
        return Err(22);
    }
    value.joint_names.len = count;
    for i in 0..count {
        value.joint_names.data[i] = d.text::<64>()?;
    }
    let count = d.u32()? as usize;
    if count > 8 {
        return Err(22);
    }
    value.points.len = count;
    for i in 0..count {
        value.points.data[i] = decode_Ros2Trajectory_msgsMsgJointTrajectoryPoint(d)?;
    }
    Ok(value)
}
fn encode_Ros2Trajectory_msgsMsgJointTrajectory(
    e: &mut Encoder,
    value: &Ros2Trajectory_msgsMsgJointTrajectory,
) -> Result<(), u32> {
    encode_Ros2Std_msgsMsgHeader(e, &value.header)?;
    e.bytes(&(value.joint_names.len as u32).to_le_bytes())?;
    for i in 0..value.joint_names.len {
        e.text(&value.joint_names.data[i])?;
    }
    e.bytes(&(value.points.len as u32).to_le_bytes())?;
    for i in 0..value.points.len {
        encode_Ros2Trajectory_msgsMsgJointTrajectoryPoint(e, &value.points.data[i])?;
    }
    Ok(())
}
/// Complete owned original std_msgs/msg/Header; all declared fields retain their bounds and scalar units.
#[derive(Clone, Copy, Default)]
struct Ros2Std_msgsMsgHeader {
    /// Original stamp; owned storage and original canonical representation.
    stamp: Ros2Builtin_interfacesMsgTime,
    /// Original frame_id; owned storage and original canonical representation.
    frame_id: Text<64>,
}
fn decode_Ros2Std_msgsMsgHeader(d: &mut Decoder) -> Result<Ros2Std_msgsMsgHeader, u32> {
    let mut value = Ros2Std_msgsMsgHeader::default();
    value.stamp = decode_Ros2Builtin_interfacesMsgTime(d)?;
    value.frame_id = d.text::<64>()?;
    Ok(value)
}
fn encode_Ros2Std_msgsMsgHeader(e: &mut Encoder, value: &Ros2Std_msgsMsgHeader) -> Result<(), u32> {
    encode_Ros2Builtin_interfacesMsgTime(e, &value.stamp)?;
    e.text(&value.frame_id)?;
    Ok(())
}
/// Complete owned original builtin_interfaces/msg/Time; all declared fields retain their bounds and scalar units.
#[derive(Clone, Copy, Default)]
struct Ros2Builtin_interfacesMsgTime {
    /// Original sec; owned storage and original canonical representation.
    sec: i32,
    /// Original nanosec; owned storage and original canonical representation.
    nanosec: u32,
}
fn decode_Ros2Builtin_interfacesMsgTime(
    d: &mut Decoder,
) -> Result<Ros2Builtin_interfacesMsgTime, u32> {
    let mut value = Ros2Builtin_interfacesMsgTime::default();
    value.sec = d.i32()?;
    value.nanosec = d.u32()?;
    if value.nanosec >= 1_000_000_000 {
        return Err(22);
    }
    Ok(value)
}
fn encode_Ros2Builtin_interfacesMsgTime(
    e: &mut Encoder,
    value: &Ros2Builtin_interfacesMsgTime,
) -> Result<(), u32> {
    e.bytes(&value.sec.to_le_bytes())?;
    e.bytes(&value.nanosec.to_le_bytes())?;
    Ok(())
}
/// Complete owned original trajectory_msgs/msg/JointTrajectoryPoint; all declared fields retain their bounds and scalar units.
#[derive(Clone, Copy, Default)]
struct Ros2Trajectory_msgsMsgJointTrajectoryPoint {
    /// Original positions; owned storage and original canonical representation.
    positions: Sequence<f64, 12>,
    /// Original velocities; owned storage and original canonical representation.
    velocities: Sequence<f64, 12>,
    /// Original accelerations; owned storage and original canonical representation.
    accelerations: Sequence<f64, 12>,
    /// Original effort; owned storage and original canonical representation.
    effort: Sequence<f64, 12>,
    /// Original time_from_start; owned storage and original canonical representation.
    time_from_start: Ros2Builtin_interfacesMsgDuration,
}
fn decode_Ros2Trajectory_msgsMsgJointTrajectoryPoint(
    d: &mut Decoder,
) -> Result<Ros2Trajectory_msgsMsgJointTrajectoryPoint, u32> {
    let mut value = Ros2Trajectory_msgsMsgJointTrajectoryPoint::default();
    let count = d.u32()? as usize;
    if count > 12 {
        return Err(22);
    }
    value.positions.len = count;
    for i in 0..count {
        value.positions.data[i] = d.f64()?;
    }
    let count = d.u32()? as usize;
    if count > 12 {
        return Err(22);
    }
    value.velocities.len = count;
    for i in 0..count {
        value.velocities.data[i] = d.f64()?;
    }
    let count = d.u32()? as usize;
    if count > 12 {
        return Err(22);
    }
    value.accelerations.len = count;
    for i in 0..count {
        value.accelerations.data[i] = d.f64()?;
    }
    let count = d.u32()? as usize;
    if count > 12 {
        return Err(22);
    }
    value.effort.len = count;
    for i in 0..count {
        value.effort.data[i] = d.f64()?;
    }
    value.time_from_start = decode_Ros2Builtin_interfacesMsgDuration(d)?;
    Ok(value)
}
fn encode_Ros2Trajectory_msgsMsgJointTrajectoryPoint(
    e: &mut Encoder,
    value: &Ros2Trajectory_msgsMsgJointTrajectoryPoint,
) -> Result<(), u32> {
    e.bytes(&(value.positions.len as u32).to_le_bytes())?;
    for i in 0..value.positions.len {
        e.bytes(&value.positions.data[i].to_le_bytes())?;
    }
    e.bytes(&(value.velocities.len as u32).to_le_bytes())?;
    for i in 0..value.velocities.len {
        e.bytes(&value.velocities.data[i].to_le_bytes())?;
    }
    e.bytes(&(value.accelerations.len as u32).to_le_bytes())?;
    for i in 0..value.accelerations.len {
        e.bytes(&value.accelerations.data[i].to_le_bytes())?;
    }
    e.bytes(&(value.effort.len as u32).to_le_bytes())?;
    for i in 0..value.effort.len {
        e.bytes(&value.effort.data[i].to_le_bytes())?;
    }
    encode_Ros2Builtin_interfacesMsgDuration(e, &value.time_from_start)?;
    Ok(())
}
/// Complete owned original builtin_interfaces/msg/Duration; all declared fields retain their bounds and scalar units.
#[derive(Clone, Copy, Default)]
struct Ros2Builtin_interfacesMsgDuration {
    /// Original sec; owned storage and original canonical representation.
    sec: i32,
    /// Original nanosec; owned storage and original canonical representation.
    nanosec: u32,
}
fn decode_Ros2Builtin_interfacesMsgDuration(
    d: &mut Decoder,
) -> Result<Ros2Builtin_interfacesMsgDuration, u32> {
    let mut value = Ros2Builtin_interfacesMsgDuration::default();
    value.sec = d.i32()?;
    value.nanosec = d.u32()?;
    if value.nanosec >= 1_000_000_000 {
        return Err(22);
    }
    Ok(value)
}
fn encode_Ros2Builtin_interfacesMsgDuration(
    e: &mut Encoder,
    value: &Ros2Builtin_interfacesMsgDuration,
) -> Result<(), u32> {
    e.bytes(&value.sec.to_le_bytes())?;
    e.bytes(&value.nanosec.to_le_bytes())?;
    Ok(())
}
/// Complete owned original trajectory_msgs/msg/MultiDOFJointTrajectory; all declared fields retain their bounds and scalar units.
#[derive(Clone, Copy, Default)]
struct Ros2Trajectory_msgsMsgMultiDOFJointTrajectory {
    /// Original header; owned storage and original canonical representation.
    header: Ros2Std_msgsMsgHeader,
    /// Original joint_names; owned storage and original canonical representation.
    joint_names: Sequence<Text<64>, 2>,
    /// Original points; owned storage and original canonical representation.
    points: Sequence<Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint, 4>,
}
fn decode_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory(
    d: &mut Decoder,
) -> Result<Ros2Trajectory_msgsMsgMultiDOFJointTrajectory, u32> {
    let mut value = Ros2Trajectory_msgsMsgMultiDOFJointTrajectory::default();
    value.header = decode_Ros2Std_msgsMsgHeader(d)?;
    let count = d.u32()? as usize;
    if count > 2 {
        return Err(22);
    }
    value.joint_names.len = count;
    for i in 0..count {
        value.joint_names.data[i] = d.text::<64>()?;
    }
    let count = d.u32()? as usize;
    if count > 4 {
        return Err(22);
    }
    value.points.len = count;
    for i in 0..count {
        value.points.data[i] = decode_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(d)?;
    }
    Ok(value)
}
fn encode_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory(
    e: &mut Encoder,
    value: &Ros2Trajectory_msgsMsgMultiDOFJointTrajectory,
) -> Result<(), u32> {
    encode_Ros2Std_msgsMsgHeader(e, &value.header)?;
    e.bytes(&(value.joint_names.len as u32).to_le_bytes())?;
    for i in 0..value.joint_names.len {
        e.text(&value.joint_names.data[i])?;
    }
    e.bytes(&(value.points.len as u32).to_le_bytes())?;
    for i in 0..value.points.len {
        encode_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(e, &value.points.data[i])?;
    }
    Ok(())
}
/// Complete owned original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint; all declared fields retain their bounds and scalar units.
#[derive(Clone, Copy, Default)]
struct Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint {
    /// Original transforms; owned storage and original canonical representation.
    transforms: Sequence<Ros2Geometry_msgsMsgTransform, 2>,
    /// Original velocities; owned storage and original canonical representation.
    velocities: Sequence<Ros2Geometry_msgsMsgTwist, 2>,
    /// Original accelerations; owned storage and original canonical representation.
    accelerations: Sequence<Ros2Geometry_msgsMsgTwist, 2>,
    /// Original time_from_start; owned storage and original canonical representation.
    time_from_start: Ros2Builtin_interfacesMsgDuration,
}
fn decode_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(
    d: &mut Decoder,
) -> Result<Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint, u32> {
    let mut value = Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint::default();
    let count = d.u32()? as usize;
    if count > 2 {
        return Err(22);
    }
    value.transforms.len = count;
    for i in 0..count {
        value.transforms.data[i] = decode_Ros2Geometry_msgsMsgTransform(d)?;
    }
    let count = d.u32()? as usize;
    if count > 2 {
        return Err(22);
    }
    value.velocities.len = count;
    for i in 0..count {
        value.velocities.data[i] = decode_Ros2Geometry_msgsMsgTwist(d)?;
    }
    let count = d.u32()? as usize;
    if count > 2 {
        return Err(22);
    }
    value.accelerations.len = count;
    for i in 0..count {
        value.accelerations.data[i] = decode_Ros2Geometry_msgsMsgTwist(d)?;
    }
    value.time_from_start = decode_Ros2Builtin_interfacesMsgDuration(d)?;
    Ok(value)
}
fn encode_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(
    e: &mut Encoder,
    value: &Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint,
) -> Result<(), u32> {
    e.bytes(&(value.transforms.len as u32).to_le_bytes())?;
    for i in 0..value.transforms.len {
        encode_Ros2Geometry_msgsMsgTransform(e, &value.transforms.data[i])?;
    }
    e.bytes(&(value.velocities.len as u32).to_le_bytes())?;
    for i in 0..value.velocities.len {
        encode_Ros2Geometry_msgsMsgTwist(e, &value.velocities.data[i])?;
    }
    e.bytes(&(value.accelerations.len as u32).to_le_bytes())?;
    for i in 0..value.accelerations.len {
        encode_Ros2Geometry_msgsMsgTwist(e, &value.accelerations.data[i])?;
    }
    encode_Ros2Builtin_interfacesMsgDuration(e, &value.time_from_start)?;
    Ok(())
}
/// Complete owned original geometry_msgs/msg/Transform; all declared fields retain their bounds and scalar units.
#[derive(Clone, Copy, Default)]
struct Ros2Geometry_msgsMsgTransform {
    /// Original translation; owned storage and original canonical representation.
    translation: Ros2Geometry_msgsMsgVector3,
    /// Original rotation; owned storage and original canonical representation.
    rotation: Ros2Geometry_msgsMsgQuaternion,
}
fn decode_Ros2Geometry_msgsMsgTransform(
    d: &mut Decoder,
) -> Result<Ros2Geometry_msgsMsgTransform, u32> {
    let mut value = Ros2Geometry_msgsMsgTransform::default();
    value.translation = decode_Ros2Geometry_msgsMsgVector3(d)?;
    value.rotation = decode_Ros2Geometry_msgsMsgQuaternion(d)?;
    Ok(value)
}
fn encode_Ros2Geometry_msgsMsgTransform(
    e: &mut Encoder,
    value: &Ros2Geometry_msgsMsgTransform,
) -> Result<(), u32> {
    encode_Ros2Geometry_msgsMsgVector3(e, &value.translation)?;
    encode_Ros2Geometry_msgsMsgQuaternion(e, &value.rotation)?;
    Ok(())
}
/// Complete owned original geometry_msgs/msg/Vector3; all declared fields retain their bounds and scalar units.
#[derive(Clone, Copy, Default)]
struct Ros2Geometry_msgsMsgVector3 {
    /// Original x; owned storage and original canonical representation.
    x: f64,
    /// Original y; owned storage and original canonical representation.
    y: f64,
    /// Original z; owned storage and original canonical representation.
    z: f64,
}
fn decode_Ros2Geometry_msgsMsgVector3(d: &mut Decoder) -> Result<Ros2Geometry_msgsMsgVector3, u32> {
    let mut value = Ros2Geometry_msgsMsgVector3::default();
    value.x = d.f64()?;
    value.y = d.f64()?;
    value.z = d.f64()?;
    Ok(value)
}
fn encode_Ros2Geometry_msgsMsgVector3(
    e: &mut Encoder,
    value: &Ros2Geometry_msgsMsgVector3,
) -> Result<(), u32> {
    e.bytes(&value.x.to_le_bytes())?;
    e.bytes(&value.y.to_le_bytes())?;
    e.bytes(&value.z.to_le_bytes())?;
    Ok(())
}
/// Complete owned original geometry_msgs/msg/Quaternion; all declared fields retain their bounds and scalar units.
#[derive(Clone, Copy, Default)]
struct Ros2Geometry_msgsMsgQuaternion {
    /// Original x; owned storage and original canonical representation.
    x: f64,
    /// Original y; owned storage and original canonical representation.
    y: f64,
    /// Original z; owned storage and original canonical representation.
    z: f64,
    /// Original w; owned storage and original canonical representation.
    w: f64,
}
fn decode_Ros2Geometry_msgsMsgQuaternion(
    d: &mut Decoder,
) -> Result<Ros2Geometry_msgsMsgQuaternion, u32> {
    let mut value = Ros2Geometry_msgsMsgQuaternion::default();
    value.x = d.f64()?;
    value.y = d.f64()?;
    value.z = d.f64()?;
    value.w = d.f64()?;
    Ok(value)
}
fn encode_Ros2Geometry_msgsMsgQuaternion(
    e: &mut Encoder,
    value: &Ros2Geometry_msgsMsgQuaternion,
) -> Result<(), u32> {
    e.bytes(&value.x.to_le_bytes())?;
    e.bytes(&value.y.to_le_bytes())?;
    e.bytes(&value.z.to_le_bytes())?;
    e.bytes(&value.w.to_le_bytes())?;
    Ok(())
}
/// Complete owned original geometry_msgs/msg/Twist; all declared fields retain their bounds and scalar units.
#[derive(Clone, Copy, Default)]
struct Ros2Geometry_msgsMsgTwist {
    /// Original linear; owned storage and original canonical representation.
    linear: Ros2Geometry_msgsMsgVector3,
    /// Original angular; owned storage and original canonical representation.
    angular: Ros2Geometry_msgsMsgVector3,
}
fn decode_Ros2Geometry_msgsMsgTwist(d: &mut Decoder) -> Result<Ros2Geometry_msgsMsgTwist, u32> {
    let mut value = Ros2Geometry_msgsMsgTwist::default();
    value.linear = decode_Ros2Geometry_msgsMsgVector3(d)?;
    value.angular = decode_Ros2Geometry_msgsMsgVector3(d)?;
    Ok(value)
}
fn encode_Ros2Geometry_msgsMsgTwist(
    e: &mut Encoder,
    value: &Ros2Geometry_msgsMsgTwist,
) -> Result<(), u32> {
    encode_Ros2Geometry_msgsMsgVector3(e, &value.linear)?;
    encode_Ros2Geometry_msgsMsgVector3(e, &value.angular)?;
    Ok(())
}
/// Complete owned original control_msgs/msg/JointTolerance; all declared fields retain their bounds and scalar units.
#[derive(Clone, Copy, Default)]
struct Ros2Control_msgsMsgJointTolerance {
    /// Original name; owned storage and original canonical representation.
    name: Text<64>,
    /// Original position; owned storage and original canonical representation.
    position: f64,
    /// Original velocity; owned storage and original canonical representation.
    velocity: f64,
    /// Original acceleration; owned storage and original canonical representation.
    acceleration: f64,
}
fn decode_Ros2Control_msgsMsgJointTolerance(
    d: &mut Decoder,
) -> Result<Ros2Control_msgsMsgJointTolerance, u32> {
    let mut value = Ros2Control_msgsMsgJointTolerance::default();
    value.name = d.text::<64>()?;
    value.position = d.f64()?;
    value.velocity = d.f64()?;
    value.acceleration = d.f64()?;
    Ok(value)
}
fn encode_Ros2Control_msgsMsgJointTolerance(
    e: &mut Encoder,
    value: &Ros2Control_msgsMsgJointTolerance,
) -> Result<(), u32> {
    e.text(&value.name)?;
    e.bytes(&value.position.to_le_bytes())?;
    e.bytes(&value.velocity.to_le_bytes())?;
    e.bytes(&value.acceleration.to_le_bytes())?;
    Ok(())
}
/// Complete owned original control_msgs/msg/JointComponentTolerance; all declared fields retain their bounds and scalar units.
#[derive(Clone, Copy, Default)]
struct Ros2Control_msgsMsgJointComponentTolerance {
    /// Original joint_name; owned storage and original canonical representation.
    joint_name: Text<512>,
    /// Original component; owned storage and original canonical representation.
    component: u16,
    /// Original position; owned storage and original canonical representation.
    position: f64,
    /// Original velocity; owned storage and original canonical representation.
    velocity: f64,
    /// Original acceleration; owned storage and original canonical representation.
    acceleration: f64,
}
fn decode_Ros2Control_msgsMsgJointComponentTolerance(
    d: &mut Decoder,
) -> Result<Ros2Control_msgsMsgJointComponentTolerance, u32> {
    let mut value = Ros2Control_msgsMsgJointComponentTolerance::default();
    value.joint_name = d.text::<512>()?;
    value.component = d.u16()?;
    value.position = d.f64()?;
    value.velocity = d.f64()?;
    value.acceleration = d.f64()?;
    Ok(value)
}
fn encode_Ros2Control_msgsMsgJointComponentTolerance(
    e: &mut Encoder,
    value: &Ros2Control_msgsMsgJointComponentTolerance,
) -> Result<(), u32> {
    e.text(&value.joint_name)?;
    e.bytes(&value.component.to_le_bytes())?;
    e.bytes(&value.position.to_le_bytes())?;
    e.bytes(&value.velocity.to_le_bytes())?;
    e.bytes(&value.acceleration.to_le_bytes())?;
    Ok(())
}
/// Complete owned original control_msgs/action/FollowJointTrajectory_Feedback; all declared fields retain their bounds and scalar units.
#[derive(Clone, Copy, Default)]
struct Ros2Control_msgsActionFollowJointTrajectory_Feedback {
    /// Original header; owned storage and original canonical representation.
    header: Ros2Std_msgsMsgHeader,
    /// Original joint_names; owned storage and original canonical representation.
    joint_names: Sequence<Text<64>, 12>,
    /// Original desired; owned storage and original canonical representation.
    desired: Ros2Trajectory_msgsMsgJointTrajectoryPoint,
    /// Original actual; owned storage and original canonical representation.
    actual: Ros2Trajectory_msgsMsgJointTrajectoryPoint,
    /// Original error; owned storage and original canonical representation.
    error: Ros2Trajectory_msgsMsgJointTrajectoryPoint,
    /// Original multi_dof_joint_names; owned storage and original canonical representation.
    multi_dof_joint_names: Sequence<Text<512>, 2>,
    /// Original multi_dof_desired; owned storage and original canonical representation.
    multi_dof_desired: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint,
    /// Original multi_dof_actual; owned storage and original canonical representation.
    multi_dof_actual: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint,
    /// Original multi_dof_error; owned storage and original canonical representation.
    multi_dof_error: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint,
}
fn decode_Ros2Control_msgsActionFollowJointTrajectory_Feedback(
    d: &mut Decoder,
) -> Result<Ros2Control_msgsActionFollowJointTrajectory_Feedback, u32> {
    let mut value = Ros2Control_msgsActionFollowJointTrajectory_Feedback::default();
    value.header = decode_Ros2Std_msgsMsgHeader(d)?;
    let count = d.u32()? as usize;
    if count > 12 {
        return Err(22);
    }
    value.joint_names.len = count;
    for i in 0..count {
        value.joint_names.data[i] = d.text::<64>()?;
    }
    value.desired = decode_Ros2Trajectory_msgsMsgJointTrajectoryPoint(d)?;
    value.actual = decode_Ros2Trajectory_msgsMsgJointTrajectoryPoint(d)?;
    value.error = decode_Ros2Trajectory_msgsMsgJointTrajectoryPoint(d)?;
    let count = d.u32()? as usize;
    if count > 2 {
        return Err(22);
    }
    value.multi_dof_joint_names.len = count;
    for i in 0..count {
        value.multi_dof_joint_names.data[i] = d.text::<512>()?;
    }
    value.multi_dof_desired = decode_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(d)?;
    value.multi_dof_actual = decode_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(d)?;
    value.multi_dof_error = decode_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(d)?;
    Ok(value)
}
fn encode_Ros2Control_msgsActionFollowJointTrajectory_Feedback(
    e: &mut Encoder,
    value: &Ros2Control_msgsActionFollowJointTrajectory_Feedback,
) -> Result<(), u32> {
    encode_Ros2Std_msgsMsgHeader(e, &value.header)?;
    e.bytes(&(value.joint_names.len as u32).to_le_bytes())?;
    for i in 0..value.joint_names.len {
        e.text(&value.joint_names.data[i])?;
    }
    encode_Ros2Trajectory_msgsMsgJointTrajectoryPoint(e, &value.desired)?;
    encode_Ros2Trajectory_msgsMsgJointTrajectoryPoint(e, &value.actual)?;
    encode_Ros2Trajectory_msgsMsgJointTrajectoryPoint(e, &value.error)?;
    e.bytes(&(value.multi_dof_joint_names.len as u32).to_le_bytes())?;
    for i in 0..value.multi_dof_joint_names.len {
        e.text(&value.multi_dof_joint_names.data[i])?;
    }
    encode_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(e, &value.multi_dof_desired)?;
    encode_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(e, &value.multi_dof_actual)?;
    encode_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(e, &value.multi_dof_error)?;
    Ok(())
}
/// Complete owned original control_msgs/action/FollowJointTrajectory_Result; all declared fields retain their bounds and scalar units.
#[derive(Clone, Copy, Default)]
struct Ros2Control_msgsActionFollowJointTrajectory_Result {
    /// Original error_code; owned storage and original canonical representation.
    error_code: i32,
    /// Original error_string; owned storage and original canonical representation.
    error_string: Text<4096>,
}
fn decode_Ros2Control_msgsActionFollowJointTrajectory_Result(
    d: &mut Decoder,
) -> Result<Ros2Control_msgsActionFollowJointTrajectory_Result, u32> {
    let mut value = Ros2Control_msgsActionFollowJointTrajectory_Result::default();
    value.error_code = d.i32()?;
    value.error_string = d.text::<4096>()?;
    Ok(value)
}
fn encode_Ros2Control_msgsActionFollowJointTrajectory_Result(
    e: &mut Encoder,
    value: &Ros2Control_msgsActionFollowJointTrajectory_Result,
) -> Result<(), u32> {
    e.bytes(&value.error_code.to_le_bytes())?;
    e.text(&value.error_string)?;
    Ok(())
}
struct State {
    input: [u8; 32768],
    filled: usize,
    component: u32,
    checks: u32,
    fields: u32,
}
struct Serialized(UnsafeCell<State>);
// SAFETY: This Core Wasm module has private nonshared memory. The documented
// scalar exports are called serially on the guest thread, with no callbacks.
unsafe impl Sync for Serialized {}
static STATE: Serialized = Serialized(UnsafeCell::new(State {
    input: [0; 32768],
    filled: 0,
    component: 0,
    checks: 0,
    fields: 0,
}));

/// @brief Start an owned complete component:0 Goal,1 Feedback,2 Result.
/// @return22 for an invalid component without changing the existing assembly.
#[no_mangle]
pub extern "C" fn action_record_reset(component: u32) -> u32 {
    if component > 2 {
        return 22;
    }
    let state = unsafe { &mut *STATE.0.get() };
    state.filled = 0;
    state.component = component;
    0
}
/// @brief Copy one ordered byte into module-owned storage, never a foreign pointer.
/// @return22 on bad order,byte or capacity with all assembly state unchanged.
#[no_mangle]
pub extern "C" fn action_record_put(index: u32, byte: u32) -> u32 {
    let state = unsafe { &mut *STATE.0.get() };
    if index as usize != state.filled || state.filled >= state.input.len() || byte > 255 {
        return 22;
    }
    state.input[state.filled] = byte as u8;
    state.filled += 1;
    0
}
fn checked(tag: u32) -> Result<(), u32> {
    let state = unsafe { &mut *STATE.0.get() };
    let mut decoder = Decoder {
        input: &state.input[..state.filled],
        offset: 0,
        fields: 0,
    };
    let mut output = [0u8; 32768];
    let mut encoder = Encoder {
        output: &mut output,
        offset: 0,
    };
    match state.component {
        0 => {
            let value = decode_Ros2Control_msgsActionFollowJointTrajectory_Goal(&mut decoder)?;
            let expected: &[u8] = if tag == 1 { b"goal-1" } else { b"goal-2" };
            if value.trajectory.header.frame_id.bytes() != expected {
                return Err(65);
            }
            encode_Ros2Control_msgsActionFollowJointTrajectory_Goal(&mut encoder, &value)?;
        }
        1 => {
            let value = decode_Ros2Control_msgsActionFollowJointTrajectory_Feedback(&mut decoder)?;
            let expected: &[u8] = if tag == 1 {
                b"feedback-1"
            } else {
                b"feedback-2"
            };
            if value.header.frame_id.bytes() != expected {
                return Err(65);
            }
            encode_Ros2Control_msgsActionFollowJointTrajectory_Feedback(&mut encoder, &value)?;
        }
        2 => {
            let value = decode_Ros2Control_msgsActionFollowJointTrajectory_Result(&mut decoder)?;
            let expected_code = if tag == 1 { -4 } else { -5 };
            if value.error_code != expected_code || value.error_string.len == 0 {
                return Err(65);
            }
            encode_Ros2Control_msgsActionFollowJointTrajectory_Result(&mut encoder, &value)?;
        }
        _ => return Err(22),
    }
    if decoder.offset != state.filled
        || encoder.offset != state.filled
        || encoder.output[..encoder.offset] != state.input[..state.filled]
    {
        return Err(65);
    }
    state.checks += 1;
    state.fields += decoder.fields;
    Ok(())
}
/// @brief Fully decode and re-encode the original typed record, then commit counters.
/// @param tag Unique selected original goal marker1 or2; no ROS alias is inferred.
/// @return0 only for exact complete typed round-trip and original component marker.
#[no_mangle]
pub extern "C" fn action_record_check(tag: u32) -> u32 {
    if tag != 1 && tag != 2 {
        return 22;
    }
    match checked(tag) {
        Ok(()) => 0,
        Err(error) => error,
    }
}
/// @brief Count committed complete typed component round-trips in this instance.
#[no_mangle]
pub extern "C" fn action_record_checks() -> u32 {
    unsafe { (*STATE.0.get()).checks }
}
/// @brief Count every decoded scalar or string-length field across committed records.
#[no_mangle]
pub extern "C" fn action_record_fields() -> u32 {
    unsafe { (*STATE.0.get()).fields }
}

// Exact public ROS2 ABI v1 declarations, matching ros2/rs/src/raw/ros2.rs.
// No typed operation or compiler is replaced; this performs only an explicit
// negative-authority check from the independently ROS-disabled Rust module.
#[link(wasm_import_module = "uwvm_ros2_v1")]
extern "C" {
    fn capability_open(memory: u32, alias: u64, length: u64, output: u64) -> u32;
    fn capability_close(handle: u64) -> u32;
}
/// @brief Return the actual denied open from this ungranted Rust module.
/// @details Alias bytes and the output slot remain owned through the synchronous
/// import. Unexpected success is closed once and reported as failure65.
#[no_mangle]
pub extern "C" fn action_record_denial() -> u32 {
    let mut handle = 0u64;
    let alias = b"send";
    let code = unsafe {
        capability_open(
            0,
            alias.as_ptr() as usize as u64,
            4,
            (&mut handle as *mut u64) as usize as u64,
        )
    };
    if code != 0 {
        return code;
    }
    let cleanup = unsafe { capability_close(handle) };
    if cleanup == 0 {
        65
    } else {
        cleanup
    }
}
// Public WASI abort resolves at the common final link for either pointer width.
extern "C" {
    fn abort() -> !;
}
#[panic_handler]
fn panic(_: &core::panic::PanicInfo) -> ! {
    unsafe { abort() }
}
