/**
 * @file observation.h
 * @brief Observe complete source-derived limx values with explicit ownership.
 * @details Each call uses one user-granted exact-type alias and closes once.
 * Only idle polls repeat; no native type identity or physical command is fabricated.
 */
#ifndef UWVM_LIMX_OBSERVATION_H
#define UWVM_LIMX_OBSERVATION_H
#include <limx/c/ros2/records.h>
#define UWVM_VENDOR_ROS_VERSION 2
#include <deep_robotics/support/observation.h>

/** @brief Decode exactly one full uwvm_limx_bridge/msg/ImuData into transactional output.
 * @param bytes Borrowed complete canonical data. @param size Active byte count.
 * @param output Exclusive typed record storage; unchanged on refusal.
 * @return Original local codec errno; performs no ROS operation. */
inline static uint32_t limx_decode_imu(void const* bytes, size_t size, void* output)
{
    return roswasmc_bounded_2_uwvm_limx_bridge_msg_ImuData_decode(bytes, size, (roswasmc_bounded_2_uwvm_limx_bridge_msg_ImuData*)output);
}

/** @brief Observe every original uwvm_limx_bridge/msg/ImuData field.
 * @param alias Existing NUL-terminated policy alias, 1..255 UTF-8 bytes.
 * @param output Complete caller-owned record, committed only after full decode.
 * @return Independent primary, cleanup, poll and length facts.
 * @details At most 250 polls with a granted 20 ms timer between idle results.
 * Caller serializes storage; no pointer is retained and no command is sent. */
inline static uwvm_vendor_observation limx_wait_imu(char const* alias, roswasmc_bounded_2_uwvm_limx_bridge_msg_ImuData* output)
{
    unsigned char scratch[260];
    return uwvm_vendor_observe(alias, output, sizeof *output, scratch, sizeof scratch, limx_decode_imu);
}

/** @brief Decode exactly one full uwvm_limx_bridge/msg/JointState into transactional output.
 * @param bytes Borrowed complete canonical data. @param size Active byte count.
 * @param output Exclusive typed record storage; unchanged on refusal.
 * @return Original local codec errno; performs no ROS operation. */
inline static uint32_t limx_decode_joint_state(void const* bytes, size_t size, void* output)
{
    return roswasmc_bounded_2_uwvm_limx_bridge_msg_JointState_decode(bytes, size, (roswasmc_bounded_2_uwvm_limx_bridge_msg_JointState*)output);
}

/** @brief Observe every original uwvm_limx_bridge/msg/JointState field.
 * @param alias Existing NUL-terminated policy alias, 1..255 UTF-8 bytes.
 * @param output Complete caller-owned record, committed only after full decode.
 * @return Independent primary, cleanup, poll and length facts.
 * @details At most 250 polls with a granted 20 ms timer between idle results.
 * Caller serializes storage; no pointer is retained and no command is sent. */
inline static uwvm_vendor_observation limx_wait_joint_state(char const* alias, roswasmc_bounded_2_uwvm_limx_bridge_msg_JointState* output)
{
    unsigned char scratch[5544];
    return uwvm_vendor_observe(alias, output, sizeof *output, scratch, sizeof scratch, limx_decode_joint_state);
}

/** @brief Decode exactly one full uwvm_limx_bridge/msg/JointCmdLimx into transactional output.
 * @param bytes Borrowed complete canonical data. @param size Active byte count.
 * @param output Exclusive typed record storage; unchanged on refusal.
 * @return Original local codec errno; performs no ROS operation. */
inline static uint32_t limx_decode_joint_command(void const* bytes, size_t size, void* output)
{
    return roswasmc_bounded_2_uwvm_limx_bridge_msg_JointCmdLimx_decode(bytes, size, (roswasmc_bounded_2_uwvm_limx_bridge_msg_JointCmdLimx*)output);
}

/** @brief Observe every original uwvm_limx_bridge/msg/JointCmdLimx field.
 * @param alias Existing NUL-terminated policy alias, 1..255 UTF-8 bytes.
 * @param output Complete caller-owned record, committed only after full decode.
 * @return Independent primary, cleanup, poll and length facts.
 * @details At most 250 polls with a granted 20 ms timer between idle results.
 * Caller serializes storage; no pointer is retained and no command is sent. */
inline static uwvm_vendor_observation limx_wait_joint_command(char const* alias, roswasmc_bounded_2_uwvm_limx_bridge_msg_JointCmdLimx* output)
{
    unsigned char scratch[5940];
    return uwvm_vendor_observe(alias, output, sizeof *output, scratch, sizeof scratch, limx_decode_joint_command);
}

#endif
