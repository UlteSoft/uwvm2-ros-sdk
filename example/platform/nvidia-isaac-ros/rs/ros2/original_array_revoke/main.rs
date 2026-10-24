//! @file main.rs
//! @brief original_array_revoke the complete native original Array with genuine Rust.
//! @details Uses the public uniquely owned Capability and complete Canonical
//! records. No native schema, permission, thread or default alias is fabricated.
use nvidia_isaac_ros::Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray as Array;
use roswasm::{codes, raw, typed::Canonical, Backend, Capability};
use std::{io::Write, time::Duration};

/// @brief Preserve the primary operation and independent retirement/cleanup statuses.
#[derive(Default)]
struct Report {
    /// @brief Original first failing status, zero on completed flow.
    primary: u32,
    /// @brief Explicit final cleanup notification status, never substituted for primary.
    cleanup: u32,
    /// @brief Original subscription close/revoke status.
    retirement: u32,
    /// @brief Actual raw stale-handle poll refusal after retirement.
    stale: u32,
    /// @brief Actual explicit alias reopen refusal after revocation.
    reopen: u32,
    /// @brief Distinct successfully acknowledged deliberate publications.
    published: u32,
    /// @brief Full original canonical body in ASCII hexadecimal.
    wire_hex: String,
}

/// @brief Poll one complete original message with bounded idle waiting.
/// @param owner Borrowed live exact subscription; never retired by this function.
/// @return Owned complete bytes or the original status;110 bounds idle waiting.
/// @details Only status11 is idle; no effectful operation is replayed.
fn receive(owner: &Capability) -> Result<Vec<u8>, u32> {
    let mut buffer = vec![0u8; Array::MAX_WIRE_BYTES];
    for _ in 0..1000 {
        match owner.poll(&mut buffer) {
            Ok(count) => {
                buffer.truncate(count);
                return Ok(buffer);
            }
            Err(error) if error.code == codes::AGAIN => {
                std::thread::sleep(Duration::from_millis(20))
            }
            Err(error) => return Err(error.code),
        }
    }
    Err(110)
}

/// @brief Observe the Host's actual stale-generation refusal using a previously borrowed ID.
/// @param handle Exact former same-instance/backend handle; it is never changed or reopened here.
/// @return Original event_poll status;9 is required after successful retirement.
/// @details All buffer/length slots remain live through the one synchronous
/// raw memory-zero import. usize-to-u64 zero-extends actual wasm32 offsets.
fn stale_status(handle: u64) -> u32 {
    let mut buffer = [0u8; 9872];
    let mut length = u64::MAX;
    unsafe {
        raw::ros2::event_poll(
            handle,
            0,
            buffer.as_mut_ptr() as usize as u64,
            buffer.len() as u64,
            &mut length as *mut u64 as usize as u64,
        )
    }
}

/// @brief Execute the named flow and explicitly preserve every owned cleanup result.
/// @return Complete statuses and full canonical body; no borrowed/native pointers escape.
fn run() -> Report {
    let mut result = Report::default();
    let args: Vec<String> = std::env::args().collect();
    if args.len() != 2 {
        result.primary = codes::INVALID;
        return result;
    }
    let mut owner = match Capability::open(Backend::Ros2, &args[1]) {
        Ok(value) => value,
        Err(error) => {
            result.primary = error.code;
            return result;
        }
    };
    let primary = (|| -> Result<(), u32> {
        owner.subscribe().map_err(|error| error.code)?;
        let wire = receive(&owner)?;
        let value = Array::decode(&wire).map_err(|_| codes::INVALID)?;
        let again = value.encode().map_err(|_| codes::INVALID)?;
        if wire != again {
            return Err(codes::INVALID);
        }
        for byte in &again {
            result.wire_hex.push_str(&format!("{:02x}", byte));
        }
        let old_handle = owner.raw_handle().map_err(|error| error.code)?;
        result.retirement = owner.revoke().err().map_or(0, |error| error.code);
        if result.retirement != 0 {
            return Err(result.retirement);
        }
        result.stale = stale_status(old_handle);
        match Capability::open(Backend::Ros2, &args[1]) {
            Ok(mut unexpected) => {
                result.cleanup = unexpected.close().err().map_or(0, |error| error.code);
            }
            Err(error) => {
                result.reopen = error.code;
            }
        }
        if result.stale != codes::BAD_HANDLE || result.reopen != 125 {
            return Err(codes::INVALID);
        }
        Ok(())
    })();
    result.primary = primary.err().unwrap_or(0);
    if owner.raw_handle().is_ok() {
        let cleanup = owner.close().err().map_or(0, |error| error.code);
        if result.cleanup == 0 {
            result.cleanup = cleanup;
        }
    }
    result
}

/// @brief Output bounded numeric/ASCII evidence and return the original first error.
fn main() {
    let result = run();
    let output = writeln!(std::io::stdout().lock(),
        "{{\"primary\":{},\"cleanup\":{},\"retirement\":{},\"stale\":{},\"reopen\":{},\"published\":{},\"wire_hex\":\"{}\"}}",
        result.primary, result.cleanup, result.retirement, result.stale, result.reopen,
        result.published, result.wire_hex);
    let code = if output.is_err() {
        5
    } else if result.primary != 0 {
        result.primary
    } else {
        result.cleanup
    };
    std::process::exit(code as i32);
}
