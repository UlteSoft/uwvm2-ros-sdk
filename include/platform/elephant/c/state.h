/**
 * @file state.h
 * @brief Retain original elephant value/workflow support under explicit caller ownership.
 * @details Use the exact source-selected complete record APIs and their finite bounds. Keep native
 * units, model selection and application result meanings unchanged. The caller supplies existing
 * capabilities and serializes mutable state; local construction, formatting and cleanup confer no grant,
 * automatic replay or physical command-completion guarantee.
 * @see The platform's localized language guide and complete API-CATALOG.md.
 */
/* SPDX-License-Identifier: Apache-2.0
 * Complete original model-specific angular observations over controlled imports.
 * Select exactly one source-locked distribution/model combination. The complete
 * source domain retains all original message/service fields for every package.
 */
#ifndef UWVM_ELEPHANT_STATE_H
#define UWVM_ELEPHANT_STATE_H
#include "bounded_records.h"
#include <float.h>
#include <math.h>
#include <ros/c/roswasm/codec.h>
#if !defined(UWVM_ELEPHANT_SELECTION) || UWVM_ELEPHANT_SELECTION < 1 || UWVM_ELEPHANT_SELECTION > 30
# error "Select exactly one original Elephant model and matching complete source domain"
#endif
#if UWVM_ELEPHANT_SELECTION == 1
# define UWVM_ELEPHANT_ROS_VERSION 1
# include <ros1/c/roswasm/ros1.h>
# define UWVM_ELEPHANT_BACKEND roswasmc_ros1_backend
typedef roswasmc_bounded_1_mycobot_communication_MycobotAngles uwvm_elephant_state;
# define UWVM_ELEPHANT_STATE_DECODE roswasmc_bounded_1_mycobot_communication_MycobotAngles_decode
# define UWVM_ELEPHANT_STATE_ENCODE roswasmc_bounded_1_mycobot_communication_MycobotAngles_encode
# define UWVM_ELEPHANT_STATE_CAPACITY ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTANGLES_MAX_WIRE_BYTES
# define UWVM_ELEPHANT_COMPONENTS 6

/**
 * @brief Read one original model component in its native declaration order.
 * @details This pure scalar view performs no frame or unit conversion. The selected compile-time model
 * fixes the exact number of components; the value pointer must be nonnull.
 * @return The selected component converted to double, or NaN for an out-of-range index.
 * @param value Complete selected original value; retain its storage and original units through return.
 * @param index Zero-based original declaration-order component index.
 * @par Ownership
 * Borrowed owners remain caller-owned. No helper implicitly opens, closes, revokes or grants a
 * capability.
 */
static inline double uwvm_elephant_component(uwvm_elephant_state const* value, size_t index)
{
    switch(index)
    {
        case 0: return (double)value->joint_1;
        case 1: return (double)value->joint_2;
        case 2: return (double)value->joint_3;
        case 3: return (double)value->joint_4;
        case 4: return (double)value->joint_5;
        case 5: return (double)value->joint_6;
        default: return NAN;
    }
}

/**
 * @brief Assign one representable scalar into a private candidate observation.
 * @details The enclosing constructor validates finite values and complete physical bounds before
 * committing its candidate. This internal helper changes only the selected component and supplies no
 * transport.
 * @return Zero after assignment, otherwise 22 for an invalid index or unrepresentable scalar.
 * @param value Complete selected original value; retain its storage and original units through return.
 * @param index Zero-based original declaration-order component index.
 * @param x Previously checked finite scalar in the selected component's original units.
 * @par Ownership
 * Borrowed owners remain caller-owned. No helper implicitly opens, closes, revokes or grants a
 * capability.
 */
static inline uint32_t uwvm_elephant_assign(uwvm_elephant_state* value, size_t index, double x)
{
    switch(index)
    {
        case 0:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_1 = (float)x;
            return 0;
        case 1:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_2 = (float)x;
            return 0;
        case 2:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_3 = (float)x;
            return 0;
        case 3:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_4 = (float)x;
            return 0;
        case 4:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_5 = (float)x;
            return 0;
        case 5:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_6 = (float)x;
            return 0;
        default: return 22;
    }
}
#elif UWVM_ELEPHANT_SELECTION == 2
# define UWVM_ELEPHANT_ROS_VERSION 1
# include <ros1/c/roswasm/ros1.h>
# define UWVM_ELEPHANT_BACKEND roswasmc_ros1_backend
typedef roswasmc_bounded_1_mypalletizer_communication_MypalAngles uwvm_elephant_state;
# define UWVM_ELEPHANT_STATE_DECODE roswasmc_bounded_1_mypalletizer_communication_MypalAngles_decode
# define UWVM_ELEPHANT_STATE_ENCODE roswasmc_bounded_1_mypalletizer_communication_MypalAngles_encode
# define UWVM_ELEPHANT_STATE_CAPACITY ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALANGLES_MAX_WIRE_BYTES
# define UWVM_ELEPHANT_COMPONENTS 4

/**
 * @brief Read one original model component in its native declaration order.
 * @details This pure scalar view performs no frame or unit conversion. The selected compile-time model
 * fixes the exact number of components; the value pointer must be nonnull.
 * @return The selected component converted to double, or NaN for an out-of-range index.
 * @param value Complete selected original value; retain its storage and original units through return.
 * @param index Zero-based original declaration-order component index.
 * @par Ownership
 * Borrowed owners remain caller-owned. No helper implicitly opens, closes, revokes or grants a
 * capability.
 */
static inline double uwvm_elephant_component(uwvm_elephant_state const* value, size_t index)
{
    switch(index)
    {
        case 0: return (double)value->joint_1;
        case 1: return (double)value->joint_2;
        case 2: return (double)value->joint_3;
        case 3: return (double)value->joint_4;
        default: return NAN;
    }
}

/**
 * @brief Assign one representable scalar into a private candidate observation.
 * @details The enclosing constructor validates finite values and complete physical bounds before
 * committing its candidate. This internal helper changes only the selected component and supplies no
 * transport.
 * @return Zero after assignment, otherwise 22 for an invalid index or unrepresentable scalar.
 * @param value Complete selected original value; retain its storage and original units through return.
 * @param index Zero-based original declaration-order component index.
 * @param x Previously checked finite scalar in the selected component's original units.
 * @par Ownership
 * Borrowed owners remain caller-owned. No helper implicitly opens, closes, revokes or grants a
 * capability.
 */
static inline uint32_t uwvm_elephant_assign(uwvm_elephant_state* value, size_t index, double x)
{
    switch(index)
    {
        case 0:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_1 = (float)x;
            return 0;
        case 1:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_2 = (float)x;
            return 0;
        case 2:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_3 = (float)x;
            return 0;
        case 3:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_4 = (float)x;
            return 0;
        default: return 22;
    }
}
#elif UWVM_ELEPHANT_SELECTION == 3
# define UWVM_ELEPHANT_ROS_VERSION 1
# include <ros1/c/roswasm/ros1.h>
# define UWVM_ELEPHANT_BACKEND roswasmc_ros1_backend
typedef roswasmc_bounded_1_mecharm_communication_MycobotAngles uwvm_elephant_state;
# define UWVM_ELEPHANT_STATE_DECODE roswasmc_bounded_1_mecharm_communication_MycobotAngles_decode
# define UWVM_ELEPHANT_STATE_ENCODE roswasmc_bounded_1_mecharm_communication_MycobotAngles_encode
# define UWVM_ELEPHANT_STATE_CAPACITY ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_MYCOBOTANGLES_MAX_WIRE_BYTES
# define UWVM_ELEPHANT_COMPONENTS 6

/**
 * @brief Read one original model component in its native declaration order.
 * @details This pure scalar view performs no frame or unit conversion. The selected compile-time model
 * fixes the exact number of components; the value pointer must be nonnull.
 * @return The selected component converted to double, or NaN for an out-of-range index.
 * @param value Complete selected original value; retain its storage and original units through return.
 * @param index Zero-based original declaration-order component index.
 * @par Ownership
 * Borrowed owners remain caller-owned. No helper implicitly opens, closes, revokes or grants a
 * capability.
 */
static inline double uwvm_elephant_component(uwvm_elephant_state const* value, size_t index)
{
    switch(index)
    {
        case 0: return (double)value->joint_1;
        case 1: return (double)value->joint_2;
        case 2: return (double)value->joint_3;
        case 3: return (double)value->joint_4;
        case 4: return (double)value->joint_5;
        case 5: return (double)value->joint_6;
        default: return NAN;
    }
}

/**
 * @brief Assign one representable scalar into a private candidate observation.
 * @details The enclosing constructor validates finite values and complete physical bounds before
 * committing its candidate. This internal helper changes only the selected component and supplies no
 * transport.
 * @return Zero after assignment, otherwise 22 for an invalid index or unrepresentable scalar.
 * @param value Complete selected original value; retain its storage and original units through return.
 * @param index Zero-based original declaration-order component index.
 * @param x Previously checked finite scalar in the selected component's original units.
 * @par Ownership
 * Borrowed owners remain caller-owned. No helper implicitly opens, closes, revokes or grants a
 * capability.
 */
static inline uint32_t uwvm_elephant_assign(uwvm_elephant_state* value, size_t index, double x)
{
    switch(index)
    {
        case 0:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_1 = (float)x;
            return 0;
        case 1:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_2 = (float)x;
            return 0;
        case 2:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_3 = (float)x;
            return 0;
        case 3:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_4 = (float)x;
            return 0;
        case 4:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_5 = (float)x;
            return 0;
        case 5:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_6 = (float)x;
            return 0;
        default: return 22;
    }
}
#elif UWVM_ELEPHANT_SELECTION == 4
# define UWVM_ELEPHANT_ROS_VERSION 1
# include <ros1/c/roswasm/ros1.h>
# define UWVM_ELEPHANT_BACKEND roswasmc_ros1_backend
typedef roswasmc_bounded_1_myarm_communication_MyArmAngles uwvm_elephant_state;
# define UWVM_ELEPHANT_STATE_DECODE roswasmc_bounded_1_myarm_communication_MyArmAngles_decode
# define UWVM_ELEPHANT_STATE_ENCODE roswasmc_bounded_1_myarm_communication_MyArmAngles_encode
# define UWVM_ELEPHANT_STATE_CAPACITY ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_MYARMANGLES_MAX_WIRE_BYTES
# define UWVM_ELEPHANT_COMPONENTS 7

/**
 * @brief Read one original model component in its native declaration order.
 * @details This pure scalar view performs no frame or unit conversion. The selected compile-time model
 * fixes the exact number of components; the value pointer must be nonnull.
 * @return The selected component converted to double, or NaN for an out-of-range index.
 * @param value Complete selected original value; retain its storage and original units through return.
 * @param index Zero-based original declaration-order component index.
 * @par Ownership
 * Borrowed owners remain caller-owned. No helper implicitly opens, closes, revokes or grants a
 * capability.
 */
static inline double uwvm_elephant_component(uwvm_elephant_state const* value, size_t index)
{
    switch(index)
    {
        case 0: return (double)value->joint_1;
        case 1: return (double)value->joint_2;
        case 2: return (double)value->joint_3;
        case 3: return (double)value->joint_4;
        case 4: return (double)value->joint_5;
        case 5: return (double)value->joint_6;
        case 6: return (double)value->joint_7;
        default: return NAN;
    }
}

