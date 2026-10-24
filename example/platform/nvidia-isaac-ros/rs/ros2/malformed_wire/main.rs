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
    let mut value = Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray::default();
    value.header.stamp.sec = -42;
    value.header.stamp.nanosec = seed % 1_000_000_000;
    value.header.frame_id = "camera-µ".into();
    value.detections = vec![Default::default(); 2];
    for (i, detection) in value.detections.iter_mut().enumerate() {
        detection.family = ["tag36h11", "tag25h9"][i].into();
        detection.id = (seed as i32).wrapping_sub(29).wrapping_add(i as i32 * 17);
        detection.center.x = seed as f64 / 8.0 + i as f64;
        detection.center.y = -((i + 1) as f64) / 4.0;
        detection.center.z = (i + 3) as f64 / 2.0;
        for (j, corner) in detection.corners.iter_mut().enumerate() {
            corner.x = seed as f64 / 16.0 + j as f64;
            corner.y = -((i + j + 1) as f64) / 8.0;
            corner.z = (i + j + 2) as f64 / 4.0;
        }
        detection.pose.header.stamp.sec = -45 + i as i32;
        detection.pose.header.stamp.nanosec = seed.wrapping_add(1000) % 1_000_000_000;
        detection.pose.header.frame_id = format!("pose-{}", i);
        detection.pose.pose.pose.position.x = (i + 5) as f64 / 8.0;
        detection.pose.pose.pose.position.y = -(seed as f64) / 16.0;
        detection.pose.pose.pose.position.z = (i + 7) as f64 / 4.0;
        detection.pose.pose.pose.orientation.x = (i + 1) as f64 / 16.0;
        detection.pose.pose.pose.orientation.y = -((i + 2) as f64) / 16.0;
        detection.pose.pose.pose.orientation.z = (i + 3) as f64 / 16.0;
        detection.pose.pose.pose.orientation.w = 3.0 / 4.0;
        for (j, covariance) in detection.pose.pose.covariance.iter_mut().enumerate() {
            *covariance = (i + 1) as f64 * 100.0 + seed as f64 / 16.0 + j as f64 / 32.0;
        }
    }
    value
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
    let value = Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray::decode(&wire)
        .map_err(|_| 22u8)?;
    if value.encode().map_err(|_| 22u8)? != wire {
        return Err(22);
    }
    if "malformed_wire" == "malformed_wire" {
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
