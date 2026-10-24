/* SPDX-License-Identifier: Apache-2.0
 * Complete CPU-visible authored image value. No ROS import or GPU access.
 */
#include <nvidia-isaac-ros/c/cpu_sensor_contract.h>
#include <stdio.h>
#include <string.h>

/**
 * @brief Copy and display a complete padded RGB CPU image through ordinary stdio.
 * @details The independent 24-byte copy retains signed timestamp, frame/encoding,
 * dimensions, endian flag, 12-byte stride and every padding byte. Uses the actual
 * C99+ borrowed-view validator. No ROS, GPU, network, clock or device operation
 * occurs; the Wasm command needs only its admitted ordinary stdout write right.
 * The caller supplies a finite process owner. This is an authored CPU value
 * application, not an AprilTag detector or full official example equivalent.
 * @return 0 after complete metadata/byte output and flush, 5 on stdio failure,
 * or the exact complete-value validator refusal.
 * @see uwvm_nvidia_validate_apriltag_cpu_image
 * @see README.xmake.md
 */
int main(void)
{
    static const unsigned char frame[] = "cpu_optical";
    static const unsigned char encoding[] = "rgb8";
    static const unsigned char borrowed[24] = {255, 0, 0, 0, 255, 0, 0, 0, 255, 91, 92, 93, 255, 255, 255, 127, 127, 127, 0, 0, 0, 94, 95, 96};
    unsigned char owned[sizeof borrowed];
    struct uwvm_nvidia_cpu_image value = {
        {{-1, 999999999u}, {frame, sizeof frame - 1}},
        2,
        3,
        {encoding,         sizeof encoding - 1      },
        0,
        12,
        {owned,            sizeof owned             }
    };
    size_t index;
    int status;
    memcpy(owned, borrowed, sizeof owned); /* includes every row-padding byte */
    status = uwvm_nvidia_validate_apriltag_cpu_image(&value, sizeof owned, 64);
    if(status)
        return status;
    if(printf("sec=%ld nanosec=%lu frame_id=%.*s height=%lu width=%lu encoding=%.*s bigendian=%u step=%lu bytes=%lu\n",
              (long)value.header.stamp.sec,
              (unsigned long)value.header.stamp.nanosec,
              (int)value.header.frame_id.size,
              (const char*)value.header.frame_id.data,
              (unsigned long)value.height,
              (unsigned long)value.width,
              (int)value.encoding.size,
              (const char*)value.encoding.data,
              (unsigned)value.is_bigendian,
              (unsigned long)value.step,
              (unsigned long)value.data.size) < 0)
        return 5;
    for(index = 0; index < value.data.size; ++index)
        if(printf("%lu:%u\n", (unsigned long)index, (unsigned)value.data.data[index]) < 0)
            return 5;
    return fflush(stdout) == 0 ? 0 : 5;
}
