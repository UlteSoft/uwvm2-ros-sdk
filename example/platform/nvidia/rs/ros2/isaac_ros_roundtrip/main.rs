//! @file main.rs
//! @brief Exercise complete NVIDIA records in the genuine Rust source frontend.
//! @details Typed values, checked Result paths and owned byte containers execute
//! in Wasm. No encoded application result is produced during source preparation.
use nvidia_isaac_ros::Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray;
use roswasm::typed::Canonical;
use std::io::Write;
/// @brief Construct all active fields from a real caller-selected seed.
/// @param seed Dimensionless uint32 selecting finite codec sample values.
/// @return Complete owned record; no native resource or pointer is retained.
fn sample(seed: u32) -> Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray {
    let mut v = Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray::default();
    v.header.stamp.sec = -3;
    v.header.stamp.nanosec = seed % 1000000000;
    v.header.frame_id = "cam".into();
    v.detections = vec![Default::default()];
    let d = &mut v.detections[0];
    d.family = "tag36h11".into();
    d.id = (seed & 0x7fffffff) as i32;
    d.center.x = seed as f64 / 8.0;
    d.pose.pose.pose.orientation.w = 1.0;
    for (i, c) in d.corners.iter_mut().enumerate() {
        c.x = seed as f64 + i as f64;
        c.y = i as f64 * 2.5;
    }
    for (i, c) in d.pose.pose.covariance.iter_mut().enumerate() {
        *c = (seed % 31) as f64 + i as f64 / 64.0;
    }
    v
}
/// @brief Parse bounded exact hexadecimal without accepting a partial value.
/// @param text Caller-owned ASCII hex with no prefix, whitespace or partial byte.
/// @return Complete owned bytes or the explicit invalid-input status 22.
fn hex(text: &str) -> Result<Vec<u8>, u8> {
    if text.len() > Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray::MAX_WIRE_BYTES * 2
        || text.len() % 2 != 0
    {
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
    let wire = if "roundtrip" == "decode_argument" {
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
    let value = Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray::decode(&wire)
        .map_err(|_| 22u8)?;
    if value.encode().map_err(|_| 22u8)? != wire {
        return Err(22);
    }
    if "roundtrip" == "malformed_wire" {
        if wire.is_empty()
            || Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray::decode(
                &wire[..wire.len() - 1],
            )
            .is_ok()
        {
            return Err(22);
        }
        let mut extra = wire.clone();
        extra.push(0);
        if Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray::decode(&extra).is_ok() {
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
