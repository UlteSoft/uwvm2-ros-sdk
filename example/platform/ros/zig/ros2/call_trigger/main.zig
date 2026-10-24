//! @file main.zig
//! @brief Execute the complete ros2 call_trigger contract in genuine Zig.
//! @details The exact sample alias is granted by trusted native deployment.
//! All canonical fields, operation statuses, and once-only cleanup are retained.
const native = @import("native_ros");
/// @brief Execute the finite command and preserve the first original status.
/// @return Primary, independent close, or ordinary stdout error.
export fn nl_entry() u32 {
    const facts = native.run(3, "sample");
    return native.report(&facts);
}
