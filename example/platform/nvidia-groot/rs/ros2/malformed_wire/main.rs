//! @file main.rs
//! @brief Exercise complete NVIDIA records in the genuine Rust source frontend.
//! @details Typed values, checked Result paths and owned byte containers execute
//! in Wasm. No encoded application result is produced during source preparation.
use nvidia_groot::Ros2Uwvm_groot_bridgeMsgFloatTensor;
use roswasm::typed::Canonical;
use std::io::Write;
/// @brief Construct all active fields from a real caller-selected seed.
/// @param seed Dimensionless uint32 selecting finite codec sample values.
/// @return Complete owned record; no native resource or pointer is retained.
fn sample(seed: u32) -> Ros2Uwvm_groot_bridgeMsgFloatTensor {
    let mut v = Ros2Uwvm_groot_bridgeMsgFloatTensor::default();
    v.key = "state".into();
    v.shape = [1, 1, 3];
    v.values = (0..3)
        .map(|i| (seed % 97) as f32 / 8.0 + i as f32)
        .collect();
    v
}
/// @brief Parse bounded exact hexadecimal without accepting a partial value.
/// @param text Caller-owned ASCII hex with no prefix, whitespace or partial byte.
/// @return Complete owned bytes or the explicit invalid-input status 22.
fn hex(text: &str) -> Result<Vec<u8>, u8> {
    if text.len() > Ros2Uwvm_groot_bridgeMsgFloatTensor::MAX_WIRE_BYTES * 2 || text.len() % 2 != 0 {
        return Err(22);
    }
    let mut result = Vec::with_capacity(text.len() / 2);
    for chunk in text.as_bytes().chunks(2) {
        let word = std::str::from_utf8(chunk).map_err(|_| 22u8)?;
        result.push(u8::from_str_radix(word, 16).map_err(|_| 22u8)?);
    }
    Ok(result)
}
/// @brief Run checked source-language codecs and emit the entire canonical body.
fn run() -> Result<(), u8> {
    let args: Vec<String> = std::env::args().collect();
    if args.len() > 2 {
        return Err(22);
    }
    let wire = if "malformed_wire" == "decode_argument" {
        if args.len() != 2 {
            return Err(22);
        }
        hex(&args[1])?
    } else {
        let seed = if args.len() == 2 {
            args[1].parse::<u32>().map_err(|_| 22u8)?
        } else {
            17
        };
        sample(seed).encode().map_err(|_| 22u8)?
    };
    let value = Ros2Uwvm_groot_bridgeMsgFloatTensor::decode(&wire).map_err(|_| 22u8)?;
    if value.encode().map_err(|_| 22u8)? != wire {
        return Err(22);
    }
    if "malformed_wire" == "malformed_wire" {
        if wire.is_empty()
            || Ros2Uwvm_groot_bridgeMsgFloatTensor::decode(&wire[..wire.len() - 1]).is_ok()
        {
            return Err(22);
        }
        let mut extra = wire.clone();
        extra.push(0);
        if Ros2Uwvm_groot_bridgeMsgFloatTensor::decode(&extra).is_ok() {
            return Err(22);
        }
    }
    let mut output = std::io::stdout().lock();
    write!(output, "wire_bytes={} wire_hex=", wire.len()).map_err(|_| 5u8)?;
    for octet in wire {
        write!(output, "{:02x}", octet).map_err(|_| 5u8)?;
    }
    writeln!(output).map_err(|_| 5u8)?;
    output.flush().map_err(|_| 5u8)?;
    Ok(())
}
/// @brief Preserve the real Rust operation result as the command exit status.
fn main() {
    if let Err(code) = run() {
        std::process::exit(i32::from(code));
    }
}
