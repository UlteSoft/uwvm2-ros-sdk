//! @file main.rs
//! @brief Retained doosan native ROS application flow over the public typed SDK.
//! @details Select the exact original source profile and manually configured deployment before use. Observe the
//! operation and cleanup statuses separately. Source retention does not establish native communication, current
//! robot state, or controller compatibility.
//! @see document/platform/doosan/en_US/README.md

//! Finite real WASI entry: state|command ALIAS; command data uses basic stdin.
use std::io::Read;
fn main() {
    let a: Vec<String> = std::env::args().collect();
    if a.len() != 3 || a[2].is_empty() || a[2].len() > 255 {
        std::process::exit(22);
    }
    let (p, c) = match a[1].as_str() {
        "state" => {
            let r = uwvm_doosan_example::read_once(&a[2]);
            (r.primary, r.cleanup)
        }
        "command" => {
            let r = uwvm_doosan_example::command_once(&a[2], || {
                let mut p = [0u8; 4];
                let mut s = std::io::stdin().lock();
                s.read_exact(&mut p).map_err(|_| roswasm::Error::new(22))?;
                let n = u32::from_le_bytes(p) as usize;
                if n > 32768 {
                    return Err(roswasm::Error::new(90));
                }
                let mut b = vec![0u8; n];
                s.read_exact(&mut b).map_err(|_| roswasm::Error::new(22))?;
                Ok(b)
            });
            (r.primary, r.cleanup)
        }
        _ => std::process::exit(22),
    };
    let p = if p == 0 { c } else { p };
    std::process::exit(if p < 126 { p as i32 } else { 125 });
}
