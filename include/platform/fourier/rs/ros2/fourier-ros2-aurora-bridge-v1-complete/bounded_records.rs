// @file bounded_records.rs
// @brief Full fourier rs codecs and original record metadata.
// @details Complete fourier ros2_aurora_bridge_v1 values in rs. 51 original records retain 138 fields and 28
// interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
// definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
// profile API manual under document/platform/fourier/en_US/catalog/.
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
/// Complete bounded value for ROS2 uwvm_fourier_bridge/msg/GroupState.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Uwvm_fourier_bridgeMsgGroupState {
    /// Declared group; canonical bounds are part of CODEC_IDENTITY.
    pub group: String,
    /// Declared position; canonical bounds are part of CODEC_IDENTITY.
    pub position: Vec<f64>,
    /// Declared velocity; canonical bounds are part of CODEC_IDENTITY.
    pub velocity: Vec<f64>,
    /// Declared effort; canonical bounds are part of CODEC_IDENTITY.
    pub effort: Vec<f64>,
    /// Declared motion_state; canonical bounds are part of CODEC_IDENTITY.
    pub motion_state: i32,
}
impl Default for Ros2Uwvm_fourier_bridgeMsgGroupState {
    fn default() -> Self {
        Self {
            group: Default::default(),
            position: Default::default(),
            velocity: Default::default(),
            effort: Default::default(),
            motion_state: Default::default(),
        }
    }
}
impl Ros2Uwvm_fourier_bridgeMsgGroupState {
    pub const MAX_WIRE_BYTES: usize = 1684;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1684;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_f33e483ea4f7b9326e43f82c92f948ce6d47f16fb34e463ba25f3ec01d5e0bf4";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.group.len() > 128 || self.group.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.group.len())?;
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
        n = add_size(n, 4)?;
        if n > 1684 {
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
        put(out, at, &(self.group.len() as u32).to_le_bytes());
        put(out, at, self.group.as_bytes());
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
        put(out, at, &self.motion_state.to_le_bytes());
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
        value.group = decoded;
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
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.motion_state = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Uwvm_fourier_bridgeMsgGroupState {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 1684 {
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
/// Complete bounded value for ROS2 uwvm_fourier_bridge/msg/GroupValues.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Uwvm_fourier_bridgeMsgGroupValues {
    /// Declared group; canonical bounds are part of CODEC_IDENTITY.
    pub group: String,
    /// Declared values; canonical bounds are part of CODEC_IDENTITY.
    pub values: Vec<f64>,
}
impl Default for Ros2Uwvm_fourier_bridgeMsgGroupValues {
    fn default() -> Self {
        Self {
            group: Default::default(),
            values: Default::default(),
        }
    }
}
impl Ros2Uwvm_fourier_bridgeMsgGroupValues {
    pub const MAX_WIRE_BYTES: usize = 648;
    pub const CARTESIAN_WIRE_BYTES: u64 = 648;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_3c69f73f7b6d1d4a8a6b5006f6dbe9a74021b10a0d3b493251f0085cb06d57f3";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.group.len() > 128 || self.group.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.group.len())?;
        if self.values.len() > 64 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.values {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if n > 648 {
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
        put(out, at, &(self.group.len() as u32).to_le_bytes());
        put(out, at, self.group.as_bytes());
        put(out, at, &(self.values.len() as u32).to_le_bytes());
        for element in &self.values {
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
        value.group = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 64 {
                return Err(invalid());
            }
            value.values = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.values.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Uwvm_fourier_bridgeMsgGroupValues {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 648 {
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
/// Complete bounded value for ROS2 uwvm_fourier_bridge/msg/MotionRecipe.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Uwvm_fourier_bridgeMsgMotionRecipe {
    /// Declared move_type; canonical bounds are part of CODEC_IDENTITY.
    pub move_type: u8,
    /// Declared group; canonical bounds are part of CODEC_IDENTITY.
    pub group: String,
    /// Declared position; canonical bounds are part of CODEC_IDENTITY.
    pub position: Vec<f64>,
    /// Declared has_velocity; canonical bounds are part of CODEC_IDENTITY.
    pub has_velocity: bool,
    /// Declared velocity; canonical bounds are part of CODEC_IDENTITY.
    pub velocity: Vec<f64>,
    /// Declared expected_velocity; canonical bounds are part of CODEC_IDENTITY.
    pub expected_velocity: i32,
}
impl Default for Ros2Uwvm_fourier_bridgeMsgMotionRecipe {
    fn default() -> Self {
        Self {
            move_type: Default::default(),
            group: Default::default(),
            position: Default::default(),
            has_velocity: Default::default(),
            velocity: Default::default(),
            expected_velocity: Default::default(),
        }
    }
}
impl Ros2Uwvm_fourier_bridgeMsgMotionRecipe {
    pub const MAX_WIRE_BYTES: usize = 1170;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1170;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_bc50051a3fd81e146ad97200427b3b673081f817a20dbc38de1533dc0a9bee14";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if self.group.len() > 128 || self.group.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.group.len())?;
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
        n = add_size(n, 1)?;
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
        n = add_size(n, 4)?;
        if n > 1170 {
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
        put(out, at, &self.move_type.to_le_bytes());
        put(out, at, &(self.group.len() as u32).to_le_bytes());
        put(out, at, self.group.as_bytes());
        put(out, at, &(self.position.len() as u32).to_le_bytes());
        for element in &self.position {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &[u8::from(self.has_velocity)]);
        put(out, at, &(self.velocity.len() as u32).to_le_bytes());
        for element in &self.velocity {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.expected_velocity.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.move_type = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.group = decoded;
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
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.has_velocity = decoded;
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
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.expected_velocity = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Uwvm_fourier_bridgeMsgMotionRecipe {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 1170 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 18 {
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
/// Complete bounded value for ROS2 uwvm_fourier_bridge/msg/Status.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Uwvm_fourier_bridgeMsgStatus {
    /// Declared fsm_state; canonical bounds are part of CODEC_IDENTITY.
    pub fsm_state: i32,
    /// Declared fsm_name; canonical bounds are part of CODEC_IDENTITY.
    pub fsm_name: String,
    /// Declared upper_fsm_state; canonical bounds are part of CODEC_IDENTITY.
    pub upper_fsm_state: i32,
    /// Declared upper_fsm_name; canonical bounds are part of CODEC_IDENTITY.
    pub upper_fsm_name: String,
    /// Declared velocity_source; canonical bounds are part of CODEC_IDENTITY.
    pub velocity_source: i32,
    /// Declared velocity_source_name; canonical bounds are part of CODEC_IDENTITY.
    pub velocity_source_name: String,
    /// Declared stand_pose; canonical bounds are part of CODEC_IDENTITY.
    pub stand_pose: Vec<f64>,
    /// Declared groups; canonical bounds are part of CODEC_IDENTITY.
    pub groups: Vec<Ros2Uwvm_fourier_bridgeMsgGroupState>,
}
impl Default for Ros2Uwvm_fourier_bridgeMsgStatus {
    fn default() -> Self {
        Self {
            fsm_state: Default::default(),
            fsm_name: Default::default(),
            upper_fsm_state: Default::default(),
            upper_fsm_name: Default::default(),
            velocity_source: Default::default(),
            velocity_source_name: Default::default(),
            stand_pose: Default::default(),
            groups: Default::default(),
        }
    }
}
impl Ros2Uwvm_fourier_bridgeMsgStatus {
    pub const MAX_WIRE_BYTES: usize = 14400;
    pub const CARTESIAN_WIRE_BYTES: u64 = 14400;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_f251a6d2da8a35e9b49c1341ffda12f809186d845eb076d225ed274da7b4165e";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 4)?;
        if self.fsm_name.len() > 128 || self.fsm_name.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.fsm_name.len())?;
        n = add_size(n, 4)?;
        if self.upper_fsm_name.len() > 128 || self.upper_fsm_name.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.upper_fsm_name.len())?;
        n = add_size(n, 4)?;
        if self.velocity_source_name.len() > 128
            || self.velocity_source_name.as_bytes().contains(&0)
        {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.velocity_source_name.len())?;
        if self.stand_pose.len() > 64 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.stand_pose {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if self.groups.len() > 8 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.groups {
            n = add_size(n, element.wire_size()?)?;
        }
        if n > 14400 {
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
        put(out, at, &self.fsm_state.to_le_bytes());
        put(out, at, &(self.fsm_name.len() as u32).to_le_bytes());
        put(out, at, self.fsm_name.as_bytes());
        put(out, at, &self.upper_fsm_state.to_le_bytes());
        put(out, at, &(self.upper_fsm_name.len() as u32).to_le_bytes());
        put(out, at, self.upper_fsm_name.as_bytes());
        put(out, at, &self.velocity_source.to_le_bytes());
        put(
            out,
            at,
            &(self.velocity_source_name.len() as u32).to_le_bytes(),
        );
        put(out, at, self.velocity_source_name.as_bytes());
        put(out, at, &(self.stand_pose.len() as u32).to_le_bytes());
        for element in &self.stand_pose {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &(self.groups.len() as u32).to_le_bytes());
        for element in &self.groups {
            element.write_fields(out, at);
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.fsm_state = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.fsm_name = decoded;
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.upper_fsm_state = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.upper_fsm_name = decoded;
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.velocity_source = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.velocity_source_name = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 64 {
                return Err(invalid());
            }
            value.stand_pose = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.stand_pose.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 8 {
                return Err(invalid());
            }
            value.groups = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros2Uwvm_fourier_bridgeMsgGroupState::read_fields(bytes, at)?;
                value.groups.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Uwvm_fourier_bridgeMsgStatus {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 14400 {
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
/// Complete bounded value for ROS2 uwvm_fourier_bridge/msg/VelocityCommand.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Uwvm_fourier_bridgeMsgVelocityCommand {
    /// Declared sequence; canonical bounds are part of CODEC_IDENTITY.
    pub sequence: u64,
    /// Declared vx; canonical bounds are part of CODEC_IDENTITY.
    pub vx: f64,
    /// Declared vy; canonical bounds are part of CODEC_IDENTITY.
    pub vy: f64,
    /// Declared yaw; canonical bounds are part of CODEC_IDENTITY.
    pub yaw: f64,
    /// Declared duration; canonical bounds are part of CODEC_IDENTITY.
    pub duration: f64,
}
impl Default for Ros2Uwvm_fourier_bridgeMsgVelocityCommand {
    fn default() -> Self {
        Self {
            sequence: Default::default(),
            vx: Default::default(),
            vy: Default::default(),
            yaw: Default::default(),
            duration: Default::default(),
        }
    }
}
impl Ros2Uwvm_fourier_bridgeMsgVelocityCommand {
    pub const MAX_WIRE_BYTES: usize = 40;
    pub const CARTESIAN_WIRE_BYTES: u64 = 40;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_9b0a6facfb591afb82a34bb01b058f340626eba26619b8b686a52c6319e11d3d";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 8)?;
        if !self.vx.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.vy.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.yaw.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.duration.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
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
        put(out, at, &self.sequence.to_le_bytes());
        put(out, at, &self.vx.to_le_bytes());
        put(out, at, &self.vy.to_le_bytes());
        put(out, at, &self.yaw.to_le_bytes());
        put(out, at, &self.duration.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        value.sequence = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.vx = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.vy = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.yaw = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.duration = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Uwvm_fourier_bridgeMsgVelocityCommand {
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
/// Complete bounded value for ROS2 uwvm_fourier_bridge/srv/ExecuteMove_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request {
    /// Declared sequence; canonical bounds are part of CODEC_IDENTITY.
    pub sequence: u64,
    /// Declared moves; canonical bounds are part of CODEC_IDENTITY.
    pub moves: Vec<Ros2Uwvm_fourier_bridgeMsgMotionRecipe>,
}
impl Default for Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request {
    fn default() -> Self {
        Self {
            sequence: Default::default(),
            moves: Default::default(),
        }
    }
}
impl Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request {
    pub const MAX_WIRE_BYTES: usize = 9372;
    pub const CARTESIAN_WIRE_BYTES: u64 = 9372;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_4f306d8dc39d1aec7cb634df8a1b3573996440cbdd390ad7447edfd93e0d626b";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 8)?;
        if self.moves.len() > 8 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.moves {
            n = add_size(n, element.wire_size()?)?;
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
        put(out, at, &self.sequence.to_le_bytes());
        put(out, at, &(self.moves.len() as u32).to_le_bytes());
        for element in &self.moves {
            element.write_fields(out, at);
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        value.sequence = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 8 {
                return Err(invalid());
            }
            value.moves = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros2Uwvm_fourier_bridgeMsgMotionRecipe::read_fields(bytes, at)?;
                value.moves.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request {
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
/// Complete bounded value for ROS2 uwvm_fourier_bridge/srv/ExecuteMove_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response {
    /// Declared status; canonical bounds are part of CODEC_IDENTITY.
    pub status: u32,
    /// Declared error; canonical bounds are part of CODEC_IDENTITY.
    pub error: String,
}
impl Default for Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response {
    fn default() -> Self {
        Self {
            status: Default::default(),
            error: Default::default(),
        }
    }
}
impl Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response {
    pub const MAX_WIRE_BYTES: usize = 136;
    pub const CARTESIAN_WIRE_BYTES: u64 = 136;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_16cd03eb2e730dcd9eda47be3a506298f9369f0f61bcddd634a06295f902dcab";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 4)?;
        if self.error.len() > 128 || self.error.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.error.len())?;
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
        put(out, at, &self.status.to_le_bytes());
        put(out, at, &(self.error.len() as u32).to_le_bytes());
        put(out, at, self.error.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.status = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
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
impl Canonical for Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response {
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
/// Complete bounded value for ROS2 uwvm_fourier_bridge/srv/GetBaseData_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request {
    /// Declared sequence; canonical bounds are part of CODEC_IDENTITY.
    pub sequence: u64,
    /// Declared key; canonical bounds are part of CODEC_IDENTITY.
    pub key: String,
}
impl Default for Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request {
    fn default() -> Self {
        Self {
            sequence: Default::default(),
            key: Default::default(),
        }
    }
}
impl Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request {
    pub const MAX_WIRE_BYTES: usize = 140;
    pub const CARTESIAN_WIRE_BYTES: u64 = 140;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_19cfad0a79a7703b8dd5d9215a705026eaff78ef1794bda704f52a1e70d2dd5f";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 8)?;
        if self.key.len() > 128 || self.key.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.key.len())?;
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
        put(out, at, &self.sequence.to_le_bytes());
        put(out, at, &(self.key.len() as u32).to_le_bytes());
        put(out, at, self.key.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        value.sequence = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.key = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request {
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
/// Complete bounded value for ROS2 uwvm_fourier_bridge/srv/GetBaseData_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response {
    /// Declared status; canonical bounds are part of CODEC_IDENTITY.
    pub status: u32,
    /// Declared error; canonical bounds are part of CODEC_IDENTITY.
    pub error: String,
    /// Declared values; canonical bounds are part of CODEC_IDENTITY.
    pub values: Vec<f64>,
}
impl Default for Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response {
    fn default() -> Self {
        Self {
            status: Default::default(),
            error: Default::default(),
            values: Default::default(),
        }
    }
}
impl Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response {
    pub const MAX_WIRE_BYTES: usize = 652;
    pub const CARTESIAN_WIRE_BYTES: u64 = 652;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_4c632e4c71f87f82064078b2936c9af2be87f56e44014e029470748c14614804";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 4)?;
        if self.error.len() > 128 || self.error.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.error.len())?;
        if self.values.len() > 64 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.values {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if n > 652 {
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
        put(out, at, &self.status.to_le_bytes());
        put(out, at, &(self.error.len() as u32).to_le_bytes());
        put(out, at, self.error.as_bytes());
        put(out, at, &(self.values.len() as u32).to_le_bytes());
        for element in &self.values {
            put(out, at, &element.to_le_bytes());
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.status = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.error = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 64 {
                return Err(invalid());
            }
            value.values = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.values.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 652 {
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
/// Complete bounded value for ROS2 uwvm_fourier_bridge/srv/GetCartesianState_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request {
    /// Declared sequence; canonical bounds are part of CODEC_IDENTITY.
    pub sequence: u64,
    /// Declared group; canonical bounds are part of CODEC_IDENTITY.
    pub group: String,
    /// Declared key; canonical bounds are part of CODEC_IDENTITY.
    pub key: String,
}
impl Default for Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request {
    fn default() -> Self {
        Self {
            sequence: Default::default(),
            group: Default::default(),
            key: Default::default(),
        }
    }
}
impl Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request {
    pub const MAX_WIRE_BYTES: usize = 272;
    pub const CARTESIAN_WIRE_BYTES: u64 = 272;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_2255ca1da45c891d1a3f8c8f77f1f6c5b9380d5ac5250a5d522ab581c4df7eee";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 8)?;
        if self.group.len() > 128 || self.group.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.group.len())?;
        if self.key.len() > 128 || self.key.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.key.len())?;
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
        put(out, at, &self.sequence.to_le_bytes());
        put(out, at, &(self.group.len() as u32).to_le_bytes());
        put(out, at, self.group.as_bytes());
        put(out, at, &(self.key.len() as u32).to_le_bytes());
        put(out, at, self.key.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        value.sequence = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.group = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.key = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request {
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
/// Complete bounded value for ROS2 uwvm_fourier_bridge/srv/GetCartesianState_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response {
    /// Declared status; canonical bounds are part of CODEC_IDENTITY.
    pub status: u32,
    /// Declared error; canonical bounds are part of CODEC_IDENTITY.
    pub error: String,
    /// Declared values; canonical bounds are part of CODEC_IDENTITY.
    pub values: Vec<f64>,
}
impl Default for Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response {
    fn default() -> Self {
        Self {
            status: Default::default(),
            error: Default::default(),
            values: Default::default(),
        }
    }
}
impl Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response {
    pub const MAX_WIRE_BYTES: usize = 652;
    pub const CARTESIAN_WIRE_BYTES: u64 = 652;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_8adfef323b2635fd716d7121496c091656bc76bce2b320479345ef94bdc62a40";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 4)?;
        if self.error.len() > 128 || self.error.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.error.len())?;
        if self.values.len() > 64 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.values {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if n > 652 {
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
        put(out, at, &self.status.to_le_bytes());
        put(out, at, &(self.error.len() as u32).to_le_bytes());
        put(out, at, self.error.as_bytes());
        put(out, at, &(self.values.len() as u32).to_le_bytes());
        for element in &self.values {
            put(out, at, &element.to_le_bytes());
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.status = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.error = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 64 {
                return Err(invalid());
            }
            value.values = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.values.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 652 {
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
/// Complete bounded value for ROS2 uwvm_fourier_bridge/srv/GetContactData_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Uwvm_fourier_bridgeSrvGetContactData_Request {
    /// Declared sequence; canonical bounds are part of CODEC_IDENTITY.
    pub sequence: u64,
    /// Declared key; canonical bounds are part of CODEC_IDENTITY.
    pub key: String,
}
impl Default for Ros2Uwvm_fourier_bridgeSrvGetContactData_Request {
    fn default() -> Self {
        Self {
            sequence: Default::default(),
            key: Default::default(),
        }
    }
}
impl Ros2Uwvm_fourier_bridgeSrvGetContactData_Request {
    pub const MAX_WIRE_BYTES: usize = 140;
    pub const CARTESIAN_WIRE_BYTES: u64 = 140;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_52cf1fcf2036a4aa97ec902842838707ee1c96c63f6466165af5d1f3cde5f4e0";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 8)?;
        if self.key.len() > 128 || self.key.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.key.len())?;
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
        put(out, at, &self.sequence.to_le_bytes());
        put(out, at, &(self.key.len() as u32).to_le_bytes());
        put(out, at, self.key.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        value.sequence = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.key = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Uwvm_fourier_bridgeSrvGetContactData_Request {
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
/// Complete bounded value for ROS2 uwvm_fourier_bridge/srv/GetContactData_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Uwvm_fourier_bridgeSrvGetContactData_Response {
    /// Declared status; canonical bounds are part of CODEC_IDENTITY.
    pub status: u32,
    /// Declared error; canonical bounds are part of CODEC_IDENTITY.
    pub error: String,
    /// Declared values; canonical bounds are part of CODEC_IDENTITY.
    pub values: Vec<f64>,
}
impl Default for Ros2Uwvm_fourier_bridgeSrvGetContactData_Response {
    fn default() -> Self {
        Self {
            status: Default::default(),
            error: Default::default(),
            values: Default::default(),
        }
    }
}
impl Ros2Uwvm_fourier_bridgeSrvGetContactData_Response {
    pub const MAX_WIRE_BYTES: usize = 652;
    pub const CARTESIAN_WIRE_BYTES: u64 = 652;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_504e7cc1bcb1c9a649cda204bbfbf8c6735fc5d71466b8a72d0536f0d3746b2e";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 4)?;
        if self.error.len() > 128 || self.error.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.error.len())?;
        if self.values.len() > 64 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.values {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if n > 652 {
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
        put(out, at, &self.status.to_le_bytes());
        put(out, at, &(self.error.len() as u32).to_le_bytes());
        put(out, at, self.error.as_bytes());
        put(out, at, &(self.values.len() as u32).to_le_bytes());
        for element in &self.values {
            put(out, at, &element.to_le_bytes());
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.status = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.error = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 64 {
                return Err(invalid());
            }
            value.values = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.values.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Uwvm_fourier_bridgeSrvGetContactData_Response {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 652 {
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
/// Complete bounded value for ROS2 uwvm_fourier_bridge/srv/GetFsmName_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request {
    /// Declared sequence; canonical bounds are part of CODEC_IDENTITY.
    pub sequence: u64,
}
impl Default for Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request {
    fn default() -> Self {
        Self {
            sequence: Default::default(),
        }
    }
}
impl Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request {
    pub const MAX_WIRE_BYTES: usize = 8;
    pub const CARTESIAN_WIRE_BYTES: u64 = 8;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_d8a11bb7eee1af0c138ec4f934610c4b88d817be25992cb854100cb61d8d6100";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
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
        put(out, at, &self.sequence.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        value.sequence = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request {
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
/// Complete bounded value for ROS2 uwvm_fourier_bridge/srv/GetFsmName_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response {
    /// Declared status; canonical bounds are part of CODEC_IDENTITY.
    pub status: u32,
    /// Declared error; canonical bounds are part of CODEC_IDENTITY.
    pub error: String,
    /// Declared value; canonical bounds are part of CODEC_IDENTITY.
    pub value: String,
}
impl Default for Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response {
    fn default() -> Self {
        Self {
            status: Default::default(),
            error: Default::default(),
            value: Default::default(),
        }
    }
}
impl Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response {
    pub const MAX_WIRE_BYTES: usize = 268;
    pub const CARTESIAN_WIRE_BYTES: u64 = 268;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_6ac4c78b17f0a366274f7fc74e981e95e605040937a78b3e328836f781c6886e";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 4)?;
        if self.error.len() > 128 || self.error.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.error.len())?;
        if self.value.len() > 128 || self.value.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.value.len())?;
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
        put(out, at, &self.status.to_le_bytes());
        put(out, at, &(self.error.len() as u32).to_le_bytes());
        put(out, at, self.error.as_bytes());
        put(out, at, &(self.value.len() as u32).to_le_bytes());
        put(out, at, self.value.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.status = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.error = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.value = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response {
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
/// Complete bounded value for ROS2 uwvm_fourier_bridge/srv/GetFsmState_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request {
    /// Declared sequence; canonical bounds are part of CODEC_IDENTITY.
    pub sequence: u64,
}
impl Default for Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request {
    fn default() -> Self {
        Self {
            sequence: Default::default(),
        }
    }
}
impl Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request {
    pub const MAX_WIRE_BYTES: usize = 8;
    pub const CARTESIAN_WIRE_BYTES: u64 = 8;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_061098411a7d26f31dd31957b34190e798305289bad558d351ee81df810e3bd0";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
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
        put(out, at, &self.sequence.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        value.sequence = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request {
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
/// Complete bounded value for ROS2 uwvm_fourier_bridge/srv/GetFsmState_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response {
    /// Declared status; canonical bounds are part of CODEC_IDENTITY.
    pub status: u32,
    /// Declared error; canonical bounds are part of CODEC_IDENTITY.
    pub error: String,
    /// Declared value; canonical bounds are part of CODEC_IDENTITY.
    pub value: i32,
}
impl Default for Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response {
    fn default() -> Self {
        Self {
            status: Default::default(),
            error: Default::default(),
            value: Default::default(),
        }
    }
}
impl Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response {
    pub const MAX_WIRE_BYTES: usize = 140;
    pub const CARTESIAN_WIRE_BYTES: u64 = 140;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_1ac3b816f0e4aa4e769bd74d67274b85a8d9bf5ca7f8a359179280970b7e19e4";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 4)?;
        if self.error.len() > 128 || self.error.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.error.len())?;
        n = add_size(n, 4)?;
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
        put(out, at, &self.status.to_le_bytes());
        put(out, at, &(self.error.len() as u32).to_le_bytes());
        put(out, at, self.error.as_bytes());
        put(out, at, &self.value.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.status = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.error = decoded;
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.value = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response {
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
/// Complete bounded value for ROS2 uwvm_fourier_bridge/srv/GetGroupMotionState_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request {
    /// Declared sequence; canonical bounds are part of CODEC_IDENTITY.
    pub sequence: u64,
    /// Declared group; canonical bounds are part of CODEC_IDENTITY.
    pub group: String,
}
impl Default for Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request {
    fn default() -> Self {
        Self {
            sequence: Default::default(),
            group: Default::default(),
        }
    }
}
impl Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request {
    pub const MAX_WIRE_BYTES: usize = 140;
    pub const CARTESIAN_WIRE_BYTES: u64 = 140;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_32606cb0ba540db0ce680716059ef3a7b4ad1277216fab4254521071cc0ea9ae";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 8)?;
        if self.group.len() > 128 || self.group.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.group.len())?;
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
        put(out, at, &self.sequence.to_le_bytes());
        put(out, at, &(self.group.len() as u32).to_le_bytes());
        put(out, at, self.group.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        value.sequence = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.group = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request {
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
/// Complete bounded value for ROS2 uwvm_fourier_bridge/srv/GetGroupMotionState_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response {
    /// Declared status; canonical bounds are part of CODEC_IDENTITY.
    pub status: u32,
    /// Declared error; canonical bounds are part of CODEC_IDENTITY.
    pub error: String,
    /// Declared value; canonical bounds are part of CODEC_IDENTITY.
    pub value: i32,
}
impl Default for Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response {
    fn default() -> Self {
        Self {
            status: Default::default(),
            error: Default::default(),
            value: Default::default(),
        }
    }
}
impl Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response {
    pub const MAX_WIRE_BYTES: usize = 140;
    pub const CARTESIAN_WIRE_BYTES: u64 = 140;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_192bd0770ca8e95e171fdbf9ef393bfc5e845a38d2a0c48f7846f3e080e219d7";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 4)?;
        if self.error.len() > 128 || self.error.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.error.len())?;
        n = add_size(n, 4)?;
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
        put(out, at, &self.status.to_le_bytes());
        put(out, at, &(self.error.len() as u32).to_le_bytes());
        put(out, at, self.error.as_bytes());
        put(out, at, &self.value.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.status = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.error = decoded;
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.value = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response {
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
/// Complete bounded value for ROS2 uwvm_fourier_bridge/srv/GetGroupMotorCfg_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request {
    /// Declared sequence; canonical bounds are part of CODEC_IDENTITY.
    pub sequence: u64,
    /// Declared group; canonical bounds are part of CODEC_IDENTITY.
    pub group: String,
    /// Declared key; canonical bounds are part of CODEC_IDENTITY.
    pub key: String,
}
impl Default for Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request {
    fn default() -> Self {
        Self {
            sequence: Default::default(),
            group: Default::default(),
            key: Default::default(),
        }
    }
}
impl Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request {
    pub const MAX_WIRE_BYTES: usize = 272;
    pub const CARTESIAN_WIRE_BYTES: u64 = 272;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_7edceab07d5c5c571bce51ea7f82f0695df7e07ad8584d7219b7db36b697959a";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 8)?;
        if self.group.len() > 128 || self.group.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.group.len())?;
        if self.key.len() > 128 || self.key.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.key.len())?;
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
        put(out, at, &self.sequence.to_le_bytes());
        put(out, at, &(self.group.len() as u32).to_le_bytes());
        put(out, at, self.group.as_bytes());
        put(out, at, &(self.key.len() as u32).to_le_bytes());
        put(out, at, self.key.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        value.sequence = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.group = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.key = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request {
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
/// Complete bounded value for ROS2 uwvm_fourier_bridge/srv/GetGroupMotorCfg_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response {
    /// Declared status; canonical bounds are part of CODEC_IDENTITY.
    pub status: u32,
    /// Declared error; canonical bounds are part of CODEC_IDENTITY.
    pub error: String,
    /// Declared values; canonical bounds are part of CODEC_IDENTITY.
    pub values: Vec<f64>,
}
impl Default for Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response {
    fn default() -> Self {
        Self {
            status: Default::default(),
            error: Default::default(),
            values: Default::default(),
        }
    }
}
impl Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response {
    pub const MAX_WIRE_BYTES: usize = 652;
    pub const CARTESIAN_WIRE_BYTES: u64 = 652;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_783f925c3b1030dec4d4a0172b4916c1cdbf72ec5e0da29167064ae754929868";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 4)?;
        if self.error.len() > 128 || self.error.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.error.len())?;
        if self.values.len() > 64 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.values {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if n > 652 {
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
        put(out, at, &self.status.to_le_bytes());
        put(out, at, &(self.error.len() as u32).to_le_bytes());
        put(out, at, self.error.as_bytes());
        put(out, at, &(self.values.len() as u32).to_le_bytes());
        for element in &self.values {
            put(out, at, &element.to_le_bytes());
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.status = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.error = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 64 {
                return Err(invalid());
            }
            value.values = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.values.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 652 {
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
/// Complete bounded value for ROS2 uwvm_fourier_bridge/srv/GetGroupState_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request {
    /// Declared sequence; canonical bounds are part of CODEC_IDENTITY.
    pub sequence: u64,
    /// Declared group; canonical bounds are part of CODEC_IDENTITY.
    pub group: String,
    /// Declared key; canonical bounds are part of CODEC_IDENTITY.
    pub key: String,
}
impl Default for Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request {
    fn default() -> Self {
        Self {
            sequence: Default::default(),
            group: Default::default(),
            key: Default::default(),
        }
    }
}
impl Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request {
    pub const MAX_WIRE_BYTES: usize = 272;
    pub const CARTESIAN_WIRE_BYTES: u64 = 272;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_8ad802cc56a28a603ea0b4e705a80aafeda7657757a36e1bbe452b85b5035fa9";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 8)?;
        if self.group.len() > 128 || self.group.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.group.len())?;
        if self.key.len() > 128 || self.key.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.key.len())?;
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
        put(out, at, &self.sequence.to_le_bytes());
        put(out, at, &(self.group.len() as u32).to_le_bytes());
        put(out, at, self.group.as_bytes());
        put(out, at, &(self.key.len() as u32).to_le_bytes());
        put(out, at, self.key.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        value.sequence = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.group = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.key = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request {
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
/// Complete bounded value for ROS2 uwvm_fourier_bridge/srv/GetGroupState_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response {
    /// Declared status; canonical bounds are part of CODEC_IDENTITY.
    pub status: u32,
    /// Declared error; canonical bounds are part of CODEC_IDENTITY.
    pub error: String,
    /// Declared values; canonical bounds are part of CODEC_IDENTITY.
    pub values: Vec<f64>,
}
impl Default for Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response {
    fn default() -> Self {
        Self {
            status: Default::default(),
            error: Default::default(),
            values: Default::default(),
        }
    }
}
impl Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response {
    pub const MAX_WIRE_BYTES: usize = 652;
    pub const CARTESIAN_WIRE_BYTES: u64 = 652;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_22b934422928c57570784ac2100bf5fd5ca941ea59aea72b442ec7205ed2c96d";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 4)?;
        if self.error.len() > 128 || self.error.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.error.len())?;
        if self.values.len() > 64 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.values {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if n > 652 {
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
        put(out, at, &self.status.to_le_bytes());
        put(out, at, &(self.error.len() as u32).to_le_bytes());
        put(out, at, self.error.as_bytes());
        put(out, at, &(self.values.len() as u32).to_le_bytes());
        for element in &self.values {
            put(out, at, &element.to_le_bytes());
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.status = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.error = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 64 {
                return Err(invalid());
            }
            value.values = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.values.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 652 {
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
/// Complete bounded value for ROS2 uwvm_fourier_bridge/srv/GetSnapshot_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request {
    /// Declared sequence; canonical bounds are part of CODEC_IDENTITY.
    pub sequence: u64,
}
impl Default for Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request {
    fn default() -> Self {
        Self {
            sequence: Default::default(),
        }
    }
}
impl Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request {
    pub const MAX_WIRE_BYTES: usize = 8;
    pub const CARTESIAN_WIRE_BYTES: u64 = 8;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_4c3003f85c4bc3c17e2e4bd4fd965fe52099a0a4a9f2c0320d165ec3db51bb58";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
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
        put(out, at, &self.sequence.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        value.sequence = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request {
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
/// Complete bounded value for ROS2 uwvm_fourier_bridge/srv/GetSnapshot_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response {
    /// Declared status; canonical bounds are part of CODEC_IDENTITY.
    pub status: u32,
    /// Declared error; canonical bounds are part of CODEC_IDENTITY.
    pub error: String,
    /// Declared value; canonical bounds are part of CODEC_IDENTITY.
    pub value: Ros2Uwvm_fourier_bridgeMsgStatus,
}
impl Default for Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response {
    fn default() -> Self {
        Self {
            status: Default::default(),
            error: Default::default(),
            value: Default::default(),
        }
    }
}
impl Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response {
    pub const MAX_WIRE_BYTES: usize = 14536;
    pub const CARTESIAN_WIRE_BYTES: u64 = 14536;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_bf4456397ae5115bf88b49c5568b8f289d6aefe3266f5e4d12b86d0f992de6a3";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 4)?;
        if self.error.len() > 128 || self.error.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.error.len())?;
        n = add_size(n, self.value.wire_size()?)?;
        if n > 14536 {
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
        put(out, at, &self.status.to_le_bytes());
        put(out, at, &(self.error.len() as u32).to_le_bytes());
        put(out, at, self.error.as_bytes());
        self.value.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.status = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.error = decoded;
        let decoded = Ros2Uwvm_fourier_bridgeMsgStatus::read_fields(bytes, at)?;
        value.value = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 14536 {
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
/// Complete bounded value for ROS2 uwvm_fourier_bridge/srv/GetStandPose_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request {
    /// Declared sequence; canonical bounds are part of CODEC_IDENTITY.
    pub sequence: u64,
}
impl Default for Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request {
    fn default() -> Self {
        Self {
            sequence: Default::default(),
        }
    }
}
impl Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request {
    pub const MAX_WIRE_BYTES: usize = 8;
    pub const CARTESIAN_WIRE_BYTES: u64 = 8;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_22c044b91db36a82bb825a556c41f9ae0139fb652ade47ac10aedf701ba0e044";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
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
        put(out, at, &self.sequence.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        value.sequence = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request {
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
/// Complete bounded value for ROS2 uwvm_fourier_bridge/srv/GetStandPose_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response {
    /// Declared status; canonical bounds are part of CODEC_IDENTITY.
    pub status: u32,
    /// Declared error; canonical bounds are part of CODEC_IDENTITY.
    pub error: String,
    /// Declared values; canonical bounds are part of CODEC_IDENTITY.
    pub values: Vec<f64>,
}
impl Default for Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response {
    fn default() -> Self {
        Self {
            status: Default::default(),
            error: Default::default(),
            values: Default::default(),
        }
    }
}
impl Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response {
    pub const MAX_WIRE_BYTES: usize = 652;
    pub const CARTESIAN_WIRE_BYTES: u64 = 652;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_b25c3c0cf5fa810e367b46ad2d20d7446ffc4f67b8fb77493060ca62017ef4e2";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 4)?;
        if self.error.len() > 128 || self.error.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.error.len())?;
        if self.values.len() > 64 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.values {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if n > 652 {
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
        put(out, at, &self.status.to_le_bytes());
        put(out, at, &(self.error.len() as u32).to_le_bytes());
        put(out, at, self.error.as_bytes());
        put(out, at, &(self.values.len() as u32).to_le_bytes());
        for element in &self.values {
            put(out, at, &element.to_le_bytes());
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.status = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.error = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 64 {
                return Err(invalid());
            }
            value.values = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.values.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 652 {
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
/// Complete bounded value for ROS2 uwvm_fourier_bridge/srv/GetUpperFsmName_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request {
    /// Declared sequence; canonical bounds are part of CODEC_IDENTITY.
    pub sequence: u64,
}
impl Default for Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request {
    fn default() -> Self {
        Self {
            sequence: Default::default(),
        }
    }
}
impl Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request {
    pub const MAX_WIRE_BYTES: usize = 8;
    pub const CARTESIAN_WIRE_BYTES: u64 = 8;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_83187e2bc41361d7a7aef57d1458f4017a3ca4235b82c290dd80c1f58611e412";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
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
        put(out, at, &self.sequence.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        value.sequence = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request {
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
/// Complete bounded value for ROS2 uwvm_fourier_bridge/srv/GetUpperFsmName_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response {
    /// Declared status; canonical bounds are part of CODEC_IDENTITY.
    pub status: u32,
    /// Declared error; canonical bounds are part of CODEC_IDENTITY.
    pub error: String,
    /// Declared value; canonical bounds are part of CODEC_IDENTITY.
    pub value: String,
}
impl Default for Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response {
    fn default() -> Self {
        Self {
            status: Default::default(),
            error: Default::default(),
            value: Default::default(),
        }
    }
}
impl Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response {
    pub const MAX_WIRE_BYTES: usize = 268;
    pub const CARTESIAN_WIRE_BYTES: u64 = 268;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_ad6e25b9363bcadb517e96e5a1615c5ce36719542b2b32c4fb16f69ab102daed";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 4)?;
        if self.error.len() > 128 || self.error.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.error.len())?;
        if self.value.len() > 128 || self.value.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.value.len())?;
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
        put(out, at, &self.status.to_le_bytes());
        put(out, at, &(self.error.len() as u32).to_le_bytes());
        put(out, at, self.error.as_bytes());
        put(out, at, &(self.value.len() as u32).to_le_bytes());
        put(out, at, self.value.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.status = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.error = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.value = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response {
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
/// Complete bounded value for ROS2 uwvm_fourier_bridge/srv/GetUpperFsmState_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request {
    /// Declared sequence; canonical bounds are part of CODEC_IDENTITY.
    pub sequence: u64,
}
impl Default for Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request {
    fn default() -> Self {
        Self {
            sequence: Default::default(),
        }
    }
}
impl Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request {
    pub const MAX_WIRE_BYTES: usize = 8;
    pub const CARTESIAN_WIRE_BYTES: u64 = 8;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_9981500b7a9dacf167baf5d8dce45820a1424a7b7fbe960c0d1b37751d1dda98";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
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
        put(out, at, &self.sequence.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        value.sequence = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request {
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
/// Complete bounded value for ROS2 uwvm_fourier_bridge/srv/GetUpperFsmState_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response {
    /// Declared status; canonical bounds are part of CODEC_IDENTITY.
    pub status: u32,
    /// Declared error; canonical bounds are part of CODEC_IDENTITY.
    pub error: String,
    /// Declared value; canonical bounds are part of CODEC_IDENTITY.
    pub value: i32,
}
impl Default for Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response {
    fn default() -> Self {
        Self {
            status: Default::default(),
            error: Default::default(),
            value: Default::default(),
        }
    }
}
impl Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response {
    pub const MAX_WIRE_BYTES: usize = 140;
    pub const CARTESIAN_WIRE_BYTES: u64 = 140;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_dc699f01c04f01c7ad2e71daea02ffd80f368d4d066d5d280fcf0a2abfa126a9";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 4)?;
        if self.error.len() > 128 || self.error.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.error.len())?;
        n = add_size(n, 4)?;
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
        put(out, at, &self.status.to_le_bytes());
        put(out, at, &(self.error.len() as u32).to_le_bytes());
        put(out, at, self.error.as_bytes());
        put(out, at, &self.value.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.status = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.error = decoded;
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.value = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response {
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
/// Complete bounded value for ROS2 uwvm_fourier_bridge/srv/GetVelocitySource_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request {
    /// Declared sequence; canonical bounds are part of CODEC_IDENTITY.
    pub sequence: u64,
}
impl Default for Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request {
    fn default() -> Self {
        Self {
            sequence: Default::default(),
        }
    }
}
impl Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request {
    pub const MAX_WIRE_BYTES: usize = 8;
    pub const CARTESIAN_WIRE_BYTES: u64 = 8;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_c11f2de346de2adac1cdf07c795d7746436851322e591a33d75c8226f75d5d4c";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
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
        put(out, at, &self.sequence.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        value.sequence = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request {
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
/// Complete bounded value for ROS2 uwvm_fourier_bridge/srv/GetVelocitySource_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response {
    /// Declared status; canonical bounds are part of CODEC_IDENTITY.
    pub status: u32,
    /// Declared error; canonical bounds are part of CODEC_IDENTITY.
    pub error: String,
    /// Declared value; canonical bounds are part of CODEC_IDENTITY.
    pub value: i32,
}
impl Default for Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response {
    fn default() -> Self {
        Self {
            status: Default::default(),
            error: Default::default(),
            value: Default::default(),
        }
    }
}
impl Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response {
    pub const MAX_WIRE_BYTES: usize = 140;
    pub const CARTESIAN_WIRE_BYTES: u64 = 140;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_dedb7a6119ec7ed97a0924ff58585da8569acf3026bf0c21bbb0a43bd2094e53";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 4)?;
        if self.error.len() > 128 || self.error.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.error.len())?;
        n = add_size(n, 4)?;
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
        put(out, at, &self.status.to_le_bytes());
        put(out, at, &(self.error.len() as u32).to_le_bytes());
        put(out, at, self.error.as_bytes());
        put(out, at, &self.value.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.status = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.error = decoded;
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.value = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response {
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
/// Complete bounded value for ROS2 uwvm_fourier_bridge/srv/GetVelocitySourceName_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request {
    /// Declared sequence; canonical bounds are part of CODEC_IDENTITY.
    pub sequence: u64,
}
impl Default for Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request {
    fn default() -> Self {
        Self {
            sequence: Default::default(),
        }
    }
}
impl Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request {
    pub const MAX_WIRE_BYTES: usize = 8;
    pub const CARTESIAN_WIRE_BYTES: u64 = 8;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_e1bc07b31243e938bd0fe61b1a8a7c788be7442ee978bdc0e0f3da128f1986d1";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
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
        put(out, at, &self.sequence.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        value.sequence = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request {
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
/// Complete bounded value for ROS2 uwvm_fourier_bridge/srv/GetVelocitySourceName_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response {
    /// Declared status; canonical bounds are part of CODEC_IDENTITY.
    pub status: u32,
    /// Declared error; canonical bounds are part of CODEC_IDENTITY.
    pub error: String,
    /// Declared value; canonical bounds are part of CODEC_IDENTITY.
    pub value: String,
}
impl Default for Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response {
    fn default() -> Self {
        Self {
            status: Default::default(),
            error: Default::default(),
            value: Default::default(),
        }
    }
}
impl Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response {
    pub const MAX_WIRE_BYTES: usize = 268;
    pub const CARTESIAN_WIRE_BYTES: u64 = 268;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_a79939894c6e446a7ee1b4af1270aa7bb72a8d54f543e82299a869b0a317ab40";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 4)?;
        if self.error.len() > 128 || self.error.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.error.len())?;
        if self.value.len() > 128 || self.value.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.value.len())?;
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
        put(out, at, &self.status.to_le_bytes());
        put(out, at, &(self.error.len() as u32).to_le_bytes());
        put(out, at, self.error.as_bytes());
        put(out, at, &(self.value.len() as u32).to_le_bytes());
        put(out, at, self.value.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.status = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.error = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.value = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response {
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
/// Complete bounded value for ROS2 uwvm_fourier_bridge/srv/SetFsmState_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request {
    /// Declared sequence; canonical bounds are part of CODEC_IDENTITY.
    pub sequence: u64,
    /// Declared state; canonical bounds are part of CODEC_IDENTITY.
    pub state: i32,
}
impl Default for Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request {
    fn default() -> Self {
        Self {
            sequence: Default::default(),
            state: Default::default(),
        }
    }
}
impl Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request {
    pub const MAX_WIRE_BYTES: usize = 12;
    pub const CARTESIAN_WIRE_BYTES: u64 = 12;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_a479783bb0f94bf69a62333235049ee7692f618ae255edbefaa9cf9f110e090d";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 8)?;
        n = add_size(n, 4)?;
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
        put(out, at, &self.sequence.to_le_bytes());
        put(out, at, &self.state.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        value.sequence = decoded;
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.state = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request {
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
/// Complete bounded value for ROS2 uwvm_fourier_bridge/srv/SetFsmState_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response {
    /// Declared status; canonical bounds are part of CODEC_IDENTITY.
    pub status: u32,
    /// Declared error; canonical bounds are part of CODEC_IDENTITY.
    pub error: String,
}
impl Default for Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response {
    fn default() -> Self {
        Self {
            status: Default::default(),
            error: Default::default(),
        }
    }
}
impl Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response {
    pub const MAX_WIRE_BYTES: usize = 136;
    pub const CARTESIAN_WIRE_BYTES: u64 = 136;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_35161a47d290454d74849c87e6333379e93454fe070c21a4ad6175c5da715e70";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 4)?;
        if self.error.len() > 128 || self.error.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.error.len())?;
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
        put(out, at, &self.status.to_le_bytes());
        put(out, at, &(self.error.len() as u32).to_le_bytes());
        put(out, at, self.error.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.status = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
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
impl Canonical for Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response {
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
/// Complete bounded value for ROS2 uwvm_fourier_bridge/srv/SetGroupCommand_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request {
    /// Declared sequence; canonical bounds are part of CODEC_IDENTITY.
    pub sequence: u64,
    /// Declared position; canonical bounds are part of CODEC_IDENTITY.
    pub position: Vec<Ros2Uwvm_fourier_bridgeMsgGroupValues>,
    /// Declared velocity; canonical bounds are part of CODEC_IDENTITY.
    pub velocity: Vec<Ros2Uwvm_fourier_bridgeMsgGroupValues>,
    /// Declared torque; canonical bounds are part of CODEC_IDENTITY.
    pub torque: Vec<Ros2Uwvm_fourier_bridgeMsgGroupValues>,
}
impl Default for Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request {
    fn default() -> Self {
        Self {
            sequence: Default::default(),
            position: Default::default(),
            velocity: Default::default(),
            torque: Default::default(),
        }
    }
}
impl Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request {
    pub const MAX_WIRE_BYTES: usize = 15572;
    pub const CARTESIAN_WIRE_BYTES: u64 = 15572;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_b0b7d59e3985faf7a7c3e186e0556059b479e624c799f20dafb973e774ae3be9";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 8)?;
        if self.position.len() > 8 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.position {
            n = add_size(n, element.wire_size()?)?;
        }
        if self.velocity.len() > 8 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.velocity {
            n = add_size(n, element.wire_size()?)?;
        }
        if self.torque.len() > 8 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.torque {
            n = add_size(n, element.wire_size()?)?;
        }
        if n > 15572 {
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
        put(out, at, &self.sequence.to_le_bytes());
        put(out, at, &(self.position.len() as u32).to_le_bytes());
        for element in &self.position {
            element.write_fields(out, at);
        }
        put(out, at, &(self.velocity.len() as u32).to_le_bytes());
        for element in &self.velocity {
            element.write_fields(out, at);
        }
        put(out, at, &(self.torque.len() as u32).to_le_bytes());
        for element in &self.torque {
            element.write_fields(out, at);
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        value.sequence = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 8 {
                return Err(invalid());
            }
            value.position = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros2Uwvm_fourier_bridgeMsgGroupValues::read_fields(bytes, at)?;
                value.position.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 8 {
                return Err(invalid());
            }
            value.velocity = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros2Uwvm_fourier_bridgeMsgGroupValues::read_fields(bytes, at)?;
                value.velocity.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 8 {
                return Err(invalid());
            }
            value.torque = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros2Uwvm_fourier_bridgeMsgGroupValues::read_fields(bytes, at)?;
                value.torque.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 15572 {
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
/// Complete bounded value for ROS2 uwvm_fourier_bridge/srv/SetGroupCommand_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response {
    /// Declared status; canonical bounds are part of CODEC_IDENTITY.
    pub status: u32,
    /// Declared error; canonical bounds are part of CODEC_IDENTITY.
    pub error: String,
}
impl Default for Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response {
    fn default() -> Self {
        Self {
            status: Default::default(),
            error: Default::default(),
        }
    }
}
impl Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response {
    pub const MAX_WIRE_BYTES: usize = 136;
    pub const CARTESIAN_WIRE_BYTES: u64 = 136;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_53dc9e28bf3c95b193748d49c2796f5a936815f654863d326b6536a44077d290";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 4)?;
        if self.error.len() > 128 || self.error.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.error.len())?;
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
        put(out, at, &self.status.to_le_bytes());
        put(out, at, &(self.error.len() as u32).to_le_bytes());
        put(out, at, self.error.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.status = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
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
impl Canonical for Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response {
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
/// Complete bounded value for ROS2 uwvm_fourier_bridge/srv/SetMotorCfgPd_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request {
    /// Declared sequence; canonical bounds are part of CODEC_IDENTITY.
    pub sequence: u64,
    /// Declared kp; canonical bounds are part of CODEC_IDENTITY.
    pub kp: Vec<Ros2Uwvm_fourier_bridgeMsgGroupValues>,
    /// Declared kd; canonical bounds are part of CODEC_IDENTITY.
    pub kd: Vec<Ros2Uwvm_fourier_bridgeMsgGroupValues>,
}
impl Default for Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request {
    fn default() -> Self {
        Self {
            sequence: Default::default(),
            kp: Default::default(),
            kd: Default::default(),
        }
    }
}
impl Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request {
    pub const MAX_WIRE_BYTES: usize = 10384;
    pub const CARTESIAN_WIRE_BYTES: u64 = 10384;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_0e5ee74f7eaed206d45a883b2fe8ddeda407edf921aa31c4f2d04462479324de";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 8)?;
        if self.kp.len() > 8 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.kp {
            n = add_size(n, element.wire_size()?)?;
        }
        if self.kd.len() > 8 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.kd {
            n = add_size(n, element.wire_size()?)?;
        }
        if n > 10384 {
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
        put(out, at, &self.sequence.to_le_bytes());
        put(out, at, &(self.kp.len() as u32).to_le_bytes());
        for element in &self.kp {
            element.write_fields(out, at);
        }
        put(out, at, &(self.kd.len() as u32).to_le_bytes());
        for element in &self.kd {
            element.write_fields(out, at);
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        value.sequence = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 8 {
                return Err(invalid());
            }
            value.kp = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros2Uwvm_fourier_bridgeMsgGroupValues::read_fields(bytes, at)?;
                value.kp.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 8 {
                return Err(invalid());
            }
            value.kd = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros2Uwvm_fourier_bridgeMsgGroupValues::read_fields(bytes, at)?;
                value.kd.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 10384 {
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
/// Complete bounded value for ROS2 uwvm_fourier_bridge/srv/SetMotorCfgPd_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response {
    /// Declared status; canonical bounds are part of CODEC_IDENTITY.
    pub status: u32,
    /// Declared error; canonical bounds are part of CODEC_IDENTITY.
    pub error: String,
}
impl Default for Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response {
    fn default() -> Self {
        Self {
            status: Default::default(),
            error: Default::default(),
        }
    }
}
impl Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response {
    pub const MAX_WIRE_BYTES: usize = 136;
    pub const CARTESIAN_WIRE_BYTES: u64 = 136;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_dc86ac23016dc2d81dd5a69d3a6bcd96db09e1012f8f86e9fe4adcb38dabc804";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 4)?;
        if self.error.len() > 128 || self.error.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.error.len())?;
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
        put(out, at, &self.status.to_le_bytes());
        put(out, at, &(self.error.len() as u32).to_le_bytes());
        put(out, at, self.error.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.status = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
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
impl Canonical for Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response {
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
/// Complete bounded value for ROS2 uwvm_fourier_bridge/srv/SetStandPose_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request {
    /// Declared sequence; canonical bounds are part of CODEC_IDENTITY.
    pub sequence: u64,
    /// Declared delta_z; canonical bounds are part of CODEC_IDENTITY.
    pub delta_z: f64,
    /// Declared delta_pitch; canonical bounds are part of CODEC_IDENTITY.
    pub delta_pitch: f64,
    /// Declared delta_yaw; canonical bounds are part of CODEC_IDENTITY.
    pub delta_yaw: f64,
}
impl Default for Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request {
    fn default() -> Self {
        Self {
            sequence: Default::default(),
            delta_z: Default::default(),
            delta_pitch: Default::default(),
            delta_yaw: Default::default(),
        }
    }
}
impl Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request {
    pub const MAX_WIRE_BYTES: usize = 32;
    pub const CARTESIAN_WIRE_BYTES: u64 = 32;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_21e410d17dac9b44b02507adc3752236def8ad2bc9e251b64114a7f757577211";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 8)?;
        if !self.delta_z.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.delta_pitch.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.delta_yaw.is_finite() {
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
        put(out, at, &self.sequence.to_le_bytes());
        put(out, at, &self.delta_z.to_le_bytes());
        put(out, at, &self.delta_pitch.to_le_bytes());
        put(out, at, &self.delta_yaw.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        value.sequence = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.delta_z = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.delta_pitch = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.delta_yaw = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request {
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
/// Complete bounded value for ROS2 uwvm_fourier_bridge/srv/SetStandPose_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response {
    /// Declared status; canonical bounds are part of CODEC_IDENTITY.
    pub status: u32,
    /// Declared error; canonical bounds are part of CODEC_IDENTITY.
    pub error: String,
}
impl Default for Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response {
    fn default() -> Self {
        Self {
            status: Default::default(),
            error: Default::default(),
        }
    }
}
impl Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response {
    pub const MAX_WIRE_BYTES: usize = 136;
    pub const CARTESIAN_WIRE_BYTES: u64 = 136;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_9b3ea0a1868a4672f1ca95ac2cd43e31eeaa9f059c4194a2205b5df1cf09291f";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 4)?;
        if self.error.len() > 128 || self.error.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.error.len())?;
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
        put(out, at, &self.status.to_le_bytes());
        put(out, at, &(self.error.len() as u32).to_le_bytes());
        put(out, at, self.error.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.status = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
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
impl Canonical for Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response {
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
/// Complete bounded value for ROS2 uwvm_fourier_bridge/srv/SetUpperFsmState_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request {
    /// Declared sequence; canonical bounds are part of CODEC_IDENTITY.
    pub sequence: u64,
    /// Declared state; canonical bounds are part of CODEC_IDENTITY.
    pub state: i32,
}
impl Default for Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request {
    fn default() -> Self {
        Self {
            sequence: Default::default(),
            state: Default::default(),
        }
    }
}
impl Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request {
    pub const MAX_WIRE_BYTES: usize = 12;
    pub const CARTESIAN_WIRE_BYTES: u64 = 12;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_9742535e908c4d9640af2c7432a91e65e76f3a442c265ef9255df599227a4182";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 8)?;
        n = add_size(n, 4)?;
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
        put(out, at, &self.sequence.to_le_bytes());
        put(out, at, &self.state.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        value.sequence = decoded;
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.state = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request {
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
/// Complete bounded value for ROS2 uwvm_fourier_bridge/srv/SetUpperFsmState_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response {
    /// Declared status; canonical bounds are part of CODEC_IDENTITY.
    pub status: u32,
    /// Declared error; canonical bounds are part of CODEC_IDENTITY.
    pub error: String,
}
impl Default for Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response {
    fn default() -> Self {
        Self {
            status: Default::default(),
            error: Default::default(),
        }
    }
}
impl Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response {
    pub const MAX_WIRE_BYTES: usize = 136;
    pub const CARTESIAN_WIRE_BYTES: u64 = 136;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_8247b198b8a857c16d15f248da2ac705ff2fd6b596f8c148c316025cd917c9f8";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 4)?;
        if self.error.len() > 128 || self.error.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.error.len())?;
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
        put(out, at, &self.status.to_le_bytes());
        put(out, at, &(self.error.len() as u32).to_le_bytes());
        put(out, at, self.error.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.status = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
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
impl Canonical for Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response {
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
/// Complete bounded value for ROS2 uwvm_fourier_bridge/srv/SetVelocity_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request {
    /// Declared sequence; canonical bounds are part of CODEC_IDENTITY.
    pub sequence: u64,
    /// Declared vx; canonical bounds are part of CODEC_IDENTITY.
    pub vx: f64,
    /// Declared vy; canonical bounds are part of CODEC_IDENTITY.
    pub vy: f64,
    /// Declared yaw; canonical bounds are part of CODEC_IDENTITY.
    pub yaw: f64,
    /// Declared duration; canonical bounds are part of CODEC_IDENTITY.
    pub duration: f64,
}
impl Default for Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request {
    fn default() -> Self {
        Self {
            sequence: Default::default(),
            vx: Default::default(),
            vy: Default::default(),
            yaw: Default::default(),
            duration: Default::default(),
        }
    }
}
impl Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request {
    pub const MAX_WIRE_BYTES: usize = 40;
    pub const CARTESIAN_WIRE_BYTES: u64 = 40;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_7d81116c1df184dc948db4bcba368ae3ea118f3c27418ee44bd0ceb6347cee44";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 8)?;
        if !self.vx.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.vy.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.yaw.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.duration.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
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
        put(out, at, &self.sequence.to_le_bytes());
        put(out, at, &self.vx.to_le_bytes());
        put(out, at, &self.vy.to_le_bytes());
        put(out, at, &self.yaw.to_le_bytes());
        put(out, at, &self.duration.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        value.sequence = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.vx = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.vy = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.yaw = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.duration = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request {
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
/// Complete bounded value for ROS2 uwvm_fourier_bridge/srv/SetVelocity_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response {
    /// Declared status; canonical bounds are part of CODEC_IDENTITY.
    pub status: u32,
    /// Declared error; canonical bounds are part of CODEC_IDENTITY.
    pub error: String,
}
impl Default for Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response {
    fn default() -> Self {
        Self {
            status: Default::default(),
            error: Default::default(),
        }
    }
}
impl Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response {
    pub const MAX_WIRE_BYTES: usize = 136;
    pub const CARTESIAN_WIRE_BYTES: u64 = 136;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_fa76b58061fed9672c09c5a110ebd3dc3dcdfde38da662338a48c0cf00250307";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 4)?;
        if self.error.len() > 128 || self.error.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.error.len())?;
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
        put(out, at, &self.status.to_le_bytes());
        put(out, at, &(self.error.len() as u32).to_le_bytes());
        put(out, at, self.error.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.status = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
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
impl Canonical for Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response {
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
/// Complete bounded value for ROS2 uwvm_fourier_bridge/srv/SetVelocitySource_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request {
    /// Declared sequence; canonical bounds are part of CODEC_IDENTITY.
    pub sequence: u64,
    /// Declared source; canonical bounds are part of CODEC_IDENTITY.
    pub source: i32,
}
impl Default for Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request {
    fn default() -> Self {
        Self {
            sequence: Default::default(),
            source: Default::default(),
        }
    }
}
impl Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request {
    pub const MAX_WIRE_BYTES: usize = 12;
    pub const CARTESIAN_WIRE_BYTES: u64 = 12;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_5e31cdd231ecbb30ece49edc211860b6be67c9e74839a328f37a46231e41271c";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 8)?;
        n = add_size(n, 4)?;
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
        put(out, at, &self.sequence.to_le_bytes());
        put(out, at, &self.source.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        value.sequence = decoded;
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.source = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request {
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
/// Complete bounded value for ROS2 uwvm_fourier_bridge/srv/SetVelocitySource_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response {
    /// Declared status; canonical bounds are part of CODEC_IDENTITY.
    pub status: u32,
    /// Declared error; canonical bounds are part of CODEC_IDENTITY.
    pub error: String,
}
impl Default for Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response {
    fn default() -> Self {
        Self {
            status: Default::default(),
            error: Default::default(),
        }
    }
}
impl Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response {
    pub const MAX_WIRE_BYTES: usize = 136;
    pub const CARTESIAN_WIRE_BYTES: u64 = 136;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_9eb723e979b56e4a2dff53e026a3cab3cd0ddd4752c85e9b3ca08332e7a0eea7";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 4)?;
        if self.error.len() > 128 || self.error.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.error.len())?;
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
        put(out, at, &self.status.to_le_bytes());
        put(out, at, &(self.error.len() as u32).to_le_bytes());
        put(out, at, self.error.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.status = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
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
impl Canonical for Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response {
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
/// Complete bounded value for ROS2 uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request {
    /// Declared sequence; canonical bounds are part of CODEC_IDENTITY.
    pub sequence: u64,
    /// Declared groups; canonical bounds are part of CODEC_IDENTITY.
    pub groups: Vec<String>,
    /// Declared timeout_seconds; canonical bounds are part of CODEC_IDENTITY.
    pub timeout_seconds: f64,
    /// Declared poll_seconds; canonical bounds are part of CODEC_IDENTITY.
    pub poll_seconds: f64,
}
impl Default for Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request {
    fn default() -> Self {
        Self {
            sequence: Default::default(),
            groups: Default::default(),
            timeout_seconds: Default::default(),
            poll_seconds: Default::default(),
        }
    }
}
impl Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request {
    pub const MAX_WIRE_BYTES: usize = 1084;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1084;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_c6abe539be15088e34d76cb243ddd814fd6781baa7bf623949f1fb03651ef202";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 8)?;
        if self.groups.len() > 8 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.groups {
            if element.len() > 128 || element.as_bytes().contains(&0) {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
            n = add_size(n, element.len())?;
        }
        if !self.timeout_seconds.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.poll_seconds.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if n > 1084 {
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
        put(out, at, &self.sequence.to_le_bytes());
        put(out, at, &(self.groups.len() as u32).to_le_bytes());
        for element in &self.groups {
            put(out, at, &(element.len() as u32).to_le_bytes());
            put(out, at, element.as_bytes());
        }
        put(out, at, &self.timeout_seconds.to_le_bytes());
        put(out, at, &self.poll_seconds.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        value.sequence = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 8 {
                return Err(invalid());
            }
            value.groups = Vec::with_capacity(count);
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
                value.groups.push(decoded);
            }
        }
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.timeout_seconds = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.poll_seconds = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 1084 {
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
/// Complete bounded value for ROS2 uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response {
    /// Declared status; canonical bounds are part of CODEC_IDENTITY.
    pub status: u32,
    /// Declared error; canonical bounds are part of CODEC_IDENTITY.
    pub error: String,
    /// Declared complete; canonical bounds are part of CODEC_IDENTITY.
    pub complete: bool,
}
impl Default for Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response {
    fn default() -> Self {
        Self {
            status: Default::default(),
            error: Default::default(),
            complete: Default::default(),
        }
    }
}
impl Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response {
    pub const MAX_WIRE_BYTES: usize = 137;
    pub const CARTESIAN_WIRE_BYTES: u64 = 137;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_19184faa294d8dae790908044ff067851cde1074e1228a32b19320b6cc94a74f";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 4)?;
        if self.error.len() > 128 || self.error.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.error.len())?;
        n = add_size(n, 1)?;
        if n > 137 {
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
        put(out, at, &self.status.to_le_bytes());
        put(out, at, &(self.error.len() as u32).to_le_bytes());
        put(out, at, self.error.as_bytes());
        put(out, at, &[u8::from(self.complete)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.status = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.error = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.complete = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 137 {
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
