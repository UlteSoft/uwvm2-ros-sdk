//! @file lib.rs
//! @brief Genuine Rust native ROS1/ROS2 commands with complete owned records.
//! @details The original SDK supplies exact imports, unique owners and complete
//! String/Trigger codecs. This layer owns all response text, preserves original
//! unsigned errors, and closes the acquired owner once on ordinary result paths.
use roswasm::{codec, Backend, Capability, Error, Operation};
use std::io::{self, Write};
use std::thread;
use std::time::Duration;

/// @brief Own complete original records and independent operation/close facts.
#[derive(Default)]
struct Outcome {
    /// @brief First original operation, canonical-codec or application error.
    primary: u32,
    /// @brief Original independent acquired-owner close status.
    cleanup: u32,
    /// @brief True only after an actually acquired owner was explicitly closed.
    cleanup_present: bool,
    /// @brief Original full unsigned transport status without narrowing.
    rpc: u32,
    /// @brief True only after an admitted publication, poll or service call.
    rpc_present: bool,
    /// @brief Number of explicitly admitted original publication samples.
    publications: u32,
    /// @brief Complete initialized original response extent, valid when present.
    length: Option<usize>,
    /// @brief Full original capacity requirement, only when the SDK observed it.
    required: Option<u64>,
    /// @brief True only after every original response field validated.
    response_present: bool,
    /// @brief Complete independently owned original String.data value.
    value: String,
    /// @brief Original Trigger application Bool, independently from transport.
    success: bool,
    /// @brief Complete independently owned original Trigger diagnostic text.
    message: String,
    /// @brief Complete original canonical request, when publication sends data.
    request_wire: Vec<u8>,
    /// @brief Complete original canonical response after whole-record validation.
    response_wire: Vec<u8>,
}

/// @brief Read one exact selected original ABI version without acquiring authority.
/// @param backend Explicit original ROS import family.
/// @return Original version value, independently from operation error status.
fn version(backend: Backend) -> u32 {
    match backend {
        #[cfg(feature = "ros1")]
        Backend::Ros1 => unsafe { roswasm::raw::ros1::abi_version() },
        #[cfg(feature = "ros2")]
        Backend::Ros2 => unsafe { roswasm::raw::ros2::abi_version() },
    }
}

/// @brief Record one original transport result and observed capacity requirement.
/// @param outcome Exclusive independently owned result facts.
/// @param result Original checked SDK operation result with an initialized extent.
/// @return Successful extent or exact original SDK error, without replay.
fn transport(outcome: &mut Outcome, result: Result<usize, Error>) -> Result<usize, Error> {
    outcome.rpc_present = true;
    match result {
        Ok(size) => {
            outcome.rpc = 0;
            Ok(size)
        }
        Err(error) => {
            outcome.rpc = error.code;
            outcome.required = error.required;
            Err(error)
        }
    }
}

/// @brief Perform one complete command under an already acquired exact owner.
/// @param owner Unique selected backend capability; no operation grants another.
/// @param operation 1=publish String, 2=subscribe String, 3=call Trigger.
/// @param outcome Exclusive complete owned result fields.
/// @return Success or original transport/codec/application error.
/// @details Only idle 11 permits another poll, at most 500 attempts with 20 ms
/// pauses. A service call is admitted once and is never replayed.
fn perform(owner: &Capability, operation: u32, outcome: &mut Outcome) -> Result<(), Error> {
    let mut bytes = [0u8; 256];
    if operation == 1 {
        let size = codec::encode_string("hello native ROS", &mut bytes)?;
        outcome.value = "hello native ROS".to_owned();
        outcome.request_wire = bytes[..size].to_vec();
        // Two explicit samples allow native middleware discovery. A failure
        // immediately returns; it never triggers another publication attempt.
        for sample in 0..2 {
            transport(outcome, owner.publish(&bytes[..size]).map(|()| 0))?;
            outcome.publications += 1;
            if sample == 0 {
                thread::sleep(Duration::from_secs(1));
            }
        }
        thread::sleep(Duration::from_millis(200));
        return Ok(());
    }
    if operation == 2 {
        owner.subscribe()?;
        let mut size = 0;
        for attempt in 0..500 {
            match transport(outcome, owner.poll(&mut bytes)) {
                Err(error) if error.code == 11 && attempt + 1 < 500 => {
                    thread::sleep(Duration::from_millis(20));
                }
                result => {
                    size = result?;
                    break;
                }
            }
        }
        outcome.length = Some(size);
        outcome.value = codec::decode_string(&bytes[..size])?.to_owned();
        outcome.response_present = true;
        outcome.response_wire = bytes[..size].to_vec();
        return Ok(());
    }
    let size = transport(
        outcome,
        owner.request(Operation::ServiceCall, &[], &mut bytes),
    )?;
    outcome.length = Some(size);
    let response = codec::decode_service_response(&bytes[..size])?;
    outcome.success = response.success;
    outcome.message = response.message.to_owned();
    outcome.response_present = true;
    outcome.response_wire = bytes[..size].to_vec();
    if response.success {
        Ok(())
    } else {
        Err(Error::new(5))
    }
}

