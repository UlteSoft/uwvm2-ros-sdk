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
    /// Declared sec; canonical bounds are part of CODEC_IDENTITY.
    pub sec: i32,
    /// Declared nanosec; canonical bounds are part of CODEC_IDENTITY.
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
        "UWVMROS1_42aaa547be623a7ac6331df690048da2a39ee65b50414c2fc611adabb69e4d93";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 4)?;
        n = add_size(n, 4)?;
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
/// Complete bounded value for ROS2 rcl_interfaces/msg/FloatingPointRange.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Rcl_interfacesMsgFloatingPointRange {
    /// Declared from_value; canonical bounds are part of CODEC_IDENTITY.
    pub from_value: f64,
    /// Declared to_value; canonical bounds are part of CODEC_IDENTITY.
    pub to_value: f64,
    /// Declared step; canonical bounds are part of CODEC_IDENTITY.
    pub step: f64,
}
impl Default for Ros2Rcl_interfacesMsgFloatingPointRange {
    fn default() -> Self {
        Self {
            from_value: Default::default(),
            to_value: Default::default(),
            step: Default::default(),
        }
    }
}
impl Ros2Rcl_interfacesMsgFloatingPointRange {
    pub const MAX_WIRE_BYTES: usize = 24;
    pub const CARTESIAN_WIRE_BYTES: u64 = 24;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_053a21bac7a5237118230b0582fa21abf9ee6d39430062d251e4c30ef2d93cbd";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if !self.from_value.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.to_value.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if !self.step.is_finite() {
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
        put(out, at, &self.from_value.to_le_bytes());
        put(out, at, &self.to_value.to_le_bytes());
        put(out, at, &self.step.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.from_value = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.to_value = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.step = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Rcl_interfacesMsgFloatingPointRange {
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
/// Complete bounded value for ROS2 rcl_interfaces/msg/IntegerRange.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Rcl_interfacesMsgIntegerRange {
    /// Declared from_value; canonical bounds are part of CODEC_IDENTITY.
    pub from_value: i64,
    /// Declared to_value; canonical bounds are part of CODEC_IDENTITY.
    pub to_value: i64,
    /// Declared step; canonical bounds are part of CODEC_IDENTITY.
    pub step: u64,
}
impl Default for Ros2Rcl_interfacesMsgIntegerRange {
    fn default() -> Self {
        Self {
            from_value: Default::default(),
            to_value: Default::default(),
            step: Default::default(),
        }
    }
}
impl Ros2Rcl_interfacesMsgIntegerRange {
    pub const MAX_WIRE_BYTES: usize = 24;
    pub const CARTESIAN_WIRE_BYTES: u64 = 24;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_feb5ad6cd8a8aed678463e360ee5f99be00563e58b88a9821bb21c2f3dc6d138";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 8)?;
        n = add_size(n, 8)?;
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
        put(out, at, &self.from_value.to_le_bytes());
        put(out, at, &self.to_value.to_le_bytes());
        put(out, at, &self.step.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        value.from_value = decoded;
        let decoded = i64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        value.to_value = decoded;
        let decoded = u64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        value.step = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Rcl_interfacesMsgIntegerRange {
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
/// Complete bounded value for ROS2 rcl_interfaces/msg/ListParametersResult.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Rcl_interfacesMsgListParametersResult {
    /// Declared names; canonical bounds are part of CODEC_IDENTITY.
    pub names: Vec<String>,
    /// Declared prefixes; canonical bounds are part of CODEC_IDENTITY.
    pub prefixes: Vec<String>,
}
impl Default for Ros2Rcl_interfacesMsgListParametersResult {
    fn default() -> Self {
        Self {
            names: Default::default(),
            prefixes: Default::default(),
        }
    }
}
impl Ros2Rcl_interfacesMsgListParametersResult {
    pub const MAX_WIRE_BYTES: usize = 552;
    pub const CARTESIAN_WIRE_BYTES: u64 = 552;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_4a70c2faf5be0fe05af7f617de2f074b1e5815466a825d2ffe0653f8501f8888";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.names.len() > 4 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.names {
            if element.len() > 64 || element.as_bytes().contains(&0) {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
            n = add_size(n, element.len())?;
        }
        if self.prefixes.len() > 4 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.prefixes {
            if element.len() > 64 || element.as_bytes().contains(&0) {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
            n = add_size(n, element.len())?;
        }
        if n > 552 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.names.len() as u32).to_le_bytes());
        for element in &self.names {
            put(out, at, &(element.len() as u32).to_le_bytes());
            put(out, at, element.as_bytes());
        }
        put(out, at, &(self.prefixes.len() as u32).to_le_bytes());
        for element in &self.prefixes {
            put(out, at, &(element.len() as u32).to_le_bytes());
            put(out, at, element.as_bytes());
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = read_count(bytes, at)?;
            if count > 4 {
                return Err(invalid());
            }
            value.names = Vec::with_capacity(count);
            for i in 0..count {
                let size = read_count(bytes, at)?;
                if size > 64 {
                    return Err(invalid());
                }
                let raw = take(bytes, at, size)?;
                if raw.contains(&0) {
                    return Err(invalid());
                }
                let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
                value.names.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 4 {
                return Err(invalid());
            }
            value.prefixes = Vec::with_capacity(count);
            for i in 0..count {
                let size = read_count(bytes, at)?;
                if size > 64 {
                    return Err(invalid());
                }
                let raw = take(bytes, at, size)?;
                if raw.contains(&0) {
                    return Err(invalid());
                }
                let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
                value.prefixes.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Rcl_interfacesMsgListParametersResult {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 552 {
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
/// Complete bounded value for ROS2 rcl_interfaces/msg/Log.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Rcl_interfacesMsgLog {
    /// Declared stamp; canonical bounds are part of CODEC_IDENTITY.
    pub stamp: Ros2Builtin_interfacesMsgTime,
    /// Declared level; canonical bounds are part of CODEC_IDENTITY.
    pub level: u8,
    /// Declared name; canonical bounds are part of CODEC_IDENTITY.
    pub name: String,
    /// Declared msg; canonical bounds are part of CODEC_IDENTITY.
    pub msg: String,
    /// Declared file; canonical bounds are part of CODEC_IDENTITY.
    pub file: String,
    /// Declared function; canonical bounds are part of CODEC_IDENTITY.
    pub function: String,
    /// Declared line; canonical bounds are part of CODEC_IDENTITY.
    pub line: u32,
}
impl Default for Ros2Rcl_interfacesMsgLog {
    fn default() -> Self {
        Self {
            stamp: Default::default(),
            level: Default::default(),
            name: Default::default(),
            msg: Default::default(),
            file: Default::default(),
            function: Default::default(),
            line: Default::default(),
        }
    }
}
impl Ros2Rcl_interfacesMsgLog {
    /// Original scalar constant; no instance wire bytes.
    pub const DEBUG: u8 = 10;
    /// Original scalar constant; no instance wire bytes.
    pub const INFO: u8 = 20;
    /// Original scalar constant; no instance wire bytes.
    pub const WARN: u8 = 30;
    /// Original scalar constant; no instance wire bytes.
    pub const ERROR: u8 = 40;
    /// Original scalar constant; no instance wire bytes.
    pub const FATAL: u8 = 50;
    pub const MAX_WIRE_BYTES: usize = 1565;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1565;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_2103d225e654164412896f1e13b662ca8d10c085f8d026029ed027c9cb6d93c9";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.stamp.wire_size()?)?;
        n = add_size(n, 1)?;
        if self.name.len() > 128 || self.name.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.name.len())?;
        if self.msg.len() > 1024 || self.msg.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.msg.len())?;
        if self.file.len() > 256 || self.file.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.file.len())?;
        if self.function.len() > 128 || self.function.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.function.len())?;
        n = add_size(n, 4)?;
        if n > 1565 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
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
        put(out, at, &self.level.to_le_bytes());
        put(out, at, &(self.name.len() as u32).to_le_bytes());
        put(out, at, self.name.as_bytes());
        put(out, at, &(self.msg.len() as u32).to_le_bytes());
        put(out, at, self.msg.as_bytes());
        put(out, at, &(self.file.len() as u32).to_le_bytes());
        put(out, at, self.file.as_bytes());
        put(out, at, &(self.function.len() as u32).to_le_bytes());
        put(out, at, self.function.as_bytes());
        put(out, at, &self.line.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Builtin_interfacesMsgTime::read_fields(bytes, at)?;
        value.stamp = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.level = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.name = decoded;
        let size = read_count(bytes, at)?;
        if size > 1024 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.msg = decoded;
        let size = read_count(bytes, at)?;
        if size > 256 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.file = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.function = decoded;
        let decoded = u32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.line = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Rcl_interfacesMsgLog {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 1565 {
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
/// Complete bounded value for ROS2 rcl_interfaces/msg/ParameterValue.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Rcl_interfacesMsgParameterValue {
    /// Declared type; canonical bounds are part of CODEC_IDENTITY.
    pub r#type: u8,
    /// Declared bool_value; canonical bounds are part of CODEC_IDENTITY.
    pub bool_value: bool,
    /// Declared integer_value; canonical bounds are part of CODEC_IDENTITY.
    pub integer_value: i64,
    /// Declared double_value; canonical bounds are part of CODEC_IDENTITY.
    pub double_value: f64,
    /// Declared string_value; canonical bounds are part of CODEC_IDENTITY.
    pub string_value: String,
    /// Declared byte_array_value; canonical bounds are part of CODEC_IDENTITY.
    pub byte_array_value: Vec<u8>,
    /// Declared bool_array_value; canonical bounds are part of CODEC_IDENTITY.
    pub bool_array_value: Vec<bool>,
    /// Declared integer_array_value; canonical bounds are part of CODEC_IDENTITY.
    pub integer_array_value: Vec<i64>,
    /// Declared double_array_value; canonical bounds are part of CODEC_IDENTITY.
    pub double_array_value: Vec<f64>,
    /// Declared string_array_value; canonical bounds are part of CODEC_IDENTITY.
    pub string_array_value: Vec<String>,
}
impl Default for Ros2Rcl_interfacesMsgParameterValue {
    fn default() -> Self {
        Self {
            r#type: Default::default(),
            bool_value: Default::default(),
            integer_value: Default::default(),
            double_value: Default::default(),
            string_value: Default::default(),
            byte_array_value: Default::default(),
            bool_array_value: Default::default(),
            integer_array_value: Default::default(),
            double_array_value: Default::default(),
            string_array_value: Default::default(),
        }
    }
}
impl Ros2Rcl_interfacesMsgParameterValue {
    pub const MAX_WIRE_BYTES: usize = 586;
    pub const CARTESIAN_WIRE_BYTES: u64 = 586;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_9223e3451b8e8ac3ce5c15e8de6fe2dc56fc7cb7fed9f13b81ac6a2d6416339d";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 8)?;
        if !self.double_value.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 8)?;
        if self.string_value.len() > 128 || self.string_value.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.string_value.len())?;
        if self.byte_array_value.len() > 8 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.byte_array_value {
            n = add_size(n, 1)?;
        }
        if self.bool_array_value.len() > 8 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.bool_array_value {
            n = add_size(n, 1)?;
        }
        if self.integer_array_value.len() > 8 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.integer_array_value {
            n = add_size(n, 8)?;
        }
        if self.double_array_value.len() > 8 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.double_array_value {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 8)?;
        }
        if self.string_array_value.len() > 4 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.string_array_value {
            if element.len() > 64 || element.as_bytes().contains(&0) {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
            n = add_size(n, element.len())?;
        }
        if n > 586 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.r#type.to_le_bytes());
        put(out, at, &[u8::from(self.bool_value)]);
        put(out, at, &self.integer_value.to_le_bytes());
        put(out, at, &self.double_value.to_le_bytes());
        put(out, at, &(self.string_value.len() as u32).to_le_bytes());
        put(out, at, self.string_value.as_bytes());
        put(out, at, &(self.byte_array_value.len() as u32).to_le_bytes());
        for element in &self.byte_array_value {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &(self.bool_array_value.len() as u32).to_le_bytes());
        for element in &self.bool_array_value {
            put(out, at, &[u8::from(*element)]);
        }
        put(
            out,
            at,
            &(self.integer_array_value.len() as u32).to_le_bytes(),
        );
        for element in &self.integer_array_value {
            put(out, at, &element.to_le_bytes());
        }
        put(
            out,
            at,
            &(self.double_array_value.len() as u32).to_le_bytes(),
        );
        for element in &self.double_array_value {
            put(out, at, &element.to_le_bytes());
        }
        put(
            out,
            at,
            &(self.string_array_value.len() as u32).to_le_bytes(),
        );
        for element in &self.string_array_value {
            put(out, at, &(element.len() as u32).to_le_bytes());
            put(out, at, element.as_bytes());
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.r#type = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.bool_value = decoded;
        let decoded = i64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        value.integer_value = decoded;
        let decoded = f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.double_value = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.string_value = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 8 {
                return Err(invalid());
            }
            value.byte_array_value = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
                value.byte_array_value.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 8 {
                return Err(invalid());
            }
            value.bool_array_value = Vec::with_capacity(count);
            for i in 0..count {
                let byte = take(bytes, at, 1)?[0];
                if byte > 1 {
                    return Err(invalid());
                }
                let decoded = byte != 0;
                value.bool_array_value.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 8 {
                return Err(invalid());
            }
            value.integer_array_value = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    i64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                value.integer_array_value.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 8 {
                return Err(invalid());
            }
            value.double_array_value = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.double_array_value.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 4 {
                return Err(invalid());
            }
            value.string_array_value = Vec::with_capacity(count);
            for i in 0..count {
                let size = read_count(bytes, at)?;
                if size > 64 {
                    return Err(invalid());
                }
                let raw = take(bytes, at, size)?;
                if raw.contains(&0) {
                    return Err(invalid());
                }
                let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
                value.string_array_value.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Rcl_interfacesMsgParameterValue {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 586 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 42 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS2 rcl_interfaces/msg/Parameter.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Rcl_interfacesMsgParameter {
    /// Declared name; canonical bounds are part of CODEC_IDENTITY.
    pub name: String,
    /// Declared value; canonical bounds are part of CODEC_IDENTITY.
    pub value: Ros2Rcl_interfacesMsgParameterValue,
}
impl Default for Ros2Rcl_interfacesMsgParameter {
    fn default() -> Self {
        Self {
            name: Default::default(),
            value: Default::default(),
        }
    }
}
impl Ros2Rcl_interfacesMsgParameter {
    pub const MAX_WIRE_BYTES: usize = 654;
    pub const CARTESIAN_WIRE_BYTES: u64 = 654;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_222fd9eb45b6431985d98738b1b99c57e38d1aa3c81fde5df09277e92348d5c0";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.name.len() > 64 || self.name.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.name.len())?;
        n = add_size(n, self.value.wire_size()?)?;
        if n > 654 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
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
        self.value.write_fields(out, at);
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
        value.name = decoded;
        let decoded = Ros2Rcl_interfacesMsgParameterValue::read_fields(bytes, at)?;
        value.value = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Rcl_interfacesMsgParameter {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 654 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 46 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS2 rcl_interfaces/msg/ParameterDescriptor.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Rcl_interfacesMsgParameterDescriptor {
    /// Declared name; canonical bounds are part of CODEC_IDENTITY.
    pub name: String,
    /// Declared type; canonical bounds are part of CODEC_IDENTITY.
    pub r#type: u8,
    /// Declared description; canonical bounds are part of CODEC_IDENTITY.
    pub description: String,
    /// Declared additional_constraints; canonical bounds are part of CODEC_IDENTITY.
    pub additional_constraints: String,
    /// Declared read_only; canonical bounds are part of CODEC_IDENTITY.
    pub read_only: bool,
    /// Declared dynamic_typing; canonical bounds are part of CODEC_IDENTITY.
    pub dynamic_typing: bool,
    /// Declared floating_point_range; canonical bounds are part of CODEC_IDENTITY.
    pub floating_point_range: Vec<Ros2Rcl_interfacesMsgFloatingPointRange>,
    /// Declared integer_range; canonical bounds are part of CODEC_IDENTITY.
    pub integer_range: Vec<Ros2Rcl_interfacesMsgIntegerRange>,
}
impl Default for Ros2Rcl_interfacesMsgParameterDescriptor {
    fn default() -> Self {
        Self {
            name: Default::default(),
            r#type: Default::default(),
            description: Default::default(),
            additional_constraints: Default::default(),
            read_only: false,
            dynamic_typing: false,
            floating_point_range: Default::default(),
            integer_range: Default::default(),
        }
    }
}
impl Ros2Rcl_interfacesMsgParameterDescriptor {
    pub const MAX_WIRE_BYTES: usize = 391;
    pub const CARTESIAN_WIRE_BYTES: u64 = 391;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_1aec1cbba6708aebb4c296ff91dffd40d1a2fb95b1b2cb11c12f3988de904237";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.name.len() > 64 || self.name.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.name.len())?;
        n = add_size(n, 1)?;
        if self.description.len() > 128 || self.description.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.description.len())?;
        if self.additional_constraints.len() > 128
            || self.additional_constraints.as_bytes().contains(&0)
        {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.additional_constraints.len())?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        if self.floating_point_range.len() > 1 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.floating_point_range {
            n = add_size(n, element.wire_size()?)?;
        }
        if self.integer_range.len() > 1 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.integer_range {
            n = add_size(n, element.wire_size()?)?;
        }
        if n > 391 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
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
        put(out, at, &self.r#type.to_le_bytes());
        put(out, at, &(self.description.len() as u32).to_le_bytes());
        put(out, at, self.description.as_bytes());
        put(
            out,
            at,
            &(self.additional_constraints.len() as u32).to_le_bytes(),
        );
        put(out, at, self.additional_constraints.as_bytes());
        put(out, at, &[u8::from(self.read_only)]);
        put(out, at, &[u8::from(self.dynamic_typing)]);
        put(
            out,
            at,
            &(self.floating_point_range.len() as u32).to_le_bytes(),
        );
        for element in &self.floating_point_range {
            element.write_fields(out, at);
        }
        put(out, at, &(self.integer_range.len() as u32).to_le_bytes());
        for element in &self.integer_range {
            element.write_fields(out, at);
        }
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
        value.name = decoded;
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.r#type = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.description = decoded;
        let size = read_count(bytes, at)?;
        if size > 128 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.additional_constraints = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.read_only = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.dynamic_typing = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 1 {
                return Err(invalid());
            }
            value.floating_point_range = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros2Rcl_interfacesMsgFloatingPointRange::read_fields(bytes, at)?;
                value.floating_point_range.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 1 {
                return Err(invalid());
            }
            value.integer_range = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros2Rcl_interfacesMsgIntegerRange::read_fields(bytes, at)?;
                value.integer_range.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Rcl_interfacesMsgParameterDescriptor {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 391 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 23 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS2 rcl_interfaces/msg/ParameterEvent.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Rcl_interfacesMsgParameterEvent {
    /// Declared stamp; canonical bounds are part of CODEC_IDENTITY.
    pub stamp: Ros2Builtin_interfacesMsgTime,
    /// Declared node; canonical bounds are part of CODEC_IDENTITY.
    pub node: String,
    /// Declared new_parameters; canonical bounds are part of CODEC_IDENTITY.
    pub new_parameters: Vec<Ros2Rcl_interfacesMsgParameter>,
    /// Declared changed_parameters; canonical bounds are part of CODEC_IDENTITY.
    pub changed_parameters: Vec<Ros2Rcl_interfacesMsgParameter>,
    /// Declared deleted_parameters; canonical bounds are part of CODEC_IDENTITY.
    pub deleted_parameters: Vec<Ros2Rcl_interfacesMsgParameter>,
}
impl Default for Ros2Rcl_interfacesMsgParameterEvent {
    fn default() -> Self {
        Self {
            stamp: Default::default(),
            node: Default::default(),
            new_parameters: Default::default(),
            changed_parameters: Default::default(),
            deleted_parameters: Default::default(),
        }
    }
}
impl Ros2Rcl_interfacesMsgParameterEvent {
    pub const MAX_WIRE_BYTES: usize = 7936;
    pub const CARTESIAN_WIRE_BYTES: u64 = 7936;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_234aafc31ea7ecc0ee38760c9aa032b7d5b830d4c506070607d7c2cc82b44284";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.stamp.wire_size()?)?;
        if self.node.len() > 64 || self.node.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.node.len())?;
        if self.new_parameters.len() > 4 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.new_parameters {
            n = add_size(n, element.wire_size()?)?;
        }
        if self.changed_parameters.len() > 4 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.changed_parameters {
            n = add_size(n, element.wire_size()?)?;
        }
        if self.deleted_parameters.len() > 4 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.deleted_parameters {
            n = add_size(n, element.wire_size()?)?;
        }
        if n > 7936 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
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
        put(out, at, &(self.node.len() as u32).to_le_bytes());
        put(out, at, self.node.as_bytes());
        put(out, at, &(self.new_parameters.len() as u32).to_le_bytes());
        for element in &self.new_parameters {
            element.write_fields(out, at);
        }
        put(
            out,
            at,
            &(self.changed_parameters.len() as u32).to_le_bytes(),
        );
        for element in &self.changed_parameters {
            element.write_fields(out, at);
        }
        put(
            out,
            at,
            &(self.deleted_parameters.len() as u32).to_le_bytes(),
        );
        for element in &self.deleted_parameters {
            element.write_fields(out, at);
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Builtin_interfacesMsgTime::read_fields(bytes, at)?;
        value.stamp = decoded;
        let size = read_count(bytes, at)?;
        if size > 64 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.node = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 4 {
                return Err(invalid());
            }
            value.new_parameters = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros2Rcl_interfacesMsgParameter::read_fields(bytes, at)?;
                value.new_parameters.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 4 {
                return Err(invalid());
            }
            value.changed_parameters = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros2Rcl_interfacesMsgParameter::read_fields(bytes, at)?;
                value.changed_parameters.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 4 {
                return Err(invalid());
            }
            value.deleted_parameters = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros2Rcl_interfacesMsgParameter::read_fields(bytes, at)?;
                value.deleted_parameters.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Rcl_interfacesMsgParameterEvent {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 7936 {
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
/// Complete bounded value for ROS2 rcl_interfaces/msg/ParameterType.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Rcl_interfacesMsgParameterType {}
impl Default for Ros2Rcl_interfacesMsgParameterType {
    fn default() -> Self {
        Self {}
    }
}
impl Ros2Rcl_interfacesMsgParameterType {
    /// Original scalar constant; no instance wire bytes.
    pub const PARAMETER_NOT_SET: u8 = 0;
    /// Original scalar constant; no instance wire bytes.
    pub const PARAMETER_BOOL: u8 = 1;
    /// Original scalar constant; no instance wire bytes.
    pub const PARAMETER_INTEGER: u8 = 2;
    /// Original scalar constant; no instance wire bytes.
    pub const PARAMETER_DOUBLE: u8 = 3;
    /// Original scalar constant; no instance wire bytes.
    pub const PARAMETER_STRING: u8 = 4;
    /// Original scalar constant; no instance wire bytes.
    pub const PARAMETER_BYTE_ARRAY: u8 = 5;
    /// Original scalar constant; no instance wire bytes.
    pub const PARAMETER_BOOL_ARRAY: u8 = 6;
    /// Original scalar constant; no instance wire bytes.
    pub const PARAMETER_INTEGER_ARRAY: u8 = 7;
    /// Original scalar constant; no instance wire bytes.
    pub const PARAMETER_DOUBLE_ARRAY: u8 = 8;
    /// Original scalar constant; no instance wire bytes.
    pub const PARAMETER_STRING_ARRAY: u8 = 9;
    pub const MAX_WIRE_BYTES: usize = 0;
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_f5d5cb1ea88689e0df0c790dd22fa41793893b4824d15fd68846fea891a2944b";
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
impl Canonical for Ros2Rcl_interfacesMsgParameterType {
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
/// Complete bounded value for ROS2 rcl_interfaces/msg/SetParametersResult.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Rcl_interfacesMsgSetParametersResult {
    /// Declared successful; canonical bounds are part of CODEC_IDENTITY.
    pub successful: bool,
    /// Declared reason; canonical bounds are part of CODEC_IDENTITY.
    pub reason: String,
}
impl Default for Ros2Rcl_interfacesMsgSetParametersResult {
    fn default() -> Self {
        Self {
            successful: Default::default(),
            reason: Default::default(),
        }
    }
}
impl Ros2Rcl_interfacesMsgSetParametersResult {
    pub const MAX_WIRE_BYTES: usize = 69;
    pub const CARTESIAN_WIRE_BYTES: u64 = 69;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_09808439bc8ae39f863729a61996b47b22393f2c8d6c77a847073693661fbb38";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if self.reason.len() > 64 || self.reason.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.reason.len())?;
        if n > 69 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &[u8::from(self.successful)]);
        put(out, at, &(self.reason.len() as u32).to_le_bytes());
        put(out, at, self.reason.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.successful = decoded;
        let size = read_count(bytes, at)?;
        if size > 64 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.reason = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Rcl_interfacesMsgSetParametersResult {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 69 {
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
/// Complete bounded value for ROS2 rcl_interfaces/srv/DescribeParameters_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Rcl_interfacesSrvDescribeParameters_Request {
    /// Declared names; canonical bounds are part of CODEC_IDENTITY.
    pub names: Vec<String>,
}
impl Default for Ros2Rcl_interfacesSrvDescribeParameters_Request {
    fn default() -> Self {
        Self {
            names: Default::default(),
        }
    }
}
impl Ros2Rcl_interfacesSrvDescribeParameters_Request {
    pub const MAX_WIRE_BYTES: usize = 276;
    pub const CARTESIAN_WIRE_BYTES: u64 = 276;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_dddbc69b70aca67f38610ea108ea382a6b08ac69aef29c2ea4472338839c9658";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.names.len() > 4 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.names {
            if element.len() > 64 || element.as_bytes().contains(&0) {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
            n = add_size(n, element.len())?;
        }
        if n > 276 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.names.len() as u32).to_le_bytes());
        for element in &self.names {
            put(out, at, &(element.len() as u32).to_le_bytes());
            put(out, at, element.as_bytes());
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = read_count(bytes, at)?;
            if count > 4 {
                return Err(invalid());
            }
            value.names = Vec::with_capacity(count);
            for i in 0..count {
                let size = read_count(bytes, at)?;
                if size > 64 {
                    return Err(invalid());
                }
                let raw = take(bytes, at, size)?;
                if raw.contains(&0) {
                    return Err(invalid());
                }
                let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
                value.names.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Rcl_interfacesSrvDescribeParameters_Request {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 276 {
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
/// Complete bounded value for ROS2 rcl_interfaces/srv/DescribeParameters_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Rcl_interfacesSrvDescribeParameters_Response {
    /// Declared descriptors; canonical bounds are part of CODEC_IDENTITY.
    pub descriptors: Vec<Ros2Rcl_interfacesMsgParameterDescriptor>,
}
impl Default for Ros2Rcl_interfacesSrvDescribeParameters_Response {
    fn default() -> Self {
        Self {
            descriptors: Default::default(),
        }
    }
}
impl Ros2Rcl_interfacesSrvDescribeParameters_Response {
    pub const MAX_WIRE_BYTES: usize = 1568;
    pub const CARTESIAN_WIRE_BYTES: u64 = 1568;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_22dce093b6cff5f01961d6db9b90ce1fd364f8cdd948babd38541f1f3aac52f8";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.descriptors.len() > 4 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.descriptors {
            n = add_size(n, element.wire_size()?)?;
        }
        if n > 1568 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.descriptors.len() as u32).to_le_bytes());
        for element in &self.descriptors {
            element.write_fields(out, at);
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = read_count(bytes, at)?;
            if count > 4 {
                return Err(invalid());
            }
            value.descriptors = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros2Rcl_interfacesMsgParameterDescriptor::read_fields(bytes, at)?;
                value.descriptors.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Rcl_interfacesSrvDescribeParameters_Response {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 1568 {
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
/// Complete bounded value for ROS2 rcl_interfaces/srv/GetParameterTypes_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Rcl_interfacesSrvGetParameterTypes_Request {
    /// Declared names; canonical bounds are part of CODEC_IDENTITY.
    pub names: Vec<String>,
}
impl Default for Ros2Rcl_interfacesSrvGetParameterTypes_Request {
    fn default() -> Self {
        Self {
            names: Default::default(),
        }
    }
}
impl Ros2Rcl_interfacesSrvGetParameterTypes_Request {
    pub const MAX_WIRE_BYTES: usize = 276;
    pub const CARTESIAN_WIRE_BYTES: u64 = 276;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_713f380331ac792a1896571aa1658fa9f793e03763e82a5375c6b9da82732f83";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.names.len() > 4 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.names {
            if element.len() > 64 || element.as_bytes().contains(&0) {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
            n = add_size(n, element.len())?;
        }
        if n > 276 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.names.len() as u32).to_le_bytes());
        for element in &self.names {
            put(out, at, &(element.len() as u32).to_le_bytes());
            put(out, at, element.as_bytes());
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = read_count(bytes, at)?;
            if count > 4 {
                return Err(invalid());
            }
            value.names = Vec::with_capacity(count);
            for i in 0..count {
                let size = read_count(bytes, at)?;
                if size > 64 {
                    return Err(invalid());
                }
                let raw = take(bytes, at, size)?;
                if raw.contains(&0) {
                    return Err(invalid());
                }
                let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
                value.names.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Rcl_interfacesSrvGetParameterTypes_Request {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 276 {
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
/// Complete bounded value for ROS2 rcl_interfaces/srv/GetParameterTypes_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Rcl_interfacesSrvGetParameterTypes_Response {
    /// Declared types; canonical bounds are part of CODEC_IDENTITY.
    pub types: Vec<u8>,
}
impl Default for Ros2Rcl_interfacesSrvGetParameterTypes_Response {
    fn default() -> Self {
        Self {
            types: Default::default(),
        }
    }
}
impl Ros2Rcl_interfacesSrvGetParameterTypes_Response {
    pub const MAX_WIRE_BYTES: usize = 8;
    pub const CARTESIAN_WIRE_BYTES: u64 = 8;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_18751466187aca00ecfc85aca81f42820fd81bf14225eb0cafc82f8654c534bd";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.types.len() > 4 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.types {
            n = add_size(n, 1)?;
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
        put(out, at, &(self.types.len() as u32).to_le_bytes());
        for element in &self.types {
            put(out, at, &element.to_le_bytes());
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = read_count(bytes, at)?;
            if count > 4 {
                return Err(invalid());
            }
            value.types = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
                value.types.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Rcl_interfacesSrvGetParameterTypes_Response {
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
/// Complete bounded value for ROS2 rcl_interfaces/srv/GetParameters_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Rcl_interfacesSrvGetParameters_Request {
    /// Declared names; canonical bounds are part of CODEC_IDENTITY.
    pub names: Vec<String>,
}
impl Default for Ros2Rcl_interfacesSrvGetParameters_Request {
    fn default() -> Self {
        Self {
            names: Default::default(),
        }
    }
}
impl Ros2Rcl_interfacesSrvGetParameters_Request {
    pub const MAX_WIRE_BYTES: usize = 276;
    pub const CARTESIAN_WIRE_BYTES: u64 = 276;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_312a66b51a135aee6e9b4af53cbd37d24995e906043b41025a9629edbd54ef5c";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.names.len() > 4 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.names {
            if element.len() > 64 || element.as_bytes().contains(&0) {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
            n = add_size(n, element.len())?;
        }
        if n > 276 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.names.len() as u32).to_le_bytes());
        for element in &self.names {
            put(out, at, &(element.len() as u32).to_le_bytes());
            put(out, at, element.as_bytes());
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = read_count(bytes, at)?;
            if count > 4 {
                return Err(invalid());
            }
            value.names = Vec::with_capacity(count);
            for i in 0..count {
                let size = read_count(bytes, at)?;
                if size > 64 {
                    return Err(invalid());
                }
                let raw = take(bytes, at, size)?;
                if raw.contains(&0) {
                    return Err(invalid());
                }
                let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
                value.names.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Rcl_interfacesSrvGetParameters_Request {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 276 {
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
/// Complete bounded value for ROS2 rcl_interfaces/srv/GetParameters_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Rcl_interfacesSrvGetParameters_Response {
    /// Declared values; canonical bounds are part of CODEC_IDENTITY.
    pub values: Vec<Ros2Rcl_interfacesMsgParameterValue>,
}
impl Default for Ros2Rcl_interfacesSrvGetParameters_Response {
    fn default() -> Self {
        Self {
            values: Default::default(),
        }
    }
}
impl Ros2Rcl_interfacesSrvGetParameters_Response {
    pub const MAX_WIRE_BYTES: usize = 2348;
    pub const CARTESIAN_WIRE_BYTES: u64 = 2348;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_b82ca830d53480ac8e7b0eb8d0402a06e2465f83a70d92f0ebe7c8e32ce296a5";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.values.len() > 4 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.values {
            n = add_size(n, element.wire_size()?)?;
        }
        if n > 2348 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.values.len() as u32).to_le_bytes());
        for element in &self.values {
            element.write_fields(out, at);
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = read_count(bytes, at)?;
            if count > 4 {
                return Err(invalid());
            }
            value.values = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros2Rcl_interfacesMsgParameterValue::read_fields(bytes, at)?;
                value.values.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Rcl_interfacesSrvGetParameters_Response {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 2348 {
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
/// Complete bounded value for ROS2 rcl_interfaces/srv/ListParameters_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Rcl_interfacesSrvListParameters_Request {
    /// Declared prefixes; canonical bounds are part of CODEC_IDENTITY.
    pub prefixes: Vec<String>,
    /// Declared depth; canonical bounds are part of CODEC_IDENTITY.
    pub depth: u64,
}
impl Default for Ros2Rcl_interfacesSrvListParameters_Request {
    fn default() -> Self {
        Self {
            prefixes: Default::default(),
            depth: Default::default(),
        }
    }
}
impl Ros2Rcl_interfacesSrvListParameters_Request {
    /// Original scalar constant; no instance wire bytes.
    pub const DEPTH_RECURSIVE: u64 = 0;
    pub const MAX_WIRE_BYTES: usize = 284;
    pub const CARTESIAN_WIRE_BYTES: u64 = 284;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_dd2dbb6a706cf27ca25359f92f72e52662f5b4ba6d014ade65448b8f798d29b7";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.prefixes.len() > 4 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.prefixes {
            if element.len() > 64 || element.as_bytes().contains(&0) {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
            n = add_size(n, element.len())?;
        }
        n = add_size(n, 8)?;
        if n > 284 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.prefixes.len() as u32).to_le_bytes());
        for element in &self.prefixes {
            put(out, at, &(element.len() as u32).to_le_bytes());
            put(out, at, element.as_bytes());
        }
        put(out, at, &self.depth.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = read_count(bytes, at)?;
            if count > 4 {
                return Err(invalid());
            }
            value.prefixes = Vec::with_capacity(count);
            for i in 0..count {
                let size = read_count(bytes, at)?;
                if size > 64 {
                    return Err(invalid());
                }
                let raw = take(bytes, at, size)?;
                if raw.contains(&0) {
                    return Err(invalid());
                }
                let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
                value.prefixes.push(decoded);
            }
        }
        let decoded = u64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        value.depth = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Rcl_interfacesSrvListParameters_Request {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 284 {
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
/// Complete bounded value for ROS2 rcl_interfaces/srv/ListParameters_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Rcl_interfacesSrvListParameters_Response {
    /// Declared result; canonical bounds are part of CODEC_IDENTITY.
    pub result: Ros2Rcl_interfacesMsgListParametersResult,
}
impl Default for Ros2Rcl_interfacesSrvListParameters_Response {
    fn default() -> Self {
        Self {
            result: Default::default(),
        }
    }
}
impl Ros2Rcl_interfacesSrvListParameters_Response {
    pub const MAX_WIRE_BYTES: usize = 552;
    pub const CARTESIAN_WIRE_BYTES: u64 = 552;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_f0244d9251e42db1392e9196aaf76b6917e09a8b71550009e21a6d4b347990d4";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.result.wire_size()?)?;
        if n > 552 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.result.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Rcl_interfacesMsgListParametersResult::read_fields(bytes, at)?;
        value.result = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Rcl_interfacesSrvListParameters_Response {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 552 {
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
/// Complete bounded value for ROS2 rcl_interfaces/srv/SetParameters_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Rcl_interfacesSrvSetParameters_Request {
    /// Declared parameters; canonical bounds are part of CODEC_IDENTITY.
    pub parameters: Vec<Ros2Rcl_interfacesMsgParameter>,
}
impl Default for Ros2Rcl_interfacesSrvSetParameters_Request {
    fn default() -> Self {
        Self {
            parameters: Default::default(),
        }
    }
}
impl Ros2Rcl_interfacesSrvSetParameters_Request {
    pub const MAX_WIRE_BYTES: usize = 2620;
    pub const CARTESIAN_WIRE_BYTES: u64 = 2620;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_7f5644145f1be5b2f62829d4af35724839a2c0b8544a29afea980f3ee2e141c2";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.parameters.len() > 4 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.parameters {
            n = add_size(n, element.wire_size()?)?;
        }
        if n > 2620 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.parameters.len() as u32).to_le_bytes());
        for element in &self.parameters {
            element.write_fields(out, at);
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = read_count(bytes, at)?;
            if count > 4 {
                return Err(invalid());
            }
            value.parameters = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros2Rcl_interfacesMsgParameter::read_fields(bytes, at)?;
                value.parameters.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Rcl_interfacesSrvSetParameters_Request {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 2620 {
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
/// Complete bounded value for ROS2 rcl_interfaces/srv/SetParameters_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Rcl_interfacesSrvSetParameters_Response {
    /// Declared results; canonical bounds are part of CODEC_IDENTITY.
    pub results: Vec<Ros2Rcl_interfacesMsgSetParametersResult>,
}
impl Default for Ros2Rcl_interfacesSrvSetParameters_Response {
    fn default() -> Self {
        Self {
            results: Default::default(),
        }
    }
}
impl Ros2Rcl_interfacesSrvSetParameters_Response {
    pub const MAX_WIRE_BYTES: usize = 280;
    pub const CARTESIAN_WIRE_BYTES: u64 = 280;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_154f8d19d84344ab52ea0e27ad90bfcaf1713e9a7f5ec77249e63f5a207389f0";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.results.len() > 4 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.results {
            n = add_size(n, element.wire_size()?)?;
        }
        if n > 280 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.results.len() as u32).to_le_bytes());
        for element in &self.results {
            element.write_fields(out, at);
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = read_count(bytes, at)?;
            if count > 4 {
                return Err(invalid());
            }
            value.results = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros2Rcl_interfacesMsgSetParametersResult::read_fields(bytes, at)?;
                value.results.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Rcl_interfacesSrvSetParameters_Response {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 280 {
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
/// Complete bounded value for ROS2 rcl_interfaces/srv/SetParametersAtomically_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Rcl_interfacesSrvSetParametersAtomically_Request {
    /// Declared parameters; canonical bounds are part of CODEC_IDENTITY.
    pub parameters: Vec<Ros2Rcl_interfacesMsgParameter>,
}
impl Default for Ros2Rcl_interfacesSrvSetParametersAtomically_Request {
    fn default() -> Self {
        Self {
            parameters: Default::default(),
        }
    }
}
impl Ros2Rcl_interfacesSrvSetParametersAtomically_Request {
    pub const MAX_WIRE_BYTES: usize = 2620;
    pub const CARTESIAN_WIRE_BYTES: u64 = 2620;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_a30dca05c236d4c4d9e7ac5ae4c17bfd933918fac10e94d7c4dadce1be32affb";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.parameters.len() > 4 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.parameters {
            n = add_size(n, element.wire_size()?)?;
        }
        if n > 2620 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.parameters.len() as u32).to_le_bytes());
        for element in &self.parameters {
            element.write_fields(out, at);
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = read_count(bytes, at)?;
            if count > 4 {
                return Err(invalid());
            }
            value.parameters = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros2Rcl_interfacesMsgParameter::read_fields(bytes, at)?;
                value.parameters.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Rcl_interfacesSrvSetParametersAtomically_Request {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 2620 {
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
/// Complete bounded value for ROS2 rcl_interfaces/srv/SetParametersAtomically_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Rcl_interfacesSrvSetParametersAtomically_Response {
    /// Declared result; canonical bounds are part of CODEC_IDENTITY.
    pub result: Ros2Rcl_interfacesMsgSetParametersResult,
}
impl Default for Ros2Rcl_interfacesSrvSetParametersAtomically_Response {
    fn default() -> Self {
        Self {
            result: Default::default(),
        }
    }
}
impl Ros2Rcl_interfacesSrvSetParametersAtomically_Response {
    pub const MAX_WIRE_BYTES: usize = 69;
    pub const CARTESIAN_WIRE_BYTES: u64 = 69;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_633908baf035e4a888852638d101dcdaf68eaa2123fff82a913eed7c59190723";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.result.wire_size()?)?;
        if n > 69 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.result.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros2Rcl_interfacesMsgSetParametersResult::read_fields(bytes, at)?;
        value.result = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Rcl_interfacesSrvSetParametersAtomically_Response {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 69 {
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
/// Complete bounded value for ROS2 service_msgs/msg/ServiceEventInfo.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Service_msgsMsgServiceEventInfo {
    /// Declared event_type; canonical bounds are part of CODEC_IDENTITY.
    pub event_type: u8,
    /// Declared stamp; canonical bounds are part of CODEC_IDENTITY.
    pub stamp: Ros2Builtin_interfacesMsgTime,
    /// Declared client_gid; canonical bounds are part of CODEC_IDENTITY.
    pub client_gid: [u8; 16],
    /// Declared sequence_number; canonical bounds are part of CODEC_IDENTITY.
    pub sequence_number: i64,
}
impl Default for Ros2Service_msgsMsgServiceEventInfo {
    fn default() -> Self {
        Self {
            event_type: Default::default(),
            stamp: Default::default(),
            client_gid: core::array::from_fn(|_| Default::default()),
            sequence_number: Default::default(),
        }
    }
}
impl Ros2Service_msgsMsgServiceEventInfo {
    /// Original scalar constant; no instance wire bytes.
    pub const REQUEST_SENT: u8 = 0;
    /// Original scalar constant; no instance wire bytes.
    pub const REQUEST_RECEIVED: u8 = 1;
    /// Original scalar constant; no instance wire bytes.
    pub const RESPONSE_SENT: u8 = 2;
    /// Original scalar constant; no instance wire bytes.
    pub const RESPONSE_RECEIVED: u8 = 3;
    pub const MAX_WIRE_BYTES: usize = 33;
    pub const CARTESIAN_WIRE_BYTES: u64 = 33;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_a08155ec7b852e247725749884731fc33115e653169db9ae89db79d955c0f9a2";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        n = add_size(n, self.stamp.wire_size()?)?;
        for element in &self.client_gid {
            n = add_size(n, 1)?;
        }
        n = add_size(n, 8)?;
        if n > 33 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.event_type.to_le_bytes());
        self.stamp.write_fields(out, at);
        for element in &self.client_gid {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.sequence_number.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.event_type = decoded;
        let decoded = Ros2Builtin_interfacesMsgTime::read_fields(bytes, at)?;
        value.stamp = decoded;
        {
            let count = 16usize;
            if count > 16 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
                value.client_gid[i] = decoded;
            }
        }
        let decoded = i64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        value.sequence_number = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Service_msgsMsgServiceEventInfo {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 33 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 33 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS2 type_description_interfaces/msg/FieldType.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Type_description_interfacesMsgFieldType {
    /// Declared type_id; canonical bounds are part of CODEC_IDENTITY.
    pub type_id: u8,
    /// Declared capacity; canonical bounds are part of CODEC_IDENTITY.
    pub capacity: u64,
    /// Declared string_capacity; canonical bounds are part of CODEC_IDENTITY.
    pub string_capacity: u64,
    /// Declared nested_type_name; canonical bounds are part of CODEC_IDENTITY.
    pub nested_type_name: String,
}
impl Default for Ros2Type_description_interfacesMsgFieldType {
    fn default() -> Self {
        Self {
            type_id: 0,
            capacity: Default::default(),
            string_capacity: Default::default(),
            nested_type_name: Default::default(),
        }
    }
}
impl Ros2Type_description_interfacesMsgFieldType {
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_NOT_SET: u8 = 0;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_NESTED_TYPE: u8 = 1;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_INT8: u8 = 2;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_UINT8: u8 = 3;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_INT16: u8 = 4;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_UINT16: u8 = 5;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_INT32: u8 = 6;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_UINT32: u8 = 7;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_INT64: u8 = 8;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_UINT64: u8 = 9;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_FLOAT: u8 = 10;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_DOUBLE: u8 = 11;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_LONG_DOUBLE: u8 = 12;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_CHAR: u8 = 13;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_WCHAR: u8 = 14;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_BOOLEAN: u8 = 15;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_BYTE: u8 = 16;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_STRING: u8 = 17;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_WSTRING: u8 = 18;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_FIXED_STRING: u8 = 19;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_FIXED_WSTRING: u8 = 20;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_BOUNDED_STRING: u8 = 21;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_BOUNDED_WSTRING: u8 = 22;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_NESTED_TYPE_ARRAY: u8 = 49;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_INT8_ARRAY: u8 = 50;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_UINT8_ARRAY: u8 = 51;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_INT16_ARRAY: u8 = 52;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_UINT16_ARRAY: u8 = 53;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_INT32_ARRAY: u8 = 54;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_UINT32_ARRAY: u8 = 55;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_INT64_ARRAY: u8 = 56;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_UINT64_ARRAY: u8 = 57;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_FLOAT_ARRAY: u8 = 58;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_DOUBLE_ARRAY: u8 = 59;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_LONG_DOUBLE_ARRAY: u8 = 60;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_CHAR_ARRAY: u8 = 61;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_WCHAR_ARRAY: u8 = 62;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_BOOLEAN_ARRAY: u8 = 63;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_BYTE_ARRAY: u8 = 64;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_STRING_ARRAY: u8 = 65;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_WSTRING_ARRAY: u8 = 66;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_FIXED_STRING_ARRAY: u8 = 67;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_FIXED_WSTRING_ARRAY: u8 = 68;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_BOUNDED_STRING_ARRAY: u8 = 69;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_BOUNDED_WSTRING_ARRAY: u8 = 70;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_NESTED_TYPE_BOUNDED_SEQUENCE: u8 = 97;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_INT8_BOUNDED_SEQUENCE: u8 = 98;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_UINT8_BOUNDED_SEQUENCE: u8 = 99;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_INT16_BOUNDED_SEQUENCE: u8 = 100;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_UINT16_BOUNDED_SEQUENCE: u8 = 101;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_INT32_BOUNDED_SEQUENCE: u8 = 102;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_UINT32_BOUNDED_SEQUENCE: u8 = 103;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_INT64_BOUNDED_SEQUENCE: u8 = 104;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_UINT64_BOUNDED_SEQUENCE: u8 = 105;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_FLOAT_BOUNDED_SEQUENCE: u8 = 106;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_DOUBLE_BOUNDED_SEQUENCE: u8 = 107;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_LONG_DOUBLE_BOUNDED_SEQUENCE: u8 = 108;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_CHAR_BOUNDED_SEQUENCE: u8 = 109;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_WCHAR_BOUNDED_SEQUENCE: u8 = 110;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_BOOLEAN_BOUNDED_SEQUENCE: u8 = 111;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_BYTE_BOUNDED_SEQUENCE: u8 = 112;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_STRING_BOUNDED_SEQUENCE: u8 = 113;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_WSTRING_BOUNDED_SEQUENCE: u8 = 114;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_FIXED_STRING_BOUNDED_SEQUENCE: u8 = 115;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_FIXED_WSTRING_BOUNDED_SEQUENCE: u8 = 116;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_BOUNDED_STRING_BOUNDED_SEQUENCE: u8 = 117;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_BOUNDED_WSTRING_BOUNDED_SEQUENCE: u8 = 118;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_NESTED_TYPE_UNBOUNDED_SEQUENCE: u8 = 145;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_INT8_UNBOUNDED_SEQUENCE: u8 = 146;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_UINT8_UNBOUNDED_SEQUENCE: u8 = 147;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_INT16_UNBOUNDED_SEQUENCE: u8 = 148;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_UINT16_UNBOUNDED_SEQUENCE: u8 = 149;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_INT32_UNBOUNDED_SEQUENCE: u8 = 150;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_UINT32_UNBOUNDED_SEQUENCE: u8 = 151;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_INT64_UNBOUNDED_SEQUENCE: u8 = 152;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_UINT64_UNBOUNDED_SEQUENCE: u8 = 153;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_FLOAT_UNBOUNDED_SEQUENCE: u8 = 154;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_DOUBLE_UNBOUNDED_SEQUENCE: u8 = 155;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_LONG_DOUBLE_UNBOUNDED_SEQUENCE: u8 = 156;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_CHAR_UNBOUNDED_SEQUENCE: u8 = 157;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_WCHAR_UNBOUNDED_SEQUENCE: u8 = 158;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_BOOLEAN_UNBOUNDED_SEQUENCE: u8 = 159;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_BYTE_UNBOUNDED_SEQUENCE: u8 = 160;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_STRING_UNBOUNDED_SEQUENCE: u8 = 161;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_WSTRING_UNBOUNDED_SEQUENCE: u8 = 162;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_FIXED_STRING_UNBOUNDED_SEQUENCE: u8 = 163;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_FIXED_WSTRING_UNBOUNDED_SEQUENCE: u8 = 164;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_BOUNDED_STRING_UNBOUNDED_SEQUENCE: u8 = 165;
    /// Original scalar constant; no instance wire bytes.
    pub const FIELD_TYPE_BOUNDED_WSTRING_UNBOUNDED_SEQUENCE: u8 = 166;
    pub const MAX_WIRE_BYTES: usize = 276;
    pub const CARTESIAN_WIRE_BYTES: u64 = 276;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_978131094cb5f797e10477b22e414f50f74b637172b07a1638d3da2d778f6e4c";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        n = add_size(n, 8)?;
        n = add_size(n, 8)?;
        if self.nested_type_name.len() > 255 || self.nested_type_name.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.nested_type_name.len())?;
        if n > 276 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.type_id.to_le_bytes());
        put(out, at, &self.capacity.to_le_bytes());
        put(out, at, &self.string_capacity.to_le_bytes());
        put(out, at, &(self.nested_type_name.len() as u32).to_le_bytes());
        put(out, at, self.nested_type_name.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = u8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.type_id = decoded;
        let decoded = u64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        value.capacity = decoded;
        let decoded = u64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
        value.string_capacity = decoded;
        let size = read_count(bytes, at)?;
        if size > 255 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.nested_type_name = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Type_description_interfacesMsgFieldType {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 276 {
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
/// Complete bounded value for ROS2 type_description_interfaces/msg/Field.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Type_description_interfacesMsgField {
    /// Declared name; canonical bounds are part of CODEC_IDENTITY.
    pub name: String,
    /// Declared type; canonical bounds are part of CODEC_IDENTITY.
    pub r#type: Ros2Type_description_interfacesMsgFieldType,
    /// Declared default_value; canonical bounds are part of CODEC_IDENTITY.
    pub default_value: String,
}
impl Default for Ros2Type_description_interfacesMsgField {
    fn default() -> Self {
        Self {
            name: Default::default(),
            r#type: Default::default(),
            default_value: Default::default(),
        }
    }
}
impl Ros2Type_description_interfacesMsgField {
    pub const MAX_WIRE_BYTES: usize = 412;
    pub const CARTESIAN_WIRE_BYTES: u64 = 412;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_617c204be5cc73f41a2d525e3941661ee23fa110d616678b26a0109fd9e7af4b";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.name.len() > 64 || self.name.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.name.len())?;
        n = add_size(n, self.r#type.wire_size()?)?;
        if self.default_value.len() > 64 || self.default_value.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.default_value.len())?;
        if n > 412 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
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
        self.r#type.write_fields(out, at);
        put(out, at, &(self.default_value.len() as u32).to_le_bytes());
        put(out, at, self.default_value.as_bytes());
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
        value.name = decoded;
        let decoded = Ros2Type_description_interfacesMsgFieldType::read_fields(bytes, at)?;
        value.r#type = decoded;
        let size = read_count(bytes, at)?;
        if size > 64 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.default_value = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Type_description_interfacesMsgField {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 412 {
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
/// Complete bounded value for ROS2 type_description_interfaces/msg/IndividualTypeDescription.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Type_description_interfacesMsgIndividualTypeDescription {
    /// Declared type_name; canonical bounds are part of CODEC_IDENTITY.
    pub type_name: String,
    /// Declared fields; canonical bounds are part of CODEC_IDENTITY.
    pub fields: Vec<Ros2Type_description_interfacesMsgField>,
}
impl Default for Ros2Type_description_interfacesMsgIndividualTypeDescription {
    fn default() -> Self {
        Self {
            type_name: Default::default(),
            fields: Default::default(),
        }
    }
}
impl Ros2Type_description_interfacesMsgIndividualTypeDescription {
    pub const MAX_WIRE_BYTES: usize = 4383;
    pub const CARTESIAN_WIRE_BYTES: u64 = 4383;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_a5129b94ade973fb9656c8ca45901260d19cdb0230171296b1c99610f5184e28";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.type_name.len() > 255 || self.type_name.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.type_name.len())?;
        if self.fields.len() > 10 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.fields {
            n = add_size(n, element.wire_size()?)?;
        }
        if n > 4383 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.type_name.len() as u32).to_le_bytes());
        put(out, at, self.type_name.as_bytes());
        put(out, at, &(self.fields.len() as u32).to_le_bytes());
        for element in &self.fields {
            element.write_fields(out, at);
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let size = read_count(bytes, at)?;
        if size > 255 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.type_name = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 10 {
                return Err(invalid());
            }
            value.fields = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros2Type_description_interfacesMsgField::read_fields(bytes, at)?;
                value.fields.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Type_description_interfacesMsgIndividualTypeDescription {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 4383 {
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
/// Complete bounded value for ROS2 type_description_interfaces/msg/KeyValue.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Type_description_interfacesMsgKeyValue {
    /// Declared key; canonical bounds are part of CODEC_IDENTITY.
    pub key: String,
    /// Declared value; canonical bounds are part of CODEC_IDENTITY.
    pub value: String,
}
impl Default for Ros2Type_description_interfacesMsgKeyValue {
    fn default() -> Self {
        Self {
            key: Default::default(),
            value: Default::default(),
        }
    }
}
impl Ros2Type_description_interfacesMsgKeyValue {
    pub const MAX_WIRE_BYTES: usize = 136;
    pub const CARTESIAN_WIRE_BYTES: u64 = 136;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_676ea3d9a3edd8dc8f03995f70b38aba58f7cb7a2aa88032fc5cc42434805cd1";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.key.len() > 64 || self.key.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.key.len())?;
        if self.value.len() > 64 || self.value.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.value.len())?;
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
        put(out, at, &(self.key.len() as u32).to_le_bytes());
        put(out, at, self.key.as_bytes());
        put(out, at, &(self.value.len() as u32).to_le_bytes());
        put(out, at, self.value.as_bytes());
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
        value.key = decoded;
        let size = read_count(bytes, at)?;
        if size > 64 {
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
impl Canonical for Ros2Type_description_interfacesMsgKeyValue {
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
/// Complete bounded value for ROS2 type_description_interfaces/msg/TypeDescription.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Type_description_interfacesMsgTypeDescription {
    /// Declared type_description; canonical bounds are part of CODEC_IDENTITY.
    pub type_description: Ros2Type_description_interfacesMsgIndividualTypeDescription,
    /// Declared referenced_type_descriptions; canonical bounds are part of CODEC_IDENTITY.
    pub referenced_type_descriptions:
        Vec<Ros2Type_description_interfacesMsgIndividualTypeDescription>,
}
impl Default for Ros2Type_description_interfacesMsgTypeDescription {
    fn default() -> Self {
        Self {
            type_description: Default::default(),
            referenced_type_descriptions: Default::default(),
        }
    }
}
impl Ros2Type_description_interfacesMsgTypeDescription {
    pub const MAX_WIRE_BYTES: usize = 32768;
    pub const CARTESIAN_WIRE_BYTES: u64 = 52600;
    pub const AGGREGATE_WIRE_BYTES: usize = 32768;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_f35cedb1e1e028a0a2d6a06deb855abfda2198e4b0e5f9cb30e91dc7aa67e5c5";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.type_description.wire_size()?)?;
        if self.referenced_type_descriptions.len() > 11 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.referenced_type_descriptions {
            n = add_size(n, element.wire_size()?)?;
        }
        if n > 32768 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.type_description.write_fields(out, at);
        put(
            out,
            at,
            &(self.referenced_type_descriptions.len() as u32).to_le_bytes(),
        );
        for element in &self.referenced_type_descriptions {
            element.write_fields(out, at);
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded =
            Ros2Type_description_interfacesMsgIndividualTypeDescription::read_fields(bytes, at)?;
        value.type_description = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 11 {
                return Err(invalid());
            }
            value.referenced_type_descriptions = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    Ros2Type_description_interfacesMsgIndividualTypeDescription::read_fields(
                        bytes, at,
                    )?;
                value.referenced_type_descriptions.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Type_description_interfacesMsgTypeDescription {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 32768 {
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
/// Complete bounded value for ROS2 type_description_interfaces/msg/TypeSource.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Type_description_interfacesMsgTypeSource {
    /// Declared type_name; canonical bounds are part of CODEC_IDENTITY.
    pub type_name: String,
    /// Declared encoding; canonical bounds are part of CODEC_IDENTITY.
    pub encoding: String,
    /// Declared raw_file_contents; canonical bounds are part of CODEC_IDENTITY.
    pub raw_file_contents: Vec<u8>,
}
impl Default for Ros2Type_description_interfacesMsgTypeSource {
    fn default() -> Self {
        Self {
            type_name: Default::default(),
            encoding: Default::default(),
            raw_file_contents: Default::default(),
        }
    }
}
impl Ros2Type_description_interfacesMsgTypeSource {
    pub const MAX_WIRE_BYTES: usize = 6445;
    pub const CARTESIAN_WIRE_BYTES: u64 = 6445;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_6c347cfd8356a7905e71b51841c056ef9ac4dd11e930acf26d7e5b911f27aa0e";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.type_name.len() > 255 || self.type_name.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.type_name.len())?;
        if self.encoding.len() > 16 || self.encoding.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.encoding.len())?;
        if self.raw_file_contents.len() > 6162 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.raw_file_contents.len())?;
        if n > 6445 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.type_name.len() as u32).to_le_bytes());
        put(out, at, self.type_name.as_bytes());
        put(out, at, &(self.encoding.len() as u32).to_le_bytes());
        put(out, at, self.encoding.as_bytes());
        put(
            out,
            at,
            &(self.raw_file_contents.len() as u32).to_le_bytes(),
        );
        put(out, at, self.raw_file_contents.as_slice());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let size = read_count(bytes, at)?;
        if size > 255 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.type_name = decoded;
        let size = read_count(bytes, at)?;
        if size > 16 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.encoding = decoded;
        let size = read_count(bytes, at)?;
        if size > 6162 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        let decoded = raw.to_vec();
        value.raw_file_contents = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Type_description_interfacesMsgTypeSource {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 6445 {
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
/// Complete bounded value for ROS2 type_description_interfaces/srv/GetTypeDescription_Request.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Type_description_interfacesSrvGetTypeDescription_Request {
    /// Declared type_name; canonical bounds are part of CODEC_IDENTITY.
    pub type_name: String,
    /// Declared type_hash; canonical bounds are part of CODEC_IDENTITY.
    pub type_hash: String,
    /// Declared include_type_sources; canonical bounds are part of CODEC_IDENTITY.
    pub include_type_sources: bool,
}
impl Default for Ros2Type_description_interfacesSrvGetTypeDescription_Request {
    fn default() -> Self {
        Self {
            type_name: Default::default(),
            type_hash: Default::default(),
            include_type_sources: true,
        }
    }
}
impl Ros2Type_description_interfacesSrvGetTypeDescription_Request {
    pub const MAX_WIRE_BYTES: usize = 144;
    pub const CARTESIAN_WIRE_BYTES: u64 = 144;
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_fd8126c544f9b610fec21f46acd61fa5b37e8053d766eab59c3f1b74e1854d99";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.type_name.len() > 64 || self.type_name.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.type_name.len())?;
        if self.type_hash.len() > 71 || self.type_hash.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.type_hash.len())?;
        n = add_size(n, 1)?;
        if n > 144 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.type_name.len() as u32).to_le_bytes());
        put(out, at, self.type_name.as_bytes());
        put(out, at, &(self.type_hash.len() as u32).to_le_bytes());
        put(out, at, self.type_hash.as_bytes());
        put(out, at, &[u8::from(self.include_type_sources)]);
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
        value.type_name = decoded;
        let size = read_count(bytes, at)?;
        if size > 71 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.type_hash = decoded;
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.include_type_sources = decoded;
        Ok(value)
    }
}
impl Canonical for Ros2Type_description_interfacesSrvGetTypeDescription_Request {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 144 {
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
/// Complete bounded value for ROS2 type_description_interfaces/srv/GetTypeDescription_Response.
#[derive(Clone, Debug, PartialEq)]
pub struct Ros2Type_description_interfacesSrvGetTypeDescription_Response {
    /// Declared successful; canonical bounds are part of CODEC_IDENTITY.
    pub successful: bool,
    /// Declared failure_reason; canonical bounds are part of CODEC_IDENTITY.
    pub failure_reason: String,
    /// Declared type_description; canonical bounds are part of CODEC_IDENTITY.
    pub type_description: Ros2Type_description_interfacesMsgTypeDescription,
    /// Declared type_sources; canonical bounds are part of CODEC_IDENTITY.
    pub type_sources: Vec<Ros2Type_description_interfacesMsgTypeSource>,
    /// Declared extra_information; canonical bounds are part of CODEC_IDENTITY.
    pub extra_information: Vec<Ros2Type_description_interfacesMsgKeyValue>,
}
impl Default for Ros2Type_description_interfacesSrvGetTypeDescription_Response {
    fn default() -> Self {
        Self {
            successful: Default::default(),
            failure_reason: Default::default(),
            type_description: Default::default(),
            type_sources: Default::default(),
            extra_information: Default::default(),
        }
    }
}
impl Ros2Type_description_interfacesSrvGetTypeDescription_Response {
    pub const MAX_WIRE_BYTES: usize = 32768;
    pub const CARTESIAN_WIRE_BYTES: u64 = 130289;
    pub const AGGREGATE_WIRE_BYTES: usize = 32768;
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_8e5824fdc95779375aeebbb07b8aa8d308f06c2c99c128f56ba12792cbee4ce4";
    /// Validate all fields and measure only their initialized canonical prefix.
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if self.failure_reason.len() > 64 || self.failure_reason.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.failure_reason.len())?;
        n = add_size(n, self.type_description.wire_size()?)?;
        if self.type_sources.len() > 12 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.type_sources {
            n = add_size(n, element.wire_size()?)?;
        }
        if self.extra_information.len() > 2 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.extra_information {
            n = add_size(n, element.wire_size()?)?;
        }
        if n > 32768 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &[u8::from(self.successful)]);
        put(out, at, &(self.failure_reason.len() as u32).to_le_bytes());
        put(out, at, self.failure_reason.as_bytes());
        self.type_description.write_fields(out, at);
        put(out, at, &(self.type_sources.len() as u32).to_le_bytes());
        for element in &self.type_sources {
            element.write_fields(out, at);
        }
        put(
            out,
            at,
            &(self.extra_information.len() as u32).to_le_bytes(),
        );
        for element in &self.extra_information {
            element.write_fields(out, at);
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.successful = decoded;
        let size = read_count(bytes, at)?;
        if size > 64 {
            return Err(invalid());
        }
        let raw = take(bytes, at, size)?;
        if raw.contains(&0) {
            return Err(invalid());
        }
        let decoded = core::str::from_utf8(raw).map_err(|_| invalid())?.into();
        value.failure_reason = decoded;
        let decoded = Ros2Type_description_interfacesMsgTypeDescription::read_fields(bytes, at)?;
        value.type_description = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 12 {
                return Err(invalid());
            }
            value.type_sources = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros2Type_description_interfacesMsgTypeSource::read_fields(bytes, at)?;
                value.type_sources.push(decoded);
            }
        }
        {
            let count = read_count(bytes, at)?;
            if count > 2 {
                return Err(invalid());
            }
            value.extra_information = Vec::with_capacity(count);
            for i in 0..count {
                let decoded = Ros2Type_description_interfacesMsgKeyValue::read_fields(bytes, at)?;
                value.extra_information.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros2Type_description_interfacesSrvGetTypeDescription_Response {
    /// Allocate one exact validated canonical output; never native serialization.
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 32768 {
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
/// Explicit original Service facts; none of these strings grants authority.
pub struct ControlServiceIdentity {
    pub native_type: &'static str,
    pub codec_identity: &'static str,
    pub native_identity: Option<&'static str>,
}
pub const Ros2Rcl_interfacesSrvDescribeParametersIdentity: ControlServiceIdentity =
    ControlServiceIdentity {
        native_type: "rcl_interfaces/srv/DescribeParameters",
        codec_identity: "UWVMROS1_6c78586e30415d750db450558066f5122c62b227edb8845abc582ab5ae2bfac5",
        native_identity: None,
    };
pub const Ros2Rcl_interfacesSrvGetParameterTypesIdentity: ControlServiceIdentity =
    ControlServiceIdentity {
        native_type: "rcl_interfaces/srv/GetParameterTypes",
        codec_identity: "UWVMROS1_b11295e14c0d159cc072b2697fdfb2616263e7813c6f39a98e49379c51388cb1",
        native_identity: None,
    };
pub const Ros2Rcl_interfacesSrvGetParametersIdentity: ControlServiceIdentity =
    ControlServiceIdentity {
        native_type: "rcl_interfaces/srv/GetParameters",
        codec_identity: "UWVMROS1_e6bd5cea8304adb2dc0faecd2f1c0e0e38a1d71360aedca21de28e52a5d94d2c",
        native_identity: None,
    };
pub const Ros2Rcl_interfacesSrvListParametersIdentity: ControlServiceIdentity =
    ControlServiceIdentity {
        native_type: "rcl_interfaces/srv/ListParameters",
        codec_identity: "UWVMROS1_08a890c1f924d39602225981a46229b1059dabd902627e17ef8a7c2b4e0c820e",
        native_identity: None,
    };
pub const Ros2Rcl_interfacesSrvSetParametersIdentity: ControlServiceIdentity =
    ControlServiceIdentity {
        native_type: "rcl_interfaces/srv/SetParameters",
        codec_identity: "UWVMROS1_96d5a209a2d10373f04846ca85e3fa86b5b6d7933f139ad5cee5e6e8b3a40dcc",
        native_identity: None,
    };
pub const Ros2Rcl_interfacesSrvSetParametersAtomicallyIdentity: ControlServiceIdentity =
    ControlServiceIdentity {
        native_type: "rcl_interfaces/srv/SetParametersAtomically",
        codec_identity: "UWVMROS1_a274db7374ad728322349711e0bc5d88068dd6f51325bf1377e2f629e3ded96c",
        native_identity: None,
    };
pub const Ros2Type_description_interfacesSrvGetTypeDescriptionIdentity: ControlServiceIdentity =
    ControlServiceIdentity {
        native_type: "type_description_interfaces/srv/GetTypeDescription",
        codec_identity: "UWVMROS1_84b818e52605ce8e88902f707d259575b40f6c7bfd3aa53730293d7901916948",
        native_identity: None,
    };
