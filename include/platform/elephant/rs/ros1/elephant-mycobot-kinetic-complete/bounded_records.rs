//! @file bounded_records.rs
//! @brief Preserve the complete original elephant/kinetic canonical value domain.
//! @details The selected domain contains 36 complete record/components and 116 original fields. Declared
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
/// Complete bounded value for ROS1 mycobot_communication/MycobotAngles.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 mycobot_communication/MycobotAngles value.
/// @details All 6 declared fields are retained in source order. The canonical representation occupies 24..24
/// bytes and is identified by UWVMROS1_4cbda93a13d78e9c592327caa737dfecf33adf6db898015afd56ecf7732f9aa6.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Mycobot_communicationMycobotAngles {
    /// Declared joint_1; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mycobot_communication/MycobotAngles.joint_1: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mycobot_communicationMycobotAngles; share/platform/ros/rs/API-CONTRACT.md
    pub joint_1: f32,
    /// Declared joint_2; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mycobot_communication/MycobotAngles.joint_2: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mycobot_communicationMycobotAngles; share/platform/ros/rs/API-CONTRACT.md
    pub joint_2: f32,
    /// Declared joint_3; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mycobot_communication/MycobotAngles.joint_3: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mycobot_communicationMycobotAngles; share/platform/ros/rs/API-CONTRACT.md
    pub joint_3: f32,
    /// Declared joint_4; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mycobot_communication/MycobotAngles.joint_4: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mycobot_communicationMycobotAngles; share/platform/ros/rs/API-CONTRACT.md
    pub joint_4: f32,
    /// Declared joint_5; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mycobot_communication/MycobotAngles.joint_5: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mycobot_communicationMycobotAngles; share/platform/ros/rs/API-CONTRACT.md
    pub joint_5: f32,
    /// Declared joint_6; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mycobot_communication/MycobotAngles.joint_6: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mycobot_communicationMycobotAngles; share/platform/ros/rs/API-CONTRACT.md
    pub joint_6: f32,
}
/// @brief Construct the declared defaults of mycobot_communication/MycobotAngles.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
/// sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
/// during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Mycobot_communicationMycobotAngles; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Mycobot_communicationMycobotAngles {
    fn default() -> Self {
        Self {
            joint_1: Default::default(),
            joint_2: Default::default(),
            joint_3: Default::default(),
            joint_4: Default::default(),
            joint_5: Default::default(),
            joint_6: Default::default(),
        }
    }
}
impl Ros1Mycobot_communicationMycobotAngles {
    /// @brief Maximum canonical extent of mycobot_communication/MycobotAngles in bytes.
    /// @details The inclusive bound is 24 bytes for this selected profile; it is not a native sizeof or a
    /// queue
    /// reservation.
    /// @see Ros1Mycobot_communicationMycobotAngles; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 24;
    /// @brief Cartesian field-bound maximum of mycobot_communication/MycobotAngles in bytes.
    /// @details Exact independently combined field-bound extent 24; aggregate profile constraints may
    /// impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Mycobot_communicationMycobotAngles; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 24;
    /// @brief Aggregate profile byte budget of mycobot_communication/MycobotAngles.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Mycobot_communicationMycobotAngles; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of mycobot_communication/MycobotAngles.
    /// @details Exact identity UWVMROS1_4cbda93a13d78e9c592327caa737dfecf33adf6db898015afd56ecf7732f9aa6
    /// binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Mycobot_communicationMycobotAngles; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_4cbda93a13d78e9c592327caa737dfecf33adf6db898015afd56ecf7732f9aa6";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete mycobot_communication/MycobotAngles value.
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
    /// @see Ros1Mycobot_communicationMycobotAngles; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if !self.joint_1.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.joint_2.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.joint_3.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.joint_4.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.joint_5.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.joint_6.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if n > 24 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete mycobot_communication/MycobotAngles value.
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
    /// @see Ros1Mycobot_communicationMycobotAngles; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.joint_1.to_le_bytes());
        put(out, at, &self.joint_2.to_le_bytes());
        put(out, at, &self.joint_3.to_le_bytes());
        put(out, at, &self.joint_4.to_le_bytes());
        put(out, at, &self.joint_5.to_le_bytes());
        put(out, at, &self.joint_6.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.joint_1 = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.joint_2 = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.joint_3 = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.joint_4 = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.joint_5 = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.joint_6 = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Mycobot_communicationMycobotAngles {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete mycobot_communication/MycobotAngles value.
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
    /// @see Ros1Mycobot_communicationMycobotAngles; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete mycobot_communication/MycobotAngles value.
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
    /// @see Ros1Mycobot_communicationMycobotAngles; share/platform/ros/rs/API-CONTRACT.md
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
/// Complete bounded value for ROS1 mycobot_communication/MycobotCoords.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 mycobot_communication/MycobotCoords value.
/// @details All 6 declared fields are retained in source order. The canonical representation occupies 24..24
/// bytes and is identified by UWVMROS1_1da0d6342a1f4079244a65ad413d4559047d33b049ce9da04f8ab0bd226410a2.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Mycobot_communicationMycobotCoords {
    /// Declared x; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mycobot_communication/MycobotCoords.x: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mycobot_communicationMycobotCoords; share/platform/ros/rs/API-CONTRACT.md
    pub x: f32,
    /// Declared y; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mycobot_communication/MycobotCoords.y: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mycobot_communicationMycobotCoords; share/platform/ros/rs/API-CONTRACT.md
    pub y: f32,
    /// Declared z; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mycobot_communication/MycobotCoords.z: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mycobot_communicationMycobotCoords; share/platform/ros/rs/API-CONTRACT.md
    pub z: f32,
    /// Declared rx; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mycobot_communication/MycobotCoords.rx: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mycobot_communicationMycobotCoords; share/platform/ros/rs/API-CONTRACT.md
    pub rx: f32,
    /// Declared ry; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mycobot_communication/MycobotCoords.ry: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mycobot_communicationMycobotCoords; share/platform/ros/rs/API-CONTRACT.md
    pub ry: f32,
    /// Declared rz; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mycobot_communication/MycobotCoords.rz: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mycobot_communicationMycobotCoords; share/platform/ros/rs/API-CONTRACT.md
    pub rz: f32,
}
/// @brief Construct the declared defaults of mycobot_communication/MycobotCoords.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
/// sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
/// during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Mycobot_communicationMycobotCoords; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Mycobot_communicationMycobotCoords {
    fn default() -> Self {
        Self {
            x: Default::default(),
            y: Default::default(),
            z: Default::default(),
            rx: Default::default(),
            ry: Default::default(),
            rz: Default::default(),
        }
    }
}
impl Ros1Mycobot_communicationMycobotCoords {
    /// @brief Maximum canonical extent of mycobot_communication/MycobotCoords in bytes.
    /// @details The inclusive bound is 24 bytes for this selected profile; it is not a native sizeof or a
    /// queue
    /// reservation.
    /// @see Ros1Mycobot_communicationMycobotCoords; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 24;
    /// @brief Cartesian field-bound maximum of mycobot_communication/MycobotCoords in bytes.
    /// @details Exact independently combined field-bound extent 24; aggregate profile constraints may
    /// impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Mycobot_communicationMycobotCoords; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 24;
    /// @brief Aggregate profile byte budget of mycobot_communication/MycobotCoords.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Mycobot_communicationMycobotCoords; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of mycobot_communication/MycobotCoords.
    /// @details Exact identity UWVMROS1_1da0d6342a1f4079244a65ad413d4559047d33b049ce9da04f8ab0bd226410a2
    /// binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Mycobot_communicationMycobotCoords; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_1da0d6342a1f4079244a65ad413d4559047d33b049ce9da04f8ab0bd226410a2";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete mycobot_communication/MycobotCoords value.
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
    /// @see Ros1Mycobot_communicationMycobotCoords; share/platform/ros/rs/API-CONTRACT.md
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
        if !self.rx.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.ry.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.rz.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if n > 24 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete mycobot_communication/MycobotCoords value.
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
    /// @see Ros1Mycobot_communicationMycobotCoords; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
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
        put(out, at, &self.rx.to_le_bytes());
        put(out, at, &self.ry.to_le_bytes());
        put(out, at, &self.rz.to_le_bytes());
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
        value.rx = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.ry = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.rz = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Mycobot_communicationMycobotCoords {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete mycobot_communication/MycobotCoords value.
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
    /// @see Ros1Mycobot_communicationMycobotCoords; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete mycobot_communication/MycobotCoords value.
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
    /// @see Ros1Mycobot_communicationMycobotCoords; share/platform/ros/rs/API-CONTRACT.md
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
/// Complete bounded value for ROS1 mycobot_communication/MycobotGripperStatus.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 mycobot_communication/MycobotGripperStatus value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies
/// 1..1 bytes
/// and is identified by UWVMROS1_65edcc278c4e21355c62408ff310598b3dbdf03ed426e3da0f2ee0bc6910e649.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Mycobot_communicationMycobotGripperStatus {
    /// Declared Status; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mycobot_communication/MycobotGripperStatus.Status: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mycobot_communicationMycobotGripperStatus; share/platform/ros/rs/API-CONTRACT.md
    pub Status: bool,
}
/// @brief Construct the declared defaults of mycobot_communication/MycobotGripperStatus.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
/// sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
/// during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Mycobot_communicationMycobotGripperStatus; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Mycobot_communicationMycobotGripperStatus {
    fn default() -> Self {
        Self {
            Status: Default::default(),
        }
    }
}
impl Ros1Mycobot_communicationMycobotGripperStatus {
    /// @brief Maximum canonical extent of mycobot_communication/MycobotGripperStatus in bytes.
    /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a
    /// queue
    /// reservation.
    /// @see Ros1Mycobot_communicationMycobotGripperStatus; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 1;
    /// @brief Cartesian field-bound maximum of mycobot_communication/MycobotGripperStatus in bytes.
    /// @details Exact independently combined field-bound extent 1; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Mycobot_communicationMycobotGripperStatus; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    /// @brief Aggregate profile byte budget of mycobot_communication/MycobotGripperStatus.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Mycobot_communicationMycobotGripperStatus; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of mycobot_communication/MycobotGripperStatus.
    /// @details Exact identity UWVMROS1_65edcc278c4e21355c62408ff310598b3dbdf03ed426e3da0f2ee0bc6910e649
    /// binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Mycobot_communicationMycobotGripperStatus; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_65edcc278c4e21355c62408ff310598b3dbdf03ed426e3da0f2ee0bc6910e649";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete mycobot_communication/MycobotGripperStatus value.
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
    /// @see Ros1Mycobot_communicationMycobotGripperStatus; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if n > 1 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete mycobot_communication/MycobotGripperStatus value.
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
    /// @see Ros1Mycobot_communicationMycobotGripperStatus; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &[u8::from(self.Status)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.Status = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Mycobot_communicationMycobotGripperStatus {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete mycobot_communication/MycobotGripperStatus value.
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
    /// @see Ros1Mycobot_communicationMycobotGripperStatus; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete mycobot_communication/MycobotGripperStatus value.
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
    /// @see Ros1Mycobot_communicationMycobotGripperStatus; share/platform/ros/rs/API-CONTRACT.md
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
/// Complete bounded value for ROS1 mycobot_communication/MycobotPumpStatus.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 mycobot_communication/MycobotPumpStatus value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies
/// 3..3 bytes
/// and is identified by UWVMROS1_0c0cb3c0fe97b9f9c65769a09f505ff6c27a60723598d656cd5f16255f36bfbd.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Mycobot_communicationMycobotPumpStatus {
    /// Declared Status; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mycobot_communication/MycobotPumpStatus.Status: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mycobot_communicationMycobotPumpStatus; share/platform/ros/rs/API-CONTRACT.md
    pub Status: bool,
    /// Declared Pin1; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mycobot_communication/MycobotPumpStatus.Pin1: int8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mycobot_communicationMycobotPumpStatus; share/platform/ros/rs/API-CONTRACT.md
    pub Pin1: i8,
    /// Declared Pin2; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mycobot_communication/MycobotPumpStatus.Pin2: int8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mycobot_communicationMycobotPumpStatus; share/platform/ros/rs/API-CONTRACT.md
    pub Pin2: i8,
}
/// @brief Construct the declared defaults of mycobot_communication/MycobotPumpStatus.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
/// sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
/// during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Mycobot_communicationMycobotPumpStatus; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Mycobot_communicationMycobotPumpStatus {
    fn default() -> Self {
        Self {
            Status: Default::default(),
            Pin1: Default::default(),
            Pin2: Default::default(),
        }
    }
}
impl Ros1Mycobot_communicationMycobotPumpStatus {
    /// @brief Maximum canonical extent of mycobot_communication/MycobotPumpStatus in bytes.
    /// @details The inclusive bound is 3 bytes for this selected profile; it is not a native sizeof or a
    /// queue
    /// reservation.
    /// @see Ros1Mycobot_communicationMycobotPumpStatus; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 3;
    /// @brief Cartesian field-bound maximum of mycobot_communication/MycobotPumpStatus in bytes.
    /// @details Exact independently combined field-bound extent 3; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Mycobot_communicationMycobotPumpStatus; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 3;
    /// @brief Aggregate profile byte budget of mycobot_communication/MycobotPumpStatus.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Mycobot_communicationMycobotPumpStatus; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of mycobot_communication/MycobotPumpStatus.
    /// @details Exact identity UWVMROS1_0c0cb3c0fe97b9f9c65769a09f505ff6c27a60723598d656cd5f16255f36bfbd
    /// binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Mycobot_communicationMycobotPumpStatus; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_0c0cb3c0fe97b9f9c65769a09f505ff6c27a60723598d656cd5f16255f36bfbd";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete mycobot_communication/MycobotPumpStatus value.
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
    /// @see Ros1Mycobot_communicationMycobotPumpStatus; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        if n > 3 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete mycobot_communication/MycobotPumpStatus value.
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
    /// @see Ros1Mycobot_communicationMycobotPumpStatus; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &[u8::from(self.Status)]);
        put(out, at, &self.Pin1.to_le_bytes());
        put(out, at, &self.Pin2.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.Status = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.Pin1 = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.Pin2 = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Mycobot_communicationMycobotPumpStatus {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete mycobot_communication/MycobotPumpStatus value.
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
    /// @see Ros1Mycobot_communicationMycobotPumpStatus; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete mycobot_communication/MycobotPumpStatus value.
    /// @details Require the complete 3..3-byte canonical representation. Reject truncation, invalid
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
    /// @see Ros1Mycobot_communicationMycobotPumpStatus; share/platform/ros/rs/API-CONTRACT.md
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 3 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 3 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 mycobot_communication/MycobotSetAngles.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 mycobot_communication/MycobotSetAngles value.
/// @details All 7 declared fields are retained in source order. The canonical representation occupies 25..25
/// bytes and is identified by UWVMROS1_0844a6cf5033b27ad5062741c939a7cfff63edeba34f7e56c8178e1fab85b334.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Mycobot_communicationMycobotSetAngles {
    /// Declared joint_1; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mycobot_communication/MycobotSetAngles.joint_1: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mycobot_communicationMycobotSetAngles; share/platform/ros/rs/API-CONTRACT.md
    pub joint_1: f32,
    /// Declared joint_2; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mycobot_communication/MycobotSetAngles.joint_2: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mycobot_communicationMycobotSetAngles; share/platform/ros/rs/API-CONTRACT.md
    pub joint_2: f32,
    /// Declared joint_3; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mycobot_communication/MycobotSetAngles.joint_3: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mycobot_communicationMycobotSetAngles; share/platform/ros/rs/API-CONTRACT.md
    pub joint_3: f32,
    /// Declared joint_4; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mycobot_communication/MycobotSetAngles.joint_4: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mycobot_communicationMycobotSetAngles; share/platform/ros/rs/API-CONTRACT.md
    pub joint_4: f32,
    /// Declared joint_5; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mycobot_communication/MycobotSetAngles.joint_5: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mycobot_communicationMycobotSetAngles; share/platform/ros/rs/API-CONTRACT.md
    pub joint_5: f32,
    /// Declared joint_6; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mycobot_communication/MycobotSetAngles.joint_6: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mycobot_communicationMycobotSetAngles; share/platform/ros/rs/API-CONTRACT.md
    pub joint_6: f32,
    /// Declared speed; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mycobot_communication/MycobotSetAngles.speed: int8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mycobot_communicationMycobotSetAngles; share/platform/ros/rs/API-CONTRACT.md
    pub speed: i8,
}
/// @brief Construct the declared defaults of mycobot_communication/MycobotSetAngles.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
/// sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
/// during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Mycobot_communicationMycobotSetAngles; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Mycobot_communicationMycobotSetAngles {
    fn default() -> Self {
        Self {
            joint_1: Default::default(),
            joint_2: Default::default(),
            joint_3: Default::default(),
            joint_4: Default::default(),
            joint_5: Default::default(),
            joint_6: Default::default(),
            speed: Default::default(),
        }
    }
}
impl Ros1Mycobot_communicationMycobotSetAngles {
    /// @brief Maximum canonical extent of mycobot_communication/MycobotSetAngles in bytes.
    /// @details The inclusive bound is 25 bytes for this selected profile; it is not a native sizeof or a
    /// queue
    /// reservation.
    /// @see Ros1Mycobot_communicationMycobotSetAngles; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 25;
    /// @brief Cartesian field-bound maximum of mycobot_communication/MycobotSetAngles in bytes.
    /// @details Exact independently combined field-bound extent 25; aggregate profile constraints may
    /// impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Mycobot_communicationMycobotSetAngles; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 25;
    /// @brief Aggregate profile byte budget of mycobot_communication/MycobotSetAngles.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Mycobot_communicationMycobotSetAngles; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of mycobot_communication/MycobotSetAngles.
    /// @details Exact identity UWVMROS1_0844a6cf5033b27ad5062741c939a7cfff63edeba34f7e56c8178e1fab85b334
    /// binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Mycobot_communicationMycobotSetAngles; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_0844a6cf5033b27ad5062741c939a7cfff63edeba34f7e56c8178e1fab85b334";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete mycobot_communication/MycobotSetAngles value.
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
    /// @see Ros1Mycobot_communicationMycobotSetAngles; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if !self.joint_1.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.joint_2.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.joint_3.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.joint_4.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.joint_5.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.joint_6.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, 1)?;
        if n > 25 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete mycobot_communication/MycobotSetAngles value.
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
    /// @see Ros1Mycobot_communicationMycobotSetAngles; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.joint_1.to_le_bytes());
        put(out, at, &self.joint_2.to_le_bytes());
        put(out, at, &self.joint_3.to_le_bytes());
        put(out, at, &self.joint_4.to_le_bytes());
        put(out, at, &self.joint_5.to_le_bytes());
        put(out, at, &self.joint_6.to_le_bytes());
        put(out, at, &self.speed.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.joint_1 = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.joint_2 = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.joint_3 = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.joint_4 = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.joint_5 = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.joint_6 = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.speed = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Mycobot_communicationMycobotSetAngles {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete mycobot_communication/MycobotSetAngles value.
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
    /// @see Ros1Mycobot_communicationMycobotSetAngles; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete mycobot_communication/MycobotSetAngles value.
    /// @details Require the complete 25..25-byte canonical representation. Reject truncation, invalid
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
    /// @see Ros1Mycobot_communicationMycobotSetAngles; share/platform/ros/rs/API-CONTRACT.md
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 25 {
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
/// Complete bounded value for ROS1 mycobot_communication/MycobotSetCoords.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 mycobot_communication/MycobotSetCoords value.
/// @details All 8 declared fields are retained in source order. The canonical representation occupies 26..26
/// bytes and is identified by UWVMROS1_39376ad94c0c9b213703a373b6a3b12fd0dad0ec20ff312143d30099842747a9.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Mycobot_communicationMycobotSetCoords {
    /// Declared x; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mycobot_communication/MycobotSetCoords.x: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/rs/API-CONTRACT.md
    pub x: f32,
    /// Declared y; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mycobot_communication/MycobotSetCoords.y: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/rs/API-CONTRACT.md
    pub y: f32,
    /// Declared z; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mycobot_communication/MycobotSetCoords.z: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/rs/API-CONTRACT.md
    pub z: f32,
    /// Declared rx; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mycobot_communication/MycobotSetCoords.rx: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/rs/API-CONTRACT.md
    pub rx: f32,
    /// Declared ry; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mycobot_communication/MycobotSetCoords.ry: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/rs/API-CONTRACT.md
    pub ry: f32,
    /// Declared rz; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mycobot_communication/MycobotSetCoords.rz: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/rs/API-CONTRACT.md
    pub rz: f32,
    /// Declared speed; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mycobot_communication/MycobotSetCoords.speed: int8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/rs/API-CONTRACT.md
    pub speed: i8,
    /// Declared model; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mycobot_communication/MycobotSetCoords.model: int8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/rs/API-CONTRACT.md
    pub model: i8,
}
/// @brief Construct the declared defaults of mycobot_communication/MycobotSetCoords.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
/// sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
/// during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Mycobot_communicationMycobotSetCoords {
    fn default() -> Self {
        Self {
            x: Default::default(),
            y: Default::default(),
            z: Default::default(),
            rx: Default::default(),
            ry: Default::default(),
            rz: Default::default(),
            speed: Default::default(),
            model: Default::default(),
        }
    }
}
impl Ros1Mycobot_communicationMycobotSetCoords {
    /// @brief Maximum canonical extent of mycobot_communication/MycobotSetCoords in bytes.
    /// @details The inclusive bound is 26 bytes for this selected profile; it is not a native sizeof or a
    /// queue
    /// reservation.
    /// @see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 26;
    /// @brief Cartesian field-bound maximum of mycobot_communication/MycobotSetCoords in bytes.
    /// @details Exact independently combined field-bound extent 26; aggregate profile constraints may
    /// impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 26;
    /// @brief Aggregate profile byte budget of mycobot_communication/MycobotSetCoords.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of mycobot_communication/MycobotSetCoords.
    /// @details Exact identity UWVMROS1_39376ad94c0c9b213703a373b6a3b12fd0dad0ec20ff312143d30099842747a9
    /// binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_39376ad94c0c9b213703a373b6a3b12fd0dad0ec20ff312143d30099842747a9";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete mycobot_communication/MycobotSetCoords value.
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
    /// @see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/rs/API-CONTRACT.md
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
        if !self.rx.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.ry.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.rz.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        if n > 26 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete mycobot_communication/MycobotSetCoords value.
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
    /// @see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
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
        put(out, at, &self.rx.to_le_bytes());
        put(out, at, &self.ry.to_le_bytes());
        put(out, at, &self.rz.to_le_bytes());
        put(out, at, &self.speed.to_le_bytes());
        put(out, at, &self.model.to_le_bytes());
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
        value.rx = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.ry = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.rz = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.speed = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.model = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Mycobot_communicationMycobotSetCoords {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete mycobot_communication/MycobotSetCoords value.
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
    /// @see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete mycobot_communication/MycobotSetCoords value.
    /// @details Require the complete 26..26-byte canonical representation. Reject truncation, invalid
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
    /// @see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/rs/API-CONTRACT.md
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
/// Complete bounded value for ROS1 mycobot_communication/GetAnglesRequest.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 mycobot_communication/GetAnglesRequest value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies
/// 0..0 bytes
/// and is identified by UWVMROS1_8915949f81b788e5797f3bc4935e33e9e9eae82c5db3a1211129e7ef03cd2c54.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Mycobot_communicationGetAnglesRequest {}
/// @brief Construct the declared defaults of mycobot_communication/GetAnglesRequest.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
/// sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
/// during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Mycobot_communicationGetAnglesRequest; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Mycobot_communicationGetAnglesRequest {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Mycobot_communicationGetAnglesRequest {
    /// @brief Maximum canonical extent of mycobot_communication/GetAnglesRequest in bytes.
    /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a
    /// queue
    /// reservation.
    /// @see Ros1Mycobot_communicationGetAnglesRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 0;
    /// @brief Cartesian field-bound maximum of mycobot_communication/GetAnglesRequest in bytes.
    /// @details Exact independently combined field-bound extent 0; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Mycobot_communicationGetAnglesRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    /// @brief Aggregate profile byte budget of mycobot_communication/GetAnglesRequest.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Mycobot_communicationGetAnglesRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of mycobot_communication/GetAnglesRequest.
    /// @details Exact identity UWVMROS1_8915949f81b788e5797f3bc4935e33e9e9eae82c5db3a1211129e7ef03cd2c54
    /// binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Mycobot_communicationGetAnglesRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_8915949f81b788e5797f3bc4935e33e9e9eae82c5db3a1211129e7ef03cd2c54";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete mycobot_communication/GetAnglesRequest value.
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
    /// @see Ros1Mycobot_communicationGetAnglesRequest; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if n > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete mycobot_communication/GetAnglesRequest value.
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
    /// @see Ros1Mycobot_communicationGetAnglesRequest; share/platform/ros/rs/API-CONTRACT.md
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
impl Canonical for Ros1Mycobot_communicationGetAnglesRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete mycobot_communication/GetAnglesRequest value.
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
    /// @see Ros1Mycobot_communicationGetAnglesRequest; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete mycobot_communication/GetAnglesRequest value.
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
    /// @see Ros1Mycobot_communicationGetAnglesRequest; share/platform/ros/rs/API-CONTRACT.md
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
/// Complete bounded value for ROS1 mycobot_communication/GetAnglesResponse.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 mycobot_communication/GetAnglesResponse value.
/// @details All 6 declared fields are retained in source order. The canonical representation occupies 24..24
/// bytes and is identified by UWVMROS1_482e6b845d6913ab7ea12580a395caf0a9815b56f985eb3a0553263fb7fd4ff3.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Mycobot_communicationGetAnglesResponse {
    /// Declared joint_1; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mycobot_communication/GetAnglesResponse.joint_1: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mycobot_communicationGetAnglesResponse; share/platform/ros/rs/API-CONTRACT.md
    pub joint_1: f32,
    /// Declared joint_2; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mycobot_communication/GetAnglesResponse.joint_2: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mycobot_communicationGetAnglesResponse; share/platform/ros/rs/API-CONTRACT.md
    pub joint_2: f32,
    /// Declared joint_3; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mycobot_communication/GetAnglesResponse.joint_3: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mycobot_communicationGetAnglesResponse; share/platform/ros/rs/API-CONTRACT.md
    pub joint_3: f32,
    /// Declared joint_4; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mycobot_communication/GetAnglesResponse.joint_4: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mycobot_communicationGetAnglesResponse; share/platform/ros/rs/API-CONTRACT.md
    pub joint_4: f32,
    /// Declared joint_5; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mycobot_communication/GetAnglesResponse.joint_5: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mycobot_communicationGetAnglesResponse; share/platform/ros/rs/API-CONTRACT.md
    pub joint_5: f32,
    /// Declared joint_6; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mycobot_communication/GetAnglesResponse.joint_6: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mycobot_communicationGetAnglesResponse; share/platform/ros/rs/API-CONTRACT.md
    pub joint_6: f32,
}
/// @brief Construct the declared defaults of mycobot_communication/GetAnglesResponse.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
/// sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
/// during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Mycobot_communicationGetAnglesResponse; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Mycobot_communicationGetAnglesResponse {
    fn default() -> Self {
        Self {
            joint_1: Default::default(),
            joint_2: Default::default(),
            joint_3: Default::default(),
            joint_4: Default::default(),
            joint_5: Default::default(),
            joint_6: Default::default(),
        }
    }
}
impl Ros1Mycobot_communicationGetAnglesResponse {
    /// @brief Maximum canonical extent of mycobot_communication/GetAnglesResponse in bytes.
    /// @details The inclusive bound is 24 bytes for this selected profile; it is not a native sizeof or a
    /// queue
    /// reservation.
    /// @see Ros1Mycobot_communicationGetAnglesResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 24;
    /// @brief Cartesian field-bound maximum of mycobot_communication/GetAnglesResponse in bytes.
    /// @details Exact independently combined field-bound extent 24; aggregate profile constraints may
    /// impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Mycobot_communicationGetAnglesResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 24;
    /// @brief Aggregate profile byte budget of mycobot_communication/GetAnglesResponse.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Mycobot_communicationGetAnglesResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of mycobot_communication/GetAnglesResponse.
    /// @details Exact identity UWVMROS1_482e6b845d6913ab7ea12580a395caf0a9815b56f985eb3a0553263fb7fd4ff3
    /// binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Mycobot_communicationGetAnglesResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_482e6b845d6913ab7ea12580a395caf0a9815b56f985eb3a0553263fb7fd4ff3";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete mycobot_communication/GetAnglesResponse value.
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
    /// @see Ros1Mycobot_communicationGetAnglesResponse; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if !self.joint_1.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.joint_2.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.joint_3.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.joint_4.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.joint_5.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.joint_6.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if n > 24 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete mycobot_communication/GetAnglesResponse value.
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
    /// @see Ros1Mycobot_communicationGetAnglesResponse; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.joint_1.to_le_bytes());
        put(out, at, &self.joint_2.to_le_bytes());
        put(out, at, &self.joint_3.to_le_bytes());
        put(out, at, &self.joint_4.to_le_bytes());
        put(out, at, &self.joint_5.to_le_bytes());
        put(out, at, &self.joint_6.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.joint_1 = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.joint_2 = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.joint_3 = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.joint_4 = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.joint_5 = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.joint_6 = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Mycobot_communicationGetAnglesResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete mycobot_communication/GetAnglesResponse value.
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
    /// @see Ros1Mycobot_communicationGetAnglesResponse; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete mycobot_communication/GetAnglesResponse value.
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
    /// @see Ros1Mycobot_communicationGetAnglesResponse; share/platform/ros/rs/API-CONTRACT.md
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
/// Complete bounded value for ROS1 mycobot_communication/GetCoordsRequest.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 mycobot_communication/GetCoordsRequest value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies
/// 0..0 bytes
/// and is identified by UWVMROS1_54acc83a24f2f62d8ba9c14b1cea1703cb6097360720550cc438671282d45876.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Mycobot_communicationGetCoordsRequest {}
/// @brief Construct the declared defaults of mycobot_communication/GetCoordsRequest.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
/// sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
/// during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Mycobot_communicationGetCoordsRequest; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Mycobot_communicationGetCoordsRequest {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Mycobot_communicationGetCoordsRequest {
    /// @brief Maximum canonical extent of mycobot_communication/GetCoordsRequest in bytes.
    /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a
    /// queue
    /// reservation.
    /// @see Ros1Mycobot_communicationGetCoordsRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 0;
    /// @brief Cartesian field-bound maximum of mycobot_communication/GetCoordsRequest in bytes.
    /// @details Exact independently combined field-bound extent 0; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Mycobot_communicationGetCoordsRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    /// @brief Aggregate profile byte budget of mycobot_communication/GetCoordsRequest.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Mycobot_communicationGetCoordsRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of mycobot_communication/GetCoordsRequest.
    /// @details Exact identity UWVMROS1_54acc83a24f2f62d8ba9c14b1cea1703cb6097360720550cc438671282d45876
    /// binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Mycobot_communicationGetCoordsRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_54acc83a24f2f62d8ba9c14b1cea1703cb6097360720550cc438671282d45876";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete mycobot_communication/GetCoordsRequest value.
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
    /// @see Ros1Mycobot_communicationGetCoordsRequest; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if n > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete mycobot_communication/GetCoordsRequest value.
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
    /// @see Ros1Mycobot_communicationGetCoordsRequest; share/platform/ros/rs/API-CONTRACT.md
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
impl Canonical for Ros1Mycobot_communicationGetCoordsRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete mycobot_communication/GetCoordsRequest value.
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
    /// @see Ros1Mycobot_communicationGetCoordsRequest; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete mycobot_communication/GetCoordsRequest value.
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
    /// @see Ros1Mycobot_communicationGetCoordsRequest; share/platform/ros/rs/API-CONTRACT.md
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
/// Complete bounded value for ROS1 mycobot_communication/GetCoordsResponse.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 mycobot_communication/GetCoordsResponse value.
/// @details All 6 declared fields are retained in source order. The canonical representation occupies 24..24
/// bytes and is identified by UWVMROS1_275b9bec563bb8578112b3680400523000a08a8e194044164e5334336b73d107.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Mycobot_communicationGetCoordsResponse {
    /// Declared x; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mycobot_communication/GetCoordsResponse.x: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mycobot_communicationGetCoordsResponse; share/platform/ros/rs/API-CONTRACT.md
    pub x: f32,
    /// Declared y; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mycobot_communication/GetCoordsResponse.y: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mycobot_communicationGetCoordsResponse; share/platform/ros/rs/API-CONTRACT.md
    pub y: f32,
    /// Declared z; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mycobot_communication/GetCoordsResponse.z: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mycobot_communicationGetCoordsResponse; share/platform/ros/rs/API-CONTRACT.md
    pub z: f32,
    /// Declared rx; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mycobot_communication/GetCoordsResponse.rx: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mycobot_communicationGetCoordsResponse; share/platform/ros/rs/API-CONTRACT.md
    pub rx: f32,
    /// Declared ry; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mycobot_communication/GetCoordsResponse.ry: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mycobot_communicationGetCoordsResponse; share/platform/ros/rs/API-CONTRACT.md
    pub ry: f32,
    /// Declared rz; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mycobot_communication/GetCoordsResponse.rz: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mycobot_communicationGetCoordsResponse; share/platform/ros/rs/API-CONTRACT.md
    pub rz: f32,
}
/// @brief Construct the declared defaults of mycobot_communication/GetCoordsResponse.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
/// sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
/// during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Mycobot_communicationGetCoordsResponse; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Mycobot_communicationGetCoordsResponse {
    fn default() -> Self {
        Self {
            x: Default::default(),
            y: Default::default(),
            z: Default::default(),
            rx: Default::default(),
            ry: Default::default(),
            rz: Default::default(),
        }
    }
}
impl Ros1Mycobot_communicationGetCoordsResponse {
    /// @brief Maximum canonical extent of mycobot_communication/GetCoordsResponse in bytes.
    /// @details The inclusive bound is 24 bytes for this selected profile; it is not a native sizeof or a
    /// queue
    /// reservation.
    /// @see Ros1Mycobot_communicationGetCoordsResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 24;
    /// @brief Cartesian field-bound maximum of mycobot_communication/GetCoordsResponse in bytes.
    /// @details Exact independently combined field-bound extent 24; aggregate profile constraints may
    /// impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Mycobot_communicationGetCoordsResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 24;
    /// @brief Aggregate profile byte budget of mycobot_communication/GetCoordsResponse.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Mycobot_communicationGetCoordsResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of mycobot_communication/GetCoordsResponse.
    /// @details Exact identity UWVMROS1_275b9bec563bb8578112b3680400523000a08a8e194044164e5334336b73d107
    /// binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Mycobot_communicationGetCoordsResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_275b9bec563bb8578112b3680400523000a08a8e194044164e5334336b73d107";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete mycobot_communication/GetCoordsResponse value.
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
    /// @see Ros1Mycobot_communicationGetCoordsResponse; share/platform/ros/rs/API-CONTRACT.md
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
        if !self.rx.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.ry.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.rz.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if n > 24 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete mycobot_communication/GetCoordsResponse value.
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
    /// @see Ros1Mycobot_communicationGetCoordsResponse; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
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
        put(out, at, &self.rx.to_le_bytes());
        put(out, at, &self.ry.to_le_bytes());
        put(out, at, &self.rz.to_le_bytes());
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
        value.rx = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.ry = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.rz = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Mycobot_communicationGetCoordsResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete mycobot_communication/GetCoordsResponse value.
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
    /// @see Ros1Mycobot_communicationGetCoordsResponse; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete mycobot_communication/GetCoordsResponse value.
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
    /// @see Ros1Mycobot_communicationGetCoordsResponse; share/platform/ros/rs/API-CONTRACT.md
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
/// Complete bounded value for ROS1 mycobot_communication/GripperStatusRequest.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 mycobot_communication/GripperStatusRequest value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies
/// 1..1 bytes
/// and is identified by UWVMROS1_d2c94d1906d311981c72642d82bbea634cfed4eac8c0aef41219bf4f382d4585.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Mycobot_communicationGripperStatusRequest {
    /// Declared Status; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mycobot_communication/GripperStatusRequest.Status: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mycobot_communicationGripperStatusRequest; share/platform/ros/rs/API-CONTRACT.md
    pub Status: bool,
}
/// @brief Construct the declared defaults of mycobot_communication/GripperStatusRequest.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
/// sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
/// during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Mycobot_communicationGripperStatusRequest; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Mycobot_communicationGripperStatusRequest {
    fn default() -> Self {
        Self {
            Status: Default::default(),
        }
    }
}
impl Ros1Mycobot_communicationGripperStatusRequest {
    /// @brief Maximum canonical extent of mycobot_communication/GripperStatusRequest in bytes.
    /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a
    /// queue
    /// reservation.
    /// @see Ros1Mycobot_communicationGripperStatusRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 1;
    /// @brief Cartesian field-bound maximum of mycobot_communication/GripperStatusRequest in bytes.
    /// @details Exact independently combined field-bound extent 1; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Mycobot_communicationGripperStatusRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    /// @brief Aggregate profile byte budget of mycobot_communication/GripperStatusRequest.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Mycobot_communicationGripperStatusRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of mycobot_communication/GripperStatusRequest.
    /// @details Exact identity UWVMROS1_d2c94d1906d311981c72642d82bbea634cfed4eac8c0aef41219bf4f382d4585
    /// binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Mycobot_communicationGripperStatusRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_d2c94d1906d311981c72642d82bbea634cfed4eac8c0aef41219bf4f382d4585";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete mycobot_communication/GripperStatusRequest value.
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
    /// @see Ros1Mycobot_communicationGripperStatusRequest; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if n > 1 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete mycobot_communication/GripperStatusRequest value.
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
    /// @see Ros1Mycobot_communicationGripperStatusRequest; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &[u8::from(self.Status)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.Status = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Mycobot_communicationGripperStatusRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete mycobot_communication/GripperStatusRequest value.
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
    /// @see Ros1Mycobot_communicationGripperStatusRequest; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete mycobot_communication/GripperStatusRequest value.
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
    /// @see Ros1Mycobot_communicationGripperStatusRequest; share/platform/ros/rs/API-CONTRACT.md
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
/// Complete bounded value for ROS1 mycobot_communication/GripperStatusResponse.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 mycobot_communication/GripperStatusResponse value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies
/// 1..1 bytes
/// and is identified by UWVMROS1_3a75c0d75882836971ed4c51e50c7b88778fcfeadf9b30df211d5055eb767664.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Mycobot_communicationGripperStatusResponse {
    /// Declared Flag; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mycobot_communication/GripperStatusResponse.Flag: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mycobot_communicationGripperStatusResponse; share/platform/ros/rs/API-CONTRACT.md
    pub Flag: bool,
}
/// @brief Construct the declared defaults of mycobot_communication/GripperStatusResponse.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
/// sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
/// during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Mycobot_communicationGripperStatusResponse; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Mycobot_communicationGripperStatusResponse {
    fn default() -> Self {
        Self {
            Flag: Default::default(),
        }
    }
}
impl Ros1Mycobot_communicationGripperStatusResponse {
    /// @brief Maximum canonical extent of mycobot_communication/GripperStatusResponse in bytes.
    /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a
    /// queue
    /// reservation.
    /// @see Ros1Mycobot_communicationGripperStatusResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 1;
    /// @brief Cartesian field-bound maximum of mycobot_communication/GripperStatusResponse in bytes.
    /// @details Exact independently combined field-bound extent 1; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Mycobot_communicationGripperStatusResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    /// @brief Aggregate profile byte budget of mycobot_communication/GripperStatusResponse.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Mycobot_communicationGripperStatusResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of mycobot_communication/GripperStatusResponse.
    /// @details Exact identity UWVMROS1_3a75c0d75882836971ed4c51e50c7b88778fcfeadf9b30df211d5055eb767664
    /// binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Mycobot_communicationGripperStatusResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_3a75c0d75882836971ed4c51e50c7b88778fcfeadf9b30df211d5055eb767664";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete mycobot_communication/GripperStatusResponse value.
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
    /// @see Ros1Mycobot_communicationGripperStatusResponse; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if n > 1 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete mycobot_communication/GripperStatusResponse value.
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
    /// @see Ros1Mycobot_communicationGripperStatusResponse; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &[u8::from(self.Flag)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.Flag = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Mycobot_communicationGripperStatusResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete mycobot_communication/GripperStatusResponse value.
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
    /// @see Ros1Mycobot_communicationGripperStatusResponse; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete mycobot_communication/GripperStatusResponse value.
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
    /// @see Ros1Mycobot_communicationGripperStatusResponse; share/platform/ros/rs/API-CONTRACT.md
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
/// Complete bounded value for ROS1 mycobot_communication/PumpStatusRequest.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 mycobot_communication/PumpStatusRequest value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies
/// 3..3 bytes
/// and is identified by UWVMROS1_561f4bb1f74832111672bbfed1ef1266a91914fb1034437199f730f55324c65c.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Mycobot_communicationPumpStatusRequest {
    /// Declared Status; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mycobot_communication/PumpStatusRequest.Status: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mycobot_communicationPumpStatusRequest; share/platform/ros/rs/API-CONTRACT.md
    pub Status: bool,
    /// Declared Pin1; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mycobot_communication/PumpStatusRequest.Pin1: int8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mycobot_communicationPumpStatusRequest; share/platform/ros/rs/API-CONTRACT.md
    pub Pin1: i8,
    /// Declared Pin2; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mycobot_communication/PumpStatusRequest.Pin2: int8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mycobot_communicationPumpStatusRequest; share/platform/ros/rs/API-CONTRACT.md
    pub Pin2: i8,
}
/// @brief Construct the declared defaults of mycobot_communication/PumpStatusRequest.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
/// sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
/// during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Mycobot_communicationPumpStatusRequest; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Mycobot_communicationPumpStatusRequest {
    fn default() -> Self {
        Self {
            Status: Default::default(),
            Pin1: Default::default(),
            Pin2: Default::default(),
        }
    }
}
impl Ros1Mycobot_communicationPumpStatusRequest {
    /// @brief Maximum canonical extent of mycobot_communication/PumpStatusRequest in bytes.
    /// @details The inclusive bound is 3 bytes for this selected profile; it is not a native sizeof or a
    /// queue
    /// reservation.
    /// @see Ros1Mycobot_communicationPumpStatusRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 3;
    /// @brief Cartesian field-bound maximum of mycobot_communication/PumpStatusRequest in bytes.
    /// @details Exact independently combined field-bound extent 3; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Mycobot_communicationPumpStatusRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 3;
    /// @brief Aggregate profile byte budget of mycobot_communication/PumpStatusRequest.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Mycobot_communicationPumpStatusRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of mycobot_communication/PumpStatusRequest.
    /// @details Exact identity UWVMROS1_561f4bb1f74832111672bbfed1ef1266a91914fb1034437199f730f55324c65c
    /// binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Mycobot_communicationPumpStatusRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_561f4bb1f74832111672bbfed1ef1266a91914fb1034437199f730f55324c65c";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete mycobot_communication/PumpStatusRequest value.
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
    /// @see Ros1Mycobot_communicationPumpStatusRequest; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        if n > 3 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete mycobot_communication/PumpStatusRequest value.
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
    /// @see Ros1Mycobot_communicationPumpStatusRequest; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &[u8::from(self.Status)]);
        put(out, at, &self.Pin1.to_le_bytes());
        put(out, at, &self.Pin2.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.Status = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.Pin1 = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.Pin2 = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Mycobot_communicationPumpStatusRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete mycobot_communication/PumpStatusRequest value.
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
    /// @see Ros1Mycobot_communicationPumpStatusRequest; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete mycobot_communication/PumpStatusRequest value.
    /// @details Require the complete 3..3-byte canonical representation. Reject truncation, invalid
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
    /// @see Ros1Mycobot_communicationPumpStatusRequest; share/platform/ros/rs/API-CONTRACT.md
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 3 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 3 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 mycobot_communication/PumpStatusResponse.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 mycobot_communication/PumpStatusResponse value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies
/// 1..1 bytes
/// and is identified by UWVMROS1_b5a1672fe12d2e2131034bb6da8751130b64ef6d48ea48ac0a046c506da452dd.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Mycobot_communicationPumpStatusResponse {
    /// Declared Flag; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mycobot_communication/PumpStatusResponse.Flag: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mycobot_communicationPumpStatusResponse; share/platform/ros/rs/API-CONTRACT.md
    pub Flag: bool,
}
/// @brief Construct the declared defaults of mycobot_communication/PumpStatusResponse.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
/// sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
/// during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Mycobot_communicationPumpStatusResponse; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Mycobot_communicationPumpStatusResponse {
    fn default() -> Self {
        Self {
            Flag: Default::default(),
        }
    }
}
impl Ros1Mycobot_communicationPumpStatusResponse {
    /// @brief Maximum canonical extent of mycobot_communication/PumpStatusResponse in bytes.
    /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a
    /// queue
    /// reservation.
    /// @see Ros1Mycobot_communicationPumpStatusResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 1;
    /// @brief Cartesian field-bound maximum of mycobot_communication/PumpStatusResponse in bytes.
    /// @details Exact independently combined field-bound extent 1; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Mycobot_communicationPumpStatusResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    /// @brief Aggregate profile byte budget of mycobot_communication/PumpStatusResponse.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Mycobot_communicationPumpStatusResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of mycobot_communication/PumpStatusResponse.
    /// @details Exact identity UWVMROS1_b5a1672fe12d2e2131034bb6da8751130b64ef6d48ea48ac0a046c506da452dd
    /// binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Mycobot_communicationPumpStatusResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_b5a1672fe12d2e2131034bb6da8751130b64ef6d48ea48ac0a046c506da452dd";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete mycobot_communication/PumpStatusResponse value.
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
    /// @see Ros1Mycobot_communicationPumpStatusResponse; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if n > 1 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete mycobot_communication/PumpStatusResponse value.
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
    /// @see Ros1Mycobot_communicationPumpStatusResponse; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &[u8::from(self.Flag)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.Flag = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Mycobot_communicationPumpStatusResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete mycobot_communication/PumpStatusResponse value.
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
    /// @see Ros1Mycobot_communicationPumpStatusResponse; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete mycobot_communication/PumpStatusResponse value.
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
    /// @see Ros1Mycobot_communicationPumpStatusResponse; share/platform/ros/rs/API-CONTRACT.md
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
/// Complete bounded value for ROS1 mycobot_communication/SetAnglesRequest.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 mycobot_communication/SetAnglesRequest value.
/// @details All 7 declared fields are retained in source order. The canonical representation occupies 25..25
/// bytes and is identified by UWVMROS1_10bcf04e47b743a985ffefc61dff4522f3718d2ac7170960c8ae6857aaa11cbd.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Mycobot_communicationSetAnglesRequest {
    /// Declared joint_1; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mycobot_communication/SetAnglesRequest.joint_1: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mycobot_communicationSetAnglesRequest; share/platform/ros/rs/API-CONTRACT.md
    pub joint_1: f32,
    /// Declared joint_2; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mycobot_communication/SetAnglesRequest.joint_2: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mycobot_communicationSetAnglesRequest; share/platform/ros/rs/API-CONTRACT.md
    pub joint_2: f32,
    /// Declared joint_3; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mycobot_communication/SetAnglesRequest.joint_3: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mycobot_communicationSetAnglesRequest; share/platform/ros/rs/API-CONTRACT.md
    pub joint_3: f32,
    /// Declared joint_4; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mycobot_communication/SetAnglesRequest.joint_4: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mycobot_communicationSetAnglesRequest; share/platform/ros/rs/API-CONTRACT.md
    pub joint_4: f32,
    /// Declared joint_5; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mycobot_communication/SetAnglesRequest.joint_5: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mycobot_communicationSetAnglesRequest; share/platform/ros/rs/API-CONTRACT.md
    pub joint_5: f32,
    /// Declared joint_6; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mycobot_communication/SetAnglesRequest.joint_6: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mycobot_communicationSetAnglesRequest; share/platform/ros/rs/API-CONTRACT.md
    pub joint_6: f32,
    /// Declared speed; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mycobot_communication/SetAnglesRequest.speed: int8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mycobot_communicationSetAnglesRequest; share/platform/ros/rs/API-CONTRACT.md
    pub speed: i8,
}
/// @brief Construct the declared defaults of mycobot_communication/SetAnglesRequest.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
/// sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
/// during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Mycobot_communicationSetAnglesRequest; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Mycobot_communicationSetAnglesRequest {
    fn default() -> Self {
        Self {
            joint_1: Default::default(),
            joint_2: Default::default(),
            joint_3: Default::default(),
            joint_4: Default::default(),
            joint_5: Default::default(),
            joint_6: Default::default(),
            speed: Default::default(),
        }
    }
}
impl Ros1Mycobot_communicationSetAnglesRequest {
    /// @brief Maximum canonical extent of mycobot_communication/SetAnglesRequest in bytes.
    /// @details The inclusive bound is 25 bytes for this selected profile; it is not a native sizeof or a
    /// queue
    /// reservation.
    /// @see Ros1Mycobot_communicationSetAnglesRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 25;
    /// @brief Cartesian field-bound maximum of mycobot_communication/SetAnglesRequest in bytes.
    /// @details Exact independently combined field-bound extent 25; aggregate profile constraints may
    /// impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Mycobot_communicationSetAnglesRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 25;
    /// @brief Aggregate profile byte budget of mycobot_communication/SetAnglesRequest.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Mycobot_communicationSetAnglesRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of mycobot_communication/SetAnglesRequest.
    /// @details Exact identity UWVMROS1_10bcf04e47b743a985ffefc61dff4522f3718d2ac7170960c8ae6857aaa11cbd
    /// binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Mycobot_communicationSetAnglesRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_10bcf04e47b743a985ffefc61dff4522f3718d2ac7170960c8ae6857aaa11cbd";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete mycobot_communication/SetAnglesRequest value.
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
    /// @see Ros1Mycobot_communicationSetAnglesRequest; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if !self.joint_1.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.joint_2.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.joint_3.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.joint_4.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.joint_5.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.joint_6.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, 1)?;
        if n > 25 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete mycobot_communication/SetAnglesRequest value.
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
    /// @see Ros1Mycobot_communicationSetAnglesRequest; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.joint_1.to_le_bytes());
        put(out, at, &self.joint_2.to_le_bytes());
        put(out, at, &self.joint_3.to_le_bytes());
        put(out, at, &self.joint_4.to_le_bytes());
        put(out, at, &self.joint_5.to_le_bytes());
        put(out, at, &self.joint_6.to_le_bytes());
        put(out, at, &self.speed.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.joint_1 = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.joint_2 = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.joint_3 = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.joint_4 = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.joint_5 = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.joint_6 = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.speed = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Mycobot_communicationSetAnglesRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete mycobot_communication/SetAnglesRequest value.
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
    /// @see Ros1Mycobot_communicationSetAnglesRequest; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete mycobot_communication/SetAnglesRequest value.
    /// @details Require the complete 25..25-byte canonical representation. Reject truncation, invalid
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
    /// @see Ros1Mycobot_communicationSetAnglesRequest; share/platform/ros/rs/API-CONTRACT.md
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 25 {
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
/// Complete bounded value for ROS1 mycobot_communication/SetAnglesResponse.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 mycobot_communication/SetAnglesResponse value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies
/// 1..1 bytes
/// and is identified by UWVMROS1_d407051eb285975d89ad71f39aede021fb564aecca0e0744126c9a599fe396b2.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Mycobot_communicationSetAnglesResponse {
    /// Declared Flag; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mycobot_communication/SetAnglesResponse.Flag: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mycobot_communicationSetAnglesResponse; share/platform/ros/rs/API-CONTRACT.md
    pub Flag: bool,
}
/// @brief Construct the declared defaults of mycobot_communication/SetAnglesResponse.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
/// sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
/// during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Mycobot_communicationSetAnglesResponse; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Mycobot_communicationSetAnglesResponse {
    fn default() -> Self {
        Self {
            Flag: Default::default(),
        }
    }
}
impl Ros1Mycobot_communicationSetAnglesResponse {
    /// @brief Maximum canonical extent of mycobot_communication/SetAnglesResponse in bytes.
    /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a
    /// queue
    /// reservation.
    /// @see Ros1Mycobot_communicationSetAnglesResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 1;
    /// @brief Cartesian field-bound maximum of mycobot_communication/SetAnglesResponse in bytes.
    /// @details Exact independently combined field-bound extent 1; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Mycobot_communicationSetAnglesResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    /// @brief Aggregate profile byte budget of mycobot_communication/SetAnglesResponse.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Mycobot_communicationSetAnglesResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of mycobot_communication/SetAnglesResponse.
    /// @details Exact identity UWVMROS1_d407051eb285975d89ad71f39aede021fb564aecca0e0744126c9a599fe396b2
    /// binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Mycobot_communicationSetAnglesResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_d407051eb285975d89ad71f39aede021fb564aecca0e0744126c9a599fe396b2";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete mycobot_communication/SetAnglesResponse value.
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
    /// @see Ros1Mycobot_communicationSetAnglesResponse; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if n > 1 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete mycobot_communication/SetAnglesResponse value.
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
    /// @see Ros1Mycobot_communicationSetAnglesResponse; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &[u8::from(self.Flag)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.Flag = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Mycobot_communicationSetAnglesResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete mycobot_communication/SetAnglesResponse value.
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
    /// @see Ros1Mycobot_communicationSetAnglesResponse; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete mycobot_communication/SetAnglesResponse value.
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
    /// @see Ros1Mycobot_communicationSetAnglesResponse; share/platform/ros/rs/API-CONTRACT.md
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
/// Complete bounded value for ROS1 mycobot_communication/SetCoordsRequest.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 mycobot_communication/SetCoordsRequest value.
/// @details All 8 declared fields are retained in source order. The canonical representation occupies 26..26
/// bytes and is identified by UWVMROS1_7a59a4e31eca60caea9f82142225c890a136c60a9e4c821e9463e89139945f7a.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Mycobot_communicationSetCoordsRequest {
    /// Declared x; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mycobot_communication/SetCoordsRequest.x: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/rs/API-CONTRACT.md
    pub x: f32,
    /// Declared y; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mycobot_communication/SetCoordsRequest.y: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/rs/API-CONTRACT.md
    pub y: f32,
    /// Declared z; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mycobot_communication/SetCoordsRequest.z: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/rs/API-CONTRACT.md
    pub z: f32,
    /// Declared rx; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mycobot_communication/SetCoordsRequest.rx: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/rs/API-CONTRACT.md
    pub rx: f32,
    /// Declared ry; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mycobot_communication/SetCoordsRequest.ry: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/rs/API-CONTRACT.md
    pub ry: f32,
    /// Declared rz; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mycobot_communication/SetCoordsRequest.rz: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/rs/API-CONTRACT.md
    pub rz: f32,
    /// Declared speed; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mycobot_communication/SetCoordsRequest.speed: int8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/rs/API-CONTRACT.md
    pub speed: i8,
    /// Declared model; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mycobot_communication/SetCoordsRequest.model: int8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/rs/API-CONTRACT.md
    pub model: i8,
}
/// @brief Construct the declared defaults of mycobot_communication/SetCoordsRequest.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
/// sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
/// during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Mycobot_communicationSetCoordsRequest {
    fn default() -> Self {
        Self {
            x: Default::default(),
            y: Default::default(),
            z: Default::default(),
            rx: Default::default(),
            ry: Default::default(),
            rz: Default::default(),
            speed: Default::default(),
            model: Default::default(),
        }
    }
}
impl Ros1Mycobot_communicationSetCoordsRequest {
    /// @brief Maximum canonical extent of mycobot_communication/SetCoordsRequest in bytes.
    /// @details The inclusive bound is 26 bytes for this selected profile; it is not a native sizeof or a
    /// queue
    /// reservation.
    /// @see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 26;
    /// @brief Cartesian field-bound maximum of mycobot_communication/SetCoordsRequest in bytes.
    /// @details Exact independently combined field-bound extent 26; aggregate profile constraints may
    /// impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 26;
    /// @brief Aggregate profile byte budget of mycobot_communication/SetCoordsRequest.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of mycobot_communication/SetCoordsRequest.
    /// @details Exact identity UWVMROS1_7a59a4e31eca60caea9f82142225c890a136c60a9e4c821e9463e89139945f7a
    /// binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_7a59a4e31eca60caea9f82142225c890a136c60a9e4c821e9463e89139945f7a";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete mycobot_communication/SetCoordsRequest value.
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
    /// @see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/rs/API-CONTRACT.md
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
        if !self.rx.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.ry.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.rz.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        if n > 26 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete mycobot_communication/SetCoordsRequest value.
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
    /// @see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
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
        put(out, at, &self.rx.to_le_bytes());
        put(out, at, &self.ry.to_le_bytes());
        put(out, at, &self.rz.to_le_bytes());
        put(out, at, &self.speed.to_le_bytes());
        put(out, at, &self.model.to_le_bytes());
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
        value.rx = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.ry = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.rz = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.speed = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.model = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Mycobot_communicationSetCoordsRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete mycobot_communication/SetCoordsRequest value.
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
    /// @see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete mycobot_communication/SetCoordsRequest value.
    /// @details Require the complete 26..26-byte canonical representation. Reject truncation, invalid
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
    /// @see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/rs/API-CONTRACT.md
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
/// Complete bounded value for ROS1 mycobot_communication/SetCoordsResponse.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 mycobot_communication/SetCoordsResponse value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies
/// 1..1 bytes
/// and is identified by UWVMROS1_1a936a95cb1bfd0a9158342618c40c587af58388abf3b679eb4bad2518aec6af.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Mycobot_communicationSetCoordsResponse {
    /// Declared Flag; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mycobot_communication/SetCoordsResponse.Flag: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mycobot_communicationSetCoordsResponse; share/platform/ros/rs/API-CONTRACT.md
    pub Flag: bool,
}
/// @brief Construct the declared defaults of mycobot_communication/SetCoordsResponse.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
/// sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
/// during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Mycobot_communicationSetCoordsResponse; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Mycobot_communicationSetCoordsResponse {
    fn default() -> Self {
        Self {
            Flag: Default::default(),
        }
    }
}
impl Ros1Mycobot_communicationSetCoordsResponse {
    /// @brief Maximum canonical extent of mycobot_communication/SetCoordsResponse in bytes.
    /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a
    /// queue
    /// reservation.
    /// @see Ros1Mycobot_communicationSetCoordsResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 1;
    /// @brief Cartesian field-bound maximum of mycobot_communication/SetCoordsResponse in bytes.
    /// @details Exact independently combined field-bound extent 1; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Mycobot_communicationSetCoordsResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    /// @brief Aggregate profile byte budget of mycobot_communication/SetCoordsResponse.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Mycobot_communicationSetCoordsResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of mycobot_communication/SetCoordsResponse.
    /// @details Exact identity UWVMROS1_1a936a95cb1bfd0a9158342618c40c587af58388abf3b679eb4bad2518aec6af
    /// binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Mycobot_communicationSetCoordsResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_1a936a95cb1bfd0a9158342618c40c587af58388abf3b679eb4bad2518aec6af";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete mycobot_communication/SetCoordsResponse value.
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
    /// @see Ros1Mycobot_communicationSetCoordsResponse; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if n > 1 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete mycobot_communication/SetCoordsResponse value.
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
    /// @see Ros1Mycobot_communicationSetCoordsResponse; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &[u8::from(self.Flag)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.Flag = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Mycobot_communicationSetCoordsResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete mycobot_communication/SetCoordsResponse value.
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
    /// @see Ros1Mycobot_communicationSetCoordsResponse; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete mycobot_communication/SetCoordsResponse value.
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
    /// @see Ros1Mycobot_communicationSetCoordsResponse; share/platform/ros/rs/API-CONTRACT.md
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
/// Complete bounded value for ROS1 mypalletizer_communication/MypalAngles.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 mypalletizer_communication/MypalAngles value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 16..16
/// bytes and is identified by UWVMROS1_1d45a33e05e948c1b58988c84afe359138c896119f82da0d737377f0272892d9.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Mypalletizer_communicationMypalAngles {
    /// Declared joint_1; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mypalletizer_communication/MypalAngles.joint_1: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mypalletizer_communicationMypalAngles; share/platform/ros/rs/API-CONTRACT.md
    pub joint_1: f32,
    /// Declared joint_2; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mypalletizer_communication/MypalAngles.joint_2: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mypalletizer_communicationMypalAngles; share/platform/ros/rs/API-CONTRACT.md
    pub joint_2: f32,
    /// Declared joint_3; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mypalletizer_communication/MypalAngles.joint_3: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mypalletizer_communicationMypalAngles; share/platform/ros/rs/API-CONTRACT.md
    pub joint_3: f32,
    /// Declared joint_4; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mypalletizer_communication/MypalAngles.joint_4: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mypalletizer_communicationMypalAngles; share/platform/ros/rs/API-CONTRACT.md
    pub joint_4: f32,
}
/// @brief Construct the declared defaults of mypalletizer_communication/MypalAngles.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
/// sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
/// during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Mypalletizer_communicationMypalAngles; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Mypalletizer_communicationMypalAngles {
    fn default() -> Self {
        Self {
            joint_1: Default::default(),
            joint_2: Default::default(),
            joint_3: Default::default(),
            joint_4: Default::default(),
        }
    }
}
impl Ros1Mypalletizer_communicationMypalAngles {
    /// @brief Maximum canonical extent of mypalletizer_communication/MypalAngles in bytes.
    /// @details The inclusive bound is 16 bytes for this selected profile; it is not a native sizeof or a
    /// queue
    /// reservation.
    /// @see Ros1Mypalletizer_communicationMypalAngles; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 16;
    /// @brief Cartesian field-bound maximum of mypalletizer_communication/MypalAngles in bytes.
    /// @details Exact independently combined field-bound extent 16; aggregate profile constraints may
    /// impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Mypalletizer_communicationMypalAngles; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 16;
    /// @brief Aggregate profile byte budget of mypalletizer_communication/MypalAngles.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Mypalletizer_communicationMypalAngles; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of mypalletizer_communication/MypalAngles.
    /// @details Exact identity UWVMROS1_1d45a33e05e948c1b58988c84afe359138c896119f82da0d737377f0272892d9
    /// binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Mypalletizer_communicationMypalAngles; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_1d45a33e05e948c1b58988c84afe359138c896119f82da0d737377f0272892d9";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete mypalletizer_communication/MypalAngles value.
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
    /// @see Ros1Mypalletizer_communicationMypalAngles; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if !self.joint_1.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.joint_2.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.joint_3.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.joint_4.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if n > 16 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete mypalletizer_communication/MypalAngles value.
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
    /// @see Ros1Mypalletizer_communicationMypalAngles; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.joint_1.to_le_bytes());
        put(out, at, &self.joint_2.to_le_bytes());
        put(out, at, &self.joint_3.to_le_bytes());
        put(out, at, &self.joint_4.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.joint_1 = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.joint_2 = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.joint_3 = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.joint_4 = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Mypalletizer_communicationMypalAngles {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete mypalletizer_communication/MypalAngles value.
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
    /// @see Ros1Mypalletizer_communicationMypalAngles; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete mypalletizer_communication/MypalAngles value.
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
    /// @see Ros1Mypalletizer_communicationMypalAngles; share/platform/ros/rs/API-CONTRACT.md
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
/// Complete bounded value for ROS1 mypalletizer_communication/MypalCoords.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 mypalletizer_communication/MypalCoords value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 16..16
/// bytes and is identified by UWVMROS1_c542d1a1a71224901044bc38ca2934021d811417c7c6937ca194995f67e59b80.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Mypalletizer_communicationMypalCoords {
    /// Declared x; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mypalletizer_communication/MypalCoords.x: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mypalletizer_communicationMypalCoords; share/platform/ros/rs/API-CONTRACT.md
    pub x: f32,
    /// Declared y; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mypalletizer_communication/MypalCoords.y: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mypalletizer_communicationMypalCoords; share/platform/ros/rs/API-CONTRACT.md
    pub y: f32,
    /// Declared z; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mypalletizer_communication/MypalCoords.z: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mypalletizer_communicationMypalCoords; share/platform/ros/rs/API-CONTRACT.md
    pub z: f32,
    /// Declared rx; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mypalletizer_communication/MypalCoords.rx: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mypalletizer_communicationMypalCoords; share/platform/ros/rs/API-CONTRACT.md
    pub rx: f32,
}
/// @brief Construct the declared defaults of mypalletizer_communication/MypalCoords.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
/// sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
/// during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Mypalletizer_communicationMypalCoords; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Mypalletizer_communicationMypalCoords {
    fn default() -> Self {
        Self {
            x: Default::default(),
            y: Default::default(),
            z: Default::default(),
            rx: Default::default(),
        }
    }
}
impl Ros1Mypalletizer_communicationMypalCoords {
    /// @brief Maximum canonical extent of mypalletizer_communication/MypalCoords in bytes.
    /// @details The inclusive bound is 16 bytes for this selected profile; it is not a native sizeof or a
    /// queue
    /// reservation.
    /// @see Ros1Mypalletizer_communicationMypalCoords; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 16;
    /// @brief Cartesian field-bound maximum of mypalletizer_communication/MypalCoords in bytes.
    /// @details Exact independently combined field-bound extent 16; aggregate profile constraints may
    /// impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Mypalletizer_communicationMypalCoords; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 16;
    /// @brief Aggregate profile byte budget of mypalletizer_communication/MypalCoords.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Mypalletizer_communicationMypalCoords; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of mypalletizer_communication/MypalCoords.
    /// @details Exact identity UWVMROS1_c542d1a1a71224901044bc38ca2934021d811417c7c6937ca194995f67e59b80
    /// binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Mypalletizer_communicationMypalCoords; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_c542d1a1a71224901044bc38ca2934021d811417c7c6937ca194995f67e59b80";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete mypalletizer_communication/MypalCoords value.
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
    /// @see Ros1Mypalletizer_communicationMypalCoords; share/platform/ros/rs/API-CONTRACT.md
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
        if !self.rx.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if n > 16 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete mypalletizer_communication/MypalCoords value.
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
    /// @see Ros1Mypalletizer_communicationMypalCoords; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
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
        put(out, at, &self.rx.to_le_bytes());
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
        value.rx = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Mypalletizer_communicationMypalCoords {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete mypalletizer_communication/MypalCoords value.
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
    /// @see Ros1Mypalletizer_communicationMypalCoords; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete mypalletizer_communication/MypalCoords value.
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
    /// @see Ros1Mypalletizer_communicationMypalCoords; share/platform/ros/rs/API-CONTRACT.md
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
/// Complete bounded value for ROS1 mypalletizer_communication/MypalGripperStatus.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 mypalletizer_communication/MypalGripperStatus value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies
/// 1..1 bytes
/// and is identified by UWVMROS1_e37f608d4499ab2ed49618fc244831d274fadb23bd408d42619e3f8409ad2ee6.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Mypalletizer_communicationMypalGripperStatus {
    /// Declared Status; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mypalletizer_communication/MypalGripperStatus.Status: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mypalletizer_communicationMypalGripperStatus; share/platform/ros/rs/API-CONTRACT.md
    pub Status: bool,
}
/// @brief Construct the declared defaults of mypalletizer_communication/MypalGripperStatus.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
/// sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
/// during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Mypalletizer_communicationMypalGripperStatus; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Mypalletizer_communicationMypalGripperStatus {
    fn default() -> Self {
        Self {
            Status: Default::default(),
        }
    }
}
impl Ros1Mypalletizer_communicationMypalGripperStatus {
    /// @brief Maximum canonical extent of mypalletizer_communication/MypalGripperStatus in bytes.
    /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a
    /// queue
    /// reservation.
    /// @see Ros1Mypalletizer_communicationMypalGripperStatus; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 1;
    /// @brief Cartesian field-bound maximum of mypalletizer_communication/MypalGripperStatus in bytes.
    /// @details Exact independently combined field-bound extent 1; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Mypalletizer_communicationMypalGripperStatus; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    /// @brief Aggregate profile byte budget of mypalletizer_communication/MypalGripperStatus.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Mypalletizer_communicationMypalGripperStatus; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of mypalletizer_communication/MypalGripperStatus.
    /// @details Exact identity UWVMROS1_e37f608d4499ab2ed49618fc244831d274fadb23bd408d42619e3f8409ad2ee6
    /// binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Mypalletizer_communicationMypalGripperStatus; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_e37f608d4499ab2ed49618fc244831d274fadb23bd408d42619e3f8409ad2ee6";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete mypalletizer_communication/MypalGripperStatus value.
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
    /// @see Ros1Mypalletizer_communicationMypalGripperStatus; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if n > 1 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete mypalletizer_communication/MypalGripperStatus value.
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
    /// @see Ros1Mypalletizer_communicationMypalGripperStatus; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &[u8::from(self.Status)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.Status = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Mypalletizer_communicationMypalGripperStatus {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete mypalletizer_communication/MypalGripperStatus value.
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
    /// @see Ros1Mypalletizer_communicationMypalGripperStatus; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete mypalletizer_communication/MypalGripperStatus value.
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
    /// @see Ros1Mypalletizer_communicationMypalGripperStatus; share/platform/ros/rs/API-CONTRACT.md
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
/// Complete bounded value for ROS1 mypalletizer_communication/MypalPumpStatus.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 mypalletizer_communication/MypalPumpStatus value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies
/// 3..3 bytes
/// and is identified by UWVMROS1_cdf79e610b5d49b7f73857e02c64688a71517f2fe8e3a96739b16a53ad4d0ebc.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Mypalletizer_communicationMypalPumpStatus {
    /// Declared Status; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mypalletizer_communication/MypalPumpStatus.Status: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mypalletizer_communicationMypalPumpStatus; share/platform/ros/rs/API-CONTRACT.md
    pub Status: bool,
    /// Declared Pin1; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mypalletizer_communication/MypalPumpStatus.Pin1: int8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mypalletizer_communicationMypalPumpStatus; share/platform/ros/rs/API-CONTRACT.md
    pub Pin1: i8,
    /// Declared Pin2; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mypalletizer_communication/MypalPumpStatus.Pin2: int8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mypalletizer_communicationMypalPumpStatus; share/platform/ros/rs/API-CONTRACT.md
    pub Pin2: i8,
}
/// @brief Construct the declared defaults of mypalletizer_communication/MypalPumpStatus.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
/// sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
/// during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Mypalletizer_communicationMypalPumpStatus; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Mypalletizer_communicationMypalPumpStatus {
    fn default() -> Self {
        Self {
            Status: Default::default(),
            Pin1: Default::default(),
            Pin2: Default::default(),
        }
    }
}
impl Ros1Mypalletizer_communicationMypalPumpStatus {
    /// @brief Maximum canonical extent of mypalletizer_communication/MypalPumpStatus in bytes.
    /// @details The inclusive bound is 3 bytes for this selected profile; it is not a native sizeof or a
    /// queue
    /// reservation.
    /// @see Ros1Mypalletizer_communicationMypalPumpStatus; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 3;
    /// @brief Cartesian field-bound maximum of mypalletizer_communication/MypalPumpStatus in bytes.
    /// @details Exact independently combined field-bound extent 3; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Mypalletizer_communicationMypalPumpStatus; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 3;
    /// @brief Aggregate profile byte budget of mypalletizer_communication/MypalPumpStatus.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Mypalletizer_communicationMypalPumpStatus; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of mypalletizer_communication/MypalPumpStatus.
    /// @details Exact identity UWVMROS1_cdf79e610b5d49b7f73857e02c64688a71517f2fe8e3a96739b16a53ad4d0ebc
    /// binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Mypalletizer_communicationMypalPumpStatus; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_cdf79e610b5d49b7f73857e02c64688a71517f2fe8e3a96739b16a53ad4d0ebc";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete mypalletizer_communication/MypalPumpStatus value.
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
    /// @see Ros1Mypalletizer_communicationMypalPumpStatus; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        if n > 3 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete mypalletizer_communication/MypalPumpStatus value.
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
    /// @see Ros1Mypalletizer_communicationMypalPumpStatus; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &[u8::from(self.Status)]);
        put(out, at, &self.Pin1.to_le_bytes());
        put(out, at, &self.Pin2.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.Status = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.Pin1 = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.Pin2 = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Mypalletizer_communicationMypalPumpStatus {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete mypalletizer_communication/MypalPumpStatus value.
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
    /// @see Ros1Mypalletizer_communicationMypalPumpStatus; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete mypalletizer_communication/MypalPumpStatus value.
    /// @details Require the complete 3..3-byte canonical representation. Reject truncation, invalid
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
    /// @see Ros1Mypalletizer_communicationMypalPumpStatus; share/platform/ros/rs/API-CONTRACT.md
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 3 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 3 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 mypalletizer_communication/MypalSetAngles.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 mypalletizer_communication/MypalSetAngles value.
/// @details All 5 declared fields are retained in source order. The canonical representation occupies 17..17
/// bytes and is identified by UWVMROS1_8d11ba2c705bd577a329a01d039b831162742efe790c93b6c2c2631699d04f98.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Mypalletizer_communicationMypalSetAngles {
    /// Declared joint_1; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mypalletizer_communication/MypalSetAngles.joint_1: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mypalletizer_communicationMypalSetAngles; share/platform/ros/rs/API-CONTRACT.md
    pub joint_1: f32,
    /// Declared joint_2; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mypalletizer_communication/MypalSetAngles.joint_2: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mypalletizer_communicationMypalSetAngles; share/platform/ros/rs/API-CONTRACT.md
    pub joint_2: f32,
    /// Declared joint_3; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mypalletizer_communication/MypalSetAngles.joint_3: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mypalletizer_communicationMypalSetAngles; share/platform/ros/rs/API-CONTRACT.md
    pub joint_3: f32,
    /// Declared joint_4; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mypalletizer_communication/MypalSetAngles.joint_4: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mypalletizer_communicationMypalSetAngles; share/platform/ros/rs/API-CONTRACT.md
    pub joint_4: f32,
    /// Declared speed; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mypalletizer_communication/MypalSetAngles.speed: int8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mypalletizer_communicationMypalSetAngles; share/platform/ros/rs/API-CONTRACT.md
    pub speed: i8,
}
/// @brief Construct the declared defaults of mypalletizer_communication/MypalSetAngles.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
/// sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
/// during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Mypalletizer_communicationMypalSetAngles; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Mypalletizer_communicationMypalSetAngles {
    fn default() -> Self {
        Self {
            joint_1: Default::default(),
            joint_2: Default::default(),
            joint_3: Default::default(),
            joint_4: Default::default(),
            speed: Default::default(),
        }
    }
}
impl Ros1Mypalletizer_communicationMypalSetAngles {
    /// @brief Maximum canonical extent of mypalletizer_communication/MypalSetAngles in bytes.
    /// @details The inclusive bound is 17 bytes for this selected profile; it is not a native sizeof or a
    /// queue
    /// reservation.
    /// @see Ros1Mypalletizer_communicationMypalSetAngles; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 17;
    /// @brief Cartesian field-bound maximum of mypalletizer_communication/MypalSetAngles in bytes.
    /// @details Exact independently combined field-bound extent 17; aggregate profile constraints may
    /// impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Mypalletizer_communicationMypalSetAngles; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 17;
    /// @brief Aggregate profile byte budget of mypalletizer_communication/MypalSetAngles.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Mypalletizer_communicationMypalSetAngles; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of mypalletizer_communication/MypalSetAngles.
    /// @details Exact identity UWVMROS1_8d11ba2c705bd577a329a01d039b831162742efe790c93b6c2c2631699d04f98
    /// binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Mypalletizer_communicationMypalSetAngles; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_8d11ba2c705bd577a329a01d039b831162742efe790c93b6c2c2631699d04f98";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete mypalletizer_communication/MypalSetAngles value.
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
    /// @see Ros1Mypalletizer_communicationMypalSetAngles; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if !self.joint_1.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.joint_2.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.joint_3.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.joint_4.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, 1)?;
        if n > 17 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete mypalletizer_communication/MypalSetAngles value.
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
    /// @see Ros1Mypalletizer_communicationMypalSetAngles; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.joint_1.to_le_bytes());
        put(out, at, &self.joint_2.to_le_bytes());
        put(out, at, &self.joint_3.to_le_bytes());
        put(out, at, &self.joint_4.to_le_bytes());
        put(out, at, &self.speed.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.joint_1 = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.joint_2 = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.joint_3 = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.joint_4 = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.speed = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Mypalletizer_communicationMypalSetAngles {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete mypalletizer_communication/MypalSetAngles value.
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
    /// @see Ros1Mypalletizer_communicationMypalSetAngles; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete mypalletizer_communication/MypalSetAngles value.
    /// @details Require the complete 17..17-byte canonical representation. Reject truncation, invalid
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
    /// @see Ros1Mypalletizer_communicationMypalSetAngles; share/platform/ros/rs/API-CONTRACT.md
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
/// Complete bounded value for ROS1 mypalletizer_communication/MypalSetCoords.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 mypalletizer_communication/MypalSetCoords value.
/// @details All 6 declared fields are retained in source order. The canonical representation occupies 18..18
/// bytes and is identified by UWVMROS1_51a2d485c8d2252f184eb27724e88c1ae06002d54454bd8ebf31962a79f7c448.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Mypalletizer_communicationMypalSetCoords {
    /// Declared x; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mypalletizer_communication/MypalSetCoords.x: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mypalletizer_communicationMypalSetCoords; share/platform/ros/rs/API-CONTRACT.md
    pub x: f32,
    /// Declared y; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mypalletizer_communication/MypalSetCoords.y: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mypalletizer_communicationMypalSetCoords; share/platform/ros/rs/API-CONTRACT.md
    pub y: f32,
    /// Declared z; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mypalletizer_communication/MypalSetCoords.z: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mypalletizer_communicationMypalSetCoords; share/platform/ros/rs/API-CONTRACT.md
    pub z: f32,
    /// Declared rx; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mypalletizer_communication/MypalSetCoords.rx: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mypalletizer_communicationMypalSetCoords; share/platform/ros/rs/API-CONTRACT.md
    pub rx: f32,
    /// Declared speed; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mypalletizer_communication/MypalSetCoords.speed: int8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mypalletizer_communicationMypalSetCoords; share/platform/ros/rs/API-CONTRACT.md
    pub speed: i8,
    /// Declared model; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mypalletizer_communication/MypalSetCoords.model: int8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mypalletizer_communicationMypalSetCoords; share/platform/ros/rs/API-CONTRACT.md
    pub model: i8,
}
/// @brief Construct the declared defaults of mypalletizer_communication/MypalSetCoords.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
/// sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
/// during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Mypalletizer_communicationMypalSetCoords; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Mypalletizer_communicationMypalSetCoords {
    fn default() -> Self {
        Self {
            x: Default::default(),
            y: Default::default(),
            z: Default::default(),
            rx: Default::default(),
            speed: Default::default(),
            model: Default::default(),
        }
    }
}
impl Ros1Mypalletizer_communicationMypalSetCoords {
    /// @brief Maximum canonical extent of mypalletizer_communication/MypalSetCoords in bytes.
    /// @details The inclusive bound is 18 bytes for this selected profile; it is not a native sizeof or a
    /// queue
    /// reservation.
    /// @see Ros1Mypalletizer_communicationMypalSetCoords; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 18;
    /// @brief Cartesian field-bound maximum of mypalletizer_communication/MypalSetCoords in bytes.
    /// @details Exact independently combined field-bound extent 18; aggregate profile constraints may
    /// impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Mypalletizer_communicationMypalSetCoords; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 18;
    /// @brief Aggregate profile byte budget of mypalletizer_communication/MypalSetCoords.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Mypalletizer_communicationMypalSetCoords; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of mypalletizer_communication/MypalSetCoords.
    /// @details Exact identity UWVMROS1_51a2d485c8d2252f184eb27724e88c1ae06002d54454bd8ebf31962a79f7c448
    /// binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Mypalletizer_communicationMypalSetCoords; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_51a2d485c8d2252f184eb27724e88c1ae06002d54454bd8ebf31962a79f7c448";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete mypalletizer_communication/MypalSetCoords value.
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
    /// @see Ros1Mypalletizer_communicationMypalSetCoords; share/platform/ros/rs/API-CONTRACT.md
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
        if !self.rx.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        if n > 18 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete mypalletizer_communication/MypalSetCoords value.
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
    /// @see Ros1Mypalletizer_communicationMypalSetCoords; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
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
        put(out, at, &self.rx.to_le_bytes());
        put(out, at, &self.speed.to_le_bytes());
        put(out, at, &self.model.to_le_bytes());
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
        value.rx = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.speed = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.model = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Mypalletizer_communicationMypalSetCoords {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete mypalletizer_communication/MypalSetCoords value.
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
    /// @see Ros1Mypalletizer_communicationMypalSetCoords; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete mypalletizer_communication/MypalSetCoords value.
    /// @details Require the complete 18..18-byte canonical representation. Reject truncation, invalid
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
    /// @see Ros1Mypalletizer_communicationMypalSetCoords; share/platform/ros/rs/API-CONTRACT.md
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
/// Complete bounded value for ROS1 mypalletizer_communication/GetAnglesRequest.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 mypalletizer_communication/GetAnglesRequest value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies
/// 0..0 bytes
/// and is identified by UWVMROS1_d0412d8ccc8f724f2a0660d20e24a39f6445f0cb433e775058b6b092fde65de8.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Mypalletizer_communicationGetAnglesRequest {}
/// @brief Construct the declared defaults of mypalletizer_communication/GetAnglesRequest.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
/// sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
/// during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Mypalletizer_communicationGetAnglesRequest; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Mypalletizer_communicationGetAnglesRequest {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Mypalletizer_communicationGetAnglesRequest {
    /// @brief Maximum canonical extent of mypalletizer_communication/GetAnglesRequest in bytes.
    /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a
    /// queue
    /// reservation.
    /// @see Ros1Mypalletizer_communicationGetAnglesRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 0;
    /// @brief Cartesian field-bound maximum of mypalletizer_communication/GetAnglesRequest in bytes.
    /// @details Exact independently combined field-bound extent 0; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Mypalletizer_communicationGetAnglesRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    /// @brief Aggregate profile byte budget of mypalletizer_communication/GetAnglesRequest.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Mypalletizer_communicationGetAnglesRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of mypalletizer_communication/GetAnglesRequest.
    /// @details Exact identity UWVMROS1_d0412d8ccc8f724f2a0660d20e24a39f6445f0cb433e775058b6b092fde65de8
    /// binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Mypalletizer_communicationGetAnglesRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_d0412d8ccc8f724f2a0660d20e24a39f6445f0cb433e775058b6b092fde65de8";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete mypalletizer_communication/GetAnglesRequest value.
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
    /// @see Ros1Mypalletizer_communicationGetAnglesRequest; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if n > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete mypalletizer_communication/GetAnglesRequest value.
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
    /// @see Ros1Mypalletizer_communicationGetAnglesRequest; share/platform/ros/rs/API-CONTRACT.md
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
impl Canonical for Ros1Mypalletizer_communicationGetAnglesRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete mypalletizer_communication/GetAnglesRequest value.
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
    /// @see Ros1Mypalletizer_communicationGetAnglesRequest; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete mypalletizer_communication/GetAnglesRequest value.
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
    /// @see Ros1Mypalletizer_communicationGetAnglesRequest; share/platform/ros/rs/API-CONTRACT.md
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
/// Complete bounded value for ROS1 mypalletizer_communication/GetAnglesResponse.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 mypalletizer_communication/GetAnglesResponse value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 16..16
/// bytes and is identified by UWVMROS1_cb5a18aec2420c030d8193eb40d25691a2491b98606a7722156984e82f77f745.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Mypalletizer_communicationGetAnglesResponse {
    /// Declared joint_1; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mypalletizer_communication/GetAnglesResponse.joint_1: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mypalletizer_communicationGetAnglesResponse; share/platform/ros/rs/API-CONTRACT.md
    pub joint_1: f32,
    /// Declared joint_2; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mypalletizer_communication/GetAnglesResponse.joint_2: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mypalletizer_communicationGetAnglesResponse; share/platform/ros/rs/API-CONTRACT.md
    pub joint_2: f32,
    /// Declared joint_3; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mypalletizer_communication/GetAnglesResponse.joint_3: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mypalletizer_communicationGetAnglesResponse; share/platform/ros/rs/API-CONTRACT.md
    pub joint_3: f32,
    /// Declared joint_4; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mypalletizer_communication/GetAnglesResponse.joint_4: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mypalletizer_communicationGetAnglesResponse; share/platform/ros/rs/API-CONTRACT.md
    pub joint_4: f32,
}
/// @brief Construct the declared defaults of mypalletizer_communication/GetAnglesResponse.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
/// sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
/// during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Mypalletizer_communicationGetAnglesResponse; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Mypalletizer_communicationGetAnglesResponse {
    fn default() -> Self {
        Self {
            joint_1: Default::default(),
            joint_2: Default::default(),
            joint_3: Default::default(),
            joint_4: Default::default(),
        }
    }
}
impl Ros1Mypalletizer_communicationGetAnglesResponse {
    /// @brief Maximum canonical extent of mypalletizer_communication/GetAnglesResponse in bytes.
    /// @details The inclusive bound is 16 bytes for this selected profile; it is not a native sizeof or a
    /// queue
    /// reservation.
    /// @see Ros1Mypalletizer_communicationGetAnglesResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 16;
    /// @brief Cartesian field-bound maximum of mypalletizer_communication/GetAnglesResponse in bytes.
    /// @details Exact independently combined field-bound extent 16; aggregate profile constraints may
    /// impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Mypalletizer_communicationGetAnglesResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 16;
    /// @brief Aggregate profile byte budget of mypalletizer_communication/GetAnglesResponse.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Mypalletizer_communicationGetAnglesResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of mypalletizer_communication/GetAnglesResponse.
    /// @details Exact identity UWVMROS1_cb5a18aec2420c030d8193eb40d25691a2491b98606a7722156984e82f77f745
    /// binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Mypalletizer_communicationGetAnglesResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_cb5a18aec2420c030d8193eb40d25691a2491b98606a7722156984e82f77f745";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete mypalletizer_communication/GetAnglesResponse value.
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
    /// @see Ros1Mypalletizer_communicationGetAnglesResponse; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if !self.joint_1.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.joint_2.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.joint_3.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.joint_4.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if n > 16 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete mypalletizer_communication/GetAnglesResponse value.
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
    /// @see Ros1Mypalletizer_communicationGetAnglesResponse; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.joint_1.to_le_bytes());
        put(out, at, &self.joint_2.to_le_bytes());
        put(out, at, &self.joint_3.to_le_bytes());
        put(out, at, &self.joint_4.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.joint_1 = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.joint_2 = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.joint_3 = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.joint_4 = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Mypalletizer_communicationGetAnglesResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete mypalletizer_communication/GetAnglesResponse value.
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
    /// @see Ros1Mypalletizer_communicationGetAnglesResponse; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete mypalletizer_communication/GetAnglesResponse value.
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
    /// @see Ros1Mypalletizer_communicationGetAnglesResponse; share/platform/ros/rs/API-CONTRACT.md
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
/// Complete bounded value for ROS1 mypalletizer_communication/GetCoordsRequest.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 mypalletizer_communication/GetCoordsRequest value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies
/// 0..0 bytes
/// and is identified by UWVMROS1_47d45419f14ce576d9e8c2bb288c7b67bb161115e7b99a2c4752d09cbb8087b8.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Mypalletizer_communicationGetCoordsRequest {}
/// @brief Construct the declared defaults of mypalletizer_communication/GetCoordsRequest.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
/// sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
/// during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Mypalletizer_communicationGetCoordsRequest; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Mypalletizer_communicationGetCoordsRequest {
    fn default() -> Self {
        Self {}
    }
}
impl Ros1Mypalletizer_communicationGetCoordsRequest {
    /// @brief Maximum canonical extent of mypalletizer_communication/GetCoordsRequest in bytes.
    /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a
    /// queue
    /// reservation.
    /// @see Ros1Mypalletizer_communicationGetCoordsRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 0;
    /// @brief Cartesian field-bound maximum of mypalletizer_communication/GetCoordsRequest in bytes.
    /// @details Exact independently combined field-bound extent 0; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Mypalletizer_communicationGetCoordsRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 0;
    /// @brief Aggregate profile byte budget of mypalletizer_communication/GetCoordsRequest.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Mypalletizer_communicationGetCoordsRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of mypalletizer_communication/GetCoordsRequest.
    /// @details Exact identity UWVMROS1_47d45419f14ce576d9e8c2bb288c7b67bb161115e7b99a2c4752d09cbb8087b8
    /// binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Mypalletizer_communicationGetCoordsRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_47d45419f14ce576d9e8c2bb288c7b67bb161115e7b99a2c4752d09cbb8087b8";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete mypalletizer_communication/GetCoordsRequest value.
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
    /// @see Ros1Mypalletizer_communicationGetCoordsRequest; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if n > 0 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete mypalletizer_communication/GetCoordsRequest value.
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
    /// @see Ros1Mypalletizer_communicationGetCoordsRequest; share/platform/ros/rs/API-CONTRACT.md
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
impl Canonical for Ros1Mypalletizer_communicationGetCoordsRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete mypalletizer_communication/GetCoordsRequest value.
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
    /// @see Ros1Mypalletizer_communicationGetCoordsRequest; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete mypalletizer_communication/GetCoordsRequest value.
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
    /// @see Ros1Mypalletizer_communicationGetCoordsRequest; share/platform/ros/rs/API-CONTRACT.md
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
/// Complete bounded value for ROS1 mypalletizer_communication/GetCoordsResponse.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 mypalletizer_communication/GetCoordsResponse value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 16..16
/// bytes and is identified by UWVMROS1_7fdad367484b5f89c812c2513e99373844dcd160a115e326fb1c597f221b53fb.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Mypalletizer_communicationGetCoordsResponse {
    /// Declared x; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mypalletizer_communication/GetCoordsResponse.x: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mypalletizer_communicationGetCoordsResponse; share/platform/ros/rs/API-CONTRACT.md
    pub x: f32,
    /// Declared y; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mypalletizer_communication/GetCoordsResponse.y: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mypalletizer_communicationGetCoordsResponse; share/platform/ros/rs/API-CONTRACT.md
    pub y: f32,
    /// Declared z; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mypalletizer_communication/GetCoordsResponse.z: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mypalletizer_communicationGetCoordsResponse; share/platform/ros/rs/API-CONTRACT.md
    pub z: f32,
    /// Declared rx; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mypalletizer_communication/GetCoordsResponse.rx: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mypalletizer_communicationGetCoordsResponse; share/platform/ros/rs/API-CONTRACT.md
    pub rx: f32,
}
/// @brief Construct the declared defaults of mypalletizer_communication/GetCoordsResponse.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
/// sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
/// during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Mypalletizer_communicationGetCoordsResponse; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Mypalletizer_communicationGetCoordsResponse {
    fn default() -> Self {
        Self {
            x: Default::default(),
            y: Default::default(),
            z: Default::default(),
            rx: Default::default(),
        }
    }
}
impl Ros1Mypalletizer_communicationGetCoordsResponse {
    /// @brief Maximum canonical extent of mypalletizer_communication/GetCoordsResponse in bytes.
    /// @details The inclusive bound is 16 bytes for this selected profile; it is not a native sizeof or a
    /// queue
    /// reservation.
    /// @see Ros1Mypalletizer_communicationGetCoordsResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 16;
    /// @brief Cartesian field-bound maximum of mypalletizer_communication/GetCoordsResponse in bytes.
    /// @details Exact independently combined field-bound extent 16; aggregate profile constraints may
    /// impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Mypalletizer_communicationGetCoordsResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 16;
    /// @brief Aggregate profile byte budget of mypalletizer_communication/GetCoordsResponse.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Mypalletizer_communicationGetCoordsResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of mypalletizer_communication/GetCoordsResponse.
    /// @details Exact identity UWVMROS1_7fdad367484b5f89c812c2513e99373844dcd160a115e326fb1c597f221b53fb
    /// binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Mypalletizer_communicationGetCoordsResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_7fdad367484b5f89c812c2513e99373844dcd160a115e326fb1c597f221b53fb";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete mypalletizer_communication/GetCoordsResponse value.
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
    /// @see Ros1Mypalletizer_communicationGetCoordsResponse; share/platform/ros/rs/API-CONTRACT.md
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
        if !self.rx.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if n > 16 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete mypalletizer_communication/GetCoordsResponse value.
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
    /// @see Ros1Mypalletizer_communicationGetCoordsResponse; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
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
        put(out, at, &self.rx.to_le_bytes());
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
        value.rx = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Mypalletizer_communicationGetCoordsResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete mypalletizer_communication/GetCoordsResponse value.
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
    /// @see Ros1Mypalletizer_communicationGetCoordsResponse; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete mypalletizer_communication/GetCoordsResponse value.
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
    /// @see Ros1Mypalletizer_communicationGetCoordsResponse; share/platform/ros/rs/API-CONTRACT.md
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
/// Complete bounded value for ROS1 mypalletizer_communication/GripperStatusRequest.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 mypalletizer_communication/GripperStatusRequest value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies
/// 1..1 bytes
/// and is identified by UWVMROS1_48d661f8fd6adfcf1703123464fcfb9351f8f831c0779ffad103a63bcf7ea709.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Mypalletizer_communicationGripperStatusRequest {
    /// Declared Status; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mypalletizer_communication/GripperStatusRequest.Status: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mypalletizer_communicationGripperStatusRequest; share/platform/ros/rs/API-CONTRACT.md
    pub Status: bool,
}
/// @brief Construct the declared defaults of mypalletizer_communication/GripperStatusRequest.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
/// sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
/// during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Mypalletizer_communicationGripperStatusRequest; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Mypalletizer_communicationGripperStatusRequest {
    fn default() -> Self {
        Self {
            Status: Default::default(),
        }
    }
}
impl Ros1Mypalletizer_communicationGripperStatusRequest {
    /// @brief Maximum canonical extent of mypalletizer_communication/GripperStatusRequest in bytes.
    /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a
    /// queue
    /// reservation.
    /// @see Ros1Mypalletizer_communicationGripperStatusRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 1;
    /// @brief Cartesian field-bound maximum of mypalletizer_communication/GripperStatusRequest in bytes.
    /// @details Exact independently combined field-bound extent 1; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Mypalletizer_communicationGripperStatusRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    /// @brief Aggregate profile byte budget of mypalletizer_communication/GripperStatusRequest.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Mypalletizer_communicationGripperStatusRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of mypalletizer_communication/GripperStatusRequest.
    /// @details Exact identity UWVMROS1_48d661f8fd6adfcf1703123464fcfb9351f8f831c0779ffad103a63bcf7ea709
    /// binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Mypalletizer_communicationGripperStatusRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_48d661f8fd6adfcf1703123464fcfb9351f8f831c0779ffad103a63bcf7ea709";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete mypalletizer_communication/GripperStatusRequest value.
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
    /// @see Ros1Mypalletizer_communicationGripperStatusRequest; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if n > 1 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete mypalletizer_communication/GripperStatusRequest value.
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
    /// @see Ros1Mypalletizer_communicationGripperStatusRequest; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &[u8::from(self.Status)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.Status = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Mypalletizer_communicationGripperStatusRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete mypalletizer_communication/GripperStatusRequest value.
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
    /// @see Ros1Mypalletizer_communicationGripperStatusRequest; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete mypalletizer_communication/GripperStatusRequest value.
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
    /// @see Ros1Mypalletizer_communicationGripperStatusRequest; share/platform/ros/rs/API-CONTRACT.md
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
/// Complete bounded value for ROS1 mypalletizer_communication/GripperStatusResponse.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 mypalletizer_communication/GripperStatusResponse value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies
/// 1..1 bytes
/// and is identified by UWVMROS1_00ab8ceb190b588a9420c2e044da64857cfdb76e709e40e57835ab5732074e2b.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Mypalletizer_communicationGripperStatusResponse {
    /// Declared Flag; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mypalletizer_communication/GripperStatusResponse.Flag: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mypalletizer_communicationGripperStatusResponse; share/platform/ros/rs/API-CONTRACT.md
    pub Flag: bool,
}
/// @brief Construct the declared defaults of mypalletizer_communication/GripperStatusResponse.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
/// sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
/// during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Mypalletizer_communicationGripperStatusResponse; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Mypalletizer_communicationGripperStatusResponse {
    fn default() -> Self {
        Self {
            Flag: Default::default(),
        }
    }
}
impl Ros1Mypalletizer_communicationGripperStatusResponse {
    /// @brief Maximum canonical extent of mypalletizer_communication/GripperStatusResponse in bytes.
    /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a
    /// queue
    /// reservation.
    /// @see Ros1Mypalletizer_communicationGripperStatusResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 1;
    /// @brief Cartesian field-bound maximum of mypalletizer_communication/GripperStatusResponse in bytes.
    /// @details Exact independently combined field-bound extent 1; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Mypalletizer_communicationGripperStatusResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    /// @brief Aggregate profile byte budget of mypalletizer_communication/GripperStatusResponse.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Mypalletizer_communicationGripperStatusResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of mypalletizer_communication/GripperStatusResponse.
    /// @details Exact identity UWVMROS1_00ab8ceb190b588a9420c2e044da64857cfdb76e709e40e57835ab5732074e2b
    /// binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Mypalletizer_communicationGripperStatusResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_00ab8ceb190b588a9420c2e044da64857cfdb76e709e40e57835ab5732074e2b";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete mypalletizer_communication/GripperStatusResponse value.
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
    /// @see Ros1Mypalletizer_communicationGripperStatusResponse; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if n > 1 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete mypalletizer_communication/GripperStatusResponse value.
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
    /// @see Ros1Mypalletizer_communicationGripperStatusResponse; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &[u8::from(self.Flag)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.Flag = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Mypalletizer_communicationGripperStatusResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete mypalletizer_communication/GripperStatusResponse value.
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
    /// @see Ros1Mypalletizer_communicationGripperStatusResponse; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete mypalletizer_communication/GripperStatusResponse value.
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
    /// @see Ros1Mypalletizer_communicationGripperStatusResponse; share/platform/ros/rs/API-CONTRACT.md
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
/// Complete bounded value for ROS1 mypalletizer_communication/PumpStatusRequest.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 mypalletizer_communication/PumpStatusRequest value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies
/// 3..3 bytes
/// and is identified by UWVMROS1_6dd70636864c4450a066c1d75e67643331fac4c3e1625bce1b94c85ce7a35636.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Mypalletizer_communicationPumpStatusRequest {
    /// Declared Status; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mypalletizer_communication/PumpStatusRequest.Status: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mypalletizer_communicationPumpStatusRequest; share/platform/ros/rs/API-CONTRACT.md
    pub Status: bool,
    /// Declared Pin1; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mypalletizer_communication/PumpStatusRequest.Pin1: int8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mypalletizer_communicationPumpStatusRequest; share/platform/ros/rs/API-CONTRACT.md
    pub Pin1: i8,
    /// Declared Pin2; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mypalletizer_communication/PumpStatusRequest.Pin2: int8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mypalletizer_communicationPumpStatusRequest; share/platform/ros/rs/API-CONTRACT.md
    pub Pin2: i8,
}
/// @brief Construct the declared defaults of mypalletizer_communication/PumpStatusRequest.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
/// sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
/// during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Mypalletizer_communicationPumpStatusRequest; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Mypalletizer_communicationPumpStatusRequest {
    fn default() -> Self {
        Self {
            Status: Default::default(),
            Pin1: Default::default(),
            Pin2: Default::default(),
        }
    }
}
impl Ros1Mypalletizer_communicationPumpStatusRequest {
    /// @brief Maximum canonical extent of mypalletizer_communication/PumpStatusRequest in bytes.
    /// @details The inclusive bound is 3 bytes for this selected profile; it is not a native sizeof or a
    /// queue
    /// reservation.
    /// @see Ros1Mypalletizer_communicationPumpStatusRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 3;
    /// @brief Cartesian field-bound maximum of mypalletizer_communication/PumpStatusRequest in bytes.
    /// @details Exact independently combined field-bound extent 3; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Mypalletizer_communicationPumpStatusRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 3;
    /// @brief Aggregate profile byte budget of mypalletizer_communication/PumpStatusRequest.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Mypalletizer_communicationPumpStatusRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of mypalletizer_communication/PumpStatusRequest.
    /// @details Exact identity UWVMROS1_6dd70636864c4450a066c1d75e67643331fac4c3e1625bce1b94c85ce7a35636
    /// binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Mypalletizer_communicationPumpStatusRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_6dd70636864c4450a066c1d75e67643331fac4c3e1625bce1b94c85ce7a35636";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete mypalletizer_communication/PumpStatusRequest value.
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
    /// @see Ros1Mypalletizer_communicationPumpStatusRequest; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        if n > 3 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete mypalletizer_communication/PumpStatusRequest value.
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
    /// @see Ros1Mypalletizer_communicationPumpStatusRequest; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &[u8::from(self.Status)]);
        put(out, at, &self.Pin1.to_le_bytes());
        put(out, at, &self.Pin2.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.Status = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.Pin1 = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.Pin2 = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Mypalletizer_communicationPumpStatusRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete mypalletizer_communication/PumpStatusRequest value.
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
    /// @see Ros1Mypalletizer_communicationPumpStatusRequest; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete mypalletizer_communication/PumpStatusRequest value.
    /// @details Require the complete 3..3-byte canonical representation. Reject truncation, invalid
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
    /// @see Ros1Mypalletizer_communicationPumpStatusRequest; share/platform/ros/rs/API-CONTRACT.md
    fn decode(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() > 3 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        if bytes.len() < 3 {
            return Err(invalid());
        }
        let mut at = 0;
        let value = Self::read_fields(bytes, &mut at)?;
        if at != bytes.len() {
            return Err(invalid());
        }
        Ok(value)
    }
}
/// Complete bounded value for ROS1 mypalletizer_communication/PumpStatusResponse.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 mypalletizer_communication/PumpStatusResponse value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies
/// 1..1 bytes
/// and is identified by UWVMROS1_c2503f89c84c49db8dab2ac9f847ba9d09434d366fd8916a7d5f30ea161bb4c5.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Mypalletizer_communicationPumpStatusResponse {
    /// Declared Flag; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mypalletizer_communication/PumpStatusResponse.Flag: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mypalletizer_communicationPumpStatusResponse; share/platform/ros/rs/API-CONTRACT.md
    pub Flag: bool,
}
/// @brief Construct the declared defaults of mypalletizer_communication/PumpStatusResponse.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
/// sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
/// during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Mypalletizer_communicationPumpStatusResponse; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Mypalletizer_communicationPumpStatusResponse {
    fn default() -> Self {
        Self {
            Flag: Default::default(),
        }
    }
}
impl Ros1Mypalletizer_communicationPumpStatusResponse {
    /// @brief Maximum canonical extent of mypalletizer_communication/PumpStatusResponse in bytes.
    /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a
    /// queue
    /// reservation.
    /// @see Ros1Mypalletizer_communicationPumpStatusResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 1;
    /// @brief Cartesian field-bound maximum of mypalletizer_communication/PumpStatusResponse in bytes.
    /// @details Exact independently combined field-bound extent 1; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Mypalletizer_communicationPumpStatusResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    /// @brief Aggregate profile byte budget of mypalletizer_communication/PumpStatusResponse.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Mypalletizer_communicationPumpStatusResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of mypalletizer_communication/PumpStatusResponse.
    /// @details Exact identity UWVMROS1_c2503f89c84c49db8dab2ac9f847ba9d09434d366fd8916a7d5f30ea161bb4c5
    /// binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Mypalletizer_communicationPumpStatusResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_c2503f89c84c49db8dab2ac9f847ba9d09434d366fd8916a7d5f30ea161bb4c5";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete mypalletizer_communication/PumpStatusResponse value.
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
    /// @see Ros1Mypalletizer_communicationPumpStatusResponse; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if n > 1 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete mypalletizer_communication/PumpStatusResponse value.
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
    /// @see Ros1Mypalletizer_communicationPumpStatusResponse; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &[u8::from(self.Flag)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.Flag = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Mypalletizer_communicationPumpStatusResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete mypalletizer_communication/PumpStatusResponse value.
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
    /// @see Ros1Mypalletizer_communicationPumpStatusResponse; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete mypalletizer_communication/PumpStatusResponse value.
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
    /// @see Ros1Mypalletizer_communicationPumpStatusResponse; share/platform/ros/rs/API-CONTRACT.md
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
/// Complete bounded value for ROS1 mypalletizer_communication/SetAnglesRequest.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 mypalletizer_communication/SetAnglesRequest value.
/// @details All 5 declared fields are retained in source order. The canonical representation occupies 17..17
/// bytes and is identified by UWVMROS1_32072510c6deddb3f372b5f300068ea457916a4e0397b30951e421a1da641d5d.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Mypalletizer_communicationSetAnglesRequest {
    /// Declared joint_1; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mypalletizer_communication/SetAnglesRequest.joint_1: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mypalletizer_communicationSetAnglesRequest; share/platform/ros/rs/API-CONTRACT.md
    pub joint_1: f32,
    /// Declared joint_2; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mypalletizer_communication/SetAnglesRequest.joint_2: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mypalletizer_communicationSetAnglesRequest; share/platform/ros/rs/API-CONTRACT.md
    pub joint_2: f32,
    /// Declared joint_3; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mypalletizer_communication/SetAnglesRequest.joint_3: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mypalletizer_communicationSetAnglesRequest; share/platform/ros/rs/API-CONTRACT.md
    pub joint_3: f32,
    /// Declared joint_4; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mypalletizer_communication/SetAnglesRequest.joint_4: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mypalletizer_communicationSetAnglesRequest; share/platform/ros/rs/API-CONTRACT.md
    pub joint_4: f32,
    /// Declared speed; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mypalletizer_communication/SetAnglesRequest.speed: int8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mypalletizer_communicationSetAnglesRequest; share/platform/ros/rs/API-CONTRACT.md
    pub speed: i8,
}
/// @brief Construct the declared defaults of mypalletizer_communication/SetAnglesRequest.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
/// sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
/// during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Mypalletizer_communicationSetAnglesRequest; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Mypalletizer_communicationSetAnglesRequest {
    fn default() -> Self {
        Self {
            joint_1: Default::default(),
            joint_2: Default::default(),
            joint_3: Default::default(),
            joint_4: Default::default(),
            speed: Default::default(),
        }
    }
}
impl Ros1Mypalletizer_communicationSetAnglesRequest {
    /// @brief Maximum canonical extent of mypalletizer_communication/SetAnglesRequest in bytes.
    /// @details The inclusive bound is 17 bytes for this selected profile; it is not a native sizeof or a
    /// queue
    /// reservation.
    /// @see Ros1Mypalletizer_communicationSetAnglesRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 17;
    /// @brief Cartesian field-bound maximum of mypalletizer_communication/SetAnglesRequest in bytes.
    /// @details Exact independently combined field-bound extent 17; aggregate profile constraints may
    /// impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Mypalletizer_communicationSetAnglesRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 17;
    /// @brief Aggregate profile byte budget of mypalletizer_communication/SetAnglesRequest.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Mypalletizer_communicationSetAnglesRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of mypalletizer_communication/SetAnglesRequest.
    /// @details Exact identity UWVMROS1_32072510c6deddb3f372b5f300068ea457916a4e0397b30951e421a1da641d5d
    /// binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Mypalletizer_communicationSetAnglesRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_32072510c6deddb3f372b5f300068ea457916a4e0397b30951e421a1da641d5d";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete mypalletizer_communication/SetAnglesRequest value.
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
    /// @see Ros1Mypalletizer_communicationSetAnglesRequest; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        if !self.joint_1.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.joint_2.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.joint_3.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        if !self.joint_4.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, 1)?;
        if n > 17 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete mypalletizer_communication/SetAnglesRequest value.
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
    /// @see Ros1Mypalletizer_communicationSetAnglesRequest; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &self.joint_1.to_le_bytes());
        put(out, at, &self.joint_2.to_le_bytes());
        put(out, at, &self.joint_3.to_le_bytes());
        put(out, at, &self.joint_4.to_le_bytes());
        put(out, at, &self.speed.to_le_bytes());
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.joint_1 = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.joint_2 = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.joint_3 = decoded;
        let decoded = f32::from_le_bytes(take(bytes, at, 4)?.try_into().map_err(|_| invalid())?);
        if !decoded.is_finite() {
            return Err(invalid());
        }
        value.joint_4 = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.speed = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Mypalletizer_communicationSetAnglesRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete mypalletizer_communication/SetAnglesRequest value.
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
    /// @see Ros1Mypalletizer_communicationSetAnglesRequest; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete mypalletizer_communication/SetAnglesRequest value.
    /// @details Require the complete 17..17-byte canonical representation. Reject truncation, invalid
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
    /// @see Ros1Mypalletizer_communicationSetAnglesRequest; share/platform/ros/rs/API-CONTRACT.md
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
/// Complete bounded value for ROS1 mypalletizer_communication/SetAnglesResponse.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 mypalletizer_communication/SetAnglesResponse value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies
/// 1..1 bytes
/// and is identified by UWVMROS1_1472b47adc3171a9f1938e52bc937af6dd6bb720d33e163b70ae066a89a3211c.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Mypalletizer_communicationSetAnglesResponse {
    /// Declared Flag; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mypalletizer_communication/SetAnglesResponse.Flag: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mypalletizer_communicationSetAnglesResponse; share/platform/ros/rs/API-CONTRACT.md
    pub Flag: bool,
}
/// @brief Construct the declared defaults of mypalletizer_communication/SetAnglesResponse.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
/// sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
/// during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Mypalletizer_communicationSetAnglesResponse; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Mypalletizer_communicationSetAnglesResponse {
    fn default() -> Self {
        Self {
            Flag: Default::default(),
        }
    }
}
impl Ros1Mypalletizer_communicationSetAnglesResponse {
    /// @brief Maximum canonical extent of mypalletizer_communication/SetAnglesResponse in bytes.
    /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a
    /// queue
    /// reservation.
    /// @see Ros1Mypalletizer_communicationSetAnglesResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 1;
    /// @brief Cartesian field-bound maximum of mypalletizer_communication/SetAnglesResponse in bytes.
    /// @details Exact independently combined field-bound extent 1; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Mypalletizer_communicationSetAnglesResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    /// @brief Aggregate profile byte budget of mypalletizer_communication/SetAnglesResponse.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Mypalletizer_communicationSetAnglesResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of mypalletizer_communication/SetAnglesResponse.
    /// @details Exact identity UWVMROS1_1472b47adc3171a9f1938e52bc937af6dd6bb720d33e163b70ae066a89a3211c
    /// binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Mypalletizer_communicationSetAnglesResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_1472b47adc3171a9f1938e52bc937af6dd6bb720d33e163b70ae066a89a3211c";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete mypalletizer_communication/SetAnglesResponse value.
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
    /// @see Ros1Mypalletizer_communicationSetAnglesResponse; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if n > 1 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete mypalletizer_communication/SetAnglesResponse value.
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
    /// @see Ros1Mypalletizer_communicationSetAnglesResponse; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &[u8::from(self.Flag)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.Flag = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Mypalletizer_communicationSetAnglesResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete mypalletizer_communication/SetAnglesResponse value.
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
    /// @see Ros1Mypalletizer_communicationSetAnglesResponse; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete mypalletizer_communication/SetAnglesResponse value.
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
    /// @see Ros1Mypalletizer_communicationSetAnglesResponse; share/platform/ros/rs/API-CONTRACT.md
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
/// Complete bounded value for ROS1 mypalletizer_communication/SetCoordsRequest.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 mypalletizer_communication/SetCoordsRequest value.
/// @details All 6 declared fields are retained in source order. The canonical representation occupies 18..18
/// bytes and is identified by UWVMROS1_2d608cac1a7129ca5cd68ff52170ed40258cb6d199f4842a268a1d7570f9bda1.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Mypalletizer_communicationSetCoordsRequest {
    /// Declared x; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mypalletizer_communication/SetCoordsRequest.x: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mypalletizer_communicationSetCoordsRequest; share/platform/ros/rs/API-CONTRACT.md
    pub x: f32,
    /// Declared y; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mypalletizer_communication/SetCoordsRequest.y: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mypalletizer_communicationSetCoordsRequest; share/platform/ros/rs/API-CONTRACT.md
    pub y: f32,
    /// Declared z; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mypalletizer_communication/SetCoordsRequest.z: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mypalletizer_communicationSetCoordsRequest; share/platform/ros/rs/API-CONTRACT.md
    pub z: f32,
    /// Declared rx; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mypalletizer_communication/SetCoordsRequest.rx: float32.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mypalletizer_communicationSetCoordsRequest; share/platform/ros/rs/API-CONTRACT.md
    pub rx: f32,
    /// Declared speed; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mypalletizer_communication/SetCoordsRequest.speed: int8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mypalletizer_communicationSetCoordsRequest; share/platform/ros/rs/API-CONTRACT.md
    pub speed: i8,
    /// Declared model; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mypalletizer_communication/SetCoordsRequest.model: int8.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mypalletizer_communicationSetCoordsRequest; share/platform/ros/rs/API-CONTRACT.md
    pub model: i8,
}
/// @brief Construct the declared defaults of mypalletizer_communication/SetCoordsRequest.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
/// sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
/// during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Mypalletizer_communicationSetCoordsRequest; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Mypalletizer_communicationSetCoordsRequest {
    fn default() -> Self {
        Self {
            x: Default::default(),
            y: Default::default(),
            z: Default::default(),
            rx: Default::default(),
            speed: Default::default(),
            model: Default::default(),
        }
    }
}
impl Ros1Mypalletizer_communicationSetCoordsRequest {
    /// @brief Maximum canonical extent of mypalletizer_communication/SetCoordsRequest in bytes.
    /// @details The inclusive bound is 18 bytes for this selected profile; it is not a native sizeof or a
    /// queue
    /// reservation.
    /// @see Ros1Mypalletizer_communicationSetCoordsRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 18;
    /// @brief Cartesian field-bound maximum of mypalletizer_communication/SetCoordsRequest in bytes.
    /// @details Exact independently combined field-bound extent 18; aggregate profile constraints may
    /// impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Mypalletizer_communicationSetCoordsRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 18;
    /// @brief Aggregate profile byte budget of mypalletizer_communication/SetCoordsRequest.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Mypalletizer_communicationSetCoordsRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of mypalletizer_communication/SetCoordsRequest.
    /// @details Exact identity UWVMROS1_2d608cac1a7129ca5cd68ff52170ed40258cb6d199f4842a268a1d7570f9bda1
    /// binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Mypalletizer_communicationSetCoordsRequest; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_2d608cac1a7129ca5cd68ff52170ed40258cb6d199f4842a268a1d7570f9bda1";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete mypalletizer_communication/SetCoordsRequest value.
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
    /// @see Ros1Mypalletizer_communicationSetCoordsRequest; share/platform/ros/rs/API-CONTRACT.md
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
        if !self.rx.is_finite() {
            return Err(invalid());
        }
        n = add_size(n, 4)?;
        n = add_size(n, 1)?;
        n = add_size(n, 1)?;
        if n > 18 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete mypalletizer_communication/SetCoordsRequest value.
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
    /// @see Ros1Mypalletizer_communicationSetCoordsRequest; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
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
        put(out, at, &self.rx.to_le_bytes());
        put(out, at, &self.speed.to_le_bytes());
        put(out, at, &self.model.to_le_bytes());
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
        value.rx = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.speed = decoded;
        let decoded = i8::from_le_bytes(take(bytes, at, 1)?.try_into().map_err(|_| invalid())?);
        value.model = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Mypalletizer_communicationSetCoordsRequest {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete mypalletizer_communication/SetCoordsRequest value.
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
    /// @see Ros1Mypalletizer_communicationSetCoordsRequest; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete mypalletizer_communication/SetCoordsRequest value.
    /// @details Require the complete 18..18-byte canonical representation. Reject truncation, invalid
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
    /// @see Ros1Mypalletizer_communicationSetCoordsRequest; share/platform/ros/rs/API-CONTRACT.md
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
/// Complete bounded value for ROS1 mypalletizer_communication/SetCoordsResponse.
#[derive(Clone, Debug, PartialEq)]
/// @brief Complete ROS 1 mypalletizer_communication/SetCoordsResponse value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies
/// 1..1 bytes
/// and is identified by UWVMROS1_86900f8772e9609e1d2b882b6ab613ce9609be6c589e5b9574a57b8749231308.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub struct Ros1Mypalletizer_communicationSetCoordsResponse {
    /// Declared Flag; canonical bounds are part of CODEC_IDENTITY.
    /// @brief mypalletizer_communication/SetCoordsResponse.Flag: bool.
    /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
    /// preserves the
    /// original field position and signedness; invalid bounds fail instead of truncating the value.
    /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
    /// scaling,
    /// frame conversion or normalization.
    /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded
    /// borrowing and
    /// allocator ownership follow the enclosing decode function.
    /// @see Ros1Mypalletizer_communicationSetCoordsResponse; share/platform/ros/rs/API-CONTRACT.md
    pub Flag: bool,
}
/// @brief Construct the declared defaults of mypalletizer_communication/SetCoordsResponse.
/// @details Initialize every field without transport access. Fixed arrays retain their exact shape;
/// sequence and
/// string defaults are empty unless the schema declares a supported scalar default.
/// @return A fresh ordinary value with all generated defaults.
/// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
/// during
/// synchronous encoding; do not share mutable cursors during a call.
/// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
/// @see Ros1Mypalletizer_communicationSetCoordsResponse; share/platform/ros/rs/API-CONTRACT.md
impl Default for Ros1Mypalletizer_communicationSetCoordsResponse {
    fn default() -> Self {
        Self {
            Flag: Default::default(),
        }
    }
}
impl Ros1Mypalletizer_communicationSetCoordsResponse {
    /// @brief Maximum canonical extent of mypalletizer_communication/SetCoordsResponse in bytes.
    /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a
    /// queue
    /// reservation.
    /// @see Ros1Mypalletizer_communicationSetCoordsResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const MAX_WIRE_BYTES: usize = 1;
    /// @brief Cartesian field-bound maximum of mypalletizer_communication/SetCoordsResponse in bytes.
    /// @details Exact independently combined field-bound extent 1; aggregate profile constraints may impose a
    /// smaller usable wire ceiling.
    /// @see Ros1Mypalletizer_communicationSetCoordsResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const CARTESIAN_WIRE_BYTES: u64 = 1;
    /// @brief Aggregate profile byte budget of mypalletizer_communication/SetCoordsResponse.
    /// @details The selected aggregate constraint is 0 bytes. It does not change individual field bounds or
    /// reserve transport capacity.
    /// @see Ros1Mypalletizer_communicationSetCoordsResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const AGGREGATE_WIRE_BYTES: usize = 0;
    /// @brief Canonical codec identity of mypalletizer_communication/SetCoordsResponse.
    /// @details Exact identity UWVMROS1_86900f8772e9609e1d2b882b6ab613ce9609be6c589e5b9574a57b8749231308
    /// binds
    /// field order, shape and bounds. It does not replace the native type identity.
    /// @see Ros1Mypalletizer_communicationSetCoordsResponse; share/platform/ros/rs/API-CONTRACT.md
    pub const CODEC_IDENTITY: &'static str =
        "UWVMROS1_86900f8772e9609e1d2b882b6ab613ce9609be6c589e5b9574a57b8749231308";
    /// Validate all fields and measure only their initialized canonical prefix.
    /// @brief Validate and measure one complete mypalletizer_communication/SetCoordsResponse value.
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
    /// @see Ros1Mypalletizer_communicationSetCoordsResponse; share/platform/ros/rs/API-CONTRACT.md
    pub fn wire_size(&self) -> Result<usize, Error> {
        let mut n = 0usize;
        n = add_size(n, 1)?;
        if n > 1 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        Ok(n)
    }
    /// Encode after complete validation; output remains unchanged on refusal.
    /// @brief Encode one complete mypalletizer_communication/SetCoordsResponse value.
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
    /// @see Ros1Mypalletizer_communicationSetCoordsResponse; share/platform/ros/rs/API-CONTRACT.md
    pub fn encode_into(&self, out: &mut [u8]) -> Result<usize, Error> {
        let n = self.wire_size()?;
        if out.len() < n {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let mut at = 0;
        self.write_fields(out, &mut at);
        Ok(at)
    }
    fn write_fields(&self, out: &mut [u8], at: &mut usize) {
        put(out, at, &[u8::from(self.Flag)]);
    }
    fn read_fields(bytes: &[u8], at: &mut usize) -> Result<Self, Error> {
        let mut value = Self::default();
        let byte = take(bytes, at, 1)?[0];
        if byte > 1 {
            return Err(invalid());
        }
        let decoded = byte != 0;
        value.Flag = decoded;
        Ok(value)
    }
}
impl Canonical for Ros1Mypalletizer_communicationSetCoordsResponse {
    /// Allocate one exact validated canonical output; never native serialization.
    /// @brief Encode one complete mypalletizer_communication/SetCoordsResponse value.
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
    /// @see Ros1Mypalletizer_communicationSetCoordsResponse; share/platform/ros/rs/API-CONTRACT.md
    fn encode(&self) -> Result<Vec<u8>, Error> {
        let n = self.wire_size()?;
        let mut out = alloc::vec![0u8;n];
        let mut at = 0;
        self.write_fields(&mut out, &mut at);
        Ok(out)
    }
    /// @brief Decode exactly one complete mypalletizer_communication/SetCoordsResponse value.
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
    /// @see Ros1Mypalletizer_communicationSetCoordsResponse; share/platform/ros/rs/API-CONTRACT.md
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