/// @brief Observe complete original values with one explicit independent close.
/// @param backend Exact selected original ROS import family.
/// @param operation Exact complete command selector.
/// @return Complete owned original values and all independent status facts.
/// @details Rust Drop is a final best-effort guard. Explicit checked close
/// retires the unique owner before notification, including after ordinary errors.
fn observe(backend: Backend, operation: u32) -> Outcome {
    let mut outcome = Outcome::default();
    if !(1..=3).contains(&operation) {
        outcome.primary = 22;
        return outcome;
    }
    if version(backend) != 1 {
        outcome.primary = 95;
        return outcome;
    }
    let mut owner = match Capability::open(backend, "sample") {
        Ok(owner) => owner,
        Err(error) => {
            outcome.primary = error.code;
            return outcome;
        }
    };
    if let Err(error) = perform(&owner, operation, &mut outcome) {
        outcome.primary = error.code;
    }
    outcome.cleanup = owner.close().err().map(|error| error.code).unwrap_or(0);
    outcome.cleanup_present = true;
    outcome
}

/// @brief Escape a complete owned Unicode string as exact valid JSON text.
/// @param value Complete original Unicode text; no truncation or normalization.
/// @return Independent quoted JSON text retaining every Unicode scalar.
fn json(value: &str) -> String {
    let mut output = String::from("\"");
    for scalar in value.chars() {
        match scalar {
            '"' => output.push_str("\\\""),
            '\\' => output.push_str("\\\\"),
            '\n' => output.push_str("\\n"),
            '\r' => output.push_str("\\r"),
            '\t' => output.push_str("\\t"),
            scalar if scalar < '\u{20}' => {
                output.push_str(&format!("\\u{:04x}", u32::from(scalar)))
            }
            scalar => output.push(scalar),
        }
    }
    output.push('"');
    output
}

/// @brief Encode complete canonical bytes without field projection.
/// @param bytes Immutable complete original canonical record.
/// @return Independently owned lowercase lossless hexadecimal text.
fn hex(bytes: &[u8]) -> String {
    bytes.iter().map(|byte| format!("{byte:02x}")).collect()
}

/// @brief Emit every original result fact while retaining stdout failure.
/// @param outcome Complete immutable independently owned command result.
/// @return Success or the actual standard-output error; no ROS action occurs.
fn report(outcome: &Outcome) -> io::Result<()> {
    writeln!(
        io::stdout().lock(),
        concat!(
            "{{\"primary\":{},\"cleanup\":{},\"cleanup_present\":{},",
            "\"rpc_status\":{},\"rpc_present\":{},\"publications\":{},\"length\":{},\"length_present\":{},",
            "\"required\":{},\"required_present\":{},\"response_present\":{},",
            "\"value\":{},\"success\":{},\"message\":{},",
            "\"request_wire_hex\":{},\"response_wire_hex\":{}}}"
        ),
        outcome.primary, outcome.cleanup, outcome.cleanup_present,
        outcome.rpc, outcome.rpc_present, outcome.publications, outcome.length.unwrap_or(0), outcome.length.is_some(),
        outcome.required.unwrap_or(0), outcome.required.is_some(), outcome.response_present,
        json(&outcome.value), outcome.success, json(&outcome.message),
        json(&hex(&outcome.request_wire)), json(&hex(&outcome.response_wire)),
    )
}

/// @brief Execute one genuine Rust original ROS command and emit complete facts.
/// @param backend Explicit original import family; selection grants no authority.
/// @param operation 1=publish String, 2=subscribe String, 3=call Trigger.
/// @return Full original primary, independent cleanup or stdout error.
/// @details Only the separate application main clamps the WASI process exit.
pub fn run(backend: Backend, operation: u32) -> u32 {
    let outcome = observe(backend, operation);
    let status = if outcome.primary != 0 {
        outcome.primary
    } else {
        outcome.cleanup
    };
    if report(&outcome).is_err() && status == 0 {
        5
    } else {
        status
    }
}
