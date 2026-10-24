/**
 * @file payload_static.h
 * @brief Expose one C ABI function supplied by the genuine C++ static archive.
 * @details This header and its scale definition propagate through ordinary
 * public Xmake dependency edges. The archive is a build input, not a preload.
 */
#ifndef FANUC_PAYLOAD_STATIC_H
#define FANUC_PAYLOAD_STATIC_H
#include <stdint.h>
#ifdef __cplusplus
extern "C"
{
#endif
    /**
     * @brief Derive the fixture's payload schedule from a caller-owned scalar.
     * @param seed Small dimensionless input;2 selects schedule7.
     * @return The exact unsigned arithmetic result, without any ROS operation.
     */
    uint32_t payload_request_schedule(uint32_t seed);
#ifdef __cplusplus
}
#endif
#endif
