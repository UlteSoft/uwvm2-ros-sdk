/**
 * @file move_joint_preflight.hpp
 * @brief Complete doosan values and adapters for the selected original interface catalog.
 * @details Retain original field order, scalar widths, array capacities, string bounds, constants and declared
 * defaults. Pure value access and canonical codecs create no native ROS allocation or resource grant. Transport
 * roles require the separately admitted SDK owner.
 * @see document/platform/doosan/en_US/README.md
 */

/* SPDX-License-Identifier: Apache-2.0
 * Full original MoveJoint/MoveStop values. C++98 syntax; no I/O or authority.
 * Select the matching original ROS2 family and profile 11 or 12 explicitly.
 */
#ifndef UWVM_DOOSAN_MOVE_JOINT_PREFLIGHT_HPP
#define UWVM_DOOSAN_MOVE_JOINT_PREFLIGHT_HPP
#include <doosan/c/move_joint_preflight.h>

namespace uwvm
{
    namespace doosan
    {
        /** @brief Immutable installation/timing assertions.
         * @details Owns six bound/current arrays; units and version rules are defined
         * by uwvm_doosan_move_joint_contract. It grants no controller authority.
         * @see uwvm_doosan_move_joint_contract
         */
        typedef ::uwvm_doosan_move_joint_contract MoveJointContract;
        /** @brief Complete selected original MoveJoint request type.
         * @details An owning canonical value for exact profile11 or12, with original
         * fields, enums and units preserved; not a native DRFL object or permission.
         * @see validate_move_joint
         */
        typedef ::roswasmc_bounded_2_dsr_msgs2_srv_MoveJoint_Request MoveJointRequest;
        /** @brief Complete selected original MoveStop request type.
         * @details Stores the source stop_mode field. Owning this value neither sends
         * a stop request nor establishes physical stopping or cancellation.
         * @see make_move_stop
         */
        typedef ::roswasmc_bounded_2_dsr_msgs2_srv_MoveStop_Request MoveStopRequest;

        /**
         * @brief Check one full MoveJoint value with the C preflight contract.
         * @details C++98 facade syntax; the selected generated dependency/compiler
         * must independently support that mode. Borrows immutable inputs until return,
         * performs no allocation/import/grant, and can share immutable values across
         * threads. It neither authenticates installation facts nor submits motion.
         * @param[in] request Whole exact-profile request; preserved on every outcome.
         * @param[in] contract Six-axis caller assertions and nanosecond timing bounds.
         * @return Unmodified C statuses0/22/34/95/110 with the C function's meanings.
         * @see uwvm_doosan_validate_move_joint
         */
        inline uint32_t validate_move_joint(MoveJointRequest const& request, MoveJointContract const& contract)
        {
            return ::uwvm_doosan_validate_move_joint(&request, &contract);
        }

        /**
         * @brief Build one MoveStop request without any controller effect.
         * @details Requires no grant/import/allocation. Caller retains output ownership;
         * it is unchanged on failure. Concurrent calls require distinct outputs.
         * This C++98 facade does not qualify a whole older-standard C++ SDK.
         * @param[in] mode Original stop_mode0..3 with no coercion or inferred guarantee.
         * @param[out] output Complete exact-profile request assigned only on success.
         * @return 0 for local construction; 22 for an invalid mode.
         * @see uwvm_doosan_make_move_stop
         */
        inline uint32_t make_move_stop(int32_t mode, MoveStopRequest& output)
        {
            return ::uwvm_doosan_make_move_stop(mode, &output);
        }
    }  // namespace doosan
}  // namespace uwvm
#endif
