/**
 * @file trajectory_preflight.hpp
 * @brief Complete kuka values and adapters for the selected original interface catalog.
 * @details Retain original field order, scalar widths, array capacities, string bounds, constants and declared
 * defaults. Pure value access and canonical codecs create no native ROS allocation or resource grant. Transport
 * roles require the separately admitted SDK owner.
 * @see document/platform/kuka/en_US/README.md
 */

/* SPDX-License-Identifier: Apache-2.0
 * KUKA complete-value preflight facade; no I/O or authority.
 * Syntax uses C++98. Select the same complete ROS2 C family explicitly.
 */
#ifndef UWVM_KUKA_TRAJECTORY_PREFLIGHT_HPP
#define UWVM_KUKA_TRAJECTORY_PREFLIGHT_HPP
#include <kuka/c/trajectory_preflight.h>

namespace uwvm
{
    namespace kuka
    {
        /** @brief Borrowed installation, joint-order and timing assertions.
         * @details Units, storage lifetime and source-route constraints are those
         * of the complete C contract. This value allocates/grants nothing.
         * @see uwvm_kuka_trajectory_contract
         */
        typedef ::uwvm_kuka_trajectory_contract TrajectoryContract;
        /** @brief Caller-owned first-failure diagnostics.
         * @details Zero-based indices use SIZE_MAX when no individual entry
         * caused refusal. Storage must be disjoint from validator inputs.
         * @see uwvm_kuka_preflight_report
         */
        typedef ::uwvm_kuka_preflight_report PreflightReport;
        /** @brief Whole original selected FJT Goal value.
         * @details All original components remain present. This canonical value
         * neither authenticates a native type nor authorizes an Action.
         * @see validate_trajectory
         */
        typedef ::roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal Goal;

        /**
         * @brief Check one whole trajectory using the exact C contract.
         * @details Pure call: no imports, allocation, clock, alias or authority
         * changes. Inputs are borrowed until return and remain unchanged.
         * Concurrent calls need immutable inputs and independent reports.
         * Facade syntax is C++98; dependency/compiler qualification remains
         * separate. A local pass is not native admission or physical safety.
         * @param[in] goal Complete selected original Goal, in source units.
         * @param[in] contract Caller route/order/limits/freshness assertions.
         * @param[out] report Live disjoint first-refusal diagnostics.
         * @return Exact C statuses 0/22/34/90/95/110 without translation.
         * @see uwvm_kuka_validate_trajectory
         */
        inline uint32_t validate_trajectory(Goal const& goal, TrajectoryContract const& contract, PreflightReport& report)
        {
            return ::uwvm_kuka_validate_trajectory(&goal, &contract, &report);
        }
    }  // namespace kuka
}  // namespace uwvm
#endif
