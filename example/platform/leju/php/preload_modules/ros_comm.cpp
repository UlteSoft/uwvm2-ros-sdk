/** @file ros_comm.cpp
 * @brief Use the real C++ capability owner inside its private shared module.
 * @details Placement construction/retirement is explicit. Scalar calls neither
 * expose this owner nor transfer any codec or standard-library pointer.
 */
#include <preload_api.h>
#include <new>
#if PRELOAD_ROS_VERSION == 1
#include <ros1/cpp/roswasm.hpp>
using Owner = uwvm_ros1::freestanding_capability;
#else
#include <ros2/cpp/roswasm.hpp>
using Owner = uwvm_ros2::freestanding_capability;
#endif
#include <ros/c/roswasm/roswasmc.h>
#include <ros/c/roswasm/codec.h>
alignas(Owner) static unsigned char storage[sizeof(Owner)];
static Owner* owner;

MODULE_EXPORT("begin") uint32_t ros_begin(void)
{
    if (owner)
    {
        return 22;
    }
    owner = new (storage) Owner();
    uint32_t result = owner->open("sample", 6);
    if (result)
    {
        owner->~Owner();
        owner = nullptr;
    }
    return result;
}

MODULE_EXPORT("send") uint32_t ros_send(int32_t value)
{
    if (!owner || value < 0 || value > 99)
    {
        return 22;
    }
    char text[] = "value=00";
    text[6] = static_cast<char>('0' + value / 10);
    text[7] = static_cast<char>('0' + value % 10);
    uint8_t wire[32];
    size_t size = 0;
    uint32_t result = roswasmc_encode_string(roswasmc_string_init(text, 8), wire, sizeof wire, &size);
    return result ? result : owner->publish(wire, size);
}

MODULE_EXPORT("end") uint32_t ros_end(void)
{
    if (!owner)
    {
        return 22;
    }
    uint32_t result = owner->close();
    owner->~Owner();
    owner = nullptr;
    return result;
}
