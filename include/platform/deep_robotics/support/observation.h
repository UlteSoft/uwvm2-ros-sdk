/**
 * @file observation.h
 * @brief Retain one real native ROS subscription for a bounded complete-value read.
 * @details The platform facade selects the exact original ROS generation.
 * Caller storage remains borrowed through return. No publisher, service,
 * hardware command, synthetic response, or background task is created.
 */
#ifndef UWVM_VENDOR_CATALOG_OBSERVATION_H
#define UWVM_VENDOR_CATALOG_OBSERVATION_H

#if UWVM_VENDOR_ROS_VERSION == 1
# include <ros1/c/roswasm.h>
#elif UWVM_VENDOR_ROS_VERSION == 2
# include <ros2/c/roswasm.h>
#else
# error "Select the platform's exact original ROS generation before observation.h"
#endif
#include <ros/c/command.h>
#include <stddef.h>
#include <stdint.h>
#include <string.h>

/**
 * @brief Initialize every member of a C or C++ aggregate to its zero value.
 * @details C uses its standard leading-zero aggregate initializer; C++ uses
 * empty aggregate initialization, including nested arrays and record members.
 * This macro does not apply the optional native ROS field defaults.
 */
#ifndef UWVM_ROS_C_ZERO_INITIALIZER
# if defined(__cplusplus)
#  define UWVM_ROS_C_ZERO_INITIALIZER                                                                                                                          \
      {                                                                                                                                                        \
      }
# else
#  define UWVM_ROS_C_ZERO_INITIALIZER {0}
# endif
#endif

/**
 * @brief Keep primary operation, complete data, and cleanup outcomes independent.
 * @details This value owns no native object. A response exists only when
 * response_present is true. Cleanup is attempted once after a successful open,
 * including subscription, poll, and complete decoding failures.
 */
typedef struct uwvm_vendor_observation
{
    uint32_t primary;     /**< @brief First open, subscription, poll, wait, or decoding error. */
    uint32_t cleanup;     /**< @brief Original once-only close result when cleanup_present is true. */
    uint32_t polls;       /**< @brief Number of actual native event polls, including idle results. */
    int cleanup_present;  /**< @brief True when an acquired owner reached its single close. */
    int response_present; /**< @brief True only after one complete message passed decoding. */
    int rpc_present;      /**< @brief True when an actual native event poll returned. */
    roswasmc_result rpc;  /**< @brief Last original poll status and complete required-length facts. */
} uwvm_vendor_observation;

/**
 * @brief Decode one exact complete record into disjoint caller-owned storage.
 * @details The platform callback commits output only on success and borrows
 * the wire span until return. Zero denotes complete success.
 */
typedef uint32_t (*uwvm_vendor_decoder)(void const*, size_t, void*);

/**
 * @brief Detect overlapping or overflowing caller object ranges.
 * @param[in] first First live borrowed object, or null for zero first_size.
 * @param first_size Exact first object extent in bytes.
 * @param[in] second Second borrowed object, or null for zero second_size.
 * @param second_size Exact second object extent in bytes.
 * @return Nonzero for overlap, nonempty null storage, or arithmetic overflow.
 */
inline static int uwvm_vendor_overlap(void const* first, size_t first_size, void const* second, size_t second_size)
{
    uintptr_t a = (uintptr_t)first;
    uintptr_t b = (uintptr_t)second;
    if((first_size && !first) || (second_size && !second) || first_size > UINTPTR_MAX - a || second_size > UINTPTR_MAX - b)
    {
        return 1;
    }
    return first_size && second_size && a < b + second_size && b < a + first_size;
}

/**
 * @brief Receive one complete native callback through an existing policy alias.
 * @param[in] alias NUL-terminated policy alias of 1..255 bytes, borrowed until return.
 * @param[out] output Complete platform record; unchanged on every decode failure.
 * @param output_size Exact platform record storage size for overlap validation.
 * @param[out] wire Private disjoint scratch storage, at least capacity bytes.
 * @param capacity Exact selected maximum complete canonical message size.
 * @param decode Platform-owned complete transactional decoder; never retained.
 * @return Independent primary, cleanup, last poll, and complete-response facts.
 * @details A successful open is closed exactly once. Only idle error 11 permits
 * another event poll. At most 250 polls and 249 twenty-millisecond monotonic
 * waits occur. No failed native effect is replayed. No input is retained.
 */
inline static uwvm_vendor_observation
    uwvm_vendor_observe(char const* alias, void* output, size_t output_size, void* wire, size_t capacity, uwvm_vendor_decoder decode)
{
    uwvm_vendor_observation facts;
    memset(&facts, 0, sizeof facts);
    size_t alias_size = 0;
    if(alias)
    {
        while(alias_size < 256 && alias[alias_size])
        {
            ++alias_size;
        }
    }
    if(!alias_size || alias_size == 256 || !output || !output_size || !wire || !decode || uwvm_vendor_overlap(output, output_size, wire, capacity) ||
       uwvm_vendor_overlap(output, output_size, alias, alias_size + 1))
    {
        facts.primary = 22;
        return facts;
    }
#if UWVM_VENDOR_ROS_VERSION == 1
    roswasmc_context context = {roswasmc_ros1_backend()};
#else
    roswasmc_context context = {roswasmc_ros2_backend()};
#endif
    if(context.backend->abi_version() != 1)
    {
        facts.primary = 95;
        return facts;
    }
    roswasmc_capability owner;
    roswasmc_capability_init(&owner, &context);
    facts.primary = roswasmc_open(&owner, alias, alias_size);
    if(facts.primary)
    {
        return facts;
    }
    facts.primary = roswasmc_subscribe(&owner);
    for(uint32_t index = 0; !facts.primary && index != 250; ++index)
    {
        facts.rpc = roswasmc_poll(&owner, wire, capacity);
        facts.rpc_present = 1;
        ++facts.polls;
        facts.primary = facts.rpc.error;
        if(facts.primary == 11 && index + 1 != 250)
        {
            facts.primary = uwvm_ros_command_pause(20000000);
            continue;
        }
        if(!facts.primary)
        {
            if(!facts.rpc.has_length || facts.rpc.length > capacity)
            {
                facts.primary = 22;
            }
            else
            {
                facts.primary = decode(wire, (size_t)facts.rpc.length, output);
                facts.response_present = facts.primary == 0;
            }
        }
        break;
    }
    facts.cleanup_present = 1;
    facts.cleanup = roswasmc_close(&owner);
    return facts;
}

#endif