/**
 * @brief Assign one representable scalar into a private candidate observation.
 * @details The enclosing constructor validates finite values and complete physical bounds before
 * committing its candidate. This internal helper changes only the selected component and supplies no
 * transport.
 * @return Zero after assignment, otherwise 22 for an invalid index or unrepresentable scalar.
 * @param value Complete selected original value; retain its storage and original units through return.
 * @param index Zero-based original declaration-order component index.
 * @param x Previously checked finite scalar in the selected component's original units.
 * @par Ownership
 * Borrowed owners remain caller-owned. No helper implicitly opens, closes, revokes or grants a
 * capability.
 */
static inline uint32_t uwvm_elephant_assign(uwvm_elephant_state* value, size_t index, double x)
{
    switch(index)
    {
        case 0:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_1 = (float)x;
            return 0;
        case 1:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_2 = (float)x;
            return 0;
        case 2:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_3 = (float)x;
            return 0;
        case 3:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_4 = (float)x;
            return 0;
        case 4:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_5 = (float)x;
            return 0;
        case 5:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_6 = (float)x;
            return 0;
        case 6:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_7 = (float)x;
            return 0;
        default: return 22;
    }
}
#elif UWVM_ELEPHANT_SELECTION == 5
# define UWVM_ELEPHANT_ROS_VERSION 1
# include <ros1/c/roswasm/ros1.h>
# define UWVM_ELEPHANT_BACKEND roswasmc_ros1_backend
typedef roswasmc_bounded_1_mybuddy_communication_MybuddyAngles uwvm_elephant_state;
# define UWVM_ELEPHANT_STATE_DECODE roswasmc_bounded_1_mybuddy_communication_MybuddyAngles_decode
# define UWVM_ELEPHANT_STATE_ENCODE roswasmc_bounded_1_mybuddy_communication_MybuddyAngles_encode
# define UWVM_ELEPHANT_STATE_CAPACITY ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_MYBUDDYANGLES_MAX_WIRE_BYTES
# define UWVM_ELEPHANT_COMPONENTS 13

/**
 * @brief Read one original model component in its native declaration order.
 * @details This pure scalar view performs no frame or unit conversion. The selected compile-time model
 * fixes the exact number of components; the value pointer must be nonnull.
 * @return The selected component converted to double, or NaN for an out-of-range index.
 * @param value Complete selected original value; retain its storage and original units through return.
 * @param index Zero-based original declaration-order component index.
 * @par Ownership
 * Borrowed owners remain caller-owned. No helper implicitly opens, closes, revokes or grants a
 * capability.
 */
static inline double uwvm_elephant_component(uwvm_elephant_state const* value, size_t index)
{
    switch(index)
    {
        case 0: return (double)value->joint_0;
        case 1: return (double)value->joint_1;
        case 2: return (double)value->joint_2;
        case 3: return (double)value->joint_3;
        case 4: return (double)value->joint_4;
        case 5: return (double)value->joint_5;
        case 6: return (double)value->joint_6;
        case 7: return (double)value->joint_7;
        case 8: return (double)value->joint_8;
        case 9: return (double)value->joint_9;
        case 10: return (double)value->joint_10;
        case 11: return (double)value->joint_11;
        case 12: return (double)value->joint_12;
        default: return NAN;
    }
}

/**
 * @brief Assign one representable scalar into a private candidate observation.
 * @details The enclosing constructor validates finite values and complete physical bounds before
 * committing its candidate. This internal helper changes only the selected component and supplies no
 * transport.
 * @return Zero after assignment, otherwise 22 for an invalid index or unrepresentable scalar.
 * @param value Complete selected original value; retain its storage and original units through return.
 * @param index Zero-based original declaration-order component index.
 * @param x Previously checked finite scalar in the selected component's original units.
 * @par Ownership
 * Borrowed owners remain caller-owned. No helper implicitly opens, closes, revokes or grants a
 * capability.
 */
static inline uint32_t uwvm_elephant_assign(uwvm_elephant_state* value, size_t index, double x)
{
    switch(index)
    {
        case 0:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_0 = (float)x;
            return 0;
        case 1:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_1 = (float)x;
            return 0;
        case 2:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_2 = (float)x;
            return 0;
        case 3:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_3 = (float)x;
            return 0;
        case 4:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_4 = (float)x;
            return 0;
        case 5:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_5 = (float)x;
            return 0;
        case 6:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_6 = (float)x;
            return 0;
        case 7:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_7 = (float)x;
            return 0;
        case 8:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_8 = (float)x;
            return 0;
        case 9:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_9 = (float)x;
            return 0;
        case 10:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_10 = (float)x;
            return 0;
        case 11:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_11 = (float)x;
            return 0;
        case 12:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_12 = (float)x;
            return 0;
        default: return 22;
    }
}
#elif UWVM_ELEPHANT_SELECTION == 6
# define UWVM_ELEPHANT_ROS_VERSION 1
# include <ros1/c/roswasm/ros1.h>
# define UWVM_ELEPHANT_BACKEND roswasmc_ros1_backend
typedef roswasmc_bounded_1_mycobot_320_communication_MycobotAngles uwvm_elephant_state;
# define UWVM_ELEPHANT_STATE_DECODE roswasmc_bounded_1_mycobot_320_communication_MycobotAngles_decode
# define UWVM_ELEPHANT_STATE_ENCODE roswasmc_bounded_1_mycobot_320_communication_MycobotAngles_encode
# define UWVM_ELEPHANT_STATE_CAPACITY ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_MYCOBOTANGLES_MAX_WIRE_BYTES
# define UWVM_ELEPHANT_COMPONENTS 6

/**
 * @brief Read one original model component in its native declaration order.
 * @details This pure scalar view performs no frame or unit conversion. The selected compile-time model
 * fixes the exact number of components; the value pointer must be nonnull.
 * @return The selected component converted to double, or NaN for an out-of-range index.
 * @param value Complete selected original value; retain its storage and original units through return.
 * @param index Zero-based original declaration-order component index.
 * @par Ownership
 * Borrowed owners remain caller-owned. No helper implicitly opens, closes, revokes or grants a
 * capability.
 */
static inline double uwvm_elephant_component(uwvm_elephant_state const* value, size_t index)
{
    switch(index)
    {
        case 0: return (double)value->joint_1;
        case 1: return (double)value->joint_2;
        case 2: return (double)value->joint_3;
        case 3: return (double)value->joint_4;
        case 4: return (double)value->joint_5;
        case 5: return (double)value->joint_6;
        default: return NAN;
    }
}

/**
 * @brief Assign one representable scalar into a private candidate observation.
 * @details The enclosing constructor validates finite values and complete physical bounds before
 * committing its candidate. This internal helper changes only the selected component and supplies no
 * transport.
 * @return Zero after assignment, otherwise 22 for an invalid index or unrepresentable scalar.
 * @param value Complete selected original value; retain its storage and original units through return.
 * @param index Zero-based original declaration-order component index.
 * @param x Previously checked finite scalar in the selected component's original units.
 * @par Ownership
 * Borrowed owners remain caller-owned. No helper implicitly opens, closes, revokes or grants a
 * capability.
 */
static inline uint32_t uwvm_elephant_assign(uwvm_elephant_state* value, size_t index, double x)
{
    switch(index)
    {
        case 0:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_1 = (float)x;
            return 0;
        case 1:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_2 = (float)x;
            return 0;
        case 2:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_3 = (float)x;
            return 0;
        case 3:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_4 = (float)x;
            return 0;
        case 4:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_5 = (float)x;
            return 0;
        case 5:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_6 = (float)x;
            return 0;
        default: return 22;
    }
}
#elif UWVM_ELEPHANT_SELECTION == 7
# define UWVM_ELEPHANT_ROS_VERSION 1
# include <ros1/c/roswasm/ros1.h>
# define UWVM_ELEPHANT_BACKEND roswasmc_ros1_backend
typedef roswasmc_bounded_1_mycobot_communication_MycobotAngles uwvm_elephant_state;
# define UWVM_ELEPHANT_STATE_DECODE roswasmc_bounded_1_mycobot_communication_MycobotAngles_decode
# define UWVM_ELEPHANT_STATE_ENCODE roswasmc_bounded_1_mycobot_communication_MycobotAngles_encode
# define UWVM_ELEPHANT_STATE_CAPACITY ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTANGLES_MAX_WIRE_BYTES
# define UWVM_ELEPHANT_COMPONENTS 6

/**
 * @brief Read one original model component in its native declaration order.
 * @details This pure scalar view performs no frame or unit conversion. The selected compile-time model
 * fixes the exact number of components; the value pointer must be nonnull.
 * @return The selected component converted to double, or NaN for an out-of-range index.
 * @param value Complete selected original value; retain its storage and original units through return.
 * @param index Zero-based original declaration-order component index.
 * @par Ownership
 * Borrowed owners remain caller-owned. No helper implicitly opens, closes, revokes or grants a
 * capability.
 */
static inline double uwvm_elephant_component(uwvm_elephant_state const* value, size_t index)
{
    switch(index)
    {
        case 0: return (double)value->joint_1;
        case 1: return (double)value->joint_2;
        case 2: return (double)value->joint_3;
        case 3: return (double)value->joint_4;
        case 4: return (double)value->joint_5;
        case 5: return (double)value->joint_6;
        default: return NAN;
    }
}

/**
 * @brief Assign one representable scalar into a private candidate observation.
 * @details The enclosing constructor validates finite values and complete physical bounds before
 * committing its candidate. This internal helper changes only the selected component and supplies no
 * transport.
 * @return Zero after assignment, otherwise 22 for an invalid index or unrepresentable scalar.
 * @param value Complete selected original value; retain its storage and original units through return.
 * @param index Zero-based original declaration-order component index.
 * @param x Previously checked finite scalar in the selected component's original units.
 * @par Ownership
 * Borrowed owners remain caller-owned. No helper implicitly opens, closes, revokes or grants a
 * capability.
 */
static inline uint32_t uwvm_elephant_assign(uwvm_elephant_state* value, size_t index, double x)
{
    switch(index)
    {
        case 0:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_1 = (float)x;
            return 0;
        case 1:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_2 = (float)x;
            return 0;
        case 2:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_3 = (float)x;
            return 0;
        case 3:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_4 = (float)x;
            return 0;
        case 4:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_5 = (float)x;
            return 0;
        case 5:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_6 = (float)x;
            return 0;
        default: return 22;
    }
}
#elif UWVM_ELEPHANT_SELECTION == 8
# define UWVM_ELEPHANT_ROS_VERSION 1
# include <ros1/c/roswasm/ros1.h>
# define UWVM_ELEPHANT_BACKEND roswasmc_ros1_backend
typedef roswasmc_bounded_1_mypalletizer_communication_MypalAngles uwvm_elephant_state;
# define UWVM_ELEPHANT_STATE_DECODE roswasmc_bounded_1_mypalletizer_communication_MypalAngles_decode
# define UWVM_ELEPHANT_STATE_ENCODE roswasmc_bounded_1_mypalletizer_communication_MypalAngles_encode
# define UWVM_ELEPHANT_STATE_CAPACITY ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALANGLES_MAX_WIRE_BYTES
# define UWVM_ELEPHANT_COMPONENTS 4

