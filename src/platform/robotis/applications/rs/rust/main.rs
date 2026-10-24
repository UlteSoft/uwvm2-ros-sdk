//! @file main.rs
//! @brief Preserve the original robotis controller application semantics.
//! @details This source uses the public typed SDK and explicit capability aliases.
//! Finite polls preserve primary and cleanup failures independently. Deployment
//! requires a matching source profile and manually supplied runtime permissions.
//! Genuine WASI entry: one nonempty explicit alias, no inherited robot policy.
use uwvm_turtlebot3_example::read_once;
/// @brief Parse the bounded CLI and report primary/cleanup failures.
/// @details Command bytes are read only after capability admission.
/// @return Process status limited to the WASI command range.
fn main() {
    let args: Vec<_> = std::env::args().collect();
    if args.len() != 2 || args[1].is_empty() {
        std::process::exit(22)
    }
    let r = read_once(&args[1]);
    let code = if r.primary != 0 { r.primary } else { r.cleanup };
    std::process::exit(if code < 126 { code as i32 } else { 125 })
}
