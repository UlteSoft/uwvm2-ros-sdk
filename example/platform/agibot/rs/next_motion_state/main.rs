// @file main.rs
// @brief Execute the genuine agibot main application over its explicit SDK imports.
// @details The application owns its values and closes explicitly acquired capabilities. An installed
// compiler/engine and exact native deployment remain separate requirements.
// SPDX-License-Identifier: Apache-2.0
//! Run an original AimDK observation as a WASI command inside uwvm2-ros.
//! The named SDK crate is selected by Xmake's global include configuration.
//! Complete decoded records own their strings and sequences; output retains
//! original field names and exact integers. No ROS alias is chosen implicitly.

fn main() {
    let arguments: Vec<String> = std::env::args().collect();
    if arguments.len() != 2 {
        eprintln!("Expected exactly one granted Agibot alias");
        std::process::exit(22);
    }
    let response = match agibot::next_motion_state(&arguments[1], std::time::Duration::from_secs(3))
    {
        Ok(value) => value,
        Err(error) => {
            eprintln!("{error}");
            std::process::exit(1);
        }
    };
    println!("{}", agibot::json::state_json(&response));
}
