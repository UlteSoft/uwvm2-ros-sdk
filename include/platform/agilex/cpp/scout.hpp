/**
 * @file scout.hpp
 * @brief Preserve the complete source-pinned platform interface.
 * @details Original declarations, field order, widths and protocol operations
 * are retained. Native deployment and permissions are configured separately.
 * See this platform's source inventory and language manual for exact bounds,
 * ownership and compilation/transport qualification.
 */
/* SPDX-License-Identifier: Apache-2.0
 * Standard-selected names and checked operations over the same complete C representation.
 * No constructor opens ROS, allocates native objects, loads a driver or grants
 * authority. The matching generated header supplies real Codec specializations.
 */
#pragma once
#include <ros/cpp/roswasm/cpp_profile.hpp>
#include <agilex/c/scout.h>
#if !defined(ROSWASM_CPP_FREESTANDING)
# include "bounded_records.hpp"
#endif
#include <string.h>

namespace roswasm_agilex
{
    namespace scout
    {
        typedef uwvm_scout_status Status;
        typedef uwvm_scout_light LightCommand;
        typedef uwvm_scout_remote RemoteState;
        typedef uwvm_scout_odometry Odometry;
        typedef uwvm_scout_motion_limits MotionLimits;

        /** @brief Caller-owned serialized standard-selected Scout complete-value adapter.
         * @details Owns only fixed wire scratch. It opens/closes no capability, starts
         * no callback/thread, and owns no native driver. Callers retain exact selected
         * capabilities and independent grants. Copies have separate scratch and borrow
         * no handle, but all use of a shared capability still requires serialization.
         * @see status odometry remote lights motion stop
         */
        class Client
        {
            uwvm_scout_storage storage_;

        public:
            /** @brief Initialize only complete-value wire scratch, without any ROS call.
             * @details Local zeroing acquires no capability, native object or authority.
             * The standard is selected by ROSWASM_CPP_STANDARD; copies have separate
             * scratch and still require external capability serialization.
             * @see status motion ROSWASM_CPP_STANDARD
             */
            Client() ROSWASM_CPP_NOEXCEPT
            {
                memset(&storage_, 0, sizeof storage_);
            }

            /** @brief Poll once and retain every original selected ScoutStatus field.
             * @details Uses internal exclusive scratch and actual controlled receive;
             * idle11 is not delivery, and transport/complete-codec failures stay explicit.
             * @param[in] source Live exact selected borrowed receive owner/context.
             * @param[out] output Complete status, preserved on failure and disjoint from this object.
             * @return Original uwvm_scout_poll_status status; no exception or automatic close.
             * @thread Serialize this object and every user of source.
             * @see uwvm_scout_poll_status uwvm_scout_validate_observation
             */
            uint32_t status(roswasmc_capability const& source, Status& output) ROSWASM_CPP_NOEXCEPT
            {
                return uwvm_scout_poll_status(&source, &output, &storage_);
            }

            /** @brief Poll one complete original Odometry without frame/unit projection.
             * @details Retains Header, child frame, pose, twist and covariance fields.
             * Uses actual selected receive authority; does not activate/open an owner.
             * @param[in] source Live borrowed exact selected Odometry receive capability.
             * @param[out] output Complete writable Odometry, disjoint from internal scratch.
             * @return Original poll/codec status including idle11; no exception or retry.
             * @thread Serialize this object and source through synchronous return.
             * @see uwvm_scout_poll_odometry Odometry
             */
            uint32_t odometry(roswasmc_capability const& source, Odometry& output) ROSWASM_CPP_NOEXCEPT
            {
                return uwvm_scout_poll_odometry(&source, &output, &storage_);
            }

            /** @brief Poll the complete selected original remote-control status.
             * @details ROS1 and ROS2 retain their distinct original types/fields. Does
             * not reinterpret remote state as permission or native controller readiness.
             * @param[in] source Live borrowed exact selected remote-status receive owner.
             * @param[out] output Complete original value, disjoint from this object.
             * @return Original poll/codec status; no exception, retry or implicit close.
             * @thread Serialize this object and source through synchronous return.
             * @see uwvm_scout_poll_remote RemoteState
             */
            uint32_t remote(roswasmc_capability const& source, RemoteState& output) ROSWASM_CPP_NOEXCEPT
            {
                return uwvm_scout_poll_remote(&source, &output, &storage_);
            }

            /** @brief Publish one complete original light command without replay.
             * @details Encodes every selected field before one ABI publication. Success
             * is transport knowledge, not feedback; no mode change or close is inferred.
             * @param[in] source Live borrowed exact independently granted light publish owner.
             * @param[in] value Complete immutable original command, disjoint from this object.
             * @return Original encode/publish status; no C++ exception or automatic retry.
             * @thread Serialize this object and source through synchronous return.
             * @see uwvm_scout_make_light uwvm_scout_publish_light LightCommand
             */
            uint32_t lights(roswasmc_capability const& source, LightCommand const& value) ROSWASM_CPP_NOEXCEPT
            {
                return uwvm_scout_publish_light(&source, &value, &storage_);
            }

            /** @brief Construct and publish one complete model-bounded Scout Twist.
             * @details Pure axis/value checks precede one publication. This lower-level
             * method does not check status freshness; uwvm_scout_publish_motion provides
             * that independent application guard. Native limits/watchdog remain separate.
             * @param[in] source Live borrowed exact independently granted Twist publish owner.
             * @param[in] limits Explicit model and positive finite SI bounds, unchanged.
             * @param[in] forward Finite metres/second within its selected absolute limit.
             * @param[in] lateral Finite metres/second, exactly zero unless explicitly Omni.
             * @param[in] yaw Finite radians/second within its selected absolute limit.
             * @return First local validation or original publish status; no exception,
             * automatic replay, controller-mode switch or evidence of physical completion.
             * @thread Single admitted Guest caller; serialize source use externally.
             * @see uwvm_scout_make_motion uwvm_scout_publish_motion MotionLimits
             */
            uint32_t motion(roswasmc_capability const& source, MotionLimits const& limits, double forward, double lateral, double yaw) ROSWASM_CPP_NOEXCEPT
            {
                if(!uwvm_scout_matches_backend(&source))
                    return 22;
                roswasmc_twist value = {0};
                uint32_t code = uwvm_scout_make_motion(&limits, forward, lateral, yaw, &value);
                return code ? code : roswasmc_publish_twist(&source, &value);
            }

            /** @brief Publish one ordinary complete zero Twist through a separate grant.
             * @details Does not implement a physical E-Stop, feedback confirmation,
             * rollback or implicit resource cleanup. Never retries an uncertain effect.
             * @param[in] source Live borrowed independently granted exact Twist publish owner.
             * @return Original uwvm_scout_stop status; no C++ exception or automatic close.
             * @thread Single admitted Guest caller; serialize source use externally.
             * @see uwvm_scout_stop motion roswasmc_close
             */
            uint32_t stop(roswasmc_capability const& source) ROSWASM_CPP_NOEXCEPT
            {
                return uwvm_scout_stop(&source);
            }
        };
    }  // namespace scout
}  // namespace roswasm_agilex
