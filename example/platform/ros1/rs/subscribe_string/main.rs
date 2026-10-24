//! @file main.rs
//! @brief Execute the complete subscribe_string with genuine Rust and owned response values.
fn main() {
    std::process::exit(ros_native_command::run(roswasm::Backend::Ros1, 2) as i32);
}
