// @file bounded_records.rs
// @brief Full leju rs codecs and original record metadata.
// @details Complete leju ros1_master_unregistered_dtos values in rs. 2 original records retain 5 fields and 2
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
/// Complete bounded value for ROS1 kuavo_sdk/qv.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Kuavo_sdkQv {
    /// Declared value; canonical bounds are part of CODEC_IDENTITY.
    pub value: Vec<f64>,
}
impl Default for Ros1Kuavo_sdkQv {
    fn default() -> Self {
        Self {
            value: Default::default(),
        }
    }
}
impl Ros1Kuavo_sdkQv {
    pub const MAX_WIRE_BYTES: usize = 132;
    pub const CARTESIAN_WIRE_BYTES: u64 = 132;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_99d76f2c912c99d52786d5e2aa42bb256e1a6c997d3cf9daa2a6918697563e32";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.value.len() > 16 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.value {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
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
        put(out, at, &(self.value.len() as u32).to_le_bytes());
        for element in &self.value {
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
            value.value = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.value.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros1Kuavo_sdkQv {
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
/// Complete bounded value for ROS1 kuavo_sdk/fullBodyTargetTrajectories.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Kuavo_sdkFullBodyTargetTrajectories {
    /// Declared timeTrajectory; canonical bounds are part of CODEC_IDENTITY.
    pub timeTrajectory: Vec<f64>,
    /// Declared footIndexTrajectory; canonical bounds are part of CODEC_IDENTITY.
    pub footIndexTrajectory: Vec<i32>,
    /// Declared fullBodyQTrajectory; canonical bounds are part of CODEC_IDENTITY.
    pub fullBodyQTrajectory: Vec<Ros1Kuavo_sdkQv>,
    /// Declared fullBodyVTrajectory; canonical bounds are part of CODEC_IDENTITY.
    pub fullBodyVTrajectory: Vec<Ros1Kuavo_sdkQv>,
}
impl Default for Ros1Kuavo_sdkFullBodyTargetTrajectories {
    fn default() -> Self {
        Self {
            timeTrajectory: Default::default(),
            footIndexTrajectory: Default::default(),
            fullBodyQTrajectory: Default::default(),
            fullBodyVTrajectory: Default::default(),
        }
    }
}
impl Ros1Kuavo_sdkFullBodyTargetTrajectories {
    pub const MAX_WIRE_BYTES: usize = 2320;
    pub const CARTESIAN_WIRE_BYTES: u64 = 2320;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_670fdba890f7bf41db3f446366ef88d583de4966c54a58646b74ebdd07bbfb32";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.timeTrajectory.len() > 16 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.timeTrajectory {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if self.footIndexTrajectory.len() > 16 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.footIndexTrajectory {
            n = add_size(n, 4)?;
        }
        if self.fullBodyQTrajectory.len() > 8 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.fullBodyQTrajectory {
            n = add_size(n, element.wire_size()?)?;
        }
        if self.fullBodyVTrajectory.len() > 8 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.fullBodyVTrajectory {
            n = add_size(n, element.wire_size()?)?;
        }
        if n > 2320 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
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
        put(out, at, &(self.timeTrajectory.len() as u32).to_le_bytes());
        for element in &self.timeTrajectory {
            put(out, at, &element.to_le_bytes());
        }
        put(
            out,
            at,
            &(self.footIndexTrajectory.len() as u32).to_le_bytes(),
        );
        for element in &self.footIndexTrajectory {
            put(out, at, &element.to_le_bytes());
        }
        put(
            out,
            at,
            &(self.fullBodyQTrajectory.len() as u32).to_le_bytes(),
        );
        for element in &self.fullBodyQTrajectory {
            element.write_fields(out, at);
        }
        put(
            out,
            at,
            &(self.fullBodyVTrajectory.len() as u32).to_le_bytes(),
        );
        for element in &self.fullBodyVTrajectory {
            element.write_fields(out, at);
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = read_count(bytes, at)?;
            if count > 16 {
                return Err(invalid());
            }
            value.timeTrajectory = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.timeTrajectory.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 16 {
                return Err(invalid());
            }
            value.footIndexTrajectory = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                value.footIndexTrajectory.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 8 {
                return Err(invalid());
            }
            value.fullBodyQTrajectory = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros1Kuavo_sdkQv::read_fields(bytes, at)?;
                value.fullBodyQTrajectory.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 8 {
                return Err(invalid());
            }
            value.fullBodyVTrajectory = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros1Kuavo_sdkQv::read_fields(bytes, at)?;
                value.fullBodyVTrajectory.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros1Kuavo_sdkFullBodyTargetTrajectories {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 2320 {
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
