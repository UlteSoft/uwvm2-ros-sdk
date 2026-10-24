/** @file main.c
 * @brief Coordinate four real Core modules through their public scalar ABI.
 * @details main has default WASI and no ROS authority. IO alone has an extra
 * monotonic-clock grant; algorithm has no extra WASI rights; ros_comm alone
 * receives the explicit original-type subscription alias.
 */
#include "array_modules.h"
#include <ros2/c/roswasm/ros2.h>
#include <string.h>

/** @brief Probe direct main-module ROS acquisition; an independently denied result is 13. */
static uint32_t probe_main_ros(void)
{
    roswasmc_context context = {roswasmc_ros2_backend()};
    roswasmc_capability owner;
    roswasmc_capability_init(&owner, &context);
    uint32_t error = roswasmc_open(&owner, "sample", 6);
    if (!error)
    {
        (void)roswasmc_close(&owner);
    }
    return error;
}

/** @brief Preserve the first local/reporting failure without masking the original transport status. */
static void remember(uint32_t* first, uint32_t error)
{
    if (!*first && error)
    {
        *first = error;
    }
}

/**
 * @brief Receive and independently process one complete original Array.
 * @param argc Exactly three: program, operator alias and mode.
 * @param argv Borrowed WASI arguments; mode is 0, 1 (close/reopen), or 2 (revoke).
 * @return Exact transport/cleanup/local failure capped at 125; zero includes
 * successful isolation, full-value processing and both owner-lifetime checks.
 * @details No pointer crosses a module boundary. ROS owners are retired before
 * IO output, including error paths. A default-denied ROS/clock/random operation
 * must not succeed merely because another module has the corresponding grant.
 */
int main(int argc, char** argv)
{
    if (argc != 3 || strlen(argv[2]) != 1 || argv[2][0] < '0' || argv[2][0] > '2')
    {
        return 22;
    }
    size_t alias_length = strlen(argv[1]);
    if (!alias_length || alias_length > NV_MAX_ALIAS)
    {
        return 22;
    }
    uint32_t mode = (uint32_t)(argv[2][0] - '0');
    uint32_t local = 0;
    uint32_t main_ros = probe_main_ros();
    uint32_t io_ros = nv_io_probe_ros();
    uint32_t algorithm_ros = nv_algorithm_probe_ros();
    uint32_t algorithm_clock = nv_algorithm_probe_clock();
    uint32_t algorithm_random = nv_algorithm_probe_random();
    uint32_t clock_unchanged = nv_algorithm_clock_unchanged();
    uint32_t random_unchanged = nv_algorithm_random_unchanged();
    uint32_t io_wait = nv_io_wait();
    if (main_ros != 13 || io_ros != 13 || algorithm_ros != 13 || algorithm_clock != 76 || algorithm_random != 76 ||
        !clock_unchanged || !random_unchanged || io_wait)
    {
        local = 71;
    }
    uint32_t primary = nv_ros_alias_begin((uint32_t)alias_length);
    for (uint32_t i = 0; !primary && i < alias_length; ++i)
    {
        primary = nv_ros_alias_put(i, (unsigned char)argv[1][i]);
    }
    uint32_t ros_clock = nv_ros_probe_clock();
    if (ros_clock != 76 || !nv_ros_fact(NV_ROS_CLOCK_UNCHANGED))
    {
        remember(&local, 71);
    }
    if (!primary)
    {
        primary = nv_ros_start();
    }
    if (!primary)
    {
        for (uint32_t i = 0; i < 250; ++i)
        {
            primary = nv_ros_poll();
            if (primary != 11 || i + 1 == 250)
            {
                break;
            }
            uint32_t waiting = nv_io_wait();
            if (waiting)
            {
                primary = waiting;
                break;
            }
        }
    }
    uint32_t length = !primary ? nv_ros_wire_size() : 0;
    uint64_t token = nv_io_begin(length);
    if (!token)
    {
        remember(&local, 22);
    }
    if (!primary && token)
    {
        remember(&local, nv_algorithm_begin(length));
        for (uint32_t i = 0; i < length; ++i)
        {
            uint32_t byte = nv_ros_wire_byte(i);
            remember(&local, nv_io_put(token, i, byte));
            remember(&local, nv_algorithm_put(i, byte));
        }
        remember(&local, nv_algorithm_finish());
    }
    uint32_t cleanup = nv_ros_finish(mode);
    remember(&local, nv_io_commit(token));
    uint32_t io_stale = nv_io_put(token, 0, 0x99);
    if (io_stale != 9)
    {
        remember(&local, 71);
    }
    for (uint32_t key = NV_PRIMARY; key <= NV_FRESH_CLOSE_ATTEMPTED; ++key)
    {
        remember(&local, nv_io_fact(token, key, nv_ros_fact(key)));
    }
    remember(&local, nv_io_fact(token, NV_PRIMARY, primary));
    remember(&local, nv_io_fact(token, NV_MODE, mode));
    remember(&local, nv_io_fact(token, NV_MAIN_ROS, main_ros));
    remember(&local, nv_io_fact(token, NV_IO_ROS, io_ros));
    remember(&local, nv_io_fact(token, NV_ALGORITHM_ROS, algorithm_ros));
    remember(&local, nv_io_fact(token, NV_ALGORITHM_CLOCK, algorithm_clock));
    remember(&local, nv_io_fact(token, NV_ALGORITHM_RANDOM, algorithm_random));
    remember(&local, nv_io_fact(token, NV_ROS_CLOCK, ros_clock));
    remember(&local, nv_io_fact(token, NV_IO_WAIT, io_wait));
    remember(&local, nv_io_fact(token, NV_IO_STALE, io_stale));
    remember(&local, nv_io_fact(token, NV_ALGORITHM_COUNT, nv_algorithm_count()));
    remember(&local, nv_io_fact(token, NV_ALGORITHM_ID_SUM, nv_algorithm_id_sum()));
    remember(&local, nv_io_fact(token, NV_ALGORITHM_CHECKSUM, nv_algorithm_checksum()));
    remember(&local, nv_io_fact(token, NV_CLOCK_UNCHANGED, clock_unchanged));
    remember(&local, nv_io_fact(token, NV_RANDOM_UNCHANGED, random_unchanged));
    remember(&local, nv_io_fact(token, NV_ROS_CLOCK_UNCHANGED, nv_ros_fact(NV_ROS_CLOCK_UNCHANGED)));
    remember(&local, nv_io_report(token));
    uint32_t status = primary ? primary : cleanup ? cleanup : local;
    return status > 125 ? 125 : (int)status;
}
