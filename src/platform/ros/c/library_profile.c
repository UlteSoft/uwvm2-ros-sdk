/** Optional C library implementation. Compile with the consumer's C profile. */
#include <platform/ros/c/roswasm/library_profile.h>

/**
 * @brief Reference the profile-qualified library symbol.
 *
 * @details Reference the profile-qualified library symbol. A mismatched C mode, pointer ABI,
 * exception or thread dimension fails to link rather than silently selecting another library.
 *
 * @par C storage and execution contract
 * @return Canonical selected C profile number; the external symbol also encodes pointer/EH/thread
 * dimensions.
 * @par Permissions
 * None; the profile probe allocates nothing and performs no imports.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_library_profile()
 * @see @ref roswasmc_c_contracts
 */
unsigned ROSWASMC_PROFILE_NAME(void)
{
    return ROSWASM_C_PROFILE;
}
