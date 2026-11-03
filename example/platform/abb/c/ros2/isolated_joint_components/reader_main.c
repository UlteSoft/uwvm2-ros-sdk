/* SPDX-License-Identifier: Apache-2.0 */
#include "reader_planner.h"
#include "planner.h"
#include "guest_entry.h"

/* Different Wasm binaries must be instantiated with different private backing.
 * A global here is ordinary private state, not proof of runtime isolation. */
static struct sdk02_reader_state reader;

static void sample(struct sdk02_joint_sample* value, uint64_t stamp)
{
    sdk02_private_zero(value, sizeof *value);
    value->sample_epoch = 7; value->count = 3; value->stamp_ns = stamp;
    value->position_urad[0] = 0;
    value->position_urad[1] = 1000000;
    value->position_urad[2] = -1000000;
}

static void local_business_checks(void)
{
    struct sdk02_joint_sample input;
    struct sdk02_joint_command command;
    struct sdk02_joint_receipt receipt;
    struct sdk02_joint_limits limits;
    int64_t output[3];
    uint32_t index;

    sdk02_private_zero(&limits, sizeof limits); limits.count = 3;
    for(index = 0; index < 3; ++index)
    {
        limits.lower_urad[index] = -6283186; limits.upper_urad[index] = 6283186;
        limits.max_step_urad[index] = 10000; limits.tolerance_urad[index] = 1000;
    }

    sdk02_begin_case("reader_planner", "initial_feedback_state");
    sdk02_check(sdk02_reader_init(&reader, 7, 3, &limits) == SDK02_OK, 100);
    sample(&input, 100);
    sdk02_check(sdk02_reader_feedback(&reader, &input, 110) == SDK02_OK, 101);
    sdk02_check(reader.current.sequence == 1 && reader.private_sentinel == UINT64_C(0x5245414445525031), 102);
    sdk02_check(sdk02_reader_init(&reader, 8, 3, &limits) == SDK02_BUSY && reader.sample_epoch == 7, 103);
    sdk02_finish_case();

    sdk02_begin_case("reader_planner", "stale_feedback_no_state_change");
    input.sequence = 9999;
    sdk02_check(sdk02_reader_feedback(&reader, &input, 120) == SDK02_STALE, 110);
    sdk02_check(reader.current.sequence == 1 && reader.current.stamp_ns == 100, 111);
    sdk02_finish_case();

    sdk02_begin_case("reader_planner", "future_feedback_refused");
    input.stamp_ns = 1000;
    sdk02_check(sdk02_reader_feedback(&reader, &input, 120) == SDK02_INVALID, 120);
    sdk02_check(reader.current.stamp_ns == 100, 121);
    for(index = 0; index < sizeof command; ++index)
    { ((unsigned char*)&command)[index] = 0xa5; }
    sdk02_check(sdk02_reader_plan(&reader, 4000, &command, 99) == SDK02_STALE, 122);
    sdk02_check(sdk02_reader_plan(&reader, 4000, &command,
                SDK02_MAX_FEEDBACK_AGE_NS + UINT64_C(101)) == SDK02_STALE, 123);
    for(index = 0; index < sizeof command; ++index)
    { sdk02_check(((unsigned char const*)&command)[index] == 0xa5, 124); }
    sdk02_check(!reader.pending && reader.next_request == 1
                && reader.current.stamp_ns == 100, 125);
    sdk02_finish_case();

    sdk02_begin_case("reader_planner", "private_pointer_algorithm_atomic_error");
    for(index = 0; index < 3; ++index) { output[index] = 77; }
    sdk02_check(sdk02_plan_step(reader.current.position_urad, 3, &limits, INT64_MAX, output) == SDK02_INVALID, 130);
    for(index = 0; index < 3; ++index) { sdk02_check(output[index] == 77, 131); }
    limits.upper_urad[0] = 100; limits.max_step_urad[0] = 50;
    sdk02_check(sdk02_plan_step(reader.current.position_urad, 3, &limits, 4000, output) == SDK02_OK
                && output[0] == 50, 132);
    sdk02_check(reader.limits.upper_urad[0] == 6283186 && reader.limits.max_step_urad[0] == 10000, 133);
    limits.upper_urad[0] = 6283186; limits.max_step_urad[0] = 10000;
    for(index = 0; index < 3; ++index) { output[index] = 77; }
    sdk02_check(sdk02_plan_step(output, 3, &limits, 4000, output) == SDK02_OK, 134);
    for(index = 0; index < 3; ++index) { sdk02_check(output[index] == 4077, 135); }
    sdk02_finish_case();

    sdk02_begin_case("reader_planner", "static_pointer_step");
    sdk02_check(sdk02_reader_plan(&reader, 4000, &command, 120) == SDK02_OK, 140);
    sdk02_check(command.request_sequence == 1 && command.baseline_sequence == 1 && command.count == 3, 141);
    sdk02_check(command.target_urad[0] == 4000 && command.target_urad[1] == 1004000
                && command.target_urad[2] == -996000, 142);
    sdk02_finish_case();

    sdk02_begin_case("reader_planner", "backpressure_preserves_pending_command");
    sdk02_check(sdk02_reader_plan(&reader, 4000, &command, 120) == SDK02_BUSY, 150);
    sdk02_check(reader.planned.request_sequence == 1 && reader.next_request == 2, 151);
    sdk02_finish_case();

    sdk02_begin_case("reader_planner", "wrong_causal_result_refused");
    sdk02_private_zero(&receipt, sizeof receipt);
    receipt.request_sequence = 2; receipt.native_cookie = 23; receipt.native_status = 4;
    sample(&receipt.feedback, 140);
    sdk02_check(sdk02_reader_result(&reader, &receipt, 150) == SDK02_INVALID, 160);
    sdk02_check(reader.pending == 1, 161);
    sdk02_finish_case();

    sdk02_begin_case("reader_planner", "old_feedback_cannot_complete_result");
    receipt.request_sequence = 1; receipt.feedback.stamp_ns = 100;
    sdk02_check(sdk02_reader_result(&reader, &receipt, 150) == SDK02_STALE, 170);
    sdk02_check(reader.pending == 1, 171);
    sdk02_finish_case();

    sdk02_begin_case("reader_planner", "fresh_reverse_result_commits");
    receipt.feedback.stamp_ns = 140;
    /* A peer's local observation number is intentionally unrelated. */
    receipt.feedback.sequence = 9000;
    for(index = 0; index < 3; ++index) { receipt.feedback.position_urad[index] = reader.planned.target_urad[index]; }
    sdk02_check(sdk02_reader_result(&reader, &receipt, 150) == SDK02_OK, 180);
    sdk02_check(reader.pending == 0 && reader.current.sequence == 2 && reader.current.stamp_ns == 140, 181);
    sdk02_finish_case();

    sdk02_begin_case("reader_planner", "late_duplicate_result_refused");
    sdk02_check(sdk02_reader_result(&reader, &receipt, 160) == SDK02_BAD_STATE, 190);
    sdk02_check(reader.current.sequence == 2, 191);
    sdk02_finish_case();

    sdk02_begin_case("reader_planner", "local_abort_is_not_native_cancel");
    sdk02_check(sdk02_reader_plan(&reader, 4000, &command, 160) == SDK02_OK, 200);
    sdk02_check(command.request_sequence == 2, 201);
    sdk02_check(sdk02_reader_abort_local(&reader, 1) == SDK02_INVALID, 202);
    sdk02_check(sdk02_reader_abort_local(&reader, 2) == SDK02_OK && reader.next_request == 3, 203);
    sdk02_check(sdk02_reader_result(&reader, &receipt, 170) == SDK02_BAD_STATE, 204);
    sdk02_finish_case();

    sdk02_begin_case("reader_planner", "small_step_cannot_claim_motion");
    sdk02_check(sdk02_reader_plan(&reader, SDK02_TARGET_TOLERANCE_URAD, &command, 170) == SDK02_INVALID, 210);
    sdk02_check(!reader.pending && reader.next_request == 3, 211);
    sdk02_finish_case();
    sdk02_local_summary("reader_planner", 12);
}

void _start(void)
{
    char bytes[256]; char* argv[6];
    uwvm_ros_u32 count = 0, size = 0;
    if(sdk02_args_sizes(&count, &size) || count < 2 || count > 6 || size > sizeof bytes || sdk02_args_get(argv, bytes)) { sdk02_exit(64); }
    if(count == 2 && sdk02_text_equal(argv[1], "--local-business-checks"))
    { sdk02_await_credit("reader_planner", "local-business"); local_business_checks(); sdk02_exit(0); }
    if(count == 3 && sdk02_text_equal(argv[1], "--ros-owner-checks"))
    { sdk02_await_credit("reader_planner", "owner-imports"); sdk02_ros_owner_checks(1, sdk02_parse_handle(argv[2])); sdk02_exit(0); }
    sdk02_print("SDK02_COMPONENT:BLOCKED_SDK01_CHANNEL_ABI_NOT_INTEGRATED\n");
    sdk02_exit(78);
}
