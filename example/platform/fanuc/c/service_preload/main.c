/**
 * @file main.c
 * @brief Consume a C++ archive and three ordinary Core Wasm service preloads.
 * @details Only scalar values cross module boundaries. ros_comm owns the sole
 * native capability; the main, C++ IO and algorithm each prove their own ROS13
 * denial. Complete service bytes, controller refusal, boundary denial and
 * independent cleanup are observed without any request replay.
 */
#include "payload_static.h"
#include <ros2/c/roswasm/ros2.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

#ifndef FANUC_REQUEST_SCALE
# error The C consumer must inherit the C++ archive's public definition.
#endif

/** @brief Import scalar-only C ABI exports from the separately loaded C++ IO. */
__attribute__((import_module("io"), import_name("payload_io_denial"))) uint32_t payload_io_denial(void);
__attribute__((import_module("io"), import_name("payload_io_write"))) uint32_t payload_io_write(uint32_t checksum);
/** @brief Import bounded byte-copy and complete-field validation operations. */
__attribute__((import_module("algorithm"), import_name("payload_algorithm_reset"))) void payload_algorithm_reset(void);
__attribute__((import_module("algorithm"), import_name("payload_algorithm_put"))) uint32_t payload_algorithm_put(uint32_t index, uint32_t byte);
__attribute__((import_module("algorithm"), import_name("payload_algorithm_check"))) uint32_t payload_algorithm_check(uint32_t refusal);
__attribute__((import_module("algorithm"), import_name("payload_algorithm_denial"))) uint32_t payload_algorithm_denial(void);
/** @brief Import the sole granted module's scalar service and state interface. */
__attribute__((import_module("ros_comm"), import_name("payload_service_call"))) uint32_t payload_service_call(uint32_t schedule);
__attribute__((import_module("ros_comm"), import_name("payload_service_cleanup"))) uint32_t payload_service_cleanup(void);
__attribute__((import_module("ros_comm"), import_name("payload_service_cleanup_present"))) uint32_t payload_service_cleanup_present(void);
__attribute__((import_module("ros_comm"), import_name("payload_service_rpc"))) uint32_t payload_service_rpc(void);
__attribute__((import_module("ros_comm"), import_name("payload_service_rpc_present"))) uint32_t payload_service_rpc_present(void);
__attribute__((import_module("ros_comm"), import_name("payload_service_present"))) uint32_t payload_service_present(void);
__attribute__((import_module("ros_comm"), import_name("payload_service_size"))) uint32_t payload_service_size(void);
__attribute__((import_module("ros_comm"), import_name("payload_service_byte"))) uint32_t payload_service_byte(uint32_t index);

/** @brief Return the main module's actual ungranted open result and checked close. */
static uint32_t main_denial(void)
{
    roswasmc_context context = {roswasmc_ros2_backend()};
    roswasmc_capability owner;
    roswasmc_capability_init(&owner, &context);
    uint32_t error = roswasmc_open(&owner, "sample", 6);
    if(!error)
    {
        uint32_t cleanup = roswasmc_close(&owner);
        error = cleanup ? cleanup : 65;
    }
    return error;
}

/**
 * @brief Observe one manual deployment case and preserve each independent result.
 * @param argc Exactly two arguments including the program name.
 * @param argv Borrowed mode:positive,controller_refusal,boundary_denied,ungranted.
 * @return Zero when the specified case is witnessed completely;22 for bad mode.
 * @details A controller-refusal result5 remains in primary while this verifier
 * returns0 only after checking that complete refusal and successful cleanup.
 */
int main(int argc, char** argv)
{
    if(argc != 2) { return 22; }
    int refusal = !strcmp(argv[1], "controller_refusal");
    int denied = !strcmp(argv[1], "boundary_denied") || !strcmp(argv[1], "ungranted");
    if(!refusal && !denied && strcmp(argv[1], "positive")) { return 22; }
    uint32_t schedule = payload_request_schedule(2);
    uint32_t main_error = main_denial();
    uint32_t io_error = payload_io_denial();
    uint32_t algorithm_error = payload_algorithm_denial();
    payload_algorithm_reset();
    uint32_t early = payload_algorithm_check((uint32_t)refusal);
    uint32_t put_oob = payload_algorithm_put(32, 1);
    uint32_t primary = payload_service_call(schedule);
    uint32_t cleanup = payload_service_cleanup();
    uint32_t cleanup_present = payload_service_cleanup_present();
    uint32_t rpc = payload_service_rpc();
    uint32_t rpc_present = payload_service_rpc_present();
    uint32_t present = payload_service_present();
    uint32_t size = payload_service_size();
    uint32_t get_oob = payload_service_byte(32);
    unsigned char copied[32], sentinel[32];
    memset(copied, 0xa5, sizeof copied);
    memcpy(sentinel, copied, sizeof copied);
    uint32_t checksum = 0, copy_error = 0;
    if(present && size == sizeof copied)
    {
        checksum = 2166136261u;
        for(uint32_t i = 0; i < size; ++i)
        {
            uint32_t byte = payload_service_byte(i);
            if(byte > 255 || payload_algorithm_put(i, byte))
            {
                copy_error = 65;
                break;
            }
            copied[i] = (unsigned char)byte;
            checksum = (checksum ^ byte) * 16777619u;
        }
    }
    uint32_t algorithm = payload_algorithm_check((uint32_t)refusal);
    uint32_t second_oob = payload_algorithm_put(32, 255);
    uint32_t repeated = payload_algorithm_check((uint32_t)refusal);
    uint32_t io = payload_io_write(checksum);
    int unchanged = !memcmp(copied, sentinel, sizeof copied);
    int passed = schedule == 7 && main_error == 13 && io_error == 13 && algorithm_error == 13 && early == 11 && put_oob == 22 && second_oob == 22 &&
                 get_oob == 256 && !copy_error && io == checksum + 29 && !cleanup && algorithm == repeated;
    if(denied)
    {
        passed = passed && primary == 13 && !present && !size && !rpc_present && rpc == UINT32_MAX && !cleanup_present && unchanged && algorithm == 11;
    }
    else
    {
        passed =
            passed && primary == (refusal ? 5u : 0u) && present == 1 && size == 32 && rpc_present == 1 && rpc == 0 && cleanup_present == 1 && algorithm == 0;
    }
    printf("{\"mode\":\"%s\",\"primary\":%u,\"cleanup\":%u,\"cleanup_present\":%u,"
           "\"rpc_status\":%u,\"rpc_present\":%u,\"response_present\":%u,\"wire_size\":%u,"
           "\"static_schedule\":%u,\"main_denied\":%u,\"io_denied\":%u,\"algorithm_denied\":%u,"
           "\"algorithm_status\":%u,\"algorithm_early\":%u,\"algorithm_oob\":%u,\"getter_oob\":%u,"
           "\"io_value\":%u,\"checksum\":%u,\"denied_buffer_unchanged\":%s,\"passed\":%s,\"wire_hex\":\"",
           argv[1], primary, cleanup, cleanup_present, rpc, rpc_present, present, size, schedule, main_error, io_error,
           algorithm_error, algorithm, early, second_oob, get_oob, io, checksum, unchanged ? "true" : "false",
           passed ? "true" : "false");
    if(present && size == 32)
    {
        for(size_t i = 0; i < size; ++i) { printf("%02x", (unsigned)copied[i]); }
    }
    if(puts("\"}") < 0 || fflush(stdout)) { return 5; }
    return passed ? 0 : 65;
}
