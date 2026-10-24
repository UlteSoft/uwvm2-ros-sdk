//! @file main.rs
//! @brief Run one explicit ABB ROS 1 observation with checked cleanup.
//! @details The actual source-language application validates argument arity before acquisition, retains
//! the whole typed canonical value and reports independent operation/cleanup statuses. The operator
//! supplies an existing alias and its matching native type binding. A source-backed compiler or VM is
//! required; no grant, replay or controller admission is implicit.
//! @file main.rs
//! @brief Observe every original abb_rapid_sm_addin_msgs/RuntimeState field in genuine compiled Rust.
use abb_records::Ros1Abb_rapid_sm_addin_msgsRuntimeState;
use roswasm::typed::Canonical;
use roswasm::{Backend, Capability};
use std::fmt::Write as _;
/// @brief Decode the entire sample while retaining one explicit owner and one close.
/// @details Only idle 11 permits another poll; native policy supplies the exact alias.
fn main() {
    let args: Vec<String> = std::env::args().collect();
    if args.len() != 2 {
        std::process::exit(22);
    }
    let mut primary = 0u32;
    let mut cleanup = 0u32;
    let mut present = false;
    let mut wire = Vec::new();
    match Capability::open(Backend::Ros1, &args[1]) {
        Err(error) => primary = error.code,
        Ok(mut owner) => {
            if let Err(error) = owner.subscribe() {
                primary = error.code;
            }
            let mut buffer = vec![0; 8372];
            if primary == 0 {
                for attempt in 0..250 {
                    match owner.poll(&mut buffer) {
                        Ok(size) => {
                            match Ros1Abb_rapid_sm_addin_msgsRuntimeState::decode(&buffer[..size])
                                .and_then(|value| value.encode())
                            {
                                Ok(encoded) => {
                                    wire = encoded;
                                    present = true;
                                }
                                Err(error) => primary = error.code,
                            }
                            break;
                        }
                        Err(error) => {
                            primary = error.code;
                            if error.code != 11 || attempt == 249 {
                                break;
                            }
                        }
                    }
                    std::thread::sleep(std::time::Duration::from_millis(20));
                    primary = 0;
                }
            }
            if let Err(error) = owner.close() {
                cleanup = error.code;
            }
        }
    }
    let mut hex = String::new();
    for byte in wire {
        write!(hex, "{byte:02x}").expect("String output");
    }
    println!(
        "{{\"primary\":{},\"cleanup\":{},\"response_present\":{},\"wire_hex\":\"{}\"}}",
        primary,
        cleanup,
        u8::from(present),
        hex
    );
    std::process::exit((if primary != 0 { primary } else { cleanup }).min(125) as i32);
}
