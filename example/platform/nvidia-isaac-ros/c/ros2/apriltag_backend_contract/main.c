/* SPDX-License-Identifier: Apache-2.0
 * Argument-driven local contract example. It creates no ROS entity or grant.
 * Run in uwvm2-ros Wasm with explicitly supplied stdio permissions.
 */
#include <nvidia-isaac-ros/c/cpu_sensor_contract.h>
#include <errno.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

static int number(const char* text, unsigned long maximum, unsigned long* out)
{
    char* end;
    unsigned long value;
    const char* p;
    if(!text || !*text)
        return 22;
    for(p = text; *p; ++p)
        if(*p < '0' || *p > '9')
            return 22;
    errno = 0;
    value = strtoul(text, &end, 10);
    if(errno || *end || value > maximum)
        return 22;
    *out = value;
    return 0;
}

static int pair_case(int argc, char** argv)
{
    struct uwvm_nvidia_cpu_image image;
    struct uwvm_nvidia_camera_info info;
    unsigned char payload[1] = {0};
    double coefficients[8] = {0};
    unsigned long delta, count, quota, rectify, nonfinite, expected;
    uint64_t nan_bits = UINT64_C(0x7ff8000000000001);
    int result;
    if(argc != 8 || number(argv[2], 1, &delta) ||
       number(argv[3], 8, &count) || number(argv[4], 8, &quota) ||
       number(argv[5], 2, &rectify) || number(argv[6], 1, &nonfinite) ||
       number(argv[7], 255, &expected))
        return 22;
    memset(&image, 0, sizeof image);
    memset(&info, 0, sizeof info);
    image.header.stamp.sec = -1;
    image.header.stamp.nanosec = 2;
    image.header.frame_id.data = (const unsigned char*)"camera";
    image.header.frame_id.size = 6;
    image.width = image.height = 1;
    image.encoding.data = (const unsigned char*)"mono8";
    image.encoding.size = 5;
    image.step = 1;
    image.data.data = payload;
    image.data.size = sizeof payload;
    info.header = image.header;
    info.header.stamp.sec += (int32_t)delta;
    info.width = info.height = 1;
    info.distortion_model.data = (const unsigned char*)"future_model";
    info.distortion_model.size = 12;
    info.d.data = coefficients;
    info.d.size = (size_t)count;
    info.roi.do_rectify = (uint8_t)rectify;
    if(nonfinite)
    {
        if(sizeof info.k[0] != sizeof nan_bits)
            return 95;
        memcpy(&info.k[0], &nan_bits, sizeof nan_bits);
    }
    result = uwvm_nvidia_validate_apriltag_exact_time_pair(
        &image, &info, sizeof payload, (size_t)quota, 64,
        UWVM_NVIDIA_APRILTAG_VPI_COLOR_MONO);
    if(printf("pair_delta=%lu coefficients=%lu quota=%lu rectify=%lu nonfinite=%lu status=%d\n",
              delta, count, quota, rectify, nonfinite, result) < 0)
        return 5;
    return result == (int)expected ? 0 : 1;
}

static int family_case(int argc, char** argv)
{
    struct uwvm_nvidia_text_view family;
    enum uwvm_nvidia_apriltag_image_profile profile;
    unsigned long expected;
    int result;
    if(argc != 5 || number(argv[4], 255, &expected))
        return 22;
    profile = (enum uwvm_nvidia_apriltag_image_profile)0;
    if(strcmp(argv[2], "cuda") == 0)
        profile = UWVM_NVIDIA_APRILTAG_CUDA_RGB_BGR;
    else if(strcmp(argv[2], "vpi") == 0)
        profile = UWVM_NVIDIA_APRILTAG_VPI_COLOR_MONO;
    family.data = (const unsigned char*)argv[3];
    family.size = strlen(argv[3]);
    result = uwvm_nvidia_validate_apriltag_tag_family(family, 64, profile);
    if(printf("profile=%s family=%s status=%d\n", argv[2], argv[3], result) < 0)
        return 5;
    return result == (int)expected ? 0 : 1;
}

int main(int argc, char** argv)
{
    unsigned char payload[64] = {0};
    unsigned long step, bytes, expected;
    struct uwvm_nvidia_cpu_image image;
    enum uwvm_nvidia_apriltag_image_profile profile;
    int result;
    if(argc > 1 && strcmp(argv[1], "family") == 0)
        return family_case(argc, argv);
    if(argc > 1 && strcmp(argv[1], "pair") == 0)
        return pair_case(argc, argv);
    if(argc != 6 || number(argv[3], 64, &step) ||
       number(argv[4], sizeof payload, &bytes) ||
       number(argv[5], 255, &expected))
        return 22;
    memset(&image, 0, sizeof image);
    image.header.frame_id.data = (const unsigned char*)"camera";
    image.header.frame_id.size = 6;
    image.width = image.height = 1;
    image.encoding.data = (const unsigned char*)argv[2];
    image.encoding.size = strlen(argv[2]);
    image.step = (uint32_t)step;
    image.data.data = payload;
    image.data.size = (size_t)bytes;
    profile = (enum uwvm_nvidia_apriltag_image_profile)0;
    if(strcmp(argv[1], "cuda") == 0)
        profile = UWVM_NVIDIA_APRILTAG_CUDA_RGB_BGR;
    else if(strcmp(argv[1], "vpi") == 0)
        profile = UWVM_NVIDIA_APRILTAG_VPI_COLOR_MONO;
    result = uwvm_nvidia_validate_apriltag_image_profile(&image, sizeof payload, 64, profile);
    if(printf("profile=%s encoding=%s step=%lu bytes=%lu status=%d\n",
              argv[1], argv[2], step, bytes, result) < 0)
        return 5;
    return result == (int)expected ? 0 : 1;
}
