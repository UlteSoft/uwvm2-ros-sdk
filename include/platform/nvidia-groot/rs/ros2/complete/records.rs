//! @file records.rs
//! @brief Preserve complete original typed records and bounded canonical codecs.
//! @details Values own their strings/sequences; no I/O, executor, clock or native
//! authority is created. Full field order, defaults, identities and bounds remain
//! those of the pinned platform catalog. Errors and allocation failures remain distinct.
extern crate alloc;
use alloc::{string::String, vec::Vec};
use roswasm::typed::Canonical;
use roswasm::{codes, Error};
/// @brief Construct the explicit invalid canonical-data error.
fn invalid() -> Error {
    Error::new(codes::INVALID)
}
/// @brief Measure a checked canonical prefix without allocation.
/// @param n Validated current byte count.
/// @param m Additional byte count.
/// @return Exact bounded sum or the original size error.
fn add_size(n: usize, m: usize) -> Result<usize, Error> {
    n.checked_add(m)
        .filter(|v| *v <= 32768)
        .ok_or(Error::new(codes::TOO_LARGE))
}
/// @brief Borrow the next complete validated input region.
/// @param bytes Borrowed complete canonical input.
/// @param at Internal cursor advanced on success.
/// @param n Exact required byte extent.
/// @return Borrowed region or invalid-data error; no partial region.
fn take<'a>(bytes: &'a [u8], at: &mut usize, n: usize) -> Result<&'a [u8], Error> {
    if *at > bytes.len() || n > bytes.len() - *at {
        return Err(invalid());
    }
    let start = *at;
    *at += n;
    Ok(&bytes[start..*at])
}
/// @brief Read the complete unsigned little-endian sequence count.
/// @param bytes Borrowed canonical input.
/// @param at Internal checked cursor.
/// @return Original count or invalid-data error.
fn read_count(bytes: &[u8], at: &mut usize) -> Result<usize, Error> {
    Ok(u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?) as usize)
}
/// @brief Copy one validated field into an already sized output.
/// @param out Owned destination with the full required capacity.
/// @param at Checked internal write cursor.
/// @param bytes Borrowed complete field bytes.
/// @pre The caller validated the whole output extent.
fn put(out: &mut [u8], at: &mut usize, bytes: &[u8]) {
    out[*at..*at + bytes.len()].copy_from_slice(bytes);
    *at += bytes.len();
}
/// @brief Complete bounded value for ROS2 uwvm_groot_bridge/msg/RGBFrame.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Uwvm_groot_bridgeMsgRGBFrame {
    /// @brief Declared key; canonical bounds are part of CODEC_IDENTITY.
    pub key: String,
    /// @brief Declared shape; canonical bounds are part of CODEC_IDENTITY.
    pub shape: [u32; 5],
    /// @brief Declared pixels; canonical bounds are part of CODEC_IDENTITY.
    pub pixels: Vec<u8>,
}
impl Default for Ros2Uwvm_groot_bridgeMsgRGBFrame {
    /// @brief Preserve the declared canonical field defaults.
    /// @return Owned default record; no I/O or native authority is created.
    fn default() -> Self {
        Self {
            key: Default::default(),
            shape: core::array::from_fn(|_| Default::default()),
            pixels: Default::default(),
        }
    }
}
impl Ros2Uwvm_groot_bridgeMsgRGBFrame {
    /// @brief Declared canonical byte-size bound; grants no storage or native authority.
    pub const MAX_WIRE_BYTES: usize = 860;
    /// @brief Declared canonical byte-size bound; grants no storage or native authority.
    pub const CARTESIAN_WIRE_BYTES: u64 = 860;
    /// @brief Declared canonical byte-size bound; grants no storage or native authority.
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Immutable canonical identity for field order, declared defaults and bounds.
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_db7172fe7a7f0672c907f31ca0b1cb6286b804246d62e0414ac4313ae1096364";
    /// @brief Validate all fields and measure only their initialized canonical prefix.
    /// @param self Borrowed complete typed value.
    /// @return Exact byte count or the original invalid/size error.
    /// @details Every active sequence, UTF-8 string and finite-value constraint is checked.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.key.len() > 64 || self.key.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.key.len())?;
        for element in &self.shape {
            n = add_size(n, 4)?;
        }
        if self.pixels.len() > 768 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.pixels {
            n = add_size(n, 1)?;
        }
        if n > 860 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// @brief Encode after complete validation; output remains unchanged on refusal.
    /// @param self Borrowed complete typed value.
    /// @param out Caller-owned destination.
    /// @return Encoded length or invalid/size error.
    /// @details Validation and capacity checks precede writes; refusal leaves output unchanged.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    /// @brief Write every already validated declared field in canonical order.
    /// @param self Borrowed validated record.
    /// @param out Complete preallocated wire buffer.
    /// @param at Internal write cursor.
    /// @pre Validation and extent checks succeeded.
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.key.len() as u32).to_le_bytes());
        put(out, at, self.key.as_bytes());
        for element in &self.shape {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &(self.pixels.len() as u32).to_le_bytes());
        for element in &self.pixels {
            put(out, at, &element.to_le_bytes());
        }
    }
    /// @brief Decode all declared fields with their original nested bounds.
    /// @param bytes Borrowed complete input; retained values own their data.
    /// @param at Internal cursor; callers discard it after any refusal.
    /// @return Owned complete record or the original invalid/size error.
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
        value.key = decoded;
        {
            let count = 5usize;
            if count > 5 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                value.shape[i] = decoded;
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 768 {
                return Err(invalid());
            }
            value.pixels = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
                value.pixels.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Uwvm_groot_bridgeMsgRGBFrame {
    /// @brief Allocate one exact validated canonical output; never native serialization.
    /// @param self Borrowed complete typed value.
    /// @return Owned exact wire bytes or original validation error.
    /// @details Allocation failure remains a language runtime failure; no native serialization or authority is inferred.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete original canonical body.
    /// @param bytes Borrowed complete wire body within the declared maximum.
    /// @return Owned full typed record or invalid/size error.
    /// @details Truncation and trailing bytes are refused; returned strings and sequences do not borrow input memory.
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 860 {
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
/// @brief Complete bounded value for ROS2 uwvm_groot_bridge/msg/FloatTensor.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Uwvm_groot_bridgeMsgFloatTensor {
    /// @brief Declared key; canonical bounds are part of CODEC_IDENTITY.
    pub key: String,
    /// @brief Declared shape; canonical bounds are part of CODEC_IDENTITY.
    pub shape: [u32; 3],
    /// @brief Declared values; canonical bounds are part of CODEC_IDENTITY.
    pub values: Vec<f32>,
}
impl Default for Ros2Uwvm_groot_bridgeMsgFloatTensor {
    /// @brief Preserve the declared canonical field defaults.
    /// @return Owned default record; no I/O or native authority is created.
    fn default() -> Self {
        Self {
            key: Default::default(),
            shape: core::array::from_fn(|_| Default::default()),
            values: Default::default(),
        }
    }
}
impl Ros2Uwvm_groot_bridgeMsgFloatTensor {
    /// @brief Declared canonical byte-size bound; grants no storage or native authority.
    pub const MAX_WIRE_BYTES: usize = 1364;
    /// @brief Declared canonical byte-size bound; grants no storage or native authority.
    pub const CARTESIAN_WIRE_BYTES: u64 = 1364;
    /// @brief Declared canonical byte-size bound; grants no storage or native authority.
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Immutable canonical identity for field order, declared defaults and bounds.
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_a091d322ab737d2a9415f889fb78a18df7aec6ce74cfab0dcd5bb2a61ae3abae";
    /// @brief Validate all fields and measure only their initialized canonical prefix.
    /// @param self Borrowed complete typed value.
    /// @return Exact byte count or the original invalid/size error.
    /// @details Every active sequence, UTF-8 string and finite-value constraint is checked.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.key.len() > 64 || self.key.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.key.len())?;
        for element in &self.shape {
            n = add_size(n, 4)?;
        }
        if self.values.len() > 320 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.values {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
        }
        if n > 1364 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// @brief Encode after complete validation; output remains unchanged on refusal.
    /// @param self Borrowed complete typed value.
    /// @param out Caller-owned destination.
    /// @return Encoded length or invalid/size error.
    /// @details Validation and capacity checks precede writes; refusal leaves output unchanged.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    /// @brief Write every already validated declared field in canonical order.
    /// @param self Borrowed validated record.
    /// @param out Complete preallocated wire buffer.
    /// @param at Internal write cursor.
    /// @pre Validation and extent checks succeeded.
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.key.len() as u32).to_le_bytes());
        put(out, at, self.key.as_bytes());
        for element in &self.shape {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &(self.values.len() as u32).to_le_bytes());
        for element in &self.values {
            put(out, at, &element.to_le_bytes());
        }
    }
    /// @brief Decode all declared fields with their original nested bounds.
    /// @param bytes Borrowed complete input; retained values own their data.
    /// @param at Internal cursor; callers discard it after any refusal.
    /// @return Owned complete record or the original invalid/size error.
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
        value.key = decoded;
        {
            let count = 3usize;
            if count > 3 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                value.shape[i] = decoded;
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 320 {
                return Err(invalid());
            }
            value.values = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.values.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Uwvm_groot_bridgeMsgFloatTensor {
    /// @brief Allocate one exact validated canonical output; never native serialization.
    /// @param self Borrowed complete typed value.
    /// @return Owned exact wire bytes or original validation error.
    /// @details Allocation failure remains a language runtime failure; no native serialization or authority is inferred.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete original canonical body.
    /// @param bytes Borrowed complete wire body within the declared maximum.
    /// @return Owned full typed record or invalid/size error.
    /// @details Truncation and trailing bytes are refused; returned strings and sequences do not borrow input memory.
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 1364 {
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
/// @brief Complete bounded value for ROS2 uwvm_groot_bridge/msg/TextSequence.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Uwvm_groot_bridgeMsgTextSequence {
    /// @brief Declared key; canonical bounds are part of CODEC_IDENTITY.
    pub key: String,
    /// @brief Declared shape; canonical bounds are part of CODEC_IDENTITY.
    pub shape: [u32; 2],
    /// @brief Declared texts; canonical bounds are part of CODEC_IDENTITY.
    pub texts: Vec<String>,
}
impl Default for Ros2Uwvm_groot_bridgeMsgTextSequence {
    /// @brief Preserve the declared canonical field defaults.
    /// @return Owned default record; no I/O or native authority is created.
    fn default() -> Self {
        Self {
            key: Default::default(),
            shape: core::array::from_fn(|_| Default::default()),
            texts: Default::default(),
        }
    }
}
impl Ros2Uwvm_groot_bridgeMsgTextSequence {
    /// @brief Declared canonical byte-size bound; grants no storage or native authority.
    pub const MAX_WIRE_BYTES: usize = 1120;
    /// @brief Declared canonical byte-size bound; grants no storage or native authority.
    pub const CARTESIAN_WIRE_BYTES: u64 = 1120;
    /// @brief Declared canonical byte-size bound; grants no storage or native authority.
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Immutable canonical identity for field order, declared defaults and bounds.
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_895be974f2560f0afff7614f5400ff7205e013cda269825a8443628621c8e80d";
    /// @brief Validate all fields and measure only their initialized canonical prefix.
    /// @param self Borrowed complete typed value.
    /// @return Exact byte count or the original invalid/size error.
    /// @details Every active sequence, UTF-8 string and finite-value constraint is checked.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.key.len() > 64 || self.key.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.key.len())?;
        for element in &self.shape {
            n = add_size(n, 4)?;
        }
        if self.texts.len() > 4 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.texts {
            if element.len() > 256 || element.as_bytes().contains(&0) {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
            n = add_size(n, element.len())?;
        }
        if n > 1120 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// @brief Encode after complete validation; output remains unchanged on refusal.
    /// @param self Borrowed complete typed value.
    /// @param out Caller-owned destination.
    /// @return Encoded length or invalid/size error.
    /// @details Validation and capacity checks precede writes; refusal leaves output unchanged.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    /// @brief Write every already validated declared field in canonical order.
    /// @param self Borrowed validated record.
    /// @param out Complete preallocated wire buffer.
    /// @param at Internal write cursor.
    /// @pre Validation and extent checks succeeded.
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.key.len() as u32).to_le_bytes());
        put(out, at, self.key.as_bytes());
        for element in &self.shape {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &(self.texts.len() as u32).to_le_bytes());
        for element in &self.texts {
            put(out, at, &(element.len() as u32).to_le_bytes());
            put(out, at, element.as_bytes());
        }
    }
    /// @brief Decode all declared fields with their original nested bounds.
    /// @param bytes Borrowed complete input; retained values own their data.
    /// @param at Internal cursor; callers discard it after any refusal.
    /// @return Owned complete record or the original invalid/size error.
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
        value.key = decoded;
        {
            let count = 2usize;
            if count > 2 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                value.shape[i] = decoded;
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 4 {
                return Err(invalid());
            }
            value.texts = Vec::with_capacity(count);
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
                value.texts.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Uwvm_groot_bridgeMsgTextSequence {
    /// @brief Allocate one exact validated canonical output; never native serialization.
    /// @param self Borrowed complete typed value.
    /// @return Owned exact wire bytes or original validation error.
    /// @details Allocation failure remains a language runtime failure; no native serialization or authority is inferred.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete original canonical body.
    /// @param bytes Borrowed complete wire body within the declared maximum.
    /// @return Owned full typed record or invalid/size error.
    /// @details Truncation and trailing bytes are refused; returned strings and sequences do not borrow input memory.
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 1120 {
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
/// @brief Complete bounded value for ROS2 uwvm_groot_bridge/srv/InferAction_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Uwvm_groot_bridgeSrvInferAction_Request {
    /// @brief Declared application_nonce; canonical bounds are part of CODEC_IDENTITY.
    pub application_nonce: u64,
    /// @brief Declared video; canonical bounds are part of CODEC_IDENTITY.
    pub video: Vec<Ros2Uwvm_groot_bridgeMsgRGBFrame>,
    /// @brief Declared state; canonical bounds are part of CODEC_IDENTITY.
    pub state: Vec<Ros2Uwvm_groot_bridgeMsgFloatTensor>,
    /// @brief Declared language; canonical bounds are part of CODEC_IDENTITY.
    pub language: Vec<Ros2Uwvm_groot_bridgeMsgTextSequence>,
}
impl Default for Ros2Uwvm_groot_bridgeSrvInferAction_Request {
    /// @brief Preserve the declared canonical field defaults.
    /// @return Owned default record; no I/O or native authority is created.
    fn default() -> Self {
        Self {
            application_nonce: Default::default(),
            video: Default::default(),
            state: Default::default(),
            language: Default::default(),
        }
    }
}
impl Ros2Uwvm_groot_bridgeSrvInferAction_Request {
    /// @brief Declared canonical byte-size bound; grants no storage or native authority.
    pub const MAX_WIRE_BYTES: usize = 10296;
    /// @brief Declared canonical byte-size bound; grants no storage or native authority.
    pub const CARTESIAN_WIRE_BYTES: u64 = 10296;
    /// @brief Declared canonical byte-size bound; grants no storage or native authority.
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Immutable canonical identity for field order, declared defaults and bounds.
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_78f85929fb8646e9a92f17cafa3e8296fde42aaf49a56b271531ebad869a0fa6";
    /// @brief Validate all fields and measure only their initialized canonical prefix.
    /// @param self Borrowed complete typed value.
    /// @return Exact byte count or the original invalid/size error.
    /// @details Every active sequence, UTF-8 string and finite-value constraint is checked.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 8)?;
        if self.video.len() > 3 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.video {
            n = add_size(n, element.wire_size()?)?;
        }
        if self.state.len() > 4 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.state {
            n = add_size(n, element.wire_size()?)?;
        }
        if self.language.len() > 2 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.language {
            n = add_size(n, element.wire_size()?)?;
        }
        if n > 10296 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// @brief Encode after complete validation; output remains unchanged on refusal.
    /// @param self Borrowed complete typed value.
    /// @param out Caller-owned destination.
    /// @return Encoded length or invalid/size error.
    /// @details Validation and capacity checks precede writes; refusal leaves output unchanged.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    /// @brief Write every already validated declared field in canonical order.
    /// @param self Borrowed validated record.
    /// @param out Complete preallocated wire buffer.
    /// @param at Internal write cursor.
    /// @pre Validation and extent checks succeeded.
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.application_nonce.to_le_bytes());
        put(out, at, &(self.video.len() as u32).to_le_bytes());
        for element in &self.video {
            element.write_fields(out, at);
        }
        put(out, at, &(self.state.len() as u32).to_le_bytes());
        for element in &self.state {
            element.write_fields(out, at);
        }
        put(out, at, &(self.language.len() as u32).to_le_bytes());
        for element in &self.language {
            element.write_fields(out, at);
        }
    }
    /// @brief Decode all declared fields with their original nested bounds.
    /// @param bytes Borrowed complete input; retained values own their data.
    /// @param at Internal cursor; callers discard it after any refusal.
    /// @return Owned complete record or the original invalid/size error.
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        value.application_nonce = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 3 {
                return Err(invalid());
            }
            value.video = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros2Uwvm_groot_bridgeMsgRGBFrame::read_fields(bytes, at)?;
                value.video.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 4 {
                return Err(invalid());
            }
            value.state = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros2Uwvm_groot_bridgeMsgFloatTensor::read_fields(bytes, at)?;
                value.state.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 2 {
                return Err(invalid());
            }
            value.language = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros2Uwvm_groot_bridgeMsgTextSequence::read_fields(bytes, at)?;
                value.language.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Uwvm_groot_bridgeSrvInferAction_Request {
    /// @brief Allocate one exact validated canonical output; never native serialization.
    /// @param self Borrowed complete typed value.
    /// @return Owned exact wire bytes or original validation error.
    /// @details Allocation failure remains a language runtime failure; no native serialization or authority is inferred.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete original canonical body.
    /// @param bytes Borrowed complete wire body within the declared maximum.
    /// @return Owned full typed record or invalid/size error.
    /// @details Truncation and trailing bytes are refused; returned strings and sequences do not borrow input memory.
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 10296 {
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
/// @brief Complete bounded value for ROS2 uwvm_groot_bridge/srv/InferAction_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Uwvm_groot_bridgeSrvInferAction_Response {
    /// @brief Declared status; canonical bounds are part of CODEC_IDENTITY.
    pub status: u32,
    /// @brief Declared application_nonce; canonical bounds are part of CODEC_IDENTITY.
    pub application_nonce: u64,
    /// @brief Declared action; canonical bounds are part of CODEC_IDENTITY.
    pub action: Vec<Ros2Uwvm_groot_bridgeMsgFloatTensor>,
    /// @brief Declared info_is_empty; canonical bounds are part of CODEC_IDENTITY.
    pub info_is_empty: bool,
}
impl Default for Ros2Uwvm_groot_bridgeSrvInferAction_Response {
    /// @brief Preserve the declared canonical field defaults.
    /// @return Owned default record; no I/O or native authority is created.
    fn default() -> Self {
        Self {
            status: Default::default(),
            application_nonce: Default::default(),
            action: Default::default(),
            info_is_empty: Default::default(),
        }
    }
}
impl Ros2Uwvm_groot_bridgeSrvInferAction_Response {
    /// @brief Declared canonical byte-size bound; grants no storage or native authority.
    pub const MAX_WIRE_BYTES: usize = 10929;
    /// @brief Declared canonical byte-size bound; grants no storage or native authority.
    pub const CARTESIAN_WIRE_BYTES: u64 = 10929;
    /// @brief Declared canonical byte-size bound; grants no storage or native authority.
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Immutable canonical identity for field order, declared defaults and bounds.
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_787281a2adea187ae43ff951a414dd7563b3e08318414e5199e1950b8143a3ce";
    /// @brief Validate all fields and measure only their initialized canonical prefix.
    /// @param self Borrowed complete typed value.
    /// @return Exact byte count or the original invalid/size error.
    /// @details Every active sequence, UTF-8 string and finite-value constraint is checked.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 4)?;
        n = add_size(n, 8)?;
        if self.action.len() > 8 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.action {
            n = add_size(n, element.wire_size()?)?;
        }
        n = add_size(n, 1)?;
        if n > 10929 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// @brief Encode after complete validation; output remains unchanged on refusal.
    /// @param self Borrowed complete typed value.
    /// @param out Caller-owned destination.
    /// @return Encoded length or invalid/size error.
    /// @details Validation and capacity checks precede writes; refusal leaves output unchanged.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    /// @brief Write every already validated declared field in canonical order.
    /// @param self Borrowed validated record.
    /// @param out Complete preallocated wire buffer.
    /// @param at Internal write cursor.
    /// @pre Validation and extent checks succeeded.
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.status.to_le_bytes());
        put(out, at, &self.application_nonce.to_le_bytes());
        put(out, at, &(self.action.len() as u32).to_le_bytes());
        for element in &self.action {
            element.write_fields(out, at);
        }
        put(out, at, &[u8::from(self.info_is_empty)]);
    }
    /// @brief Decode all declared fields with their original nested bounds.
    /// @param bytes Borrowed complete input; retained values own their data.
    /// @param at Internal cursor; callers discard it after any refusal.
    /// @return Owned complete record or the original invalid/size error.
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.status = decoded;
        let decoded = u64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        value.application_nonce = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 8 {
                return Err(invalid());
            }
            value.action = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros2Uwvm_groot_bridgeMsgFloatTensor::read_fields(bytes, at)?;
                value.action.push(decoded);
            }
        }
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.info_is_empty = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Uwvm_groot_bridgeSrvInferAction_Response {
    /// @brief Allocate one exact validated canonical output; never native serialization.
    /// @param self Borrowed complete typed value.
    /// @return Owned exact wire bytes or original validation error.
    /// @details Allocation failure remains a language runtime failure; no native serialization or authority is inferred.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete original canonical body.
    /// @param bytes Borrowed complete wire body within the declared maximum.
    /// @return Owned full typed record or invalid/size error.
    /// @details Truncation and trailing bytes are refused; returned strings and sequences do not borrow input memory.
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 10929 {
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
/// @brief Complete bounded value for ROS2 uwvm_groot_bridge/msg/RGBDescriptor.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Uwvm_groot_bridgeMsgRGBDescriptor {
    /// @brief Declared key; canonical bounds are part of CODEC_IDENTITY.
    pub key: String,
    /// @brief Declared shape; canonical bounds are part of CODEC_IDENTITY.
    pub shape: [u32; 5],
}
impl Default for Ros2Uwvm_groot_bridgeMsgRGBDescriptor {
    /// @brief Preserve the declared canonical field defaults.
    /// @return Owned default record; no I/O or native authority is created.
    fn default() -> Self {
        Self {
            key: Default::default(),
            shape: core::array::from_fn(|_| Default::default()),
        }
    }
}
impl Ros2Uwvm_groot_bridgeMsgRGBDescriptor {
    /// @brief Declared canonical byte-size bound; grants no storage or native authority.
    pub const MAX_WIRE_BYTES: usize = 88;
    /// @brief Declared canonical byte-size bound; grants no storage or native authority.
    pub const CARTESIAN_WIRE_BYTES: u64 = 88;
    /// @brief Declared canonical byte-size bound; grants no storage or native authority.
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Immutable canonical identity for field order, declared defaults and bounds.
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_6daaa392f15643aa3afe5c101c6b649dc2e63f38b61d0332309a280fa9b48e40";
    /// @brief Validate all fields and measure only their initialized canonical prefix.
    /// @param self Borrowed complete typed value.
    /// @return Exact byte count or the original invalid/size error.
    /// @details Every active sequence, UTF-8 string and finite-value constraint is checked.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.key.len() > 64 || self.key.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.key.len())?;
        for element in &self.shape {
            n = add_size(n, 4)?;
        }
        if n > 88 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// @brief Encode after complete validation; output remains unchanged on refusal.
    /// @param self Borrowed complete typed value.
    /// @param out Caller-owned destination.
    /// @return Encoded length or invalid/size error.
    /// @details Validation and capacity checks precede writes; refusal leaves output unchanged.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    /// @brief Write every already validated declared field in canonical order.
    /// @param self Borrowed validated record.
    /// @param out Complete preallocated wire buffer.
    /// @param at Internal write cursor.
    /// @pre Validation and extent checks succeeded.
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.key.len() as u32).to_le_bytes());
        put(out, at, self.key.as_bytes());
        for element in &self.shape {
            put(out, at, &element.to_le_bytes());
        }
    }
    /// @brief Decode all declared fields with their original nested bounds.
    /// @param bytes Borrowed complete input; retained values own their data.
    /// @param at Internal cursor; callers discard it after any refusal.
    /// @return Owned complete record or the original invalid/size error.
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
        value.key = decoded;
        {
            let count = 5usize;
            if count > 5 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                value.shape[i] = decoded;
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Uwvm_groot_bridgeMsgRGBDescriptor {
    /// @brief Allocate one exact validated canonical output; never native serialization.
    /// @param self Borrowed complete typed value.
    /// @return Owned exact wire bytes or original validation error.
    /// @details Allocation failure remains a language runtime failure; no native serialization or authority is inferred.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete original canonical body.
    /// @param bytes Borrowed complete wire body within the declared maximum.
    /// @return Owned full typed record or invalid/size error.
    /// @details Truncation and trailing bytes are refused; returned strings and sequences do not borrow input memory.
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 88 {
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
/// @brief Complete bounded value for ROS2 uwvm_groot_bridge/srv/BeginObservation_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Uwvm_groot_bridgeSrvBeginObservation_Request {
    /// @brief Declared observation_nonce; canonical bounds are part of CODEC_IDENTITY.
    pub observation_nonce: u64,
    /// @brief Declared video; canonical bounds are part of CODEC_IDENTITY.
    pub video: Vec<Ros2Uwvm_groot_bridgeMsgRGBDescriptor>,
}
impl Default for Ros2Uwvm_groot_bridgeSrvBeginObservation_Request {
    /// @brief Preserve the declared canonical field defaults.
    /// @return Owned default record; no I/O or native authority is created.
    fn default() -> Self {
        Self {
            observation_nonce: Default::default(),
            video: Default::default(),
        }
    }
}
impl Ros2Uwvm_groot_bridgeSrvBeginObservation_Request {
    /// @brief Declared canonical byte-size bound; grants no storage or native authority.
    pub const MAX_WIRE_BYTES: usize = 276;
    /// @brief Declared canonical byte-size bound; grants no storage or native authority.
    pub const CARTESIAN_WIRE_BYTES: u64 = 276;
    /// @brief Declared canonical byte-size bound; grants no storage or native authority.
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Immutable canonical identity for field order, declared defaults and bounds.
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_76a3b103328e39f46ea2c1cf47dcc417c110771c2253c4defad577906d6d7ba2";
    /// @brief Validate all fields and measure only their initialized canonical prefix.
    /// @param self Borrowed complete typed value.
    /// @return Exact byte count or the original invalid/size error.
    /// @details Every active sequence, UTF-8 string and finite-value constraint is checked.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 8)?;
        if self.video.len() > 3 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.video {
            n = add_size(n, element.wire_size()?)?;
        }
        if n > 276 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// @brief Encode after complete validation; output remains unchanged on refusal.
    /// @param self Borrowed complete typed value.
    /// @param out Caller-owned destination.
    /// @return Encoded length or invalid/size error.
    /// @details Validation and capacity checks precede writes; refusal leaves output unchanged.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    /// @brief Write every already validated declared field in canonical order.
    /// @param self Borrowed validated record.
    /// @param out Complete preallocated wire buffer.
    /// @param at Internal write cursor.
    /// @pre Validation and extent checks succeeded.
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.observation_nonce.to_le_bytes());
        put(out, at, &(self.video.len() as u32).to_le_bytes());
        for element in &self.video {
            element.write_fields(out, at);
        }
    }
    /// @brief Decode all declared fields with their original nested bounds.
    /// @param bytes Borrowed complete input; retained values own their data.
    /// @param at Internal cursor; callers discard it after any refusal.
    /// @return Owned complete record or the original invalid/size error.
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        value.observation_nonce = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 3 {
                return Err(invalid());
            }
            value.video = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros2Uwvm_groot_bridgeMsgRGBDescriptor::read_fields(bytes, at)?;
                value.video.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Uwvm_groot_bridgeSrvBeginObservation_Request {
    /// @brief Allocate one exact validated canonical output; never native serialization.
    /// @param self Borrowed complete typed value.
    /// @return Owned exact wire bytes or original validation error.
    /// @details Allocation failure remains a language runtime failure; no native serialization or authority is inferred.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete original canonical body.
    /// @param bytes Borrowed complete wire body within the declared maximum.
    /// @return Owned full typed record or invalid/size error.
    /// @details Truncation and trailing bytes are refused; returned strings and sequences do not borrow input memory.
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 276 {
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
/// @brief Complete bounded value for ROS2 uwvm_groot_bridge/srv/BeginObservation_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Uwvm_groot_bridgeSrvBeginObservation_Response {
    /// @brief Declared status; canonical bounds are part of CODEC_IDENTITY.
    pub status: u32,
    /// @brief Declared observation_nonce; canonical bounds are part of CODEC_IDENTITY.
    pub observation_nonce: u64,
}
impl Default for Ros2Uwvm_groot_bridgeSrvBeginObservation_Response {
    /// @brief Preserve the declared canonical field defaults.
    /// @return Owned default record; no I/O or native authority is created.
    fn default() -> Self {
        Self {
            status: Default::default(),
            observation_nonce: Default::default(),
        }
    }
}
impl Ros2Uwvm_groot_bridgeSrvBeginObservation_Response {
    /// @brief Declared canonical byte-size bound; grants no storage or native authority.
    pub const MAX_WIRE_BYTES: usize = 12;
    /// @brief Declared canonical byte-size bound; grants no storage or native authority.
    pub const CARTESIAN_WIRE_BYTES: u64 = 12;
    /// @brief Declared canonical byte-size bound; grants no storage or native authority.
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Immutable canonical identity for field order, declared defaults and bounds.
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_53141471de18d5d46601139c6ef67c2381f4274030bb05559354f2aa07def049";
    /// @brief Validate all fields and measure only their initialized canonical prefix.
    /// @param self Borrowed complete typed value.
    /// @return Exact byte count or the original invalid/size error.
    /// @details Every active sequence, UTF-8 string and finite-value constraint is checked.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 4)?;
        n = add_size(n, 8)?;
        if n > 12 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// @brief Encode after complete validation; output remains unchanged on refusal.
    /// @param self Borrowed complete typed value.
    /// @param out Caller-owned destination.
    /// @return Encoded length or invalid/size error.
    /// @details Validation and capacity checks precede writes; refusal leaves output unchanged.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    /// @brief Write every already validated declared field in canonical order.
    /// @param self Borrowed validated record.
    /// @param out Complete preallocated wire buffer.
    /// @param at Internal write cursor.
    /// @pre Validation and extent checks succeeded.
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.status.to_le_bytes());
        put(out, at, &self.observation_nonce.to_le_bytes());
    }
    /// @brief Decode all declared fields with their original nested bounds.
    /// @param bytes Borrowed complete input; retained values own their data.
    /// @param at Internal cursor; callers discard it after any refusal.
    /// @return Owned complete record or the original invalid/size error.
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.status = decoded;
        let decoded = u64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        value.observation_nonce = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Uwvm_groot_bridgeSrvBeginObservation_Response {
    /// @brief Allocate one exact validated canonical output; never native serialization.
    /// @param self Borrowed complete typed value.
    /// @return Owned exact wire bytes or original validation error.
    /// @details Allocation failure remains a language runtime failure; no native serialization or authority is inferred.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete original canonical body.
    /// @param bytes Borrowed complete wire body within the declared maximum.
    /// @return Owned full typed record or invalid/size error.
    /// @details Truncation and trailing bytes are refused; returned strings and sequences do not borrow input memory.
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
/// @brief Complete bounded value for ROS2 uwvm_groot_bridge/srv/WriteRGBChunk_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request {
    /// @brief Declared observation_nonce; canonical bounds are part of CODEC_IDENTITY.
    pub observation_nonce: u64,
    /// @brief Declared key; canonical bounds are part of CODEC_IDENTITY.
    pub key: String,
    /// @brief Declared offset; canonical bounds are part of CODEC_IDENTITY.
    pub offset: u32,
    /// @brief Declared pixels; canonical bounds are part of CODEC_IDENTITY.
    pub pixels: Vec<u8>,
}
impl Default for Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request {
    /// @brief Preserve the declared canonical field defaults.
    /// @return Owned default record; no I/O or native authority is created.
    fn default() -> Self {
        Self {
            observation_nonce: Default::default(),
            key: Default::default(),
            offset: Default::default(),
            pixels: Default::default(),
        }
    }
}
impl Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request {
    /// @brief Declared canonical byte-size bound; grants no storage or native authority.
    pub const MAX_WIRE_BYTES: usize = 852;
    /// @brief Declared canonical byte-size bound; grants no storage or native authority.
    pub const CARTESIAN_WIRE_BYTES: u64 = 852;
    /// @brief Declared canonical byte-size bound; grants no storage or native authority.
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Immutable canonical identity for field order, declared defaults and bounds.
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_c7fe45f5da3c73a4d556ad72e0ce5c40d70c531714f0ac841a791404b1048f2c";
    /// @brief Validate all fields and measure only their initialized canonical prefix.
    /// @param self Borrowed complete typed value.
    /// @return Exact byte count or the original invalid/size error.
    /// @details Every active sequence, UTF-8 string and finite-value constraint is checked.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 8)?;
        if self.key.len() > 64 || self.key.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.key.len())?;
        n = add_size(n, 4)?;
        if self.pixels.len() > 768 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.pixels {
            n = add_size(n, 1)?;
        }
        if n > 852 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// @brief Encode after complete validation; output remains unchanged on refusal.
    /// @param self Borrowed complete typed value.
    /// @param out Caller-owned destination.
    /// @return Encoded length or invalid/size error.
    /// @details Validation and capacity checks precede writes; refusal leaves output unchanged.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    /// @brief Write every already validated declared field in canonical order.
    /// @param self Borrowed validated record.
    /// @param out Complete preallocated wire buffer.
    /// @param at Internal write cursor.
    /// @pre Validation and extent checks succeeded.
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.observation_nonce.to_le_bytes());
        put(out, at, &(self.key.len() as u32).to_le_bytes());
        put(out, at, self.key.as_bytes());
        put(out, at, &self.offset.to_le_bytes());
        put(out, at, &(self.pixels.len() as u32).to_le_bytes());
        for element in &self.pixels {
            put(out, at, &element.to_le_bytes());
        }
    }
    /// @brief Decode all declared fields with their original nested bounds.
    /// @param bytes Borrowed complete input; retained values own their data.
    /// @param at Internal cursor; callers discard it after any refusal.
    /// @return Owned complete record or the original invalid/size error.
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        value.observation_nonce = decoded;
        let size = read_count(bytes, at)?;
        if size > 64 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.key = decoded;
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.offset = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 768 {
                return Err(invalid());
            }
            value.pixels = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
                value.pixels.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request {
    /// @brief Allocate one exact validated canonical output; never native serialization.
    /// @param self Borrowed complete typed value.
    /// @return Owned exact wire bytes or original validation error.
    /// @details Allocation failure remains a language runtime failure; no native serialization or authority is inferred.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete original canonical body.
    /// @param bytes Borrowed complete wire body within the declared maximum.
    /// @return Owned full typed record or invalid/size error.
    /// @details Truncation and trailing bytes are refused; returned strings and sequences do not borrow input memory.
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 852 {
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
/// @brief Complete bounded value for ROS2 uwvm_groot_bridge/srv/WriteRGBChunk_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response {
    /// @brief Declared status; canonical bounds are part of CODEC_IDENTITY.
    pub status: u32,
    /// @brief Declared observation_nonce; canonical bounds are part of CODEC_IDENTITY.
    pub observation_nonce: u64,
    /// @brief Declared accepted_bytes; canonical bounds are part of CODEC_IDENTITY.
    pub accepted_bytes: u32,
}
impl Default for Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response {
    /// @brief Preserve the declared canonical field defaults.
    /// @return Owned default record; no I/O or native authority is created.
    fn default() -> Self {
        Self {
            status: Default::default(),
            observation_nonce: Default::default(),
            accepted_bytes: Default::default(),
        }
    }
}
impl Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response {
    /// @brief Declared canonical byte-size bound; grants no storage or native authority.
    pub const MAX_WIRE_BYTES: usize = 16;
    /// @brief Declared canonical byte-size bound; grants no storage or native authority.
    pub const CARTESIAN_WIRE_BYTES: u64 = 16;
    /// @brief Declared canonical byte-size bound; grants no storage or native authority.
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Immutable canonical identity for field order, declared defaults and bounds.
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_4c279e0701b59c05f0eb185c1990b4e6a0bb1550ca638b04b60b31143e11efba";
    /// @brief Validate all fields and measure only their initialized canonical prefix.
    /// @param self Borrowed complete typed value.
    /// @return Exact byte count or the original invalid/size error.
    /// @details Every active sequence, UTF-8 string and finite-value constraint is checked.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 4)?;
        n = add_size(n, 8)?;
        n = add_size(n, 4)?;
        if n > 16 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// @brief Encode after complete validation; output remains unchanged on refusal.
    /// @param self Borrowed complete typed value.
    /// @param out Caller-owned destination.
    /// @return Encoded length or invalid/size error.
    /// @details Validation and capacity checks precede writes; refusal leaves output unchanged.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    /// @brief Write every already validated declared field in canonical order.
    /// @param self Borrowed validated record.
    /// @param out Complete preallocated wire buffer.
    /// @param at Internal write cursor.
    /// @pre Validation and extent checks succeeded.
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.status.to_le_bytes());
        put(out, at, &self.observation_nonce.to_le_bytes());
        put(out, at, &self.accepted_bytes.to_le_bytes());
    }
    /// @brief Decode all declared fields with their original nested bounds.
    /// @param bytes Borrowed complete input; retained values own their data.
    /// @param at Internal cursor; callers discard it after any refusal.
    /// @return Owned complete record or the original invalid/size error.
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.status = decoded;
        let decoded = u64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        value.observation_nonce = decoded;
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.accepted_bytes = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response {
    /// @brief Allocate one exact validated canonical output; never native serialization.
    /// @param self Borrowed complete typed value.
    /// @return Owned exact wire bytes or original validation error.
    /// @details Allocation failure remains a language runtime failure; no native serialization or authority is inferred.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete original canonical body.
    /// @param bytes Borrowed complete wire body within the declared maximum.
    /// @return Owned full typed record or invalid/size error.
    /// @details Truncation and trailing bytes are refused; returned strings and sequences do not borrow input memory.
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
/// @brief Complete bounded value for ROS2 uwvm_groot_bridge/srv/ReleaseObservation_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request {
    /// @brief Declared observation_nonce; canonical bounds are part of CODEC_IDENTITY.
    pub observation_nonce: u64,
}
impl Default for Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request {
    /// @brief Preserve the declared canonical field defaults.
    /// @return Owned default record; no I/O or native authority is created.
    fn default() -> Self {
        Self {
            observation_nonce: Default::default(),
        }
    }
}
impl Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request {
    /// @brief Declared canonical byte-size bound; grants no storage or native authority.
    pub const MAX_WIRE_BYTES: usize = 8;
    /// @brief Declared canonical byte-size bound; grants no storage or native authority.
    pub const CARTESIAN_WIRE_BYTES: u64 = 8;
    /// @brief Declared canonical byte-size bound; grants no storage or native authority.
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Immutable canonical identity for field order, declared defaults and bounds.
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_dae7e73133b73414ed9d85bf3bf3bbc699f84976dbce9b12f68a5d710b3190c5";
    /// @brief Validate all fields and measure only their initialized canonical prefix.
    /// @param self Borrowed complete typed value.
    /// @return Exact byte count or the original invalid/size error.
    /// @details Every active sequence, UTF-8 string and finite-value constraint is checked.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 8)?;
        if n > 8 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// @brief Encode after complete validation; output remains unchanged on refusal.
    /// @param self Borrowed complete typed value.
    /// @param out Caller-owned destination.
    /// @return Encoded length or invalid/size error.
    /// @details Validation and capacity checks precede writes; refusal leaves output unchanged.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    /// @brief Write every already validated declared field in canonical order.
    /// @param self Borrowed validated record.
    /// @param out Complete preallocated wire buffer.
    /// @param at Internal write cursor.
    /// @pre Validation and extent checks succeeded.
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.observation_nonce.to_le_bytes());
    }
    /// @brief Decode all declared fields with their original nested bounds.
    /// @param bytes Borrowed complete input; retained values own their data.
    /// @param at Internal cursor; callers discard it after any refusal.
    /// @return Owned complete record or the original invalid/size error.
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        value.observation_nonce = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request {
    /// @brief Allocate one exact validated canonical output; never native serialization.
    /// @param self Borrowed complete typed value.
    /// @return Owned exact wire bytes or original validation error.
    /// @details Allocation failure remains a language runtime failure; no native serialization or authority is inferred.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete original canonical body.
    /// @param bytes Borrowed complete wire body within the declared maximum.
    /// @return Owned full typed record or invalid/size error.
    /// @details Truncation and trailing bytes are refused; returned strings and sequences do not borrow input memory.
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
/// @brief Complete bounded value for ROS2 uwvm_groot_bridge/srv/ReleaseObservation_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response {
    /// @brief Declared status; canonical bounds are part of CODEC_IDENTITY.
    pub status: u32,
    /// @brief Declared observation_nonce; canonical bounds are part of CODEC_IDENTITY.
    pub observation_nonce: u64,
}
impl Default for Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response {
    /// @brief Preserve the declared canonical field defaults.
    /// @return Owned default record; no I/O or native authority is created.
    fn default() -> Self {
        Self {
            status: Default::default(),
            observation_nonce: Default::default(),
        }
    }
}
impl Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response {
    /// @brief Declared canonical byte-size bound; grants no storage or native authority.
    pub const MAX_WIRE_BYTES: usize = 12;
    /// @brief Declared canonical byte-size bound; grants no storage or native authority.
    pub const CARTESIAN_WIRE_BYTES: u64 = 12;
    /// @brief Declared canonical byte-size bound; grants no storage or native authority.
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Immutable canonical identity for field order, declared defaults and bounds.
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_776da57c3952c647fc2c3f18855cb889747d84d6824222c3b8be267db1688d69";
    /// @brief Validate all fields and measure only their initialized canonical prefix.
    /// @param self Borrowed complete typed value.
    /// @return Exact byte count or the original invalid/size error.
    /// @details Every active sequence, UTF-8 string and finite-value constraint is checked.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 4)?;
        n = add_size(n, 8)?;
        if n > 12 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// @brief Encode after complete validation; output remains unchanged on refusal.
    /// @param self Borrowed complete typed value.
    /// @param out Caller-owned destination.
    /// @return Encoded length or invalid/size error.
    /// @details Validation and capacity checks precede writes; refusal leaves output unchanged.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    /// @brief Write every already validated declared field in canonical order.
    /// @param self Borrowed validated record.
    /// @param out Complete preallocated wire buffer.
    /// @param at Internal write cursor.
    /// @pre Validation and extent checks succeeded.
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.status.to_le_bytes());
        put(out, at, &self.observation_nonce.to_le_bytes());
    }
    /// @brief Decode all declared fields with their original nested bounds.
    /// @param bytes Borrowed complete input; retained values own their data.
    /// @param at Internal cursor; callers discard it after any refusal.
    /// @return Owned complete record or the original invalid/size error.
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.status = decoded;
        let decoded = u64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        value.observation_nonce = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response {
    /// @brief Allocate one exact validated canonical output; never native serialization.
    /// @param self Borrowed complete typed value.
    /// @return Owned exact wire bytes or original validation error.
    /// @details Allocation failure remains a language runtime failure; no native serialization or authority is inferred.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete original canonical body.
    /// @param bytes Borrowed complete wire body within the declared maximum.
    /// @return Owned full typed record or invalid/size error.
    /// @details Truncation and trailing bytes are refused; returned strings and sequences do not borrow input memory.
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
/// @brief Complete bounded value for ROS2 uwvm_groot_bridge/srv/InferUploadedAction_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request {
    /// @brief Declared application_nonce; canonical bounds are part of CODEC_IDENTITY.
    pub application_nonce: u64,
    /// @brief Declared observation_nonce; canonical bounds are part of CODEC_IDENTITY.
    pub observation_nonce: u64,
    /// @brief Declared state; canonical bounds are part of CODEC_IDENTITY.
    pub state: Vec<Ros2Uwvm_groot_bridgeMsgFloatTensor>,
    /// @brief Declared language; canonical bounds are part of CODEC_IDENTITY.
    pub language: Vec<Ros2Uwvm_groot_bridgeMsgTextSequence>,
}
impl Default for Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request {
    /// @brief Preserve the declared canonical field defaults.
    /// @return Owned default record; no I/O or native authority is created.
    fn default() -> Self {
        Self {
            application_nonce: Default::default(),
            observation_nonce: Default::default(),
            state: Default::default(),
            language: Default::default(),
        }
    }
}
impl Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request {
    /// @brief Declared canonical byte-size bound; grants no storage or native authority.
    pub const MAX_WIRE_BYTES: usize = 7720;
    /// @brief Declared canonical byte-size bound; grants no storage or native authority.
    pub const CARTESIAN_WIRE_BYTES: u64 = 7720;
    /// @brief Declared canonical byte-size bound; grants no storage or native authority.
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Immutable canonical identity for field order, declared defaults and bounds.
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_fab202af4445441157f6ac5249ed0eeb3035f5c88c467fb363a2ef024a5c524d";
    /// @brief Validate all fields and measure only their initialized canonical prefix.
    /// @param self Borrowed complete typed value.
    /// @return Exact byte count or the original invalid/size error.
    /// @details Every active sequence, UTF-8 string and finite-value constraint is checked.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 8)?;
        n = add_size(n, 8)?;
        if self.state.len() > 4 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.state {
            n = add_size(n, element.wire_size()?)?;
        }
        if self.language.len() > 2 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.language {
            n = add_size(n, element.wire_size()?)?;
        }
        if n > 7720 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// @brief Encode after complete validation; output remains unchanged on refusal.
    /// @param self Borrowed complete typed value.
    /// @param out Caller-owned destination.
    /// @return Encoded length or invalid/size error.
    /// @details Validation and capacity checks precede writes; refusal leaves output unchanged.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    /// @brief Write every already validated declared field in canonical order.
    /// @param self Borrowed validated record.
    /// @param out Complete preallocated wire buffer.
    /// @param at Internal write cursor.
    /// @pre Validation and extent checks succeeded.
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.application_nonce.to_le_bytes());
        put(out, at, &self.observation_nonce.to_le_bytes());
        put(out, at, &(self.state.len() as u32).to_le_bytes());
        for element in &self.state {
            element.write_fields(out, at);
        }
        put(out, at, &(self.language.len() as u32).to_le_bytes());
        for element in &self.language {
            element.write_fields(out, at);
        }
    }
    /// @brief Decode all declared fields with their original nested bounds.
    /// @param bytes Borrowed complete input; retained values own their data.
    /// @param at Internal cursor; callers discard it after any refusal.
    /// @return Owned complete record or the original invalid/size error.
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        value.application_nonce = decoded;
        let decoded = u64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        value.observation_nonce = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 4 {
                return Err(invalid());
            }
            value.state = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros2Uwvm_groot_bridgeMsgFloatTensor::read_fields(bytes, at)?;
                value.state.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 2 {
                return Err(invalid());
            }
            value.language = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros2Uwvm_groot_bridgeMsgTextSequence::read_fields(bytes, at)?;
                value.language.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request {
    /// @brief Allocate one exact validated canonical output; never native serialization.
    /// @param self Borrowed complete typed value.
    /// @return Owned exact wire bytes or original validation error.
    /// @details Allocation failure remains a language runtime failure; no native serialization or authority is inferred.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete original canonical body.
    /// @param bytes Borrowed complete wire body within the declared maximum.
    /// @return Owned full typed record or invalid/size error.
    /// @details Truncation and trailing bytes are refused; returned strings and sequences do not borrow input memory.
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 7720 {
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
/// @brief Complete bounded value for ROS2 uwvm_groot_bridge/srv/InferUploadedAction_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response {
    /// @brief Declared status; canonical bounds are part of CODEC_IDENTITY.
    pub status: u32,
    /// @brief Declared application_nonce; canonical bounds are part of CODEC_IDENTITY.
    pub application_nonce: u64,
    /// @brief Declared action; canonical bounds are part of CODEC_IDENTITY.
    pub action: Vec<Ros2Uwvm_groot_bridgeMsgFloatTensor>,
    /// @brief Declared info_is_empty; canonical bounds are part of CODEC_IDENTITY.
    pub info_is_empty: bool,
}
impl Default for Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response {
    /// @brief Preserve the declared canonical field defaults.
    /// @return Owned default record; no I/O or native authority is created.
    fn default() -> Self {
        Self {
            status: Default::default(),
            application_nonce: Default::default(),
            action: Default::default(),
            info_is_empty: Default::default(),
        }
    }
}
impl Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response {
    /// @brief Declared canonical byte-size bound; grants no storage or native authority.
    pub const MAX_WIRE_BYTES: usize = 10929;
    /// @brief Declared canonical byte-size bound; grants no storage or native authority.
    pub const CARTESIAN_WIRE_BYTES: u64 = 10929;
    /// @brief Declared canonical byte-size bound; grants no storage or native authority.
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Immutable canonical identity for field order, declared defaults and bounds.
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_b8ae8113a9cd0e2d51ffc78d81f45e047cc03282bb9e4b82dd3a2571be29d93e";
    /// @brief Validate all fields and measure only their initialized canonical prefix.
    /// @param self Borrowed complete typed value.
    /// @return Exact byte count or the original invalid/size error.
    /// @details Every active sequence, UTF-8 string and finite-value constraint is checked.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 4)?;
        n = add_size(n, 8)?;
        if self.action.len() > 8 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.action {
            n = add_size(n, element.wire_size()?)?;
        }
        n = add_size(n, 1)?;
        if n > 10929 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// @brief Encode after complete validation; output remains unchanged on refusal.
    /// @param self Borrowed complete typed value.
    /// @param out Caller-owned destination.
    /// @return Encoded length or invalid/size error.
    /// @details Validation and capacity checks precede writes; refusal leaves output unchanged.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    /// @brief Write every already validated declared field in canonical order.
    /// @param self Borrowed validated record.
    /// @param out Complete preallocated wire buffer.
    /// @param at Internal write cursor.
    /// @pre Validation and extent checks succeeded.
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.status.to_le_bytes());
        put(out, at, &self.application_nonce.to_le_bytes());
        put(out, at, &(self.action.len() as u32).to_le_bytes());
        for element in &self.action {
            element.write_fields(out, at);
        }
        put(out, at, &[u8::from(self.info_is_empty)]);
    }
    /// @brief Decode all declared fields with their original nested bounds.
    /// @param bytes Borrowed complete input; retained values own their data.
    /// @param at Internal cursor; callers discard it after any refusal.
    /// @return Owned complete record or the original invalid/size error.
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.status = decoded;
        let decoded = u64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        value.application_nonce = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 8 {
                return Err(invalid());
            }
            value.action = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros2Uwvm_groot_bridgeMsgFloatTensor::read_fields(bytes, at)?;
                value.action.push(decoded);
            }
        }
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.info_is_empty = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response {
    /// @brief Allocate one exact validated canonical output; never native serialization.
    /// @param self Borrowed complete typed value.
    /// @return Owned exact wire bytes or original validation error.
    /// @details Allocation failure remains a language runtime failure; no native serialization or authority is inferred.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete original canonical body.
    /// @param bytes Borrowed complete wire body within the declared maximum.
    /// @return Owned full typed record or invalid/size error.
    /// @details Truncation and trailing bytes are refused; returned strings and sequences do not borrow input memory.
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 10929 {
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
