//! @file main.rs
//! @brief Execute the complete call_trigger with genuine Rust and owned response values.
fn main() {
    std::process::exit(ros_native_command::run(roswasm::Backend::Ros2, 3) as i32);
}
