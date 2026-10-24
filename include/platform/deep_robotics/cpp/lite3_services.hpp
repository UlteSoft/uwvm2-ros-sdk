/** @brief SPDX-License-Identifier: Apache-2.0
 * Named pure Lite3 builders and one-shot borrowed service owner use.
 * Native result and transport error remain separate; no automatic retry.
 */
#pragma once
#include <deep_robotics/c/lite3_services.h>

namespace roswasm_deep_robotics
{
    struct Lite3Services
    {
        static uint32_t SdkMode(uwvm_deep_lite3_request& request, int32_t rate) noexcept
        {
            return uwvm_deep_lite3_prepare_sdk_mode(&request, rate);
        }

        static uint32_t EmergencyStop(uwvm_deep_lite3_request& request) noexcept
        {
            return uwvm_deep_lite3_prepare_emergency_stop(&request);
        }

        static uint32_t call_once(roswasmc_capability const& capability,
                                  uwvm_deep_lite3_service service,
                                  uwvm_deep_lite3_request const& request,
                                  uwvm_deep_lite3_response& response) noexcept
        {
            return uwvm_deep_lite3_call_once(&capability, service, &request, &response);
        }
    };
}  // namespace roswasm_deep_robotics