/**
 * @brief Read one original model component in its native declaration order.
 * @details This pure scalar view performs no frame or unit conversion. The selected compile-time model
 * fixes the exact number of components; the value pointer must be nonnull.
 * @return The selected component converted to double, or NaN for an out-of-range index.
 * @param value Complete selected original value; retain its storage and original units through return.
 * @param index Zero-based original declaration-order component index.
 * @par Ownership
 * Borrowed owners remain caller-owned. No helper implicitly opens, closes, revokes or grants a
 * capability.
 */
static inline double uwvm_elephant_component(uwvm_elephant_state const* value, size_t index)
{
    switch(index)
    {
        case 0: return (double)value->joint_1;
        case 1: return (double)value->joint_2;
        case 2: return (double)value->joint_3;
        case 3: return (double)value->joint_4;
        default: return NAN;
    }
}

/**
 * @brief Assign one representable scalar into a private candidate observation.
 * @details The enclosing constructor validates finite values and complete physical bounds before
 * committing its candidate. This internal helper changes only the selected component and supplies no
 * transport.
 * @return Zero after assignment, otherwise 22 for an invalid index or unrepresentable scalar.
 * @param value Complete selected original value; retain its storage and original units through return.
 * @param index Zero-based original declaration-order component index.
 * @param x Previously checked finite scalar in the selected component's original units.
 * @par Ownership
 * Borrowed owners remain caller-owned. No helper implicitly opens, closes, revokes or grants a
 * capability.
 */
static inline uint32_t uwvm_elephant_assign(uwvm_elephant_state* value, size_t index, double x)
{
    switch(index)
    {
        case 0:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_1 = (float)x;
            return 0;
        case 1:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_2 = (float)x;
            return 0;
        case 2:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_3 = (float)x;
            return 0;
        case 3:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_4 = (float)x;
            return 0;
        default: return 22;
    }
}
#elif UWVM_ELEPHANT_SELECTION == 9
# define UWVM_ELEPHANT_ROS_VERSION 1
# include <ros1/c/roswasm/ros1.h>
# define UWVM_ELEPHANT_BACKEND roswasmc_ros1_backend
typedef roswasmc_bounded_1_ultraarm_communication_ultraArmAngles uwvm_elephant_state;
# define UWVM_ELEPHANT_STATE_DECODE roswasmc_bounded_1_ultraarm_communication_ultraArmAngles_decode
# define UWVM_ELEPHANT_STATE_ENCODE roswasmc_bounded_1_ultraarm_communication_ultraArmAngles_encode
# define UWVM_ELEPHANT_STATE_CAPACITY ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_ULTRAARMANGLES_MAX_WIRE_BYTES
# define UWVM_ELEPHANT_COMPONENTS 3

/**
 * @brief Read one original model component in its native declaration order.
 * @details This pure scalar view performs no frame or unit conversion. The selected compile-time model
 * fixes the exact number of components; the value pointer must be nonnull.
 * @return The selected component converted to double, or NaN for an out-of-range index.
 * @param value Complete selected original value; retain its storage and original units through return.
 * @param index Zero-based original declaration-order component index.
 * @par Ownership
 * Borrowed owners remain caller-owned. No helper implicitly opens, closes, revokes or grants a
 * capability.
 */
static inline double uwvm_elephant_component(uwvm_elephant_state const* value, size_t index)
{
    switch(index)
    {
        case 0: return (double)value->joint_1;
        case 1: return (double)value->joint_2;
        case 2: return (double)value->joint_3;
        default: return NAN;
    }
}

/**
 * @brief Assign one representable scalar into a private candidate observation.
 * @details The enclosing constructor validates finite values and complete physical bounds before
 * committing its candidate. This internal helper changes only the selected component and supplies no
 * transport.
 * @return Zero after assignment, otherwise 22 for an invalid index or unrepresentable scalar.
 * @param value Complete selected original value; retain its storage and original units through return.
 * @param index Zero-based original declaration-order component index.
 * @param x Previously checked finite scalar in the selected component's original units.
 * @par Ownership
 * Borrowed owners remain caller-owned. No helper implicitly opens, closes, revokes or grants a
 * capability.
 */
static inline uint32_t uwvm_elephant_assign(uwvm_elephant_state* value, size_t index, double x)
{
    switch(index)
    {
        case 0:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_1 = (float)x;
            return 0;
        case 1:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_2 = (float)x;
            return 0;
        case 2:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_3 = (float)x;
            return 0;
        default: return 22;
    }
}
#elif UWVM_ELEPHANT_SELECTION == 10
# define UWVM_ELEPHANT_ROS_VERSION 1
# include <ros1/c/roswasm/ros1.h>
# define UWVM_ELEPHANT_BACKEND roswasmc_ros1_backend
typedef roswasmc_bounded_1_mecharm_communication_MycobotAngles uwvm_elephant_state;
# define UWVM_ELEPHANT_STATE_DECODE roswasmc_bounded_1_mecharm_communication_MycobotAngles_decode
# define UWVM_ELEPHANT_STATE_ENCODE roswasmc_bounded_1_mecharm_communication_MycobotAngles_encode
# define UWVM_ELEPHANT_STATE_CAPACITY ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_MYCOBOTANGLES_MAX_WIRE_BYTES
# define UWVM_ELEPHANT_COMPONENTS 6

/**
 * @brief Read one original model component in its native declaration order.
 * @details This pure scalar view performs no frame or unit conversion. The selected compile-time model
 * fixes the exact number of components; the value pointer must be nonnull.
 * @return The selected component converted to double, or NaN for an out-of-range index.
 * @param value Complete selected original value; retain its storage and original units through return.
 * @param index Zero-based original declaration-order component index.
 * @par Ownership
 * Borrowed owners remain caller-owned. No helper implicitly opens, closes, revokes or grants a
 * capability.
 */
static inline double uwvm_elephant_component(uwvm_elephant_state const* value, size_t index)
{
    switch(index)
    {
        case 0: return (double)value->joint_1;
        case 1: return (double)value->joint_2;
        case 2: return (double)value->joint_3;
        case 3: return (double)value->joint_4;
        case 4: return (double)value->joint_5;
        case 5: return (double)value->joint_6;
        default: return NAN;
    }
}

/**
 * @brief Assign one representable scalar into a private candidate observation.
 * @details The enclosing constructor validates finite values and complete physical bounds before
 * committing its candidate. This internal helper changes only the selected component and supplies no
 * transport.
 * @return Zero after assignment, otherwise 22 for an invalid index or unrepresentable scalar.
 * @param value Complete selected original value; retain its storage and original units through return.
 * @param index Zero-based original declaration-order component index.
 * @param x Previously checked finite scalar in the selected component's original units.
 * @par Ownership
 * Borrowed owners remain caller-owned. No helper implicitly opens, closes, revokes or grants a
 * capability.
 */
static inline uint32_t uwvm_elephant_assign(uwvm_elephant_state* value, size_t index, double x)
{
    switch(index)
    {
        case 0:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_1 = (float)x;
            return 0;
        case 1:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_2 = (float)x;
            return 0;
        case 2:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_3 = (float)x;
            return 0;
        case 3:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_4 = (float)x;
            return 0;
        case 4:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_5 = (float)x;
            return 0;
        case 5:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_6 = (float)x;
            return 0;
        default: return 22;
    }
}
#elif UWVM_ELEPHANT_SELECTION == 11
# define UWVM_ELEPHANT_ROS_VERSION 1
# include <ros1/c/roswasm/ros1.h>
# define UWVM_ELEPHANT_BACKEND roswasmc_ros1_backend
typedef roswasmc_bounded_1_myarm_communication_MyArmAngles uwvm_elephant_state;
# define UWVM_ELEPHANT_STATE_DECODE roswasmc_bounded_1_myarm_communication_MyArmAngles_decode
# define UWVM_ELEPHANT_STATE_ENCODE roswasmc_bounded_1_myarm_communication_MyArmAngles_encode
# define UWVM_ELEPHANT_STATE_CAPACITY ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_MYARMANGLES_MAX_WIRE_BYTES
# define UWVM_ELEPHANT_COMPONENTS 7

/**
 * @brief Read one original model component in its native declaration order.
 * @details This pure scalar view performs no frame or unit conversion. The selected compile-time model
 * fixes the exact number of components; the value pointer must be nonnull.
 * @return The selected component converted to double, or NaN for an out-of-range index.
 * @param value Complete selected original value; retain its storage and original units through return.
 * @param index Zero-based original declaration-order component index.
 * @par Ownership
 * Borrowed owners remain caller-owned. No helper implicitly opens, closes, revokes or grants a
 * capability.
 */
static inline double uwvm_elephant_component(uwvm_elephant_state const* value, size_t index)
{
    switch(index)
    {
        case 0: return (double)value->joint_1;
        case 1: return (double)value->joint_2;
        case 2: return (double)value->joint_3;
        case 3: return (double)value->joint_4;
        case 4: return (double)value->joint_5;
        case 5: return (double)value->joint_6;
        case 6: return (double)value->joint_7;
        default: return NAN;
    }
}

/**
 * @brief Assign one representable scalar into a private candidate observation.
 * @details The enclosing constructor validates finite values and complete physical bounds before
 * committing its candidate. This internal helper changes only the selected component and supplies no
 * transport.
 * @return Zero after assignment, otherwise 22 for an invalid index or unrepresentable scalar.
 * @param value Complete selected original value; retain its storage and original units through return.
 * @param index Zero-based original declaration-order component index.
 * @param x Previously checked finite scalar in the selected component's original units.
 * @par Ownership
 * Borrowed owners remain caller-owned. No helper implicitly opens, closes, revokes or grants a
 * capability.
 */
static inline uint32_t uwvm_elephant_assign(uwvm_elephant_state* value, size_t index, double x)
{
    switch(index)
    {
        case 0:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_1 = (float)x;
            return 0;
        case 1:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_2 = (float)x;
            return 0;
        case 2:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_3 = (float)x;
            return 0;
        case 3:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_4 = (float)x;
            return 0;
        case 4:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_5 = (float)x;
            return 0;
        case 5:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_6 = (float)x;
            return 0;
        case 6:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_7 = (float)x;
            return 0;
        default: return 22;
    }
}
#elif UWVM_ELEPHANT_SELECTION == 12
# define UWVM_ELEPHANT_ROS_VERSION 1
# include <ros1/c/roswasm/ros1.h>
# define UWVM_ELEPHANT_BACKEND roswasmc_ros1_backend
typedef roswasmc_bounded_1_mybuddy_communication_MybuddyAngles uwvm_elephant_state;
# define UWVM_ELEPHANT_STATE_DECODE roswasmc_bounded_1_mybuddy_communication_MybuddyAngles_decode
# define UWVM_ELEPHANT_STATE_ENCODE roswasmc_bounded_1_mybuddy_communication_MybuddyAngles_encode
# define UWVM_ELEPHANT_STATE_CAPACITY ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_MYBUDDYANGLES_MAX_WIRE_BYTES
# define UWVM_ELEPHANT_COMPONENTS 13

/**
 * @brief Read one original model component in its native declaration order.
 * @details This pure scalar view performs no frame or unit conversion. The selected compile-time model
 * fixes the exact number of components; the value pointer must be nonnull.
 * @return The selected component converted to double, or NaN for an out-of-range index.
 * @param value Complete selected original value; retain its storage and original units through return.
 * @param index Zero-based original declaration-order component index.
 * @par Ownership
 * Borrowed owners remain caller-owned. No helper implicitly opens, closes, revokes or grants a
 * capability.
 */
