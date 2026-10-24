/** @file
 * @brief Explicit ROS1 optional service-client import selection.
 * This header imports no ROS2 symbol and opens no capability. Existing guests
 * which use only ros1.h do not gain a dependency on the optional namespace.
 */
#ifndef ROSWASMC_SERVICE_CLIENT_ROS1_H
#define ROSWASMC_SERVICE_CLIENT_ROS1_H
#include <platform/ros/c/roswasm/service_client.h>

/**
 * @brief Obtain the immutable ROS1 extension table; no permission is implied.
 *
 * @details Return the explicit immutable dispatch selection. Unsupported entries remain absent,
 * and obtaining this table performs no resource operation.
 *
 * @par C storage and execution contract
 * @return Borrowed immutable process-lifetime dispatch table; never free or mutate it. Missing
 * entries remain unsupported.
 * @par Permissions
 * None; dispatch selection is not a native connection or permission.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_context, roswasmc_open()
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE roswasmc_service_client_backend const* roswasmc_ros1_service_client_backend(void)
{
    static roswasmc_service_client_backend const api = {1,
                                                        uwvm_ros1_client_v1_abi_version,
                                                        uwvm_ros1_client_v1_features,
                                                        uwvm_ros1_client_v1_service_available};
    return &api;
}
#endif
