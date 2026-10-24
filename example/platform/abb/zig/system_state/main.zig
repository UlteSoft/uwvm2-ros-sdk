//! @file main.zig
//! @brief Read the complete ABB system_state reply with the genuine Zig SDK.
//! @details Alias and IO signal are original WASI arguments. This command makes
//! no native connection and needs the exact externally provisioned ROS grant.
const abb = @import("abb");
/// @brief Execute one bounded observation. @return Original full status.
export fn nl_entry() u32 {
    const alias = abb.argument(1);
    const signal = abb.argument(2);
    const out = abb.observe(3, alias, signal, 1000);
    return abb.report(&out);
}