static inline double uwvm_elephant_component(uwvm_elephant_state const* value, size_t index)
{
    switch(index)
    {
        case 0: return (double)value->joint_0;
        case 1: return (double)value->joint_1;
        case 2: return (double)value->joint_2;
        case 3: return (double)value->joint_3;
        case 4: return (double)value->joint_4;
        case 5: return (double)value->joint_5;
        case 6: return (double)value->joint_6;
        case 7: return (double)value->joint_7;
        case 8: return (double)value->joint_8;
        case 9: return (double)value->joint_9;
        case 10: return (double)value->joint_10;
        case 11: return (double)value->joint_11;
        case 12: return (double)value->joint_12;
        default: return NAN;
    }
}

/**
 * @brief Assign one representable scalar into a private candidate observation.
 * @details The enclosing constructor validates finite values and complete physical bounds before
 * committing its candidate. This internal helper changes only the selected component and supplies no
 * transport.
 * @return Zero after assignment, otherwise 22 for an invalid index or unrepresentable scalar.
 * @param value Complete selected original value; retain its storage and original units through return.
 * @param index Zero-based original declaration-order component index.
 * @param x Previously checked finite scalar in the selected component's original units.
 * @par Ownership
 * Borrowed owners remain caller-owned. No helper implicitly opens, closes, revokes or grants a
 * capability.
 */
static inline uint32_t uwvm_elephant_assign(uwvm_elephant_state* value, size_t index, double x)
{
    switch(index)
    {
        case 0:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_0 = (float)x;
            return 0;
        case 1:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_1 = (float)x;
            return 0;
        case 2:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_2 = (float)x;
            return 0;
        case 3:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_3 = (float)x;
            return 0;
        case 4:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_4 = (float)x;
            return 0;
        case 5:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_5 = (float)x;
            return 0;
        case 6:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_6 = (float)x;
            return 0;
        case 7:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_7 = (float)x;
            return 0;
        case 8:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_8 = (float)x;
            return 0;
        case 9:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_9 = (float)x;
            return 0;
        case 10:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_10 = (float)x;
            return 0;
        case 11:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_11 = (float)x;
            return 0;
        case 12:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_12 = (float)x;
            return 0;
        default: return 22;
    }
}
#elif UWVM_ELEPHANT_SELECTION == 13
# define UWVM_ELEPHANT_ROS_VERSION 1
# include <ros1/c/roswasm/ros1.h>
# define UWVM_ELEPHANT_BACKEND roswasmc_ros1_backend
typedef roswasmc_bounded_1_mycobot_320_communication_MycobotAngles uwvm_elephant_state;
# define UWVM_ELEPHANT_STATE_DECODE roswasmc_bounded_1_mycobot_320_communication_MycobotAngles_decode
# define UWVM_ELEPHANT_STATE_ENCODE roswasmc_bounded_1_mycobot_320_communication_MycobotAngles_encode
# define UWVM_ELEPHANT_STATE_CAPACITY ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_MYCOBOTANGLES_MAX_WIRE_BYTES
# define UWVM_ELEPHANT_COMPONENTS 6

/**
 * @brief Read one original model component in its native declaration order.
 * @details This pure scalar view performs no frame or unit conversion. The selected compile-time model
 * fixes the exact number of components; the value pointer must be nonnull.
 * @return The selected component converted to double, or NaN for an out-of-range index.
 * @param value Complete selected original value; retain its storage and original units through return.
 * @param index Zero-based original declaration-order component index.
 * @par Ownership
 * Borrowed owners remain caller-owned. No helper implicitly opens, closes, revokes or grants a
 * capability.
 */
static inline double uwvm_elephant_component(uwvm_elephant_state const* value, size_t index)
{
    switch(index)
    {
        case 0: return (double)value->joint_1;
        case 1: return (double)value->joint_2;
        case 2: return (double)value->joint_3;
        case 3: return (double)value->joint_4;
        case 4: return (double)value->joint_5;
        case 5: return (double)value->joint_6;
        default: return NAN;
    }
}

/**
 * @brief Assign one representable scalar into a private candidate observation.
 * @details The enclosing constructor validates finite values and complete physical bounds before
 * committing its candidate. This internal helper changes only the selected component and supplies no
 * transport.
 * @return Zero after assignment, otherwise 22 for an invalid index or unrepresentable scalar.
 * @param value Complete selected original value; retain its storage and original units through return.
 * @param index Zero-based original declaration-order component index.
 * @param x Previously checked finite scalar in the selected component's original units.
 * @par Ownership
 * Borrowed owners remain caller-owned. No helper implicitly opens, closes, revokes or grants a
 * capability.
 */
static inline uint32_t uwvm_elephant_assign(uwvm_elephant_state* value, size_t index, double x)
{
    switch(index)
    {
        case 0:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_1 = (float)x;
            return 0;
        case 1:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_2 = (float)x;
            return 0;
        case 2:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_3 = (float)x;
            return 0;
        case 3:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_4 = (float)x;
            return 0;
        case 4:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_5 = (float)x;
            return 0;
        case 5:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_6 = (float)x;
            return 0;
        default: return 22;
    }
}
#elif UWVM_ELEPHANT_SELECTION == 14
# define UWVM_ELEPHANT_ROS_VERSION 1
# include <ros1/c/roswasm/ros1.h>
# define UWVM_ELEPHANT_BACKEND roswasmc_ros1_backend
typedef roswasmc_bounded_1_mycobot_communication_MycobotAngles uwvm_elephant_state;
# define UWVM_ELEPHANT_STATE_DECODE roswasmc_bounded_1_mycobot_communication_MycobotAngles_decode
# define UWVM_ELEPHANT_STATE_ENCODE roswasmc_bounded_1_mycobot_communication_MycobotAngles_encode
# define UWVM_ELEPHANT_STATE_CAPACITY ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTANGLES_MAX_WIRE_BYTES
# define UWVM_ELEPHANT_COMPONENTS 6

/**
 * @brief Read one original model component in its native declaration order.
 * @details This pure scalar view performs no frame or unit conversion. The selected compile-time model
 * fixes the exact number of components; the value pointer must be nonnull.
 * @return The selected component converted to double, or NaN for an out-of-range index.
 * @param value Complete selected original value; retain its storage and original units through return.
 * @param index Zero-based original declaration-order component index.
 * @par Ownership
 * Borrowed owners remain caller-owned. No helper implicitly opens, closes, revokes or grants a
 * capability.
 */
static inline double uwvm_elephant_component(uwvm_elephant_state const* value, size_t index)
{
    switch(index)
    {
        case 0: return (double)value->joint_1;
        case 1: return (double)value->joint_2;
        case 2: return (double)value->joint_3;
        case 3: return (double)value->joint_4;
        case 4: return (double)value->joint_5;
        case 5: return (double)value->joint_6;
        default: return NAN;
    }
}

/**
 * @brief Assign one representable scalar into a private candidate observation.
 * @details The enclosing constructor validates finite values and complete physical bounds before
 * committing its candidate. This internal helper changes only the selected component and supplies no
 * transport.
 * @return Zero after assignment, otherwise 22 for an invalid index or unrepresentable scalar.
 * @param value Complete selected original value; retain its storage and original units through return.
 * @param index Zero-based original declaration-order component index.
 * @param x Previously checked finite scalar in the selected component's original units.
 * @par Ownership
 * Borrowed owners remain caller-owned. No helper implicitly opens, closes, revokes or grants a
 * capability.
 */
static inline uint32_t uwvm_elephant_assign(uwvm_elephant_state* value, size_t index, double x)
{
    switch(index)
    {
        case 0:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_1 = (float)x;
            return 0;
        case 1:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_2 = (float)x;
            return 0;
        case 2:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_3 = (float)x;
            return 0;
        case 3:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_4 = (float)x;
            return 0;
        case 4:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_5 = (float)x;
            return 0;
        case 5:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_6 = (float)x;
            return 0;
        default: return 22;
    }
}
#elif UWVM_ELEPHANT_SELECTION == 15
# define UWVM_ELEPHANT_ROS_VERSION 1
# include <ros1/c/roswasm/ros1.h>
# define UWVM_ELEPHANT_BACKEND roswasmc_ros1_backend
typedef roswasmc_bounded_1_mycobot_pro450_communication_MycobotAngles uwvm_elephant_state;
# define UWVM_ELEPHANT_STATE_DECODE roswasmc_bounded_1_mycobot_pro450_communication_MycobotAngles_decode
# define UWVM_ELEPHANT_STATE_ENCODE roswasmc_bounded_1_mycobot_pro450_communication_MycobotAngles_encode
# define UWVM_ELEPHANT_STATE_CAPACITY ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_MYCOBOTANGLES_MAX_WIRE_BYTES
# define UWVM_ELEPHANT_COMPONENTS 6

/**
 * @brief Read one original model component in its native declaration order.
 * @details This pure scalar view performs no frame or unit conversion. The selected compile-time model
 * fixes the exact number of components; the value pointer must be nonnull.
 * @return The selected component converted to double, or NaN for an out-of-range index.
 * @param value Complete selected original value; retain its storage and original units through return.
 * @param index Zero-based original declaration-order component index.
 * @par Ownership
 * Borrowed owners remain caller-owned. No helper implicitly opens, closes, revokes or grants a
 * capability.
 */
static inline double uwvm_elephant_component(uwvm_elephant_state const* value, size_t index)
{
    switch(index)
    {
        case 0: return (double)value->joint_1;
        case 1: return (double)value->joint_2;
        case 2: return (double)value->joint_3;
        case 3: return (double)value->joint_4;
        case 4: return (double)value->joint_5;
        case 5: return (double)value->joint_6;
        default: return NAN;
    }
}

/**
 * @brief Assign one representable scalar into a private candidate observation.
 * @details The enclosing constructor validates finite values and complete physical bounds before
 * committing its candidate. This internal helper changes only the selected component and supplies no
 * transport.
 * @return Zero after assignment, otherwise 22 for an invalid index or unrepresentable scalar.
 * @param value Complete selected original value; retain its storage and original units through return.
 * @param index Zero-based original declaration-order component index.
 * @param x Previously checked finite scalar in the selected component's original units.
 * @par Ownership
 * Borrowed owners remain caller-owned. No helper implicitly opens, closes, revokes or grants a
 * capability.
 */
static inline uint32_t uwvm_elephant_assign(uwvm_elephant_state* value, size_t index, double x)
{
    switch(index)
    {
        case 0:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_1 = (float)x;
            return 0;
        case 1:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_2 = (float)x;
            return 0;
        case 2:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_3 = (float)x;
            return 0;
        case 3:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_4 = (float)x;
            return 0;
        case 4:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_5 = (float)x;
            return 0;
        case 5:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_6 = (float)x;
            return 0;
        default: return 22;
    }
}
#elif UWVM_ELEPHANT_SELECTION == 16
# define UWVM_ELEPHANT_ROS_VERSION 1
# include <ros1/c/roswasm/ros1.h>
# define UWVM_ELEPHANT_BACKEND roswasmc_ros1_backend
typedef roswasmc_bounded_1_mypalletizer_communication_MypalAngles uwvm_elephant_state;
# define UWVM_ELEPHANT_STATE_DECODE roswasmc_bounded_1_mypalletizer_communication_MypalAngles_decode
# define UWVM_ELEPHANT_STATE_ENCODE roswasmc_bounded_1_mypalletizer_communication_MypalAngles_encode
# define UWVM_ELEPHANT_STATE_CAPACITY ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALANGLES_MAX_WIRE_BYTES
# define UWVM_ELEPHANT_COMPONENTS 4

