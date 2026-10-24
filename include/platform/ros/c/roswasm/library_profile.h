/** @file
 * @brief Optional separately compiled C library profile and link-time contract.
 * Include and call roswasmc_library_profile() from each library consumer TU.
 * A differently selected profile references a different external symbol and
 * fails to link. Header-only consumers need no library or link guard.
 */
#ifndef ROSWASMC_LIBRARY_PROFILE_H
#define ROSWASMC_LIBRARY_PROFILE_H
#include <platform/ros/c/roswasm/roswasmc.h>
#if ROSWASM_C_ADDRESS_BITS == 64
# define ROSWASMC_LIBRARY_ADDRESS 64
#elif ROSWASM_C_ADDRESS_BITS == 32
# define ROSWASMC_LIBRARY_ADDRESS 32
#else
# define ROSWASMC_LIBRARY_ADDRESS 0
#endif
#define ROSWASMC_PROFILE_JOIN_IMPL(s, p, e, t) roswasmc_library_c_profile_##s##_p##p##_eh##e##_t##t
#define ROSWASMC_PROFILE_JOIN(s, p, e, t) ROSWASMC_PROFILE_JOIN_IMPL(s, p, e, t)
#define ROSWASMC_PROFILE_NAME ROSWASMC_PROFILE_JOIN(ROSWASM_C_PROFILE, ROSWASMC_LIBRARY_ADDRESS, ROSWASM_C_EXCEPTIONS, ROSWASM_C_THREADS)
#ifdef __cplusplus
extern "C"
{
#endif
    /**
     * @brief Return the selected C profile; performs no imports or allocation.
     *
     * @details Reference the profile-qualified library symbol. A mismatched C mode, pointer ABI,
     * exception or thread dimension fails to link rather than silently selecting another library.
     *
     * @par C storage and execution contract
     * @return Canonical selected C profile number; the external symbol also encodes
     * pointer/EH/thread dimensions.
     * @par Permissions
     * None; the profile probe allocates nothing and performs no imports.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_library_profile()
     * @see @ref roswasmc_c_contracts
     */
    unsigned ROSWASMC_PROFILE_NAME(void);
#ifdef __cplusplus
}
#endif
/**
 * @brief Require the linked library to use this translation unit's C profile.
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
ROSWASM_C_INLINE unsigned roswasmc_library_profile(void)
{
    return ROSWASMC_PROFILE_NAME();
}
#endif
