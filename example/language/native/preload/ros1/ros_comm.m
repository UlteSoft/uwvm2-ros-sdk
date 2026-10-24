/**
 * @file ros_comm.m
 * @brief Publish a canonical String using only this Objective-C module's owner.
 * @details Pointer/length operands always reference this module's own memory.
 * The scalar input is formatted here. No native handle leaves this module.
 */
#include <language/native/abi.h>
#include <stdint.h>

/** @brief Return original open/publish/close status, with deterministic cleanup. */
uint32_t ros_comm_publish(uint32_t value)
{
    char const* encoding = @encode(unsigned long long);
    if (encoding[0] != 'Q')
        return 102;
    static unsigned char const alias[] = "library_pub";
    unsigned long long owner = UINT64_C(0xfedcba9876543210);
    uint32_t status = nl_open(alias, sizeof(alias) - 1, &owner);
    if (status != 0)
        return owner == UINT64_C(0xfedcba9876543210) ? status : 103;
    unsigned char reversed[10];
    unsigned int extent = 0;
    do
    {
        reversed[extent++] = (unsigned char)('0' + value % 10);
        value /= 10;
    } while (value);
    unsigned char wire[14] = {0};
    wire[0] = (unsigned char)extent;
    for (unsigned int index = 0; index < extent; ++index)
        wire[4 + index] = reversed[extent - index - 1];
    /* The first send creates the ROS1 publisher and starts TCPROS discovery. */
    status = nl_publish(owner, wire, extent + 4);
    if (status == 0)
        status = nl_pause(1000);
    if (status == 0)
        status = nl_publish(owner, wire, extent + 4);
    uint32_t cleanup = nl_close(owner);
    return status != 0 ? status : cleanup;
}