/**
 * @brief Read one original model component in its native declaration order.
 * @details This pure scalar view performs no frame or unit conversion. The selected compile-time model
 * fixes the exact number of components; the value pointer must be nonnull.
 * @return The selected component converted to double, or NaN for an out-of-range index.
 * @param value Complete selected original value; retain its storage and original units through return.
 * @param index Zero-based original declaration-order component index.
 * @par Ownership
 * Borrowed owners remain caller-owned. No helper implicitly opens, closes, revokes or grants a
 * capability.
 */
static inline double uwvm_elephant_component(uwvm_elephant_state const* value, size_t index)
{
    switch(index)
    {
        case 0: return (double)value->joint_1;
        case 1: return (double)value->joint_2;
        case 2: return (double)value->joint_3;
        case 3: return (double)value->joint_4;
        default: return NAN;
    }
}

/**
 * @brief Assign one representable scalar into a private candidate observation.
 * @details The enclosing constructor validates finite values and complete physical bounds before
 * committing its candidate. This internal helper changes only the selected component and supplies no
 * transport.
 * @return Zero after assignment, otherwise 22 for an invalid index or unrepresentable scalar.
 * @param value Complete selected original value; retain its storage and original units through return.
 * @param index Zero-based original declaration-order component index.
 * @param x Previously checked finite scalar in the selected component's original units.
 * @par Ownership
 * Borrowed owners remain caller-owned. No helper implicitly opens, closes, revokes or grants a
 * capability.
 */
static inline uint32_t uwvm_elephant_assign(uwvm_elephant_state* value, size_t index, double x)
{
    switch(index)
    {
        case 0:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_1 = (float)x;
            return 0;
        case 1:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_2 = (float)x;
            return 0;
        case 2:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_3 = (float)x;
            return 0;
        case 3:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_4 = (float)x;
            return 0;
        default: return 22;
    }
}
#elif UWVM_ELEPHANT_SELECTION == 17
# define UWVM_ELEPHANT_ROS_VERSION 1
# include <ros1/c/roswasm/ros1.h>
# define UWVM_ELEPHANT_BACKEND roswasmc_ros1_backend
typedef roswasmc_bounded_1_ultraarm_communication_MycobotAngles uwvm_elephant_state;
# define UWVM_ELEPHANT_STATE_DECODE roswasmc_bounded_1_ultraarm_communication_MycobotAngles_decode
# define UWVM_ELEPHANT_STATE_ENCODE roswasmc_bounded_1_ultraarm_communication_MycobotAngles_encode
# define UWVM_ELEPHANT_STATE_CAPACITY ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_MYCOBOTANGLES_MAX_WIRE_BYTES
# define UWVM_ELEPHANT_COMPONENTS 4

/**
 * @brief Read one original model component in its native declaration order.
 * @details This pure scalar view performs no frame or unit conversion. The selected compile-time model
 * fixes the exact number of components; the value pointer must be nonnull.
 * @return The selected component converted to double, or NaN for an out-of-range index.
 * @param value Complete selected original value; retain its storage and original units through return.
 * @param index Zero-based original declaration-order component index.
 * @par Ownership
 * Borrowed owners remain caller-owned. No helper implicitly opens, closes, revokes or grants a
 * capability.
 */
static inline double uwvm_elephant_component(uwvm_elephant_state const* value, size_t index)
{
    switch(index)
    {
        case 0: return (double)value->joint_1;
        case 1: return (double)value->joint_2;
        case 2: return (double)value->joint_3;
        case 3: return (double)value->joint_4;
        default: return NAN;
    }
}

/**
 * @brief Assign one representable scalar into a private candidate observation.
 * @details The enclosing constructor validates finite values and complete physical bounds before
 * committing its candidate. This internal helper changes only the selected component and supplies no
 * transport.
 * @return Zero after assignment, otherwise 22 for an invalid index or unrepresentable scalar.
 * @param value Complete selected original value; retain its storage and original units through return.
 * @param index Zero-based original declaration-order component index.
 * @param x Previously checked finite scalar in the selected component's original units.
 * @par Ownership
 * Borrowed owners remain caller-owned. No helper implicitly opens, closes, revokes or grants a
 * capability.
 */
static inline uint32_t uwvm_elephant_assign(uwvm_elephant_state* value, size_t index, double x)
{
    switch(index)
    {
        case 0:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_1 = (float)x;
            return 0;
        case 1:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_2 = (float)x;
            return 0;
        case 2:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_3 = (float)x;
            return 0;
        case 3:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_4 = (float)x;
            return 0;
        default: return 22;
    }
}
#elif UWVM_ELEPHANT_SELECTION == 18
# define UWVM_ELEPHANT_ROS_VERSION 2
# include <ros2/c/roswasm/ros2.h>
# define UWVM_ELEPHANT_BACKEND roswasmc_ros2_backend
typedef roswasmc_bounded_2_mecharm_interfaces_msg_MecharmAngles uwvm_elephant_state;
# define UWVM_ELEPHANT_STATE_DECODE roswasmc_bounded_2_mecharm_interfaces_msg_MecharmAngles_decode
# define UWVM_ELEPHANT_STATE_ENCODE roswasmc_bounded_2_mecharm_interfaces_msg_MecharmAngles_encode
# define UWVM_ELEPHANT_STATE_CAPACITY ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_MSG_MECHARMANGLES_MAX_WIRE_BYTES
# define UWVM_ELEPHANT_COMPONENTS 6

/**
 * @brief Read one original model component in its native declaration order.
 * @details This pure scalar view performs no frame or unit conversion. The selected compile-time model
 * fixes the exact number of components; the value pointer must be nonnull.
 * @return The selected component converted to double, or NaN for an out-of-range index.
 * @param value Complete selected original value; retain its storage and original units through return.
 * @param index Zero-based original declaration-order component index.
 * @par Ownership
 * Borrowed owners remain caller-owned. No helper implicitly opens, closes, revokes or grants a
 * capability.
 */
static inline double uwvm_elephant_component(uwvm_elephant_state const* value, size_t index)
{
    switch(index)
    {
        case 0: return (double)value->joint_1;
        case 1: return (double)value->joint_2;
        case 2: return (double)value->joint_3;
        case 3: return (double)value->joint_4;
        case 4: return (double)value->joint_5;
        case 5: return (double)value->joint_6;
        default: return NAN;
    }
}

/**
 * @brief Assign one representable scalar into a private candidate observation.
 * @details The enclosing constructor validates finite values and complete physical bounds before
 * committing its candidate. This internal helper changes only the selected component and supplies no
 * transport.
 * @return Zero after assignment, otherwise 22 for an invalid index or unrepresentable scalar.
 * @param value Complete selected original value; retain its storage and original units through return.
 * @param index Zero-based original declaration-order component index.
 * @param x Previously checked finite scalar in the selected component's original units.
 * @par Ownership
 * Borrowed owners remain caller-owned. No helper implicitly opens, closes, revokes or grants a
 * capability.
 */
static inline uint32_t uwvm_elephant_assign(uwvm_elephant_state* value, size_t index, double x)
{
    switch(index)
    {
        case 0:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_1 = (float)x;
            return 0;
        case 1:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_2 = (float)x;
            return 0;
        case 2:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_3 = (float)x;
            return 0;
        case 3:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_4 = (float)x;
            return 0;
        case 4:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_5 = (float)x;
            return 0;
        case 5:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_6 = (float)x;
            return 0;
        default: return 22;
    }
}
#elif UWVM_ELEPHANT_SELECTION == 19
# define UWVM_ELEPHANT_ROS_VERSION 2
# include <ros2/c/roswasm/ros2.h>
# define UWVM_ELEPHANT_BACKEND roswasmc_ros2_backend
typedef roswasmc_bounded_2_mycobot_interfaces_msg_MycobotAngles uwvm_elephant_state;
# define UWVM_ELEPHANT_STATE_DECODE roswasmc_bounded_2_mycobot_interfaces_msg_MycobotAngles_decode
# define UWVM_ELEPHANT_STATE_ENCODE roswasmc_bounded_2_mycobot_interfaces_msg_MycobotAngles_encode
# define UWVM_ELEPHANT_STATE_CAPACITY ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_MSG_MYCOBOTANGLES_MAX_WIRE_BYTES
# define UWVM_ELEPHANT_COMPONENTS 6

/**
 * @brief Read one original model component in its native declaration order.
 * @details This pure scalar view performs no frame or unit conversion. The selected compile-time model
 * fixes the exact number of components; the value pointer must be nonnull.
 * @return The selected component converted to double, or NaN for an out-of-range index.
 * @param value Complete selected original value; retain its storage and original units through return.
 * @param index Zero-based original declaration-order component index.
 * @par Ownership
 * Borrowed owners remain caller-owned. No helper implicitly opens, closes, revokes or grants a
 * capability.
 */
static inline double uwvm_elephant_component(uwvm_elephant_state const* value, size_t index)
{
    switch(index)
    {
        case 0: return (double)value->joint_1;
        case 1: return (double)value->joint_2;
        case 2: return (double)value->joint_3;
        case 3: return (double)value->joint_4;
        case 4: return (double)value->joint_5;
        case 5: return (double)value->joint_6;
        default: return NAN;
    }
}

/**
 * @brief Assign one representable scalar into a private candidate observation.
 * @details The enclosing constructor validates finite values and complete physical bounds before
 * committing its candidate. This internal helper changes only the selected component and supplies no
 * transport.
 * @return Zero after assignment, otherwise 22 for an invalid index or unrepresentable scalar.
 * @param value Complete selected original value; retain its storage and original units through return.
 * @param index Zero-based original declaration-order component index.
 * @param x Previously checked finite scalar in the selected component's original units.
 * @par Ownership
 * Borrowed owners remain caller-owned. No helper implicitly opens, closes, revokes or grants a
 * capability.
 */
static inline uint32_t uwvm_elephant_assign(uwvm_elephant_state* value, size_t index, double x)
{
    switch(index)
    {
        case 0:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_1 = (float)x;
            return 0;
        case 1:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_2 = (float)x;
            return 0;
        case 2:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_3 = (float)x;
            return 0;
        case 3:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_4 = (float)x;
            return 0;
        case 4:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_5 = (float)x;
            return 0;
        case 5:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_6 = (float)x;
            return 0;
        default: return 22;
    }
}
#elif UWVM_ELEPHANT_SELECTION == 20
# define UWVM_ELEPHANT_ROS_VERSION 2
# include <ros2/c/roswasm/ros2.h>
# define UWVM_ELEPHANT_BACKEND roswasmc_ros2_backend
typedef roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotAngles uwvm_elephant_state;
# define UWVM_ELEPHANT_STATE_DECODE roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotAngles_decode
# define UWVM_ELEPHANT_STATE_ENCODE roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotAngles_encode
# define UWVM_ELEPHANT_STATE_CAPACITY ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_MSG_MYCOBOTANGLES_MAX_WIRE_BYTES
# define UWVM_ELEPHANT_COMPONENTS 6

