/**
 * @file observation.h
 * @brief Observe complete source-derived deep_robotics values with explicit ownership.
 * @details Each call uses one user-granted exact-type alias and closes once.
 * Only idle polls repeat; no native type identity or physical command is fabricated.
 */
#ifndef UWVM_DEEP_ROBOTICS_OBSERVATION_H
#define UWVM_DEEP_ROBOTICS_OBSERVATION_H
#include <deep_robotics/c/ros2/records.h>
#define UWVM_VENDOR_ROS_VERSION 2
#include <deep_robotics/support/observation.h>

/** @brief Decode exactly one full drdds/msg/ImuDataValue into transactional output.
 * @param bytes Borrowed complete canonical data. @param size Active byte count.
 * @param output Exclusive typed record storage; unchanged on refusal.
 * @return Original local codec errno; performs no ROS operation. */
inline static uint32_t deep_robotics_decode_imu(void const* bytes, size_t size, void* output)
{
    return roswasmc_bounded_2_drdds_msg_ImuDataValue_decode(bytes, size, (roswasmc_bounded_2_drdds_msg_ImuDataValue*)output);
}

/** @brief Observe every original drdds/msg/ImuDataValue field.
 * @param alias Existing NUL-terminated policy alias, 1..255 UTF-8 bytes.
 * @param output Complete caller-owned record, committed only after full decode.
 * @return Independent primary, cleanup, poll and length facts.
 * @details At most 250 polls with a granted 20 ms timer between idle results.
 * Caller serializes storage; no pointer is retained and no command is sent. */
inline static uwvm_vendor_observation deep_robotics_wait_imu(char const* alias, roswasmc_bounded_2_drdds_msg_ImuDataValue* output)
{
    unsigned char scratch[36];
    return uwvm_vendor_observe(alias, output, sizeof *output, scratch, sizeof scratch, deep_robotics_decode_imu);
}

/** @brief Decode exactly one full drdds/msg/JointData into transactional output.
 * @param bytes Borrowed complete canonical data. @param size Active byte count.
 * @param output Exclusive typed record storage; unchanged on refusal.
 * @return Original local codec errno; performs no ROS operation. */
inline static uint32_t deep_robotics_decode_joint(void const* bytes, size_t size, void* output)
{
    return roswasmc_bounded_2_drdds_msg_JointData_decode(bytes, size, (roswasmc_bounded_2_drdds_msg_JointData*)output);
}

/** @brief Observe every original drdds/msg/JointData field.
 * @param alias Existing NUL-terminated policy alias, 1..255 UTF-8 bytes.
 * @param output Complete caller-owned record, committed only after full decode.
 * @return Independent primary, cleanup, poll and length facts.
 * @details At most 250 polls with a granted 20 ms timer between idle results.
 * Caller serializes storage; no pointer is retained and no command is sent. */
inline static uwvm_vendor_observation deep_robotics_wait_joint(char const* alias, roswasmc_bounded_2_drdds_msg_JointData* output)
{
    unsigned char scratch[28];
    return uwvm_vendor_observe(alias, output, sizeof *output, scratch, sizeof scratch, deep_robotics_decode_joint);
}

/** @brief Decode exactly one full drdds/msg/RobotStatus into transactional output.
 * @param bytes Borrowed complete canonical data. @param size Active byte count.
 * @param output Exclusive typed record storage; unchanged on refusal.
 * @return Original local codec errno; performs no ROS operation. */
inline static uint32_t deep_robotics_decode_robot_status(void const* bytes, size_t size, void* output)
{
    return roswasmc_bounded_2_drdds_msg_RobotStatus_decode(bytes, size, (roswasmc_bounded_2_drdds_msg_RobotStatus*)output);
}

/** @brief Observe every original drdds/msg/RobotStatus field.
 * @param alias Existing NUL-terminated policy alias, 1..255 UTF-8 bytes.
 * @param output Complete caller-owned record, committed only after full decode.
 * @return Independent primary, cleanup, poll and length facts.
 * @details At most 250 polls with a granted 20 ms timer between idle results.
 * Caller serializes storage; no pointer is retained and no command is sent. */
inline static uwvm_vendor_observation deep_robotics_wait_robot_status(char const* alias, roswasmc_bounded_2_drdds_msg_RobotStatus* output)
{
    unsigned char scratch[6845];
    return uwvm_vendor_observe(alias, output, sizeof *output, scratch, sizeof scratch, deep_robotics_decode_robot_status);
}

#endif
