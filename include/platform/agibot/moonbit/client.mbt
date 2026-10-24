// @file client.mbt
// @brief Provide the complete agibot client.mbt source contract.
// @details Complete original fields, scalar widths, canonical quotas and interface roles are retained. Local
// encoding grants no ROS authority; invalid or partial wire is rejected before a value is exposed.
// SPDX-License-Identifier: Apache-2.0
///|
/// Own a complete original AimDK observation inside a Wasm command. The official
/// MoonBit C backend emits portable C, which is compiled and linked exclusively
/// for wasm32-wasip1. The shared C adapter owns the ROS capability and closes it
/// before returning. JSON retains all fields; int64/uint64 use decimal strings.
pub(all) struct Observation {
    error : UInt
    cleanup : UInt
    written : UInt
    vendor : Int64
    bytes : Bytes
}

///|
/// Borrow three separate buffers for one immediate same-Wasm C FFI call.
/// The callee retains no pointer and must not decref these borrowed values.
#borrow(name, output, metadata)
extern "C" fn observe_raw(
    operation : UInt,
    name : Bytes,
    timeout_ms : UInt,
    output : Bytes,
    metadata : Bytes,
) -> UInt = "agibot_moon_observe"

///|
/// Read initialized little-endian metadata without depending on its alignment.
#borrow(metadata)
extern "C" fn metadata_u32(metadata : Bytes, index : UInt) -> UInt =
    "agibot_moon_metadata_u32"

#borrow(metadata)
extern "C" fn metadata_vendor(metadata : Bytes) -> Int64 =
    "agibot_moon_metadata_vendor"

fn observe(operation : UInt, name : Bytes, timeout_ms : UInt) -> Observation {
    let output = Bytes::make(65536, 0)
    let metadata = Bytes::make(16, 0)
    let error = observe_raw(operation, name, timeout_ms, output, metadata)
    {
        error,
        cleanup: metadata_u32(metadata, 1),
        written: metadata_u32(metadata, 0),
        vendor: metadata_vendor(metadata),
        bytes: output,
    }
}

///|
/// Query original GetMcAction once. name is an explicit granted alias encoded
/// as 1..255 strict UTF-8 bytes. The result owns all JSON and independent error
/// facts. The service uses the gateway deadline and is never replayed.
pub fn query_mode(name : Bytes) -> Observation {
    observe(1U, name, 3000U)
}

///|
/// Receive complete McCommonState before timeout_ms in 1..30000 milliseconds.
/// Requires a monotonic-clock grant. Error 110 means expiry. Only an idle queue
/// is polled again; no callback enters MoonBit and no owner escapes this call.
pub fn next_motion_state(name : Bytes, timeout_ms : UInt) -> Observation {
    observe(2U, name, timeout_ms)
}

///|
/// Enumerate full original X2 Ultra resource/file arrays through the explicit
/// GetRobotResources alias. This operation does not play or download resources.
pub fn list_resources(name : Bytes) -> Observation {
    observe(3U, name, 3000U)
}

///|
/// Return the real WASI argument count, or a negative original WASI errno.
/// This helper reads no host environment and grants no ROS authority.
pub extern "C" fn argument_count() -> Int = "agibot_moon_argument_count"

///|
/// Copy one real WASI argument into newly owned MoonBit bytes. Invalid indices,
/// errors and arguments longer than 255 bytes return an empty byte array. The
/// SDK subsequently rejects an empty alias before acquiring any capability.
pub extern "C" fn argument(index : Int) -> Bytes = "agibot_moon_argument"

///|
/// Write complete initialized JSON and a newline to WASI stdout. The output
/// remains caller-owned and is borrowed only until return. Zero means success;
/// 5 means output failure, and 22 rejects an invalid extent.
#borrow(output)
pub extern "C" fn write_json(output : Bytes, written : UInt) -> UInt =
    "agibot_moon_write_json"

///|
/// Print actual primary/close errors to WASI stderr and return exit status one.
pub extern "C" fn diagnostic(error : UInt, cleanup : UInt) -> UInt =
    "agibot_guest_diagnostic"

///|
/// Print the missing-alias diagnostic; returns usage status 22 or I/O errno 5.
pub extern "C" fn usage() -> UInt = "agibot_guest_usage"

///|
/// End the Wasm command with the selected process status. Call only after the
/// SDK has retired its capability. This does not stop physical robot motion.
pub extern "C" fn exit(status : UInt) -> Unit = "agibot_moon_exit"