/**
 * @brief Read one original model component in its native declaration order.
 * @details This pure scalar view performs no frame or unit conversion. The selected compile-time model
 * fixes the exact number of components; the value pointer must be nonnull.
 * @return The selected component converted to double, or NaN for an out-of-range index.
 * @param value Complete selected original value; retain its storage and original units through return.
 * @param index Zero-based original declaration-order component index.
 * @par Ownership
 * Borrowed owners remain caller-owned. No helper implicitly opens, closes, revokes or grants a
 * capability.
 */
static inline double uwvm_elephant_component(uwvm_elephant_state const* value, size_t index)
{
    switch(index)
    {
        case 0: return (double)value->joint_1;
        case 1: return (double)value->joint_2;
        case 2: return (double)value->joint_3;
        case 3: return (double)value->joint_4;
        case 4: return (double)value->joint_5;
        case 5: return (double)value->joint_6;
        default: return NAN;
    }
}

/**
 * @brief Assign one representable scalar into a private candidate observation.
 * @details The enclosing constructor validates finite values and complete physical bounds before
 * committing its candidate. This internal helper changes only the selected component and supplies no
 * transport.
 * @return Zero after assignment, otherwise 22 for an invalid index or unrepresentable scalar.
 * @param value Complete selected original value; retain its storage and original units through return.
 * @param index Zero-based original declaration-order component index.
 * @param x Previously checked finite scalar in the selected component's original units.
 * @par Ownership
 * Borrowed owners remain caller-owned. No helper implicitly opens, closes, revokes or grants a
 * capability.
 */
static inline uint32_t uwvm_elephant_assign(uwvm_elephant_state* value, size_t index, double x)
{
    switch(index)
    {
        case 0:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_1 = (float)x;
            return 0;
        case 1:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_2 = (float)x;
            return 0;
        case 2:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_3 = (float)x;
            return 0;
        case 3:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_4 = (float)x;
            return 0;
        case 4:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_5 = (float)x;
            return 0;
        case 5:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_6 = (float)x;
            return 0;
        default: return 22;
    }
}
#elif UWVM_ELEPHANT_SELECTION == 21
# define UWVM_ELEPHANT_ROS_VERSION 2
# include <ros2/c/roswasm/ros2.h>
# define UWVM_ELEPHANT_BACKEND roswasmc_ros2_backend
typedef roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalAngles uwvm_elephant_state;
# define UWVM_ELEPHANT_STATE_DECODE roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalAngles_decode
# define UWVM_ELEPHANT_STATE_ENCODE roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalAngles_encode
# define UWVM_ELEPHANT_STATE_CAPACITY ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_MSG_MYPALANGLES_MAX_WIRE_BYTES
# define UWVM_ELEPHANT_COMPONENTS 4

/**
 * @brief Read one original model component in its native declaration order.
 * @details This pure scalar view performs no frame or unit conversion. The selected compile-time model
 * fixes the exact number of components; the value pointer must be nonnull.
 * @return The selected component converted to double, or NaN for an out-of-range index.
 * @param value Complete selected original value; retain its storage and original units through return.
 * @param index Zero-based original declaration-order component index.
 * @par Ownership
 * Borrowed owners remain caller-owned. No helper implicitly opens, closes, revokes or grants a
 * capability.
 */
static inline double uwvm_elephant_component(uwvm_elephant_state const* value, size_t index)
{
    switch(index)
    {
        case 0: return (double)value->joint_1;
        case 1: return (double)value->joint_2;
        case 2: return (double)value->joint_3;
        case 3: return (double)value->joint_4;
        default: return NAN;
    }
}

/**
 * @brief Assign one representable scalar into a private candidate observation.
 * @details The enclosing constructor validates finite values and complete physical bounds before
 * committing its candidate. This internal helper changes only the selected component and supplies no
 * transport.
 * @return Zero after assignment, otherwise 22 for an invalid index or unrepresentable scalar.
 * @param value Complete selected original value; retain its storage and original units through return.
 * @param index Zero-based original declaration-order component index.
 * @param x Previously checked finite scalar in the selected component's original units.
 * @par Ownership
 * Borrowed owners remain caller-owned. No helper implicitly opens, closes, revokes or grants a
 * capability.
 */
static inline uint32_t uwvm_elephant_assign(uwvm_elephant_state* value, size_t index, double x)
{
    switch(index)
    {
        case 0:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_1 = (float)x;
            return 0;
        case 1:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_2 = (float)x;
            return 0;
        case 2:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_3 = (float)x;
            return 0;
        case 3:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_4 = (float)x;
            return 0;
        default: return 22;
    }
}
#elif UWVM_ELEPHANT_SELECTION == 22
# define UWVM_ELEPHANT_ROS_VERSION 2
# include <ros2/c/roswasm/ros2.h>
# define UWVM_ELEPHANT_BACKEND roswasmc_ros2_backend
typedef roswasmc_bounded_2_mecharm_interfaces_msg_MecharmAngles uwvm_elephant_state;
# define UWVM_ELEPHANT_STATE_DECODE roswasmc_bounded_2_mecharm_interfaces_msg_MecharmAngles_decode
# define UWVM_ELEPHANT_STATE_ENCODE roswasmc_bounded_2_mecharm_interfaces_msg_MecharmAngles_encode
# define UWVM_ELEPHANT_STATE_CAPACITY ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_MSG_MECHARMANGLES_MAX_WIRE_BYTES
# define UWVM_ELEPHANT_COMPONENTS 6

/**
 * @brief Read one original model component in its native declaration order.
 * @details This pure scalar view performs no frame or unit conversion. The selected compile-time model
 * fixes the exact number of components; the value pointer must be nonnull.
 * @return The selected component converted to double, or NaN for an out-of-range index.
 * @param value Complete selected original value; retain its storage and original units through return.
 * @param index Zero-based original declaration-order component index.
 * @par Ownership
 * Borrowed owners remain caller-owned. No helper implicitly opens, closes, revokes or grants a
 * capability.
 */
static inline double uwvm_elephant_component(uwvm_elephant_state const* value, size_t index)
{
    switch(index)
    {
        case 0: return (double)value->joint_1;
        case 1: return (double)value->joint_2;
        case 2: return (double)value->joint_3;
        case 3: return (double)value->joint_4;
        case 4: return (double)value->joint_5;
        case 5: return (double)value->joint_6;
        default: return NAN;
    }
}

/**
 * @brief Assign one representable scalar into a private candidate observation.
 * @details The enclosing constructor validates finite values and complete physical bounds before
 * committing its candidate. This internal helper changes only the selected component and supplies no
 * transport.
 * @return Zero after assignment, otherwise 22 for an invalid index or unrepresentable scalar.
 * @param value Complete selected original value; retain its storage and original units through return.
 * @param index Zero-based original declaration-order component index.
 * @param x Previously checked finite scalar in the selected component's original units.
 * @par Ownership
 * Borrowed owners remain caller-owned. No helper implicitly opens, closes, revokes or grants a
 * capability.
 */
static inline uint32_t uwvm_elephant_assign(uwvm_elephant_state* value, size_t index, double x)
{
    switch(index)
    {
        case 0:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_1 = (float)x;
            return 0;
        case 1:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_2 = (float)x;
            return 0;
        case 2:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_3 = (float)x;
            return 0;
        case 3:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_4 = (float)x;
            return 0;
        case 4:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_5 = (float)x;
            return 0;
        case 5:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_6 = (float)x;
            return 0;
        default: return 22;
    }
}
#elif UWVM_ELEPHANT_SELECTION == 23
# define UWVM_ELEPHANT_ROS_VERSION 2
# include <ros2/c/roswasm/ros2.h>
# define UWVM_ELEPHANT_BACKEND roswasmc_ros2_backend
typedef roswasmc_bounded_2_mycobot_interfaces_msg_MycobotAngles uwvm_elephant_state;
# define UWVM_ELEPHANT_STATE_DECODE roswasmc_bounded_2_mycobot_interfaces_msg_MycobotAngles_decode
# define UWVM_ELEPHANT_STATE_ENCODE roswasmc_bounded_2_mycobot_interfaces_msg_MycobotAngles_encode
# define UWVM_ELEPHANT_STATE_CAPACITY ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_MSG_MYCOBOTANGLES_MAX_WIRE_BYTES
# define UWVM_ELEPHANT_COMPONENTS 6

/**
 * @brief Read one original model component in its native declaration order.
 * @details This pure scalar view performs no frame or unit conversion. The selected compile-time model
 * fixes the exact number of components; the value pointer must be nonnull.
 * @return The selected component converted to double, or NaN for an out-of-range index.
 * @param value Complete selected original value; retain its storage and original units through return.
 * @param index Zero-based original declaration-order component index.
 * @par Ownership
 * Borrowed owners remain caller-owned. No helper implicitly opens, closes, revokes or grants a
 * capability.
 */
static inline double uwvm_elephant_component(uwvm_elephant_state const* value, size_t index)
{
    switch(index)
    {
        case 0: return (double)value->joint_1;
        case 1: return (double)value->joint_2;
        case 2: return (double)value->joint_3;
        case 3: return (double)value->joint_4;
        case 4: return (double)value->joint_5;
        case 5: return (double)value->joint_6;
        default: return NAN;
    }
}

/**
 * @brief Assign one representable scalar into a private candidate observation.
 * @details The enclosing constructor validates finite values and complete physical bounds before
 * committing its candidate. This internal helper changes only the selected component and supplies no
 * transport.
 * @return Zero after assignment, otherwise 22 for an invalid index or unrepresentable scalar.
 * @param value Complete selected original value; retain its storage and original units through return.
 * @param index Zero-based original declaration-order component index.
 * @param x Previously checked finite scalar in the selected component's original units.
 * @par Ownership
 * Borrowed owners remain caller-owned. No helper implicitly opens, closes, revokes or grants a
 * capability.
 */
static inline uint32_t uwvm_elephant_assign(uwvm_elephant_state* value, size_t index, double x)
{
    switch(index)
    {
        case 0:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_1 = (float)x;
            return 0;
        case 1:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_2 = (float)x;
            return 0;
        case 2:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_3 = (float)x;
            return 0;
        case 3:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_4 = (float)x;
            return 0;
        case 4:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_5 = (float)x;
            return 0;
        case 5:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_6 = (float)x;
            return 0;
        default: return 22;
    }
}
#elif UWVM_ELEPHANT_SELECTION == 24
# define UWVM_ELEPHANT_ROS_VERSION 2
# include <ros2/c/roswasm/ros2.h>
# define UWVM_ELEPHANT_BACKEND roswasmc_ros2_backend
typedef roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotAngles uwvm_elephant_state;
# define UWVM_ELEPHANT_STATE_DECODE roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotAngles_decode
# define UWVM_ELEPHANT_STATE_ENCODE roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotAngles_encode
# define UWVM_ELEPHANT_STATE_CAPACITY ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_MSG_MYCOBOTANGLES_MAX_WIRE_BYTES
# define UWVM_ELEPHANT_COMPONENTS 6

/**
 * @brief Read one original model component in its native declaration order.
 * @details This pure scalar view performs no frame or unit conversion. The selected compile-time model
 * fixes the exact number of components; the value pointer must be nonnull.
 * @return The selected component converted to double, or NaN for an out-of-range index.
 * @param value Complete selected original value; retain its storage and original units through return.
 * @param index Zero-based original declaration-order component index.
 * @par Ownership
 * Borrowed owners remain caller-owned. No helper implicitly opens, closes, revokes or grants a
 * capability.
 */
