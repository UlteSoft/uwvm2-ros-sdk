//! @file bounded_records.rs
//! @brief Preserve the complete original ufactory/ros1_legacy canonical value domain.
//! @details The selected domain contains 29 complete record/components and 67 original fields. Declared
//! scalar widths, order, defaults, array/sequence distinctions and finite bounds remain explicit.
//! Validate the whole value before accepting bytes; partial/trailing data is a refusal. Pure codecs
//! create no ROS owner, permission, callback, unit conversion or native type binding. Module availability
//! does not qualify a frontend, target ABI or native ROS transport.
//! @see The platform's localized language guide and complete API-CATALOG.md.
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
/// Complete bounded value for ROS1 geometry_msgs/Point.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 geometry_msgs/Point value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 24..24
/// bytes and is identified by UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Geometry_msgsPoint {
    /// Declared x; canonical bounds are part of CODEC_IDENTITY.
    /// @brief geometry_msgs/Point.x: float64.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Geometry_msgsPoint; share/platform/ros/rs/API-CONTRACT.md
    pub x: f64,
    /// Declared y; canonical bounds are part of CODEC_IDENTITY.
    /// @brief geometry_msgs/Point.y: float64.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Geometry_msgsPoint; share/platform/ros/rs/API-CONTRACT.md
    pub y: f64,
    /// Declared z; canonical bounds are part of CODEC_IDENTITY.
    /// @brief geometry_msgs/Point.z: float64.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Geometry_msgsPoint; share/platform/ros/rs/API-CONTRACT.md
    pub z: f64,
}
/// @brief Construct the declared defaults of geometry_msgs/Point.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
/// sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
/// during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Geometry_msgsPoint; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Geometry_msgsPoint {
    fn default() -> Self {
        Self {
            x: Default::default(),
            y: Default::default(),
            z: Default::default(),
        }
    }
}
impl Ros1Geometry_msgsPoint {
    /// @brief Maximum canonical extent of geometry_msgs/Point in bytes.
    /// @details The inclusive bound is 24 bytes for this selected profile; it is not a native sizeof or a
    /// queue
    /// reservation.
    /// @see Ros1Geometry_msgsPoint; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 24;
    /// @brief Cartesian field-bound maximum of geometry_msgs/Point in bytes.
    /// @details Exact independently combined field-bound extent 24; aggregate profile constraints may
    /// impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Geometry_msgsPoint; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 24;
    /// @brief Aggregate profile byte budget of geometry_msgs/Point.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Geometry_msgsPoint; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of geometry_msgs/Point.
    /// @details Exact identity UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b
    /// binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Geometry_msgsPoint; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete geometry_msgs/Point value.
    /// @details Check every active field, finite bound and selected semantic invariant before returning
    /// its exact
    /// initialized wire extent. This is not maximum capacity, native sizeof, an allocation request or a
    /// transport
    /// operation.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @return Exact validated initialized wire extent in bytes through the language result/error
    /// contract; this
    /// value is not maximum capacity or a reservation.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Geometry_msgsPoint; share/platform/ros/rs/API-CONTRACT.md
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
    /// @brief Encode one complete geometry_msgs/Point value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
    /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] out Caller-owned writable output bytes; success returns only the initialized prefix
    /// extent.
    /// @return Exact initialized caller-output extent in bytes through Result; no output allocation is
    /// returned or
    /// transferred. Ignore partial output on Err.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Geometry_msgsPoint; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
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
impl Canonical for Ros1Geometry_msgsPoint {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete geometry_msgs/Point value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
    /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @return Owned complete canonical bytes through the native language result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Geometry_msgsPoint; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete geometry_msgs/Point value.
    /// @details Require the complete 24..24-byte canonical representation. Reject truncation, invalid
    /// fields and
    /// trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are
    /// live.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Geometry_msgsPoint; share/platform/ros/rs/API-CONTRACT.md
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
/// Complete bounded value for ROS1 geometry_msgs/Quaternion.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 geometry_msgs/Quaternion value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 32..32
/// bytes and is identified by UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Geometry_msgsQuaternion {
    /// Declared x; canonical bounds are part of CODEC_IDENTITY.
    /// @brief geometry_msgs/Quaternion.x: float64.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Geometry_msgsQuaternion; share/platform/ros/rs/API-CONTRACT.md
    pub x: f64,
    /// Declared y; canonical bounds are part of CODEC_IDENTITY.
    /// @brief geometry_msgs/Quaternion.y: float64.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Geometry_msgsQuaternion; share/platform/ros/rs/API-CONTRACT.md
    pub y: f64,
    /// Declared z; canonical bounds are part of CODEC_IDENTITY.
    /// @brief geometry_msgs/Quaternion.z: float64.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Geometry_msgsQuaternion; share/platform/ros/rs/API-CONTRACT.md
    pub z: f64,
    /// Declared w; canonical bounds are part of CODEC_IDENTITY.
    /// @brief geometry_msgs/Quaternion.w: float64.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Geometry_msgsQuaternion; share/platform/ros/rs/API-CONTRACT.md
    pub w: f64,
}
/// @brief Construct the declared defaults of geometry_msgs/Quaternion.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
/// sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
/// during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Geometry_msgsQuaternion; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Geometry_msgsQuaternion {
    fn default() -> Self {
        Self {
            x: Default::default(),
            y: Default::default(),
            z: Default::default(),
            w: Default::default(),
        }
    }
}
impl Ros1Geometry_msgsQuaternion {
    /// @brief Maximum canonical extent of geometry_msgs/Quaternion in bytes.
    /// @details The inclusive bound is 32 bytes for this selected profile; it is not a native sizeof or a
    /// queue
    /// reservation.
    /// @see Ros1Geometry_msgsQuaternion; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 32;
    /// @brief Cartesian field-bound maximum of geometry_msgs/Quaternion in bytes.
    /// @details Exact independently combined field-bound extent 32; aggregate profile constraints may
    /// impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Geometry_msgsQuaternion; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 32;
    /// @brief Aggregate profile byte budget of geometry_msgs/Quaternion.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Geometry_msgsQuaternion; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of geometry_msgs/Quaternion.
    /// @details Exact identity UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934
    /// binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Geometry_msgsQuaternion; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete geometry_msgs/Quaternion value.
    /// @details Check every active field, finite bound and selected semantic invariant before returning
    /// its exact
    /// initialized wire extent. This is not maximum capacity, native sizeof, an allocation request or a
    /// transport
    /// operation.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @return Exact validated initialized wire extent in bytes through the language result/error
    /// contract; this
    /// value is not maximum capacity or a reservation.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Geometry_msgsQuaternion; share/platform/ros/rs/API-CONTRACT.md
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
    /// @brief Encode one complete geometry_msgs/Quaternion value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
    /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] out Caller-owned writable output bytes; success returns only the initialized prefix
    /// extent.
    /// @return Exact initialized caller-output extent in bytes through Result; no output allocation is
    /// returned or
    /// transferred. Ignore partial output on Err.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Geometry_msgsQuaternion; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
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
impl Canonical for Ros1Geometry_msgsQuaternion {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete geometry_msgs/Quaternion value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
    /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @return Owned complete canonical bytes through the native language result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Geometry_msgsQuaternion; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete geometry_msgs/Quaternion value.
    /// @details Require the complete 32..32-byte canonical representation. Reject truncation, invalid
    /// fields and
    /// trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are
    /// live.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Geometry_msgsQuaternion; share/platform/ros/rs/API-CONTRACT.md
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
/// Complete bounded value for ROS1 geometry_msgs/Pose.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 geometry_msgs/Pose value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 56..56
/// bytes and is identified by UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Geometry_msgsPose {
    /// Declared position; canonical bounds are part of CODEC_IDENTITY.
    /// @brief geometry_msgs/Pose.position: geometry_msgs/Point.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Geometry_msgsPose; share/platform/ros/rs/API-CONTRACT.md
    pub position: Ros1Geometry_msgsPoint,
    /// Declared orientation; canonical bounds are part of CODEC_IDENTITY.
    /// @brief geometry_msgs/Pose.orientation: geometry_msgs/Quaternion.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Geometry_msgsPose; share/platform/ros/rs/API-CONTRACT.md
    pub orientation: Ros1Geometry_msgsQuaternion,
}
/// @brief Construct the declared defaults of geometry_msgs/Pose.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
/// sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
/// during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Geometry_msgsPose; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Geometry_msgsPose {
    fn default() -> Self {
        Self {
            position: Default::default(),
            orientation: Default::default(),
        }
    }
}
impl Ros1Geometry_msgsPose {
    /// @brief Maximum canonical extent of geometry_msgs/Pose in bytes.
    /// @details The inclusive bound is 56 bytes for this selected profile; it is not a native sizeof or a
    /// queue
    /// reservation.
    /// @see Ros1Geometry_msgsPose; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 56;
    /// @brief Cartesian field-bound maximum of geometry_msgs/Pose in bytes.
    /// @details Exact independently combined field-bound extent 56; aggregate profile constraints may
    /// impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Geometry_msgsPose; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 56;
    /// @brief Aggregate profile byte budget of geometry_msgs/Pose.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Geometry_msgsPose; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of geometry_msgs/Pose.
    /// @details Exact identity UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471
    /// binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Geometry_msgsPose; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete geometry_msgs/Pose value.
    /// @details Check every active field, finite bound and selected semantic invariant before returning
    /// its exact
    /// initialized wire extent. This is not maximum capacity, native sizeof, an allocation request or a
    /// transport
    /// operation.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @return Exact validated initialized wire extent in bytes through the language result/error
    /// contract; this
    /// value is not maximum capacity or a reservation.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Geometry_msgsPose; share/platform/ros/rs/API-CONTRACT.md
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
    /// @brief Encode one complete geometry_msgs/Pose value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
    /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] out Caller-owned writable output bytes; success returns only the initialized prefix
    /// extent.
    /// @return Exact initialized caller-output extent in bytes through Result; no output allocation is
    /// returned or
    /// transferred. Ignore partial output on Err.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Geometry_msgsPose; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
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
        let decoded = Ros1Geometry_msgsPoint::read_fields(bytes, at)?;
        value.position = decoded;
        let decoded = Ros1Geometry_msgsQuaternion::read_fields(bytes, at)?;
        value.orientation = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Geometry_msgsPose {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete geometry_msgs/Pose value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
    /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @return Owned complete canonical bytes through the native language result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Geometry_msgsPose; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete geometry_msgs/Pose value.
    /// @details Require the complete 56..56-byte canonical representation. Reject truncation, invalid
    /// fields and
    /// trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are
    /// live.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Geometry_msgsPose; share/platform/ros/rs/API-CONTRACT.md
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
/// Complete bounded value for ROS1 xarm_msgs/IOState.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 xarm_msgs/IOState value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 16..16
/// bytes and is identified by UWVMROS1_93ef0c71a5fed6eaa7c8e87447b280778ffd05c376cf41a577c71acfeb02d996.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Xarm_msgsIOState {
    /// Declared digital_1; canonical bounds are part of CODEC_IDENTITY.
    /// @brief xarm_msgs/IOState.digital_1: int32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Xarm_msgsIOState; share/platform/ros/rs/API-CONTRACT.md
    pub digital_1: i32,
    /// Declared digital_2; canonical bounds are part of CODEC_IDENTITY.
    /// @brief xarm_msgs/IOState.digital_2: int32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Xarm_msgsIOState; share/platform/ros/rs/API-CONTRACT.md
    pub digital_2: i32,
    /// Declared analog_1; canonical bounds are part of CODEC_IDENTITY.
    /// @brief xarm_msgs/IOState.analog_1: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Xarm_msgsIOState; share/platform/ros/rs/API-CONTRACT.md
    pub analog_1: f32,
    /// Declared analog_2; canonical bounds are part of CODEC_IDENTITY.
    /// @brief xarm_msgs/IOState.analog_2: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Xarm_msgsIOState; share/platform/ros/rs/API-CONTRACT.md
    pub analog_2: f32,
}
/// @brief Construct the declared defaults of xarm_msgs/IOState.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
/// sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
/// during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Xarm_msgsIOState; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Xarm_msgsIOState {
    fn default() -> Self {
        Self {
            digital_1: Default::default(),
            digital_2: Default::default(),
            analog_1: Default::default(),
            analog_2: Default::default(),
        }
    }
}
impl Ros1Xarm_msgsIOState {
    /// @brief Maximum canonical extent of xarm_msgs/IOState in bytes.
    /// @details The inclusive bound is 16 bytes for this selected profile; it is not a native sizeof or a
    /// queue
    /// reservation.
    /// @see Ros1Xarm_msgsIOState; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 16;
    /// @brief Cartesian field-bound maximum of xarm_msgs/IOState in bytes.
    /// @details Exact independently combined field-bound extent 16; aggregate profile constraints may
    /// impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Xarm_msgsIOState; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 16;
    /// @brief Aggregate profile byte budget of xarm_msgs/IOState.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Xarm_msgsIOState; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of xarm_msgs/IOState.
    /// @details Exact identity UWVMROS1_93ef0c71a5fed6eaa7c8e87447b280778ffd05c376cf41a577c71acfeb02d996
    /// binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Xarm_msgsIOState; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_93ef0c71a5fed6eaa7c8e87447b280778ffd05c376cf41a577c71acfeb02d996";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete xarm_msgs/IOState value.
    /// @details Check every active field, finite bound and selected semantic invariant before returning
    /// its exact
    /// initialized wire extent. This is not maximum capacity, native sizeof, an allocation request or a
    /// transport
    /// operation.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @return Exact validated initialized wire extent in bytes through the language result/error
    /// contract; this
    /// value is not maximum capacity or a reservation.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_msgsIOState; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 4)?;
        n = add_size(n, 4)?;
        if !self.analog_1.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.analog_2.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if n > 16 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete xarm_msgs/IOState value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
    /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] out Caller-owned writable output bytes; success returns only the initialized prefix
    /// extent.
    /// @return Exact initialized caller-output extent in bytes through Result; no output allocation is
    /// returned or
    /// transferred. Ignore partial output on Err.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_msgsIOState; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.digital_1.to_le_bytes());
        put(out, at, &self.digital_2.to_le_bytes());
        put(out, at, &self.analog_1.to_le_bytes());
        put(out, at, &self.analog_2.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.digital_1 = decoded;
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.digital_2 = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.analog_1 = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.analog_2 = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Xarm_msgsIOState {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete xarm_msgs/IOState value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
    /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @return Owned complete canonical bytes through the native language result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_msgsIOState; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete xarm_msgs/IOState value.
    /// @details Require the complete 16..16-byte canonical representation. Reject truncation, invalid
    /// fields and
    /// trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are
    /// live.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_msgsIOState; share/platform/ros/rs/API-CONTRACT.md
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
/// Complete bounded value for ROS1 xarm_msgs/RobotMsg.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 xarm_msgs/RobotMsg value.
/// @details All 10 declared fields are retained in source order. The canonical representation occupies 66..94
/// bytes and is identified by UWVMROS1_e5509a530075a638bfa1f09cf5fd78c4d609dccbd79ddd75ef50f5061f68b0f7.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Xarm_msgsRobotMsg {
    /// Declared state; canonical bounds are part of CODEC_IDENTITY.
    /// @brief xarm_msgs/RobotMsg.state: int16.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Xarm_msgsRobotMsg; share/platform/ros/rs/API-CONTRACT.md
    pub state: i16,
    /// Declared mode; canonical bounds are part of CODEC_IDENTITY.
    /// @brief xarm_msgs/RobotMsg.mode: int16.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Xarm_msgsRobotMsg; share/platform/ros/rs/API-CONTRACT.md
    pub mode: i16,
    /// Declared cmdnum; canonical bounds are part of CODEC_IDENTITY.
    /// @brief xarm_msgs/RobotMsg.cmdnum: int16.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Xarm_msgsRobotMsg; share/platform/ros/rs/API-CONTRACT.md
    pub cmdnum: i16,
    /// Declared mt_brake; canonical bounds are part of CODEC_IDENTITY.
    /// @brief xarm_msgs/RobotMsg.mt_brake: int16.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Xarm_msgsRobotMsg; share/platform/ros/rs/API-CONTRACT.md
    pub mt_brake: i16,
    /// Declared mt_able; canonical bounds are part of CODEC_IDENTITY.
    /// @brief xarm_msgs/RobotMsg.mt_able: int16.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Xarm_msgsRobotMsg; share/platform/ros/rs/API-CONTRACT.md
    pub mt_able: i16,
    /// Declared err; canonical bounds are part of CODEC_IDENTITY.
    /// @brief xarm_msgs/RobotMsg.err: int16.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Xarm_msgsRobotMsg; share/platform/ros/rs/API-CONTRACT.md
    pub err: i16,
    /// Declared warn; canonical bounds are part of CODEC_IDENTITY.
    /// @brief xarm_msgs/RobotMsg.warn: int16.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Xarm_msgsRobotMsg; share/platform/ros/rs/API-CONTRACT.md
    pub warn: i16,
    /// Declared angle; canonical bounds are part of CODEC_IDENTITY.
    /// @brief xarm_msgs/RobotMsg.angle: float32; 0..7 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Xarm_msgsRobotMsg; share/platform/ros/rs/API-CONTRACT.md
    pub angle: Vec<f32>,
    /// Declared pose; canonical bounds are part of CODEC_IDENTITY.
    /// @brief xarm_msgs/RobotMsg.pose: float32; exactly 6 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Xarm_msgsRobotMsg; share/platform/ros/rs/API-CONTRACT.md
    pub pose: [f32; 6],
    /// Declared offset; canonical bounds are part of CODEC_IDENTITY.
    /// @brief xarm_msgs/RobotMsg.offset: float32; exactly 6 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Xarm_msgsRobotMsg; share/platform/ros/rs/API-CONTRACT.md
    pub offset: [f32; 6],
}
/// @brief Construct the declared defaults of xarm_msgs/RobotMsg.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
/// sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
/// during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Xarm_msgsRobotMsg; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Xarm_msgsRobotMsg {
    fn default() -> Self {
        Self {
            state: Default::default(),
            mode: Default::default(),
            cmdnum: Default::default(),
            mt_brake: Default::default(),
            mt_able: Default::default(),
            err: Default::default(),
            warn: Default::default(),
            angle: Default::default(),
            pose: core::array::from_fn(|_| Default::default()),
            offset: core::array::from_fn(|_| Default::default()),
        }
    }
}
impl Ros1Xarm_msgsRobotMsg {
    /// @brief Maximum canonical extent of xarm_msgs/RobotMsg in bytes.
    /// @details The inclusive bound is 94 bytes for this selected profile; it is not a native sizeof or a
    /// queue
    /// reservation.
    /// @see Ros1Xarm_msgsRobotMsg; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 94;
    /// @brief Cartesian field-bound maximum of xarm_msgs/RobotMsg in bytes.
    /// @details Exact independently combined field-bound extent 94; aggregate profile constraints may
    /// impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Xarm_msgsRobotMsg; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 94;
    /// @brief Aggregate profile byte budget of xarm_msgs/RobotMsg.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Xarm_msgsRobotMsg; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of xarm_msgs/RobotMsg.
    /// @details Exact identity UWVMROS1_e5509a530075a638bfa1f09cf5fd78c4d609dccbd79ddd75ef50f5061f68b0f7
    /// binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Xarm_msgsRobotMsg; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_e5509a530075a638bfa1f09cf5fd78c4d609dccbd79ddd75ef50f5061f68b0f7";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete xarm_msgs/RobotMsg value.
    /// @details Check every active field, finite bound and selected semantic invariant before returning
    /// its exact
    /// initialized wire extent. This is not maximum capacity, native sizeof, an allocation request or a
    /// transport
    /// operation.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @return Exact validated initialized wire extent in bytes through the language result/error
    /// contract; this
    /// value is not maximum capacity or a reservation.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_msgsRobotMsg; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 2)?;
        n = add_size(n, 2)?;
        n = add_size(n, 2)?;
        n = add_size(n, 2)?;
        n = add_size(n, 2)?;
        n = add_size(n, 2)?;
        n = add_size(n, 2)?;
        if self.angle.len() > 7 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.angle {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
        }
        for element in &self.pose {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
        }
        for element in &self.offset {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
        }
        if n > 94 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete xarm_msgs/RobotMsg value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
    /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] out Caller-owned writable output bytes; success returns only the initialized prefix
    /// extent.
    /// @return Exact initialized caller-output extent in bytes through Result; no output allocation is
    /// returned or
    /// transferred. Ignore partial output on Err.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_msgsRobotMsg; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.state.to_le_bytes());
        put(out, at, &self.mode.to_le_bytes());
        put(out, at, &self.cmdnum.to_le_bytes());
        put(out, at, &self.mt_brake.to_le_bytes());
        put(out, at, &self.mt_able.to_le_bytes());
        put(out, at, &self.err.to_le_bytes());
        put(out, at, &self.warn.to_le_bytes());
        put(out, at, &(self.angle.len() as u32).to_le_bytes());
        for element in &self.angle {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.pose {
            put(out, at, &element.to_le_bytes());
        }
        for element in &self.offset {
            put(out, at, &element.to_le_bytes());
        }
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.state = decoded;
        let decoded = i16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.mode = decoded;
        let decoded = i16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.cmdnum = decoded;
        let decoded = i16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.mt_brake = decoded;
        let decoded = i16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.mt_able = decoded;
        let decoded = i16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.err = decoded;
        let decoded = i16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.warn = decoded;
        {
            let count = read_count(bytes, at)?;
            if count > 7 {
                return Err(invalid());
            }
            value.angle = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.angle.push(decoded);
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.pose[i] = decoded;
            }
        }
        {
            let count = 6usize;
            if count > 6 {
                return Err(invalid());
            }
            for i in 0..count {
                let decoded =
                    f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.offset[i] = decoded;
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros1Xarm_msgsRobotMsg {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete xarm_msgs/RobotMsg value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
    /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @return Owned complete canonical bytes through the native language result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_msgsRobotMsg; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete xarm_msgs/RobotMsg value.
    /// @details Require the complete 66..94-byte canonical representation. Reject truncation, invalid
    /// fields and
    /// trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are
    /// live.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_msgsRobotMsg; share/platform/ros/rs/API-CONTRACT.md
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 94 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 66 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 xarm_msgs/ClearErrRequest.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 xarm_msgs/ClearErrRequest value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies
/// 0..0 bytes
/// and is identified by UWVMROS1_ce83a45aee719e0916f27f8caab41c12bb15d04942bfdd0489047e7b79f3b9e8.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Xarm_msgsClearErrRequest {}
/// @brief Construct the declared defaults of xarm_msgs/ClearErrRequest.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
/// sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
/// during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Xarm_msgsClearErrRequest; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Xarm_msgsClearErrRequest {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Xarm_msgsClearErrRequest {
    /// @brief Maximum canonical extent of xarm_msgs/ClearErrRequest in bytes.
    /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a
    /// queue
    /// reservation.
    /// @see Ros1Xarm_msgsClearErrRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 0;
    /// @brief Cartesian field-bound maximum of xarm_msgs/ClearErrRequest in bytes.
    /// @details Exact independently combined field-bound extent 0; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Xarm_msgsClearErrRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    /// @brief Aggregate profile byte budget of xarm_msgs/ClearErrRequest.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Xarm_msgsClearErrRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of xarm_msgs/ClearErrRequest.
    /// @details Exact identity UWVMROS1_ce83a45aee719e0916f27f8caab41c12bb15d04942bfdd0489047e7b79f3b9e8
    /// binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Xarm_msgsClearErrRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_ce83a45aee719e0916f27f8caab41c12bb15d04942bfdd0489047e7b79f3b9e8";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete xarm_msgs/ClearErrRequest value.
    /// @details Check every active field, finite bound and selected semantic invariant before returning
    /// its exact
    /// initialized wire extent. This is not maximum capacity, native sizeof, an allocation request or a
    /// transport
    /// operation.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @return Exact validated initialized wire extent in bytes through the language result/error
    /// contract; this
    /// value is not maximum capacity or a reservation.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_msgsClearErrRequest; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if n > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete xarm_msgs/ClearErrRequest value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
    /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] out Caller-owned writable output bytes; success returns only the initialized prefix
    /// extent.
    /// @return Exact initialized caller-output extent in bytes through Result; no output allocation is
    /// returned or
    /// transferred. Ignore partial output on Err.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_msgsClearErrRequest; share/platform/ros/rs/API-CONTRACT.md
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
impl Canonical for Ros1Xarm_msgsClearErrRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete xarm_msgs/ClearErrRequest value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
    /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @return Owned complete canonical bytes through the native language result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_msgsClearErrRequest; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete xarm_msgs/ClearErrRequest value.
    /// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid
    /// fields and
    /// trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are
    /// live.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_msgsClearErrRequest; share/platform/ros/rs/API-CONTRACT.md
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
/// Complete bounded value for ROS1 xarm_msgs/ClearErrResponse.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 xarm_msgs/ClearErrResponse value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 6..262
/// bytes and is identified by UWVMROS1_33a2634f63b2881e08efe4031630e29743093d33cf0da846bad1551329243054.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Xarm_msgsClearErrResponse {
    /// Declared ret; canonical bounds are part of CODEC_IDENTITY.
    /// @brief xarm_msgs/ClearErrResponse.ret: int16.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Xarm_msgsClearErrResponse; share/platform/ros/rs/API-CONTRACT.md
    pub ret: i16,
    /// Declared message; canonical bounds are part of CODEC_IDENTITY.
    /// @brief xarm_msgs/ClearErrResponse.message: string; each string is 0..256 bytes; strict UTF-8 with no
    /// embedded NUL.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Xarm_msgsClearErrResponse; share/platform/ros/rs/API-CONTRACT.md
    pub message: String,
}
/// @brief Construct the declared defaults of xarm_msgs/ClearErrResponse.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
/// sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
/// during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Xarm_msgsClearErrResponse; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Xarm_msgsClearErrResponse {
    fn default() -> Self {
        Self {
            ret: Default::default(),
            message: Default::default(),
        }
    }
}
impl Ros1Xarm_msgsClearErrResponse {
    /// @brief Maximum canonical extent of xarm_msgs/ClearErrResponse in bytes.
    /// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or
    /// a queue
    /// reservation.
    /// @see Ros1Xarm_msgsClearErrResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 262;
    /// @brief Cartesian field-bound maximum of xarm_msgs/ClearErrResponse in bytes.
    /// @details Exact independently combined field-bound extent 262; aggregate profile constraints may
    /// impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Xarm_msgsClearErrResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 262;
    /// @brief Aggregate profile byte budget of xarm_msgs/ClearErrResponse.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Xarm_msgsClearErrResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of xarm_msgs/ClearErrResponse.
    /// @details Exact identity UWVMROS1_33a2634f63b2881e08efe4031630e29743093d33cf0da846bad1551329243054
    /// binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Xarm_msgsClearErrResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_33a2634f63b2881e08efe4031630e29743093d33cf0da846bad1551329243054";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete xarm_msgs/ClearErrResponse value.
    /// @details Check every active field, finite bound and selected semantic invariant before returning
    /// its exact
    /// initialized wire extent. This is not maximum capacity, native sizeof, an allocation request or a
    /// transport
    /// operation.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @return Exact validated initialized wire extent in bytes through the language result/error
    /// contract; this
    /// value is not maximum capacity or a reservation.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_msgsClearErrResponse; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 2)?;
        if self.message.len() > 256 || self.message.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.message.len())?;
        if n > 262 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete xarm_msgs/ClearErrResponse value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
    /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] out Caller-owned writable output bytes; success returns only the initialized prefix
    /// extent.
    /// @return Exact initialized caller-output extent in bytes through Result; no output allocation is
    /// returned or
    /// transferred. Ignore partial output on Err.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_msgsClearErrResponse; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.ret.to_le_bytes());
        put(out, at, &(self.message.len() as u32).to_le_bytes());
        put(out, at, self.message.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.ret = decoded;
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
impl Canonical for Ros1Xarm_msgsClearErrResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete xarm_msgs/ClearErrResponse value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
    /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @return Owned complete canonical bytes through the native language result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_msgsClearErrResponse; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete xarm_msgs/ClearErrResponse value.
    /// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid
    /// fields and
    /// trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are
    /// live.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_msgsClearErrResponse; share/platform/ros/rs/API-CONTRACT.md
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 262 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 6 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 xarm_msgs/GetAnalogIORequest.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 xarm_msgs/GetAnalogIORequest value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies
/// 2..2 bytes
/// and is identified by UWVMROS1_08bf2816e784cc03d6d2ea33d71e457038f9071f8d80726d05f566d60ab961e8.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Xarm_msgsGetAnalogIORequest {
    /// Declared port_num; canonical bounds are part of CODEC_IDENTITY.
    /// @brief xarm_msgs/GetAnalogIORequest.port_num: int16.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Xarm_msgsGetAnalogIORequest; share/platform/ros/rs/API-CONTRACT.md
    pub port_num: i16,
}
/// @brief Construct the declared defaults of xarm_msgs/GetAnalogIORequest.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
/// sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
/// during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Xarm_msgsGetAnalogIORequest; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Xarm_msgsGetAnalogIORequest {
    fn default() -> Self {
        Self {
            port_num: Default::default(),
        }
    }
}
impl Ros1Xarm_msgsGetAnalogIORequest {
    /// @brief Maximum canonical extent of xarm_msgs/GetAnalogIORequest in bytes.
    /// @details The inclusive bound is 2 bytes for this selected profile; it is not a native sizeof or a
    /// queue
    /// reservation.
    /// @see Ros1Xarm_msgsGetAnalogIORequest; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 2;
    /// @brief Cartesian field-bound maximum of xarm_msgs/GetAnalogIORequest in bytes.
    /// @details Exact independently combined field-bound extent 2; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Xarm_msgsGetAnalogIORequest; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 2;
    /// @brief Aggregate profile byte budget of xarm_msgs/GetAnalogIORequest.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Xarm_msgsGetAnalogIORequest; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of xarm_msgs/GetAnalogIORequest.
    /// @details Exact identity UWVMROS1_08bf2816e784cc03d6d2ea33d71e457038f9071f8d80726d05f566d60ab961e8
    /// binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Xarm_msgsGetAnalogIORequest; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_08bf2816e784cc03d6d2ea33d71e457038f9071f8d80726d05f566d60ab961e8";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete xarm_msgs/GetAnalogIORequest value.
    /// @details Check every active field, finite bound and selected semantic invariant before returning
    /// its exact
    /// initialized wire extent. This is not maximum capacity, native sizeof, an allocation request or a
    /// transport
    /// operation.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @return Exact validated initialized wire extent in bytes through the language result/error
    /// contract; this
    /// value is not maximum capacity or a reservation.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_msgsGetAnalogIORequest; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 2)?;
        if n > 2 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete xarm_msgs/GetAnalogIORequest value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
    /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] out Caller-owned writable output bytes; success returns only the initialized prefix
    /// extent.
    /// @return Exact initialized caller-output extent in bytes through Result; no output allocation is
    /// returned or
    /// transferred. Ignore partial output on Err.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_msgsGetAnalogIORequest; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.port_num.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.port_num = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Xarm_msgsGetAnalogIORequest {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete xarm_msgs/GetAnalogIORequest value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
    /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @return Owned complete canonical bytes through the native language result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_msgsGetAnalogIORequest; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete xarm_msgs/GetAnalogIORequest value.
    /// @details Require the complete 2..2-byte canonical representation. Reject truncation, invalid
    /// fields and
    /// trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are
    /// live.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_msgsGetAnalogIORequest; share/platform/ros/rs/API-CONTRACT.md
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
/// Complete bounded value for ROS1 xarm_msgs/GetAnalogIOResponse.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 xarm_msgs/GetAnalogIOResponse value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 10..266
/// bytes and is identified by UWVMROS1_137ef1f1e94ed2e165023544043960031650f0848512d81afc97a2725144b835.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Xarm_msgsGetAnalogIOResponse {
    /// Declared analog_value; canonical bounds are part of CODEC_IDENTITY.
    /// @brief xarm_msgs/GetAnalogIOResponse.analog_value: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Xarm_msgsGetAnalogIOResponse; share/platform/ros/rs/API-CONTRACT.md
    pub analog_value: f32,
    /// Declared ret; canonical bounds are part of CODEC_IDENTITY.
    /// @brief xarm_msgs/GetAnalogIOResponse.ret: int16.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Xarm_msgsGetAnalogIOResponse; share/platform/ros/rs/API-CONTRACT.md
    pub ret: i16,
    /// Declared message; canonical bounds are part of CODEC_IDENTITY.
    /// @brief xarm_msgs/GetAnalogIOResponse.message: string; each string is 0..256 bytes; strict UTF-8
    /// with no
    /// embedded NUL.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Xarm_msgsGetAnalogIOResponse; share/platform/ros/rs/API-CONTRACT.md
    pub message: String,
}
/// @brief Construct the declared defaults of xarm_msgs/GetAnalogIOResponse.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
/// sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
/// during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Xarm_msgsGetAnalogIOResponse; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Xarm_msgsGetAnalogIOResponse {
    fn default() -> Self {
        Self {
            analog_value: Default::default(),
            ret: Default::default(),
            message: Default::default(),
        }
    }
}
impl Ros1Xarm_msgsGetAnalogIOResponse {
    /// @brief Maximum canonical extent of xarm_msgs/GetAnalogIOResponse in bytes.
    /// @details The inclusive bound is 266 bytes for this selected profile; it is not a native sizeof or
    /// a queue
    /// reservation.
    /// @see Ros1Xarm_msgsGetAnalogIOResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 266;
    /// @brief Cartesian field-bound maximum of xarm_msgs/GetAnalogIOResponse in bytes.
    /// @details Exact independently combined field-bound extent 266; aggregate profile constraints may
    /// impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Xarm_msgsGetAnalogIOResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 266;
    /// @brief Aggregate profile byte budget of xarm_msgs/GetAnalogIOResponse.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Xarm_msgsGetAnalogIOResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of xarm_msgs/GetAnalogIOResponse.
    /// @details Exact identity UWVMROS1_137ef1f1e94ed2e165023544043960031650f0848512d81afc97a2725144b835
    /// binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Xarm_msgsGetAnalogIOResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_137ef1f1e94ed2e165023544043960031650f0848512d81afc97a2725144b835";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete xarm_msgs/GetAnalogIOResponse value.
    /// @details Check every active field, finite bound and selected semantic invariant before returning
    /// its exact
    /// initialized wire extent. This is not maximum capacity, native sizeof, an allocation request or a
    /// transport
    /// operation.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @return Exact validated initialized wire extent in bytes through the language result/error
    /// contract; this
    /// value is not maximum capacity or a reservation.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_msgsGetAnalogIOResponse; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if !self.analog_value.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, 2)?;
        if self.message.len() > 256 || self.message.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.message.len())?;
        if n > 266 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete xarm_msgs/GetAnalogIOResponse value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
    /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] out Caller-owned writable output bytes; success returns only the initialized prefix
    /// extent.
    /// @return Exact initialized caller-output extent in bytes through Result; no output allocation is
    /// returned or
    /// transferred. Ignore partial output on Err.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_msgsGetAnalogIOResponse; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.analog_value.to_le_bytes());
        put(out, at, &self.ret.to_le_bytes());
        put(out, at, &(self.message.len() as u32).to_le_bytes());
        put(out, at, self.message.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.analog_value = decoded;
        let decoded = i16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.ret = decoded;
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
impl Canonical for Ros1Xarm_msgsGetAnalogIOResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete xarm_msgs/GetAnalogIOResponse value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
    /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @return Owned complete canonical bytes through the native language result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_msgsGetAnalogIOResponse; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete xarm_msgs/GetAnalogIOResponse value.
    /// @details Require the complete 10..266-byte canonical representation. Reject truncation, invalid
    /// fields and
    /// trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are
    /// live.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_msgsGetAnalogIOResponse; share/platform/ros/rs/API-CONTRACT.md
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 266 {
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
/// Complete bounded value for ROS1 xarm_msgs/GetDigitalIORequest.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 xarm_msgs/GetDigitalIORequest value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies
/// 0..0 bytes
/// and is identified by UWVMROS1_edd78f1a2ed7ab9fc8541c8b5f0f9ff32713c949c03b66728ef7c41ed50a23da.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Xarm_msgsGetDigitalIORequest {}
/// @brief Construct the declared defaults of xarm_msgs/GetDigitalIORequest.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
/// sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
/// during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Xarm_msgsGetDigitalIORequest; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Xarm_msgsGetDigitalIORequest {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Xarm_msgsGetDigitalIORequest {
    /// @brief Maximum canonical extent of xarm_msgs/GetDigitalIORequest in bytes.
    /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a
    /// queue
    /// reservation.
    /// @see Ros1Xarm_msgsGetDigitalIORequest; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 0;
    /// @brief Cartesian field-bound maximum of xarm_msgs/GetDigitalIORequest in bytes.
    /// @details Exact independently combined field-bound extent 0; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Xarm_msgsGetDigitalIORequest; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    /// @brief Aggregate profile byte budget of xarm_msgs/GetDigitalIORequest.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Xarm_msgsGetDigitalIORequest; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of xarm_msgs/GetDigitalIORequest.
    /// @details Exact identity UWVMROS1_edd78f1a2ed7ab9fc8541c8b5f0f9ff32713c949c03b66728ef7c41ed50a23da
    /// binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Xarm_msgsGetDigitalIORequest; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_edd78f1a2ed7ab9fc8541c8b5f0f9ff32713c949c03b66728ef7c41ed50a23da";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete xarm_msgs/GetDigitalIORequest value.
    /// @details Check every active field, finite bound and selected semantic invariant before returning
    /// its exact
    /// initialized wire extent. This is not maximum capacity, native sizeof, an allocation request or a
    /// transport
    /// operation.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @return Exact validated initialized wire extent in bytes through the language result/error
    /// contract; this
    /// value is not maximum capacity or a reservation.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_msgsGetDigitalIORequest; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if n > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete xarm_msgs/GetDigitalIORequest value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
    /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] out Caller-owned writable output bytes; success returns only the initialized prefix
    /// extent.
    /// @return Exact initialized caller-output extent in bytes through Result; no output allocation is
    /// returned or
    /// transferred. Ignore partial output on Err.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_msgsGetDigitalIORequest; share/platform/ros/rs/API-CONTRACT.md
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
impl Canonical for Ros1Xarm_msgsGetDigitalIORequest {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete xarm_msgs/GetDigitalIORequest value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
    /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @return Owned complete canonical bytes through the native language result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_msgsGetDigitalIORequest; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete xarm_msgs/GetDigitalIORequest value.
    /// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid
    /// fields and
    /// trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are
    /// live.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_msgsGetDigitalIORequest; share/platform/ros/rs/API-CONTRACT.md
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
/// Complete bounded value for ROS1 xarm_msgs/GetDigitalIOResponse.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 xarm_msgs/GetDigitalIOResponse value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 14..270
/// bytes and is identified by UWVMROS1_7af72b4f19e23493c4b4c2cf7c88076549e34ed741a04ee758db31de11457498.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Xarm_msgsGetDigitalIOResponse {
    /// Declared digital_1; canonical bounds are part of CODEC_IDENTITY.
    /// @brief xarm_msgs/GetDigitalIOResponse.digital_1: int32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Xarm_msgsGetDigitalIOResponse; share/platform/ros/rs/API-CONTRACT.md
    pub digital_1: i32,
    /// Declared digital_2; canonical bounds are part of CODEC_IDENTITY.
    /// @brief xarm_msgs/GetDigitalIOResponse.digital_2: int32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Xarm_msgsGetDigitalIOResponse; share/platform/ros/rs/API-CONTRACT.md
    pub digital_2: i32,
    /// Declared ret; canonical bounds are part of CODEC_IDENTITY.
    /// @brief xarm_msgs/GetDigitalIOResponse.ret: int16.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Xarm_msgsGetDigitalIOResponse; share/platform/ros/rs/API-CONTRACT.md
    pub ret: i16,
    /// Declared message; canonical bounds are part of CODEC_IDENTITY.
    /// @brief xarm_msgs/GetDigitalIOResponse.message: string; each string is 0..256 bytes; strict UTF-8
    /// with no
    /// embedded NUL.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Xarm_msgsGetDigitalIOResponse; share/platform/ros/rs/API-CONTRACT.md
    pub message: String,
}
/// @brief Construct the declared defaults of xarm_msgs/GetDigitalIOResponse.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
/// sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
/// during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Xarm_msgsGetDigitalIOResponse; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Xarm_msgsGetDigitalIOResponse {
    fn default() -> Self {
        Self {
            digital_1: Default::default(),
            digital_2: Default::default(),
            ret: Default::default(),
            message: Default::default(),
        }
    }
}
impl Ros1Xarm_msgsGetDigitalIOResponse {
    /// @brief Maximum canonical extent of xarm_msgs/GetDigitalIOResponse in bytes.
    /// @details The inclusive bound is 270 bytes for this selected profile; it is not a native sizeof or
    /// a queue
    /// reservation.
    /// @see Ros1Xarm_msgsGetDigitalIOResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 270;
    /// @brief Cartesian field-bound maximum of xarm_msgs/GetDigitalIOResponse in bytes.
    /// @details Exact independently combined field-bound extent 270; aggregate profile constraints may
    /// impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Xarm_msgsGetDigitalIOResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 270;
    /// @brief Aggregate profile byte budget of xarm_msgs/GetDigitalIOResponse.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Xarm_msgsGetDigitalIOResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of xarm_msgs/GetDigitalIOResponse.
    /// @details Exact identity UWVMROS1_7af72b4f19e23493c4b4c2cf7c88076549e34ed741a04ee758db31de11457498
    /// binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Xarm_msgsGetDigitalIOResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_7af72b4f19e23493c4b4c2cf7c88076549e34ed741a04ee758db31de11457498";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete xarm_msgs/GetDigitalIOResponse value.
    /// @details Check every active field, finite bound and selected semantic invariant before returning
    /// its exact
    /// initialized wire extent. This is not maximum capacity, native sizeof, an allocation request or a
    /// transport
    /// operation.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @return Exact validated initialized wire extent in bytes through the language result/error
    /// contract; this
    /// value is not maximum capacity or a reservation.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_msgsGetDigitalIOResponse; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 4)?;
        n = add_size(n, 4)?;
        n = add_size(n, 2)?;
        if self.message.len() > 256 || self.message.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.message.len())?;
        if n > 270 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete xarm_msgs/GetDigitalIOResponse value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
    /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] out Caller-owned writable output bytes; success returns only the initialized prefix
    /// extent.
    /// @return Exact initialized caller-output extent in bytes through Result; no output allocation is
    /// returned or
    /// transferred. Ignore partial output on Err.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_msgsGetDigitalIOResponse; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.digital_1.to_le_bytes());
        put(out, at, &self.digital_2.to_le_bytes());
        put(out, at, &self.ret.to_le_bytes());
        put(out, at, &(self.message.len() as u32).to_le_bytes());
        put(out, at, self.message.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.digital_1 = decoded;
        let decoded = i32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        value.digital_2 = decoded;
        let decoded = i16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.ret = decoded;
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
impl Canonical for Ros1Xarm_msgsGetDigitalIOResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete xarm_msgs/GetDigitalIOResponse value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
    /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @return Owned complete canonical bytes through the native language result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_msgsGetDigitalIOResponse; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete xarm_msgs/GetDigitalIOResponse value.
    /// @details Require the complete 14..270-byte canonical representation. Reject truncation, invalid
    /// fields and
    /// trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are
    /// live.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_msgsGetDigitalIOResponse; share/platform/ros/rs/API-CONTRACT.md
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 270 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 14 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 xarm_msgs/MoveRequest.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 xarm_msgs/MoveRequest value.
/// @details All 5 declared fields are retained in source order. The canonical representation occupies 20..148
/// bytes and is identified by UWVMROS1_9bfae5d05a608fb8f020e0cdb251b7e3b00e50ff610a26b70093837f365d4ced.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Xarm_msgsMoveRequest {
    /// Declared pose; canonical bounds are part of CODEC_IDENTITY.
    /// @brief xarm_msgs/MoveRequest.pose: float32; 0..32 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Xarm_msgsMoveRequest; share/platform/ros/rs/API-CONTRACT.md
    pub pose: Vec<f32>,
    /// Declared mvvelo; canonical bounds are part of CODEC_IDENTITY.
    /// @brief xarm_msgs/MoveRequest.mvvelo: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Xarm_msgsMoveRequest; share/platform/ros/rs/API-CONTRACT.md
    pub mvvelo: f32,
    /// Declared mvacc; canonical bounds are part of CODEC_IDENTITY.
    /// @brief xarm_msgs/MoveRequest.mvacc: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Xarm_msgsMoveRequest; share/platform/ros/rs/API-CONTRACT.md
    pub mvacc: f32,
    /// Declared mvtime; canonical bounds are part of CODEC_IDENTITY.
    /// @brief xarm_msgs/MoveRequest.mvtime: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Xarm_msgsMoveRequest; share/platform/ros/rs/API-CONTRACT.md
    pub mvtime: f32,
    /// Declared mvradii; canonical bounds are part of CODEC_IDENTITY.
    /// @brief xarm_msgs/MoveRequest.mvradii: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Xarm_msgsMoveRequest; share/platform/ros/rs/API-CONTRACT.md
    pub mvradii: f32,
}
/// @brief Construct the declared defaults of xarm_msgs/MoveRequest.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
/// sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
/// during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Xarm_msgsMoveRequest; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Xarm_msgsMoveRequest {
    fn default() -> Self {
        Self {
            pose: Default::default(),
            mvvelo: Default::default(),
            mvacc: Default::default(),
            mvtime: Default::default(),
            mvradii: Default::default(),
        }
    }
}
impl Ros1Xarm_msgsMoveRequest {
    /// @brief Maximum canonical extent of xarm_msgs/MoveRequest in bytes.
    /// @details The inclusive bound is 148 bytes for this selected profile; it is not a native sizeof or
    /// a queue
    /// reservation.
    /// @see Ros1Xarm_msgsMoveRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 148;
    /// @brief Cartesian field-bound maximum of xarm_msgs/MoveRequest in bytes.
    /// @details Exact independently combined field-bound extent 148; aggregate profile constraints may
    /// impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Xarm_msgsMoveRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 148;
    /// @brief Aggregate profile byte budget of xarm_msgs/MoveRequest.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Xarm_msgsMoveRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of xarm_msgs/MoveRequest.
    /// @details Exact identity UWVMROS1_9bfae5d05a608fb8f020e0cdb251b7e3b00e50ff610a26b70093837f365d4ced
    /// binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Xarm_msgsMoveRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_9bfae5d05a608fb8f020e0cdb251b7e3b00e50ff610a26b70093837f365d4ced";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete xarm_msgs/MoveRequest value.
    /// @details Check every active field, finite bound and selected semantic invariant before returning
    /// its exact
    /// initialized wire extent. This is not maximum capacity, native sizeof, an allocation request or a
    /// transport
    /// operation.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @return Exact validated initialized wire extent in bytes through the language result/error
    /// contract; this
    /// value is not maximum capacity or a reservation.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_msgsMoveRequest; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.pose.len() > 32 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.pose {
            if !element.is_finite() {
                return Err(invalid());
            }
            n = add_size(n, 4)?;
        }
        if !self.mvvelo.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.mvacc.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.mvtime.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.mvradii.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if n > 148 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete xarm_msgs/MoveRequest value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
    /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] out Caller-owned writable output bytes; success returns only the initialized prefix
    /// extent.
    /// @return Exact initialized caller-output extent in bytes through Result; no output allocation is
    /// returned or
    /// transferred. Ignore partial output on Err.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_msgsMoveRequest; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.pose.len() as u32).to_le_bytes());
        for element in &self.pose {
            put(out, at, &element.to_le_bytes());
        }
        put(out, at, &self.mvvelo.to_le_bytes());
        put(out, at, &self.mvacc.to_le_bytes());
        put(out, at, &self.mvtime.to_le_bytes());
        put(out, at, &self.mvradii.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        {
            let count = read_count(bytes, at)?;
            if count > 32 {
                return Err(invalid());
            }
            value.pose = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.pose.push(decoded);
            }
        }
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.mvvelo = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.mvacc = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.mvtime = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.mvradii = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Xarm_msgsMoveRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete xarm_msgs/MoveRequest value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
    /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @return Owned complete canonical bytes through the native language result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_msgsMoveRequest; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete xarm_msgs/MoveRequest value.
    /// @details Require the complete 20..148-byte canonical representation. Reject truncation, invalid
    /// fields and
    /// trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are
    /// live.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_msgsMoveRequest; share/platform/ros/rs/API-CONTRACT.md
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 148 {
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
/// Complete bounded value for ROS1 xarm_msgs/MoveResponse.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 xarm_msgs/MoveResponse value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 6..262
/// bytes and is identified by UWVMROS1_6081579d8a79f052cbb7616c0d366bad3948ac3b1380b118ad5b03e4123ce53d.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Xarm_msgsMoveResponse {
    /// Declared ret; canonical bounds are part of CODEC_IDENTITY.
    /// @brief xarm_msgs/MoveResponse.ret: int16.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Xarm_msgsMoveResponse; share/platform/ros/rs/API-CONTRACT.md
    pub ret: i16,
    /// Declared message; canonical bounds are part of CODEC_IDENTITY.
    /// @brief xarm_msgs/MoveResponse.message: string; each string is 0..256 bytes; strict UTF-8 with no
    /// embedded
    /// NUL.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Xarm_msgsMoveResponse; share/platform/ros/rs/API-CONTRACT.md
    pub message: String,
}
/// @brief Construct the declared defaults of xarm_msgs/MoveResponse.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
/// sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
/// during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Xarm_msgsMoveResponse; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Xarm_msgsMoveResponse {
    fn default() -> Self {
        Self {
            ret: Default::default(),
            message: Default::default(),
        }
    }
}
impl Ros1Xarm_msgsMoveResponse {
    /// @brief Maximum canonical extent of xarm_msgs/MoveResponse in bytes.
    /// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or
    /// a queue
    /// reservation.
    /// @see Ros1Xarm_msgsMoveResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 262;
    /// @brief Cartesian field-bound maximum of xarm_msgs/MoveResponse in bytes.
    /// @details Exact independently combined field-bound extent 262; aggregate profile constraints may
    /// impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Xarm_msgsMoveResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 262;
    /// @brief Aggregate profile byte budget of xarm_msgs/MoveResponse.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Xarm_msgsMoveResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of xarm_msgs/MoveResponse.
    /// @details Exact identity UWVMROS1_6081579d8a79f052cbb7616c0d366bad3948ac3b1380b118ad5b03e4123ce53d
    /// binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Xarm_msgsMoveResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_6081579d8a79f052cbb7616c0d366bad3948ac3b1380b118ad5b03e4123ce53d";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete xarm_msgs/MoveResponse value.
    /// @details Check every active field, finite bound and selected semantic invariant before returning
    /// its exact
    /// initialized wire extent. This is not maximum capacity, native sizeof, an allocation request or a
    /// transport
    /// operation.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @return Exact validated initialized wire extent in bytes through the language result/error
    /// contract; this
    /// value is not maximum capacity or a reservation.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_msgsMoveResponse; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 2)?;
        if self.message.len() > 256 || self.message.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.message.len())?;
        if n > 262 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete xarm_msgs/MoveResponse value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
    /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] out Caller-owned writable output bytes; success returns only the initialized prefix
    /// extent.
    /// @return Exact initialized caller-output extent in bytes through Result; no output allocation is
    /// returned or
    /// transferred. Ignore partial output on Err.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_msgsMoveResponse; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.ret.to_le_bytes());
        put(out, at, &(self.message.len() as u32).to_le_bytes());
        put(out, at, self.message.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.ret = decoded;
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
impl Canonical for Ros1Xarm_msgsMoveResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete xarm_msgs/MoveResponse value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
    /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @return Owned complete canonical bytes through the native language result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_msgsMoveResponse; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete xarm_msgs/MoveResponse value.
    /// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid
    /// fields and
    /// trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are
    /// live.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_msgsMoveResponse; share/platform/ros/rs/API-CONTRACT.md
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 262 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 6 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 xarm_msgs/SetAxisRequest.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 xarm_msgs/SetAxisRequest value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies
/// 4..4 bytes
/// and is identified by UWVMROS1_e9c45f00c83898744975890928756584b0646cf287024b3cb841380c368639f6.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Xarm_msgsSetAxisRequest {
    /// Declared id; canonical bounds are part of CODEC_IDENTITY.
    /// @brief xarm_msgs/SetAxisRequest.id: int16.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Xarm_msgsSetAxisRequest; share/platform/ros/rs/API-CONTRACT.md
    pub id: i16,
    /// Declared data; canonical bounds are part of CODEC_IDENTITY.
    /// @brief xarm_msgs/SetAxisRequest.data: int16.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Xarm_msgsSetAxisRequest; share/platform/ros/rs/API-CONTRACT.md
    pub data: i16,
}
/// @brief Construct the declared defaults of xarm_msgs/SetAxisRequest.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
/// sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
/// during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Xarm_msgsSetAxisRequest; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Xarm_msgsSetAxisRequest {
    fn default() -> Self {
        Self {
            id: Default::default(),
            data: Default::default(),
        }
    }
}
impl Ros1Xarm_msgsSetAxisRequest {
    /// @brief Maximum canonical extent of xarm_msgs/SetAxisRequest in bytes.
    /// @details The inclusive bound is 4 bytes for this selected profile; it is not a native sizeof or a
    /// queue
    /// reservation.
    /// @see Ros1Xarm_msgsSetAxisRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 4;
    /// @brief Cartesian field-bound maximum of xarm_msgs/SetAxisRequest in bytes.
    /// @details Exact independently combined field-bound extent 4; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Xarm_msgsSetAxisRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 4;
    /// @brief Aggregate profile byte budget of xarm_msgs/SetAxisRequest.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Xarm_msgsSetAxisRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of xarm_msgs/SetAxisRequest.
    /// @details Exact identity UWVMROS1_e9c45f00c83898744975890928756584b0646cf287024b3cb841380c368639f6
    /// binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Xarm_msgsSetAxisRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_e9c45f00c83898744975890928756584b0646cf287024b3cb841380c368639f6";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete xarm_msgs/SetAxisRequest value.
    /// @details Check every active field, finite bound and selected semantic invariant before returning
    /// its exact
    /// initialized wire extent. This is not maximum capacity, native sizeof, an allocation request or a
    /// transport
    /// operation.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @return Exact validated initialized wire extent in bytes through the language result/error
    /// contract; this
    /// value is not maximum capacity or a reservation.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_msgsSetAxisRequest; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 2)?;
        n = add_size(n, 2)?;
        if n > 4 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete xarm_msgs/SetAxisRequest value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
    /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] out Caller-owned writable output bytes; success returns only the initialized prefix
    /// extent.
    /// @return Exact initialized caller-output extent in bytes through Result; no output allocation is
    /// returned or
    /// transferred. Ignore partial output on Err.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_msgsSetAxisRequest; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
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
        put(out, at, &self.data.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.id = decoded;
        let decoded = i16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.data = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Xarm_msgsSetAxisRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete xarm_msgs/SetAxisRequest value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
    /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @return Owned complete canonical bytes through the native language result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_msgsSetAxisRequest; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete xarm_msgs/SetAxisRequest value.
    /// @details Require the complete 4..4-byte canonical representation. Reject truncation, invalid
    /// fields and
    /// trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are
    /// live.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_msgsSetAxisRequest; share/platform/ros/rs/API-CONTRACT.md
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
/// Complete bounded value for ROS1 xarm_msgs/SetAxisResponse.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 xarm_msgs/SetAxisResponse value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 6..262
/// bytes and is identified by UWVMROS1_f4de9fe78f1ee22ef7c06a47de4dfd6dbd0d4f9d25021ee58779a1f241304a27.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Xarm_msgsSetAxisResponse {
    /// Declared ret; canonical bounds are part of CODEC_IDENTITY.
    /// @brief xarm_msgs/SetAxisResponse.ret: int16.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Xarm_msgsSetAxisResponse; share/platform/ros/rs/API-CONTRACT.md
    pub ret: i16,
    /// Declared message; canonical bounds are part of CODEC_IDENTITY.
    /// @brief xarm_msgs/SetAxisResponse.message: string; each string is 0..256 bytes; strict UTF-8 with no
    /// embedded NUL.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Xarm_msgsSetAxisResponse; share/platform/ros/rs/API-CONTRACT.md
    pub message: String,
}
/// @brief Construct the declared defaults of xarm_msgs/SetAxisResponse.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
/// sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
/// during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Xarm_msgsSetAxisResponse; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Xarm_msgsSetAxisResponse {
    fn default() -> Self {
        Self {
            ret: Default::default(),
            message: Default::default(),
        }
    }
}
impl Ros1Xarm_msgsSetAxisResponse {
    /// @brief Maximum canonical extent of xarm_msgs/SetAxisResponse in bytes.
    /// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or
    /// a queue
    /// reservation.
    /// @see Ros1Xarm_msgsSetAxisResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 262;
    /// @brief Cartesian field-bound maximum of xarm_msgs/SetAxisResponse in bytes.
    /// @details Exact independently combined field-bound extent 262; aggregate profile constraints may
    /// impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Xarm_msgsSetAxisResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 262;
    /// @brief Aggregate profile byte budget of xarm_msgs/SetAxisResponse.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Xarm_msgsSetAxisResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of xarm_msgs/SetAxisResponse.
    /// @details Exact identity UWVMROS1_f4de9fe78f1ee22ef7c06a47de4dfd6dbd0d4f9d25021ee58779a1f241304a27
    /// binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Xarm_msgsSetAxisResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_f4de9fe78f1ee22ef7c06a47de4dfd6dbd0d4f9d25021ee58779a1f241304a27";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete xarm_msgs/SetAxisResponse value.
    /// @details Check every active field, finite bound and selected semantic invariant before returning
    /// its exact
    /// initialized wire extent. This is not maximum capacity, native sizeof, an allocation request or a
    /// transport
    /// operation.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @return Exact validated initialized wire extent in bytes through the language result/error
    /// contract; this
    /// value is not maximum capacity or a reservation.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_msgsSetAxisResponse; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 2)?;
        if self.message.len() > 256 || self.message.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.message.len())?;
        if n > 262 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete xarm_msgs/SetAxisResponse value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
    /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] out Caller-owned writable output bytes; success returns only the initialized prefix
    /// extent.
    /// @return Exact initialized caller-output extent in bytes through Result; no output allocation is
    /// returned or
    /// transferred. Ignore partial output on Err.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_msgsSetAxisResponse; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.ret.to_le_bytes());
        put(out, at, &(self.message.len() as u32).to_le_bytes());
        put(out, at, self.message.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.ret = decoded;
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
impl Canonical for Ros1Xarm_msgsSetAxisResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete xarm_msgs/SetAxisResponse value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
    /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @return Owned complete canonical bytes through the native language result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_msgsSetAxisResponse; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete xarm_msgs/SetAxisResponse value.
    /// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid
    /// fields and
    /// trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are
    /// live.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_msgsSetAxisResponse; share/platform/ros/rs/API-CONTRACT.md
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 262 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 6 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 xarm_msgs/SetDigitalIORequest.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 xarm_msgs/SetDigitalIORequest value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies
/// 4..4 bytes
/// and is identified by UWVMROS1_ac50ddbde487936e79606cb389b9bc074249136b4187a1334da6f09866cc3959.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Xarm_msgsSetDigitalIORequest {
    /// Declared io_num; canonical bounds are part of CODEC_IDENTITY.
    /// @brief xarm_msgs/SetDigitalIORequest.io_num: int16.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Xarm_msgsSetDigitalIORequest; share/platform/ros/rs/API-CONTRACT.md
    pub io_num: i16,
    /// Declared value; canonical bounds are part of CODEC_IDENTITY.
    /// @brief xarm_msgs/SetDigitalIORequest.value: int16.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Xarm_msgsSetDigitalIORequest; share/platform/ros/rs/API-CONTRACT.md
    pub value: i16,
}
/// @brief Construct the declared defaults of xarm_msgs/SetDigitalIORequest.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
/// sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
/// during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Xarm_msgsSetDigitalIORequest; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Xarm_msgsSetDigitalIORequest {
    fn default() -> Self {
        Self {
            io_num: Default::default(),
            value: Default::default(),
        }
    }
}
impl Ros1Xarm_msgsSetDigitalIORequest {
    /// @brief Maximum canonical extent of xarm_msgs/SetDigitalIORequest in bytes.
    /// @details The inclusive bound is 4 bytes for this selected profile; it is not a native sizeof or a
    /// queue
    /// reservation.
    /// @see Ros1Xarm_msgsSetDigitalIORequest; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 4;
    /// @brief Cartesian field-bound maximum of xarm_msgs/SetDigitalIORequest in bytes.
    /// @details Exact independently combined field-bound extent 4; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Xarm_msgsSetDigitalIORequest; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 4;
    /// @brief Aggregate profile byte budget of xarm_msgs/SetDigitalIORequest.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Xarm_msgsSetDigitalIORequest; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of xarm_msgs/SetDigitalIORequest.
    /// @details Exact identity UWVMROS1_ac50ddbde487936e79606cb389b9bc074249136b4187a1334da6f09866cc3959
    /// binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Xarm_msgsSetDigitalIORequest; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_ac50ddbde487936e79606cb389b9bc074249136b4187a1334da6f09866cc3959";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete xarm_msgs/SetDigitalIORequest value.
    /// @details Check every active field, finite bound and selected semantic invariant before returning
    /// its exact
    /// initialized wire extent. This is not maximum capacity, native sizeof, an allocation request or a
    /// transport
    /// operation.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @return Exact validated initialized wire extent in bytes through the language result/error
    /// contract; this
    /// value is not maximum capacity or a reservation.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_msgsSetDigitalIORequest; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 2)?;
        n = add_size(n, 2)?;
        if n > 4 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete xarm_msgs/SetDigitalIORequest value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
    /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] out Caller-owned writable output bytes; success returns only the initialized prefix
    /// extent.
    /// @return Exact initialized caller-output extent in bytes through Result; no output allocation is
    /// returned or
    /// transferred. Ignore partial output on Err.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_msgsSetDigitalIORequest; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.io_num.to_le_bytes());
        put(out, at, &self.value.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.io_num = decoded;
        let decoded = i16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.value = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Xarm_msgsSetDigitalIORequest {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete xarm_msgs/SetDigitalIORequest value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
    /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @return Owned complete canonical bytes through the native language result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_msgsSetDigitalIORequest; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete xarm_msgs/SetDigitalIORequest value.
    /// @details Require the complete 4..4-byte canonical representation. Reject truncation, invalid
    /// fields and
    /// trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are
    /// live.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_msgsSetDigitalIORequest; share/platform/ros/rs/API-CONTRACT.md
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
/// Complete bounded value for ROS1 xarm_msgs/SetDigitalIOResponse.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 xarm_msgs/SetDigitalIOResponse value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 6..262
/// bytes and is identified by UWVMROS1_7f3aa4fdf4749d20e4ef13a51ecaa589df1a9a470ff3658ebb7c343e5940046a.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Xarm_msgsSetDigitalIOResponse {
    /// Declared ret; canonical bounds are part of CODEC_IDENTITY.
    /// @brief xarm_msgs/SetDigitalIOResponse.ret: int16.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Xarm_msgsSetDigitalIOResponse; share/platform/ros/rs/API-CONTRACT.md
    pub ret: i16,
    /// Declared message; canonical bounds are part of CODEC_IDENTITY.
    /// @brief xarm_msgs/SetDigitalIOResponse.message: string; each string is 0..256 bytes; strict UTF-8
    /// with no
    /// embedded NUL.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Xarm_msgsSetDigitalIOResponse; share/platform/ros/rs/API-CONTRACT.md
    pub message: String,
}
/// @brief Construct the declared defaults of xarm_msgs/SetDigitalIOResponse.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
/// sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
/// during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Xarm_msgsSetDigitalIOResponse; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Xarm_msgsSetDigitalIOResponse {
    fn default() -> Self {
        Self {
            ret: Default::default(),
            message: Default::default(),
        }
    }
}
impl Ros1Xarm_msgsSetDigitalIOResponse {
    /// @brief Maximum canonical extent of xarm_msgs/SetDigitalIOResponse in bytes.
    /// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or
    /// a queue
    /// reservation.
    /// @see Ros1Xarm_msgsSetDigitalIOResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 262;
    /// @brief Cartesian field-bound maximum of xarm_msgs/SetDigitalIOResponse in bytes.
    /// @details Exact independently combined field-bound extent 262; aggregate profile constraints may
    /// impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Xarm_msgsSetDigitalIOResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 262;
    /// @brief Aggregate profile byte budget of xarm_msgs/SetDigitalIOResponse.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Xarm_msgsSetDigitalIOResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of xarm_msgs/SetDigitalIOResponse.
    /// @details Exact identity UWVMROS1_7f3aa4fdf4749d20e4ef13a51ecaa589df1a9a470ff3658ebb7c343e5940046a
    /// binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Xarm_msgsSetDigitalIOResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_7f3aa4fdf4749d20e4ef13a51ecaa589df1a9a470ff3658ebb7c343e5940046a";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete xarm_msgs/SetDigitalIOResponse value.
    /// @details Check every active field, finite bound and selected semantic invariant before returning
    /// its exact
    /// initialized wire extent. This is not maximum capacity, native sizeof, an allocation request or a
    /// transport
    /// operation.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @return Exact validated initialized wire extent in bytes through the language result/error
    /// contract; this
    /// value is not maximum capacity or a reservation.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_msgsSetDigitalIOResponse; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 2)?;
        if self.message.len() > 256 || self.message.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.message.len())?;
        if n > 262 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete xarm_msgs/SetDigitalIOResponse value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
    /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] out Caller-owned writable output bytes; success returns only the initialized prefix
    /// extent.
    /// @return Exact initialized caller-output extent in bytes through Result; no output allocation is
    /// returned or
    /// transferred. Ignore partial output on Err.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_msgsSetDigitalIOResponse; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.ret.to_le_bytes());
        put(out, at, &(self.message.len() as u32).to_le_bytes());
        put(out, at, self.message.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.ret = decoded;
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
impl Canonical for Ros1Xarm_msgsSetDigitalIOResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete xarm_msgs/SetDigitalIOResponse value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
    /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @return Owned complete canonical bytes through the native language result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_msgsSetDigitalIOResponse; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete xarm_msgs/SetDigitalIOResponse value.
    /// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid
    /// fields and
    /// trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are
    /// live.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_msgsSetDigitalIOResponse; share/platform/ros/rs/API-CONTRACT.md
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 262 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 6 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 xarm_msgs/SetInt16Request.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 xarm_msgs/SetInt16Request value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies
/// 2..2 bytes
/// and is identified by UWVMROS1_a218118282ed14fca33c7529762ce9849398540f031ad6e18e3a99a90226c5c7.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Xarm_msgsSetInt16Request {
    /// Declared data; canonical bounds are part of CODEC_IDENTITY.
    /// @brief xarm_msgs/SetInt16Request.data: int16.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Xarm_msgsSetInt16Request; share/platform/ros/rs/API-CONTRACT.md
    pub data: i16,
}
/// @brief Construct the declared defaults of xarm_msgs/SetInt16Request.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
/// sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
/// during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Xarm_msgsSetInt16Request; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Xarm_msgsSetInt16Request {
    fn default() -> Self {
        Self {
            data: Default::default(),
        }
    }
}
impl Ros1Xarm_msgsSetInt16Request {
    /// @brief Maximum canonical extent of xarm_msgs/SetInt16Request in bytes.
    /// @details The inclusive bound is 2 bytes for this selected profile; it is not a native sizeof or a
    /// queue
    /// reservation.
    /// @see Ros1Xarm_msgsSetInt16Request; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 2;
    /// @brief Cartesian field-bound maximum of xarm_msgs/SetInt16Request in bytes.
    /// @details Exact independently combined field-bound extent 2; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Xarm_msgsSetInt16Request; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 2;
    /// @brief Aggregate profile byte budget of xarm_msgs/SetInt16Request.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Xarm_msgsSetInt16Request; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of xarm_msgs/SetInt16Request.
    /// @details Exact identity UWVMROS1_a218118282ed14fca33c7529762ce9849398540f031ad6e18e3a99a90226c5c7
    /// binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Xarm_msgsSetInt16Request; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_a218118282ed14fca33c7529762ce9849398540f031ad6e18e3a99a90226c5c7";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete xarm_msgs/SetInt16Request value.
    /// @details Check every active field, finite bound and selected semantic invariant before returning
    /// its exact
    /// initialized wire extent. This is not maximum capacity, native sizeof, an allocation request or a
    /// transport
    /// operation.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @return Exact validated initialized wire extent in bytes through the language result/error
    /// contract; this
    /// value is not maximum capacity or a reservation.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_msgsSetInt16Request; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 2)?;
        if n > 2 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete xarm_msgs/SetInt16Request value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
    /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] out Caller-owned writable output bytes; success returns only the initialized prefix
    /// extent.
    /// @return Exact initialized caller-output extent in bytes through Result; no output allocation is
    /// returned or
    /// transferred. Ignore partial output on Err.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_msgsSetInt16Request; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.data.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.data = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Xarm_msgsSetInt16Request {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete xarm_msgs/SetInt16Request value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
    /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @return Owned complete canonical bytes through the native language result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_msgsSetInt16Request; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete xarm_msgs/SetInt16Request value.
    /// @details Require the complete 2..2-byte canonical representation. Reject truncation, invalid
    /// fields and
    /// trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are
    /// live.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_msgsSetInt16Request; share/platform/ros/rs/API-CONTRACT.md
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
/// Complete bounded value for ROS1 xarm_msgs/SetInt16Response.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 xarm_msgs/SetInt16Response value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 6..262
/// bytes and is identified by UWVMROS1_8df1192ff5ed3fc5eaaadf33980726b8764a541d30d062293d378d261367d656.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Xarm_msgsSetInt16Response {
    /// Declared ret; canonical bounds are part of CODEC_IDENTITY.
    /// @brief xarm_msgs/SetInt16Response.ret: int16.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Xarm_msgsSetInt16Response; share/platform/ros/rs/API-CONTRACT.md
    pub ret: i16,
    /// Declared message; canonical bounds are part of CODEC_IDENTITY.
    /// @brief xarm_msgs/SetInt16Response.message: string; each string is 0..256 bytes; strict UTF-8 with no
    /// embedded NUL.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Xarm_msgsSetInt16Response; share/platform/ros/rs/API-CONTRACT.md
    pub message: String,
}
/// @brief Construct the declared defaults of xarm_msgs/SetInt16Response.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
/// sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
/// during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Xarm_msgsSetInt16Response; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Xarm_msgsSetInt16Response {
    fn default() -> Self {
        Self {
            ret: Default::default(),
            message: Default::default(),
        }
    }
}
impl Ros1Xarm_msgsSetInt16Response {
    /// @brief Maximum canonical extent of xarm_msgs/SetInt16Response in bytes.
    /// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or
    /// a queue
    /// reservation.
    /// @see Ros1Xarm_msgsSetInt16Response; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 262;
    /// @brief Cartesian field-bound maximum of xarm_msgs/SetInt16Response in bytes.
    /// @details Exact independently combined field-bound extent 262; aggregate profile constraints may
    /// impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Xarm_msgsSetInt16Response; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 262;
    /// @brief Aggregate profile byte budget of xarm_msgs/SetInt16Response.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Xarm_msgsSetInt16Response; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of xarm_msgs/SetInt16Response.
    /// @details Exact identity UWVMROS1_8df1192ff5ed3fc5eaaadf33980726b8764a541d30d062293d378d261367d656
    /// binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Xarm_msgsSetInt16Response; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_8df1192ff5ed3fc5eaaadf33980726b8764a541d30d062293d378d261367d656";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete xarm_msgs/SetInt16Response value.
    /// @details Check every active field, finite bound and selected semantic invariant before returning
    /// its exact
    /// initialized wire extent. This is not maximum capacity, native sizeof, an allocation request or a
    /// transport
    /// operation.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @return Exact validated initialized wire extent in bytes through the language result/error
    /// contract; this
    /// value is not maximum capacity or a reservation.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_msgsSetInt16Response; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 2)?;
        if self.message.len() > 256 || self.message.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.message.len())?;
        if n > 262 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete xarm_msgs/SetInt16Response value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
    /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] out Caller-owned writable output bytes; success returns only the initialized prefix
    /// extent.
    /// @return Exact initialized caller-output extent in bytes through Result; no output allocation is
    /// returned or
    /// transferred. Ignore partial output on Err.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_msgsSetInt16Response; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.ret.to_le_bytes());
        put(out, at, &(self.message.len() as u32).to_le_bytes());
        put(out, at, self.message.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.ret = decoded;
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
impl Canonical for Ros1Xarm_msgsSetInt16Response {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete xarm_msgs/SetInt16Response value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
    /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @return Owned complete canonical bytes through the native language result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_msgsSetInt16Response; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete xarm_msgs/SetInt16Response value.
    /// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid
    /// fields and
    /// trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are
    /// live.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_msgsSetInt16Response; share/platform/ros/rs/API-CONTRACT.md
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 262 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 6 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 xarm_msgs/TCPOffsetRequest.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 xarm_msgs/TCPOffsetRequest value.
/// @details All 6 declared fields are retained in source order. The canonical representation occupies 24..24
/// bytes and is identified by UWVMROS1_588f23b909cce18cc490801b9d2f0960335362b0c823651cda6d5c8a27ee0afd.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Xarm_msgsTCPOffsetRequest {
    /// Declared x; canonical bounds are part of CODEC_IDENTITY.
    /// @brief xarm_msgs/TCPOffsetRequest.x: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/rs/API-CONTRACT.md
    pub x: f32,
    /// Declared y; canonical bounds are part of CODEC_IDENTITY.
    /// @brief xarm_msgs/TCPOffsetRequest.y: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/rs/API-CONTRACT.md
    pub y: f32,
    /// Declared z; canonical bounds are part of CODEC_IDENTITY.
    /// @brief xarm_msgs/TCPOffsetRequest.z: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/rs/API-CONTRACT.md
    pub z: f32,
    /// Declared roll; canonical bounds are part of CODEC_IDENTITY.
    /// @brief xarm_msgs/TCPOffsetRequest.roll: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/rs/API-CONTRACT.md
    pub roll: f32,
    /// Declared pitch; canonical bounds are part of CODEC_IDENTITY.
    /// @brief xarm_msgs/TCPOffsetRequest.pitch: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/rs/API-CONTRACT.md
    pub pitch: f32,
    /// Declared yaw; canonical bounds are part of CODEC_IDENTITY.
    /// @brief xarm_msgs/TCPOffsetRequest.yaw: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/rs/API-CONTRACT.md
    pub yaw: f32,
}
/// @brief Construct the declared defaults of xarm_msgs/TCPOffsetRequest.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
/// sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
/// during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Xarm_msgsTCPOffsetRequest {
    fn default() -> Self {
        Self {
            x: Default::default(),
            y: Default::default(),
            z: Default::default(),
            roll: Default::default(),
            pitch: Default::default(),
            yaw: Default::default(),
        }
    }
}
impl Ros1Xarm_msgsTCPOffsetRequest {
    /// @brief Maximum canonical extent of xarm_msgs/TCPOffsetRequest in bytes.
    /// @details The inclusive bound is 24 bytes for this selected profile; it is not a native sizeof or a
    /// queue
    /// reservation.
    /// @see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 24;
    /// @brief Cartesian field-bound maximum of xarm_msgs/TCPOffsetRequest in bytes.
    /// @details Exact independently combined field-bound extent 24; aggregate profile constraints may
    /// impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 24;
    /// @brief Aggregate profile byte budget of xarm_msgs/TCPOffsetRequest.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of xarm_msgs/TCPOffsetRequest.
    /// @details Exact identity UWVMROS1_588f23b909cce18cc490801b9d2f0960335362b0c823651cda6d5c8a27ee0afd
    /// binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_588f23b909cce18cc490801b9d2f0960335362b0c823651cda6d5c8a27ee0afd";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete xarm_msgs/TCPOffsetRequest value.
    /// @details Check every active field, finite bound and selected semantic invariant before returning
    /// its exact
    /// initialized wire extent. This is not maximum capacity, native sizeof, an allocation request or a
    /// transport
    /// operation.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @return Exact validated initialized wire extent in bytes through the language result/error
    /// contract; this
    /// value is not maximum capacity or a reservation.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if !self.x.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.y.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.z.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.roll.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.pitch.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.yaw.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if n > 24 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete xarm_msgs/TCPOffsetRequest value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
    /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] out Caller-owned writable output bytes; success returns only the initialized prefix
    /// extent.
    /// @return Exact initialized caller-output extent in bytes through Result; no output allocation is
    /// returned or
    /// transferred. Ignore partial output on Err.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
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
        put(out, at, &self.roll.to_le_bytes());
        put(out, at, &self.pitch.to_le_bytes());
        put(out, at, &self.yaw.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.x = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.y = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.z = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.roll = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.pitch = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.yaw = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Xarm_msgsTCPOffsetRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete xarm_msgs/TCPOffsetRequest value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
    /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @return Owned complete canonical bytes through the native language result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete xarm_msgs/TCPOffsetRequest value.
    /// @details Require the complete 24..24-byte canonical representation. Reject truncation, invalid
    /// fields and
    /// trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are
    /// live.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/rs/API-CONTRACT.md
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
/// Complete bounded value for ROS1 xarm_msgs/TCPOffsetResponse.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 xarm_msgs/TCPOffsetResponse value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 6..262
/// bytes and is identified by UWVMROS1_2f06deb14c2f0acce41ada4fecefd70e32bda4bc84b82354dffe333d2337464d.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Xarm_msgsTCPOffsetResponse {
    /// Declared ret; canonical bounds are part of CODEC_IDENTITY.
    /// @brief xarm_msgs/TCPOffsetResponse.ret: int16.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Xarm_msgsTCPOffsetResponse; share/platform/ros/rs/API-CONTRACT.md
    pub ret: i16,
    /// Declared message; canonical bounds are part of CODEC_IDENTITY.
    /// @brief xarm_msgs/TCPOffsetResponse.message: string; each string is 0..256 bytes; strict UTF-8 with no
    /// embedded NUL.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Xarm_msgsTCPOffsetResponse; share/platform/ros/rs/API-CONTRACT.md
    pub message: String,
}
/// @brief Construct the declared defaults of xarm_msgs/TCPOffsetResponse.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
/// sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
/// during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Xarm_msgsTCPOffsetResponse; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Xarm_msgsTCPOffsetResponse {
    fn default() -> Self {
        Self {
            ret: Default::default(),
            message: Default::default(),
        }
    }
}
impl Ros1Xarm_msgsTCPOffsetResponse {
    /// @brief Maximum canonical extent of xarm_msgs/TCPOffsetResponse in bytes.
    /// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or
    /// a queue
    /// reservation.
    /// @see Ros1Xarm_msgsTCPOffsetResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 262;
    /// @brief Cartesian field-bound maximum of xarm_msgs/TCPOffsetResponse in bytes.
    /// @details Exact independently combined field-bound extent 262; aggregate profile constraints may
    /// impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Xarm_msgsTCPOffsetResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 262;
    /// @brief Aggregate profile byte budget of xarm_msgs/TCPOffsetResponse.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Xarm_msgsTCPOffsetResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of xarm_msgs/TCPOffsetResponse.
    /// @details Exact identity UWVMROS1_2f06deb14c2f0acce41ada4fecefd70e32bda4bc84b82354dffe333d2337464d
    /// binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Xarm_msgsTCPOffsetResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_2f06deb14c2f0acce41ada4fecefd70e32bda4bc84b82354dffe333d2337464d";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete xarm_msgs/TCPOffsetResponse value.
    /// @details Check every active field, finite bound and selected semantic invariant before returning
    /// its exact
    /// initialized wire extent. This is not maximum capacity, native sizeof, an allocation request or a
    /// transport
    /// operation.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @return Exact validated initialized wire extent in bytes through the language result/error
    /// contract; this
    /// value is not maximum capacity or a reservation.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_msgsTCPOffsetResponse; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 2)?;
        if self.message.len() > 256 || self.message.as_bytes().contains(&0) {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, self.message.len())?;
        if n > 262 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete xarm_msgs/TCPOffsetResponse value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
    /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] out Caller-owned writable output bytes; success returns only the initialized prefix
    /// extent.
    /// @return Exact initialized caller-output extent in bytes through Result; no output allocation is
    /// returned or
    /// transferred. Ignore partial output on Err.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_msgsTCPOffsetResponse; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.ret.to_le_bytes());
        put(out, at, &(self.message.len() as u32).to_le_bytes());
        put(out, at, self.message.as_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = i16::from_le_bytes(take(bytes, at, 2)?.try_into().map_err(|_| invalid())?);
        value.ret = decoded;
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
impl Canonical for Ros1Xarm_msgsTCPOffsetResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete xarm_msgs/TCPOffsetResponse value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
    /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @return Owned complete canonical bytes through the native language result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_msgsTCPOffsetResponse; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete xarm_msgs/TCPOffsetResponse value.
    /// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid
    /// fields and
    /// trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are
    /// live.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_msgsTCPOffsetResponse; share/platform/ros/rs/API-CONTRACT.md
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 262 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 6 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 xarm_planner/exec_planRequest.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 xarm_planner/exec_planRequest value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies
/// 1..1 bytes
/// and is identified by UWVMROS1_f7c4c0d95453c6a7cfdc7726b003a63745ad0e533ced368d6422c5cb2c3d21f3.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Xarm_plannerExec_planRequest {
    /// Declared exec; canonical bounds are part of CODEC_IDENTITY.
    /// @brief xarm_planner/exec_planRequest.exec: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Xarm_plannerExec_planRequest; share/platform/ros/rs/API-CONTRACT.md
    pub exec: bool,
}
/// @brief Construct the declared defaults of xarm_planner/exec_planRequest.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
/// sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
/// during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Xarm_plannerExec_planRequest; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Xarm_plannerExec_planRequest {
    fn default() -> Self {
        Self {
            exec: Default::default(),
        }
    }
}
impl Ros1Xarm_plannerExec_planRequest {
    /// @brief Maximum canonical extent of xarm_planner/exec_planRequest in bytes.
    /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a
    /// queue
    /// reservation.
    /// @see Ros1Xarm_plannerExec_planRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 1;
    /// @brief Cartesian field-bound maximum of xarm_planner/exec_planRequest in bytes.
    /// @details Exact independently combined field-bound extent 1; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Xarm_plannerExec_planRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    /// @brief Aggregate profile byte budget of xarm_planner/exec_planRequest.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Xarm_plannerExec_planRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of xarm_planner/exec_planRequest.
    /// @details Exact identity UWVMROS1_f7c4c0d95453c6a7cfdc7726b003a63745ad0e533ced368d6422c5cb2c3d21f3
    /// binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Xarm_plannerExec_planRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_f7c4c0d95453c6a7cfdc7726b003a63745ad0e533ced368d6422c5cb2c3d21f3";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete xarm_planner/exec_planRequest value.
    /// @details Check every active field, finite bound and selected semantic invariant before returning
    /// its exact
    /// initialized wire extent. This is not maximum capacity, native sizeof, an allocation request or a
    /// transport
    /// operation.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @return Exact validated initialized wire extent in bytes through the language result/error
    /// contract; this
    /// value is not maximum capacity or a reservation.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_plannerExec_planRequest; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if n > 1 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete xarm_planner/exec_planRequest value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
    /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] out Caller-owned writable output bytes; success returns only the initialized prefix
    /// extent.
    /// @return Exact initialized caller-output extent in bytes through Result; no output allocation is
    /// returned or
    /// transferred. Ignore partial output on Err.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_plannerExec_planRequest; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &[u8::from(self.exec)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.exec = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Xarm_plannerExec_planRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete xarm_planner/exec_planRequest value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
    /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @return Owned complete canonical bytes through the native language result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_plannerExec_planRequest; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete xarm_planner/exec_planRequest value.
    /// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid
    /// fields and
    /// trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are
    /// live.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_plannerExec_planRequest; share/platform/ros/rs/API-CONTRACT.md
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
/// Complete bounded value for ROS1 xarm_planner/exec_planResponse.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 xarm_planner/exec_planResponse value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies
/// 1..1 bytes
/// and is identified by UWVMROS1_7e265ca343aa21c5f0dc043d8662e82ed8e57f56c4eaf7f15733162c1029a625.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Xarm_plannerExec_planResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    /// @brief xarm_planner/exec_planResponse.success: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Xarm_plannerExec_planResponse; share/platform/ros/rs/API-CONTRACT.md
    pub success: bool,
}
/// @brief Construct the declared defaults of xarm_planner/exec_planResponse.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
/// sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
/// during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Xarm_plannerExec_planResponse; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Xarm_plannerExec_planResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Xarm_plannerExec_planResponse {
    /// @brief Maximum canonical extent of xarm_planner/exec_planResponse in bytes.
    /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a
    /// queue
    /// reservation.
    /// @see Ros1Xarm_plannerExec_planResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 1;
    /// @brief Cartesian field-bound maximum of xarm_planner/exec_planResponse in bytes.
    /// @details Exact independently combined field-bound extent 1; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Xarm_plannerExec_planResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    /// @brief Aggregate profile byte budget of xarm_planner/exec_planResponse.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Xarm_plannerExec_planResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of xarm_planner/exec_planResponse.
    /// @details Exact identity UWVMROS1_7e265ca343aa21c5f0dc043d8662e82ed8e57f56c4eaf7f15733162c1029a625
    /// binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Xarm_plannerExec_planResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_7e265ca343aa21c5f0dc043d8662e82ed8e57f56c4eaf7f15733162c1029a625";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete xarm_planner/exec_planResponse value.
    /// @details Check every active field, finite bound and selected semantic invariant before returning
    /// its exact
    /// initialized wire extent. This is not maximum capacity, native sizeof, an allocation request or a
    /// transport
    /// operation.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @return Exact validated initialized wire extent in bytes through the language result/error
    /// contract; this
    /// value is not maximum capacity or a reservation.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_plannerExec_planResponse; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if n > 1 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete xarm_planner/exec_planResponse value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
    /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] out Caller-owned writable output bytes; success returns only the initialized prefix
    /// extent.
    /// @return Exact initialized caller-output extent in bytes through Result; no output allocation is
    /// returned or
    /// transferred. Ignore partial output on Err.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_plannerExec_planResponse; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
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
impl Canonical for Ros1Xarm_plannerExec_planResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete xarm_planner/exec_planResponse value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
    /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @return Owned complete canonical bytes through the native language result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_plannerExec_planResponse; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete xarm_planner/exec_planResponse value.
    /// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid
    /// fields and
    /// trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are
    /// live.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_plannerExec_planResponse; share/platform/ros/rs/API-CONTRACT.md
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
/// Complete bounded value for ROS1 xarm_planner/joint_planRequest.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 xarm_planner/joint_planRequest value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..260
/// bytes and is identified by UWVMROS1_8a531cf6d8b62366b63ef2f7c6fd2314211a3043b2da3f050c20080cf4ec8fd9.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Xarm_plannerJoint_planRequest {
    /// Declared target; canonical bounds are part of CODEC_IDENTITY.
    /// @brief xarm_planner/joint_planRequest.target: float64; 0..32 elements.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Xarm_plannerJoint_planRequest; share/platform/ros/rs/API-CONTRACT.md
    pub target: Vec<f64>,
}
/// @brief Construct the declared defaults of xarm_planner/joint_planRequest.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
/// sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
/// during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Xarm_plannerJoint_planRequest; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Xarm_plannerJoint_planRequest {
    fn default() -> Self {
        Self {
            target: Default::default(),
        }
    }
}
impl Ros1Xarm_plannerJoint_planRequest {
    /// @brief Maximum canonical extent of xarm_planner/joint_planRequest in bytes.
    /// @details The inclusive bound is 260 bytes for this selected profile; it is not a native sizeof or
    /// a queue
    /// reservation.
    /// @see Ros1Xarm_plannerJoint_planRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 260;
    /// @brief Cartesian field-bound maximum of xarm_planner/joint_planRequest in bytes.
    /// @details Exact independently combined field-bound extent 260; aggregate profile constraints may
    /// impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Xarm_plannerJoint_planRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 260;
    /// @brief Aggregate profile byte budget of xarm_planner/joint_planRequest.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Xarm_plannerJoint_planRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of xarm_planner/joint_planRequest.
    /// @details Exact identity UWVMROS1_8a531cf6d8b62366b63ef2f7c6fd2314211a3043b2da3f050c20080cf4ec8fd9
    /// binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Xarm_plannerJoint_planRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_8a531cf6d8b62366b63ef2f7c6fd2314211a3043b2da3f050c20080cf4ec8fd9";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete xarm_planner/joint_planRequest value.
    /// @details Check every active field, finite bound and selected semantic invariant before returning
    /// its exact
    /// initialized wire extent. This is not maximum capacity, native sizeof, an allocation request or a
    /// transport
    /// operation.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @return Exact validated initialized wire extent in bytes through the language result/error
    /// contract; this
    /// value is not maximum capacity or a reservation.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_plannerJoint_planRequest; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if self.target.len() > 32 {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        for element in &self.target {
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
    /// @brief Encode one complete xarm_planner/joint_planRequest value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
    /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] out Caller-owned writable output bytes; success returns only the initialized prefix
    /// extent.
    /// @return Exact initialized caller-output extent in bytes through Result; no output allocation is
    /// returned or
    /// transferred. Ignore partial output on Err.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_plannerJoint_planRequest; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &(self.target.len() as u32).to_le_bytes());
        for element in &self.target {
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
            value.target = Vec::with_capacity(count);
            for i in 0..count {
                let decoded =
                    f64::from_le_bytes(take(bytes, at, 8)?.try_into().map_err(|_| invalid())?);
                if !decoded.is_finite() {
                    return Err(invalid());
                }
                value.target.push(decoded);
            }
        }
        Ok(value)
    }
}
impl Canonical for Ros1Xarm_plannerJoint_planRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete xarm_planner/joint_planRequest value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
    /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @return Owned complete canonical bytes through the native language result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_plannerJoint_planRequest; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete xarm_planner/joint_planRequest value.
    /// @details Require the complete 4..260-byte canonical representation. Reject truncation, invalid
    /// fields and
    /// trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are
    /// live.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_plannerJoint_planRequest; share/platform/ros/rs/API-CONTRACT.md
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
/// Complete bounded value for ROS1 xarm_planner/joint_planResponse.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 xarm_planner/joint_planResponse value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies
/// 1..1 bytes
/// and is identified by UWVMROS1_46925f1a9e54d9d74604a2f12457a97394e4ec30aa2832b7a66ae3da2782d668.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Xarm_plannerJoint_planResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    /// @brief xarm_planner/joint_planResponse.success: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Xarm_plannerJoint_planResponse; share/platform/ros/rs/API-CONTRACT.md
    pub success: bool,
}
/// @brief Construct the declared defaults of xarm_planner/joint_planResponse.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
/// sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
/// during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Xarm_plannerJoint_planResponse; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Xarm_plannerJoint_planResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Xarm_plannerJoint_planResponse {
    /// @brief Maximum canonical extent of xarm_planner/joint_planResponse in bytes.
    /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a
    /// queue
    /// reservation.
    /// @see Ros1Xarm_plannerJoint_planResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 1;
    /// @brief Cartesian field-bound maximum of xarm_planner/joint_planResponse in bytes.
    /// @details Exact independently combined field-bound extent 1; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Xarm_plannerJoint_planResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    /// @brief Aggregate profile byte budget of xarm_planner/joint_planResponse.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Xarm_plannerJoint_planResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of xarm_planner/joint_planResponse.
    /// @details Exact identity UWVMROS1_46925f1a9e54d9d74604a2f12457a97394e4ec30aa2832b7a66ae3da2782d668
    /// binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Xarm_plannerJoint_planResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_46925f1a9e54d9d74604a2f12457a97394e4ec30aa2832b7a66ae3da2782d668";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete xarm_planner/joint_planResponse value.
    /// @details Check every active field, finite bound and selected semantic invariant before returning
    /// its exact
    /// initialized wire extent. This is not maximum capacity, native sizeof, an allocation request or a
    /// transport
    /// operation.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @return Exact validated initialized wire extent in bytes through the language result/error
    /// contract; this
    /// value is not maximum capacity or a reservation.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_plannerJoint_planResponse; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if n > 1 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete xarm_planner/joint_planResponse value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
    /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] out Caller-owned writable output bytes; success returns only the initialized prefix
    /// extent.
    /// @return Exact initialized caller-output extent in bytes through Result; no output allocation is
    /// returned or
    /// transferred. Ignore partial output on Err.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_plannerJoint_planResponse; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
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
impl Canonical for Ros1Xarm_plannerJoint_planResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete xarm_planner/joint_planResponse value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
    /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @return Owned complete canonical bytes through the native language result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_plannerJoint_planResponse; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete xarm_planner/joint_planResponse value.
    /// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid
    /// fields and
    /// trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are
    /// live.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_plannerJoint_planResponse; share/platform/ros/rs/API-CONTRACT.md
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
/// Complete bounded value for ROS1 xarm_planner/pose_planRequest.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 xarm_planner/pose_planRequest value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 56..56
/// bytes and is identified by UWVMROS1_4ef40b7333ab897b974b0d800d68ed65ab28d52fc3b5dbe0561f799c7818cf22.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Xarm_plannerPose_planRequest {
    /// Declared target; canonical bounds are part of CODEC_IDENTITY.
    /// @brief xarm_planner/pose_planRequest.target: geometry_msgs/Pose.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Xarm_plannerPose_planRequest; share/platform/ros/rs/API-CONTRACT.md
    pub target: Ros1Geometry_msgsPose,
}
/// @brief Construct the declared defaults of xarm_planner/pose_planRequest.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
/// sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
/// during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Xarm_plannerPose_planRequest; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Xarm_plannerPose_planRequest {
    fn default() -> Self {
        Self {
            target: Default::default(),
        }
    }
}
impl Ros1Xarm_plannerPose_planRequest {
    /// @brief Maximum canonical extent of xarm_planner/pose_planRequest in bytes.
    /// @details The inclusive bound is 56 bytes for this selected profile; it is not a native sizeof or a
    /// queue
    /// reservation.
    /// @see Ros1Xarm_plannerPose_planRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 56;
    /// @brief Cartesian field-bound maximum of xarm_planner/pose_planRequest in bytes.
    /// @details Exact independently combined field-bound extent 56; aggregate profile constraints may
    /// impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Xarm_plannerPose_planRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 56;
    /// @brief Aggregate profile byte budget of xarm_planner/pose_planRequest.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Xarm_plannerPose_planRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of xarm_planner/pose_planRequest.
    /// @details Exact identity UWVMROS1_4ef40b7333ab897b974b0d800d68ed65ab28d52fc3b5dbe0561f799c7818cf22
    /// binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Xarm_plannerPose_planRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_4ef40b7333ab897b974b0d800d68ed65ab28d52fc3b5dbe0561f799c7818cf22";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete xarm_planner/pose_planRequest value.
    /// @details Check every active field, finite bound and selected semantic invariant before returning
    /// its exact
    /// initialized wire extent. This is not maximum capacity, native sizeof, an allocation request or a
    /// transport
    /// operation.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @return Exact validated initialized wire extent in bytes through the language result/error
    /// contract; this
    /// value is not maximum capacity or a reservation.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_plannerPose_planRequest; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.target.wire_size()?)?;
        if n > 56 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete xarm_planner/pose_planRequest value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
    /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] out Caller-owned writable output bytes; success returns only the initialized prefix
    /// extent.
    /// @return Exact initialized caller-output extent in bytes through Result; no output allocation is
    /// returned or
    /// transferred. Ignore partial output on Err.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_plannerPose_planRequest; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.target.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Geometry_msgsPose::read_fields(bytes, at)?;
        value.target = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Xarm_plannerPose_planRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete xarm_planner/pose_planRequest value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
    /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @return Owned complete canonical bytes through the native language result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_plannerPose_planRequest; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete xarm_planner/pose_planRequest value.
    /// @details Require the complete 56..56-byte canonical representation. Reject truncation, invalid
    /// fields and
    /// trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are
    /// live.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_plannerPose_planRequest; share/platform/ros/rs/API-CONTRACT.md
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
/// Complete bounded value for ROS1 xarm_planner/pose_planResponse.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 xarm_planner/pose_planResponse value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies
/// 1..1 bytes
/// and is identified by UWVMROS1_d8eb8efb60382e22f7c357dbfd8391a3c6608358522718dadaeb36a46b985113.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Xarm_plannerPose_planResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    /// @brief xarm_planner/pose_planResponse.success: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Xarm_plannerPose_planResponse; share/platform/ros/rs/API-CONTRACT.md
    pub success: bool,
}
/// @brief Construct the declared defaults of xarm_planner/pose_planResponse.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
/// sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
/// during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Xarm_plannerPose_planResponse; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Xarm_plannerPose_planResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Xarm_plannerPose_planResponse {
    /// @brief Maximum canonical extent of xarm_planner/pose_planResponse in bytes.
    /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a
    /// queue
    /// reservation.
    /// @see Ros1Xarm_plannerPose_planResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 1;
    /// @brief Cartesian field-bound maximum of xarm_planner/pose_planResponse in bytes.
    /// @details Exact independently combined field-bound extent 1; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Xarm_plannerPose_planResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    /// @brief Aggregate profile byte budget of xarm_planner/pose_planResponse.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Xarm_plannerPose_planResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of xarm_planner/pose_planResponse.
    /// @details Exact identity UWVMROS1_d8eb8efb60382e22f7c357dbfd8391a3c6608358522718dadaeb36a46b985113
    /// binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Xarm_plannerPose_planResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_d8eb8efb60382e22f7c357dbfd8391a3c6608358522718dadaeb36a46b985113";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete xarm_planner/pose_planResponse value.
    /// @details Check every active field, finite bound and selected semantic invariant before returning
    /// its exact
    /// initialized wire extent. This is not maximum capacity, native sizeof, an allocation request or a
    /// transport
    /// operation.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @return Exact validated initialized wire extent in bytes through the language result/error
    /// contract; this
    /// value is not maximum capacity or a reservation.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_plannerPose_planResponse; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if n > 1 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete xarm_planner/pose_planResponse value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
    /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] out Caller-owned writable output bytes; success returns only the initialized prefix
    /// extent.
    /// @return Exact initialized caller-output extent in bytes through Result; no output allocation is
    /// returned or
    /// transferred. Ignore partial output on Err.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_plannerPose_planResponse; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
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
impl Canonical for Ros1Xarm_plannerPose_planResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete xarm_planner/pose_planResponse value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
    /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @return Owned complete canonical bytes through the native language result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_plannerPose_planResponse; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete xarm_planner/pose_planResponse value.
    /// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid
    /// fields and
    /// trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are
    /// live.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_plannerPose_planResponse; share/platform/ros/rs/API-CONTRACT.md
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
/// Complete bounded value for ROS1 xarm_planner/single_straight_planRequest.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 xarm_planner/single_straight_planRequest value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 56..56
/// bytes and is identified by UWVMROS1_1a6d7a443bf5aa7120d9595f93f922319b473efe007c59700a3b70ed7907809f.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Xarm_plannerSingle_straight_planRequest {
    /// Declared target; canonical bounds are part of CODEC_IDENTITY.
    /// @brief xarm_planner/single_straight_planRequest.target: geometry_msgs/Pose.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Xarm_plannerSingle_straight_planRequest; share/platform/ros/rs/API-CONTRACT.md
    pub target: Ros1Geometry_msgsPose,
}
/// @brief Construct the declared defaults of xarm_planner/single_straight_planRequest.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
/// sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
/// during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Xarm_plannerSingle_straight_planRequest; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Xarm_plannerSingle_straight_planRequest {
    fn default() -> Self {
        Self {
            target: Default::default(),
        }
    }
}
impl Ros1Xarm_plannerSingle_straight_planRequest {
    /// @brief Maximum canonical extent of xarm_planner/single_straight_planRequest in bytes.
    /// @details The inclusive bound is 56 bytes for this selected profile; it is not a native sizeof or a
    /// queue
    /// reservation.
    /// @see Ros1Xarm_plannerSingle_straight_planRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 56;
    /// @brief Cartesian field-bound maximum of xarm_planner/single_straight_planRequest in bytes.
    /// @details Exact independently combined field-bound extent 56; aggregate profile constraints may
    /// impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Xarm_plannerSingle_straight_planRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 56;
    /// @brief Aggregate profile byte budget of xarm_planner/single_straight_planRequest.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Xarm_plannerSingle_straight_planRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of xarm_planner/single_straight_planRequest.
    /// @details Exact identity UWVMROS1_1a6d7a443bf5aa7120d9595f93f922319b473efe007c59700a3b70ed7907809f
    /// binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Xarm_plannerSingle_straight_planRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_1a6d7a443bf5aa7120d9595f93f922319b473efe007c59700a3b70ed7907809f";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete xarm_planner/single_straight_planRequest value.
    /// @details Check every active field, finite bound and selected semantic invariant before returning
    /// its exact
    /// initialized wire extent. This is not maximum capacity, native sizeof, an allocation request or a
    /// transport
    /// operation.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @return Exact validated initialized wire extent in bytes through the language result/error
    /// contract; this
    /// value is not maximum capacity or a reservation.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_plannerSingle_straight_planRequest; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, self.target.wire_size()?)?;
        if n > 56 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete xarm_planner/single_straight_planRequest value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
    /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] out Caller-owned writable output bytes; success returns only the initialized prefix
    /// extent.
    /// @return Exact initialized caller-output extent in bytes through Result; no output allocation is
    /// returned or
    /// transferred. Ignore partial output on Err.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_plannerSingle_straight_planRequest; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        self.target.write_fields(out, at);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = Ros1Geometry_msgsPose::read_fields(bytes, at)?;
        value.target = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Xarm_plannerSingle_straight_planRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete xarm_planner/single_straight_planRequest value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
    /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @return Owned complete canonical bytes through the native language result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_plannerSingle_straight_planRequest; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete xarm_planner/single_straight_planRequest value.
    /// @details Require the complete 56..56-byte canonical representation. Reject truncation, invalid
    /// fields and
    /// trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are
    /// live.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_plannerSingle_straight_planRequest; share/platform/ros/rs/API-CONTRACT.md
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
/// Complete bounded value for ROS1 xarm_planner/single_straight_planResponse.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 xarm_planner/single_straight_planResponse value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies
/// 1..1 bytes
/// and is identified by UWVMROS1_91dfc3564ce446deb95d1e7a9d080b597b426a13c16f0af6d0452af21c3697dd.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Xarm_plannerSingle_straight_planResponse {
    /// Declared success; canonical bounds are part of CODEC_IDENTITY.
    /// @brief xarm_planner/single_straight_planResponse.success: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Xarm_plannerSingle_straight_planResponse; share/platform/ros/rs/API-CONTRACT.md
    pub success: bool,
}
/// @brief Construct the declared defaults of xarm_planner/single_straight_planResponse.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
/// sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
/// during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Xarm_plannerSingle_straight_planResponse; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Xarm_plannerSingle_straight_planResponse {
    fn default() -> Self {
        Self {
            success: Default::default(),
        }
    }
}
impl Ros1Xarm_plannerSingle_straight_planResponse {
    /// @brief Maximum canonical extent of xarm_planner/single_straight_planResponse in bytes.
    /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a
    /// queue
    /// reservation.
    /// @see Ros1Xarm_plannerSingle_straight_planResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 1;
    /// @brief Cartesian field-bound maximum of xarm_planner/single_straight_planResponse in bytes.
    /// @details Exact independently combined field-bound extent 1; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Xarm_plannerSingle_straight_planResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    /// @brief Aggregate profile byte budget of xarm_planner/single_straight_planResponse.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Xarm_plannerSingle_straight_planResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of xarm_planner/single_straight_planResponse.
    /// @details Exact identity UWVMROS1_91dfc3564ce446deb95d1e7a9d080b597b426a13c16f0af6d0452af21c3697dd
    /// binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Xarm_plannerSingle_straight_planResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_91dfc3564ce446deb95d1e7a9d080b597b426a13c16f0af6d0452af21c3697dd";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete xarm_planner/single_straight_planResponse value.
    /// @details Check every active field, finite bound and selected semantic invariant before returning
    /// its exact
    /// initialized wire extent. This is not maximum capacity, native sizeof, an allocation request or a
    /// transport
    /// operation.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @return Exact validated initialized wire extent in bytes through the language result/error
    /// contract; this
    /// value is not maximum capacity or a reservation.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_plannerSingle_straight_planResponse; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if n > 1 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete xarm_planner/single_straight_planResponse value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
    /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @param[out] out Caller-owned writable output bytes; success returns only the initialized prefix
    /// extent.
    /// @return Exact initialized caller-output extent in bytes through Result; no output allocation is
    /// returned or
    /// transferred. Ignore partial output on Err.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_plannerSingle_straight_planResponse; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
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
impl Canonical for Ros1Xarm_plannerSingle_straight_planResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete xarm_planner/single_straight_planResponse value.
    /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
    /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
    /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
    /// @return Owned complete canonical bytes through the native language result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_plannerSingle_straight_planResponse; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete xarm_planner/single_straight_planResponse value.
    /// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid
    /// fields and
    /// trailing bytes before publishing a successful value.
    /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are
    /// live.
    /// @return A complete decoded record through the native language value/result/exception/error contract.
    /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
    /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
    /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
    /// asynchronous
    /// side effect is issued.
    /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
    /// during synchronous encoding; do not share mutable cursors during a call.
    /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
    /// @see Ros1Xarm_plannerSingle_straight_planResponse; share/platform/ros/rs/API-CONTRACT.md
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
