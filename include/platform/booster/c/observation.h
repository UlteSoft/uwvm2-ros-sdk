/**
 * @file observation.h
 * @brief Observe complete source-derived booster values with explicit ownership.
 * @details Each call uses one user-granted exact-type alias and closes once.
 * Only idle polls repeat; no native type identity or physical command is fabricated.
 */
#ifndef UWVM_BOOSTER_OBSERVATION_H
#define UWVM_BOOSTER_OBSERVATION_H
#include <booster/c/ros2/records.h>
#define UWVM_VENDOR_ROS_VERSION 2
#include <deep_robotics/support/observation.h>

/** @brief Decode exactly one full booster_interface/msg/LowState into transactional output.
 * @param bytes Borrowed complete canonical data. @param size Active byte count.
 * @param output Exclusive typed record storage; unchanged on refusal.
 * @return Original local codec errno; performs no ROS operation. */
inline static uint32_t booster_decode_low_state(void const* bytes, size_t size, void* output)
{
    return roswasmc_bounded_2_booster_interface_msg_LowState_decode(bytes, size, (roswasmc_bounded_2_booster_interface_msg_LowState*)output);
}

/** @brief Observe every original booster_interface/msg/LowState field.
 * @param alias Existing NUL-terminated policy alias, 1..255 UTF-8 bytes.
 * @param output Complete caller-owned record, committed only after full decode.
 * @return Independent primary, cleanup, poll and length facts.
 * @details At most 250 polls with a granted 20 ms timer between idle results.
 * Caller serializes storage; no pointer is retained and no command is sent. */
inline static uwvm_vendor_observation booster_wait_low_state(char const* alias, roswasmc_bounded_2_booster_interface_msg_LowState* output)
{
    unsigned char scratch[1784];
    return uwvm_vendor_observe(alias, output, sizeof *output, scratch, sizeof scratch, booster_decode_low_state);
}

/** @brief Decode exactly one full booster_interface/msg/RemoteControllerState into transactional output.
 * @param bytes Borrowed complete canonical data. @param size Active byte count.
 * @param output Exclusive typed record storage; unchanged on refusal.
 * @return Original local codec errno; performs no ROS operation. */
inline static uint32_t booster_decode_remote_controller(void const* bytes, size_t size, void* output)
{
    return roswasmc_bounded_2_booster_interface_msg_RemoteControllerState_decode(bytes,
                                                                                 size,
                                                                                 (roswasmc_bounded_2_booster_interface_msg_RemoteControllerState*)output);
}

/** @brief Observe every original booster_interface/msg/RemoteControllerState field.
 * @param alias Existing NUL-terminated policy alias, 1..255 UTF-8 bytes.
 * @param output Complete caller-owned record, committed only after full decode.
 * @return Independent primary, cleanup, poll and length facts.
 * @details At most 250 polls with a granted 20 ms timer between idle results.
 * Caller serializes storage; no pointer is retained and no command is sent. */
inline static uwvm_vendor_observation booster_wait_remote_controller(char const* alias, roswasmc_bounded_2_booster_interface_msg_RemoteControllerState* output)
{
    unsigned char scratch[42];
    return uwvm_vendor_observe(alias, output, sizeof *output, scratch, sizeof scratch, booster_decode_remote_controller);
}

/** @brief Decode exactly one full booster_interface/msg/FallDownState into transactional output.
 * @param bytes Borrowed complete canonical data. @param size Active byte count.
 * @param output Exclusive typed record storage; unchanged on refusal.
 * @return Original local codec errno; performs no ROS operation. */
inline static uint32_t booster_decode_fall_state(void const* bytes, size_t size, void* output)
{
    return roswasmc_bounded_2_booster_interface_msg_FallDownState_decode(bytes, size, (roswasmc_bounded_2_booster_interface_msg_FallDownState*)output);
}

/** @brief Observe every original booster_interface/msg/FallDownState field.
 * @param alias Existing NUL-terminated policy alias, 1..255 UTF-8 bytes.
 * @param output Complete caller-owned record, committed only after full decode.
 * @return Independent primary, cleanup, poll and length facts.
 * @details At most 250 polls with a granted 20 ms timer between idle results.
 * Caller serializes storage; no pointer is retained and no command is sent. */
inline static uwvm_vendor_observation booster_wait_fall_state(char const* alias, roswasmc_bounded_2_booster_interface_msg_FallDownState* output)
{
    unsigned char scratch[5];
    return uwvm_vendor_observe(alias, output, sizeof *output, scratch, sizeof scratch, booster_decode_fall_state);
}

#endif
