//! @file algorithm.zig
//! @brief Compute through a transitive D archive and verify module-local ROS denial.
//! @details This shared module owns its capability slot. Scalar calls cannot
//! borrow another module's ROS authority or linear-memory addresses.
extern fn scalar_bias(u32) u32;
extern fn nl_open([*]const u8, u32, *u64) u32;
extern fn nl_close(u64) u32;

/// @brief Transform a caller-owned scalar; no pointer crosses the module boundary.
/// @param value Unsigned input, multiplied with explicit wrapping arithmetic.
/// @return The D archive's biased result; no ROS resource is opened.
export fn algorithm_mix(value: u32) u32
{
    return scalar_bias(value *% 3);
}

/// @brief Observe denial using this module's memory and an unchanged owner slot.
/// @return Permission-denied (13), or a distinct error if an owner was granted or changed.
export fn algorithm_denied() u32
{
    const alias = "library_pub";
    var owner: u64 = 0xfedcba9876543210;
    const status = nl_open(alias.ptr, alias.len, &owner);
    if (status == 0)
    {
        _ = nl_close(owner);
        return 100;
    }
    return if (status == 13 and owner == 0xfedcba9876543210) 13 else 101;
}
