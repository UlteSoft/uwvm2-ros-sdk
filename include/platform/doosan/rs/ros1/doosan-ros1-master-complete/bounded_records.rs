//! @file bounded_records.rs
//! @brief Complete doosan values and adapters for the selected original interface catalog.
//! @details Retain original field order, scalar widths, array capacities, string bounds, constants and declared
//! defaults. Pure value access and canonical codecs create no native ROS allocation or resource grant. Transport
//! roles require the separately admitted SDK owner.
//! @see share/platform/doosan/domains/doosan-ros1-master-complete.ir.json
//! @see document/platform/doosan/en_US/README.md

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
/// Complete bounded value for ROS1 dsr_msgs/AlignAxis1Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsAlignAxis1Request {
    /// Declared x1; canonical bounds are part of CODEC_IDENTITY.
    pub x1: [f64; 6],
    /// Declared x2; canonical bounds are part of CODEC_IDENTITY.
    pub x2: [f64; 6],
    /// Declared x3; canonical bounds are part of CODEC_IDENTITY.
    pub x3: [f64; 6],
    /// Declared source_vect; canonical bounds are part of CODEC_IDENTITY.
    pub source_vect: [f64; 3],
    /// Declared axis; canonical bounds are part of CODEC_IDENTITY.
    pub axis: i8,
    /// Declared ref; canonical bounds are part of CODEC_IDENTITY.
    pub r#ref: i8,
}
impl Default for Ros1Dsr_msgsAlignAxis1Request {
    fn default() -> Self {
        Self {
            x1: core::array::from_fn(|_| Default::default()),
            x2: core::array::from_fn(|_| Default::default()),
            x3: core::array::from_fn(|_| Default::default()),
            source_vect: core::array::from_fn(|_| Default::default()),
            axis: Default::default(),
            r#ref: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsAlignAxis1Request {
    pub const MAX_WIRE_BYTES: usize = 170;
    pub const CARTESIAN_WIRE_BYTES: u64 = 170;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_708643fa3a09d74f06ee9ba327c3fc05fb60dd73447ea95e43d9d96f7c5b6e54";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.x1 {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.x2 {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.x3 {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.source_vect {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        if n > 170 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        for element in &self.x1 {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.x2 {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.x3 {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.source_vect {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.axis.to_le_bytes());
        put(out, at, &self.r#ref.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.x1[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.x2[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.x3[i] = decoded;
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
                value.source_vect[i] = decoded;
            }
        }
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.axis = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.r#ref = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsAlignAxis1Request {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 170 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 170 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 dsr_msgs/AlignAxis1Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsAlignAxis1Response {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsAlignAxis1Response {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsAlignAxis1Response {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_dda31d7d89f3f8b2bb3c68c0d685a30ccfc32a9c363ea5399a1777da80d2f33d";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsAlignAxis1Response {
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
/// Complete bounded value for ROS1 dsr_msgs/AlignAxis2Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsAlignAxis2Request {
    /// Declared target_vect; canonical bounds are part of CODEC_IDENTITY.
    pub target_vect: [f64; 3],
    /// Declared source_vect; canonical bounds are part of CODEC_IDENTITY.
    pub source_vect: [f64; 3],
    /// Declared axis; canonical bounds are part of CODEC_IDENTITY.
    pub axis: i8,
    /// Declared ref; canonical bounds are part of CODEC_IDENTITY.
    pub r#ref: i8,
}
impl Default for Ros1Dsr_msgsAlignAxis2Request {
    fn default() -> Self {
        Self {
            target_vect: core::array::from_fn(|_| Default::default()),
            source_vect: core::array::from_fn(|_| Default::default()),
            axis: Default::default(),
            r#ref: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsAlignAxis2Request {
    pub const MAX_WIRE_BYTES: usize = 50;
    pub const CARTESIAN_WIRE_BYTES: u64 = 50;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_3e1c136bdfe0d97015a19c2fffc6b40460933a3ada556e57142d6309f99fe1ea";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.target_vect {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.source_vect {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        if n > 50 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        for element in &self.target_vect {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.source_vect {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.axis.to_le_bytes());
        put(out, at, &self.r#ref.to_le_bytes());
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
                value.target_vect[i] = decoded;
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
                value.source_vect[i] = decoded;
            }
        }
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.axis = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.r#ref = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsAlignAxis2Request {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 50 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 50 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 dsr_msgs/AlignAxis2Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsAlignAxis2Response {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsAlignAxis2Response {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsAlignAxis2Response {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_79618c7ede73decd7a8cb4f0cc013b95c463ca37126d49c0b54e17ad17224ade";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsAlignAxis2Response {
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
/// Complete bounded value for ROS1 dsr_msgs/AlterMotionRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsAlterMotionRequest {
    /// Declared pos; canonical bounds are part of CODEC_IDENTITY.
    pub pos: [f64; 6],
}
impl Default for Ros1Dsr_msgsAlterMotionRequest {
    fn default() -> Self {
        Self {
            pos: core::array::from_fn(|_| Default::default()),
        }
    }
}
impl Ros1Dsr_msgsAlterMotionRequest {
    pub const MAX_WIRE_BYTES: usize = 48;
    pub const CARTESIAN_WIRE_BYTES: u64 = 48;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_2230e6b8bc09c902ab6ba9ed4e9fdb59a9e8d691cf614599e5f96fd8d2820787";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.pos {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
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
        for element in &self.pos {
            put(out, at, &element.to_le_bytes());
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.pos[i] = decoded;
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsAlterMotionRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/AlterMotionResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsAlterMotionResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsAlterMotionResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsAlterMotionResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_d27db25bae1cbb78fedfb24b96acbe023949948766ed856ad91e942fe367f716";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsAlterMotionResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/AlterMotionStream.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsAlterMotionStream {
    /// Declared pos; canonical bounds are part of CODEC_IDENTITY.
    pub pos: [f64; 6],
}
impl Default for Ros1Dsr_msgsAlterMotionStream {
    fn default() -> Self {
        Self {
            pos: core::array::from_fn(|_| Default::default()),
        }
    }
}
impl Ros1Dsr_msgsAlterMotionStream {
    pub const MAX_WIRE_BYTES: usize = 48;
    pub const CARTESIAN_WIRE_BYTES: u64 = 48;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_18119f940783ffa402b9f51773f9eac801b70f891039aa1da99b1bea04bc50ac";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.pos {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
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
        for element in &self.pos {
            put(out, at, &element.to_le_bytes());
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.pos[i] = decoded;
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsAlterMotionStream {
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
/// Complete bounded value for ROS1 dsr_msgs/CalcCoordRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsCalcCoordRequest {
    /// Declared input_pos_cnt; canonical bounds are part of CODEC_IDENTITY.
    pub input_pos_cnt: i8,
    /// Declared x1; canonical bounds are part of CODEC_IDENTITY.
    pub x1: [f64; 6],
    /// Declared x2; canonical bounds are part of CODEC_IDENTITY.
    pub x2: [f64; 6],
    /// Declared x3; canonical bounds are part of CODEC_IDENTITY.
    pub x3: [f64; 6],
    /// Declared x4; canonical bounds are part of CODEC_IDENTITY.
    pub x4: [f64; 6],
    /// Declared ref; canonical bounds are part of CODEC_IDENTITY.
    pub r#ref: i8,
    /// Declared mod; canonical bounds are part of CODEC_IDENTITY.
    pub r#mod: i8,
}
impl Default for Ros1Dsr_msgsCalcCoordRequest {
    fn default() -> Self {
        Self {
            input_pos_cnt: Default::default(),
            x1: core::array::from_fn(|_| Default::default()),
            x2: core::array::from_fn(|_| Default::default()),
            x3: core::array::from_fn(|_| Default::default()),
            x4: core::array::from_fn(|_| Default::default()),
            r#ref: Default::default(),
            r#mod: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsCalcCoordRequest {
    pub const MAX_WIRE_BYTES: usize = 195;
    pub const CARTESIAN_WIRE_BYTES: u64 = 195;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_7124a7312fd476b49ef2fd9fb468ea19ce7ae644da5c8fffb3ddfc67c175c70d";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        for element in &self.x1 {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.x2 {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.x3 {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.x4 {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        if n > 195 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.input_pos_cnt.to_le_bytes());
        for element in &self.x1 {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.x2 {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.x3 {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.x4 {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.r#ref.to_le_bytes());
        put(out, at, &self.r#mod.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.input_pos_cnt = decoded;
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.x1[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.x2[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.x3[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.x4[i] = decoded;
            }
        }
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.r#ref = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.r#mod = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsCalcCoordRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 195 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 195 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 dsr_msgs/CalcCoordResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsCalcCoordResponse {
    /// Declared conv_posx; canonical bounds are part of CODEC_IDENTITY.
    pub conv_posx: [f64; 6],
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsCalcCoordResponse {
    fn default() -> Self {
        Self {
            conv_posx: core::array::from_fn(|_| Default::default()),
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsCalcCoordResponse {
    pub const MAX_WIRE_BYTES: usize = 49;
    pub const CARTESIAN_WIRE_BYTES: u64 = 49;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_c34ef9bfe05948a853305174e1084443e5358bc5877c0dd5d05ba6655dc6d993";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.conv_posx {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        n = add_size(n, 1)?;
        if n > 49 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        for element in &self.conv_posx {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.conv_posx[i] = decoded;
            }
        }
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsCalcCoordResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 49 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 49 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 dsr_msgs/ChangeOperationSpeedRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsChangeOperationSpeedRequest {
    /// Declared speed; canonical bounds are part of CODEC_IDENTITY.
    pub speed: i8,
}
impl Default for Ros1Dsr_msgsChangeOperationSpeedRequest {
    fn default() -> Self {
        Self {
            speed: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsChangeOperationSpeedRequest {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_8d8beb40ab8ebd7d0f69509832bc71ac9e460ec01bdecc41a82f4eab28017616";
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
        put(out, at, &self.speed.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.speed = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsChangeOperationSpeedRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/ChangeOperationSpeedResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsChangeOperationSpeedResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsChangeOperationSpeedResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsChangeOperationSpeedResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_bf8b7e30e18d38f6dde9b02576151cb57c4789cef7b7ea6c56fc8581eafc08f6";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsChangeOperationSpeedResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/CheckForceConditionRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsCheckForceConditionRequest {
    /// Declared axis; canonical bounds are part of CODEC_IDENTITY.
    pub axis: i8,
    /// Declared min; canonical bounds are part of CODEC_IDENTITY.
    pub min: f64,
    /// Declared max; canonical bounds are part of CODEC_IDENTITY.
    pub max: f64,
    /// Declared ref; canonical bounds are part of CODEC_IDENTITY.
    pub r#ref: i8,
}
impl Default for Ros1Dsr_msgsCheckForceConditionRequest {
    fn default() -> Self {
        Self {
            axis: Default::default(),
            min: Default::default(),
            max: Default::default(),
            r#ref: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsCheckForceConditionRequest {
    pub const MAX_WIRE_BYTES: usize = 18;
    pub const CARTESIAN_WIRE_BYTES: u64 = 18;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_590694ea44b90bb2aa6fa1f903d129e2a58a33af58fe26c9f67f9b0272b34673";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if !self.min.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.max.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        n = add_size(n, 1)?;
        if n > 18 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.axis.to_le_bytes());
        put(out, at, &self.min.to_le_bytes());
        put(out, at, &self.max.to_le_bytes());
        put(out, at, &self.r#ref.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.axis = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.min = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.max = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.r#ref = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsCheckForceConditionRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 18 {
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
/// Complete bounded value for ROS1 dsr_msgs/CheckForceConditionResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsCheckForceConditionResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsCheckForceConditionResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsCheckForceConditionResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_6d0cb8413b824c1a469f77cd592946e67dd0a0c15d5945b0ea908c0e0e7a3270";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsCheckForceConditionResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/CheckMotionRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsCheckMotionRequest {}
impl Default for Ros1Dsr_msgsCheckMotionRequest {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Dsr_msgsCheckMotionRequest {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_f38bee5e76ececdf4868a092e4ee673da6bcd95db9baacd504ef31017b94b7d5";
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
impl Canonical for Ros1Dsr_msgsCheckMotionRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/CheckMotionResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsCheckMotionResponse {
    /// Declared status; canonical bounds are part of CODEC_IDENTITY.
    pub status: i8,
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsCheckMotionResponse {
    fn default() -> Self {
        Self {
            status: Default::default(),
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsCheckMotionResponse {
    pub const MAX_WIRE_BYTES: usize = 2;
    pub const CARTESIAN_WIRE_BYTES: u64 = 2;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_2e11dbf1b2a447dd3b6f302f3839b2383f6c3e0c0408c138cb7acb12062df480";
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
        put(out, at, &self.status.to_le_bytes());
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.status = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsCheckMotionResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/CheckOrientationCondition1Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsCheckOrientationCondition1Request {
    /// Declared axis; canonical bounds are part of CODEC_IDENTITY.
    pub axis: i8,
    /// Declared min; canonical bounds are part of CODEC_IDENTITY.
    pub min: [f64; 6],
    /// Declared max; canonical bounds are part of CODEC_IDENTITY.
    pub max: [f64; 6],
    /// Declared ref; canonical bounds are part of CODEC_IDENTITY.
    pub r#ref: i8,
    /// Declared mode; canonical bounds are part of CODEC_IDENTITY.
    pub mode: i8,
}
impl Default for Ros1Dsr_msgsCheckOrientationCondition1Request {
    fn default() -> Self {
        Self {
            axis: Default::default(),
            min: core::array::from_fn(|_| Default::default()),
            max: core::array::from_fn(|_| Default::default()),
            r#ref: Default::default(),
            mode: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsCheckOrientationCondition1Request {
    pub const MAX_WIRE_BYTES: usize = 99;
    pub const CARTESIAN_WIRE_BYTES: u64 = 99;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_048532f02d47e889e7299755886812a454c0457d4c70fda58bd090c959a52c6e";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        for element in &self.min {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.max {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        if n > 99 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.axis.to_le_bytes());
        for element in &self.min {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.max {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.r#ref.to_le_bytes());
        put(out, at, &self.mode.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.axis = decoded;
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.min[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.max[i] = decoded;
            }
        }
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.r#ref = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.mode = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsCheckOrientationCondition1Request {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 99 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 99 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 dsr_msgs/CheckOrientationCondition1Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsCheckOrientationCondition1Response {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsCheckOrientationCondition1Response {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsCheckOrientationCondition1Response {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_4b8359166eedb70a505b0d1829168618088cbedada2bc5d6f7d9e9a5dfa79b32";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsCheckOrientationCondition1Response {
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
/// Complete bounded value for ROS1 dsr_msgs/CheckOrientationCondition2Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsCheckOrientationCondition2Request {
    /// Declared axis; canonical bounds are part of CODEC_IDENTITY.
    pub axis: i8,
    /// Declared min; canonical bounds are part of CODEC_IDENTITY.
    pub min: f64,
    /// Declared max; canonical bounds are part of CODEC_IDENTITY.
    pub max: f64,
    /// Declared ref; canonical bounds are part of CODEC_IDENTITY.
    pub r#ref: i8,
    /// Declared mode; canonical bounds are part of CODEC_IDENTITY.
    pub mode: i8,
    /// Declared pos; canonical bounds are part of CODEC_IDENTITY.
    pub pos: [f64; 6],
}
impl Default for Ros1Dsr_msgsCheckOrientationCondition2Request {
    fn default() -> Self {
        Self {
            axis: Default::default(),
            min: Default::default(),
            max: Default::default(),
            r#ref: Default::default(),
            mode: Default::default(),
            pos: core::array::from_fn(|_| Default::default()),
        }
    }
}
impl Ros1Dsr_msgsCheckOrientationCondition2Request {
    pub const MAX_WIRE_BYTES: usize = 67;
    pub const CARTESIAN_WIRE_BYTES: u64 = 67;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_42287a8e7cef2b93a1bd5778de6ae4ef4d1aa484dd0c74fcd29c660b400b6ff0";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if !self.min.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.max.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        for element in &self.pos {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if n > 67 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.axis.to_le_bytes());
        put(out, at, &self.min.to_le_bytes());
        put(out, at, &self.max.to_le_bytes());
        put(out, at, &self.r#ref.to_le_bytes());
        put(out, at, &self.mode.to_le_bytes());
        for element in &self.pos {
            put(out, at, &element.to_le_bytes());
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.axis = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.min = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.max = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.r#ref = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.mode = decoded;
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.pos[i] = decoded;
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsCheckOrientationCondition2Request {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 67 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 67 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 dsr_msgs/CheckOrientationCondition2Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsCheckOrientationCondition2Response {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsCheckOrientationCondition2Response {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsCheckOrientationCondition2Response {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_334774329557c04594f02ee344f0af39d250c482c3f9c4b2dd5f275e87880e83";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsCheckOrientationCondition2Response {
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
/// Complete bounded value for ROS1 dsr_msgs/CheckPositionConditionRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsCheckPositionConditionRequest {
    /// Declared axis; canonical bounds are part of CODEC_IDENTITY.
    pub axis: i8,
    /// Declared min; canonical bounds are part of CODEC_IDENTITY.
    pub min: f64,
    /// Declared max; canonical bounds are part of CODEC_IDENTITY.
    pub max: f64,
    /// Declared ref; canonical bounds are part of CODEC_IDENTITY.
    pub r#ref: i8,
    /// Declared mode; canonical bounds are part of CODEC_IDENTITY.
    pub mode: i8,
    /// Declared pos; canonical bounds are part of CODEC_IDENTITY.
    pub pos: [f64; 6],
}
impl Default for Ros1Dsr_msgsCheckPositionConditionRequest {
    fn default() -> Self {
        Self {
            axis: Default::default(),
            min: Default::default(),
            max: Default::default(),
            r#ref: Default::default(),
            mode: Default::default(),
            pos: core::array::from_fn(|_| Default::default()),
        }
    }
}
impl Ros1Dsr_msgsCheckPositionConditionRequest {
    pub const MAX_WIRE_BYTES: usize = 67;
    pub const CARTESIAN_WIRE_BYTES: u64 = 67;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_973c397ac52f4eba5f5956bd25c6552749d14ebd070ea659cea7601bf2bfdbeb";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if !self.min.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.max.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        for element in &self.pos {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if n > 67 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.axis.to_le_bytes());
        put(out, at, &self.min.to_le_bytes());
        put(out, at, &self.max.to_le_bytes());
        put(out, at, &self.r#ref.to_le_bytes());
        put(out, at, &self.mode.to_le_bytes());
        for element in &self.pos {
            put(out, at, &element.to_le_bytes());
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.axis = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.min = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.max = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.r#ref = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.mode = decoded;
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.pos[i] = decoded;
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsCheckPositionConditionRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 67 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 67 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 dsr_msgs/CheckPositionConditionResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsCheckPositionConditionResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsCheckPositionConditionResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsCheckPositionConditionResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_e809f6231e9bea172a7c00c6d32bb553e97026a607a6070e6fa82d007c3bf94a";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsCheckPositionConditionResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/ConfigCreateModbusRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsConfigCreateModbusRequest {
    /// Declared name; canonical bounds are part of CODEC_IDENTITY.
    pub name: String,
    /// Declared ip; canonical bounds are part of CODEC_IDENTITY.
    pub ip: String,
    /// Declared port; canonical bounds are part of CODEC_IDENTITY.
    pub port: i32,
    /// Declared reg_type; canonical bounds are part of CODEC_IDENTITY.
    pub reg_type: i8,
    /// Declared index; canonical bounds are part of CODEC_IDENTITY.
    pub index: i8,
    /// Declared value; canonical bounds are part of CODEC_IDENTITY.
    pub value: i8,
    /// Declared slave_id; canonical bounds are part of CODEC_IDENTITY.
    pub slave_id: i32,
}
impl Default for Ros1Dsr_msgsConfigCreateModbusRequest {
    fn default() -> Self {
        Self {
            name: Default::default(),
            ip: Default::default(),
            port: Default::default(),
            reg_type: Default::default(),
            index: Default::default(),
            value: Default::default(),
            slave_id: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsConfigCreateModbusRequest {
    pub const MAX_WIRE_BYTES: usize = 531;
    pub const CARTESIAN_WIRE_BYTES: u64 = 531;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_67fe218ec3ea51f74df38d696c95b24f4f64dcdeb6652b618ec327133a1fc29f";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.name.len() > 256 || self.name.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.name.len())?;
        if self.ip.len() > 256 || self.ip.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.ip.len())?;
        n = add_size(n, 4)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 4)?;
        if n > 531 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
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
        put(out, at, &(self.ip.len() as u32).to_le_bytes());
        put(out, at, self.ip.as_bytes());
        put(out, at, &self.port.to_le_bytes());
        put(out, at, &self.reg_type.to_le_bytes());
        put(out, at, &self.index.to_le_bytes());
        put(out, at, &self.value.to_le_bytes());
        put(out, at, &self.slave_id.to_le_bytes());
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
        value.name = decoded;
        let size = read_count(bytes, at)?;
        if size > 256 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.ip = decoded;
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.port = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.reg_type = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.index = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.value = decoded;
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.slave_id = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsConfigCreateModbusRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 531 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 19 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 dsr_msgs/ConfigCreateModbusResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsConfigCreateModbusResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsConfigCreateModbusResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsConfigCreateModbusResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_13243e4aeefdebf38671fc24f7059daf3597cdebcbc1a6ffd315d3edab3dfc2f";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsConfigCreateModbusResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/ConfigCreateTcpRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsConfigCreateTcpRequest {
    /// Declared name; canonical bounds are part of CODEC_IDENTITY.
    pub name: String,
    /// Declared pos; canonical bounds are part of CODEC_IDENTITY.
    pub pos: [f64; 6],
}
impl Default for Ros1Dsr_msgsConfigCreateTcpRequest {
    fn default() -> Self {
        Self {
            name: Default::default(),
            pos: core::array::from_fn(|_| Default::default()),
        }
    }
}
impl Ros1Dsr_msgsConfigCreateTcpRequest {
    pub const MAX_WIRE_BYTES: usize = 308;
    pub const CARTESIAN_WIRE_BYTES: u64 = 308;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_afd19140176d214b18610297e53a7606a78cefd366dc01bb6baf05d72795e744";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.name.len() > 256 || self.name.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.name.len())?;
        for element in &self.pos {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if n > 308 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
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
        for element in &self.pos {
            put(out, at, &element.to_le_bytes());
        }
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
        value.name = decoded;
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.pos[i] = decoded;
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsConfigCreateTcpRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 308 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 52 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 dsr_msgs/ConfigCreateTcpResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsConfigCreateTcpResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsConfigCreateTcpResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsConfigCreateTcpResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_768b2341613afaecf36342ebe26060e2c41ebd8fd4404d0394065c0d0ea6c948";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsConfigCreateTcpResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/ConfigCreateToolRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsConfigCreateToolRequest {
    /// Declared name; canonical bounds are part of CODEC_IDENTITY.
    pub name: String,
    /// Declared weight; canonical bounds are part of CODEC_IDENTITY.
    pub weight: f64,
    /// Declared cog; canonical bounds are part of CODEC_IDENTITY.
    pub cog: [f64; 3],
    /// Declared inertia; canonical bounds are part of CODEC_IDENTITY.
    pub inertia: [f64; 6],
}
impl Default for Ros1Dsr_msgsConfigCreateToolRequest {
    fn default() -> Self {
        Self {
            name: Default::default(),
            weight: Default::default(),
            cog: core::array::from_fn(|_| Default::default()),
            inertia: core::array::from_fn(|_| Default::default()),
        }
    }
}
impl Ros1Dsr_msgsConfigCreateToolRequest {
    pub const MAX_WIRE_BYTES: usize = 340;
    pub const CARTESIAN_WIRE_BYTES: u64 = 340;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_ade17ea7096f6309da57a5d9e0be362562551da27bbc1508aac8e2d3c3afcd44";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.name.len() > 256 || self.name.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.name.len())?;
        if !self.weight.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        for element in &self.cog {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.inertia {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if n > 340 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
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
        put(out, at, &self.weight.to_le_bytes());
        for element in &self.cog {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.inertia {
            put(out, at, &element.to_le_bytes());
        }
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
        value.name = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.weight = decoded;
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
                value.cog[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.inertia[i] = decoded;
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsConfigCreateToolRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 340 {
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
/// Complete bounded value for ROS1 dsr_msgs/ConfigCreateToolResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsConfigCreateToolResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsConfigCreateToolResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsConfigCreateToolResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_6ed584718ae8c0b9d3946007cfcc713e58f867d3b6b6bfdcabc7ffc126f98a9b";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsConfigCreateToolResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/ConfigDeleteModbusRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsConfigDeleteModbusRequest {
    /// Declared name; canonical bounds are part of CODEC_IDENTITY.
    pub name: String,
}
impl Default for Ros1Dsr_msgsConfigDeleteModbusRequest {
    fn default() -> Self {
        Self {
            name: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsConfigDeleteModbusRequest {
    pub const MAX_WIRE_BYTES: usize = 260;
    pub const CARTESIAN_WIRE_BYTES: u64 = 260;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_d2007f4aa533a46244a6924762b701f84c31f5c9d19495a745e35c6fdd55d96b";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.name.len() > 256 || self.name.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.name.len())?;
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
        put(out, at, &(self.name.len() as u32).to_le_bytes());
        put(out, at, self.name.as_bytes());
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
        value.name = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsConfigDeleteModbusRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/ConfigDeleteModbusResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsConfigDeleteModbusResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsConfigDeleteModbusResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsConfigDeleteModbusResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_e3f8b3da769c249f0064ee118d26d7154a31e2dd5e65417d01f1524baa317c4e";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsConfigDeleteModbusResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/ConfigDeleteTcpRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsConfigDeleteTcpRequest {
    /// Declared name; canonical bounds are part of CODEC_IDENTITY.
    pub name: String,
}
impl Default for Ros1Dsr_msgsConfigDeleteTcpRequest {
    fn default() -> Self {
        Self {
            name: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsConfigDeleteTcpRequest {
    pub const MAX_WIRE_BYTES: usize = 260;
    pub const CARTESIAN_WIRE_BYTES: u64 = 260;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_096510681530cdda07b413a426fcf0ad5ca98e657a5d7612c1f497893fa96de4";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.name.len() > 256 || self.name.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.name.len())?;
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
        put(out, at, &(self.name.len() as u32).to_le_bytes());
        put(out, at, self.name.as_bytes());
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
        value.name = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsConfigDeleteTcpRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/ConfigDeleteTcpResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsConfigDeleteTcpResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsConfigDeleteTcpResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsConfigDeleteTcpResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_5842def73643bf4621c17fbfa2ecd19cfec7a5c9c4ce9b954c72e0be846cebe5";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsConfigDeleteTcpResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/ConfigDeleteToolRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsConfigDeleteToolRequest {
    /// Declared name; canonical bounds are part of CODEC_IDENTITY.
    pub name: String,
}
impl Default for Ros1Dsr_msgsConfigDeleteToolRequest {
    fn default() -> Self {
        Self {
            name: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsConfigDeleteToolRequest {
    pub const MAX_WIRE_BYTES: usize = 260;
    pub const CARTESIAN_WIRE_BYTES: u64 = 260;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_be7ab4ae62ab38dd1c31f4cb96303edf98511e369ef64476f835e23b7b6168f3";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.name.len() > 256 || self.name.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.name.len())?;
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
        put(out, at, &(self.name.len() as u32).to_le_bytes());
        put(out, at, self.name.as_bytes());
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
        value.name = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsConfigDeleteToolRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/ConfigDeleteToolResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsConfigDeleteToolResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsConfigDeleteToolResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsConfigDeleteToolResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_0e0708c161ba1aeeb9c7e96e77434eb7ba7c9c77eba230e5488f59b34fd8f780";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsConfigDeleteToolResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/ConnectRTControlRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsConnectRTControlRequest {
    /// Declared ip_address; canonical bounds are part of CODEC_IDENTITY.
    pub ip_address: String,
    /// Declared port; canonical bounds are part of CODEC_IDENTITY.
    pub port: u32,
}
impl Default for Ros1Dsr_msgsConnectRTControlRequest {
    fn default() -> Self {
        Self {
            ip_address: Default::default(),
            port: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsConnectRTControlRequest {
    pub const MAX_WIRE_BYTES: usize = 264;
    pub const CARTESIAN_WIRE_BYTES: u64 = 264;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_c9843ae994672ab18e264c025f929a10d208952e0583da7200b6aa26ec3eb755";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.ip_address.len() > 256 || self.ip_address.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.ip_address.len())?;
        n = add_size(n, 4)?;
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
        put(out, at, &(self.ip_address.len() as u32).to_le_bytes());
        put(out, at, self.ip_address.as_bytes());
        put(out, at, &self.port.to_le_bytes());
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
        value.ip_address = decoded;
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.port = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsConnectRTControlRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/ConnectRTControlResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsConnectRTControlResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsConnectRTControlResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsConnectRTControlResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_716d95e3f734dff8442935476028644077836389e8d54f73661fd3c52804f5a4";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsConnectRTControlResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/CoordTransformRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsCoordTransformRequest {
    /// Declared pos_in; canonical bounds are part of CODEC_IDENTITY.
    pub pos_in: [f64; 6],
    /// Declared ref_in; canonical bounds are part of CODEC_IDENTITY.
    pub ref_in: i8,
    /// Declared ref_out; canonical bounds are part of CODEC_IDENTITY.
    pub ref_out: i8,
}
impl Default for Ros1Dsr_msgsCoordTransformRequest {
    fn default() -> Self {
        Self {
            pos_in: core::array::from_fn(|_| Default::default()),
            ref_in: Default::default(),
            ref_out: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsCoordTransformRequest {
    pub const MAX_WIRE_BYTES: usize = 50;
    pub const CARTESIAN_WIRE_BYTES: u64 = 50;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_28b33cdb83f95f41982ccc99d276cc4efb34ff33707101e1d56cf63580095436";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.pos_in {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        if n > 50 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        for element in &self.pos_in {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.ref_in.to_le_bytes());
        put(out, at, &self.ref_out.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.pos_in[i] = decoded;
            }
        }
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.ref_in = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.ref_out = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsCoordTransformRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 50 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 50 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 dsr_msgs/CoordTransformResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsCoordTransformResponse {
    /// Declared conv_posx; canonical bounds are part of CODEC_IDENTITY.
    pub conv_posx: [f64; 6],
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsCoordTransformResponse {
    fn default() -> Self {
        Self {
            conv_posx: core::array::from_fn(|_| Default::default()),
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsCoordTransformResponse {
    pub const MAX_WIRE_BYTES: usize = 49;
    pub const CARTESIAN_WIRE_BYTES: u64 = 49;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_1b9492d45f096bfd2a53e1ed8a701d53698a7aebc525b70e95de70c6275035c9";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.conv_posx {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        n = add_size(n, 1)?;
        if n > 49 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        for element in &self.conv_posx {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.conv_posx[i] = decoded;
            }
        }
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsCoordTransformResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 49 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 49 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 dsr_msgs/DisableAlterMotionRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsDisableAlterMotionRequest {}
impl Default for Ros1Dsr_msgsDisableAlterMotionRequest {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Dsr_msgsDisableAlterMotionRequest {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_4ff4905d3843c08022003c96abd4031a5438078e919e0b8e43554aae3229bbc1";
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
impl Canonical for Ros1Dsr_msgsDisableAlterMotionRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/DisableAlterMotionResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsDisableAlterMotionResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsDisableAlterMotionResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsDisableAlterMotionResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_feff25cf5412112d1ebc9fd4dd0aca62f1a9af7f63673a0633f6f32e915a27b1";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsDisableAlterMotionResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/DisconnectRTControlRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsDisconnectRTControlRequest {}
impl Default for Ros1Dsr_msgsDisconnectRTControlRequest {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Dsr_msgsDisconnectRTControlRequest {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_4fb305bf56dfd6e1cbaa3f5a9e86f7fdb9cd3c5822447dbdd953944545686d82";
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
impl Canonical for Ros1Dsr_msgsDisconnectRTControlRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/DisconnectRTControlResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsDisconnectRTControlResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsDisconnectRTControlResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsDisconnectRTControlResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_4e9481ecb0b6a13cf344d2fab2f044eb7a75d9d3277fd5dba87bd73f107c822e";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsDisconnectRTControlResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/DrlPauseRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsDrlPauseRequest {}
impl Default for Ros1Dsr_msgsDrlPauseRequest {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Dsr_msgsDrlPauseRequest {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_e8e6c075432920d6650a5dddc31fd33f7a1688ce99264113be7d0675378eb120";
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
impl Canonical for Ros1Dsr_msgsDrlPauseRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/DrlPauseResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsDrlPauseResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsDrlPauseResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsDrlPauseResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_9a448d82cb77115d43abe062d8f1bbb904ab680a98cf4d95b025eedd3deca0bb";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsDrlPauseResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/DrlResumeRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsDrlResumeRequest {}
impl Default for Ros1Dsr_msgsDrlResumeRequest {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Dsr_msgsDrlResumeRequest {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_11d5e8618dacde2d4f9ee2b9e7ee6306396e7495003bc31d9bd02a2438232713";
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
impl Canonical for Ros1Dsr_msgsDrlResumeRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/DrlResumeResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsDrlResumeResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsDrlResumeResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsDrlResumeResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_40fdc65739450e3c8e0af52f69623624dac33620feda55065587e8e8a1d9a05a";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsDrlResumeResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/DrlStartRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsDrlStartRequest {
    /// Declared robotSystem; canonical bounds are part of CODEC_IDENTITY.
    pub robotSystem: i8,
    /// Declared code; canonical bounds are part of CODEC_IDENTITY.
    pub code: String,
}
impl Default for Ros1Dsr_msgsDrlStartRequest {
    fn default() -> Self {
        Self {
            robotSystem: Default::default(),
            code: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsDrlStartRequest {
    pub const MAX_WIRE_BYTES: usize = 261;
    pub const CARTESIAN_WIRE_BYTES: u64 = 261;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_1f5f908c63b09780c6b68ef280f87328590e5eec3be18d98916137c0d2c42a65";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if self.code.len() > 256 || self.code.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.code.len())?;
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
        put(out, at, &self.robotSystem.to_le_bytes());
        put(out, at, &(self.code.len() as u32).to_le_bytes());
        put(out, at, self.code.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.robotSystem = decoded;
        let size = read_count(bytes, at)?;
        if size > 256 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.code = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsDrlStartRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/DrlStartResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsDrlStartResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsDrlStartResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsDrlStartResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_2e39df1817ac076c895b43f565515db035ba300f4433b8635976b20713d98d76";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsDrlStartResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/DrlStopRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsDrlStopRequest {
    /// Declared stop_mode; canonical bounds are part of CODEC_IDENTITY.
    pub stop_mode: i8,
}
impl Default for Ros1Dsr_msgsDrlStopRequest {
    fn default() -> Self {
        Self {
            stop_mode: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsDrlStopRequest {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_5be1c9f2284e5244660cfcb60632921bb5db1440536a5030e8d4c93c15704f9b";
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
        put(out, at, &self.stop_mode.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.stop_mode = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsDrlStopRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/DrlStopResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsDrlStopResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsDrlStopResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsDrlStopResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_0f2cf2aff2ce20b984c602673fdf51ec38ef81820171e1c08e8c9c07d536a988";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsDrlStopResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/EnableAlterMotionRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsEnableAlterMotionRequest {
    /// Declared n; canonical bounds are part of CODEC_IDENTITY.
    pub n: i32,
    /// Declared mode; canonical bounds are part of CODEC_IDENTITY.
    pub mode: i8,
    /// Declared ref; canonical bounds are part of CODEC_IDENTITY.
    pub r#ref: i8,
    /// Declared limit_dPOS; canonical bounds are part of CODEC_IDENTITY.
    pub limit_dPOS: [f64; 2],
    /// Declared limit_dPOS_per; canonical bounds are part of CODEC_IDENTITY.
    pub limit_dPOS_per: [f64; 2],
}
impl Default for Ros1Dsr_msgsEnableAlterMotionRequest {
    fn default() -> Self {
        Self {
            n: Default::default(),
            mode: Default::default(),
            r#ref: Default::default(),
            limit_dPOS: core::array::from_fn(|_| Default::default()),
            limit_dPOS_per: core::array::from_fn(|_| Default::default()),
        }
    }
}
impl Ros1Dsr_msgsEnableAlterMotionRequest {
    pub const MAX_WIRE_BYTES: usize = 38;
    pub const CARTESIAN_WIRE_BYTES: u64 = 38;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_fa62f478a04e6d92a170e62e1ea690f6e6827e3784388fab3ecc58966c25c99f";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 4)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        for element in &self.limit_dPOS {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.limit_dPOS_per {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if n > 38 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.n.to_le_bytes());
        put(out, at, &self.mode.to_le_bytes());
        put(out, at, &self.r#ref.to_le_bytes());
        for element in &self.limit_dPOS {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.limit_dPOS_per {
            put(out, at, &element.to_le_bytes());
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.n = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.mode = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.r#ref = decoded;
        {
            let count = 2usize;
            if count > 2 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.limit_dPOS[i] = decoded;
            }
        }
        {
            let count = 2usize;
            if count > 2 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.limit_dPOS_per[i] = decoded;
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsEnableAlterMotionRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 38 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 38 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 dsr_msgs/EnableAlterMotionResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsEnableAlterMotionResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsEnableAlterMotionResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsEnableAlterMotionResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_24f3d751a4b49ff5f3280893ecb2f896ae57a9a05309a8827c5ae8eb18daf885";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsEnableAlterMotionResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/FkinRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsFkinRequest {
    /// Declared pos; canonical bounds are part of CODEC_IDENTITY.
    pub pos: [f64; 6],
    /// Declared ref; canonical bounds are part of CODEC_IDENTITY.
    pub r#ref: i8,
}
impl Default for Ros1Dsr_msgsFkinRequest {
    fn default() -> Self {
        Self {
            pos: core::array::from_fn(|_| Default::default()),
            r#ref: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsFkinRequest {
    pub const MAX_WIRE_BYTES: usize = 49;
    pub const CARTESIAN_WIRE_BYTES: u64 = 49;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_6bbd7ead217dd4d6ed0f5d044df5a32d3be159fcc929a395396ec7c1208c325d";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.pos {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        n = add_size(n, 1)?;
        if n > 49 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        for element in &self.pos {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.r#ref.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.pos[i] = decoded;
            }
        }
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.r#ref = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsFkinRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 49 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 49 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 dsr_msgs/FkinResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsFkinResponse {
    /// Declared conv_posx; canonical bounds are part of CODEC_IDENTITY.
    pub conv_posx: [f64; 6],
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsFkinResponse {
    fn default() -> Self {
        Self {
            conv_posx: core::array::from_fn(|_| Default::default()),
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsFkinResponse {
    pub const MAX_WIRE_BYTES: usize = 49;
    pub const CARTESIAN_WIRE_BYTES: u64 = 49;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_86e79e02833be0498aef75436df542063454b0e5b0a46fb153467afc5a492c94";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.conv_posx {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        n = add_size(n, 1)?;
        if n > 49 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        for element in &self.conv_posx {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.conv_posx[i] = decoded;
            }
        }
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsFkinResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 49 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 49 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 dsr_msgs/GetControlModeRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetControlModeRequest {}
impl Default for Ros1Dsr_msgsGetControlModeRequest {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Dsr_msgsGetControlModeRequest {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_c7872f67adf097ccf8b60b910ea0c9ce8831a88b1ab82827b3789355b19fbaab";
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
impl Canonical for Ros1Dsr_msgsGetControlModeRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/GetControlModeResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetControlModeResponse {
    /// Declared control_mode; canonical bounds are part of CODEC_IDENTITY.
    pub control_mode: i8,
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsGetControlModeResponse {
    fn default() -> Self {
        Self {
            control_mode: Default::default(),
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsGetControlModeResponse {
    pub const MAX_WIRE_BYTES: usize = 2;
    pub const CARTESIAN_WIRE_BYTES: u64 = 2;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_29bcb7b65473a8e0c70660a270b9110c95d486358b6ccece3580214cb47d8f4f";
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
        put(out, at, &self.control_mode.to_le_bytes());
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.control_mode = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsGetControlModeResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/GetControlSpaceRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetControlSpaceRequest {}
impl Default for Ros1Dsr_msgsGetControlSpaceRequest {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Dsr_msgsGetControlSpaceRequest {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_eaff6359de691c20936219f59c4c63b1a439ef1367afee1e554d22c013bf74cf";
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
impl Canonical for Ros1Dsr_msgsGetControlSpaceRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/GetControlSpaceResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetControlSpaceResponse {
    /// Declared space; canonical bounds are part of CODEC_IDENTITY.
    pub space: i8,
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsGetControlSpaceResponse {
    fn default() -> Self {
        Self {
            space: Default::default(),
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsGetControlSpaceResponse {
    pub const MAX_WIRE_BYTES: usize = 2;
    pub const CARTESIAN_WIRE_BYTES: u64 = 2;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_4ef8cc2465e8d38e5d44fa83e907ea5658f14f5f4f95776f8044f791e8311dfb";
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
        put(out, at, &self.space.to_le_bytes());
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.space = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsGetControlSpaceResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/GetCtrlBoxAnalogInputRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest {
    /// Declared channel; canonical bounds are part of CODEC_IDENTITY.
    pub channel: i8,
}
impl Default for Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest {
    fn default() -> Self {
        Self {
            channel: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_0cfaa9f68b92deff18c68d7def4dda13dcd1082065218cc0af1ef8909a35898a";
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
        put(out, at, &self.channel.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.channel = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/GetCtrlBoxAnalogInputResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse {
    /// Declared value; canonical bounds are part of CODEC_IDENTITY.
    pub value: f64,
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse {
    fn default() -> Self {
        Self {
            value: Default::default(),
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse {
    pub const MAX_WIRE_BYTES: usize = 9;
    pub const CARTESIAN_WIRE_BYTES: u64 = 9;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_a23bcb46f249dc92a614e37a44ebb9e683921ee4104a22446855c8f3b35a6be7";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if !self.value.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        n = add_size(n, 1)?;
        if n > 9 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.value.to_le_bytes());
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.value = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 9 {
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
/// Complete bounded value for ROS1 dsr_msgs/GetCtrlBoxDigitalInputRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest {
    /// Declared index; canonical bounds are part of CODEC_IDENTITY.
    pub index: i8,
}
impl Default for Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest {
    fn default() -> Self {
        Self {
            index: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_43410710b24f4ef8aeb4533a0d45babb2adf93890d72c08ec45b1062e0d83f7e";
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
        put(out, at, &self.index.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.index = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/GetCtrlBoxDigitalInputResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse {
    /// Declared value; canonical bounds are part of CODEC_IDENTITY.
    pub value: i8,
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse {
    fn default() -> Self {
        Self {
            value: Default::default(),
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse {
    pub const MAX_WIRE_BYTES: usize = 2;
    pub const CARTESIAN_WIRE_BYTES: u64 = 2;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_f838432468390d51d64a6d9bc714b503b168a9fedfabcfb96cce7a202a34613f";
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
        put(out, at, &self.value.to_le_bytes());
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.value = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/GetCtrlBoxDigitalOutputRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequest {
    /// Declared index; canonical bounds are part of CODEC_IDENTITY.
    pub index: i8,
}
impl Default for Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequest {
    fn default() -> Self {
        Self {
            index: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequest {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_a33419794c2431ab9d5b6c3a96becb14edca0d7b00953aa7a7ec1f11ea7bbdb5";
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
        put(out, at, &self.index.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.index = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/GetCtrlBoxDigitalOutputResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponse {
    /// Declared value; canonical bounds are part of CODEC_IDENTITY.
    pub value: i8,
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponse {
    fn default() -> Self {
        Self {
            value: Default::default(),
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponse {
    pub const MAX_WIRE_BYTES: usize = 2;
    pub const CARTESIAN_WIRE_BYTES: u64 = 2;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_cf472a4ed84d8005ce6ea97ae3c2fd72aba049015924069ee16c79ad41c76534";
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
        put(out, at, &self.value.to_le_bytes());
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.value = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/GetCurrentPoseRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetCurrentPoseRequest {
    /// Declared space_type; canonical bounds are part of CODEC_IDENTITY.
    pub space_type: i8,
}
impl Default for Ros1Dsr_msgsGetCurrentPoseRequest {
    fn default() -> Self {
        Self {
            space_type: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsGetCurrentPoseRequest {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_674feef59812a37871c3022be9d588ffa67178430be01f47a4e3bca86766b72b";
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
        put(out, at, &self.space_type.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.space_type = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsGetCurrentPoseRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/GetCurrentPoseResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetCurrentPoseResponse {
    /// Declared pos; canonical bounds are part of CODEC_IDENTITY.
    pub pos: [f64; 6],
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsGetCurrentPoseResponse {
    fn default() -> Self {
        Self {
            pos: core::array::from_fn(|_| Default::default()),
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsGetCurrentPoseResponse {
    pub const MAX_WIRE_BYTES: usize = 49;
    pub const CARTESIAN_WIRE_BYTES: u64 = 49;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_8b57d2561b1a04d2ddb60c29f9a4ffb6ba6eeb2f73e8b7e704ee091b49861fe1";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.pos {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        n = add_size(n, 1)?;
        if n > 49 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        for element in &self.pos {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.pos[i] = decoded;
            }
        }
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsGetCurrentPoseResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 49 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 49 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 dsr_msgs/GetCurrentPosjRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetCurrentPosjRequest {}
impl Default for Ros1Dsr_msgsGetCurrentPosjRequest {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Dsr_msgsGetCurrentPosjRequest {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_5a4d2e7f7304671d96e5ee9ff83ad957d6e74f49ac2562aea6e3dbfcc1726be7";
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
impl Canonical for Ros1Dsr_msgsGetCurrentPosjRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/GetCurrentPosjResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetCurrentPosjResponse {
    /// Declared pos; canonical bounds are part of CODEC_IDENTITY.
    pub pos: [f64; 6],
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsGetCurrentPosjResponse {
    fn default() -> Self {
        Self {
            pos: core::array::from_fn(|_| Default::default()),
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsGetCurrentPosjResponse {
    pub const MAX_WIRE_BYTES: usize = 49;
    pub const CARTESIAN_WIRE_BYTES: u64 = 49;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_6d9f277e82052e84ee2494991ffcca6b8cb8457c2d0fdeb805122f99ae583c29";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.pos {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        n = add_size(n, 1)?;
        if n > 49 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        for element in &self.pos {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.pos[i] = decoded;
            }
        }
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsGetCurrentPosjResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 49 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 49 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 dsr_msgs/GetCurrentPosxRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetCurrentPosxRequest {
    /// Declared ref; canonical bounds are part of CODEC_IDENTITY.
    pub r#ref: i8,
}
impl Default for Ros1Dsr_msgsGetCurrentPosxRequest {
    fn default() -> Self {
        Self {
            r#ref: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsGetCurrentPosxRequest {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_e134a62a318034e8ab66c88085f8e9f0380500394b9d61bb2998a618fc7d3437";
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
        put(out, at, &self.r#ref.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.r#ref = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsGetCurrentPosxRequest {
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
/// Complete bounded value for ROS1 std_msgs/MultiArrayDimension.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Std_msgsMultiArrayDimension {
    /// Declared label; canonical bounds are part of CODEC_IDENTITY.
    pub label: String,
    /// Declared size; canonical bounds are part of CODEC_IDENTITY.
    pub size: u32,
    /// Declared stride; canonical bounds are part of CODEC_IDENTITY.
    pub stride: u32,
}
impl Default for Ros1Std_msgsMultiArrayDimension {
    fn default() -> Self {
        Self {
            label: Default::default(),
            size: Default::default(),
            stride: Default::default(),
        }
    }
}
impl Ros1Std_msgsMultiArrayDimension {
    pub const MAX_WIRE_BYTES: usize = 76;
    pub const CARTESIAN_WIRE_BYTES: u64 = 76;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_0a279c83cc8c73db2472e3768c8e17d877bb15d72d41f4056568a279b5352444";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.label.len() > 64 || self.label.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.label.len())?;
        n = add_size(n, 4)?;
        n = add_size(n, 4)?;
        if n > 76 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
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
        if size > 64 {
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
impl Canonical for Ros1Std_msgsMultiArrayDimension {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 76 {
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
/// Complete bounded value for ROS1 std_msgs/MultiArrayLayout.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Std_msgsMultiArrayLayout {
    /// Declared dim; canonical bounds are part of CODEC_IDENTITY.
    pub dim: Vec<Ros1Std_msgsMultiArrayDimension>,
    /// Declared data_offset; canonical bounds are part of CODEC_IDENTITY.
    pub data_offset: u32,
}
impl Default for Ros1Std_msgsMultiArrayLayout {
    fn default() -> Self {
        Self {
            dim: Default::default(),
            data_offset: Default::default(),
        }
    }
}
impl Ros1Std_msgsMultiArrayLayout {
    pub const MAX_WIRE_BYTES: usize = 236;
    pub const CARTESIAN_WIRE_BYTES: u64 = 236;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_602f6ec018f567486b5ea052944a24b0d798fdad5910915337ab6a76c966603e";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.dim.len() > 3 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.dim {
            n = add_size(n, element.wire_size()?)?;
        }
        n = add_size(n, 4)?;
        if n > 236 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
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
            if count > 3 {
                return Err(invalid());
            }
            value.dim = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros1Std_msgsMultiArrayDimension::read_fields(bytes, at)?;
                value.dim.push(decoded);
            }
        }
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.data_offset = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Std_msgsMultiArrayLayout {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 236 {
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
/// Complete bounded value for ROS1 std_msgs/Float64MultiArray.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Std_msgsFloat64MultiArray {
    /// Declared layout; canonical bounds are part of CODEC_IDENTITY.
    pub layout: Ros1Std_msgsMultiArrayLayout,
    /// Declared data; canonical bounds are part of CODEC_IDENTITY.
    pub data: Vec<f64>,
}
impl Default for Ros1Std_msgsFloat64MultiArray {
    fn default() -> Self {
        Self {
            layout: Default::default(),
            data: Default::default(),
        }
    }
}
impl Ros1Std_msgsFloat64MultiArray {
    pub const MAX_WIRE_BYTES: usize = 368;
    pub const CARTESIAN_WIRE_BYTES: u64 = 368;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_e75045efb9b80cdc278940f799d16f3b6f49ca4eeb67b4c095d1df4db133bdf8";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.layout.wire_size()?)?;
        if self.data.len() > 16 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.data {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if n > 368 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
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
        let decoded = Ros1Std_msgsMultiArrayLayout::read_fields(bytes, at)?;
        value.layout = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 16 {
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
impl Canonical for Ros1Std_msgsFloat64MultiArray {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 368 {
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
/// Complete bounded value for ROS1 dsr_msgs/GetCurrentPosxResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetCurrentPosxResponse {
    /// Declared task_pos_info; canonical bounds are part of CODEC_IDENTITY.
    pub task_pos_info: Vec<Ros1Std_msgsFloat64MultiArray>,
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsGetCurrentPosxResponse {
    fn default() -> Self {
        Self {
            task_pos_info: Default::default(),
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsGetCurrentPosxResponse {
    pub const MAX_WIRE_BYTES: usize = 2213;
    pub const CARTESIAN_WIRE_BYTES: u64 = 2213;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_2fb411b9e660dddd17fcd65507bd6437db63aa41b3d1eeecd5c0048405828bf4";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.task_pos_info.len() > 6 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.task_pos_info {
            n = add_size(n, element.wire_size()?)?;
        }
        n = add_size(n, 1)?;
        if n > 2213 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.task_pos_info.len() as u32).to_le_bytes());
        for element in &self.task_pos_info {
            element.write_fields(out, at);
        }
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = read_count(bytes, at)?;
            if count > 6 {
                return Err(invalid());
            }
            value.task_pos_info = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros1Std_msgsFloat64MultiArray::read_fields(bytes, at)?;
                value.task_pos_info.push(decoded);
            }
        }
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsGetCurrentPosxResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 2213 {
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
/// Complete bounded value for ROS1 dsr_msgs/GetCurrentRotmRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetCurrentRotmRequest {
    /// Declared ref; canonical bounds are part of CODEC_IDENTITY.
    pub r#ref: i8,
}
impl Default for Ros1Dsr_msgsGetCurrentRotmRequest {
    fn default() -> Self {
        Self {
            r#ref: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsGetCurrentRotmRequest {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_e0f4ee3e0c208a87004cca9771a0696f4acfa8a09ab6a861b8a83bd28ccfb436";
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
        put(out, at, &self.r#ref.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.r#ref = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsGetCurrentRotmRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/GetCurrentRotmResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetCurrentRotmResponse {
    /// Declared rot_matrix; canonical bounds are part of CODEC_IDENTITY.
    pub rot_matrix: Vec<Ros1Std_msgsFloat64MultiArray>,
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsGetCurrentRotmResponse {
    fn default() -> Self {
        Self {
            rot_matrix: Default::default(),
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsGetCurrentRotmResponse {
    pub const MAX_WIRE_BYTES: usize = 2213;
    pub const CARTESIAN_WIRE_BYTES: u64 = 2213;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_6cfa5fffb8e5c1575cb821b9330dd9e1f60ab3b325d54ff4d00bc8859e7535d1";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.rot_matrix.len() > 6 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.rot_matrix {
            n = add_size(n, element.wire_size()?)?;
        }
        n = add_size(n, 1)?;
        if n > 2213 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.rot_matrix.len() as u32).to_le_bytes());
        for element in &self.rot_matrix {
            element.write_fields(out, at);
        }
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = read_count(bytes, at)?;
            if count > 6 {
                return Err(invalid());
            }
            value.rot_matrix = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros1Std_msgsFloat64MultiArray::read_fields(bytes, at)?;
                value.rot_matrix.push(decoded);
            }
        }
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsGetCurrentRotmResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 2213 {
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
/// Complete bounded value for ROS1 dsr_msgs/GetCurrentSolutionSpaceRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetCurrentSolutionSpaceRequest {}
impl Default for Ros1Dsr_msgsGetCurrentSolutionSpaceRequest {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Dsr_msgsGetCurrentSolutionSpaceRequest {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_303fe75ff690897d18296dfb34aad4b0482e372656ed5c85bf9d60bb1832af78";
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
impl Canonical for Ros1Dsr_msgsGetCurrentSolutionSpaceRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/GetCurrentSolutionSpaceResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetCurrentSolutionSpaceResponse {
    /// Declared sol_space; canonical bounds are part of CODEC_IDENTITY.
    pub sol_space: i8,
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsGetCurrentSolutionSpaceResponse {
    fn default() -> Self {
        Self {
            sol_space: Default::default(),
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsGetCurrentSolutionSpaceResponse {
    pub const MAX_WIRE_BYTES: usize = 2;
    pub const CARTESIAN_WIRE_BYTES: u64 = 2;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_e7ef22b6516c92acb76e6173e0d14f0b7c25a7ec669ef18060b4f1158e877c68";
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
        put(out, at, &self.sol_space.to_le_bytes());
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.sol_space = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsGetCurrentSolutionSpaceResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/GetCurrentTcpRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetCurrentTcpRequest {}
impl Default for Ros1Dsr_msgsGetCurrentTcpRequest {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Dsr_msgsGetCurrentTcpRequest {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_f2a902cbf141335bb559f739861860de93f07d3ed3200ba91833b831389eb3b8";
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
impl Canonical for Ros1Dsr_msgsGetCurrentTcpRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/GetCurrentTcpResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetCurrentTcpResponse {
    /// Declared info; canonical bounds are part of CODEC_IDENTITY.
    pub info: String,
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsGetCurrentTcpResponse {
    fn default() -> Self {
        Self {
            info: Default::default(),
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsGetCurrentTcpResponse {
    pub const MAX_WIRE_BYTES: usize = 261;
    pub const CARTESIAN_WIRE_BYTES: u64 = 261;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_e0041507b5cdc970e31a6df40a0af22a4115724b1e4c4f615b54c788cf2f27b6";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.info.len() > 256 || self.info.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.info.len())?;
        n = add_size(n, 1)?;
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
        put(out, at, &(self.info.len() as u32).to_le_bytes());
        put(out, at, self.info.as_bytes());
        put(out, at, &[u8::from(self.success)]);
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
        value.info = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsGetCurrentTcpResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/GetCurrentToolRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetCurrentToolRequest {}
impl Default for Ros1Dsr_msgsGetCurrentToolRequest {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Dsr_msgsGetCurrentToolRequest {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_0d86dff574728cebfb33a873845e9563665d4173267adbc6fd7f542d26b15970";
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
impl Canonical for Ros1Dsr_msgsGetCurrentToolRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/GetCurrentToolResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetCurrentToolResponse {
    /// Declared info; canonical bounds are part of CODEC_IDENTITY.
    pub info: String,
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsGetCurrentToolResponse {
    fn default() -> Self {
        Self {
            info: Default::default(),
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsGetCurrentToolResponse {
    pub const MAX_WIRE_BYTES: usize = 261;
    pub const CARTESIAN_WIRE_BYTES: u64 = 261;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_ab0de7b251e53fe03818ec0169e428bf70c27bdef187c792c54e65e37b2e717b";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.info.len() > 256 || self.info.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.info.len())?;
        n = add_size(n, 1)?;
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
        put(out, at, &(self.info.len() as u32).to_le_bytes());
        put(out, at, self.info.as_bytes());
        put(out, at, &[u8::from(self.success)]);
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
        value.info = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsGetCurrentToolResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/GetCurrentToolFlangePosxRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetCurrentToolFlangePosxRequest {
    /// Declared ref; canonical bounds are part of CODEC_IDENTITY.
    pub r#ref: i8,
}
impl Default for Ros1Dsr_msgsGetCurrentToolFlangePosxRequest {
    fn default() -> Self {
        Self {
            r#ref: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsGetCurrentToolFlangePosxRequest {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_c5377881231716926a6e0abeff2b115eaf5292f0d7e41478a7f1b4ccf7896d53";
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
        put(out, at, &self.r#ref.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.r#ref = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsGetCurrentToolFlangePosxRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/GetCurrentToolFlangePosxResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetCurrentToolFlangePosxResponse {
    /// Declared pos; canonical bounds are part of CODEC_IDENTITY.
    pub pos: [f64; 6],
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsGetCurrentToolFlangePosxResponse {
    fn default() -> Self {
        Self {
            pos: core::array::from_fn(|_| Default::default()),
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsGetCurrentToolFlangePosxResponse {
    pub const MAX_WIRE_BYTES: usize = 49;
    pub const CARTESIAN_WIRE_BYTES: u64 = 49;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_0de91ced161ef1b14003e0e248887f641fd366500674aae15cbbb0f7d915caac";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.pos {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        n = add_size(n, 1)?;
        if n > 49 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        for element in &self.pos {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.pos[i] = decoded;
            }
        }
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsGetCurrentToolFlangePosxResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 49 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 49 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 dsr_msgs/GetCurrentVeljRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetCurrentVeljRequest {}
impl Default for Ros1Dsr_msgsGetCurrentVeljRequest {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Dsr_msgsGetCurrentVeljRequest {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_ee4ef9a4e0b65ed58844e3b545094c569113b23d2478717306a14edb399242fa";
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
impl Canonical for Ros1Dsr_msgsGetCurrentVeljRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/GetCurrentVeljResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetCurrentVeljResponse {
    /// Declared joint_speed; canonical bounds are part of CODEC_IDENTITY.
    pub joint_speed: [f64; 6],
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsGetCurrentVeljResponse {
    fn default() -> Self {
        Self {
            joint_speed: core::array::from_fn(|_| Default::default()),
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsGetCurrentVeljResponse {
    pub const MAX_WIRE_BYTES: usize = 49;
    pub const CARTESIAN_WIRE_BYTES: u64 = 49;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_000fed042d8de5fd8a1d95fe6b45cec5e4ad20ea2833199d7836ebb9e3ae5b2c";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.joint_speed {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        n = add_size(n, 1)?;
        if n > 49 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        for element in &self.joint_speed {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.joint_speed[i] = decoded;
            }
        }
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsGetCurrentVeljResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 49 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 49 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 dsr_msgs/GetCurrentVelxRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetCurrentVelxRequest {
    /// Declared ref; canonical bounds are part of CODEC_IDENTITY.
    pub r#ref: i8,
}
impl Default for Ros1Dsr_msgsGetCurrentVelxRequest {
    fn default() -> Self {
        Self {
            r#ref: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsGetCurrentVelxRequest {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_6f37a0ffd22a29a6b7812d551680cacb146192c25b234806ff16686992c34efb";
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
        put(out, at, &self.r#ref.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.r#ref = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsGetCurrentVelxRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/GetCurrentVelxResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetCurrentVelxResponse {
    /// Declared vel; canonical bounds are part of CODEC_IDENTITY.
    pub vel: [f64; 6],
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsGetCurrentVelxResponse {
    fn default() -> Self {
        Self {
            vel: core::array::from_fn(|_| Default::default()),
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsGetCurrentVelxResponse {
    pub const MAX_WIRE_BYTES: usize = 49;
    pub const CARTESIAN_WIRE_BYTES: u64 = 49;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_98c1cd7ae5663063ce12ea61d9be3dbfd37e9e0b10b6a7f4cc1c212419392f40";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.vel {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        n = add_size(n, 1)?;
        if n > 49 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        for element in &self.vel {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.vel[i] = decoded;
            }
        }
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsGetCurrentVelxResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 49 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 49 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 dsr_msgs/GetDesiredPosjRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetDesiredPosjRequest {}
impl Default for Ros1Dsr_msgsGetDesiredPosjRequest {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Dsr_msgsGetDesiredPosjRequest {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_2937a5625d07a7681c80c13557018978107abc537a22ee85ff562f15925caf1e";
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
impl Canonical for Ros1Dsr_msgsGetDesiredPosjRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/GetDesiredPosjResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetDesiredPosjResponse {
    /// Declared pos; canonical bounds are part of CODEC_IDENTITY.
    pub pos: [f64; 6],
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsGetDesiredPosjResponse {
    fn default() -> Self {
        Self {
            pos: core::array::from_fn(|_| Default::default()),
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsGetDesiredPosjResponse {
    pub const MAX_WIRE_BYTES: usize = 49;
    pub const CARTESIAN_WIRE_BYTES: u64 = 49;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_11ac4a05e65b0142f18a152904020780179fadfe540fbff7d5c53e4f177bc833";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.pos {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        n = add_size(n, 1)?;
        if n > 49 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        for element in &self.pos {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.pos[i] = decoded;
            }
        }
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsGetDesiredPosjResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 49 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 49 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 dsr_msgs/GetDesiredPosxRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetDesiredPosxRequest {
    /// Declared ref; canonical bounds are part of CODEC_IDENTITY.
    pub r#ref: i8,
}
impl Default for Ros1Dsr_msgsGetDesiredPosxRequest {
    fn default() -> Self {
        Self {
            r#ref: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsGetDesiredPosxRequest {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_812744777c143dfb5c4b60f71ab9461b3e95ead9e599473f87f88ba4f21d3563";
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
        put(out, at, &self.r#ref.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.r#ref = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsGetDesiredPosxRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/GetDesiredPosxResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetDesiredPosxResponse {
    /// Declared pos; canonical bounds are part of CODEC_IDENTITY.
    pub pos: [f64; 6],
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsGetDesiredPosxResponse {
    fn default() -> Self {
        Self {
            pos: core::array::from_fn(|_| Default::default()),
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsGetDesiredPosxResponse {
    pub const MAX_WIRE_BYTES: usize = 49;
    pub const CARTESIAN_WIRE_BYTES: u64 = 49;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_2cf88bb8a14a1c2083a659a509fc1d29531aed1a1f9eb18590ad4381ff00a10a";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.pos {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        n = add_size(n, 1)?;
        if n > 49 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        for element in &self.pos {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.pos[i] = decoded;
            }
        }
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsGetDesiredPosxResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 49 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 49 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 dsr_msgs/GetDesiredVeljRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetDesiredVeljRequest {}
impl Default for Ros1Dsr_msgsGetDesiredVeljRequest {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Dsr_msgsGetDesiredVeljRequest {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_0b93381c0f1e5f57e086d316056912ecb10e3697346e5f250fa5efa612d76e99";
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
impl Canonical for Ros1Dsr_msgsGetDesiredVeljRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/GetDesiredVeljResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetDesiredVeljResponse {
    /// Declared joint_vel; canonical bounds are part of CODEC_IDENTITY.
    pub joint_vel: [f64; 6],
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsGetDesiredVeljResponse {
    fn default() -> Self {
        Self {
            joint_vel: core::array::from_fn(|_| Default::default()),
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsGetDesiredVeljResponse {
    pub const MAX_WIRE_BYTES: usize = 49;
    pub const CARTESIAN_WIRE_BYTES: u64 = 49;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_753747a45767aad1a06f610e11bfd405d07aa365ff1ede44c4b78de99ef6ef22";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.joint_vel {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        n = add_size(n, 1)?;
        if n > 49 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        for element in &self.joint_vel {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.joint_vel[i] = decoded;
            }
        }
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsGetDesiredVeljResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 49 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 49 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 dsr_msgs/GetDesiredVelxRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetDesiredVelxRequest {
    /// Declared ref; canonical bounds are part of CODEC_IDENTITY.
    pub r#ref: i8,
}
impl Default for Ros1Dsr_msgsGetDesiredVelxRequest {
    fn default() -> Self {
        Self {
            r#ref: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsGetDesiredVelxRequest {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_f26e4ab51d82b3afdaf0f628f62346c740e2bb331d7f482001662884fd6d8aff";
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
        put(out, at, &self.r#ref.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.r#ref = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsGetDesiredVelxRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/GetDesiredVelxResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetDesiredVelxResponse {
    /// Declared vel; canonical bounds are part of CODEC_IDENTITY.
    pub vel: [f64; 6],
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsGetDesiredVelxResponse {
    fn default() -> Self {
        Self {
            vel: core::array::from_fn(|_| Default::default()),
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsGetDesiredVelxResponse {
    pub const MAX_WIRE_BYTES: usize = 49;
    pub const CARTESIAN_WIRE_BYTES: u64 = 49;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_30fd91ceb67fa5a2cdaf78fc9b537befc89bac4e3db1203f1da10181fb7d9e51";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.vel {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        n = add_size(n, 1)?;
        if n > 49 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        for element in &self.vel {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.vel[i] = decoded;
            }
        }
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsGetDesiredVelxResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 49 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 49 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 dsr_msgs/GetDrlStateRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetDrlStateRequest {}
impl Default for Ros1Dsr_msgsGetDrlStateRequest {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Dsr_msgsGetDrlStateRequest {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_425ce8ba966c52337c8d06a8436d593e8333a33cdb21ecdb983df3db9980d51f";
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
impl Canonical for Ros1Dsr_msgsGetDrlStateRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/GetDrlStateResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetDrlStateResponse {
    /// Declared drl_state; canonical bounds are part of CODEC_IDENTITY.
    pub drl_state: i8,
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsGetDrlStateResponse {
    fn default() -> Self {
        Self {
            drl_state: Default::default(),
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsGetDrlStateResponse {
    pub const MAX_WIRE_BYTES: usize = 2;
    pub const CARTESIAN_WIRE_BYTES: u64 = 2;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_2d0e1a81d0a1b5cda2cc3c4a9a5e627878324c67a0843e8a47583d4d86c149c9";
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
        put(out, at, &self.drl_state.to_le_bytes());
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.drl_state = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsGetDrlStateResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/GetExternalTorqueRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetExternalTorqueRequest {}
impl Default for Ros1Dsr_msgsGetExternalTorqueRequest {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Dsr_msgsGetExternalTorqueRequest {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_601bfc2f1283520f2dd76e3f0eee05c02e584873e22b2188f6206cc22d96ee11";
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
impl Canonical for Ros1Dsr_msgsGetExternalTorqueRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/GetExternalTorqueResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetExternalTorqueResponse {
    /// Declared ext_torque; canonical bounds are part of CODEC_IDENTITY.
    pub ext_torque: [f64; 6],
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsGetExternalTorqueResponse {
    fn default() -> Self {
        Self {
            ext_torque: core::array::from_fn(|_| Default::default()),
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsGetExternalTorqueResponse {
    pub const MAX_WIRE_BYTES: usize = 49;
    pub const CARTESIAN_WIRE_BYTES: u64 = 49;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_bdcda8b96e5a22a9143c70f5af6ea56deabe1c68fbf03eb176689c14cc2f50e4";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.ext_torque {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        n = add_size(n, 1)?;
        if n > 49 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        for element in &self.ext_torque {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.ext_torque[i] = decoded;
            }
        }
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsGetExternalTorqueResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 49 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 49 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 dsr_msgs/GetJointTorqueRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetJointTorqueRequest {}
impl Default for Ros1Dsr_msgsGetJointTorqueRequest {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Dsr_msgsGetJointTorqueRequest {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_63dee3592e81bf9c2442ba8f01660710ef80c01c3ab55a73c35404da2d6da149";
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
impl Canonical for Ros1Dsr_msgsGetJointTorqueRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/GetJointTorqueResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetJointTorqueResponse {
    /// Declared jts; canonical bounds are part of CODEC_IDENTITY.
    pub jts: [f64; 6],
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsGetJointTorqueResponse {
    fn default() -> Self {
        Self {
            jts: core::array::from_fn(|_| Default::default()),
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsGetJointTorqueResponse {
    pub const MAX_WIRE_BYTES: usize = 49;
    pub const CARTESIAN_WIRE_BYTES: u64 = 49;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_da41dbdbac4580eaab3ad355caaa9e0075b87894256722521303559c698b9962";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.jts {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        n = add_size(n, 1)?;
        if n > 49 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        for element in &self.jts {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.jts[i] = decoded;
            }
        }
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsGetJointTorqueResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 49 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 49 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 dsr_msgs/GetLastAlarmRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetLastAlarmRequest {}
impl Default for Ros1Dsr_msgsGetLastAlarmRequest {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Dsr_msgsGetLastAlarmRequest {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_4ff39c1f6b320245fd73e84755fe876eb12177c4a7b3ac3888d870ec5a761bdf";
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
impl Canonical for Ros1Dsr_msgsGetLastAlarmRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/LogAlarm.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsLogAlarm {
    /// Declared level; canonical bounds are part of CODEC_IDENTITY.
    pub level: i32,
    /// Declared group; canonical bounds are part of CODEC_IDENTITY.
    pub group: i32,
    /// Declared index; canonical bounds are part of CODEC_IDENTITY.
    pub index: i32,
    /// Declared param; canonical bounds are part of CODEC_IDENTITY.
    pub param: [String; 3],
}
impl Default for Ros1Dsr_msgsLogAlarm {
    fn default() -> Self {
        Self {
            level: Default::default(),
            group: Default::default(),
            index: Default::default(),
            param: core::array::from_fn(|_| Default::default()),
        }
    }
}
impl Ros1Dsr_msgsLogAlarm {
    pub const MAX_WIRE_BYTES: usize = 792;
    pub const CARTESIAN_WIRE_BYTES: u64 = 792;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_39a6ecc178ed79ab41cd3948b6efb9666f66b0c33b6abe7845b1d16a17f9700f";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 4)?;
        n = add_size(n, 4)?;
        n = add_size(n, 4)?;
        for element in &self.param {
            if element.len() > 256 || element.as_bytes().contains(&0) {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
            n = add_size(n, element.len())?;
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
        put(out, at, &self.level.to_le_bytes());
        put(out, at, &self.group.to_le_bytes());
        put(out, at, &self.index.to_le_bytes());
        for element in &self.param {
            put(out, at, &(element.len() as u32).to_le_bytes());
            put(out, at, element.as_bytes());
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.level = decoded;
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.group = decoded;
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.index = decoded;
        {
            let count = 3usize;
            if count > 3 {
                return Err(invalid());
            }
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
                value.param[i] = decoded;
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsLogAlarm {
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
/// Complete bounded value for ROS1 dsr_msgs/GetLastAlarmResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetLastAlarmResponse {
    /// Declared log_alarm; canonical bounds are part of CODEC_IDENTITY.
    pub log_alarm: Ros1Dsr_msgsLogAlarm,
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsGetLastAlarmResponse {
    fn default() -> Self {
        Self {
            log_alarm: Default::default(),
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsGetLastAlarmResponse {
    pub const MAX_WIRE_BYTES: usize = 793;
    pub const CARTESIAN_WIRE_BYTES: u64 = 793;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_477c434da50cd9b26e93b02ca9072542afc22b62084cf5a9eb785cd43cb4d61e";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.log_alarm.wire_size()?)?;
        n = add_size(n, 1)?;
        if n > 793 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.log_alarm.write_fields(out, at);
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Dsr_msgsLogAlarm::read_fields(bytes, at)?;
        value.log_alarm = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsGetLastAlarmResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 793 {
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
/// Complete bounded value for ROS1 dsr_msgs/GetModbusInputRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetModbusInputRequest {
    /// Declared name; canonical bounds are part of CODEC_IDENTITY.
    pub name: String,
}
impl Default for Ros1Dsr_msgsGetModbusInputRequest {
    fn default() -> Self {
        Self {
            name: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsGetModbusInputRequest {
    pub const MAX_WIRE_BYTES: usize = 260;
    pub const CARTESIAN_WIRE_BYTES: u64 = 260;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_812e7d2d259db6a466dd304239aee910848a1fb9059c431f3495825d8ebe800c";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.name.len() > 256 || self.name.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.name.len())?;
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
        put(out, at, &(self.name.len() as u32).to_le_bytes());
        put(out, at, self.name.as_bytes());
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
        value.name = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsGetModbusInputRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/GetModbusInputResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetModbusInputResponse {
    /// Declared value; canonical bounds are part of CODEC_IDENTITY.
    pub value: i32,
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsGetModbusInputResponse {
    fn default() -> Self {
        Self {
            value: Default::default(),
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsGetModbusInputResponse {
    pub const MAX_WIRE_BYTES: usize = 5;
    pub const CARTESIAN_WIRE_BYTES: u64 = 5;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_29360b7702eec80f1dd7915cc8bb58fb5126d93b545cb921b7eb9c3ffa0b49d5";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 4)?;
        n = add_size(n, 1)?;
        if n > 5 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.value.to_le_bytes());
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.value = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsGetModbusInputResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 5 {
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
/// Complete bounded value for ROS1 dsr_msgs/GetOrientationErrorRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetOrientationErrorRequest {
    /// Declared xd; canonical bounds are part of CODEC_IDENTITY.
    pub xd: [f64; 6],
    /// Declared xc; canonical bounds are part of CODEC_IDENTITY.
    pub xc: [f64; 6],
    /// Declared axis; canonical bounds are part of CODEC_IDENTITY.
    pub axis: i8,
}
impl Default for Ros1Dsr_msgsGetOrientationErrorRequest {
    fn default() -> Self {
        Self {
            xd: core::array::from_fn(|_| Default::default()),
            xc: core::array::from_fn(|_| Default::default()),
            axis: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsGetOrientationErrorRequest {
    pub const MAX_WIRE_BYTES: usize = 97;
    pub const CARTESIAN_WIRE_BYTES: u64 = 97;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_db1e637c2f187602b5c3aaa2b3e33fb1b7636b28281832d393d3516984e9e01e";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.xd {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.xc {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        n = add_size(n, 1)?;
        if n > 97 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        for element in &self.xd {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.xc {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.axis.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.xd[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.xc[i] = decoded;
            }
        }
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.axis = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsGetOrientationErrorRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 97 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 97 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 dsr_msgs/GetOrientationErrorResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetOrientationErrorResponse {
    /// Declared ori_error; canonical bounds are part of CODEC_IDENTITY.
    pub ori_error: f32,
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsGetOrientationErrorResponse {
    fn default() -> Self {
        Self {
            ori_error: Default::default(),
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsGetOrientationErrorResponse {
    pub const MAX_WIRE_BYTES: usize = 5;
    pub const CARTESIAN_WIRE_BYTES: u64 = 5;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_909be18b65c95198ce5c5a7b2a11ae97cfad9509c360aec833bbfd239497b9e6";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if !self.ori_error.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, 1)?;
        if n > 5 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.ori_error.to_le_bytes());
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.ori_error = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsGetOrientationErrorResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 5 {
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
/// Complete bounded value for ROS1 dsr_msgs/GetRTControlInputDataListRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetRTControlInputDataListRequest {
    /// Declared version; canonical bounds are part of CODEC_IDENTITY.
    pub version: String,
}
impl Default for Ros1Dsr_msgsGetRTControlInputDataListRequest {
    fn default() -> Self {
        Self {
            version: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsGetRTControlInputDataListRequest {
    pub const MAX_WIRE_BYTES: usize = 260;
    pub const CARTESIAN_WIRE_BYTES: u64 = 260;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_7f10baf8b008b8de00c2fcc20aea49615584980c73d20b6018e39e5a6b98542e";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.version.len() > 256 || self.version.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.version.len())?;
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
        put(out, at, &(self.version.len() as u32).to_le_bytes());
        put(out, at, self.version.as_bytes());
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
        value.version = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsGetRTControlInputDataListRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/GetRTControlInputDataListResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetRTControlInputDataListResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
    /// Declared data; canonical bounds are part of CODEC_IDENTITY.
    pub data: String,
}
impl Default for Ros1Dsr_msgsGetRTControlInputDataListResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
            data: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsGetRTControlInputDataListResponse {
    pub const MAX_WIRE_BYTES: usize = 261;
    pub const CARTESIAN_WIRE_BYTES: u64 = 261;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_e930906de3694556f29baaacac82899dab1ad90716d52c67789e2494ed64ec63";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if self.data.len() > 256 || self.data.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.data.len())?;
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
        put(out, at, &(self.data.len() as u32).to_le_bytes());
        put(out, at, self.data.as_bytes());
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
        value.data = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsGetRTControlInputDataListResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/GetRTControlInputVersionListRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetRTControlInputVersionListRequest {}
impl Default for Ros1Dsr_msgsGetRTControlInputVersionListRequest {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Dsr_msgsGetRTControlInputVersionListRequest {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_e9bef63b747d0b01343249f0df32a27a7f97a5b031ec2215fac346a9df113fb8";
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
impl Canonical for Ros1Dsr_msgsGetRTControlInputVersionListRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/GetRTControlInputVersionListResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetRTControlInputVersionListResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
    /// Declared version; canonical bounds are part of CODEC_IDENTITY.
    pub version: String,
}
impl Default for Ros1Dsr_msgsGetRTControlInputVersionListResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
            version: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsGetRTControlInputVersionListResponse {
    pub const MAX_WIRE_BYTES: usize = 261;
    pub const CARTESIAN_WIRE_BYTES: u64 = 261;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_d7c478e4dce0983f786db7df29798eee087e500169b9e1f676a3c57c835d94f1";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if self.version.len() > 256 || self.version.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.version.len())?;
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
        put(out, at, &(self.version.len() as u32).to_le_bytes());
        put(out, at, self.version.as_bytes());
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
        value.version = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsGetRTControlInputVersionListResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/GetRTControlOutputDataListRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetRTControlOutputDataListRequest {
    /// Declared version; canonical bounds are part of CODEC_IDENTITY.
    pub version: String,
}
impl Default for Ros1Dsr_msgsGetRTControlOutputDataListRequest {
    fn default() -> Self {
        Self {
            version: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsGetRTControlOutputDataListRequest {
    pub const MAX_WIRE_BYTES: usize = 260;
    pub const CARTESIAN_WIRE_BYTES: u64 = 260;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_ce20938bf62ee2d5389c4151d16af5e0cb8f935b5cf4c7e14070f269a0baa524";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.version.len() > 256 || self.version.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.version.len())?;
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
        put(out, at, &(self.version.len() as u32).to_le_bytes());
        put(out, at, self.version.as_bytes());
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
        value.version = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsGetRTControlOutputDataListRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/GetRTControlOutputDataListResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetRTControlOutputDataListResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
    /// Declared data; canonical bounds are part of CODEC_IDENTITY.
    pub data: String,
}
impl Default for Ros1Dsr_msgsGetRTControlOutputDataListResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
            data: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsGetRTControlOutputDataListResponse {
    pub const MAX_WIRE_BYTES: usize = 261;
    pub const CARTESIAN_WIRE_BYTES: u64 = 261;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_030d3e350790b44f0101b263558518a807d97c772289c2eb16763808be6b1d5f";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if self.data.len() > 256 || self.data.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.data.len())?;
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
        put(out, at, &(self.data.len() as u32).to_le_bytes());
        put(out, at, self.data.as_bytes());
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
        value.data = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsGetRTControlOutputDataListResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/GetRTControlOutputVersionListRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetRTControlOutputVersionListRequest {}
impl Default for Ros1Dsr_msgsGetRTControlOutputVersionListRequest {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Dsr_msgsGetRTControlOutputVersionListRequest {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_67330fd6822948e262d4d68e48593e67189bada0e5281607a074235f086b34d0";
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
impl Canonical for Ros1Dsr_msgsGetRTControlOutputVersionListRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/GetRTControlOutputVersionListResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetRTControlOutputVersionListResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
    /// Declared version; canonical bounds are part of CODEC_IDENTITY.
    pub version: String,
}
impl Default for Ros1Dsr_msgsGetRTControlOutputVersionListResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
            version: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsGetRTControlOutputVersionListResponse {
    pub const MAX_WIRE_BYTES: usize = 261;
    pub const CARTESIAN_WIRE_BYTES: u64 = 261;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_19ca1e03d18347033f071489428024a1f9204b64aced31a42c8161d11e5fa76b";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if self.version.len() > 256 || self.version.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.version.len())?;
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
        put(out, at, &(self.version.len() as u32).to_le_bytes());
        put(out, at, self.version.as_bytes());
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
        value.version = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsGetRTControlOutputVersionListResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/GetRobotModeRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetRobotModeRequest {}
impl Default for Ros1Dsr_msgsGetRobotModeRequest {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Dsr_msgsGetRobotModeRequest {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_228237c16ea308e25d1a5fb7f74713a31a67e6e1e6b0a94f06c30264ed90af90";
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
impl Canonical for Ros1Dsr_msgsGetRobotModeRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/GetRobotModeResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetRobotModeResponse {
    /// Declared robot_mode; canonical bounds are part of CODEC_IDENTITY.
    pub robot_mode: i8,
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsGetRobotModeResponse {
    fn default() -> Self {
        Self {
            robot_mode: Default::default(),
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsGetRobotModeResponse {
    pub const MAX_WIRE_BYTES: usize = 2;
    pub const CARTESIAN_WIRE_BYTES: u64 = 2;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_559f9328cba413aa572f66818aace6061020777c2cbb6bea475adf3cbca1a88c";
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
        put(out, at, &self.robot_mode.to_le_bytes());
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.robot_mode = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsGetRobotModeResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/GetRobotSpeedModeRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetRobotSpeedModeRequest {}
impl Default for Ros1Dsr_msgsGetRobotSpeedModeRequest {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Dsr_msgsGetRobotSpeedModeRequest {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_ff02ad740851d4dc6955206ffa3556f6564854bd6edd6a8190ce44f8ba9709d4";
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
impl Canonical for Ros1Dsr_msgsGetRobotSpeedModeRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/GetRobotSpeedModeResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetRobotSpeedModeResponse {
    /// Declared speed_mode; canonical bounds are part of CODEC_IDENTITY.
    pub speed_mode: i8,
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsGetRobotSpeedModeResponse {
    fn default() -> Self {
        Self {
            speed_mode: Default::default(),
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsGetRobotSpeedModeResponse {
    pub const MAX_WIRE_BYTES: usize = 2;
    pub const CARTESIAN_WIRE_BYTES: u64 = 2;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_eaef45ce098108c89a49b2ed3e0cfeba901d7a9e8e4fee86d7c646e181cfe3c4";
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
        put(out, at, &self.speed_mode.to_le_bytes());
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.speed_mode = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsGetRobotSpeedModeResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/GetRobotStateRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetRobotStateRequest {}
impl Default for Ros1Dsr_msgsGetRobotStateRequest {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Dsr_msgsGetRobotStateRequest {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_b773b6fe4f08ade05cc0bac7e0d70cb7edcfa763f83608d944bf072da4ad08bc";
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
impl Canonical for Ros1Dsr_msgsGetRobotStateRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/GetRobotStateResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetRobotStateResponse {
    /// Declared robot_state; canonical bounds are part of CODEC_IDENTITY.
    pub robot_state: i8,
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsGetRobotStateResponse {
    fn default() -> Self {
        Self {
            robot_state: Default::default(),
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsGetRobotStateResponse {
    pub const MAX_WIRE_BYTES: usize = 2;
    pub const CARTESIAN_WIRE_BYTES: u64 = 2;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_1e210aa1fd0a833b8d8dedbbda759f12b860c7cbe161f2bed50b41015451ba51";
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
        put(out, at, &self.robot_state.to_le_bytes());
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.robot_state = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsGetRobotStateResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/GetRobotSystemRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetRobotSystemRequest {}
impl Default for Ros1Dsr_msgsGetRobotSystemRequest {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Dsr_msgsGetRobotSystemRequest {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_43cc52a8d4b5e36ace679eb3f5bad943b3052bb0dec9f8af6f58f2d5c7deb203";
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
impl Canonical for Ros1Dsr_msgsGetRobotSystemRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/GetRobotSystemResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetRobotSystemResponse {
    /// Declared robot_system; canonical bounds are part of CODEC_IDENTITY.
    pub robot_system: i8,
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsGetRobotSystemResponse {
    fn default() -> Self {
        Self {
            robot_system: Default::default(),
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsGetRobotSystemResponse {
    pub const MAX_WIRE_BYTES: usize = 2;
    pub const CARTESIAN_WIRE_BYTES: u64 = 2;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_b7f7ec9a3e0bf607295bc5d0af1d82d192bc35103401c913c4ed8a8c77811c7f";
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
        put(out, at, &self.robot_system.to_le_bytes());
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.robot_system = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsGetRobotSystemResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/GetSolutionSpaceRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetSolutionSpaceRequest {
    /// Declared pos; canonical bounds are part of CODEC_IDENTITY.
    pub pos: [f64; 6],
}
impl Default for Ros1Dsr_msgsGetSolutionSpaceRequest {
    fn default() -> Self {
        Self {
            pos: core::array::from_fn(|_| Default::default()),
        }
    }
}
impl Ros1Dsr_msgsGetSolutionSpaceRequest {
    pub const MAX_WIRE_BYTES: usize = 48;
    pub const CARTESIAN_WIRE_BYTES: u64 = 48;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_416c6623add6fed0900f585292905890932f326162a1431b481b28aac52c7bf3";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.pos {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
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
        for element in &self.pos {
            put(out, at, &element.to_le_bytes());
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.pos[i] = decoded;
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsGetSolutionSpaceRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/GetSolutionSpaceResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetSolutionSpaceResponse {
    /// Declared sol_space; canonical bounds are part of CODEC_IDENTITY.
    pub sol_space: i8,
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsGetSolutionSpaceResponse {
    fn default() -> Self {
        Self {
            sol_space: Default::default(),
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsGetSolutionSpaceResponse {
    pub const MAX_WIRE_BYTES: usize = 2;
    pub const CARTESIAN_WIRE_BYTES: u64 = 2;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_d6cf69fb571a6947cabc01a594e84d1eed7a581511e755db9dde5452f1230511";
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
        put(out, at, &self.sol_space.to_le_bytes());
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.sol_space = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsGetSolutionSpaceResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/GetToolDigitalInputRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetToolDigitalInputRequest {
    /// Declared index; canonical bounds are part of CODEC_IDENTITY.
    pub index: i8,
}
impl Default for Ros1Dsr_msgsGetToolDigitalInputRequest {
    fn default() -> Self {
        Self {
            index: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsGetToolDigitalInputRequest {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_a8fa1714fc6c5d9082f6909ad8562c87e1bd95e40168701c1dc670e614b5dd70";
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
        put(out, at, &self.index.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.index = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsGetToolDigitalInputRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/GetToolDigitalInputResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetToolDigitalInputResponse {
    /// Declared value; canonical bounds are part of CODEC_IDENTITY.
    pub value: i8,
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsGetToolDigitalInputResponse {
    fn default() -> Self {
        Self {
            value: Default::default(),
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsGetToolDigitalInputResponse {
    pub const MAX_WIRE_BYTES: usize = 2;
    pub const CARTESIAN_WIRE_BYTES: u64 = 2;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_ba289ccf352c0560a70d99ec99a95c01b84ab7436f5638874ae4e1d89364a8b6";
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
        put(out, at, &self.value.to_le_bytes());
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.value = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsGetToolDigitalInputResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/GetToolDigitalOutputRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetToolDigitalOutputRequest {
    /// Declared index; canonical bounds are part of CODEC_IDENTITY.
    pub index: i8,
}
impl Default for Ros1Dsr_msgsGetToolDigitalOutputRequest {
    fn default() -> Self {
        Self {
            index: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsGetToolDigitalOutputRequest {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_bfed701bd5b788685802e15709a594b065dff57f5c6706b14ad41bc6f80736ce";
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
        put(out, at, &self.index.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.index = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsGetToolDigitalOutputRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/GetToolDigitalOutputResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetToolDigitalOutputResponse {
    /// Declared value; canonical bounds are part of CODEC_IDENTITY.
    pub value: i8,
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsGetToolDigitalOutputResponse {
    fn default() -> Self {
        Self {
            value: Default::default(),
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsGetToolDigitalOutputResponse {
    pub const MAX_WIRE_BYTES: usize = 2;
    pub const CARTESIAN_WIRE_BYTES: u64 = 2;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_0873d83b7b79d0270af4d61d86fd77bb248a75ebfe91177e4acc9299c46a309d";
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
        put(out, at, &self.value.to_le_bytes());
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.value = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsGetToolDigitalOutputResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/GetToolForceRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetToolForceRequest {
    /// Declared ref; canonical bounds are part of CODEC_IDENTITY.
    pub r#ref: i8,
}
impl Default for Ros1Dsr_msgsGetToolForceRequest {
    fn default() -> Self {
        Self {
            r#ref: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsGetToolForceRequest {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_2df77a1075113a1c8febd77c89e13417c596c6d1d4abd26454a4439620e397b4";
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
        put(out, at, &self.r#ref.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.r#ref = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsGetToolForceRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/GetToolForceResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetToolForceResponse {
    /// Declared tool_force; canonical bounds are part of CODEC_IDENTITY.
    pub tool_force: [f64; 6],
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsGetToolForceResponse {
    fn default() -> Self {
        Self {
            tool_force: core::array::from_fn(|_| Default::default()),
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsGetToolForceResponse {
    pub const MAX_WIRE_BYTES: usize = 49;
    pub const CARTESIAN_WIRE_BYTES: u64 = 49;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_11dfdda93d1818dbcb331bba86cf08815f24bb8adb34e70792a730ce27d95ed9";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.tool_force {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        n = add_size(n, 1)?;
        if n > 49 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        for element in &self.tool_force {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.tool_force[i] = decoded;
            }
        }
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsGetToolForceResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 49 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 49 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 dsr_msgs/GetUserCartCoordRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetUserCartCoordRequest {
    /// Declared id; canonical bounds are part of CODEC_IDENTITY.
    pub id: i8,
}
impl Default for Ros1Dsr_msgsGetUserCartCoordRequest {
    fn default() -> Self {
        Self {
            id: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsGetUserCartCoordRequest {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_07824b4c8403d59fad8e8a33c615fcf96a0556bd8de1c1639a16d3aa28db0637";
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
        put(out, at, &self.id.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.id = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsGetUserCartCoordRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/GetUserCartCoordResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetUserCartCoordResponse {
    /// Declared conv_posx; canonical bounds are part of CODEC_IDENTITY.
    pub conv_posx: [f64; 6],
    /// Declared ref; canonical bounds are part of CODEC_IDENTITY.
    pub r#ref: i8,
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsGetUserCartCoordResponse {
    fn default() -> Self {
        Self {
            conv_posx: core::array::from_fn(|_| Default::default()),
            r#ref: Default::default(),
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsGetUserCartCoordResponse {
    pub const MAX_WIRE_BYTES: usize = 50;
    pub const CARTESIAN_WIRE_BYTES: u64 = 50;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_2fea411082260a3dbaf3fb3f4c1314f74dda9fb864222fe5837e1d5f62502a22";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.conv_posx {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        if n > 50 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        for element in &self.conv_posx {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.r#ref.to_le_bytes());
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.conv_posx[i] = decoded;
            }
        }
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.r#ref = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsGetUserCartCoordResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 50 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 50 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 dsr_msgs/GetWorkpieceWeightRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetWorkpieceWeightRequest {}
impl Default for Ros1Dsr_msgsGetWorkpieceWeightRequest {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Dsr_msgsGetWorkpieceWeightRequest {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_fa987920bd5c89882bd52b444bec319c5b83c3fdf6086c065c87e924d40890ec";
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
impl Canonical for Ros1Dsr_msgsGetWorkpieceWeightRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/GetWorkpieceWeightResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsGetWorkpieceWeightResponse {
    /// Declared weight; canonical bounds are part of CODEC_IDENTITY.
    pub weight: f32,
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsGetWorkpieceWeightResponse {
    fn default() -> Self {
        Self {
            weight: Default::default(),
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsGetWorkpieceWeightResponse {
    pub const MAX_WIRE_BYTES: usize = 5;
    pub const CARTESIAN_WIRE_BYTES: u64 = 5;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_687f2eaa565bbbb878ff0018ad4fa9bc1596316cbbb83c07df85df5cd81887ca";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if !self.weight.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, 1)?;
        if n > 5 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.weight.to_le_bytes());
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.weight = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsGetWorkpieceWeightResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 5 {
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
/// Complete bounded value for ROS1 dsr_msgs/IkinRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsIkinRequest {
    /// Declared pos; canonical bounds are part of CODEC_IDENTITY.
    pub pos: [f64; 6],
    /// Declared sol_space; canonical bounds are part of CODEC_IDENTITY.
    pub sol_space: i8,
    /// Declared ref; canonical bounds are part of CODEC_IDENTITY.
    pub r#ref: i8,
}
impl Default for Ros1Dsr_msgsIkinRequest {
    fn default() -> Self {
        Self {
            pos: core::array::from_fn(|_| Default::default()),
            sol_space: Default::default(),
            r#ref: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsIkinRequest {
    pub const MAX_WIRE_BYTES: usize = 50;
    pub const CARTESIAN_WIRE_BYTES: u64 = 50;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_64192c8fc182151b11fe48b99d05e142994a0724cbde8572058378e843fe7f27";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.pos {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        if n > 50 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        for element in &self.pos {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.sol_space.to_le_bytes());
        put(out, at, &self.r#ref.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.pos[i] = decoded;
            }
        }
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.sol_space = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.r#ref = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsIkinRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 50 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 50 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 dsr_msgs/IkinResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsIkinResponse {
    /// Declared conv_posj; canonical bounds are part of CODEC_IDENTITY.
    pub conv_posj: [f64; 6],
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsIkinResponse {
    fn default() -> Self {
        Self {
            conv_posj: core::array::from_fn(|_| Default::default()),
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsIkinResponse {
    pub const MAX_WIRE_BYTES: usize = 49;
    pub const CARTESIAN_WIRE_BYTES: u64 = 49;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_fa64a9417d777219d7142d600391a80c0001464e3777174bef040ecd80df1e23";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.conv_posj {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        n = add_size(n, 1)?;
        if n > 49 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        for element in &self.conv_posj {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.conv_posj[i] = decoded;
            }
        }
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsIkinResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 49 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 49 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 dsr_msgs/IkinExRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsIkinExRequest {
    /// Declared pos; canonical bounds are part of CODEC_IDENTITY.
    pub pos: [f64; 6],
    /// Declared sol_space; canonical bounds are part of CODEC_IDENTITY.
    pub sol_space: i8,
    /// Declared ref; canonical bounds are part of CODEC_IDENTITY.
    pub r#ref: i8,
    /// Declared ref_pos_opt; canonical bounds are part of CODEC_IDENTITY.
    pub ref_pos_opt: i8,
}
impl Default for Ros1Dsr_msgsIkinExRequest {
    fn default() -> Self {
        Self {
            pos: core::array::from_fn(|_| Default::default()),
            sol_space: Default::default(),
            r#ref: Default::default(),
            ref_pos_opt: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsIkinExRequest {
    pub const MAX_WIRE_BYTES: usize = 51;
    pub const CARTESIAN_WIRE_BYTES: u64 = 51;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_6af2997a590ef83a15238d4837d7540ba1f5dd0d40067c74e03ebda063fa0cd0";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.pos {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        if n > 51 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        for element in &self.pos {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.sol_space.to_le_bytes());
        put(out, at, &self.r#ref.to_le_bytes());
        put(out, at, &self.ref_pos_opt.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.pos[i] = decoded;
            }
        }
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.sol_space = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.r#ref = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.ref_pos_opt = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsIkinExRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 51 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 51 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 dsr_msgs/IkinExResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsIkinExResponse {
    /// Declared conv_posj; canonical bounds are part of CODEC_IDENTITY.
    pub conv_posj: [f64; 6],
    /// Declared status; canonical bounds are part of CODEC_IDENTITY.
    pub status: bool,
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsIkinExResponse {
    fn default() -> Self {
        Self {
            conv_posj: core::array::from_fn(|_| Default::default()),
            status: Default::default(),
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsIkinExResponse {
    pub const MAX_WIRE_BYTES: usize = 50;
    pub const CARTESIAN_WIRE_BYTES: u64 = 50;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_67a37bdec1e80488a520a0efc6f7bc1781cbd90b5137068c7e2961b5cb1ee1d1";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.conv_posj {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        if n > 50 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        for element in &self.conv_posj {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &[u8::from(self.status)]);
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.conv_posj[i] = decoded;
            }
        }
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.status = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsIkinExResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 50 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 50 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 dsr_msgs/IsDoneBoltTighteningRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsIsDoneBoltTighteningRequest {
    /// Declared m; canonical bounds are part of CODEC_IDENTITY.
    pub m: f64,
    /// Declared timeout; canonical bounds are part of CODEC_IDENTITY.
    pub timeout: f64,
    /// Declared axis; canonical bounds are part of CODEC_IDENTITY.
    pub axis: i8,
}
impl Default for Ros1Dsr_msgsIsDoneBoltTighteningRequest {
    fn default() -> Self {
        Self {
            m: Default::default(),
            timeout: Default::default(),
            axis: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsIsDoneBoltTighteningRequest {
    pub const MAX_WIRE_BYTES: usize = 17;
    pub const CARTESIAN_WIRE_BYTES: u64 = 17;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_40ab245e2e736f9171f7ab55ff340717ef3f1ec89614730f4f9e3811ba6afa9e";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if !self.m.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.timeout.is_finite() {
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
        put(out, at, &self.m.to_le_bytes());
        put(out, at, &self.timeout.to_le_bytes());
        put(out, at, &self.axis.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.m = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.timeout = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.axis = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsIsDoneBoltTighteningRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/IsDoneBoltTighteningResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsIsDoneBoltTighteningResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsIsDoneBoltTighteningResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsIsDoneBoltTighteningResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_86e7eb378e84a1feec9b2abfb3b8af889b9cf986c7455e0d74bb8832af6ff611";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsIsDoneBoltTighteningResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/JogRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsJogRequest {
    /// Declared jog_axis; canonical bounds are part of CODEC_IDENTITY.
    pub jog_axis: i8,
    /// Declared move_reference; canonical bounds are part of CODEC_IDENTITY.
    pub move_reference: i8,
    /// Declared speed; canonical bounds are part of CODEC_IDENTITY.
    pub speed: f64,
}
impl Default for Ros1Dsr_msgsJogRequest {
    fn default() -> Self {
        Self {
            jog_axis: Default::default(),
            move_reference: Default::default(),
            speed: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsJogRequest {
    pub const MAX_WIRE_BYTES: usize = 10;
    pub const CARTESIAN_WIRE_BYTES: u64 = 10;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_28c6930998059030e74613930bd86066b3a37a490f7f438395eed15570617f7a";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        if !self.speed.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if n > 10 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.jog_axis.to_le_bytes());
        put(out, at, &self.move_reference.to_le_bytes());
        put(out, at, &self.speed.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.jog_axis = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.move_reference = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.speed = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsJogRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 10 {
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
/// Complete bounded value for ROS1 dsr_msgs/JogResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsJogResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsJogResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsJogResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_f87fba5fb96bd9ae52d16a519b20ca7ea2c17560b15bd8543a9484282e1967d7";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsJogResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/JogMultiRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsJogMultiRequest {
    /// Declared jog_axis; canonical bounds are part of CODEC_IDENTITY.
    pub jog_axis: [f64; 6],
    /// Declared move_reference; canonical bounds are part of CODEC_IDENTITY.
    pub move_reference: i8,
    /// Declared speed; canonical bounds are part of CODEC_IDENTITY.
    pub speed: f64,
}
impl Default for Ros1Dsr_msgsJogMultiRequest {
    fn default() -> Self {
        Self {
            jog_axis: core::array::from_fn(|_| Default::default()),
            move_reference: Default::default(),
            speed: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsJogMultiRequest {
    pub const MAX_WIRE_BYTES: usize = 57;
    pub const CARTESIAN_WIRE_BYTES: u64 = 57;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_f24271474302516dfce0dde848b2420490c35800b12d2fbdf5250ebbffc25cea";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.jog_axis {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        n = add_size(n, 1)?;
        if !self.speed.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if n > 57 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        for element in &self.jog_axis {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.move_reference.to_le_bytes());
        put(out, at, &self.speed.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.jog_axis[i] = decoded;
            }
        }
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.move_reference = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.speed = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsJogMultiRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 57 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 57 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 dsr_msgs/JogMultiResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsJogMultiResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsJogMultiResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsJogMultiResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_fecf5222e690c35fe0503c56d12e06b375d55ffab9ea0bbef96270729305a64a";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsJogMultiResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/JogMultiAxis.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsJogMultiAxis {
    /// Declared jog_axis; canonical bounds are part of CODEC_IDENTITY.
    pub jog_axis: [f64; 6],
    /// Declared move_reference; canonical bounds are part of CODEC_IDENTITY.
    pub move_reference: i8,
    /// Declared speed; canonical bounds are part of CODEC_IDENTITY.
    pub speed: f64,
}
impl Default for Ros1Dsr_msgsJogMultiAxis {
    fn default() -> Self {
        Self {
            jog_axis: core::array::from_fn(|_| Default::default()),
            move_reference: Default::default(),
            speed: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsJogMultiAxis {
    pub const MAX_WIRE_BYTES: usize = 57;
    pub const CARTESIAN_WIRE_BYTES: u64 = 57;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_ee64c6ccdfa3726ebbfc0b3779f878cbbece6fe878cbfbc14fa45eed4486de02";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.jog_axis {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        n = add_size(n, 1)?;
        if !self.speed.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if n > 57 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        for element in &self.jog_axis {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.move_reference.to_le_bytes());
        put(out, at, &self.speed.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.jog_axis[i] = decoded;
            }
        }
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.move_reference = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.speed = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsJogMultiAxis {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 57 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 57 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 dsr_msgs/ManageAccessControlRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsManageAccessControlRequest {
    /// Declared access_control; canonical bounds are part of CODEC_IDENTITY.
    pub access_control: i8,
}
impl Default for Ros1Dsr_msgsManageAccessControlRequest {
    fn default() -> Self {
        Self {
            access_control: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsManageAccessControlRequest {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_0b29aed59d855590ad69ec9bf8e2585b39ee8ce05bed1e305dd7f2a7c1b79d36";
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
        put(out, at, &self.access_control.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.access_control = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsManageAccessControlRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/ManageAccessControlResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsManageAccessControlResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsManageAccessControlResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsManageAccessControlResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_64837b0ea282acdc16ad7d0a4e6679d9b9b74a3ff3d276dad77042529fa897b3";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsManageAccessControlResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/ModbusState.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsModbusState {
    /// Declared modbus_symbol; canonical bounds are part of CODEC_IDENTITY.
    pub modbus_symbol: String,
    /// Declared modbus_value; canonical bounds are part of CODEC_IDENTITY.
    pub modbus_value: i32,
}
impl Default for Ros1Dsr_msgsModbusState {
    fn default() -> Self {
        Self {
            modbus_symbol: Default::default(),
            modbus_value: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsModbusState {
    pub const MAX_WIRE_BYTES: usize = 264;
    pub const CARTESIAN_WIRE_BYTES: u64 = 264;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_e107e7ff86b98e9c58565f3a2889ac50ea49ecc6efb9c982d29b075086fe3ae9";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.modbus_symbol.len() > 256 || self.modbus_symbol.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.modbus_symbol.len())?;
        n = add_size(n, 4)?;
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
        put(out, at, &(self.modbus_symbol.len() as u32).to_le_bytes());
        put(out, at, self.modbus_symbol.as_bytes());
        put(out, at, &self.modbus_value.to_le_bytes());
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
        value.modbus_symbol = decoded;
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.modbus_value = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsModbusState {
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
/// Complete bounded value for ROS1 dsr_msgs/MoveBlendingRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsMoveBlendingRequest {
    /// Declared segment; canonical bounds are part of CODEC_IDENTITY.
    pub segment: Vec<Ros1Std_msgsFloat64MultiArray>,
    /// Declared posCnt; canonical bounds are part of CODEC_IDENTITY.
    pub posCnt: i8,
    /// Declared vel; canonical bounds are part of CODEC_IDENTITY.
    pub vel: [f64; 2],
    /// Declared acc; canonical bounds are part of CODEC_IDENTITY.
    pub acc: [f64; 2],
    /// Declared time; canonical bounds are part of CODEC_IDENTITY.
    pub time: f64,
    /// Declared ref; canonical bounds are part of CODEC_IDENTITY.
    pub r#ref: i8,
    /// Declared mode; canonical bounds are part of CODEC_IDENTITY.
    pub mode: i8,
    /// Declared syncType; canonical bounds are part of CODEC_IDENTITY.
    pub syncType: i8,
}
impl Default for Ros1Dsr_msgsMoveBlendingRequest {
    fn default() -> Self {
        Self {
            segment: Default::default(),
            posCnt: Default::default(),
            vel: core::array::from_fn(|_| Default::default()),
            acc: core::array::from_fn(|_| Default::default()),
            time: Default::default(),
            r#ref: Default::default(),
            mode: Default::default(),
            syncType: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsMoveBlendingRequest {
    pub const MAX_WIRE_BYTES: usize = 2256;
    pub const CARTESIAN_WIRE_BYTES: u64 = 2256;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_70b7fb3501e9677b76ed8f893883090e500be36ff8175edce8fd6d6d4f23e4e6";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.segment.len() > 6 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.segment {
            n = add_size(n, element.wire_size()?)?;
        }
        n = add_size(n, 1)?;
        for element in &self.vel {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.acc {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if !self.time.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        if n > 2256 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.segment.len() as u32).to_le_bytes());
        for element in &self.segment {
            element.write_fields(out, at);
        }
        put(out, at, &self.posCnt.to_le_bytes());
        for element in &self.vel {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.acc {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.time.to_le_bytes());
        put(out, at, &self.r#ref.to_le_bytes());
        put(out, at, &self.mode.to_le_bytes());
        put(out, at, &self.syncType.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = read_count(bytes, at)?;
            if count > 6 {
                return Err(invalid());
            }
            value.segment = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros1Std_msgsFloat64MultiArray::read_fields(bytes, at)?;
                value.segment.push(decoded);
            }
        }
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.posCnt = decoded;
        {
            let count = 2usize;
            if count > 2 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.vel[i] = decoded;
            }
        }
        {
            let count = 2usize;
            if count > 2 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.acc[i] = decoded;
            }
        }
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.time = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.r#ref = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.mode = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.syncType = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsMoveBlendingRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 2256 {
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
/// Complete bounded value for ROS1 dsr_msgs/MoveBlendingResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsMoveBlendingResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsMoveBlendingResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsMoveBlendingResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_9c5697b77eaad084e9870d5ca1a1a960e22bd87137f2a1035daa9f014cc28eb6";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsMoveBlendingResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/MoveCircleRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsMoveCircleRequest {
    /// Declared pos; canonical bounds are part of CODEC_IDENTITY.
    pub pos: Vec<Ros1Std_msgsFloat64MultiArray>,
    /// Declared vel; canonical bounds are part of CODEC_IDENTITY.
    pub vel: [f64; 2],
    /// Declared acc; canonical bounds are part of CODEC_IDENTITY.
    pub acc: [f64; 2],
    /// Declared time; canonical bounds are part of CODEC_IDENTITY.
    pub time: f64,
    /// Declared radius; canonical bounds are part of CODEC_IDENTITY.
    pub radius: f64,
    /// Declared ref; canonical bounds are part of CODEC_IDENTITY.
    pub r#ref: i8,
    /// Declared mode; canonical bounds are part of CODEC_IDENTITY.
    pub mode: i8,
    /// Declared angle1; canonical bounds are part of CODEC_IDENTITY.
    pub angle1: f64,
    /// Declared angle2; canonical bounds are part of CODEC_IDENTITY.
    pub angle2: f64,
    /// Declared blendType; canonical bounds are part of CODEC_IDENTITY.
    pub blendType: i8,
    /// Declared syncType; canonical bounds are part of CODEC_IDENTITY.
    pub syncType: i8,
}
impl Default for Ros1Dsr_msgsMoveCircleRequest {
    fn default() -> Self {
        Self {
            pos: Default::default(),
            vel: core::array::from_fn(|_| Default::default()),
            acc: core::array::from_fn(|_| Default::default()),
            time: Default::default(),
            radius: Default::default(),
            r#ref: Default::default(),
            mode: Default::default(),
            angle1: Default::default(),
            angle2: Default::default(),
            blendType: Default::default(),
            syncType: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsMoveCircleRequest {
    pub const MAX_WIRE_BYTES: usize = 2280;
    pub const CARTESIAN_WIRE_BYTES: u64 = 2280;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_39c6ea4c3b15ae9866db805863a5c5c542bbf7b104adcd81a13425719fd994f4";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.pos.len() > 6 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.pos {
            n = add_size(n, element.wire_size()?)?;
        }
        for element in &self.vel {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.acc {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if !self.time.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.radius.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        if !self.angle1.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.angle2.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        if n > 2280 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.pos.len() as u32).to_le_bytes());
        for element in &self.pos {
            element.write_fields(out, at);
        }
        for element in &self.vel {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.acc {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.time.to_le_bytes());
        put(out, at, &self.radius.to_le_bytes());
        put(out, at, &self.r#ref.to_le_bytes());
        put(out, at, &self.mode.to_le_bytes());
        put(out, at, &self.angle1.to_le_bytes());
        put(out, at, &self.angle2.to_le_bytes());
        put(out, at, &self.blendType.to_le_bytes());
        put(out, at, &self.syncType.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = read_count(bytes, at)?;
            if count > 6 {
                return Err(invalid());
            }
            value.pos = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros1Std_msgsFloat64MultiArray::read_fields(bytes, at)?;
                value.pos.push(decoded);
            }
        }
        {
            let count = 2usize;
            if count > 2 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.vel[i] = decoded;
            }
        }
        {
            let count = 2usize;
            if count > 2 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.acc[i] = decoded;
            }
        }
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.time = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.radius = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.r#ref = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.mode = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.angle1 = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.angle2 = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.blendType = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.syncType = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsMoveCircleRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 2280 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 72 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 dsr_msgs/MoveCircleResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsMoveCircleResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsMoveCircleResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsMoveCircleResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_a5950bd2e98ce04a5b2261eec3c95f65613f3fb60d8d1779c6a8bcbb28fa42f3";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsMoveCircleResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/MoveHomeRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsMoveHomeRequest {
    /// Declared target; canonical bounds are part of CODEC_IDENTITY.
    pub target: i8,
}
impl Default for Ros1Dsr_msgsMoveHomeRequest {
    fn default() -> Self {
        Self {
            target: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsMoveHomeRequest {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_99b3fe492438ffc71627412077f7b0ced950e0f6038722ecfb34191093e0308f";
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
        put(out, at, &self.target.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.target = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsMoveHomeRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/MoveHomeResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsMoveHomeResponse {
    /// Declared res; canonical bounds are part of CODEC_IDENTITY.
    pub res: i8,
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsMoveHomeResponse {
    fn default() -> Self {
        Self {
            res: Default::default(),
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsMoveHomeResponse {
    pub const MAX_WIRE_BYTES: usize = 2;
    pub const CARTESIAN_WIRE_BYTES: u64 = 2;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_9906457df2f7eccd40564fb7ba76fe7245ad943f20461bf23192cfbcba3a596f";
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
        put(out, at, &self.res.to_le_bytes());
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.res = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsMoveHomeResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/MoveJointRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsMoveJointRequest {
    /// Declared pos; canonical bounds are part of CODEC_IDENTITY.
    pub pos: [f64; 6],
    /// Declared vel; canonical bounds are part of CODEC_IDENTITY.
    pub vel: f64,
    /// Declared acc; canonical bounds are part of CODEC_IDENTITY.
    pub acc: f64,
    /// Declared time; canonical bounds are part of CODEC_IDENTITY.
    pub time: f64,
    /// Declared radius; canonical bounds are part of CODEC_IDENTITY.
    pub radius: f64,
    /// Declared mode; canonical bounds are part of CODEC_IDENTITY.
    pub mode: i8,
    /// Declared blendType; canonical bounds are part of CODEC_IDENTITY.
    pub blendType: i8,
    /// Declared syncType; canonical bounds are part of CODEC_IDENTITY.
    pub syncType: i8,
}
impl Default for Ros1Dsr_msgsMoveJointRequest {
    fn default() -> Self {
        Self {
            pos: core::array::from_fn(|_| Default::default()),
            vel: Default::default(),
            acc: Default::default(),
            time: Default::default(),
            radius: Default::default(),
            mode: Default::default(),
            blendType: Default::default(),
            syncType: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsMoveJointRequest {
    pub const MAX_WIRE_BYTES: usize = 83;
    pub const CARTESIAN_WIRE_BYTES: u64 = 83;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_b244b9d86649987111dd94846a98260a464ac54b9074025689028be9a1ed6a03";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.pos {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if !self.vel.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.acc.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.time.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.radius.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        if n > 83 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        for element in &self.pos {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.vel.to_le_bytes());
        put(out, at, &self.acc.to_le_bytes());
        put(out, at, &self.time.to_le_bytes());
        put(out, at, &self.radius.to_le_bytes());
        put(out, at, &self.mode.to_le_bytes());
        put(out, at, &self.blendType.to_le_bytes());
        put(out, at, &self.syncType.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.pos[i] = decoded;
            }
        }
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.vel = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.acc = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.time = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.radius = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.mode = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.blendType = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.syncType = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsMoveJointRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 83 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 83 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 dsr_msgs/MoveJointResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsMoveJointResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsMoveJointResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsMoveJointResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_66e1e0f7cf2043211218cd9d1c58bfb89ffaf7480a4adddb375c002321a3fcc4";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsMoveJointResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/MoveJointxRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsMoveJointxRequest {
    /// Declared pos; canonical bounds are part of CODEC_IDENTITY.
    pub pos: [f64; 6],
    /// Declared vel; canonical bounds are part of CODEC_IDENTITY.
    pub vel: f64,
    /// Declared acc; canonical bounds are part of CODEC_IDENTITY.
    pub acc: f64,
    /// Declared time; canonical bounds are part of CODEC_IDENTITY.
    pub time: f64,
    /// Declared radius; canonical bounds are part of CODEC_IDENTITY.
    pub radius: f64,
    /// Declared ref; canonical bounds are part of CODEC_IDENTITY.
    pub r#ref: i8,
    /// Declared mode; canonical bounds are part of CODEC_IDENTITY.
    pub mode: i8,
    /// Declared blendType; canonical bounds are part of CODEC_IDENTITY.
    pub blendType: i8,
    /// Declared sol; canonical bounds are part of CODEC_IDENTITY.
    pub sol: i8,
    /// Declared syncType; canonical bounds are part of CODEC_IDENTITY.
    pub syncType: i8,
}
impl Default for Ros1Dsr_msgsMoveJointxRequest {
    fn default() -> Self {
        Self {
            pos: core::array::from_fn(|_| Default::default()),
            vel: Default::default(),
            acc: Default::default(),
            time: Default::default(),
            radius: Default::default(),
            r#ref: Default::default(),
            mode: Default::default(),
            blendType: Default::default(),
            sol: Default::default(),
            syncType: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsMoveJointxRequest {
    pub const MAX_WIRE_BYTES: usize = 85;
    pub const CARTESIAN_WIRE_BYTES: u64 = 85;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_d3a91ad268c65b3f4967c281c53301ec61b6aebdc4a55324103aac4d3ed392db";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.pos {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if !self.vel.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.acc.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.time.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.radius.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        if n > 85 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        for element in &self.pos {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.vel.to_le_bytes());
        put(out, at, &self.acc.to_le_bytes());
        put(out, at, &self.time.to_le_bytes());
        put(out, at, &self.radius.to_le_bytes());
        put(out, at, &self.r#ref.to_le_bytes());
        put(out, at, &self.mode.to_le_bytes());
        put(out, at, &self.blendType.to_le_bytes());
        put(out, at, &self.sol.to_le_bytes());
        put(out, at, &self.syncType.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.pos[i] = decoded;
            }
        }
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.vel = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.acc = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.time = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.radius = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.r#ref = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.mode = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.blendType = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.sol = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.syncType = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsMoveJointxRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 85 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 85 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 dsr_msgs/MoveJointxResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsMoveJointxResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsMoveJointxResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsMoveJointxResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_9286ce396d98df17fa6cab04cd10ab449be09a07134799f09ae19082921103cc";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsMoveJointxResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/MoveLineRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsMoveLineRequest {
    /// Declared pos; canonical bounds are part of CODEC_IDENTITY.
    pub pos: [f64; 6],
    /// Declared vel; canonical bounds are part of CODEC_IDENTITY.
    pub vel: [f64; 2],
    /// Declared acc; canonical bounds are part of CODEC_IDENTITY.
    pub acc: [f64; 2],
    /// Declared time; canonical bounds are part of CODEC_IDENTITY.
    pub time: f64,
    /// Declared radius; canonical bounds are part of CODEC_IDENTITY.
    pub radius: f64,
    /// Declared ref; canonical bounds are part of CODEC_IDENTITY.
    pub r#ref: i8,
    /// Declared mode; canonical bounds are part of CODEC_IDENTITY.
    pub mode: i8,
    /// Declared blendType; canonical bounds are part of CODEC_IDENTITY.
    pub blendType: i8,
    /// Declared syncType; canonical bounds are part of CODEC_IDENTITY.
    pub syncType: i8,
}
impl Default for Ros1Dsr_msgsMoveLineRequest {
    fn default() -> Self {
        Self {
            pos: core::array::from_fn(|_| Default::default()),
            vel: core::array::from_fn(|_| Default::default()),
            acc: core::array::from_fn(|_| Default::default()),
            time: Default::default(),
            radius: Default::default(),
            r#ref: Default::default(),
            mode: Default::default(),
            blendType: Default::default(),
            syncType: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsMoveLineRequest {
    pub const MAX_WIRE_BYTES: usize = 100;
    pub const CARTESIAN_WIRE_BYTES: u64 = 100;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_ef69f202700bbcfb829e8eedbb7189489f4c30a6f08702f368c5e7f9493b206e";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.pos {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.vel {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.acc {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if !self.time.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.radius.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        if n > 100 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        for element in &self.pos {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.vel {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.acc {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.time.to_le_bytes());
        put(out, at, &self.radius.to_le_bytes());
        put(out, at, &self.r#ref.to_le_bytes());
        put(out, at, &self.mode.to_le_bytes());
        put(out, at, &self.blendType.to_le_bytes());
        put(out, at, &self.syncType.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.pos[i] = decoded;
            }
        }
        {
            let count = 2usize;
            if count > 2 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.vel[i] = decoded;
            }
        }
        {
            let count = 2usize;
            if count > 2 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.acc[i] = decoded;
            }
        }
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.time = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.radius = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.r#ref = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.mode = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.blendType = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.syncType = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsMoveLineRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 100 {
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
/// Complete bounded value for ROS1 dsr_msgs/MoveLineResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsMoveLineResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsMoveLineResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsMoveLineResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_0d316d575a341637b3cbe5a2ee68734670ca6f3f9f5035b383194b8457afe82c";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsMoveLineResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/MovePauseRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsMovePauseRequest {}
impl Default for Ros1Dsr_msgsMovePauseRequest {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Dsr_msgsMovePauseRequest {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_a25b42c1e8819548bfff8d108ec661b4a1137eeafd19d8805cfecdc4d14c5f19";
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
impl Canonical for Ros1Dsr_msgsMovePauseRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/MovePauseResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsMovePauseResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsMovePauseResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsMovePauseResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_148a3cc895846afa55520af770f76bc6118c313b5cfbf4d83d0f161b22171aed";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsMovePauseResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/MovePeriodicRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsMovePeriodicRequest {
    /// Declared amp; canonical bounds are part of CODEC_IDENTITY.
    pub amp: [f64; 6],
    /// Declared periodic; canonical bounds are part of CODEC_IDENTITY.
    pub periodic: [f64; 6],
    /// Declared acc; canonical bounds are part of CODEC_IDENTITY.
    pub acc: f64,
    /// Declared repeat; canonical bounds are part of CODEC_IDENTITY.
    pub repeat: i8,
    /// Declared ref; canonical bounds are part of CODEC_IDENTITY.
    pub r#ref: i8,
    /// Declared syncType; canonical bounds are part of CODEC_IDENTITY.
    pub syncType: i8,
}
impl Default for Ros1Dsr_msgsMovePeriodicRequest {
    fn default() -> Self {
        Self {
            amp: core::array::from_fn(|_| Default::default()),
            periodic: core::array::from_fn(|_| Default::default()),
            acc: Default::default(),
            repeat: Default::default(),
            r#ref: Default::default(),
            syncType: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsMovePeriodicRequest {
    pub const MAX_WIRE_BYTES: usize = 107;
    pub const CARTESIAN_WIRE_BYTES: u64 = 107;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_73ffac70af9558b1be99d969ee99cf992816cf84ce97f29ef81036963fbd2d69";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.amp {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.periodic {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if !self.acc.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        if n > 107 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        for element in &self.amp {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.periodic {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.acc.to_le_bytes());
        put(out, at, &self.repeat.to_le_bytes());
        put(out, at, &self.r#ref.to_le_bytes());
        put(out, at, &self.syncType.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.amp[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.periodic[i] = decoded;
            }
        }
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.acc = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.repeat = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.r#ref = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.syncType = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsMovePeriodicRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 107 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 107 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 dsr_msgs/MovePeriodicResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsMovePeriodicResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsMovePeriodicResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsMovePeriodicResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_97f5baff448319a629f79ea38696662bfca6960af28150b8dfa07902cd7393b3";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsMovePeriodicResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/MoveResumeRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsMoveResumeRequest {}
impl Default for Ros1Dsr_msgsMoveResumeRequest {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Dsr_msgsMoveResumeRequest {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_313ed9fb87f75b7a010a658e734390145b46050b1f554f863cf6c2afb7e60f1f";
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
impl Canonical for Ros1Dsr_msgsMoveResumeRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/MoveResumeResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsMoveResumeResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsMoveResumeResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsMoveResumeResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_072287041c0e4462d8994d15ad03c5c36db00c754565d99cf9d30a215100937a";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsMoveResumeResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/MoveSpiralRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsMoveSpiralRequest {
    /// Declared revolution; canonical bounds are part of CODEC_IDENTITY.
    pub revolution: f64,
    /// Declared maxRadius; canonical bounds are part of CODEC_IDENTITY.
    pub maxRadius: f64,
    /// Declared maxLength; canonical bounds are part of CODEC_IDENTITY.
    pub maxLength: f64,
    /// Declared vel; canonical bounds are part of CODEC_IDENTITY.
    pub vel: [f64; 2],
    /// Declared acc; canonical bounds are part of CODEC_IDENTITY.
    pub acc: [f64; 2],
    /// Declared time; canonical bounds are part of CODEC_IDENTITY.
    pub time: f64,
    /// Declared taskAxis; canonical bounds are part of CODEC_IDENTITY.
    pub taskAxis: i8,
    /// Declared ref; canonical bounds are part of CODEC_IDENTITY.
    pub r#ref: i8,
    /// Declared syncType; canonical bounds are part of CODEC_IDENTITY.
    pub syncType: i8,
}
impl Default for Ros1Dsr_msgsMoveSpiralRequest {
    fn default() -> Self {
        Self {
            revolution: Default::default(),
            maxRadius: Default::default(),
            maxLength: Default::default(),
            vel: core::array::from_fn(|_| Default::default()),
            acc: core::array::from_fn(|_| Default::default()),
            time: Default::default(),
            taskAxis: Default::default(),
            r#ref: Default::default(),
            syncType: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsMoveSpiralRequest {
    pub const MAX_WIRE_BYTES: usize = 67;
    pub const CARTESIAN_WIRE_BYTES: u64 = 67;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_5b5a4a14ecc3021b9f98e44891c3c87011ba825fb6399e1ae5ef179257a4565c";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if !self.revolution.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.maxRadius.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.maxLength.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        for element in &self.vel {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.acc {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if !self.time.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        if n > 67 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.revolution.to_le_bytes());
        put(out, at, &self.maxRadius.to_le_bytes());
        put(out, at, &self.maxLength.to_le_bytes());
        for element in &self.vel {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.acc {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.time.to_le_bytes());
        put(out, at, &self.taskAxis.to_le_bytes());
        put(out, at, &self.r#ref.to_le_bytes());
        put(out, at, &self.syncType.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.revolution = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.maxRadius = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.maxLength = decoded;
        {
            let count = 2usize;
            if count > 2 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.vel[i] = decoded;
            }
        }
        {
            let count = 2usize;
            if count > 2 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.acc[i] = decoded;
            }
        }
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.time = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.taskAxis = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.r#ref = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.syncType = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsMoveSpiralRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 67 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 67 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 dsr_msgs/MoveSpiralResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsMoveSpiralResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsMoveSpiralResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsMoveSpiralResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_be420ead496b05aafd3aa152a89bd04cc6dc1e584e700019a568f0dcae3a7691";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsMoveSpiralResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/MoveSplineJointRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsMoveSplineJointRequest {
    /// Declared pos; canonical bounds are part of CODEC_IDENTITY.
    pub pos: Vec<Ros1Std_msgsFloat64MultiArray>,
    /// Declared posCnt; canonical bounds are part of CODEC_IDENTITY.
    pub posCnt: i8,
    /// Declared vel; canonical bounds are part of CODEC_IDENTITY.
    pub vel: [f64; 6],
    /// Declared acc; canonical bounds are part of CODEC_IDENTITY.
    pub acc: [f64; 6],
    /// Declared time; canonical bounds are part of CODEC_IDENTITY.
    pub time: f64,
    /// Declared mode; canonical bounds are part of CODEC_IDENTITY.
    pub mode: i8,
    /// Declared syncType; canonical bounds are part of CODEC_IDENTITY.
    pub syncType: i8,
}
impl Default for Ros1Dsr_msgsMoveSplineJointRequest {
    fn default() -> Self {
        Self {
            pos: Default::default(),
            posCnt: Default::default(),
            vel: core::array::from_fn(|_| Default::default()),
            acc: core::array::from_fn(|_| Default::default()),
            time: Default::default(),
            mode: Default::default(),
            syncType: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsMoveSplineJointRequest {
    pub const MAX_WIRE_BYTES: usize = 2319;
    pub const CARTESIAN_WIRE_BYTES: u64 = 2319;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_f5ccf9a5eade1a2f7f11c741c26e3b045fa11d81d8f03587e4a527b0256e2a8a";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.pos.len() > 6 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.pos {
            n = add_size(n, element.wire_size()?)?;
        }
        n = add_size(n, 1)?;
        for element in &self.vel {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.acc {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if !self.time.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        if n > 2319 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.pos.len() as u32).to_le_bytes());
        for element in &self.pos {
            element.write_fields(out, at);
        }
        put(out, at, &self.posCnt.to_le_bytes());
        for element in &self.vel {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.acc {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.time.to_le_bytes());
        put(out, at, &self.mode.to_le_bytes());
        put(out, at, &self.syncType.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = read_count(bytes, at)?;
            if count > 6 {
                return Err(invalid());
            }
            value.pos = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros1Std_msgsFloat64MultiArray::read_fields(bytes, at)?;
                value.pos.push(decoded);
            }
        }
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.posCnt = decoded;
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.vel[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.acc[i] = decoded;
            }
        }
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.time = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.mode = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.syncType = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsMoveSplineJointRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 2319 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 111 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 dsr_msgs/MoveSplineJointResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsMoveSplineJointResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsMoveSplineJointResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsMoveSplineJointResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_b6fe363893f83066cfbf079aedf9fd6161316fe698b1a02713761aa46adb6e68";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsMoveSplineJointResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/MoveSplineTaskRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsMoveSplineTaskRequest {
    /// Declared pos; canonical bounds are part of CODEC_IDENTITY.
    pub pos: Vec<Ros1Std_msgsFloat64MultiArray>,
    /// Declared posCnt; canonical bounds are part of CODEC_IDENTITY.
    pub posCnt: i8,
    /// Declared vel; canonical bounds are part of CODEC_IDENTITY.
    pub vel: [f64; 2],
    /// Declared acc; canonical bounds are part of CODEC_IDENTITY.
    pub acc: [f64; 2],
    /// Declared time; canonical bounds are part of CODEC_IDENTITY.
    pub time: f64,
    /// Declared ref; canonical bounds are part of CODEC_IDENTITY.
    pub r#ref: i8,
    /// Declared mode; canonical bounds are part of CODEC_IDENTITY.
    pub mode: i8,
    /// Declared opt; canonical bounds are part of CODEC_IDENTITY.
    pub opt: i8,
    /// Declared syncType; canonical bounds are part of CODEC_IDENTITY.
    pub syncType: i8,
}
impl Default for Ros1Dsr_msgsMoveSplineTaskRequest {
    fn default() -> Self {
        Self {
            pos: Default::default(),
            posCnt: Default::default(),
            vel: core::array::from_fn(|_| Default::default()),
            acc: core::array::from_fn(|_| Default::default()),
            time: Default::default(),
            r#ref: Default::default(),
            mode: Default::default(),
            opt: Default::default(),
            syncType: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsMoveSplineTaskRequest {
    pub const MAX_WIRE_BYTES: usize = 2257;
    pub const CARTESIAN_WIRE_BYTES: u64 = 2257;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_fa8ee3b180d331309471cb20a1dbe4b46a3493cc0c7298222017200d2ff65e5a";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.pos.len() > 6 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.pos {
            n = add_size(n, element.wire_size()?)?;
        }
        n = add_size(n, 1)?;
        for element in &self.vel {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.acc {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if !self.time.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        if n > 2257 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.pos.len() as u32).to_le_bytes());
        for element in &self.pos {
            element.write_fields(out, at);
        }
        put(out, at, &self.posCnt.to_le_bytes());
        for element in &self.vel {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.acc {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.time.to_le_bytes());
        put(out, at, &self.r#ref.to_le_bytes());
        put(out, at, &self.mode.to_le_bytes());
        put(out, at, &self.opt.to_le_bytes());
        put(out, at, &self.syncType.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = read_count(bytes, at)?;
            if count > 6 {
                return Err(invalid());
            }
            value.pos = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros1Std_msgsFloat64MultiArray::read_fields(bytes, at)?;
                value.pos.push(decoded);
            }
        }
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.posCnt = decoded;
        {
            let count = 2usize;
            if count > 2 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.vel[i] = decoded;
            }
        }
        {
            let count = 2usize;
            if count > 2 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.acc[i] = decoded;
            }
        }
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.time = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.r#ref = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.mode = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.opt = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.syncType = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsMoveSplineTaskRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 2257 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 49 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 dsr_msgs/MoveSplineTaskResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsMoveSplineTaskResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsMoveSplineTaskResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsMoveSplineTaskResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_3d19b8f693f665703fc8b8ee151ee49ed94100de85668164f953095f718cdb7a";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsMoveSplineTaskResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/MoveStopRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsMoveStopRequest {
    /// Declared stop_mode; canonical bounds are part of CODEC_IDENTITY.
    pub stop_mode: i32,
}
impl Default for Ros1Dsr_msgsMoveStopRequest {
    fn default() -> Self {
        Self {
            stop_mode: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsMoveStopRequest {
    pub const MAX_WIRE_BYTES: usize = 4;
    pub const CARTESIAN_WIRE_BYTES: u64 = 4;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_8591a7188be1a528bbbb4b62f134825e0bf0f41517709604ac06c537f01423e4";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
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
        put(out, at, &self.stop_mode.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.stop_mode = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsMoveStopRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/MoveStopResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsMoveStopResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsMoveStopResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsMoveStopResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_25580dd85be376dcb588ebe62a49394f0f9c92abd7b094c2552df86b64f87427";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsMoveStopResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/MoveWaitRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsMoveWaitRequest {}
impl Default for Ros1Dsr_msgsMoveWaitRequest {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Dsr_msgsMoveWaitRequest {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_ca59fcddb15dd63fcf0481cb2e81be6a338d63167a15ad66585335eee1922a39";
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
impl Canonical for Ros1Dsr_msgsMoveWaitRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/MoveWaitResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsMoveWaitResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsMoveWaitResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsMoveWaitResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_764dd1fba59b88d4baae818b06b9c735f62f156e67842013d95d55381d32f232";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsMoveWaitResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/OverwriteUserCartCoordRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsOverwriteUserCartCoordRequest {
    /// Declared id; canonical bounds are part of CODEC_IDENTITY.
    pub id: i8,
    /// Declared pos; canonical bounds are part of CODEC_IDENTITY.
    pub pos: [f64; 6],
    /// Declared ref; canonical bounds are part of CODEC_IDENTITY.
    pub r#ref: i8,
}
impl Default for Ros1Dsr_msgsOverwriteUserCartCoordRequest {
    fn default() -> Self {
        Self {
            id: Default::default(),
            pos: core::array::from_fn(|_| Default::default()),
            r#ref: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsOverwriteUserCartCoordRequest {
    pub const MAX_WIRE_BYTES: usize = 50;
    pub const CARTESIAN_WIRE_BYTES: u64 = 50;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_b89858cf40ee4ae756c90e048fb0cffd362dd2477ca23ba1172749353eb63721";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        for element in &self.pos {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        n = add_size(n, 1)?;
        if n > 50 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
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
        for element in &self.pos {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.r#ref.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.id = decoded;
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.pos[i] = decoded;
            }
        }
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.r#ref = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsOverwriteUserCartCoordRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 50 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 50 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 dsr_msgs/OverwriteUserCartCoordResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsOverwriteUserCartCoordResponse {
    /// Declared id; canonical bounds are part of CODEC_IDENTITY.
    pub id: i8,
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsOverwriteUserCartCoordResponse {
    fn default() -> Self {
        Self {
            id: Default::default(),
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsOverwriteUserCartCoordResponse {
    pub const MAX_WIRE_BYTES: usize = 2;
    pub const CARTESIAN_WIRE_BYTES: u64 = 2;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_953c73d75e0381b067612ea733d58faf95919f5f20f940b6827396fc9d363833";
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
        put(out, at, &self.id.to_le_bytes());
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.id = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsOverwriteUserCartCoordResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/ParallelAxis1Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsParallelAxis1Request {
    /// Declared x1; canonical bounds are part of CODEC_IDENTITY.
    pub x1: [f64; 6],
    /// Declared x2; canonical bounds are part of CODEC_IDENTITY.
    pub x2: [f64; 6],
    /// Declared x3; canonical bounds are part of CODEC_IDENTITY.
    pub x3: [f64; 6],
    /// Declared axis; canonical bounds are part of CODEC_IDENTITY.
    pub axis: i8,
    /// Declared ref; canonical bounds are part of CODEC_IDENTITY.
    pub r#ref: i8,
}
impl Default for Ros1Dsr_msgsParallelAxis1Request {
    fn default() -> Self {
        Self {
            x1: core::array::from_fn(|_| Default::default()),
            x2: core::array::from_fn(|_| Default::default()),
            x3: core::array::from_fn(|_| Default::default()),
            axis: Default::default(),
            r#ref: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsParallelAxis1Request {
    pub const MAX_WIRE_BYTES: usize = 146;
    pub const CARTESIAN_WIRE_BYTES: u64 = 146;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_d032b8ab9d71b7f30b395c0f7ecf376e7ca056fa893479754780a90c8db7f7fe";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.x1 {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.x2 {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.x3 {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        if n > 146 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        for element in &self.x1 {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.x2 {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.x3 {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.axis.to_le_bytes());
        put(out, at, &self.r#ref.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.x1[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.x2[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.x3[i] = decoded;
            }
        }
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.axis = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.r#ref = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsParallelAxis1Request {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 146 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 146 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 dsr_msgs/ParallelAxis1Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsParallelAxis1Response {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsParallelAxis1Response {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsParallelAxis1Response {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_f7ba09a96d450b53ef9b2fb77b6de6a6e760de65fc8dce42dcbc7dace8fef543";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsParallelAxis1Response {
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
/// Complete bounded value for ROS1 dsr_msgs/ParallelAxis2Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsParallelAxis2Request {
    /// Declared vect; canonical bounds are part of CODEC_IDENTITY.
    pub vect: [f64; 3],
    /// Declared axis; canonical bounds are part of CODEC_IDENTITY.
    pub axis: i8,
    /// Declared ref; canonical bounds are part of CODEC_IDENTITY.
    pub r#ref: i8,
}
impl Default for Ros1Dsr_msgsParallelAxis2Request {
    fn default() -> Self {
        Self {
            vect: core::array::from_fn(|_| Default::default()),
            axis: Default::default(),
            r#ref: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsParallelAxis2Request {
    pub const MAX_WIRE_BYTES: usize = 26;
    pub const CARTESIAN_WIRE_BYTES: u64 = 26;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_11dcf871306958211993961d60c607836696edf5c825bb7a109ec5efd885f191";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.vect {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        if n > 26 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        for element in &self.vect {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.axis.to_le_bytes());
        put(out, at, &self.r#ref.to_le_bytes());
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
                value.vect[i] = decoded;
            }
        }
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.axis = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.r#ref = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsParallelAxis2Request {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 26 {
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
/// Complete bounded value for ROS1 dsr_msgs/ParallelAxis2Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsParallelAxis2Response {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsParallelAxis2Response {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsParallelAxis2Response {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_41ca262ffdbabdde6ee4bbb0521813cc08cb56a86eb59335be8af82aa5d629c4";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsParallelAxis2Response {
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
/// Complete bounded value for ROS1 dsr_msgs/ReadDataRTRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsReadDataRTRequest {}
impl Default for Ros1Dsr_msgsReadDataRTRequest {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Dsr_msgsReadDataRTRequest {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_2c1ece2dc02863d851f0d24f9705a3c66217b1557827d450e1b58c9fb64af4bf";
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
impl Canonical for Ros1Dsr_msgsReadDataRTRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/RobotStateRT.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsRobotStateRT {
    /// Declared time_stamp; canonical bounds are part of CODEC_IDENTITY.
    pub time_stamp: f64,
    /// Declared actual_joint_position; canonical bounds are part of CODEC_IDENTITY.
    pub actual_joint_position: [f64; 6],
    /// Declared actual_joint_position_abs; canonical bounds are part of CODEC_IDENTITY.
    pub actual_joint_position_abs: [f64; 6],
    /// Declared actual_joint_velocity; canonical bounds are part of CODEC_IDENTITY.
    pub actual_joint_velocity: [f64; 6],
    /// Declared actual_joint_velocity_abs; canonical bounds are part of CODEC_IDENTITY.
    pub actual_joint_velocity_abs: [f64; 6],
    /// Declared actual_tcp_position; canonical bounds are part of CODEC_IDENTITY.
    pub actual_tcp_position: [f64; 6],
    /// Declared actual_tcp_velocity; canonical bounds are part of CODEC_IDENTITY.
    pub actual_tcp_velocity: [f64; 6],
    /// Declared actual_flange_position; canonical bounds are part of CODEC_IDENTITY.
    pub actual_flange_position: [f64; 6],
    /// Declared actual_flange_velocity; canonical bounds are part of CODEC_IDENTITY.
    pub actual_flange_velocity: [f64; 6],
    /// Declared actual_motor_torque; canonical bounds are part of CODEC_IDENTITY.
    pub actual_motor_torque: [f64; 6],
    /// Declared actual_joint_torque; canonical bounds are part of CODEC_IDENTITY.
    pub actual_joint_torque: [f64; 6],
    /// Declared raw_joint_torque; canonical bounds are part of CODEC_IDENTITY.
    pub raw_joint_torque: [f64; 6],
    /// Declared raw_force_torque; canonical bounds are part of CODEC_IDENTITY.
    pub raw_force_torque: [f64; 6],
    /// Declared external_joint_torque; canonical bounds are part of CODEC_IDENTITY.
    pub external_joint_torque: [f64; 6],
    /// Declared external_tcp_force; canonical bounds are part of CODEC_IDENTITY.
    pub external_tcp_force: [f64; 6],
    /// Declared target_joint_position; canonical bounds are part of CODEC_IDENTITY.
    pub target_joint_position: [f64; 6],
    /// Declared target_joint_velocity; canonical bounds are part of CODEC_IDENTITY.
    pub target_joint_velocity: [f64; 6],
    /// Declared target_joint_acceleration; canonical bounds are part of CODEC_IDENTITY.
    pub target_joint_acceleration: [f64; 6],
    /// Declared target_motor_torque; canonical bounds are part of CODEC_IDENTITY.
    pub target_motor_torque: [f64; 6],
    /// Declared target_tcp_position; canonical bounds are part of CODEC_IDENTITY.
    pub target_tcp_position: [f64; 6],
    /// Declared target_tcp_velocity; canonical bounds are part of CODEC_IDENTITY.
    pub target_tcp_velocity: [f64; 6],
    /// Declared jacobian_matrix; canonical bounds are part of CODEC_IDENTITY.
    pub jacobian_matrix: Vec<Ros1Std_msgsFloat64MultiArray>,
    /// Declared gravity_torque; canonical bounds are part of CODEC_IDENTITY.
    pub gravity_torque: [f64; 6],
    /// Declared coriolis_matrix; canonical bounds are part of CODEC_IDENTITY.
    pub coriolis_matrix: Vec<Ros1Std_msgsFloat64MultiArray>,
    /// Declared mass_matrix; canonical bounds are part of CODEC_IDENTITY.
    pub mass_matrix: Vec<Ros1Std_msgsFloat64MultiArray>,
    /// Declared solution_space; canonical bounds are part of CODEC_IDENTITY.
    pub solution_space: u16,
    /// Declared singularity; canonical bounds are part of CODEC_IDENTITY.
    pub singularity: f64,
    /// Declared operation_speed_rate; canonical bounds are part of CODEC_IDENTITY.
    pub operation_speed_rate: f64,
    /// Declared joint_temperature; canonical bounds are part of CODEC_IDENTITY.
    pub joint_temperature: [f64; 6],
    /// Declared controller_digital_input; canonical bounds are part of CODEC_IDENTITY.
    pub controller_digital_input: u16,
    /// Declared controller_digital_output; canonical bounds are part of CODEC_IDENTITY.
    pub controller_digital_output: u16,
    /// Declared controller_analog_input_type; canonical bounds are part of CODEC_IDENTITY.
    pub controller_analog_input_type: [u8; 2],
    /// Declared controller_analog_input; canonical bounds are part of CODEC_IDENTITY.
    pub controller_analog_input: [f64; 2],
    /// Declared controller_analog_output_type; canonical bounds are part of CODEC_IDENTITY.
    pub controller_analog_output_type: [u8; 2],
    /// Declared controller_analog_output; canonical bounds are part of CODEC_IDENTITY.
    pub controller_analog_output: [f64; 2],
    /// Declared flange_digital_input; canonical bounds are part of CODEC_IDENTITY.
    pub flange_digital_input: u8,
    /// Declared flange_digital_output; canonical bounds are part of CODEC_IDENTITY.
    pub flange_digital_output: u8,
    /// Declared flange_analog_input; canonical bounds are part of CODEC_IDENTITY.
    pub flange_analog_input: [f64; 4],
    /// Declared external_encoder_strobe_count; canonical bounds are part of CODEC_IDENTITY.
    pub external_encoder_strobe_count: [u8; 2],
    /// Declared external_encoder_count; canonical bounds are part of CODEC_IDENTITY.
    pub external_encoder_count: [u16; 2],
    /// Declared goal_joint_position; canonical bounds are part of CODEC_IDENTITY.
    pub goal_joint_position: [f64; 6],
    /// Declared goal_tcp_position; canonical bounds are part of CODEC_IDENTITY.
    pub goal_tcp_position: [f64; 6],
    /// Declared robot_mode; canonical bounds are part of CODEC_IDENTITY.
    pub robot_mode: u8,
    /// Declared robot_state; canonical bounds are part of CODEC_IDENTITY.
    pub robot_state: u8,
    /// Declared control_mode; canonical bounds are part of CODEC_IDENTITY.
    pub control_mode: u16,
    /// Declared reserved; canonical bounds are part of CODEC_IDENTITY.
    pub reserved: [u8; 256],
}
impl Default for Ros1Dsr_msgsRobotStateRT {
    fn default() -> Self {
        Self {
            time_stamp: Default::default(),
            actual_joint_position: core::array::from_fn(|_| Default::default()),
            actual_joint_position_abs: core::array::from_fn(|_| Default::default()),
            actual_joint_velocity: core::array::from_fn(|_| Default::default()),
            actual_joint_velocity_abs: core::array::from_fn(|_| Default::default()),
            actual_tcp_position: core::array::from_fn(|_| Default::default()),
            actual_tcp_velocity: core::array::from_fn(|_| Default::default()),
            actual_flange_position: core::array::from_fn(|_| Default::default()),
            actual_flange_velocity: core::array::from_fn(|_| Default::default()),
            actual_motor_torque: core::array::from_fn(|_| Default::default()),
            actual_joint_torque: core::array::from_fn(|_| Default::default()),
            raw_joint_torque: core::array::from_fn(|_| Default::default()),
            raw_force_torque: core::array::from_fn(|_| Default::default()),
            external_joint_torque: core::array::from_fn(|_| Default::default()),
            external_tcp_force: core::array::from_fn(|_| Default::default()),
            target_joint_position: core::array::from_fn(|_| Default::default()),
            target_joint_velocity: core::array::from_fn(|_| Default::default()),
            target_joint_acceleration: core::array::from_fn(|_| Default::default()),
            target_motor_torque: core::array::from_fn(|_| Default::default()),
            target_tcp_position: core::array::from_fn(|_| Default::default()),
            target_tcp_velocity: core::array::from_fn(|_| Default::default()),
            jacobian_matrix: Default::default(),
            gravity_torque: core::array::from_fn(|_| Default::default()),
            coriolis_matrix: Default::default(),
            mass_matrix: Default::default(),
            solution_space: Default::default(),
            singularity: Default::default(),
            operation_speed_rate: Default::default(),
            joint_temperature: core::array::from_fn(|_| Default::default()),
            controller_digital_input: Default::default(),
            controller_digital_output: Default::default(),
            controller_analog_input_type: core::array::from_fn(|_| Default::default()),
            controller_analog_input: core::array::from_fn(|_| Default::default()),
            controller_analog_output_type: core::array::from_fn(|_| Default::default()),
            controller_analog_output: core::array::from_fn(|_| Default::default()),
            flange_digital_input: Default::default(),
            flange_digital_output: Default::default(),
            flange_analog_input: core::array::from_fn(|_| Default::default()),
            external_encoder_strobe_count: core::array::from_fn(|_| Default::default()),
            external_encoder_count: core::array::from_fn(|_| Default::default()),
            goal_joint_position: core::array::from_fn(|_| Default::default()),
            goal_tcp_position: core::array::from_fn(|_| Default::default()),
            robot_mode: Default::default(),
            robot_state: Default::default(),
            control_mode: Default::default(),
            reserved: core::array::from_fn(|_| Default::default()),
        }
    }
}
impl Ros1Dsr_msgsRobotStateRT {
    pub const MAX_WIRE_BYTES: usize = 8154;
    pub const CARTESIAN_WIRE_BYTES: u64 = 8154;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_558a295457376b0d96845db2a2bd64c5549a9e72ea49f01036286d14e5022232";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if !self.time_stamp.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        for element in &self.actual_joint_position {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.actual_joint_position_abs {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.actual_joint_velocity {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.actual_joint_velocity_abs {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.actual_tcp_position {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.actual_tcp_velocity {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.actual_flange_position {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.actual_flange_velocity {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.actual_motor_torque {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.actual_joint_torque {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.raw_joint_torque {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.raw_force_torque {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.external_joint_torque {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.external_tcp_force {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.target_joint_position {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.target_joint_velocity {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.target_joint_acceleration {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.target_motor_torque {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.target_tcp_position {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.target_tcp_velocity {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if self.jacobian_matrix.len() > 6 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.jacobian_matrix {
            n = add_size(n, element.wire_size()?)?;
        }
        for element in &self.gravity_torque {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if self.coriolis_matrix.len() > 6 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.coriolis_matrix {
            n = add_size(n, element.wire_size()?)?;
        }
        if self.mass_matrix.len() > 6 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.mass_matrix {
            n = add_size(n, element.wire_size()?)?;
        }
        n = add_size(n, 2)?;
        if !self.singularity.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.operation_speed_rate.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        for element in &self.joint_temperature {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        n = add_size(n, 2)?;
        n = add_size(n, 2)?;
        for element in &self.controller_analog_input_type {
            n = add_size(n, 1)?;
        }
        for element in &self.controller_analog_input {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.controller_analog_output_type {
            n = add_size(n, 1)?;
        }
        for element in &self.controller_analog_output {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        for element in &self.flange_analog_input {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.external_encoder_strobe_count {
            n = add_size(n, 1)?;
        }
        for element in &self.external_encoder_count {
            n = add_size(n, 2)?;
        }
        for element in &self.goal_joint_position {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.goal_tcp_position {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 2)?;
        for element in &self.reserved {
            n = add_size(n, 1)?;
        }
        if n > 8154 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.time_stamp.to_le_bytes());
        for element in &self.actual_joint_position {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.actual_joint_position_abs {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.actual_joint_velocity {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.actual_joint_velocity_abs {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.actual_tcp_position {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.actual_tcp_velocity {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.actual_flange_position {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.actual_flange_velocity {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.actual_motor_torque {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.actual_joint_torque {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.raw_joint_torque {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.raw_force_torque {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.external_joint_torque {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.external_tcp_force {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.target_joint_position {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.target_joint_velocity {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.target_joint_acceleration {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.target_motor_torque {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.target_tcp_position {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.target_tcp_velocity {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &(self.jacobian_matrix.len() as u32).to_le_bytes());
        for element in &self.jacobian_matrix {
            element.write_fields(out, at);
        }
        for element in &self.gravity_torque {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &(self.coriolis_matrix.len() as u32).to_le_bytes());
        for element in &self.coriolis_matrix {
            element.write_fields(out, at);
        }
        put(out, at, &(self.mass_matrix.len() as u32).to_le_bytes());
        for element in &self.mass_matrix {
            element.write_fields(out, at);
        }
        put(out, at, &self.solution_space.to_le_bytes());
        put(out, at, &self.singularity.to_le_bytes());
        put(out, at, &self.operation_speed_rate.to_le_bytes());
        for element in &self.joint_temperature {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.controller_digital_input.to_le_bytes());
        put(out, at, &self.controller_digital_output.to_le_bytes());
        for element in &self.controller_analog_input_type {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.controller_analog_input {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.controller_analog_output_type {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.controller_analog_output {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.flange_digital_input.to_le_bytes());
        put(out, at, &self.flange_digital_output.to_le_bytes());
        for element in &self.flange_analog_input {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.external_encoder_strobe_count {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.external_encoder_count {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.goal_joint_position {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.goal_tcp_position {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.robot_mode.to_le_bytes());
        put(out, at, &self.robot_state.to_le_bytes());
        put(out, at, &self.control_mode.to_le_bytes());
        for element in &self.reserved {
            put(out, at, &element.to_le_bytes());
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.time_stamp = decoded;
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.actual_joint_position[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.actual_joint_position_abs[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.actual_joint_velocity[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.actual_joint_velocity_abs[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.actual_tcp_position[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.actual_tcp_velocity[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.actual_flange_position[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.actual_flange_velocity[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.actual_motor_torque[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.actual_joint_torque[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.raw_joint_torque[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.raw_force_torque[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.external_joint_torque[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.external_tcp_force[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.target_joint_position[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.target_joint_velocity[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.target_joint_acceleration[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.target_motor_torque[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.target_tcp_position[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.target_tcp_velocity[i] = decoded;
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 6 {
                return Err(invalid());
            }
            value.jacobian_matrix = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros1Std_msgsFloat64MultiArray::read_fields(bytes, at)?;
                value.jacobian_matrix.push(decoded);
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.gravity_torque[i] = decoded;
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 6 {
                return Err(invalid());
            }
            value.coriolis_matrix = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros1Std_msgsFloat64MultiArray::read_fields(bytes, at)?;
                value.coriolis_matrix.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 6 {
                return Err(invalid());
            }
            value.mass_matrix = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros1Std_msgsFloat64MultiArray::read_fields(bytes, at)?;
                value.mass_matrix.push(decoded);
            }
        }
        let decoded = u16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.solution_space = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.singularity = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.operation_speed_rate = decoded;
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.joint_temperature[i] = decoded;
            }
        }
        let decoded = u16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.controller_digital_input = decoded;
        let decoded = u16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.controller_digital_output = decoded;
        {
            let count = 2usize;
            if count > 2 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
                value.controller_analog_input_type[i] = decoded;
            }
        }
        {
            let count = 2usize;
            if count > 2 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.controller_analog_input[i] = decoded;
            }
        }
        {
            let count = 2usize;
            if count > 2 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
                value.controller_analog_output_type[i] = decoded;
            }
        }
        {
            let count = 2usize;
            if count > 2 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.controller_analog_output[i] = decoded;
            }
        }
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.flange_digital_input = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.flange_digital_output = decoded;
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
                value.flange_analog_input[i] = decoded;
            }
        }
        {
            let count = 2usize;
            if count > 2 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
                value.external_encoder_strobe_count[i] = decoded;
            }
        }
        {
            let count = 2usize;
            if count > 2 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    u16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
                value.external_encoder_count[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.goal_joint_position[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.goal_tcp_position[i] = decoded;
            }
        }
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.robot_mode = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.robot_state = decoded;
        let decoded = u16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.control_mode = decoded;
        {
            let count = 256usize;
            if count > 256 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
                value.reserved[i] = decoded;
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsRobotStateRT {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 8154 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 1530 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 dsr_msgs/ReadDataRTResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsReadDataRTResponse {
    /// Declared data; canonical bounds are part of CODEC_IDENTITY.
    pub data: Ros1Dsr_msgsRobotStateRT,
}
impl Default for Ros1Dsr_msgsReadDataRTResponse {
    fn default() -> Self {
        Self {
            data: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsReadDataRTResponse {
    pub const MAX_WIRE_BYTES: usize = 8154;
    pub const CARTESIAN_WIRE_BYTES: u64 = 8154;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_bb6425973c166cd6f5ab88ae080d521d6f3f2e3e40cfb4ec0493c59e71f83bda";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.data.wire_size()?)?;
        if n > 8154 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.data.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Dsr_msgsRobotStateRT::read_fields(bytes, at)?;
        value.data = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsReadDataRTResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 8154 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 1530 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 dsr_msgs/ReleaseComplianceCtrlRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsReleaseComplianceCtrlRequest {}
impl Default for Ros1Dsr_msgsReleaseComplianceCtrlRequest {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Dsr_msgsReleaseComplianceCtrlRequest {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_963f201a73d6cb461e28bf94dc6223bf0c8e603adb96142cde94a764349ccdd2";
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
impl Canonical for Ros1Dsr_msgsReleaseComplianceCtrlRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/ReleaseComplianceCtrlResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsReleaseComplianceCtrlResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsReleaseComplianceCtrlResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsReleaseComplianceCtrlResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_5c5e9252fd9e8c346e8317f600fa46eb18c8e53be3447eddf3fb5f474a44682d";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsReleaseComplianceCtrlResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/ReleaseForceRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsReleaseForceRequest {
    /// Declared time; canonical bounds are part of CODEC_IDENTITY.
    pub time: f64,
}
impl Default for Ros1Dsr_msgsReleaseForceRequest {
    fn default() -> Self {
        Self {
            time: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsReleaseForceRequest {
    pub const MAX_WIRE_BYTES: usize = 8;
    pub const CARTESIAN_WIRE_BYTES: u64 = 8;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_5809993bacca15147eaf819181a6c1d187512d169539b6125e112b56bc0d2bc2";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if !self.time.is_finite() {
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
        put(out, at, &self.time.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.time = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsReleaseForceRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/ReleaseForceResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsReleaseForceResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsReleaseForceResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsReleaseForceResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_59e8fed1895c6e1664d689126a2df57918728f4006b20e50c1bc0055e76cc2d5";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsReleaseForceResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/ReleaseProtectiveStopRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsReleaseProtectiveStopRequest {
    /// Declared release_mode; canonical bounds are part of CODEC_IDENTITY.
    pub release_mode: i8,
}
impl Default for Ros1Dsr_msgsReleaseProtectiveStopRequest {
    fn default() -> Self {
        Self {
            release_mode: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsReleaseProtectiveStopRequest {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_0703fb0af5fef931ae1b4364f05b4f5325e6195a2b4865e1dfcfeb3dd6f7c175";
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
        put(out, at, &self.release_mode.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.release_mode = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsReleaseProtectiveStopRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/ReleaseProtectiveStopResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsReleaseProtectiveStopResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsReleaseProtectiveStopResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsReleaseProtectiveStopResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_2fdc5568ddd9e700513489ccbf9078932bc28fe902f815fdd9a722b13ab599ec";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsReleaseProtectiveStopResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/ResetWorkpieceWeightRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsResetWorkpieceWeightRequest {}
impl Default for Ros1Dsr_msgsResetWorkpieceWeightRequest {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Dsr_msgsResetWorkpieceWeightRequest {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_b2cf228390cc1aa473c6e1a9025d7ea7e789acb3f7dd6a0a4178402b6d843ed6";
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
impl Canonical for Ros1Dsr_msgsResetWorkpieceWeightRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/ResetWorkpieceWeightResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsResetWorkpieceWeightResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsResetWorkpieceWeightResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsResetWorkpieceWeightResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_f11776348fcebca43e64f7a635e2a080642a29c32762704029bd1429055cc025";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsResetWorkpieceWeightResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/RobotError.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsRobotError {
    /// Declared level; canonical bounds are part of CODEC_IDENTITY.
    pub level: i32,
    /// Declared group; canonical bounds are part of CODEC_IDENTITY.
    pub group: i32,
    /// Declared code; canonical bounds are part of CODEC_IDENTITY.
    pub code: i32,
    /// Declared msg1; canonical bounds are part of CODEC_IDENTITY.
    pub msg1: String,
    /// Declared msg2; canonical bounds are part of CODEC_IDENTITY.
    pub msg2: String,
    /// Declared msg3; canonical bounds are part of CODEC_IDENTITY.
    pub msg3: String,
}
impl Default for Ros1Dsr_msgsRobotError {
    fn default() -> Self {
        Self {
            level: Default::default(),
            group: Default::default(),
            code: Default::default(),
            msg1: Default::default(),
            msg2: Default::default(),
            msg3: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsRobotError {
    pub const MAX_WIRE_BYTES: usize = 792;
    pub const CARTESIAN_WIRE_BYTES: u64 = 792;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_86d4b7b2d131374e05e7fe9d53988f0ed6713deb337a37182ac4998951ca5641";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 4)?;
        n = add_size(n, 4)?;
        n = add_size(n, 4)?;
        if self.msg1.len() > 256 || self.msg1.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.msg1.len())?;
        if self.msg2.len() > 256 || self.msg2.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.msg2.len())?;
        if self.msg3.len() > 256 || self.msg3.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.msg3.len())?;
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
        put(out, at, &self.level.to_le_bytes());
        put(out, at, &self.group.to_le_bytes());
        put(out, at, &self.code.to_le_bytes());
        put(out, at, &(self.msg1.len() as u32).to_le_bytes());
        put(out, at, self.msg1.as_bytes());
        put(out, at, &(self.msg2.len() as u32).to_le_bytes());
        put(out, at, self.msg2.as_bytes());
        put(out, at, &(self.msg3.len() as u32).to_le_bytes());
        put(out, at, self.msg3.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.level = decoded;
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.group = decoded;
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.code = decoded;
        let size = read_count(bytes, at)?;
        if size > 256 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.msg1 = decoded;
        let size = read_count(bytes, at)?;
        if size > 256 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.msg2 = decoded;
        let size = read_count(bytes, at)?;
        if size > 256 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.msg3 = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsRobotError {
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
/// Complete bounded value for ROS1 dsr_msgs/RobotState.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsRobotState {
    /// Declared robot_state; canonical bounds are part of CODEC_IDENTITY.
    pub robot_state: i32,
    /// Declared robot_state_str; canonical bounds are part of CODEC_IDENTITY.
    pub robot_state_str: String,
    /// Declared actual_mode; canonical bounds are part of CODEC_IDENTITY.
    pub actual_mode: i8,
    /// Declared actual_space; canonical bounds are part of CODEC_IDENTITY.
    pub actual_space: i8,
    /// Declared current_posj; canonical bounds are part of CODEC_IDENTITY.
    pub current_posj: [f64; 6],
    /// Declared current_velj; canonical bounds are part of CODEC_IDENTITY.
    pub current_velj: [f64; 6],
    /// Declared joint_abs; canonical bounds are part of CODEC_IDENTITY.
    pub joint_abs: [f64; 6],
    /// Declared joint_err; canonical bounds are part of CODEC_IDENTITY.
    pub joint_err: [f64; 6],
    /// Declared target_posj; canonical bounds are part of CODEC_IDENTITY.
    pub target_posj: [f64; 6],
    /// Declared target_velj; canonical bounds are part of CODEC_IDENTITY.
    pub target_velj: [f64; 6],
    /// Declared current_posx; canonical bounds are part of CODEC_IDENTITY.
    pub current_posx: [f64; 6],
    /// Declared current_tool_posx; canonical bounds are part of CODEC_IDENTITY.
    pub current_tool_posx: [f64; 6],
    /// Declared current_velx; canonical bounds are part of CODEC_IDENTITY.
    pub current_velx: [f64; 6],
    /// Declared task_err; canonical bounds are part of CODEC_IDENTITY.
    pub task_err: [f64; 6],
    /// Declared target_velx; canonical bounds are part of CODEC_IDENTITY.
    pub target_velx: [f64; 6],
    /// Declared target_posx; canonical bounds are part of CODEC_IDENTITY.
    pub target_posx: [f64; 6],
    /// Declared dynamic_tor; canonical bounds are part of CODEC_IDENTITY.
    pub dynamic_tor: [f64; 6],
    /// Declared actual_jts; canonical bounds are part of CODEC_IDENTITY.
    pub actual_jts: [f64; 6],
    /// Declared actual_ejt; canonical bounds are part of CODEC_IDENTITY.
    pub actual_ejt: [f64; 6],
    /// Declared actual_ett; canonical bounds are part of CODEC_IDENTITY.
    pub actual_ett: [f64; 6],
    /// Declared actual_bk; canonical bounds are part of CODEC_IDENTITY.
    pub actual_bk: [i8; 6],
    /// Declared actual_mc; canonical bounds are part of CODEC_IDENTITY.
    pub actual_mc: [f64; 6],
    /// Declared actual_mt; canonical bounds are part of CODEC_IDENTITY.
    pub actual_mt: [f64; 6],
    /// Declared solution_space; canonical bounds are part of CODEC_IDENTITY.
    pub solution_space: i8,
    /// Declared sync_time; canonical bounds are part of CODEC_IDENTITY.
    pub sync_time: f64,
    /// Declared actual_bt; canonical bounds are part of CODEC_IDENTITY.
    pub actual_bt: [i8; 5],
    /// Declared rotation_matrix; canonical bounds are part of CODEC_IDENTITY.
    pub rotation_matrix: Vec<Ros1Std_msgsFloat64MultiArray>,
    /// Declared ctrlbox_digital_input; canonical bounds are part of CODEC_IDENTITY.
    pub ctrlbox_digital_input: [i8; 16],
    /// Declared ctrlbox_digital_output; canonical bounds are part of CODEC_IDENTITY.
    pub ctrlbox_digital_output: [i8; 16],
    /// Declared flange_digital_input; canonical bounds are part of CODEC_IDENTITY.
    pub flange_digital_input: [i8; 6],
    /// Declared flange_digital_output; canonical bounds are part of CODEC_IDENTITY.
    pub flange_digital_output: [i8; 6],
    /// Declared modbus_state; canonical bounds are part of CODEC_IDENTITY.
    pub modbus_state: Vec<Ros1Dsr_msgsModbusState>,
    /// Declared access_control; canonical bounds are part of CODEC_IDENTITY.
    pub access_control: i32,
    /// Declared homming_completed; canonical bounds are part of CODEC_IDENTITY.
    pub homming_completed: bool,
    /// Declared tp_initialized; canonical bounds are part of CODEC_IDENTITY.
    pub tp_initialized: bool,
    /// Declared mastering_need; canonical bounds are part of CODEC_IDENTITY.
    pub mastering_need: i8,
    /// Declared drl_stopped; canonical bounds are part of CODEC_IDENTITY.
    pub drl_stopped: bool,
    /// Declared disconnected; canonical bounds are part of CODEC_IDENTITY.
    pub disconnected: bool,
    /// Declared fActualW2B; canonical bounds are part of CODEC_IDENTITY.
    pub fActualW2B: [f64; 6],
    /// Declared fCurrentPosW; canonical bounds are part of CODEC_IDENTITY.
    pub fCurrentPosW: Vec<Ros1Std_msgsFloat64MultiArray>,
    /// Declared fCurrentVelW; canonical bounds are part of CODEC_IDENTITY.
    pub fCurrentVelW: [f64; 6],
    /// Declared fWorldETT; canonical bounds are part of CODEC_IDENTITY.
    pub fWorldETT: [f64; 6],
    /// Declared fTargetPosW; canonical bounds are part of CODEC_IDENTITY.
    pub fTargetPosW: [f64; 6],
    /// Declared fTargetVelW; canonical bounds are part of CODEC_IDENTITY.
    pub fTargetVelW: [f64; 6],
    /// Declared fRotationMatrixWorld; canonical bounds are part of CODEC_IDENTITY.
    pub fRotationMatrixWorld: Vec<Ros1Std_msgsFloat64MultiArray>,
    /// Declared iActualUCN; canonical bounds are part of CODEC_IDENTITY.
    pub iActualUCN: i8,
    /// Declared iParent; canonical bounds are part of CODEC_IDENTITY.
    pub iParent: i8,
    /// Declared fCurrentPosU; canonical bounds are part of CODEC_IDENTITY.
    pub fCurrentPosU: Vec<Ros1Std_msgsFloat64MultiArray>,
    /// Declared fCurrentVelU; canonical bounds are part of CODEC_IDENTITY.
    pub fCurrentVelU: [f64; 6],
    /// Declared fUserETT; canonical bounds are part of CODEC_IDENTITY.
    pub fUserETT: [f64; 6],
    /// Declared fTargetPosU; canonical bounds are part of CODEC_IDENTITY.
    pub fTargetPosU: [f64; 6],
    /// Declared fTargetVelU; canonical bounds are part of CODEC_IDENTITY.
    pub fTargetVelU: [f64; 6],
    /// Declared fRotationMatrixUser; canonical bounds are part of CODEC_IDENTITY.
    pub fRotationMatrixUser: Vec<Ros1Std_msgsFloat64MultiArray>,
    /// Declared fActualAI; canonical bounds are part of CODEC_IDENTITY.
    pub fActualAI: [f64; 6],
    /// Declared bActualSW; canonical bounds are part of CODEC_IDENTITY.
    pub bActualSW: [bool; 3],
    /// Declared bActualSI; canonical bounds are part of CODEC_IDENTITY.
    pub bActualSI: [bool; 2],
    /// Declared iActualAT; canonical bounds are part of CODEC_IDENTITY.
    pub iActualAT: [i8; 2],
    /// Declared fTargetAO; canonical bounds are part of CODEC_IDENTITY.
    pub fTargetAO: [f64; 2],
    /// Declared iTargetAT; canonical bounds are part of CODEC_IDENTITY.
    pub iTargetAT: [i8; 2],
    /// Declared bActualES; canonical bounds are part of CODEC_IDENTITY.
    pub bActualES: [bool; 2],
    /// Declared iActualED; canonical bounds are part of CODEC_IDENTITY.
    pub iActualED: [i8; 2],
    /// Declared bActualER; canonical bounds are part of CODEC_IDENTITY.
    pub bActualER: [bool; 2],
}
impl Default for Ros1Dsr_msgsRobotState {
    fn default() -> Self {
        Self {
            robot_state: Default::default(),
            robot_state_str: Default::default(),
            actual_mode: Default::default(),
            actual_space: Default::default(),
            current_posj: core::array::from_fn(|_| Default::default()),
            current_velj: core::array::from_fn(|_| Default::default()),
            joint_abs: core::array::from_fn(|_| Default::default()),
            joint_err: core::array::from_fn(|_| Default::default()),
            target_posj: core::array::from_fn(|_| Default::default()),
            target_velj: core::array::from_fn(|_| Default::default()),
            current_posx: core::array::from_fn(|_| Default::default()),
            current_tool_posx: core::array::from_fn(|_| Default::default()),
            current_velx: core::array::from_fn(|_| Default::default()),
            task_err: core::array::from_fn(|_| Default::default()),
            target_velx: core::array::from_fn(|_| Default::default()),
            target_posx: core::array::from_fn(|_| Default::default()),
            dynamic_tor: core::array::from_fn(|_| Default::default()),
            actual_jts: core::array::from_fn(|_| Default::default()),
            actual_ejt: core::array::from_fn(|_| Default::default()),
            actual_ett: core::array::from_fn(|_| Default::default()),
            actual_bk: core::array::from_fn(|_| Default::default()),
            actual_mc: core::array::from_fn(|_| Default::default()),
            actual_mt: core::array::from_fn(|_| Default::default()),
            solution_space: Default::default(),
            sync_time: Default::default(),
            actual_bt: core::array::from_fn(|_| Default::default()),
            rotation_matrix: Default::default(),
            ctrlbox_digital_input: core::array::from_fn(|_| Default::default()),
            ctrlbox_digital_output: core::array::from_fn(|_| Default::default()),
            flange_digital_input: core::array::from_fn(|_| Default::default()),
            flange_digital_output: core::array::from_fn(|_| Default::default()),
            modbus_state: Default::default(),
            access_control: Default::default(),
            homming_completed: Default::default(),
            tp_initialized: Default::default(),
            mastering_need: Default::default(),
            drl_stopped: Default::default(),
            disconnected: Default::default(),
            fActualW2B: core::array::from_fn(|_| Default::default()),
            fCurrentPosW: Default::default(),
            fCurrentVelW: core::array::from_fn(|_| Default::default()),
            fWorldETT: core::array::from_fn(|_| Default::default()),
            fTargetPosW: core::array::from_fn(|_| Default::default()),
            fTargetVelW: core::array::from_fn(|_| Default::default()),
            fRotationMatrixWorld: Default::default(),
            iActualUCN: Default::default(),
            iParent: Default::default(),
            fCurrentPosU: Default::default(),
            fCurrentVelU: core::array::from_fn(|_| Default::default()),
            fUserETT: core::array::from_fn(|_| Default::default()),
            fTargetPosU: core::array::from_fn(|_| Default::default()),
            fTargetVelU: core::array::from_fn(|_| Default::default()),
            fRotationMatrixUser: Default::default(),
            fActualAI: core::array::from_fn(|_| Default::default()),
            bActualSW: core::array::from_fn(|_| Default::default()),
            bActualSI: core::array::from_fn(|_| Default::default()),
            iActualAT: core::array::from_fn(|_| Default::default()),
            fTargetAO: core::array::from_fn(|_| Default::default()),
            iTargetAT: core::array::from_fn(|_| Default::default()),
            bActualES: core::array::from_fn(|_| Default::default()),
            iActualED: core::array::from_fn(|_| Default::default()),
            bActualER: core::array::from_fn(|_| Default::default()),
        }
    }
}
impl Ros1Dsr_msgsRobotState {
    pub const MAX_WIRE_BYTES: usize = 17004;
    pub const CARTESIAN_WIRE_BYTES: u64 = 17004;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_3f34278ee2cdceff51b3bb665ce314cc4a0d4e164b110969102a04c96e374456";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 4)?;
        if self.robot_state_str.len() > 256 || self.robot_state_str.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.robot_state_str.len())?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        for element in &self.current_posj {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.current_velj {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.joint_abs {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.joint_err {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.target_posj {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.target_velj {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.current_posx {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.current_tool_posx {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.current_velx {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.task_err {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.target_velx {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.target_posx {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.dynamic_tor {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.actual_jts {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.actual_ejt {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.actual_ett {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.actual_bk {
            n = add_size(n, 1)?;
        }
        for element in &self.actual_mc {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.actual_mt {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        n = add_size(n, 1)?;
        if !self.sync_time.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        for element in &self.actual_bt {
            n = add_size(n, 1)?;
        }
        if self.rotation_matrix.len() > 6 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.rotation_matrix {
            n = add_size(n, element.wire_size()?)?;
        }
        for element in &self.ctrlbox_digital_input {
            n = add_size(n, 1)?;
        }
        for element in &self.ctrlbox_digital_output {
            n = add_size(n, 1)?;
        }
        for element in &self.flange_digital_input {
            n = add_size(n, 1)?;
        }
        for element in &self.flange_digital_output {
            n = add_size(n, 1)?;
        }
        if self.modbus_state.len() > 16 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.modbus_state {
            n = add_size(n, element.wire_size()?)?;
        }
        n = add_size(n, 4)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        for element in &self.fActualW2B {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if self.fCurrentPosW.len() > 6 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.fCurrentPosW {
            n = add_size(n, element.wire_size()?)?;
        }
        for element in &self.fCurrentVelW {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.fWorldETT {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.fTargetPosW {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.fTargetVelW {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if self.fRotationMatrixWorld.len() > 6 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.fRotationMatrixWorld {
            n = add_size(n, element.wire_size()?)?;
        }
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        if self.fCurrentPosU.len() > 6 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.fCurrentPosU {
            n = add_size(n, element.wire_size()?)?;
        }
        for element in &self.fCurrentVelU {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.fUserETT {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.fTargetPosU {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.fTargetVelU {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if self.fRotationMatrixUser.len() > 6 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.fRotationMatrixUser {
            n = add_size(n, element.wire_size()?)?;
        }
        for element in &self.fActualAI {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.bActualSW {
            n = add_size(n, 1)?;
        }
        for element in &self.bActualSI {
            n = add_size(n, 1)?;
        }
        for element in &self.iActualAT {
            n = add_size(n, 1)?;
        }
        for element in &self.fTargetAO {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.iTargetAT {
            n = add_size(n, 1)?;
        }
        for element in &self.bActualES {
            n = add_size(n, 1)?;
        }
        for element in &self.iActualED {
            n = add_size(n, 1)?;
        }
        for element in &self.bActualER {
            n = add_size(n, 1)?;
        }
        if n > 17004 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.robot_state.to_le_bytes());
        put(out, at, &(self.robot_state_str.len() as u32).to_le_bytes());
        put(out, at, self.robot_state_str.as_bytes());
        put(out, at, &self.actual_mode.to_le_bytes());
        put(out, at, &self.actual_space.to_le_bytes());
        for element in &self.current_posj {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.current_velj {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.joint_abs {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.joint_err {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.target_posj {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.target_velj {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.current_posx {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.current_tool_posx {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.current_velx {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.task_err {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.target_velx {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.target_posx {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.dynamic_tor {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.actual_jts {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.actual_ejt {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.actual_ett {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.actual_bk {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.actual_mc {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.actual_mt {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.solution_space.to_le_bytes());
        put(out, at, &self.sync_time.to_le_bytes());
        for element in &self.actual_bt {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &(self.rotation_matrix.len() as u32).to_le_bytes());
        for element in &self.rotation_matrix {
            element.write_fields(out, at);
        }
        for element in &self.ctrlbox_digital_input {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.ctrlbox_digital_output {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.flange_digital_input {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.flange_digital_output {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &(self.modbus_state.len() as u32).to_le_bytes());
        for element in &self.modbus_state {
            element.write_fields(out, at);
        }
        put(out, at, &self.access_control.to_le_bytes());
        put(out, at, &[u8::from(self.homming_completed)]);
        put(out, at, &[u8::from(self.tp_initialized)]);
        put(out, at, &self.mastering_need.to_le_bytes());
        put(out, at, &[u8::from(self.drl_stopped)]);
        put(out, at, &[u8::from(self.disconnected)]);
        for element in &self.fActualW2B {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &(self.fCurrentPosW.len() as u32).to_le_bytes());
        for element in &self.fCurrentPosW {
            element.write_fields(out, at);
        }
        for element in &self.fCurrentVelW {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.fWorldETT {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.fTargetPosW {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.fTargetVelW {
            put(out, at, &element.to_le_bytes());
        }
        put(
            out,
            at,
            &(self.fRotationMatrixWorld.len() as u32).to_le_bytes(),
        );
        for element in &self.fRotationMatrixWorld {
            element.write_fields(out, at);
        }
        put(out, at, &self.iActualUCN.to_le_bytes());
        put(out, at, &self.iParent.to_le_bytes());
        put(out, at, &(self.fCurrentPosU.len() as u32).to_le_bytes());
        for element in &self.fCurrentPosU {
            element.write_fields(out, at);
        }
        for element in &self.fCurrentVelU {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.fUserETT {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.fTargetPosU {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.fTargetVelU {
            put(out, at, &element.to_le_bytes());
        }
        put(
            out,
            at,
            &(self.fRotationMatrixUser.len() as u32).to_le_bytes(),
        );
        for element in &self.fRotationMatrixUser {
            element.write_fields(out, at);
        }
        for element in &self.fActualAI {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.bActualSW {
            put(out, at, &[u8::from(*element)]);
        }
        for element in &self.bActualSI {
            put(out, at, &[u8::from(*element)]);
        }
        for element in &self.iActualAT {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.fTargetAO {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.iTargetAT {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.bActualES {
            put(out, at, &[u8::from(*element)]);
        }
        for element in &self.iActualED {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.bActualER {
            put(out, at, &[u8::from(*element)]);
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.robot_state = decoded;
        let size = read_count(bytes, at)?;
        if size > 256 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.robot_state_str = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.actual_mode = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.actual_space = decoded;
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.current_posj[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.current_velj[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.joint_abs[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.joint_err[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.target_posj[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.target_velj[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.current_posx[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.current_tool_posx[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.current_velx[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.task_err[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.target_velx[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.target_posx[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.dynamic_tor[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.actual_jts[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.actual_ejt[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.actual_ett[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
                value.actual_bk[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.actual_mc[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.actual_mt[i] = decoded;
            }
        }
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.solution_space = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.sync_time = decoded;
        {
            let count = 5usize;
            if count > 5 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
                value.actual_bt[i] = decoded;
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 6 {
                return Err(invalid());
            }
            value.rotation_matrix = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros1Std_msgsFloat64MultiArray::read_fields(bytes, at)?;
                value.rotation_matrix.push(decoded);
            }
        }
        {
            let count = 16usize;
            if count > 16 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
                value.ctrlbox_digital_input[i] = decoded;
            }
        }
        {
            let count = 16usize;
            if count > 16 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
                value.ctrlbox_digital_output[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
                value.flange_digital_input[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
                value.flange_digital_output[i] = decoded;
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 16 {
                return Err(invalid());
            }
            value.modbus_state = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros1Dsr_msgsModbusState::read_fields(bytes, at)?;
                value.modbus_state.push(decoded);
            }
        }
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.access_control = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.homming_completed = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.tp_initialized = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.mastering_need = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.drl_stopped = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.disconnected = decoded;
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.fActualW2B[i] = decoded;
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 6 {
                return Err(invalid());
            }
            value.fCurrentPosW = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros1Std_msgsFloat64MultiArray::read_fields(bytes, at)?;
                value.fCurrentPosW.push(decoded);
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.fCurrentVelW[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.fWorldETT[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.fTargetPosW[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.fTargetVelW[i] = decoded;
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 6 {
                return Err(invalid());
            }
            value.fRotationMatrixWorld = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros1Std_msgsFloat64MultiArray::read_fields(bytes, at)?;
                value.fRotationMatrixWorld.push(decoded);
            }
        }
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.iActualUCN = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.iParent = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 6 {
                return Err(invalid());
            }
            value.fCurrentPosU = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros1Std_msgsFloat64MultiArray::read_fields(bytes, at)?;
                value.fCurrentPosU.push(decoded);
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.fCurrentVelU[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.fUserETT[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.fTargetPosU[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.fTargetVelU[i] = decoded;
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 6 {
                return Err(invalid());
            }
            value.fRotationMatrixUser = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros1Std_msgsFloat64MultiArray::read_fields(bytes, at)?;
                value.fRotationMatrixUser.push(decoded);
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.fActualAI[i] = decoded;
            }
        }
        {
            let count = 3usize;
            if count > 3 {
                return Err(invalid());
            }
            for i in 0..count {
                let byte = take(bytes, at, 1)?[0];
                if byte > 1 {
                    return Err(invalid());
                }
                let decoded = byte != 0;
                value.bActualSW[i] = decoded;
            }
        }
        {
            let count = 2usize;
            if count > 2 {
                return Err(invalid());
            }
            for i in 0..count {
                let byte = take(bytes, at, 1)?[0];
                if byte > 1 {
                    return Err(invalid());
                }
                let decoded = byte != 0;
                value.bActualSI[i] = decoded;
            }
        }
        {
            let count = 2usize;
            if count > 2 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
                value.iActualAT[i] = decoded;
            }
        }
        {
            let count = 2usize;
            if count > 2 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.fTargetAO[i] = decoded;
            }
        }
        {
            let count = 2usize;
            if count > 2 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
                value.iTargetAT[i] = decoded;
            }
        }
        {
            let count = 2usize;
            if count > 2 {
                return Err(invalid());
            }
            for i in 0..count {
                let byte = take(bytes, at, 1)?[0];
                if byte > 1 {
                    return Err(invalid());
                }
                let decoded = byte != 0;
                value.bActualES[i] = decoded;
            }
        }
        {
            let count = 2usize;
            if count > 2 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
                value.iActualED[i] = decoded;
            }
        }
        {
            let count = 2usize;
            if count > 2 {
                return Err(invalid());
            }
            for i in 0..count {
                let byte = take(bytes, at, 1)?[0];
                if byte > 1 {
                    return Err(invalid());
                }
                let decoded = byte != 0;
                value.bActualER[i] = decoded;
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsRobotState {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 17004 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 1484 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 dsr_msgs/RobotStop.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsRobotStop {
    /// Declared stop_mode; canonical bounds are part of CODEC_IDENTITY.
    pub stop_mode: i32,
}
impl Default for Ros1Dsr_msgsRobotStop {
    fn default() -> Self {
        Self {
            stop_mode: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsRobotStop {
    pub const MAX_WIRE_BYTES: usize = 4;
    pub const CARTESIAN_WIRE_BYTES: u64 = 4;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_fd77182b171cc0c4eea28c26c78310584b38e47a3c7d987783648a9f230b6323";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
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
        put(out, at, &self.stop_mode.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.stop_mode = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsRobotStop {
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
/// Complete bounded value for ROS1 dsr_msgs/Robotiq2FCloseRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsRobotiq2FCloseRequest {}
impl Default for Ros1Dsr_msgsRobotiq2FCloseRequest {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Dsr_msgsRobotiq2FCloseRequest {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_208edddefb1fee08c3ba285600357951edca6b0328a14ea3cca56ec5b2c4d3b4";
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
impl Canonical for Ros1Dsr_msgsRobotiq2FCloseRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/Robotiq2FCloseResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsRobotiq2FCloseResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsRobotiq2FCloseResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsRobotiq2FCloseResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_21a215db4729d55b86ae1f56d932984a38c5c7093f09623a5a5cee1e5647a09d";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsRobotiq2FCloseResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/Robotiq2FMoveRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsRobotiq2FMoveRequest {
    /// Declared width; canonical bounds are part of CODEC_IDENTITY.
    pub width: f64,
}
impl Default for Ros1Dsr_msgsRobotiq2FMoveRequest {
    fn default() -> Self {
        Self {
            width: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsRobotiq2FMoveRequest {
    pub const MAX_WIRE_BYTES: usize = 8;
    pub const CARTESIAN_WIRE_BYTES: u64 = 8;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_81cbba3bf5cd634b8c30fe914123d67da1294352a6e1a70a5c8a58259a79d6a2";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if !self.width.is_finite() {
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
        put(out, at, &self.width.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.width = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsRobotiq2FMoveRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/Robotiq2FMoveResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsRobotiq2FMoveResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsRobotiq2FMoveResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsRobotiq2FMoveResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_90f90a7486c727afb08f0e09f76f0bfa7f5b0d057be653258b6bdf1e935e7183";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsRobotiq2FMoveResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/Robotiq2FOpenRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsRobotiq2FOpenRequest {}
impl Default for Ros1Dsr_msgsRobotiq2FOpenRequest {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Dsr_msgsRobotiq2FOpenRequest {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_64576393afca9ec6bd2e76eaf57324b5e625e62f5899d77762dc041dc1fbdda2";
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
impl Canonical for Ros1Dsr_msgsRobotiq2FOpenRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/Robotiq2FOpenResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsRobotiq2FOpenResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsRobotiq2FOpenResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsRobotiq2FOpenResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_83448b0daee950113e41814fe398efbb5624568e812f5989dd26cec24f24742a";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsRobotiq2FOpenResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/SerialSendDataRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsSerialSendDataRequest {
    /// Declared data; canonical bounds are part of CODEC_IDENTITY.
    pub data: String,
}
impl Default for Ros1Dsr_msgsSerialSendDataRequest {
    fn default() -> Self {
        Self {
            data: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsSerialSendDataRequest {
    pub const MAX_WIRE_BYTES: usize = 260;
    pub const CARTESIAN_WIRE_BYTES: u64 = 260;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_19253624f5870830126073f19daa4e4f42dcdd10c4d3154989aa619ce2749498";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.data.len() > 256 || self.data.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.data.len())?;
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
        put(out, at, &(self.data.len() as u32).to_le_bytes());
        put(out, at, self.data.as_bytes());
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
        value.data = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsSerialSendDataRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/SerialSendDataResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsSerialSendDataResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsSerialSendDataResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsSerialSendDataResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_0bb4f5a2bfcf02e9febe7846d2616c99141a8860f62d83b59ebb56da6c89dc43";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsSerialSendDataResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/ServoJRTStream.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsServoJRTStream {
    /// Declared pos; canonical bounds are part of CODEC_IDENTITY.
    pub pos: [f64; 6],
    /// Declared vel; canonical bounds are part of CODEC_IDENTITY.
    pub vel: [f64; 6],
    /// Declared acc; canonical bounds are part of CODEC_IDENTITY.
    pub acc: [f64; 6],
    /// Declared time; canonical bounds are part of CODEC_IDENTITY.
    pub time: f64,
}
impl Default for Ros1Dsr_msgsServoJRTStream {
    fn default() -> Self {
        Self {
            pos: core::array::from_fn(|_| Default::default()),
            vel: core::array::from_fn(|_| Default::default()),
            acc: core::array::from_fn(|_| Default::default()),
            time: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsServoJRTStream {
    pub const MAX_WIRE_BYTES: usize = 152;
    pub const CARTESIAN_WIRE_BYTES: u64 = 152;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_f401a85a9e6940e11cdc58f5f7390456553ff73bc298d0f9c089a1f5e9921677";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.pos {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.vel {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.acc {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if !self.time.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if n > 152 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        for element in &self.pos {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.vel {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.acc {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.time.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.pos[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.vel[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.acc[i] = decoded;
            }
        }
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.time = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsServoJRTStream {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 152 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 152 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 dsr_msgs/ServoJStream.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsServoJStream {
    /// Declared pos; canonical bounds are part of CODEC_IDENTITY.
    pub pos: [f64; 6],
    /// Declared vel; canonical bounds are part of CODEC_IDENTITY.
    pub vel: [f64; 6],
    /// Declared acc; canonical bounds are part of CODEC_IDENTITY.
    pub acc: [f64; 6],
    /// Declared time; canonical bounds are part of CODEC_IDENTITY.
    pub time: f64,
}
impl Default for Ros1Dsr_msgsServoJStream {
    fn default() -> Self {
        Self {
            pos: core::array::from_fn(|_| Default::default()),
            vel: core::array::from_fn(|_| Default::default()),
            acc: core::array::from_fn(|_| Default::default()),
            time: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsServoJStream {
    pub const MAX_WIRE_BYTES: usize = 152;
    pub const CARTESIAN_WIRE_BYTES: u64 = 152;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_2f7e730c7f7d0c29ffc15f345a9352822e94cc98e298235e57397ea46f90db8b";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.pos {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.vel {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.acc {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if !self.time.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if n > 152 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        for element in &self.pos {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.vel {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.acc {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.time.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.pos[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.vel[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.acc[i] = decoded;
            }
        }
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.time = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsServoJStream {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 152 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 152 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 dsr_msgs/ServoLRTStream.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsServoLRTStream {
    /// Declared pos; canonical bounds are part of CODEC_IDENTITY.
    pub pos: [f64; 6],
    /// Declared vel; canonical bounds are part of CODEC_IDENTITY.
    pub vel: [f64; 6],
    /// Declared acc; canonical bounds are part of CODEC_IDENTITY.
    pub acc: [f64; 6],
    /// Declared time; canonical bounds are part of CODEC_IDENTITY.
    pub time: f64,
}
impl Default for Ros1Dsr_msgsServoLRTStream {
    fn default() -> Self {
        Self {
            pos: core::array::from_fn(|_| Default::default()),
            vel: core::array::from_fn(|_| Default::default()),
            acc: core::array::from_fn(|_| Default::default()),
            time: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsServoLRTStream {
    pub const MAX_WIRE_BYTES: usize = 152;
    pub const CARTESIAN_WIRE_BYTES: u64 = 152;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_858f4172a6511013eabff068457b05ce5a0cfc507b86a5817d55a5d274763b4d";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.pos {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.vel {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.acc {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if !self.time.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if n > 152 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        for element in &self.pos {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.vel {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.acc {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.time.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.pos[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.vel[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.acc[i] = decoded;
            }
        }
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.time = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsServoLRTStream {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 152 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 152 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 dsr_msgs/ServoLStream.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsServoLStream {
    /// Declared pos; canonical bounds are part of CODEC_IDENTITY.
    pub pos: [f64; 6],
    /// Declared vel; canonical bounds are part of CODEC_IDENTITY.
    pub vel: [f64; 2],
    /// Declared acc; canonical bounds are part of CODEC_IDENTITY.
    pub acc: [f64; 2],
    /// Declared time; canonical bounds are part of CODEC_IDENTITY.
    pub time: f64,
}
impl Default for Ros1Dsr_msgsServoLStream {
    fn default() -> Self {
        Self {
            pos: core::array::from_fn(|_| Default::default()),
            vel: core::array::from_fn(|_| Default::default()),
            acc: core::array::from_fn(|_| Default::default()),
            time: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsServoLStream {
    pub const MAX_WIRE_BYTES: usize = 88;
    pub const CARTESIAN_WIRE_BYTES: u64 = 88;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_b6be06412820c88909f37961227679a9ccbc8176ad662efc7f41f35a797035e8";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.pos {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.vel {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.acc {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if !self.time.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if n > 88 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        for element in &self.pos {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.vel {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.acc {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.time.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.pos[i] = decoded;
            }
        }
        {
            let count = 2usize;
            if count > 2 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.vel[i] = decoded;
            }
        }
        {
            let count = 2usize;
            if count > 2 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.acc[i] = decoded;
            }
        }
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.time = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsServoLStream {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 88 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 88 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 dsr_msgs/SetAccJRTRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsSetAccJRTRequest {
    /// Declared acc; canonical bounds are part of CODEC_IDENTITY.
    pub acc: [f64; 6],
}
impl Default for Ros1Dsr_msgsSetAccJRTRequest {
    fn default() -> Self {
        Self {
            acc: core::array::from_fn(|_| Default::default()),
        }
    }
}
impl Ros1Dsr_msgsSetAccJRTRequest {
    pub const MAX_WIRE_BYTES: usize = 48;
    pub const CARTESIAN_WIRE_BYTES: u64 = 48;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_867345ecf0c7fa3e84375c009d3bd9d2ee2c52a011158215ddae3ff7de977d35";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.acc {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
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
        for element in &self.acc {
            put(out, at, &element.to_le_bytes());
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.acc[i] = decoded;
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsSetAccJRTRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/SetAccJRTResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsSetAccJRTResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsSetAccJRTResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsSetAccJRTResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_1bc5cb7aafef1ab3cfcde7fda9108670bc96f2298f3921ca832cab01b7670e00";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsSetAccJRTResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/SetAccXRTRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsSetAccXRTRequest {
    /// Declared trans; canonical bounds are part of CODEC_IDENTITY.
    pub trans: f64,
    /// Declared rotation; canonical bounds are part of CODEC_IDENTITY.
    pub rotation: f64,
}
impl Default for Ros1Dsr_msgsSetAccXRTRequest {
    fn default() -> Self {
        Self {
            trans: Default::default(),
            rotation: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsSetAccXRTRequest {
    pub const MAX_WIRE_BYTES: usize = 16;
    pub const CARTESIAN_WIRE_BYTES: u64 = 16;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_1fa5e2a32de2e4a212702aa6cb1cbfa7d451c51a0f6cb871fc337cd09b166cb6";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if !self.trans.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.rotation.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
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
        put(out, at, &self.trans.to_le_bytes());
        put(out, at, &self.rotation.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.trans = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.rotation = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsSetAccXRTRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/SetAccXRTResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsSetAccXRTResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsSetAccXRTResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsSetAccXRTResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_7a42293efa247633f5e72a20749342b0530795a4e963f3c47248c2e703ae7c65";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsSetAccXRTResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/SetCtrlBoxAnalogInputTypeRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest {
    /// Declared channel; canonical bounds are part of CODEC_IDENTITY.
    pub channel: i8,
    /// Declared mode; canonical bounds are part of CODEC_IDENTITY.
    pub mode: i8,
}
impl Default for Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest {
    fn default() -> Self {
        Self {
            channel: Default::default(),
            mode: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest {
    pub const MAX_WIRE_BYTES: usize = 2;
    pub const CARTESIAN_WIRE_BYTES: u64 = 2;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_934735469130eef5a4e4599d3033242f0dacf467b2d413d607f733bcdebb7f5b";
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
        put(out, at, &self.channel.to_le_bytes());
        put(out, at, &self.mode.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.channel = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.mode = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/SetCtrlBoxAnalogInputTypeResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_a1e73687962235470a5f55d1fa4abd910001dfae2b05aa7779fce0ad93137400";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/SetCtrlBoxAnalogOutputRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest {
    /// Declared channel; canonical bounds are part of CODEC_IDENTITY.
    pub channel: i8,
    /// Declared value; canonical bounds are part of CODEC_IDENTITY.
    pub value: f64,
}
impl Default for Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest {
    fn default() -> Self {
        Self {
            channel: Default::default(),
            value: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest {
    pub const MAX_WIRE_BYTES: usize = 9;
    pub const CARTESIAN_WIRE_BYTES: u64 = 9;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_1ea5fd673a691bc7a51cf3c65c9a3b30352539155e6d7007181990c9a227efb4";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if !self.value.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if n > 9 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.channel.to_le_bytes());
        put(out, at, &self.value.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.channel = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.value = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 9 {
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
/// Complete bounded value for ROS1 dsr_msgs/SetCtrlBoxAnalogOutputResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_f0df03f3603b7ec2c0ef5f1e5d126b718ad8ca432130e32184dc87497bf707a5";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/SetCtrlBoxAnalogOutputTypeRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest {
    /// Declared channel; canonical bounds are part of CODEC_IDENTITY.
    pub channel: i8,
    /// Declared mode; canonical bounds are part of CODEC_IDENTITY.
    pub mode: i8,
}
impl Default for Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest {
    fn default() -> Self {
        Self {
            channel: Default::default(),
            mode: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest {
    pub const MAX_WIRE_BYTES: usize = 2;
    pub const CARTESIAN_WIRE_BYTES: u64 = 2;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_71aaf5f279052ba620d9cd13fa1751f96629c19d60e4030086b51e316ceab14f";
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
        put(out, at, &self.channel.to_le_bytes());
        put(out, at, &self.mode.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.channel = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.mode = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/SetCtrlBoxAnalogOutputTypeResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_a175ae12517731f2c2e4de021b1921920bd543d9c81469876b50b51b62ad8cc2";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/SetCtrlBoxDigitalOutputRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest {
    /// Declared index; canonical bounds are part of CODEC_IDENTITY.
    pub index: i8,
    /// Declared value; canonical bounds are part of CODEC_IDENTITY.
    pub value: i8,
}
impl Default for Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest {
    fn default() -> Self {
        Self {
            index: Default::default(),
            value: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest {
    pub const MAX_WIRE_BYTES: usize = 2;
    pub const CARTESIAN_WIRE_BYTES: u64 = 2;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_82a2c083195f7adc4fd3104cb05039cf109e9779920e36b4d3966edb819f83db";
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
        put(out, at, &self.index.to_le_bytes());
        put(out, at, &self.value.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.index = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.value = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/SetCtrlBoxDigitalOutputResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_dc0411c903a4350c81130d3343615212c4e3a9c259f7b193bff92c95b7039657";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/SetCurrentTcpRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsSetCurrentTcpRequest {
    /// Declared name; canonical bounds are part of CODEC_IDENTITY.
    pub name: String,
}
impl Default for Ros1Dsr_msgsSetCurrentTcpRequest {
    fn default() -> Self {
        Self {
            name: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsSetCurrentTcpRequest {
    pub const MAX_WIRE_BYTES: usize = 260;
    pub const CARTESIAN_WIRE_BYTES: u64 = 260;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_6a403e6eb4e86aab4d76913e5dd679425f68c6e4c9b38c82af1eaa180dc65f00";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.name.len() > 256 || self.name.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.name.len())?;
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
        put(out, at, &(self.name.len() as u32).to_le_bytes());
        put(out, at, self.name.as_bytes());
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
        value.name = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsSetCurrentTcpRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/SetCurrentTcpResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsSetCurrentTcpResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsSetCurrentTcpResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsSetCurrentTcpResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_29c09f17453ac9fa413922b023f1a54ae253cecbbdea211202da551187bbf7ab";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsSetCurrentTcpResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/SetCurrentToolRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsSetCurrentToolRequest {
    /// Declared name; canonical bounds are part of CODEC_IDENTITY.
    pub name: String,
}
impl Default for Ros1Dsr_msgsSetCurrentToolRequest {
    fn default() -> Self {
        Self {
            name: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsSetCurrentToolRequest {
    pub const MAX_WIRE_BYTES: usize = 260;
    pub const CARTESIAN_WIRE_BYTES: u64 = 260;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_d5d71101193ff28fe86d6ba22de9922fda0c806bbd8cd5bfdb8ef3688f5bacb4";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.name.len() > 256 || self.name.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.name.len())?;
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
        put(out, at, &(self.name.len() as u32).to_le_bytes());
        put(out, at, self.name.as_bytes());
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
        value.name = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsSetCurrentToolRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/SetCurrentToolResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsSetCurrentToolResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsSetCurrentToolResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsSetCurrentToolResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_89937411059cec969c42c90bdb4c81fa15dc645b627d10d376dc5ded2c56e1de";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsSetCurrentToolResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/SetDesiredForceRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsSetDesiredForceRequest {
    /// Declared fd; canonical bounds are part of CODEC_IDENTITY.
    pub fd: [f64; 6],
    /// Declared dir; canonical bounds are part of CODEC_IDENTITY.
    pub dir: [i8; 6],
    /// Declared ref; canonical bounds are part of CODEC_IDENTITY.
    pub r#ref: i8,
    /// Declared time; canonical bounds are part of CODEC_IDENTITY.
    pub time: f64,
    /// Declared mod; canonical bounds are part of CODEC_IDENTITY.
    pub r#mod: i8,
}
impl Default for Ros1Dsr_msgsSetDesiredForceRequest {
    fn default() -> Self {
        Self {
            fd: core::array::from_fn(|_| Default::default()),
            dir: core::array::from_fn(|_| Default::default()),
            r#ref: Default::default(),
            time: Default::default(),
            r#mod: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsSetDesiredForceRequest {
    pub const MAX_WIRE_BYTES: usize = 64;
    pub const CARTESIAN_WIRE_BYTES: u64 = 64;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_1020073d308553e7eb01e3fdd76a8a29cd169131d95516ae8c07a54b29f01b1a";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.fd {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.dir {
            n = add_size(n, 1)?;
        }
        n = add_size(n, 1)?;
        if !self.time.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        n = add_size(n, 1)?;
        if n > 64 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        for element in &self.fd {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.dir {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.r#ref.to_le_bytes());
        put(out, at, &self.time.to_le_bytes());
        put(out, at, &self.r#mod.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.fd[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
                value.dir[i] = decoded;
            }
        }
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.r#ref = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.time = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.r#mod = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsSetDesiredForceRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 64 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 64 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 dsr_msgs/SetDesiredForceResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsSetDesiredForceResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsSetDesiredForceResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsSetDesiredForceResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_fb07701ce7c215300e155c1d46e345f6467fe43bba3fc71bed94943459ce1928";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsSetDesiredForceResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/SetModbusOutputRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsSetModbusOutputRequest {
    /// Declared name; canonical bounds are part of CODEC_IDENTITY.
    pub name: String,
    /// Declared value; canonical bounds are part of CODEC_IDENTITY.
    pub value: i32,
}
impl Default for Ros1Dsr_msgsSetModbusOutputRequest {
    fn default() -> Self {
        Self {
            name: Default::default(),
            value: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsSetModbusOutputRequest {
    pub const MAX_WIRE_BYTES: usize = 264;
    pub const CARTESIAN_WIRE_BYTES: u64 = 264;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_3482041cfb90233b59433f4749d9e8f422fc73cdb26525bdbc60370e73c7827f";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.name.len() > 256 || self.name.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.name.len())?;
        n = add_size(n, 4)?;
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
        put(out, at, &(self.name.len() as u32).to_le_bytes());
        put(out, at, self.name.as_bytes());
        put(out, at, &self.value.to_le_bytes());
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
        value.name = decoded;
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.value = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsSetModbusOutputRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/SetModbusOutputResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsSetModbusOutputResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsSetModbusOutputResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsSetModbusOutputResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_763789f569991b2ba44844586d51b20f2c439e9b22ace4bc72b1bce7b23e0491";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsSetModbusOutputResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/SetRTControlInputRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsSetRTControlInputRequest {
    /// Declared version; canonical bounds are part of CODEC_IDENTITY.
    pub version: String,
    /// Declared period; canonical bounds are part of CODEC_IDENTITY.
    pub period: f64,
    /// Declared loss; canonical bounds are part of CODEC_IDENTITY.
    pub loss: i32,
}
impl Default for Ros1Dsr_msgsSetRTControlInputRequest {
    fn default() -> Self {
        Self {
            version: Default::default(),
            period: Default::default(),
            loss: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsSetRTControlInputRequest {
    pub const MAX_WIRE_BYTES: usize = 272;
    pub const CARTESIAN_WIRE_BYTES: u64 = 272;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_83562a6a3191e48ab47af1e2d35775048bf146a8175985b356a416882e5374cd";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.version.len() > 256 || self.version.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.version.len())?;
        if !self.period.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        n = add_size(n, 4)?;
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
        put(out, at, &(self.version.len() as u32).to_le_bytes());
        put(out, at, self.version.as_bytes());
        put(out, at, &self.period.to_le_bytes());
        put(out, at, &self.loss.to_le_bytes());
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
        value.version = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.period = decoded;
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.loss = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsSetRTControlInputRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/SetRTControlInputResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsSetRTControlInputResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsSetRTControlInputResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsSetRTControlInputResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_8fef3733c6f17fcbc1e0eaa2633321d63b78d63d0156802417e87c8a5330008f";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsSetRTControlInputResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/SetRTControlOutputRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsSetRTControlOutputRequest {
    /// Declared version; canonical bounds are part of CODEC_IDENTITY.
    pub version: String,
    /// Declared period; canonical bounds are part of CODEC_IDENTITY.
    pub period: f64,
    /// Declared loss; canonical bounds are part of CODEC_IDENTITY.
    pub loss: i32,
}
impl Default for Ros1Dsr_msgsSetRTControlOutputRequest {
    fn default() -> Self {
        Self {
            version: Default::default(),
            period: Default::default(),
            loss: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsSetRTControlOutputRequest {
    pub const MAX_WIRE_BYTES: usize = 272;
    pub const CARTESIAN_WIRE_BYTES: u64 = 272;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_83976c84f752fbfb1bf6e84a3816ab069e5d4f454dac4a602753f9d2049050c6";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.version.len() > 256 || self.version.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.version.len())?;
        if !self.period.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        n = add_size(n, 4)?;
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
        put(out, at, &(self.version.len() as u32).to_le_bytes());
        put(out, at, self.version.as_bytes());
        put(out, at, &self.period.to_le_bytes());
        put(out, at, &self.loss.to_le_bytes());
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
        value.version = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.period = decoded;
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.loss = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsSetRTControlOutputRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/SetRTControlOutputResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsSetRTControlOutputResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsSetRTControlOutputResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsSetRTControlOutputResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_ac2888098d0b18d9188b116877ade53eb4481ca4e5a7c20bff64511bd5ad9ba9";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsSetRTControlOutputResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/SetRefCoordRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsSetRefCoordRequest {
    /// Declared coord; canonical bounds are part of CODEC_IDENTITY.
    pub coord: i8,
}
impl Default for Ros1Dsr_msgsSetRefCoordRequest {
    fn default() -> Self {
        Self {
            coord: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsSetRefCoordRequest {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_269accc3ced8dd5c86b93c8a412301e47f0084be7f5294d19866868eb5858144";
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
        put(out, at, &self.coord.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.coord = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsSetRefCoordRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/SetRefCoordResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsSetRefCoordResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsSetRefCoordResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsSetRefCoordResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_d33d88ff3985821ce2b9773f2d80ebf3394d89647e760dea55b9303c9e3b3562";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsSetRefCoordResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/SetRobotControlRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsSetRobotControlRequest {
    /// Declared robot_control; canonical bounds are part of CODEC_IDENTITY.
    pub robot_control: i8,
}
impl Default for Ros1Dsr_msgsSetRobotControlRequest {
    fn default() -> Self {
        Self {
            robot_control: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsSetRobotControlRequest {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_d84763896b47427acc4d2c4cd75972c2c4f07c2f87dd1df781c8d7ef9e43c919";
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
        put(out, at, &self.robot_control.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.robot_control = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsSetRobotControlRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/SetRobotControlResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsSetRobotControlResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsSetRobotControlResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsSetRobotControlResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_6f6a9dd616a340ad9a733b3f19c61a07b3101fc519f26f9c7d6e80af868663ee";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsSetRobotControlResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/SetRobotModeRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsSetRobotModeRequest {
    /// Declared robot_mode; canonical bounds are part of CODEC_IDENTITY.
    pub robot_mode: i8,
}
impl Default for Ros1Dsr_msgsSetRobotModeRequest {
    fn default() -> Self {
        Self {
            robot_mode: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsSetRobotModeRequest {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_295575a2df0f007254f9aa7eac220e99fcae85ecb085181d5a3ca4e4e86f23fe";
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
        put(out, at, &self.robot_mode.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.robot_mode = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsSetRobotModeRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/SetRobotModeResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsSetRobotModeResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsSetRobotModeResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsSetRobotModeResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_bbf3bda8cd2e9afbda89023639013686ecd7612a9323a6d4180b8ac092caaad1";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsSetRobotModeResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/SetRobotSpeedModeRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsSetRobotSpeedModeRequest {
    /// Declared speed_mode; canonical bounds are part of CODEC_IDENTITY.
    pub speed_mode: i8,
}
impl Default for Ros1Dsr_msgsSetRobotSpeedModeRequest {
    fn default() -> Self {
        Self {
            speed_mode: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsSetRobotSpeedModeRequest {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_68f9a7f019ddfa1015de6c7e3115d632eb44ec794f364e6a0617fed34f70531c";
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
        put(out, at, &self.speed_mode.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.speed_mode = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsSetRobotSpeedModeRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/SetRobotSpeedModeResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsSetRobotSpeedModeResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsSetRobotSpeedModeResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsSetRobotSpeedModeResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_6434538e8bf60b1b900aba530ed3e027eb13d854591eab5e0e93cc407e90c94b";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsSetRobotSpeedModeResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/SetRobotSystemRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsSetRobotSystemRequest {
    /// Declared robot_system; canonical bounds are part of CODEC_IDENTITY.
    pub robot_system: i8,
}
impl Default for Ros1Dsr_msgsSetRobotSystemRequest {
    fn default() -> Self {
        Self {
            robot_system: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsSetRobotSystemRequest {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_75ffa8e1e77ea59a3b7a27151404682cfdef7226d32d3b78b6d67e562536eeee";
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
        put(out, at, &self.robot_system.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.robot_system = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsSetRobotSystemRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/SetRobotSystemResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsSetRobotSystemResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsSetRobotSystemResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsSetRobotSystemResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_38f3915ccf71872a966f2f511e73782a79df1923c76e6134ea8d72f0b96f6c27";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsSetRobotSystemResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/SetSafeStopResetTypeRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsSetSafeStopResetTypeRequest {
    /// Declared reset_type; canonical bounds are part of CODEC_IDENTITY.
    pub reset_type: i8,
}
impl Default for Ros1Dsr_msgsSetSafeStopResetTypeRequest {
    fn default() -> Self {
        Self {
            reset_type: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsSetSafeStopResetTypeRequest {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_8a9961395d960217a4f867ee0d2994ea40afe83c4a33a7dcc5b348a85a7fff42";
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
        put(out, at, &self.reset_type.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.reset_type = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsSetSafeStopResetTypeRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/SetSafeStopResetTypeResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsSetSafeStopResetTypeResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsSetSafeStopResetTypeResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsSetSafeStopResetTypeResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_2227553731ecf10a55eda31cd8735f90bd4539777661e3723f712a7a456cd4db";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsSetSafeStopResetTypeResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/SetSingularityHandlingRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsSetSingularityHandlingRequest {
    /// Declared mode; canonical bounds are part of CODEC_IDENTITY.
    pub mode: i8,
}
impl Default for Ros1Dsr_msgsSetSingularityHandlingRequest {
    fn default() -> Self {
        Self {
            mode: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsSetSingularityHandlingRequest {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_44dd4695620a3cf3f95504b73ad6978c9073ab3703f73f4a6449c7763f31cb7b";
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
impl Canonical for Ros1Dsr_msgsSetSingularityHandlingRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/SetSingularityHandlingResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsSetSingularityHandlingResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsSetSingularityHandlingResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsSetSingularityHandlingResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_a022bf9d809ac39a4dfe0487fdbc83f3b4ef81f179a6b3dd7d8fb1854aba1aa2";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsSetSingularityHandlingResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/SetStiffnessxRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsSetStiffnessxRequest {
    /// Declared stx; canonical bounds are part of CODEC_IDENTITY.
    pub stx: [f64; 6],
    /// Declared ref; canonical bounds are part of CODEC_IDENTITY.
    pub r#ref: i8,
    /// Declared time; canonical bounds are part of CODEC_IDENTITY.
    pub time: f64,
}
impl Default for Ros1Dsr_msgsSetStiffnessxRequest {
    fn default() -> Self {
        Self {
            stx: core::array::from_fn(|_| Default::default()),
            r#ref: Default::default(),
            time: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsSetStiffnessxRequest {
    pub const MAX_WIRE_BYTES: usize = 57;
    pub const CARTESIAN_WIRE_BYTES: u64 = 57;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_7cf0721d0f9cd45422a4277a63834f75572ead2833ca4100752d51abc2b4e3d3";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.stx {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        n = add_size(n, 1)?;
        if !self.time.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if n > 57 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        for element in &self.stx {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.r#ref.to_le_bytes());
        put(out, at, &self.time.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.stx[i] = decoded;
            }
        }
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.r#ref = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.time = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsSetStiffnessxRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 57 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 57 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 dsr_msgs/SetStiffnessxResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsSetStiffnessxResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsSetStiffnessxResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsSetStiffnessxResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_41ae59cb41184a6c167db14ac58ef80966c500fb31417b21900e42d1cb9a4549";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsSetStiffnessxResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/SetToolDigitalOutputRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsSetToolDigitalOutputRequest {
    /// Declared index; canonical bounds are part of CODEC_IDENTITY.
    pub index: i8,
    /// Declared value; canonical bounds are part of CODEC_IDENTITY.
    pub value: i8,
}
impl Default for Ros1Dsr_msgsSetToolDigitalOutputRequest {
    fn default() -> Self {
        Self {
            index: Default::default(),
            value: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsSetToolDigitalOutputRequest {
    pub const MAX_WIRE_BYTES: usize = 2;
    pub const CARTESIAN_WIRE_BYTES: u64 = 2;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_6b384924cefbae3dfe50e02b8fb26ed9e228d2ada5c63070feb0375c125a2123";
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
        put(out, at, &self.index.to_le_bytes());
        put(out, at, &self.value.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.index = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.value = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsSetToolDigitalOutputRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/SetToolDigitalOutputResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsSetToolDigitalOutputResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsSetToolDigitalOutputResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsSetToolDigitalOutputResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_4e0acd035740d1e47b42128818528aa3aa33736d979f46ada511ad0e6230ae94";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsSetToolDigitalOutputResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/SetToolShapeRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsSetToolShapeRequest {
    /// Declared name; canonical bounds are part of CODEC_IDENTITY.
    pub name: String,
}
impl Default for Ros1Dsr_msgsSetToolShapeRequest {
    fn default() -> Self {
        Self {
            name: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsSetToolShapeRequest {
    pub const MAX_WIRE_BYTES: usize = 260;
    pub const CARTESIAN_WIRE_BYTES: u64 = 260;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_1eb4f1d4e9fea4e9f5324fc50acd744365940912055fbc359ecc4748b1ddeeea";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.name.len() > 256 || self.name.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.name.len())?;
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
        put(out, at, &(self.name.len() as u32).to_le_bytes());
        put(out, at, self.name.as_bytes());
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
        value.name = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsSetToolShapeRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/SetToolShapeResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsSetToolShapeResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsSetToolShapeResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsSetToolShapeResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_7d18f475fd4230c7f15ddc10401373d296cfaef1d525a26e983cda4c8b2b5e70";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsSetToolShapeResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/SetUserCartCoord1Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsSetUserCartCoord1Request {
    /// Declared pos; canonical bounds are part of CODEC_IDENTITY.
    pub pos: [f64; 6],
    /// Declared ref; canonical bounds are part of CODEC_IDENTITY.
    pub r#ref: i8,
}
impl Default for Ros1Dsr_msgsSetUserCartCoord1Request {
    fn default() -> Self {
        Self {
            pos: core::array::from_fn(|_| Default::default()),
            r#ref: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsSetUserCartCoord1Request {
    pub const MAX_WIRE_BYTES: usize = 49;
    pub const CARTESIAN_WIRE_BYTES: u64 = 49;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_f54a10c9fd4687670111ba2b3d0a6bceea638fc71da62d59b81a01c59dd457b3";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.pos {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        n = add_size(n, 1)?;
        if n > 49 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        for element in &self.pos {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.r#ref.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.pos[i] = decoded;
            }
        }
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.r#ref = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsSetUserCartCoord1Request {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 49 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 49 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 dsr_msgs/SetUserCartCoord1Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsSetUserCartCoord1Response {
    /// Declared id; canonical bounds are part of CODEC_IDENTITY.
    pub id: i8,
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsSetUserCartCoord1Response {
    fn default() -> Self {
        Self {
            id: Default::default(),
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsSetUserCartCoord1Response {
    pub const MAX_WIRE_BYTES: usize = 2;
    pub const CARTESIAN_WIRE_BYTES: u64 = 2;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_c8749fa152e4396e977e110a901dfc791a26b54d1f282752039a20c0c4531f53";
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
        put(out, at, &self.id.to_le_bytes());
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.id = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsSetUserCartCoord1Response {
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
/// Complete bounded value for ROS1 dsr_msgs/SetUserCartCoord2Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsSetUserCartCoord2Request {
    /// Declared x1; canonical bounds are part of CODEC_IDENTITY.
    pub x1: [f64; 6],
    /// Declared x2; canonical bounds are part of CODEC_IDENTITY.
    pub x2: [f64; 6],
    /// Declared x3; canonical bounds are part of CODEC_IDENTITY.
    pub x3: [f64; 6],
    /// Declared pos; canonical bounds are part of CODEC_IDENTITY.
    pub pos: [f64; 6],
    /// Declared ref; canonical bounds are part of CODEC_IDENTITY.
    pub r#ref: i8,
}
impl Default for Ros1Dsr_msgsSetUserCartCoord2Request {
    fn default() -> Self {
        Self {
            x1: core::array::from_fn(|_| Default::default()),
            x2: core::array::from_fn(|_| Default::default()),
            x3: core::array::from_fn(|_| Default::default()),
            pos: core::array::from_fn(|_| Default::default()),
            r#ref: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsSetUserCartCoord2Request {
    pub const MAX_WIRE_BYTES: usize = 193;
    pub const CARTESIAN_WIRE_BYTES: u64 = 193;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_581a8164d6593be7422364300fabd854bc3b438726a3182cd388be5c629dc235";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.x1 {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.x2 {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.x3 {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.pos {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        n = add_size(n, 1)?;
        if n > 193 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        for element in &self.x1 {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.x2 {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.x3 {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.pos {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.r#ref.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.x1[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.x2[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.x3[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.pos[i] = decoded;
            }
        }
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.r#ref = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsSetUserCartCoord2Request {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 193 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 193 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 dsr_msgs/SetUserCartCoord2Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsSetUserCartCoord2Response {
    /// Declared id; canonical bounds are part of CODEC_IDENTITY.
    pub id: i8,
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsSetUserCartCoord2Response {
    fn default() -> Self {
        Self {
            id: Default::default(),
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsSetUserCartCoord2Response {
    pub const MAX_WIRE_BYTES: usize = 2;
    pub const CARTESIAN_WIRE_BYTES: u64 = 2;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_01ce185d3b4585bfdb9187c7b3cf628874da91fdd8c289a5b72d7bcb0e84880d";
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
        put(out, at, &self.id.to_le_bytes());
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.id = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsSetUserCartCoord2Response {
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
/// Complete bounded value for ROS1 dsr_msgs/SetUserCartCoord3Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsSetUserCartCoord3Request {
    /// Declared u1; canonical bounds are part of CODEC_IDENTITY.
    pub u1: [f64; 3],
    /// Declared v1; canonical bounds are part of CODEC_IDENTITY.
    pub v1: [f64; 3],
    /// Declared pos; canonical bounds are part of CODEC_IDENTITY.
    pub pos: [f64; 6],
    /// Declared ref; canonical bounds are part of CODEC_IDENTITY.
    pub r#ref: i8,
}
impl Default for Ros1Dsr_msgsSetUserCartCoord3Request {
    fn default() -> Self {
        Self {
            u1: core::array::from_fn(|_| Default::default()),
            v1: core::array::from_fn(|_| Default::default()),
            pos: core::array::from_fn(|_| Default::default()),
            r#ref: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsSetUserCartCoord3Request {
    pub const MAX_WIRE_BYTES: usize = 97;
    pub const CARTESIAN_WIRE_BYTES: u64 = 97;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_a8a9aa12ff690f1a26223248b0c84537b7fe23ffa0af33be0ef0c99092f78c3c";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.u1 {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.v1 {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.pos {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        n = add_size(n, 1)?;
        if n > 97 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        for element in &self.u1 {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.v1 {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.pos {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.r#ref.to_le_bytes());
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
                value.u1[i] = decoded;
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
                value.v1[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.pos[i] = decoded;
            }
        }
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.r#ref = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsSetUserCartCoord3Request {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 97 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 97 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 dsr_msgs/SetUserCartCoord3Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsSetUserCartCoord3Response {
    /// Declared id; canonical bounds are part of CODEC_IDENTITY.
    pub id: i8,
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsSetUserCartCoord3Response {
    fn default() -> Self {
        Self {
            id: Default::default(),
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsSetUserCartCoord3Response {
    pub const MAX_WIRE_BYTES: usize = 2;
    pub const CARTESIAN_WIRE_BYTES: u64 = 2;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_9409ea43f5b28fc6aa7c1089c69e828edda3440a50e1c35b5f8b8ca600d11fd1";
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
        put(out, at, &self.id.to_le_bytes());
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.id = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsSetUserCartCoord3Response {
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
/// Complete bounded value for ROS1 dsr_msgs/SetVelJRTRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsSetVelJRTRequest {
    /// Declared vel; canonical bounds are part of CODEC_IDENTITY.
    pub vel: [f64; 6],
}
impl Default for Ros1Dsr_msgsSetVelJRTRequest {
    fn default() -> Self {
        Self {
            vel: core::array::from_fn(|_| Default::default()),
        }
    }
}
impl Ros1Dsr_msgsSetVelJRTRequest {
    pub const MAX_WIRE_BYTES: usize = 48;
    pub const CARTESIAN_WIRE_BYTES: u64 = 48;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_bde411c75906468cfbbd4a3da157be4c66755a4e2c73e5db0c87eb5414a40768";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.vel {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
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
        for element in &self.vel {
            put(out, at, &element.to_le_bytes());
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.vel[i] = decoded;
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsSetVelJRTRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/SetVelJRTResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsSetVelJRTResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsSetVelJRTResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsSetVelJRTResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_2e671f1ce71584ee764eb88431dc883a1759312126cc722e6abb91718eb4cd3f";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsSetVelJRTResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/SetVelXRTRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsSetVelXRTRequest {
    /// Declared trans; canonical bounds are part of CODEC_IDENTITY.
    pub trans: f64,
    /// Declared rotation; canonical bounds are part of CODEC_IDENTITY.
    pub rotation: f64,
}
impl Default for Ros1Dsr_msgsSetVelXRTRequest {
    fn default() -> Self {
        Self {
            trans: Default::default(),
            rotation: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsSetVelXRTRequest {
    pub const MAX_WIRE_BYTES: usize = 16;
    pub const CARTESIAN_WIRE_BYTES: u64 = 16;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_62043248325fe8c561c26c914c702a17469c3e020542760f40dab518190a29e8";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if !self.trans.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.rotation.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
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
        put(out, at, &self.trans.to_le_bytes());
        put(out, at, &self.rotation.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.trans = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.rotation = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsSetVelXRTRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/SetVelXRTResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsSetVelXRTResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsSetVelXRTResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsSetVelXRTResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_88fa186a19c4591d69e31ae18a8121fa28beec749c78c6c3ad92885d95947119";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsSetVelXRTResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/SpeedJRTStream.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsSpeedJRTStream {
    /// Declared vel; canonical bounds are part of CODEC_IDENTITY.
    pub vel: [f64; 6],
    /// Declared acc; canonical bounds are part of CODEC_IDENTITY.
    pub acc: [f64; 6],
    /// Declared time; canonical bounds are part of CODEC_IDENTITY.
    pub time: f64,
}
impl Default for Ros1Dsr_msgsSpeedJRTStream {
    fn default() -> Self {
        Self {
            vel: core::array::from_fn(|_| Default::default()),
            acc: core::array::from_fn(|_| Default::default()),
            time: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsSpeedJRTStream {
    pub const MAX_WIRE_BYTES: usize = 104;
    pub const CARTESIAN_WIRE_BYTES: u64 = 104;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_c99c5b844f12da3d0a2b4d1f44e88dbedc66be70a4576def8bb59593d4c3a780";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.vel {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.acc {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if !self.time.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if n > 104 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        for element in &self.vel {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.acc {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.time.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.vel[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.acc[i] = decoded;
            }
        }
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.time = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsSpeedJRTStream {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 104 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 104 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 dsr_msgs/SpeedJStream.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsSpeedJStream {
    /// Declared vel; canonical bounds are part of CODEC_IDENTITY.
    pub vel: [f64; 6],
    /// Declared acc; canonical bounds are part of CODEC_IDENTITY.
    pub acc: [f64; 6],
    /// Declared time; canonical bounds are part of CODEC_IDENTITY.
    pub time: f64,
}
impl Default for Ros1Dsr_msgsSpeedJStream {
    fn default() -> Self {
        Self {
            vel: core::array::from_fn(|_| Default::default()),
            acc: core::array::from_fn(|_| Default::default()),
            time: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsSpeedJStream {
    pub const MAX_WIRE_BYTES: usize = 104;
    pub const CARTESIAN_WIRE_BYTES: u64 = 104;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_7042ec2c204507e699747702d4e22a4eb704b9ca077ec270311196f779d2532f";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.vel {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.acc {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if !self.time.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if n > 104 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        for element in &self.vel {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.acc {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.time.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.vel[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.acc[i] = decoded;
            }
        }
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.time = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsSpeedJStream {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 104 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 104 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 dsr_msgs/SpeedLRTStream.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsSpeedLRTStream {
    /// Declared vel; canonical bounds are part of CODEC_IDENTITY.
    pub vel: [f64; 6],
    /// Declared acc; canonical bounds are part of CODEC_IDENTITY.
    pub acc: [f64; 6],
    /// Declared time; canonical bounds are part of CODEC_IDENTITY.
    pub time: f64,
}
impl Default for Ros1Dsr_msgsSpeedLRTStream {
    fn default() -> Self {
        Self {
            vel: core::array::from_fn(|_| Default::default()),
            acc: core::array::from_fn(|_| Default::default()),
            time: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsSpeedLRTStream {
    pub const MAX_WIRE_BYTES: usize = 104;
    pub const CARTESIAN_WIRE_BYTES: u64 = 104;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_2f95bdb3b90ca295355faa1667221774ba1932dd50fa9e87d05cc16168a664cc";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.vel {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.acc {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if !self.time.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if n > 104 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        for element in &self.vel {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.acc {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.time.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.vel[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.acc[i] = decoded;
            }
        }
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.time = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsSpeedLRTStream {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 104 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 104 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 dsr_msgs/SpeedLStream.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsSpeedLStream {
    /// Declared vel; canonical bounds are part of CODEC_IDENTITY.
    pub vel: [f64; 6],
    /// Declared acc; canonical bounds are part of CODEC_IDENTITY.
    pub acc: [f64; 2],
    /// Declared time; canonical bounds are part of CODEC_IDENTITY.
    pub time: f64,
}
impl Default for Ros1Dsr_msgsSpeedLStream {
    fn default() -> Self {
        Self {
            vel: core::array::from_fn(|_| Default::default()),
            acc: core::array::from_fn(|_| Default::default()),
            time: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsSpeedLStream {
    pub const MAX_WIRE_BYTES: usize = 72;
    pub const CARTESIAN_WIRE_BYTES: u64 = 72;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_9f6f75583bddd6dc3e6bb3b79fbe66db3a1076c58a48e887ebcf88e8587058eb";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.vel {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.acc {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if !self.time.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if n > 72 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        for element in &self.vel {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.acc {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.time.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.vel[i] = decoded;
            }
        }
        {
            let count = 2usize;
            if count > 2 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.acc[i] = decoded;
            }
        }
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.time = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsSpeedLStream {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 72 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 72 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 dsr_msgs/StartRTControlRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsStartRTControlRequest {}
impl Default for Ros1Dsr_msgsStartRTControlRequest {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Dsr_msgsStartRTControlRequest {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_37b1255c34ebbba47ef2cca802168237a90aa2b52032fea64efa4517332a85ac";
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
impl Canonical for Ros1Dsr_msgsStartRTControlRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/StartRTControlResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsStartRTControlResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsStartRTControlResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsStartRTControlResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_0f2be11b260cd9286c55ac65dc7f675701ba130eb2d81c2c8fba592c605216de";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsStartRTControlResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/StopRTControlRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsStopRTControlRequest {}
impl Default for Ros1Dsr_msgsStopRTControlRequest {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Dsr_msgsStopRTControlRequest {
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_1163e97603c5de79aed634642587128d6ca9d0a64d5eef1e73502c4479e1c6ce";
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
impl Canonical for Ros1Dsr_msgsStopRTControlRequest {
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
/// Complete bounded value for ROS1 dsr_msgs/StopRTControlResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsStopRTControlResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsStopRTControlResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsStopRTControlResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_49ed2b792c0872d3fce723e09b2bb01fad52370f7674f438d2c0fc99422ffe62";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsStopRTControlResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/TaskComplianceCtrlRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsTaskComplianceCtrlRequest {
    /// Declared stx; canonical bounds are part of CODEC_IDENTITY.
    pub stx: [f64; 6],
    /// Declared ref; canonical bounds are part of CODEC_IDENTITY.
    pub r#ref: i8,
    /// Declared time; canonical bounds are part of CODEC_IDENTITY.
    pub time: f64,
}
impl Default for Ros1Dsr_msgsTaskComplianceCtrlRequest {
    fn default() -> Self {
        Self {
            stx: core::array::from_fn(|_| Default::default()),
            r#ref: Default::default(),
            time: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsTaskComplianceCtrlRequest {
    pub const MAX_WIRE_BYTES: usize = 57;
    pub const CARTESIAN_WIRE_BYTES: u64 = 57;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_05fa479a787001504e982b77fd61e6a3e6bb2a7cbc34ff900fa12634d8842671";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.stx {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        n = add_size(n, 1)?;
        if !self.time.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if n > 57 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        for element in &self.stx {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.r#ref.to_le_bytes());
        put(out, at, &self.time.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.stx[i] = decoded;
            }
        }
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.r#ref = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.time = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsTaskComplianceCtrlRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 57 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 57 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 dsr_msgs/TaskComplianceCtrlResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsTaskComplianceCtrlResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsTaskComplianceCtrlResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsTaskComplianceCtrlResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_29c513521ec8c6ac5c39bf1cb12d8db19a025a2036fb0398633b544d53c39625";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsTaskComplianceCtrlResponse {
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
/// Complete bounded value for ROS1 dsr_msgs/TorqueRTStream.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsTorqueRTStream {
    /// Declared tor; canonical bounds are part of CODEC_IDENTITY.
    pub tor: [f64; 6],
    /// Declared time; canonical bounds are part of CODEC_IDENTITY.
    pub time: f64,
}
impl Default for Ros1Dsr_msgsTorqueRTStream {
    fn default() -> Self {
        Self {
            tor: core::array::from_fn(|_| Default::default()),
            time: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsTorqueRTStream {
    pub const MAX_WIRE_BYTES: usize = 56;
    pub const CARTESIAN_WIRE_BYTES: u64 = 56;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_6c6f5462dec4f5990ef5cd6d64ffde89f092d590498dc97cf347caa06635d545";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.tor {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if !self.time.is_finite() {
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
        for element in &self.tor {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.time.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.tor[i] = decoded;
            }
        }
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.time = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsTorqueRTStream {
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
/// Complete bounded value for ROS1 dsr_msgs/TransRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsTransRequest {
    /// Declared pos; canonical bounds are part of CODEC_IDENTITY.
    pub pos: [f64; 6],
    /// Declared delta; canonical bounds are part of CODEC_IDENTITY.
    pub delta: [f64; 6],
    /// Declared ref; canonical bounds are part of CODEC_IDENTITY.
    pub r#ref: i8,
    /// Declared ref_out; canonical bounds are part of CODEC_IDENTITY.
    pub ref_out: i8,
}
impl Default for Ros1Dsr_msgsTransRequest {
    fn default() -> Self {
        Self {
            pos: core::array::from_fn(|_| Default::default()),
            delta: core::array::from_fn(|_| Default::default()),
            r#ref: Default::default(),
            ref_out: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsTransRequest {
    pub const MAX_WIRE_BYTES: usize = 98;
    pub const CARTESIAN_WIRE_BYTES: u64 = 98;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_6724ac7a62b77d6d6e52145306c4ac5a0e05221a636fb5cd0048e185ddcee273";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.pos {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.delta {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        if n > 98 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        for element in &self.pos {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.delta {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.r#ref.to_le_bytes());
        put(out, at, &self.ref_out.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.pos[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.delta[i] = decoded;
            }
        }
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.r#ref = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.ref_out = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsTransRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 98 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 98 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 dsr_msgs/TransResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsTransResponse {
    /// Declared trans_pos; canonical bounds are part of CODEC_IDENTITY.
    pub trans_pos: [f64; 6],
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsTransResponse {
    fn default() -> Self {
        Self {
            trans_pos: core::array::from_fn(|_| Default::default()),
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsTransResponse {
    pub const MAX_WIRE_BYTES: usize = 49;
    pub const CARTESIAN_WIRE_BYTES: u64 = 49;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_a36593de3d68fc991b3cf230f98c28f1f1d9fa0fc72e3160a5f005d9cb6105e5";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.trans_pos {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        n = add_size(n, 1)?;
        if n > 49 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        for element in &self.trans_pos {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.trans_pos[i] = decoded;
            }
        }
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsTransResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 49 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 49 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 dsr_msgs/WriteDataRTRequest.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsWriteDataRTRequest {
    /// Declared external_force_torque; canonical bounds are part of CODEC_IDENTITY.
    pub external_force_torque: [f64; 6],
    /// Declared external_digital_input; canonical bounds are part of CODEC_IDENTITY.
    pub external_digital_input: i32,
    /// Declared external_digital_output; canonical bounds are part of CODEC_IDENTITY.
    pub external_digital_output: i32,
    /// Declared external_analog_input; canonical bounds are part of CODEC_IDENTITY.
    pub external_analog_input: [f64; 6],
    /// Declared external_analog_output; canonical bounds are part of CODEC_IDENTITY.
    pub external_analog_output: [f64; 6],
}
impl Default for Ros1Dsr_msgsWriteDataRTRequest {
    fn default() -> Self {
        Self {
            external_force_torque: core::array::from_fn(|_| Default::default()),
            external_digital_input: Default::default(),
            external_digital_output: Default::default(),
            external_analog_input: core::array::from_fn(|_| Default::default()),
            external_analog_output: core::array::from_fn(|_| Default::default()),
        }
    }
}
impl Ros1Dsr_msgsWriteDataRTRequest {
    pub const MAX_WIRE_BYTES: usize = 152;
    pub const CARTESIAN_WIRE_BYTES: u64 = 152;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_300128a7619804166443a58c387f127d670f91724c8f642fd5b0884c317db73e";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        for element in &self.external_force_torque {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        n = add_size(n, 4)?;
        n = add_size(n, 4)?;
        for element in &self.external_analog_input {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        for element in &self.external_analog_output {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if n > 152 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        for element in &self.external_force_torque {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.external_digital_input.to_le_bytes());
        put(out, at, &self.external_digital_output.to_le_bytes());
        for element in &self.external_analog_input {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.external_analog_output {
            put(out, at, &element.to_le_bytes());
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.external_force_torque[i] = decoded;
            }
        }
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.external_digital_input = decoded;
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.external_digital_output = decoded;
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.external_analog_input[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.external_analog_output[i] = decoded;
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsWriteDataRTRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 152 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 152 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 dsr_msgs/WriteDataRTResponse.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros1Dsr_msgsWriteDataRTResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    pub success: bool,
}
impl Default for Ros1Dsr_msgsWriteDataRTResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Dsr_msgsWriteDataRTResponse {
    pub const MAX_WIRE_BYTES: usize = 1;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_f1d97ee43375db129025b3c587979ca7ffacb06c66d54d829c5590c7c8943d5c";
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
        put(out, at, &[u8::from(self.success)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.success = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Dsr_msgsWriteDataRTResponse {
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
