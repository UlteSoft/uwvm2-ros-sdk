/**
 * @file main.cpp
 * @brief Consume a genuine Rust full-Action module and a sole granted ROS module.
 * @details Each module owns memory. All complete original fields cross through
 * ordered scalar byte copies; the Rust reactor reconstructs sixteen typed records.
 */
#include <ros2/c/roswasm/ros2.h>
#include <cstdint>
#include <cstdio>
extern "C"
{
    __attribute__((import_module("algorithm"), import_name("action_record_reset"))) uint32_t action_record_reset(uint32_t);
    __attribute__((import_module("algorithm"), import_name("action_record_put"))) uint32_t action_record_put(uint32_t, uint32_t);
    __attribute__((import_module("algorithm"), import_name("action_record_check"))) uint32_t action_record_check(uint32_t);
    __attribute__((import_module("algorithm"), import_name("action_record_checks"))) uint32_t action_record_checks();
    __attribute__((import_module("algorithm"), import_name("action_record_fields"))) uint32_t action_record_fields();
    __attribute__((import_module("algorithm"), import_name("action_record_denial"))) uint32_t action_record_denial();
    __attribute__((import_module("ros_comm"), import_name("action_execute"))) uint32_t action_execute();
    __attribute__((import_module("io"), import_name("action_io_report"))) uint32_t action_io_report(uint32_t);
}

/** @brief Check this disabled main's actual authority, then run one complete graph. */
int main()
{
    roswasmc_context context{roswasmc_ros2_backend()};
    roswasmc_capability owner;
    roswasmc_capability_init(&owner, &context);
    uint32_t denied = roswasmc_open(&owner, "send", 4);
    if(!denied)
    {
        (void)roswasmc_close(&owner);
        denied = 65;
    }
    uint32_t rust_denied = action_record_denial();
    uint32_t reset = action_record_reset(0);
    uint32_t unordered = action_record_put(1, 0);
    uint32_t incomplete = action_record_check(1);
    uint32_t primary = denied == 13 && rust_denied == 13 && !reset && unordered == 22 && incomplete == 22 ? 0 : 65;
    if(!primary) { primary = action_execute(); }
    uint32_t checks = action_record_checks();
    uint32_t fields = action_record_fields();
    uint32_t io = action_io_report(primary);
    bool passed = !primary && !io && checks == 6 && fields > 100;
    std::printf(
        "{\"event\":\"graph_summary\",\"primary\":%u,\"main_denied\":%u,\"rust_denied\":%u,\"unordered\":%u,\"incomplete\":%u,\"Rust_complete_records_checked\":%u,\"Rust_scalar_fields_decoded\":%u,\"io\":%u,\"passed\":%s}\n",
        primary,
        denied,
        rust_denied,
        unordered,
        incomplete,
        checks,
        fields,
        io,
        passed ? "true" : "false");
    return passed ? 0 : 1;
}
