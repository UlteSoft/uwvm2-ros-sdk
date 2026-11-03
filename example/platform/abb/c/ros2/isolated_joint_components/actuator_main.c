/* SPDX-License-Identifier: Apache-2.0 */
#include "actuator.h"
#include "guest_entry.h"

static struct sdk02_actuator_state actuator;

static void baseline(struct sdk02_joint_sample* value, uint64_t stamp)
{
    sdk02_private_zero(value, sizeof *value);
    value->sample_epoch = 7; value->count = 3; value->stamp_ns = stamp;
    value->position_urad[1] = 1000000; value->position_urad[2] = -1000000;
}

static void local_business_checks(void)
{
    struct sdk02_joint_sample observed;
    struct sdk02_joint_command command;
    struct sdk02_joint_receipt receipt;
    struct sdk02_joint_limits limits;
    uint32_t index;

    sdk02_private_zero(&limits, sizeof limits); limits.count = 3;
    for(index = 0; index < 3; ++index)
    {
        limits.lower_urad[index] = -6283186; limits.upper_urad[index] = 6283186;
        limits.max_step_urad[index] = 10000; limits.tolerance_urad[index] = 1000;
    }

    sdk02_begin_case("actuator", "initial_state_and_feedback");
    sdk02_check(sdk02_actuator_init(&actuator, 7, 3, &limits) == SDK02_OK, 300);
    baseline(&observed, 100);
    sdk02_check(sdk02_actuator_feedback(&actuator, &observed, 110) == SDK02_OK, 301);
    sdk02_check(actuator.private_sentinel == UINT64_C(0x4143545541544f52) && actuator.feedback.sequence == 1, 302);
    sdk02_check(sdk02_actuator_init(&actuator, 8, 3, &limits) == SDK02_BUSY && actuator.sample_epoch == 7, 303);
    sdk02_finish_case();

    sdk02_private_zero(&command, sizeof command);
    command.sample_epoch = 7; command.count = 3; command.request_sequence = 1;
    command.baseline_sequence = 1; command.baseline_stamp_ns = 100;
    for(index = 0; index < 3; ++index)
    {
        command.baseline_urad[index] = observed.position_urad[index];
        command.target_urad[index] = observed.position_urad[index] + 4000;
    }

    sdk02_begin_case("actuator", "oversized_command_no_partial_commit");
    command.count = SDK02_JOINT_MAX + 1;
    sdk02_check(sdk02_actuator_prepare(&actuator, &command, 110) == SDK02_INVALID, 310);
    sdk02_check(actuator.phase == SDK02_ACT_IDLE && actuator.last_request == 0, 311);
    command.count = 3;
    sdk02_finish_case();

    sdk02_begin_case("actuator", "bounded_command_prepared");
    sdk02_check(sdk02_actuator_prepare(&actuator, &command, 110) == SDK02_OK, 320);
    sdk02_check(actuator.phase == SDK02_ACT_PREPARED && actuator.native_cookie == 0, 321);
    sdk02_finish_case();

    sdk02_begin_case("actuator", "unsubmitted_command_has_no_result");
    receipt.request_sequence = 99;
    sdk02_check(sdk02_actuator_receipt(&actuator, &receipt, 115) == SDK02_PENDING, 330);
    sdk02_check(receipt.request_sequence == 99, 331);
    sdk02_finish_case();

    sdk02_begin_case("actuator", "submission_state_and_duplicate_refusal");
    sdk02_check(sdk02_actuator_submitted(&actuator, 1, 99, 120) == SDK02_OK, 340);
    sdk02_check(sdk02_actuator_submitted(&actuator, 1, 99, 120) == SDK02_BAD_STATE, 341);
    sdk02_finish_case();

    sdk02_begin_case("actuator", "wrong_correlation_cookie_refused");
    sdk02_check(sdk02_actuator_terminal(&actuator, 1, 98, 4) == SDK02_INVALID, 350);
    sdk02_check(actuator.phase == SDK02_ACT_SUBMITTED, 351);
    sdk02_finish_case();

    sdk02_begin_case("actuator", "terminal_state_needs_fresh_feedback");
    sdk02_check(sdk02_actuator_terminal(&actuator, 1, 99, 4) == SDK02_OK, 360);
    sdk02_check(sdk02_actuator_receipt(&actuator, &receipt, 125) == SDK02_PENDING, 361);
    sdk02_finish_case();

    sdk02_begin_case("actuator", "replayed_feedback_refused");
    observed.sequence = 9000;
    sdk02_check(sdk02_actuator_feedback(&actuator, &observed, 125) == SDK02_STALE, 370);
    sdk02_check(actuator.feedback.sequence == 1 && actuator.feedback.stamp_ns == 100, 371);
    sdk02_finish_case();

    sdk02_begin_case("actuator", "fresh_but_unmoved_state_cannot_pass");
    observed.stamp_ns = 130;
    sdk02_check(sdk02_actuator_feedback(&actuator, &observed, 135) == SDK02_OK, 380);
    sdk02_check(sdk02_actuator_receipt(&actuator, &receipt, 135) == SDK02_PENDING, 381);
    sdk02_finish_case();

    sdk02_begin_case("actuator", "fresh_target_state_returns_local_receipt");
    observed.stamp_ns = 140;
    for(index = 0; index < 3; ++index) { observed.position_urad[index] = command.target_urad[index]; }
    sdk02_check(sdk02_actuator_feedback(&actuator, &observed, 145) == SDK02_OK, 390);
    sdk02_check(sdk02_actuator_receipt(&actuator, &receipt, 145) == SDK02_OK, 391);
    sdk02_check(receipt.request_sequence == 1 && receipt.native_cookie == 99 && receipt.native_status == 4
        && receipt.feedback.stamp_ns == 140 && receipt.feedback.sequence == 3, 392);
    sdk02_finish_case();

    sdk02_begin_case("actuator", "completed_command_replay_refused");
    sdk02_check(sdk02_actuator_prepare(&actuator, &command, 150) == SDK02_STALE, 400);
    sdk02_check(sdk02_actuator_terminal(&actuator, 1, 99, 4) == SDK02_BAD_STATE, 401);
    sdk02_finish_case();

    sdk02_begin_case("actuator", "abort_refuses_late_terminal_state");
    command.request_sequence = 2; command.baseline_stamp_ns = 140;
    for(index = 0; index < 3; ++index)
    {
        command.baseline_urad[index] = observed.position_urad[index];
        command.target_urad[index] = observed.position_urad[index] + 4000;
    }
    sdk02_check(sdk02_actuator_prepare(&actuator, &command, 150) == SDK02_OK, 410);
    sdk02_check(sdk02_actuator_submitted(&actuator, 2, 100, 155) == SDK02_OK, 411);
    sdk02_check(sdk02_actuator_abort_local(&actuator, 2) == SDK02_OK, 412);
    sdk02_check(sdk02_actuator_terminal(&actuator, 2, 100, 4) == SDK02_BAD_STATE, 413);
    sdk02_finish_case();
    sdk02_local_summary("actuator", 12);
}

void _start(void)
{
    char bytes[256]; char* argv[6];
    uwvm_ros_u32 count = 0, size = 0;
    if(sdk02_args_sizes(&count, &size) || count < 2 || count > 6 || size > sizeof bytes || sdk02_args_get(argv, bytes)) { sdk02_exit(64); }
    if(count == 2 && sdk02_text_equal(argv[1], "--local-business-checks"))
    { sdk02_await_credit("actuator", "local-business"); local_business_checks(); sdk02_exit(0); }
    if(count == 3 && sdk02_text_equal(argv[1], "--ros-owner-checks"))
    { sdk02_await_credit("actuator", "owner-imports"); sdk02_ros_owner_checks(0, sdk02_parse_handle(argv[2])); sdk02_exit(0); }
    sdk02_print("SDK02_COMPONENT:BLOCKED_SDK01_CHANNEL_ABI_NOT_INTEGRATED\n");
    sdk02_exit(78);
}
