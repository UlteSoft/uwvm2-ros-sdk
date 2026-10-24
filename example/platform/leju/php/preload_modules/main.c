/** @file main.c
 * @brief Compose three real modules through primitive values and owned tokens.
 * @details Two explicitly requested publication samples aid native discovery;
 * a failed operation is never replayed. Cleanup is observed independently.
 */
#include <preload_api.h>
MODULE_IMPORT("io", "begin") uint32_t io_begin(uint32_t);
MODULE_IMPORT("io", "put") uint32_t io_put(uint32_t, uint32_t, uint32_t);
MODULE_IMPORT("io", "commit") uint32_t io_commit(uint32_t);
MODULE_IMPORT("io", "abort") uint32_t io_abort(uint32_t);
MODULE_IMPORT("io", "wait_ms") uint32_t io_wait_ms(uint32_t);
#define UWVM_LIBRARY_NAMESPACE "algorithm"
#include <language/common/module.h>
#include <ros1/c/roswasm.h>
MODULE_IMPORT("io", "ros_denial") uint32_t io_ros_denial(void);
#define algorithm_compute uwvm_library_call_i32

/** @brief Probe the identical alias in the ungranted main instance. */
static uint32_t main_ros_denial(void)
{
    roswasmc_context context = {roswasmc_ros1_backend()};
    roswasmc_capability owner;
    roswasmc_capability_init(&owner, &context);
    uint32_t code = roswasmc_open(&owner, "sample", 6);
    if (code == 0)
    {
        (void)roswasmc_close(&owner);
    }
    return code;
}

MODULE_IMPORT("ros_comm", "begin") uint32_t ros_begin(void);
MODULE_IMPORT("ros_comm", "send") uint32_t ros_send(int32_t);
MODULE_IMPORT("ros_comm", "end") uint32_t ros_end(void);

/** @brief Copy one bounded caller string byte by byte; retire on either path. */
static uint32_t write_line(char const* text, uint32_t size)
{
    uint32_t token = io_begin(size), error = 0, index;
    if (!token)
    {
        return 22;
    }
    for (index = 0; index != size && !error; ++index)
    {
        error = io_put(token, index, (uint8_t)text[index]);
    }
    if (error)
    {
        (void)io_abort(token);
        return error;
    }
    return io_commit(token);
}

int main(void)
{
    int32_t result = algorithm_compute(7);
    uint32_t io_error;
    if (result != 42)
    {
        return 1;
    }
    if (uwvm_library_status() != 0 || algorithm_compute(-100) != 13 || uwvm_library_status() != 0 ||
        algorithm_compute(-101) != 76 || uwvm_library_status() != 0 || main_ros_denial() != 13 || io_ros_denial() != 13)
    {
        return 2;
    }

    uint32_t primary, cleanup = 0;
    primary = ros_begin();
    if (!primary)
    {
        primary = io_wait_ms(1000);
        if (!primary)
        {
            primary = ros_send(result);
        }
        if (!primary)
        {
            primary = io_wait_ms(1000);
        }
        if (!primary)
        {
            primary = ros_send(result);
        }
        cleanup = ros_end();
    }
    {
        char const message[] = "php=42 ros=0 cleanup=0 main=13 io=13 algorithm=13 clock=76\n";
        if (primary || cleanup)
        {
            return (int)(primary ? primary : cleanup);
        }
        if (uwvm_library_retire() != 0 || uwvm_library_retire() != 125)
        {
            return 5;
        }
        io_error = write_line(message, sizeof message - 1);
    }
    return (int)io_error;
}
