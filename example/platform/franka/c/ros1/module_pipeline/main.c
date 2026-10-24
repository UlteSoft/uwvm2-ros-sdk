/** @file main.c
 * @brief Compose three actual Wasm libraries with independent module policies.
 * @details Successful communication is confined to ros_comm. Main, io and
 * algorithm must independently observe original denial 13 with no cleanup error.
 */
#include <franka/c/module_pipeline.h>
#include <stdio.h>

int main(void)
{
    uint64_t main_probe, io_probe, algorithm_probe;
    uint32_t primary = 0, cleanup = 0, length = 0, digest = 0, value = 0;
    uintptr_t width_bits = (uintptr_t)UINT32_C(0xa5a50bad);
    unsigned attempt;
    /* Observe entry before calling any export. Lazy constructor wrappers would
     * print their init markers after this line and fail the trace assertion. */
    if(puts("main-enter") == EOF || fflush(stdout))
    {
        return 5;
    }
    /* Volatile constructor state must exist before the first module operation.
     * The application never calls _initialize or repairs initialization lazily. */
    if(franka_module_io_ready() != 201 || franka_module_algorithm_ready() != 202 || franka_module_ros_ready() != 203)
    {
        return 78;
    }
#if UINTPTR_MAX > UINT32_MAX
    width_bits = (uintptr_t)UINT64_C(0x13579abc01234567);
#endif
    if(franka_module_width_echo(width_bits) != width_bits)
    {
        return 75;
    }
    main_probe = franka_module_denied_probe();
    io_probe = franka_module_io_probe();
    algorithm_probe = franka_module_algorithm_probe();
    if(main_probe != UINT64_C(13) || io_probe != UINT64_C(13) || algorithm_probe != UINT64_C(13))
    {
        franka_module_report(0, 0, 0, 13, 0, main_probe, io_probe, algorithm_probe);
        return 1;
    }
    primary = franka_module_ros_open();
    for(attempt = 0; !primary && attempt < 250; ++attempt)
    {
        primary = franka_module_ros_poll();
        if(primary != 11)
        {
            break;
        }
        primary = attempt == 249 ? 110 : franka_module_ros_pause();
    }
    if(!primary)
    {
        length = franka_module_ros_length();
        digest = franka_module_ros_digest();
        value = franka_module_step(digest);
    }
    cleanup = franka_module_ros_close();
    franka_module_report(length, digest, value, primary, cleanup, main_probe, io_probe, algorithm_probe);
    return primary ? (int)primary : (int)cleanup;
}