static inline double uwvm_elephant_component(uwvm_elephant_state const* value, size_t index)
{
    switch(index)
    {
        case 0: return (double)value->joint_1;
        case 1: return (double)value->joint_2;
        case 2: return (double)value->joint_3;
        case 3: return (double)value->joint_4;
        case 4: return (double)value->joint_5;
        case 5: return (double)value->joint_6;
        default: return NAN;
    }
}

/**
 * @brief Assign one representable scalar into a private candidate observation.
 * @details The enclosing constructor validates finite values and complete physical bounds before
 * committing its candidate. This internal helper changes only the selected component and supplies no
 * transport.
 * @return Zero after assignment, otherwise 22 for an invalid index or unrepresentable scalar.
 * @param value Complete selected original value; retain its storage and original units through return.
 * @param index Zero-based original declaration-order component index.
 * @param x Previously checked finite scalar in the selected component's original units.
 * @par Ownership
 * Borrowed owners remain caller-owned. No helper implicitly opens, closes, revokes or grants a
 * capability.
 */
static inline uint32_t uwvm_elephant_assign(uwvm_elephant_state* value, size_t index, double x)
{
    switch(index)
    {
        case 0:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_1 = (float)x;
            return 0;
        case 1:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_2 = (float)x;
            return 0;
        case 2:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_3 = (float)x;
            return 0;
        case 3:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_4 = (float)x;
            return 0;
        case 4:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_5 = (float)x;
            return 0;
        case 5:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_6 = (float)x;
            return 0;
        default: return 22;
    }
}
#elif UWVM_ELEPHANT_SELECTION == 25
# define UWVM_ELEPHANT_ROS_VERSION 2
# include <ros2/c/roswasm/ros2.h>
# define UWVM_ELEPHANT_BACKEND roswasmc_ros2_backend
typedef roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalAngles uwvm_elephant_state;
# define UWVM_ELEPHANT_STATE_DECODE roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalAngles_decode
# define UWVM_ELEPHANT_STATE_ENCODE roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalAngles_encode
# define UWVM_ELEPHANT_STATE_CAPACITY ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_MSG_MYPALANGLES_MAX_WIRE_BYTES
# define UWVM_ELEPHANT_COMPONENTS 4

/**
 * @brief Read one original model component in its native declaration order.
 * @details This pure scalar view performs no frame or unit conversion. The selected compile-time model
 * fixes the exact number of components; the value pointer must be nonnull.
 * @return The selected component converted to double, or NaN for an out-of-range index.
 * @param value Complete selected original value; retain its storage and original units through return.
 * @param index Zero-based original declaration-order component index.
 * @par Ownership
 * Borrowed owners remain caller-owned. No helper implicitly opens, closes, revokes or grants a
 * capability.
 */
static inline double uwvm_elephant_component(uwvm_elephant_state const* value, size_t index)
{
    switch(index)
    {
        case 0: return (double)value->joint_1;
        case 1: return (double)value->joint_2;
        case 2: return (double)value->joint_3;
        case 3: return (double)value->joint_4;
        default: return NAN;
    }
}

/**
 * @brief Assign one representable scalar into a private candidate observation.
 * @details The enclosing constructor validates finite values and complete physical bounds before
 * committing its candidate. This internal helper changes only the selected component and supplies no
 * transport.
 * @return Zero after assignment, otherwise 22 for an invalid index or unrepresentable scalar.
 * @param value Complete selected original value; retain its storage and original units through return.
 * @param index Zero-based original declaration-order component index.
 * @param x Previously checked finite scalar in the selected component's original units.
 * @par Ownership
 * Borrowed owners remain caller-owned. No helper implicitly opens, closes, revokes or grants a
 * capability.
 */
static inline uint32_t uwvm_elephant_assign(uwvm_elephant_state* value, size_t index, double x)
{
    switch(index)
    {
        case 0:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_1 = (float)x;
            return 0;
        case 1:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_2 = (float)x;
            return 0;
        case 2:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_3 = (float)x;
            return 0;
        case 3:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_4 = (float)x;
            return 0;
        default: return 22;
    }
}
#elif UWVM_ELEPHANT_SELECTION == 26
# define UWVM_ELEPHANT_ROS_VERSION 2
# include <ros2/c/roswasm/ros2.h>
# define UWVM_ELEPHANT_BACKEND roswasmc_ros2_backend
typedef roswasmc_bounded_2_mecharm_interfaces_msg_MecharmAngles uwvm_elephant_state;
# define UWVM_ELEPHANT_STATE_DECODE roswasmc_bounded_2_mecharm_interfaces_msg_MecharmAngles_decode
# define UWVM_ELEPHANT_STATE_ENCODE roswasmc_bounded_2_mecharm_interfaces_msg_MecharmAngles_encode
# define UWVM_ELEPHANT_STATE_CAPACITY ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_MSG_MECHARMANGLES_MAX_WIRE_BYTES
# define UWVM_ELEPHANT_COMPONENTS 6

/**
 * @brief Read one original model component in its native declaration order.
 * @details This pure scalar view performs no frame or unit conversion. The selected compile-time model
 * fixes the exact number of components; the value pointer must be nonnull.
 * @return The selected component converted to double, or NaN for an out-of-range index.
 * @param value Complete selected original value; retain its storage and original units through return.
 * @param index Zero-based original declaration-order component index.
 * @par Ownership
 * Borrowed owners remain caller-owned. No helper implicitly opens, closes, revokes or grants a
 * capability.
 */
static inline double uwvm_elephant_component(uwvm_elephant_state const* value, size_t index)
{
    switch(index)
    {
        case 0: return (double)value->joint_1;
        case 1: return (double)value->joint_2;
        case 2: return (double)value->joint_3;
        case 3: return (double)value->joint_4;
        case 4: return (double)value->joint_5;
        case 5: return (double)value->joint_6;
        default: return NAN;
    }
}

/**
 * @brief Assign one representable scalar into a private candidate observation.
 * @details The enclosing constructor validates finite values and complete physical bounds before
 * committing its candidate. This internal helper changes only the selected component and supplies no
 * transport.
 * @return Zero after assignment, otherwise 22 for an invalid index or unrepresentable scalar.
 * @param value Complete selected original value; retain its storage and original units through return.
 * @param index Zero-based original declaration-order component index.
 * @param x Previously checked finite scalar in the selected component's original units.
 * @par Ownership
 * Borrowed owners remain caller-owned. No helper implicitly opens, closes, revokes or grants a
 * capability.
 */
static inline uint32_t uwvm_elephant_assign(uwvm_elephant_state* value, size_t index, double x)
{
    switch(index)
    {
        case 0:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_1 = (float)x;
            return 0;
        case 1:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_2 = (float)x;
            return 0;
        case 2:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_3 = (float)x;
            return 0;
        case 3:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_4 = (float)x;
            return 0;
        case 4:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_5 = (float)x;
            return 0;
        case 5:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_6 = (float)x;
            return 0;
        default: return 22;
    }
}
#elif UWVM_ELEPHANT_SELECTION == 27
# define UWVM_ELEPHANT_ROS_VERSION 2
# include <ros2/c/roswasm/ros2.h>
# define UWVM_ELEPHANT_BACKEND roswasmc_ros2_backend
typedef roswasmc_bounded_2_mycobot_interfaces_msg_MycobotAngles uwvm_elephant_state;
# define UWVM_ELEPHANT_STATE_DECODE roswasmc_bounded_2_mycobot_interfaces_msg_MycobotAngles_decode
# define UWVM_ELEPHANT_STATE_ENCODE roswasmc_bounded_2_mycobot_interfaces_msg_MycobotAngles_encode
# define UWVM_ELEPHANT_STATE_CAPACITY ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_MSG_MYCOBOTANGLES_MAX_WIRE_BYTES
# define UWVM_ELEPHANT_COMPONENTS 6

/**
 * @brief Read one original model component in its native declaration order.
 * @details This pure scalar view performs no frame or unit conversion. The selected compile-time model
 * fixes the exact number of components; the value pointer must be nonnull.
 * @return The selected component converted to double, or NaN for an out-of-range index.
 * @param value Complete selected original value; retain its storage and original units through return.
 * @param index Zero-based original declaration-order component index.
 * @par Ownership
 * Borrowed owners remain caller-owned. No helper implicitly opens, closes, revokes or grants a
 * capability.
 */
static inline double uwvm_elephant_component(uwvm_elephant_state const* value, size_t index)
{
    switch(index)
    {
        case 0: return (double)value->joint_1;
        case 1: return (double)value->joint_2;
        case 2: return (double)value->joint_3;
        case 3: return (double)value->joint_4;
        case 4: return (double)value->joint_5;
        case 5: return (double)value->joint_6;
        default: return NAN;
    }
}

/**
 * @brief Assign one representable scalar into a private candidate observation.
 * @details The enclosing constructor validates finite values and complete physical bounds before
 * committing its candidate. This internal helper changes only the selected component and supplies no
 * transport.
 * @return Zero after assignment, otherwise 22 for an invalid index or unrepresentable scalar.
 * @param value Complete selected original value; retain its storage and original units through return.
 * @param index Zero-based original declaration-order component index.
 * @param x Previously checked finite scalar in the selected component's original units.
 * @par Ownership
 * Borrowed owners remain caller-owned. No helper implicitly opens, closes, revokes or grants a
 * capability.
 */
static inline uint32_t uwvm_elephant_assign(uwvm_elephant_state* value, size_t index, double x)
{
    switch(index)
    {
        case 0:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_1 = (float)x;
            return 0;
        case 1:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_2 = (float)x;
            return 0;
        case 2:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_3 = (float)x;
            return 0;
        case 3:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_4 = (float)x;
            return 0;
        case 4:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_5 = (float)x;
            return 0;
        case 5:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_6 = (float)x;
            return 0;
        default: return 22;
    }
}
#elif UWVM_ELEPHANT_SELECTION == 28
# define UWVM_ELEPHANT_ROS_VERSION 2
# include <ros2/c/roswasm/ros2.h>
# define UWVM_ELEPHANT_BACKEND roswasmc_ros2_backend
typedef roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotAngles uwvm_elephant_state;
# define UWVM_ELEPHANT_STATE_DECODE roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotAngles_decode
# define UWVM_ELEPHANT_STATE_ENCODE roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotAngles_encode
# define UWVM_ELEPHANT_STATE_CAPACITY ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_MSG_MYCOBOTANGLES_MAX_WIRE_BYTES
# define UWVM_ELEPHANT_COMPONENTS 6

/**
 * @brief Read one original model component in its native declaration order.
 * @details This pure scalar view performs no frame or unit conversion. The selected compile-time model
 * fixes the exact number of components; the value pointer must be nonnull.
 * @return The selected component converted to double, or NaN for an out-of-range index.
 * @param value Complete selected original value; retain its storage and original units through return.
 * @param index Zero-based original declaration-order component index.
 * @par Ownership
 * Borrowed owners remain caller-owned. No helper implicitly opens, closes, revokes or grants a
 * capability.
 */
static inline double uwvm_elephant_component(uwvm_elephant_state const* value, size_t index)
{
    switch(index)
    {
        case 0: return (double)value->joint_1;
        case 1: return (double)value->joint_2;
        case 2: return (double)value->joint_3;
        case 3: return (double)value->joint_4;
        case 4: return (double)value->joint_5;
        case 5: return (double)value->joint_6;
        default: return NAN;
    }
}

