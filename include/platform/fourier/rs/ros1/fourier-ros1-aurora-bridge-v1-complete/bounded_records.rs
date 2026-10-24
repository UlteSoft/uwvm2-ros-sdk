// @file bounded_records.rs
// @brief Full fourier rs codecs and original record metadata.
// @details Complete fourier ros1_aurora_bridge_v1 values in rs. 51 original records retain 138 fields and 28
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
/// Complete bounded value for ROS1 uwvm_fourier_bridge/MotionRecipe.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Uwvm_fourier_bridgeMotionRecipe {
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
impl Default for Ros1Uwvm_fourier_bridgeMotionRecipe {
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
impl Ros1Uwvm_fourier_bridgeMotionRecipe {
    pub const MAX_WIRE_BYTES: usize = 1170;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1170;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_f154f5af7297a77af5c7ab98bc78c54cb0163760dfe7b1eadedb02318cfbfd8a";
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
impl Canonical for Ros1Uwvm_fourier_bridgeMotionRecipe {
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
/// Complete bounded value for ROS1 uwvm_fourier_bridge/ExecuteMoveRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Uwvm_fourier_bridgeExecuteMoveRequest {
    /// Declared sequence; canonical bounds are part of CODEC_IDENTITY.
    pub sequence: u64,
    /// Declared moves; canonical bounds are part of CODEC_IDENTITY.
    pub moves: Vec<Ros1Uwvm_fourier_bridgeMotionRecipe>,
}
impl Default for Ros1Uwvm_fourier_bridgeExecuteMoveRequest {
    fn default() -> Self {
        Self {
            sequence: Default::default(),
            moves: Default::default(),
        }
    }
}
impl Ros1Uwvm_fourier_bridgeExecuteMoveRequest {
    pub const MAX_WIRE_BYTES: usize = 9372;
    pub const CARTESIAN_WIRE_BYTES: u64 = 9372;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_25e369f6b32bdc9983664fd4d857000a6a664364cb8bd0ff3d123cbc3c87e61b";
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
                let decoded = Ros1Uwvm_fourier_bridgeMotionRecipe::read_fields(bytes, at)?;
                value.moves.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros1Uwvm_fourier_bridgeExecuteMoveRequest {
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
/// Complete bounded value for ROS1 uwvm_fourier_bridge/ExecuteMoveResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Uwvm_fourier_bridgeExecuteMoveResponse {
    /// Declared status; canonical bounds are part of CODEC_IDENTITY.
    pub status: u32,
    /// Declared error; canonical bounds are part of CODEC_IDENTITY.
    pub error: String,
}
impl Default for Ros1Uwvm_fourier_bridgeExecuteMoveResponse {
    fn default() -> Self {
        Self {
            status: Default::default(),
            error: Default::default(),
        }
    }
}
impl Ros1Uwvm_fourier_bridgeExecuteMoveResponse {
    pub const MAX_WIRE_BYTES: usize = 136;
    pub const CARTESIAN_WIRE_BYTES: u64 = 136;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_9a801e77130d12c30d67a874cb1e8c5a7cc912a2968af304d1cfd263e6242115";
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
impl Canonical for Ros1Uwvm_fourier_bridgeExecuteMoveResponse {
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
/// Complete bounded value for ROS1 uwvm_fourier_bridge/GetBaseDataRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Uwvm_fourier_bridgeGetBaseDataRequest {
    /// Declared sequence; canonical bounds are part of CODEC_IDENTITY.
    pub sequence: u64,
    /// Declared key; canonical bounds are part of CODEC_IDENTITY.
    pub key: String,
}
impl Default for Ros1Uwvm_fourier_bridgeGetBaseDataRequest {
    fn default() -> Self {
        Self {
            sequence: Default::default(),
            key: Default::default(),
        }
    }
}
impl Ros1Uwvm_fourier_bridgeGetBaseDataRequest {
    pub const MAX_WIRE_BYTES: usize = 140;
    pub const CARTESIAN_WIRE_BYTES: u64 = 140;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_17883b19f1dcc3d68263b6196eb5ec7afb8c902b8ab4f9b7eb66a58ef5e78528";
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
impl Canonical for Ros1Uwvm_fourier_bridgeGetBaseDataRequest {
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
/// Complete bounded value for ROS1 uwvm_fourier_bridge/GetBaseDataResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Uwvm_fourier_bridgeGetBaseDataResponse {
    /// Declared status; canonical bounds are part of CODEC_IDENTITY.
    pub status: u32,
    /// Declared error; canonical bounds are part of CODEC_IDENTITY.
    pub error: String,
    /// Declared values; canonical bounds are part of CODEC_IDENTITY.
    pub values: Vec<f64>,
}
impl Default for Ros1Uwvm_fourier_bridgeGetBaseDataResponse {
    fn default() -> Self {
        Self {
            status: Default::default(),
            error: Default::default(),
            values: Default::default(),
        }
    }
}
impl Ros1Uwvm_fourier_bridgeGetBaseDataResponse {
    pub const MAX_WIRE_BYTES: usize = 652;
    pub const CARTESIAN_WIRE_BYTES: u64 = 652;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_e8928e07d6dd18cfa8a7031e0a947fa6b2f36bb608f5d2178ec01b92bb78b79a";
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
impl Canonical for Ros1Uwvm_fourier_bridgeGetBaseDataResponse {
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
/// Complete bounded value for ROS1 uwvm_fourier_bridge/GetCartesianStateRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Uwvm_fourier_bridgeGetCartesianStateRequest {
    /// Declared sequence; canonical bounds are part of CODEC_IDENTITY.
    pub sequence: u64,
    /// Declared group; canonical bounds are part of CODEC_IDENTITY.
    pub group: String,
    /// Declared key; canonical bounds are part of CODEC_IDENTITY.
    pub key: String,
}
impl Default for Ros1Uwvm_fourier_bridgeGetCartesianStateRequest {
    fn default() -> Self {
        Self {
            sequence: Default::default(),
            group: Default::default(),
            key: Default::default(),
        }
    }
}
impl Ros1Uwvm_fourier_bridgeGetCartesianStateRequest {
    pub const MAX_WIRE_BYTES: usize = 272;
    pub const CARTESIAN_WIRE_BYTES: u64 = 272;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_658626f7fbd0f788149208230f03cef299bcb2a6ca4cf96d4e3af807d9b336ae";
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
impl Canonical for Ros1Uwvm_fourier_bridgeGetCartesianStateRequest {
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
/// Complete bounded value for ROS1 uwvm_fourier_bridge/GetCartesianStateResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Uwvm_fourier_bridgeGetCartesianStateResponse {
    /// Declared status; canonical bounds are part of CODEC_IDENTITY.
    pub status: u32,
    /// Declared error; canonical bounds are part of CODEC_IDENTITY.
    pub error: String,
    /// Declared values; canonical bounds are part of CODEC_IDENTITY.
    pub values: Vec<f64>,
}
impl Default for Ros1Uwvm_fourier_bridgeGetCartesianStateResponse {
    fn default() -> Self {
        Self {
            status: Default::default(),
            error: Default::default(),
            values: Default::default(),
        }
    }
}
impl Ros1Uwvm_fourier_bridgeGetCartesianStateResponse {
    pub const MAX_WIRE_BYTES: usize = 652;
    pub const CARTESIAN_WIRE_BYTES: u64 = 652;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_a4fcd5f01a992b9aed4089b2c77ecda4656fe9aeb11c40777603805af964f671";
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
impl Canonical for Ros1Uwvm_fourier_bridgeGetCartesianStateResponse {
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
/// Complete bounded value for ROS1 uwvm_fourier_bridge/GetContactDataRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Uwvm_fourier_bridgeGetContactDataRequest {
    /// Declared sequence; canonical bounds are part of CODEC_IDENTITY.
    pub sequence: u64,
    /// Declared key; canonical bounds are part of CODEC_IDENTITY.
    pub key: String,
}
impl Default for Ros1Uwvm_fourier_bridgeGetContactDataRequest {
    fn default() -> Self {
        Self {
            sequence: Default::default(),
            key: Default::default(),
        }
    }
}
impl Ros1Uwvm_fourier_bridgeGetContactDataRequest {
    pub const MAX_WIRE_BYTES: usize = 140;
    pub const CARTESIAN_WIRE_BYTES: u64 = 140;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_38d1fa3409948748e19fdff39259fbb51503a98e03e996addb560cb404931787";
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
impl Canonical for Ros1Uwvm_fourier_bridgeGetContactDataRequest {
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
/// Complete bounded value for ROS1 uwvm_fourier_bridge/GetContactDataResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Uwvm_fourier_bridgeGetContactDataResponse {
    /// Declared status; canonical bounds are part of CODEC_IDENTITY.
    pub status: u32,
    /// Declared error; canonical bounds are part of CODEC_IDENTITY.
    pub error: String,
    /// Declared values; canonical bounds are part of CODEC_IDENTITY.
    pub values: Vec<f64>,
}
impl Default for Ros1Uwvm_fourier_bridgeGetContactDataResponse {
    fn default() -> Self {
        Self {
            status: Default::default(),
            error: Default::default(),
            values: Default::default(),
        }
    }
}
impl Ros1Uwvm_fourier_bridgeGetContactDataResponse {
    pub const MAX_WIRE_BYTES: usize = 652;
    pub const CARTESIAN_WIRE_BYTES: u64 = 652;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_c4381d31ad73640e2f4302bd200d4507cd5a1a4ca4ee180ad009589864f3f293";
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
impl Canonical for Ros1Uwvm_fourier_bridgeGetContactDataResponse {
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
/// Complete bounded value for ROS1 uwvm_fourier_bridge/GetFsmNameRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Uwvm_fourier_bridgeGetFsmNameRequest {
    /// Declared sequence; canonical bounds are part of CODEC_IDENTITY.
    pub sequence: u64,
}
impl Default for Ros1Uwvm_fourier_bridgeGetFsmNameRequest {
    fn default() -> Self {
        Self {
            sequence: Default::default(),
        }
    }
}
impl Ros1Uwvm_fourier_bridgeGetFsmNameRequest {
    pub const MAX_WIRE_BYTES: usize = 8;
    pub const CARTESIAN_WIRE_BYTES: u64 = 8;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_4257279fd241dee60ef24d1d5ebdcadbc84701b2e8709a6e269d2259b9293b33";
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
impl Canonical for Ros1Uwvm_fourier_bridgeGetFsmNameRequest {
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
/// Complete bounded value for ROS1 uwvm_fourier_bridge/GetFsmNameResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Uwvm_fourier_bridgeGetFsmNameResponse {
    /// Declared status; canonical bounds are part of CODEC_IDENTITY.
    pub status: u32,
    /// Declared error; canonical bounds are part of CODEC_IDENTITY.
    pub error: String,
    /// Declared value; canonical bounds are part of CODEC_IDENTITY.
    pub value: String,
}
impl Default for Ros1Uwvm_fourier_bridgeGetFsmNameResponse {
    fn default() -> Self {
        Self {
            status: Default::default(),
            error: Default::default(),
            value: Default::default(),
        }
    }
}
impl Ros1Uwvm_fourier_bridgeGetFsmNameResponse {
    pub const MAX_WIRE_BYTES: usize = 268;
    pub const CARTESIAN_WIRE_BYTES: u64 = 268;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_9016d706e2afed027dd150f1534e615e551c3f26d581313bb3d36a279e1d7c55";
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
impl Canonical for Ros1Uwvm_fourier_bridgeGetFsmNameResponse {
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
/// Complete bounded value for ROS1 uwvm_fourier_bridge/GetFsmStateRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Uwvm_fourier_bridgeGetFsmStateRequest {
    /// Declared sequence; canonical bounds are part of CODEC_IDENTITY.
    pub sequence: u64,
}
impl Default for Ros1Uwvm_fourier_bridgeGetFsmStateRequest {
    fn default() -> Self {
        Self {
            sequence: Default::default(),
        }
    }
}
impl Ros1Uwvm_fourier_bridgeGetFsmStateRequest {
    pub const MAX_WIRE_BYTES: usize = 8;
    pub const CARTESIAN_WIRE_BYTES: u64 = 8;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_573f497168578dce3680e1d423f64993e9fccf7774cc2fc0db38ccce8286ee3e";
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
impl Canonical for Ros1Uwvm_fourier_bridgeGetFsmStateRequest {
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
/// Complete bounded value for ROS1 uwvm_fourier_bridge/GetFsmStateResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Uwvm_fourier_bridgeGetFsmStateResponse {
    /// Declared status; canonical bounds are part of CODEC_IDENTITY.
    pub status: u32,
    /// Declared error; canonical bounds are part of CODEC_IDENTITY.
    pub error: String,
    /// Declared value; canonical bounds are part of CODEC_IDENTITY.
    pub value: i32,
}
impl Default for Ros1Uwvm_fourier_bridgeGetFsmStateResponse {
    fn default() -> Self {
        Self {
            status: Default::default(),
            error: Default::default(),
            value: Default::default(),
        }
    }
}
impl Ros1Uwvm_fourier_bridgeGetFsmStateResponse {
    pub const MAX_WIRE_BYTES: usize = 140;
    pub const CARTESIAN_WIRE_BYTES: u64 = 140;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_1d25f46d335312a766f3c0a7f410a45f283515396c8c6bfc4a49bcf6bc37a812";
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
impl Canonical for Ros1Uwvm_fourier_bridgeGetFsmStateResponse {
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
/// Complete bounded value for ROS1 uwvm_fourier_bridge/GetGroupMotionStateRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest {
    /// Declared sequence; canonical bounds are part of CODEC_IDENTITY.
    pub sequence: u64,
    /// Declared group; canonical bounds are part of CODEC_IDENTITY.
    pub group: String,
}
impl Default for Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest {
    fn default() -> Self {
        Self {
            sequence: Default::default(),
            group: Default::default(),
        }
    }
}
impl Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest {
    pub const MAX_WIRE_BYTES: usize = 140;
    pub const CARTESIAN_WIRE_BYTES: u64 = 140;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_a2b6c77c903d5d4dc5ca20805e1ed2fa7dfa0852bc3f590638a577cec9d7248f";
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
impl Canonical for Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest {
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
/// Complete bounded value for ROS1 uwvm_fourier_bridge/GetGroupMotionStateResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse {
    /// Declared status; canonical bounds are part of CODEC_IDENTITY.
    pub status: u32,
    /// Declared error; canonical bounds are part of CODEC_IDENTITY.
    pub error: String,
    /// Declared value; canonical bounds are part of CODEC_IDENTITY.
    pub value: i32,
}
impl Default for Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse {
    fn default() -> Self {
        Self {
            status: Default::default(),
            error: Default::default(),
            value: Default::default(),
        }
    }
}
impl Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse {
    pub const MAX_WIRE_BYTES: usize = 140;
    pub const CARTESIAN_WIRE_BYTES: u64 = 140;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_e41b911990c306e8f264f1f9d961b822fb6669ad1ca5ee8f81609ba13a0fc8a2";
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
impl Canonical for Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse {
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
/// Complete bounded value for ROS1 uwvm_fourier_bridge/GetGroupMotorCfgRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest {
    /// Declared sequence; canonical bounds are part of CODEC_IDENTITY.
    pub sequence: u64,
    /// Declared group; canonical bounds are part of CODEC_IDENTITY.
    pub group: String,
    /// Declared key; canonical bounds are part of CODEC_IDENTITY.
    pub key: String,
}
impl Default for Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest {
    fn default() -> Self {
        Self {
            sequence: Default::default(),
            group: Default::default(),
            key: Default::default(),
        }
    }
}
impl Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest {
    pub const MAX_WIRE_BYTES: usize = 272;
    pub const CARTESIAN_WIRE_BYTES: u64 = 272;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_bbcfb5561a970d7d086aa5a3a832dfbd8c3e2c2a9b4c5e9bea8224c6c7fc0576";
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
impl Canonical for Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest {
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
/// Complete bounded value for ROS1 uwvm_fourier_bridge/GetGroupMotorCfgResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse {
    /// Declared status; canonical bounds are part of CODEC_IDENTITY.
    pub status: u32,
    /// Declared error; canonical bounds are part of CODEC_IDENTITY.
    pub error: String,
    /// Declared values; canonical bounds are part of CODEC_IDENTITY.
    pub values: Vec<f64>,
}
impl Default for Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse {
    fn default() -> Self {
        Self {
            status: Default::default(),
            error: Default::default(),
            values: Default::default(),
        }
    }
}
impl Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse {
    pub const MAX_WIRE_BYTES: usize = 652;
    pub const CARTESIAN_WIRE_BYTES: u64 = 652;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_cf7f2a81246842d851104edb7d422ff5342fc65dc56e573d552b10d02c81ad72";
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
impl Canonical for Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse {
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
/// Complete bounded value for ROS1 uwvm_fourier_bridge/GetGroupStateRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Uwvm_fourier_bridgeGetGroupStateRequest {
    /// Declared sequence; canonical bounds are part of CODEC_IDENTITY.
    pub sequence: u64,
    /// Declared group; canonical bounds are part of CODEC_IDENTITY.
    pub group: String,
    /// Declared key; canonical bounds are part of CODEC_IDENTITY.
    pub key: String,
}
impl Default for Ros1Uwvm_fourier_bridgeGetGroupStateRequest {
    fn default() -> Self {
        Self {
            sequence: Default::default(),
            group: Default::default(),
            key: Default::default(),
        }
    }
}
impl Ros1Uwvm_fourier_bridgeGetGroupStateRequest {
    pub const MAX_WIRE_BYTES: usize = 272;
    pub const CARTESIAN_WIRE_BYTES: u64 = 272;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_d24ebea89b1c6e7963c8058109704033c9e1f1f74673732093412c5ac453b8fc";
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
impl Canonical for Ros1Uwvm_fourier_bridgeGetGroupStateRequest {
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
/// Complete bounded value for ROS1 uwvm_fourier_bridge/GetGroupStateResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Uwvm_fourier_bridgeGetGroupStateResponse {
    /// Declared status; canonical bounds are part of CODEC_IDENTITY.
    pub status: u32,
    /// Declared error; canonical bounds are part of CODEC_IDENTITY.
    pub error: String,
    /// Declared values; canonical bounds are part of CODEC_IDENTITY.
    pub values: Vec<f64>,
}
impl Default for Ros1Uwvm_fourier_bridgeGetGroupStateResponse {
    fn default() -> Self {
        Self {
            status: Default::default(),
            error: Default::default(),
            values: Default::default(),
        }
    }
}
impl Ros1Uwvm_fourier_bridgeGetGroupStateResponse {
    pub const MAX_WIRE_BYTES: usize = 652;
    pub const CARTESIAN_WIRE_BYTES: u64 = 652;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_e21f17f91821b5a3154e108d0bcdb027a320b948d32e5637d20745c85edb0acb";
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
impl Canonical for Ros1Uwvm_fourier_bridgeGetGroupStateResponse {
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
/// Complete bounded value for ROS1 uwvm_fourier_bridge/GetSnapshotRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Uwvm_fourier_bridgeGetSnapshotRequest {
    /// Declared sequence; canonical bounds are part of CODEC_IDENTITY.
    pub sequence: u64,
}
impl Default for Ros1Uwvm_fourier_bridgeGetSnapshotRequest {
    fn default() -> Self {
        Self {
            sequence: Default::default(),
        }
    }
}
impl Ros1Uwvm_fourier_bridgeGetSnapshotRequest {
    pub const MAX_WIRE_BYTES: usize = 8;
    pub const CARTESIAN_WIRE_BYTES: u64 = 8;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_384b9be938d41321afe3ef0765bdd442baa4f0c10049efd656c52d5ac1c89d4c";
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
impl Canonical for Ros1Uwvm_fourier_bridgeGetSnapshotRequest {
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
/// Complete bounded value for ROS1 uwvm_fourier_bridge/GroupState.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Uwvm_fourier_bridgeGroupState {
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
impl Default for Ros1Uwvm_fourier_bridgeGroupState {
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
impl Ros1Uwvm_fourier_bridgeGroupState {
    pub const MAX_WIRE_BYTES: usize = 1684;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1684;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_473838de7c48b3719be265fd7c7554bb35a8a1a111e2e9290953d6a660650855";
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
impl Canonical for Ros1Uwvm_fourier_bridgeGroupState {
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
/// Complete bounded value for ROS1 uwvm_fourier_bridge/Status.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Uwvm_fourier_bridgeStatus {
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
    pub groups: Vec<Ros1Uwvm_fourier_bridgeGroupState>,
}
impl Default for Ros1Uwvm_fourier_bridgeStatus {
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
impl Ros1Uwvm_fourier_bridgeStatus {
    pub const MAX_WIRE_BYTES: usize = 14400;
    pub const CARTESIAN_WIRE_BYTES: u64 = 14400;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_b08737c90dd86078c8ef968fc86b5b77562148b569cd8c271195c7b758190e3e";
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
                let decoded = Ros1Uwvm_fourier_bridgeGroupState::read_fields(bytes, at)?;
                value.groups.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros1Uwvm_fourier_bridgeStatus {
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
/// Complete bounded value for ROS1 uwvm_fourier_bridge/GetSnapshotResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Uwvm_fourier_bridgeGetSnapshotResponse {
    /// Declared status; canonical bounds are part of CODEC_IDENTITY.
    pub status: u32,
    /// Declared error; canonical bounds are part of CODEC_IDENTITY.
    pub error: String,
    /// Declared value; canonical bounds are part of CODEC_IDENTITY.
    pub value: Ros1Uwvm_fourier_bridgeStatus,
}
impl Default for Ros1Uwvm_fourier_bridgeGetSnapshotResponse {
    fn default() -> Self {
        Self {
            status: Default::default(),
            error: Default::default(),
            value: Default::default(),
        }
    }
}
impl Ros1Uwvm_fourier_bridgeGetSnapshotResponse {
    pub const MAX_WIRE_BYTES: usize = 14536;
    pub const CARTESIAN_WIRE_BYTES: u64 = 14536;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_3b8b79195d53d3e0d22ac318e8f0898cb774cfaed35bebbc5210288273137c6a";
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
        let decoded = Ros1Uwvm_fourier_bridgeStatus::read_fields(bytes, at)?;
        value.value = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Uwvm_fourier_bridgeGetSnapshotResponse {
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
/// Complete bounded value for ROS1 uwvm_fourier_bridge/GetStandPoseRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Uwvm_fourier_bridgeGetStandPoseRequest {
    /// Declared sequence; canonical bounds are part of CODEC_IDENTITY.
    pub sequence: u64,
}
impl Default for Ros1Uwvm_fourier_bridgeGetStandPoseRequest {
    fn default() -> Self {
        Self {
            sequence: Default::default(),
        }
    }
}
impl Ros1Uwvm_fourier_bridgeGetStandPoseRequest {
    pub const MAX_WIRE_BYTES: usize = 8;
    pub const CARTESIAN_WIRE_BYTES: u64 = 8;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_5c3b18c383a9a9a162bf3b656007f56e791c26125e0dc59fd8dc87bd3ef54738";
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
impl Canonical for Ros1Uwvm_fourier_bridgeGetStandPoseRequest {
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
/// Complete bounded value for ROS1 uwvm_fourier_bridge/GetStandPoseResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Uwvm_fourier_bridgeGetStandPoseResponse {
    /// Declared status; canonical bounds are part of CODEC_IDENTITY.
    pub status: u32,
    /// Declared error; canonical bounds are part of CODEC_IDENTITY.
    pub error: String,
    /// Declared values; canonical bounds are part of CODEC_IDENTITY.
    pub values: Vec<f64>,
}
impl Default for Ros1Uwvm_fourier_bridgeGetStandPoseResponse {
    fn default() -> Self {
        Self {
            status: Default::default(),
            error: Default::default(),
            values: Default::default(),
        }
    }
}
impl Ros1Uwvm_fourier_bridgeGetStandPoseResponse {
    pub const MAX_WIRE_BYTES: usize = 652;
    pub const CARTESIAN_WIRE_BYTES: u64 = 652;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_302692ae2e86c23efb3edf132e0b7a6e48fc2072a34bb941039db459f99cd15d";
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
impl Canonical for Ros1Uwvm_fourier_bridgeGetStandPoseResponse {
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
/// Complete bounded value for ROS1 uwvm_fourier_bridge/GetUpperFsmNameRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest {
    /// Declared sequence; canonical bounds are part of CODEC_IDENTITY.
    pub sequence: u64,
}
impl Default for Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest {
    fn default() -> Self {
        Self {
            sequence: Default::default(),
        }
    }
}
impl Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest {
    pub const MAX_WIRE_BYTES: usize = 8;
    pub const CARTESIAN_WIRE_BYTES: u64 = 8;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_57fbba93abe5e136ae1522ad47155377e8a55ddaa3f02793e8a605e3b596115a";
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
impl Canonical for Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest {
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
/// Complete bounded value for ROS1 uwvm_fourier_bridge/GetUpperFsmNameResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse {
    /// Declared status; canonical bounds are part of CODEC_IDENTITY.
    pub status: u32,
    /// Declared error; canonical bounds are part of CODEC_IDENTITY.
    pub error: String,
    /// Declared value; canonical bounds are part of CODEC_IDENTITY.
    pub value: String,
}
impl Default for Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse {
    fn default() -> Self {
        Self {
            status: Default::default(),
            error: Default::default(),
            value: Default::default(),
        }
    }
}
impl Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse {
    pub const MAX_WIRE_BYTES: usize = 268;
    pub const CARTESIAN_WIRE_BYTES: u64 = 268;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_e98befbd1c290a3cb2c99facb33334ac0d908db39247d869d0715c024e75c7fe";
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
impl Canonical for Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse {
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
/// Complete bounded value for ROS1 uwvm_fourier_bridge/GetUpperFsmStateRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest {
    /// Declared sequence; canonical bounds are part of CODEC_IDENTITY.
    pub sequence: u64,
}
impl Default for Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest {
    fn default() -> Self {
        Self {
            sequence: Default::default(),
        }
    }
}
impl Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest {
    pub const MAX_WIRE_BYTES: usize = 8;
    pub const CARTESIAN_WIRE_BYTES: u64 = 8;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_d38f791d76cec09de5bfa0b32d88d987ec3b077408682519f4c23940c4af0d12";
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
impl Canonical for Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest {
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
/// Complete bounded value for ROS1 uwvm_fourier_bridge/GetUpperFsmStateResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse {
    /// Declared status; canonical bounds are part of CODEC_IDENTITY.
    pub status: u32,
    /// Declared error; canonical bounds are part of CODEC_IDENTITY.
    pub error: String,
    /// Declared value; canonical bounds are part of CODEC_IDENTITY.
    pub value: i32,
}
impl Default for Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse {
    fn default() -> Self {
        Self {
            status: Default::default(),
            error: Default::default(),
            value: Default::default(),
        }
    }
}
impl Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse {
    pub const MAX_WIRE_BYTES: usize = 140;
    pub const CARTESIAN_WIRE_BYTES: u64 = 140;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_3864ff479fa6b85dffd39e772e3260f9e5094cf8179f98c2184a09971d577e71";
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
impl Canonical for Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse {
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
/// Complete bounded value for ROS1 uwvm_fourier_bridge/GetVelocitySourceRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest {
    /// Declared sequence; canonical bounds are part of CODEC_IDENTITY.
    pub sequence: u64,
}
impl Default for Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest {
    fn default() -> Self {
        Self {
            sequence: Default::default(),
        }
    }
}
impl Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest {
    pub const MAX_WIRE_BYTES: usize = 8;
    pub const CARTESIAN_WIRE_BYTES: u64 = 8;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_e38af8b3fc5b65c6f364f5949b42d694d7012d32d900f55e08b87d08bcf83042";
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
impl Canonical for Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest {
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
/// Complete bounded value for ROS1 uwvm_fourier_bridge/GetVelocitySourceResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse {
    /// Declared status; canonical bounds are part of CODEC_IDENTITY.
    pub status: u32,
    /// Declared error; canonical bounds are part of CODEC_IDENTITY.
    pub error: String,
    /// Declared value; canonical bounds are part of CODEC_IDENTITY.
    pub value: i32,
}
impl Default for Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse {
    fn default() -> Self {
        Self {
            status: Default::default(),
            error: Default::default(),
            value: Default::default(),
        }
    }
}
impl Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse {
    pub const MAX_WIRE_BYTES: usize = 140;
    pub const CARTESIAN_WIRE_BYTES: u64 = 140;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_5bf809b889573acff549030cda017455303b009379d495aa7c3ab4399c862f60";
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
impl Canonical for Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse {
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
/// Complete bounded value for ROS1 uwvm_fourier_bridge/GetVelocitySourceNameRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest {
    /// Declared sequence; canonical bounds are part of CODEC_IDENTITY.
    pub sequence: u64,
}
impl Default for Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest {
    fn default() -> Self {
        Self {
            sequence: Default::default(),
        }
    }
}
impl Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest {
    pub const MAX_WIRE_BYTES: usize = 8;
    pub const CARTESIAN_WIRE_BYTES: u64 = 8;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_a880cea6f506d0670df709e9e86726272e242bd969b5917a9698efa2f6dd897b";
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
impl Canonical for Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest {
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
/// Complete bounded value for ROS1 uwvm_fourier_bridge/GetVelocitySourceNameResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse {
    /// Declared status; canonical bounds are part of CODEC_IDENTITY.
    pub status: u32,
    /// Declared error; canonical bounds are part of CODEC_IDENTITY.
    pub error: String,
    /// Declared value; canonical bounds are part of CODEC_IDENTITY.
    pub value: String,
}
impl Default for Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse {
    fn default() -> Self {
        Self {
            status: Default::default(),
            error: Default::default(),
            value: Default::default(),
        }
    }
}
impl Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse {
    pub const MAX_WIRE_BYTES: usize = 268;
    pub const CARTESIAN_WIRE_BYTES: u64 = 268;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_4b746944429d7c07719da06a13b9a396dff3b51167894309e8cf46f64f049a9b";
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
impl Canonical for Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse {
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
/// Complete bounded value for ROS1 uwvm_fourier_bridge/GroupValues.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Uwvm_fourier_bridgeGroupValues {
    /// Declared group; canonical bounds are part of CODEC_IDENTITY.
    pub group: String,
    /// Declared values; canonical bounds are part of CODEC_IDENTITY.
    pub values: Vec<f64>,
}
impl Default for Ros1Uwvm_fourier_bridgeGroupValues {
    fn default() -> Self {
        Self {
            group: Default::default(),
            values: Default::default(),
        }
    }
}
impl Ros1Uwvm_fourier_bridgeGroupValues {
    pub const MAX_WIRE_BYTES: usize = 648;
    pub const CARTESIAN_WIRE_BYTES: u64 = 648;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_899fb75506245b34c004d1ad1392f79434612d04c73d80a3329f27ec8ff5244c";
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
impl Canonical for Ros1Uwvm_fourier_bridgeGroupValues {
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
/// Complete bounded value for ROS1 uwvm_fourier_bridge/SetFsmStateRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Uwvm_fourier_bridgeSetFsmStateRequest {
    /// Declared sequence; canonical bounds are part of CODEC_IDENTITY.
    pub sequence: u64,
    /// Declared state; canonical bounds are part of CODEC_IDENTITY.
    pub state: i32,
}
impl Default for Ros1Uwvm_fourier_bridgeSetFsmStateRequest {
    fn default() -> Self {
        Self {
            sequence: Default::default(),
            state: Default::default(),
        }
    }
}
impl Ros1Uwvm_fourier_bridgeSetFsmStateRequest {
    pub const MAX_WIRE_BYTES: usize = 12;
    pub const CARTESIAN_WIRE_BYTES: u64 = 12;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_303406629d56a2b60a273488cd1e12081e7541374653bac04e2ca073d8c20885";
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
impl Canonical for Ros1Uwvm_fourier_bridgeSetFsmStateRequest {
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
/// Complete bounded value for ROS1 uwvm_fourier_bridge/SetFsmStateResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Uwvm_fourier_bridgeSetFsmStateResponse {
    /// Declared status; canonical bounds are part of CODEC_IDENTITY.
    pub status: u32,
    /// Declared error; canonical bounds are part of CODEC_IDENTITY.
    pub error: String,
}
impl Default for Ros1Uwvm_fourier_bridgeSetFsmStateResponse {
    fn default() -> Self {
        Self {
            status: Default::default(),
            error: Default::default(),
        }
    }
}
impl Ros1Uwvm_fourier_bridgeSetFsmStateResponse {
    pub const MAX_WIRE_BYTES: usize = 136;
    pub const CARTESIAN_WIRE_BYTES: u64 = 136;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_cffc820dc64a954aa94912941d3678a59a839b3dde4a6ebafdaf7d4367c22bd1";
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
impl Canonical for Ros1Uwvm_fourier_bridgeSetFsmStateResponse {
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
/// Complete bounded value for ROS1 uwvm_fourier_bridge/SetGroupCommandRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Uwvm_fourier_bridgeSetGroupCommandRequest {
    /// Declared sequence; canonical bounds are part of CODEC_IDENTITY.
    pub sequence: u64,
    /// Declared position; canonical bounds are part of CODEC_IDENTITY.
    pub position: Vec<Ros1Uwvm_fourier_bridgeGroupValues>,
    /// Declared velocity; canonical bounds are part of CODEC_IDENTITY.
    pub velocity: Vec<Ros1Uwvm_fourier_bridgeGroupValues>,
    /// Declared torque; canonical bounds are part of CODEC_IDENTITY.
    pub torque: Vec<Ros1Uwvm_fourier_bridgeGroupValues>,
}
impl Default for Ros1Uwvm_fourier_bridgeSetGroupCommandRequest {
    fn default() -> Self {
        Self {
            sequence: Default::default(),
            position: Default::default(),
            velocity: Default::default(),
            torque: Default::default(),
        }
    }
}
impl Ros1Uwvm_fourier_bridgeSetGroupCommandRequest {
    pub const MAX_WIRE_BYTES: usize = 15572;
    pub const CARTESIAN_WIRE_BYTES: u64 = 15572;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_b313435600ece44507300ad1ea5e375244387cde33301484ffda0390ca523220";
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
                let decoded = Ros1Uwvm_fourier_bridgeGroupValues::read_fields(bytes, at)?;
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
                let decoded = Ros1Uwvm_fourier_bridgeGroupValues::read_fields(bytes, at)?;
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
                let decoded = Ros1Uwvm_fourier_bridgeGroupValues::read_fields(bytes, at)?;
                value.torque.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros1Uwvm_fourier_bridgeSetGroupCommandRequest {
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
/// Complete bounded value for ROS1 uwvm_fourier_bridge/SetGroupCommandResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Uwvm_fourier_bridgeSetGroupCommandResponse {
    /// Declared status; canonical bounds are part of CODEC_IDENTITY.
    pub status: u32,
    /// Declared error; canonical bounds are part of CODEC_IDENTITY.
    pub error: String,
}
impl Default for Ros1Uwvm_fourier_bridgeSetGroupCommandResponse {
    fn default() -> Self {
        Self {
            status: Default::default(),
            error: Default::default(),
        }
    }
}
impl Ros1Uwvm_fourier_bridgeSetGroupCommandResponse {
    pub const MAX_WIRE_BYTES: usize = 136;
    pub const CARTESIAN_WIRE_BYTES: u64 = 136;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_d4c199515080deccf6a7bbd7101c84f45d7b280a7ed618c2165231343aae558b";
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
impl Canonical for Ros1Uwvm_fourier_bridgeSetGroupCommandResponse {
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
/// Complete bounded value for ROS1 uwvm_fourier_bridge/SetMotorCfgPdRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest {
    /// Declared sequence; canonical bounds are part of CODEC_IDENTITY.
    pub sequence: u64,
    /// Declared kp; canonical bounds are part of CODEC_IDENTITY.
    pub kp: Vec<Ros1Uwvm_fourier_bridgeGroupValues>,
    /// Declared kd; canonical bounds are part of CODEC_IDENTITY.
    pub kd: Vec<Ros1Uwvm_fourier_bridgeGroupValues>,
}
impl Default for Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest {
    fn default() -> Self {
        Self {
            sequence: Default::default(),
            kp: Default::default(),
            kd: Default::default(),
        }
    }
}
impl Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest {
    pub const MAX_WIRE_BYTES: usize = 10384;
    pub const CARTESIAN_WIRE_BYTES: u64 = 10384;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_b6dc93532397dc9016b751bf29f651e5cbb0823b5a03a3f8473823bb234bc51d";
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
                let decoded = Ros1Uwvm_fourier_bridgeGroupValues::read_fields(bytes, at)?;
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
                let decoded = Ros1Uwvm_fourier_bridgeGroupValues::read_fields(bytes, at)?;
                value.kd.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest {
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
/// Complete bounded value for ROS1 uwvm_fourier_bridge/SetMotorCfgPdResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse {
    /// Declared status; canonical bounds are part of CODEC_IDENTITY.
    pub status: u32,
    /// Declared error; canonical bounds are part of CODEC_IDENTITY.
    pub error: String,
}
impl Default for Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse {
    fn default() -> Self {
        Self {
            status: Default::default(),
            error: Default::default(),
        }
    }
}
impl Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse {
    pub const MAX_WIRE_BYTES: usize = 136;
    pub const CARTESIAN_WIRE_BYTES: u64 = 136;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_c1a69a2c03c6cee9b43484b29a800a5f82be4b9188e3b199eb2db8babd205bdc";
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
impl Canonical for Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse {
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
/// Complete bounded value for ROS1 uwvm_fourier_bridge/SetStandPoseRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Uwvm_fourier_bridgeSetStandPoseRequest {
    /// Declared sequence; canonical bounds are part of CODEC_IDENTITY.
    pub sequence: u64,
    /// Declared delta_z; canonical bounds are part of CODEC_IDENTITY.
    pub delta_z: f64,
    /// Declared delta_pitch; canonical bounds are part of CODEC_IDENTITY.
    pub delta_pitch: f64,
    /// Declared delta_yaw; canonical bounds are part of CODEC_IDENTITY.
    pub delta_yaw: f64,
}
impl Default for Ros1Uwvm_fourier_bridgeSetStandPoseRequest {
    fn default() -> Self {
        Self {
            sequence: Default::default(),
            delta_z: Default::default(),
            delta_pitch: Default::default(),
            delta_yaw: Default::default(),
        }
    }
}
impl Ros1Uwvm_fourier_bridgeSetStandPoseRequest {
    pub const MAX_WIRE_BYTES: usize = 32;
    pub const CARTESIAN_WIRE_BYTES: u64 = 32;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_75a21fe3986a90ff45b9e7ef023a93be9852d1174b5724b77b82b87e002492ed";
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
impl Canonical for Ros1Uwvm_fourier_bridgeSetStandPoseRequest {
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
/// Complete bounded value for ROS1 uwvm_fourier_bridge/SetStandPoseResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Uwvm_fourier_bridgeSetStandPoseResponse {
    /// Declared status; canonical bounds are part of CODEC_IDENTITY.
    pub status: u32,
    /// Declared error; canonical bounds are part of CODEC_IDENTITY.
    pub error: String,
}
impl Default for Ros1Uwvm_fourier_bridgeSetStandPoseResponse {
    fn default() -> Self {
        Self {
            status: Default::default(),
            error: Default::default(),
        }
    }
}
impl Ros1Uwvm_fourier_bridgeSetStandPoseResponse {
    pub const MAX_WIRE_BYTES: usize = 136;
    pub const CARTESIAN_WIRE_BYTES: u64 = 136;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_257da5b52ebfca54b067ced2acfab01e3aa3187c77751a5f82f9fda25885fe7e";
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
impl Canonical for Ros1Uwvm_fourier_bridgeSetStandPoseResponse {
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
/// Complete bounded value for ROS1 uwvm_fourier_bridge/SetUpperFsmStateRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest {
    /// Declared sequence; canonical bounds are part of CODEC_IDENTITY.
    pub sequence: u64,
    /// Declared state; canonical bounds are part of CODEC_IDENTITY.
    pub state: i32,
}
impl Default for Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest {
    fn default() -> Self {
        Self {
            sequence: Default::default(),
            state: Default::default(),
        }
    }
}
impl Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest {
    pub const MAX_WIRE_BYTES: usize = 12;
    pub const CARTESIAN_WIRE_BYTES: u64 = 12;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_cc12b01c002d9e3662f16595a55df6abebdea2fe06e350b7e81f33bee0d47758";
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
impl Canonical for Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest {
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
/// Complete bounded value for ROS1 uwvm_fourier_bridge/SetUpperFsmStateResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse {
    /// Declared status; canonical bounds are part of CODEC_IDENTITY.
    pub status: u32,
    /// Declared error; canonical bounds are part of CODEC_IDENTITY.
    pub error: String,
}
impl Default for Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse {
    fn default() -> Self {
        Self {
            status: Default::default(),
            error: Default::default(),
        }
    }
}
impl Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse {
    pub const MAX_WIRE_BYTES: usize = 136;
    pub const CARTESIAN_WIRE_BYTES: u64 = 136;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_27ee9830ebf52c3cfcdd8691bf1be9a1a63f7cd12c43cd30531b73501cd423c1";
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
impl Canonical for Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse {
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
/// Complete bounded value for ROS1 uwvm_fourier_bridge/SetVelocityRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Uwvm_fourier_bridgeSetVelocityRequest {
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
impl Default for Ros1Uwvm_fourier_bridgeSetVelocityRequest {
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
impl Ros1Uwvm_fourier_bridgeSetVelocityRequest {
    pub const MAX_WIRE_BYTES: usize = 40;
    pub const CARTESIAN_WIRE_BYTES: u64 = 40;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_33eb9021c19ed28c9aabc0076b8e5cc9f36b1fcaebbb93ebfa3dc38e9691ed2d";
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
impl Canonical for Ros1Uwvm_fourier_bridgeSetVelocityRequest {
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
/// Complete bounded value for ROS1 uwvm_fourier_bridge/SetVelocityResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Uwvm_fourier_bridgeSetVelocityResponse {
    /// Declared status; canonical bounds are part of CODEC_IDENTITY.
    pub status: u32,
    /// Declared error; canonical bounds are part of CODEC_IDENTITY.
    pub error: String,
}
impl Default for Ros1Uwvm_fourier_bridgeSetVelocityResponse {
    fn default() -> Self {
        Self {
            status: Default::default(),
            error: Default::default(),
        }
    }
}
impl Ros1Uwvm_fourier_bridgeSetVelocityResponse {
    pub const MAX_WIRE_BYTES: usize = 136;
    pub const CARTESIAN_WIRE_BYTES: u64 = 136;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_3325d6b620d3481b6976cd4579f197ed19d6a5074618f700273ca89e0eba762a";
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
impl Canonical for Ros1Uwvm_fourier_bridgeSetVelocityResponse {
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
/// Complete bounded value for ROS1 uwvm_fourier_bridge/SetVelocitySourceRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest {
    /// Declared sequence; canonical bounds are part of CODEC_IDENTITY.
    pub sequence: u64,
    /// Declared source; canonical bounds are part of CODEC_IDENTITY.
    pub source: i32,
}
impl Default for Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest {
    fn default() -> Self {
        Self {
            sequence: Default::default(),
            source: Default::default(),
        }
    }
}
impl Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest {
    pub const MAX_WIRE_BYTES: usize = 12;
    pub const CARTESIAN_WIRE_BYTES: u64 = 12;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_769c68344260812d775718b441b2a0e5e26422995c946031b919707994e295eb";
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
impl Canonical for Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest {
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
/// Complete bounded value for ROS1 uwvm_fourier_bridge/SetVelocitySourceResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse {
    /// Declared status; canonical bounds are part of CODEC_IDENTITY.
    pub status: u32,
    /// Declared error; canonical bounds are part of CODEC_IDENTITY.
    pub error: String,
}
impl Default for Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse {
    fn default() -> Self {
        Self {
            status: Default::default(),
            error: Default::default(),
        }
    }
}
impl Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse {
    pub const MAX_WIRE_BYTES: usize = 136;
    pub const CARTESIAN_WIRE_BYTES: u64 = 136;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_d791bd1ff7d8219a98a9ad475cdf0274fa87638452ce0359de57abc05ff0c3be";
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
impl Canonical for Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse {
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
/// Complete bounded value for ROS1 uwvm_fourier_bridge/VelocityCommand.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Uwvm_fourier_bridgeVelocityCommand {
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
impl Default for Ros1Uwvm_fourier_bridgeVelocityCommand {
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
impl Ros1Uwvm_fourier_bridgeVelocityCommand {
    pub const MAX_WIRE_BYTES: usize = 40;
    pub const CARTESIAN_WIRE_BYTES: u64 = 40;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_befc41dabd1a7359d32aa3dd4a0197e607fa84346f14fd79f8bc04d328b6ad54";
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
impl Canonical for Ros1Uwvm_fourier_bridgeVelocityCommand {
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
/// Complete bounded value for ROS1 uwvm_fourier_bridge/WaitGroupsMotionCompleteRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest {
    /// Declared sequence; canonical bounds are part of CODEC_IDENTITY.
    pub sequence: u64,
    /// Declared groups; canonical bounds are part of CODEC_IDENTITY.
    pub groups: Vec<String>,
    /// Declared timeout_seconds; canonical bounds are part of CODEC_IDENTITY.
    pub timeout_seconds: f64,
    /// Declared poll_seconds; canonical bounds are part of CODEC_IDENTITY.
    pub poll_seconds: f64,
}
impl Default for Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest {
    fn default() -> Self {
        Self {
            sequence: Default::default(),
            groups: Default::default(),
            timeout_seconds: Default::default(),
            poll_seconds: Default::default(),
        }
    }
}
impl Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest {
    pub const MAX_WIRE_BYTES: usize = 1084;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1084;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_27bdd6aa7689099eb40b3bdf96a1c3939677b016c685bd6fb6a275233b933b33";
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
impl Canonical for Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest {
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
/// Complete bounded value for ROS1 uwvm_fourier_bridge/WaitGroupsMotionCompleteResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse {
    /// Declared status; canonical bounds are part of CODEC_IDENTITY.
    pub status: u32,
    /// Declared error; canonical bounds are part of CODEC_IDENTITY.
    pub error: String,
    /// Declared complete; canonical bounds are part of CODEC_IDENTITY.
    pub complete: bool,
}
impl Default for Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse {
    fn default() -> Self {
        Self {
            status: Default::default(),
            error: Default::default(),
            complete: Default::default(),
        }
    }
}
impl Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse {
    pub const MAX_WIRE_BYTES: usize = 137;
    pub const CARTESIAN_WIRE_BYTES: u64 = 137;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_7d0a1faabf2934ec1a75981a5ed4251017a666975174efca8be48c152a15fee8";
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
impl Canonical for Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse {
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