/**
 * @brief Assign one representable scalar into a private candidate observation.
 * @details The enclosing constructor validates finite values and complete physical bounds before
 * committing its candidate. This internal helper changes only the selected component and supplies no
 * transport.
 * @return Zero after assignment, otherwise 22 for an invalid index or unrepresentable scalar.
 * @param value Complete selected original value; retain its storage and original units through return.
 * @param index Zero-based original declaration-order component index.
 * @param x Previously checked finite scalar in the selected component's original units.
 * @par Ownership
 * Borrowed owners remain caller-owned. No helper implicitly opens, closes, revokes or grants a
 * capability.
 */
static inline uint32_t uwvm_elephant_assign(uwvm_elephant_state* value, size_t index, double x)
{
    switch(index)
    {
        case 0:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_1 = (float)x;
            return 0;
        case 1:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_2 = (float)x;
            return 0;
        case 2:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_3 = (float)x;
            return 0;
        case 3:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_4 = (float)x;
            return 0;
        case 4:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_5 = (float)x;
            return 0;
        case 5:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_6 = (float)x;
            return 0;
        default: return 22;
    }
}
#elif UWVM_ELEPHANT_SELECTION == 29
# define UWVM_ELEPHANT_ROS_VERSION 2
# include <ros2/c/roswasm/ros2.h>
# define UWVM_ELEPHANT_BACKEND roswasmc_ros2_backend
typedef roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalAngles uwvm_elephant_state;
# define UWVM_ELEPHANT_STATE_DECODE roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalAngles_decode
# define UWVM_ELEPHANT_STATE_ENCODE roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalAngles_encode
# define UWVM_ELEPHANT_STATE_CAPACITY ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_MSG_MYPALANGLES_MAX_WIRE_BYTES
# define UWVM_ELEPHANT_COMPONENTS 4

/**
 * @brief Read one original model component in its native declaration order.
 * @details This pure scalar view performs no frame or unit conversion. The selected compile-time model
 * fixes the exact number of components; the value pointer must be nonnull.
 * @return The selected component converted to double, or NaN for an out-of-range index.
 * @param value Complete selected original value; retain its storage and original units through return.
 * @param index Zero-based original declaration-order component index.
 * @par Ownership
 * Borrowed owners remain caller-owned. No helper implicitly opens, closes, revokes or grants a
 * capability.
 */
static inline double uwvm_elephant_component(uwvm_elephant_state const* value, size_t index)
{
    switch(index)
    {
        case 0: return (double)value->joint_1;
        case 1: return (double)value->joint_2;
        case 2: return (double)value->joint_3;
        case 3: return (double)value->joint_4;
        default: return NAN;
    }
}

/**
 * @brief Assign one representable scalar into a private candidate observation.
 * @details The enclosing constructor validates finite values and complete physical bounds before
 * committing its candidate. This internal helper changes only the selected component and supplies no
 * transport.
 * @return Zero after assignment, otherwise 22 for an invalid index or unrepresentable scalar.
 * @param value Complete selected original value; retain its storage and original units through return.
 * @param index Zero-based original declaration-order component index.
 * @param x Previously checked finite scalar in the selected component's original units.
 * @par Ownership
 * Borrowed owners remain caller-owned. No helper implicitly opens, closes, revokes or grants a
 * capability.
 */
static inline uint32_t uwvm_elephant_assign(uwvm_elephant_state* value, size_t index, double x)
{
    switch(index)
    {
        case 0:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_1 = (float)x;
            return 0;
        case 1:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_2 = (float)x;
            return 0;
        case 2:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_3 = (float)x;
            return 0;
        case 3:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_4 = (float)x;
            return 0;
        default: return 22;
    }
}
#elif UWVM_ELEPHANT_SELECTION == 30
# define UWVM_ELEPHANT_ROS_VERSION 2
# include <ros2/c/roswasm/ros2.h>
# define UWVM_ELEPHANT_BACKEND roswasmc_ros2_backend
typedef roswasmc_bounded_2_ultraarm_p1_interfaces_msg_MycobotAngles uwvm_elephant_state;
# define UWVM_ELEPHANT_STATE_DECODE roswasmc_bounded_2_ultraarm_p1_interfaces_msg_MycobotAngles_decode
# define UWVM_ELEPHANT_STATE_ENCODE roswasmc_bounded_2_ultraarm_p1_interfaces_msg_MycobotAngles_encode
# define UWVM_ELEPHANT_STATE_CAPACITY ROSWASMC_BOUNDED_2_ULTRAARM_P1_INTERFACES_MSG_MYCOBOTANGLES_MAX_WIRE_BYTES
# define UWVM_ELEPHANT_COMPONENTS 4

/**
 * @brief Read one original model component in its native declaration order.
 * @details This pure scalar view performs no frame or unit conversion. The selected compile-time model
 * fixes the exact number of components; the value pointer must be nonnull.
 * @return The selected component converted to double, or NaN for an out-of-range index.
 * @param value Complete selected original value; retain its storage and original units through return.
 * @param index Zero-based original declaration-order component index.
 * @par Ownership
 * Borrowed owners remain caller-owned. No helper implicitly opens, closes, revokes or grants a
 * capability.
 */
static inline double uwvm_elephant_component(uwvm_elephant_state const* value, size_t index)
{
    switch(index)
    {
        case 0: return (double)value->joint_1;
        case 1: return (double)value->joint_2;
        case 2: return (double)value->joint_3;
        case 3: return (double)value->joint_4;
        default: return NAN;
    }
}

/**
 * @brief Assign one representable scalar into a private candidate observation.
 * @details The enclosing constructor validates finite values and complete physical bounds before
 * committing its candidate. This internal helper changes only the selected component and supplies no
 * transport.
 * @return Zero after assignment, otherwise 22 for an invalid index or unrepresentable scalar.
 * @param value Complete selected original value; retain its storage and original units through return.
 * @param index Zero-based original declaration-order component index.
 * @param x Previously checked finite scalar in the selected component's original units.
 * @par Ownership
 * Borrowed owners remain caller-owned. No helper implicitly opens, closes, revokes or grants a
 * capability.
 */
static inline uint32_t uwvm_elephant_assign(uwvm_elephant_state* value, size_t index, double x)
{
    switch(index)
    {
        case 0:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_1 = (float)x;
            return 0;
        case 1:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_2 = (float)x;
            return 0;
        case 2:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_3 = (float)x;
            return 0;
        case 3:
            if(fabs(x) > FLT_MAX)
                return 22;
            value->joint_4 = (float)x;
            return 0;
        default: return 22;
    }
}
#endif
/** Caller-owned whole-value storage. Serialize use of a borrowed capability. */
typedef struct uwvm_elephant_storage
{
    unsigned char bytes[UWVM_ELEPHANT_STATE_CAPACITY];
} uwvm_elephant_storage;

/**
 * @brief Check that writable storage cannot overwrite the borrowed capability owners.
 * @details Reject null context/backend/storage and overlapping or wrapped byte ranges before I/O.
 * Pointers must designate live C objects; this range check cannot prove object allocation or lifetime.
 * @return Nonzero only for disjoint live storage; zero means the enclosing operation must refuse.
 * @param cap Borrowed live capability/context/backend; serialize access and retain all owners through
 * return.
 * @param data Caller-owned writable range checked against every borrowed owner.
 * @param size Exact live writable range size in bytes; wrapped/overlapping ranges are refused.
 * @par Ownership
 * Borrowed owners remain caller-owned. No helper implicitly opens, closes, revokes or grants a
 * capability.
 */
static inline int uwvm_elephant_destination(roswasmc_capability const* cap, void const* data, size_t size)
{
    if(!cap || !cap->context || !cap->context->backend || !data)
        return 0;
    return !uwvm_bounded_overlap(data, size, cap, sizeof *cap) && !uwvm_bounded_overlap(data, size, cap->context, sizeof *cap->context) &&
           !uwvm_bounded_overlap(data, size, cap->context->backend, sizeof *cap->context->backend);
}

/**
 * @brief Construct a complete original observation under explicit finite component bounds.
 * @details Arrays contain exactly UWVM_ELEPHANT_COMPONENTS entries in declaration order. Validate every
 * input, bound and rounded float32 component before committing out. Retain original driver units; no
 * coordinate conversion or native publication occurs.
 * @return Zero after whole-value commit; 22 preserves out on any domain/bounds refusal.
 * @param values Exactly one finite original scalar per selected model component.
 * @param minimum Caller-reviewed finite lower bounds in the same units/order as values.
 * @param maximum Caller-reviewed finite upper bounds in the same units/order as values.
 * @param out Exclusive live whole-value output; the enclosing commit occurs only after complete
 * acceptance.
 * @par Ownership
 * Borrowed owners remain caller-owned. No helper implicitly opens, closes, revokes or grants a
 * capability.
 */
static inline uint32_t uwvm_elephant_make_observation(double const* values, double const* minimum, double const* maximum, uwvm_elephant_state* out)
{
    uwvm_elephant_state next = {0};
    if(!values || !minimum || !maximum || !out)
        return 22;
    for(size_t i = 0; i < UWVM_ELEPHANT_COMPONENTS; ++i)
    {
        if(!isfinite(values[i]) || !isfinite(minimum[i]) || !isfinite(maximum[i]) || minimum[i] > maximum[i] || values[i] < minimum[i] ||
           values[i] > maximum[i])
            return 22;
        if(uwvm_elephant_assign(&next, i, values[i]))
            return 22;
        double rounded = uwvm_elephant_component(&next, i);
        if(!isfinite(rounded) || rounded < minimum[i] || rounded > maximum[i])
            return 22;
    }
    *out = next;
    return 0;
}

/**
 * @brief Poll once and commit one complete original observation after whole-value validation.
 * @details Borrow an already opened, subscribed exact ROS capability. Preserve every original field and
 * selected model count. Output and scratch must be disjoint from each other and all capability owners.
 * Idle 11, denial 13 and capacity 90 do not publish a value, grow storage or trigger a retry.
 * @return Original poll errno or codec/model refusal; zero commits the whole value. The caller retains
 * the close obligation independently from this result.
 * @param cap Borrowed live capability/context/backend; serialize access and retain all owners through
 * return.
 * @param out Exclusive live whole-value output; the enclosing commit occurs only after complete
 * acceptance.
 * @param scratch Exclusive bounded caller scratch; its bytes become unusable as a value on refusal.
 * @par Ownership
 * Borrowed owners remain caller-owned. No helper implicitly opens, closes, revokes or grants a
 * capability.
 */
static inline uint32_t uwvm_elephant_poll_state(roswasmc_capability const* cap, uwvm_elephant_state* out, uwvm_elephant_storage* scratch)
{
    roswasmc_result r;
    if(!cap || !cap->context || !cap->context->backend || cap->context->backend->version != UWVM_ELEPHANT_ROS_VERSION || !out || !scratch ||
       uwvm_bounded_overlap(out, sizeof *out, scratch, sizeof *scratch) || !uwvm_elephant_destination(cap, out, sizeof *out) ||
       !uwvm_elephant_destination(cap, scratch, sizeof *scratch))
        return 22;
    r = roswasmc_poll(cap, scratch->bytes, sizeof scratch->bytes);
    if(r.error)
        return r.error;
    if(!r.has_length || r.length > sizeof scratch->bytes)
        return 22;
    return UWVM_ELEPHANT_STATE_DECODE(scratch->bytes, (size_t)r.length, out);
}
#endif
