/* SPDX-License-Identifier: Apache-2.0 */
#include "reader_planner.h"
#include "planner.h"

enum sdk02_business_status sdk02_reader_init(struct sdk02_reader_state* state, uint64_t epoch, uint32_t count,
                                            struct sdk02_joint_limits const* limits)
{
    struct sdk02_joint_limits selected;
    if(!state || !epoch || !sdk02_limits_valid(limits, count)) { return SDK02_INVALID; }
    if(state->private_sentinel) { return SDK02_BUSY; }
    sdk02_copy_limits(&selected, limits);
    sdk02_private_zero(state, sizeof *state);
    state->private_sentinel = UINT64_C(0x5245414445525031);
    state->sample_epoch = epoch;
    state->next_request = 1;
    state->count = count;
    sdk02_copy_limits(&state->limits, &selected);
    return SDK02_OK;
}

enum sdk02_business_status sdk02_reader_feedback(struct sdk02_reader_state* state,
                                                 struct sdk02_joint_sample const* sample, uint64_t now_ns)
{
    uint32_t index;
    if(!state || !sample || sample->count != state->count || !sample->count || sample->count > SDK02_JOINT_MAX
       || sample->sample_epoch != state->sample_epoch || sample->stamp_ns > now_ns
       || now_ns - sample->stamp_ns > SDK02_MAX_FEEDBACK_AGE_NS)
    { return SDK02_INVALID; }
    if(state->have_sample && sample->stamp_ns <= state->current.stamp_ns)
    { return SDK02_STALE; }
    if(state->current.sequence == UINT64_MAX) { return SDK02_EXHAUSTED; }
    for(index = 0; index < sample->count; ++index)
    { if(!sdk02_within_model(&state->limits, index, sample->position_urad[index])) { return SDK02_INVALID; } }
    {
        uint64_t next = state->current.sequence + 1;
        sdk02_copy_sample(&state->current, sample);
        state->current.sequence = next;
    }
    state->have_sample = 1;
    return SDK02_OK;
}

enum sdk02_business_status sdk02_reader_plan(struct sdk02_reader_state* state, int64_t step_urad,
                                             struct sdk02_joint_command* output, uint64_t now_ns)
{
    int64_t targets[SDK02_JOINT_MAX];
    uint32_t index;
    enum sdk02_business_status result;
    int moving = 0;
    if(!state || !output || !state->have_sample) { return SDK02_BAD_STATE; }
    if(state->pending) { return SDK02_BUSY; }
    if(state->current.stamp_ns > now_ns
       || now_ns - state->current.stamp_ns > SDK02_MAX_FEEDBACK_AGE_NS)
    { return SDK02_STALE; }
    if(state->next_request == UINT64_MAX) { return SDK02_EXHAUSTED; }
    result = sdk02_plan_step(state->current.position_urad, state->count, &state->limits, step_urad, targets);
    if(result != SDK02_OK) { return result; }
    for(index = 0; index < state->count; ++index)
    {
        int64_t delta = targets[index] - state->current.position_urad[index];
        if(delta < -2 * state->limits.tolerance_urad[index] || delta > 2 * state->limits.tolerance_urad[index]) { moving = 1; }
    }
    if(!moving) { return SDK02_INVALID; }
    state->planned.sample_epoch = state->sample_epoch;
    state->planned.request_sequence = state->next_request++;
    state->planned.baseline_sequence = state->current.sequence;
    state->planned.baseline_stamp_ns = state->current.stamp_ns;
    state->planned.count = state->count;
    for(index = 0; index < state->count; ++index)
    {
        state->planned.baseline_urad[index] = state->current.position_urad[index];
        state->planned.target_urad[index] = targets[index];
    }
    sdk02_copy_command(output, &state->planned);
    state->pending = 1;
    return SDK02_OK;
}

enum sdk02_business_status sdk02_reader_result(struct sdk02_reader_state* state,
                                               struct sdk02_joint_receipt const* receipt, uint64_t now_ns)
{
    uint32_t index;
    enum sdk02_business_status result;
    if(!state || !receipt || !state->pending) { return SDK02_BAD_STATE; }
    if(receipt->request_sequence != state->planned.request_sequence || !receipt->native_cookie
       || receipt->feedback.sample_epoch != state->sample_epoch || receipt->feedback.count != state->count)
    { return SDK02_INVALID; }
    if(receipt->native_status != 4) { return SDK02_CANCELLED; }
    if(receipt->feedback.stamp_ns <= state->planned.baseline_stamp_ns)
    { return SDK02_STALE; }
    for(index = 0; index < state->count; ++index)
    {
        if(!sdk02_within_model(&state->limits, index, receipt->feedback.position_urad[index])
           || !sdk02_near(receipt->feedback.position_urad[index], state->planned.target_urad[index], state->limits.tolerance_urad[index]))
        { return SDK02_INVALID; }
    }
    /* An independently subscribed actuator has its own observation counter.
     * Compare ROS stamps and positions, never two components' local counters.
     * Prefer an already newer real reader observation when it reaches target. */
    if(receipt->feedback.stamp_ns <= state->current.stamp_ns)
    {
        if(state->current.stamp_ns <= state->planned.baseline_stamp_ns || state->current.stamp_ns > now_ns
           || now_ns - state->current.stamp_ns > SDK02_MAX_FEEDBACK_AGE_NS) { return SDK02_STALE; }
        for(index = 0; index < state->count; ++index)
        {
            if(!sdk02_near(state->current.position_urad[index], state->planned.target_urad[index], state->limits.tolerance_urad[index])) { return SDK02_STALE; }
        }
        state->pending = 0;
        return SDK02_OK;
    }
    result = sdk02_reader_feedback(state, &receipt->feedback, now_ns);
    if(result != SDK02_OK) { return result; }
    state->pending = 0;
    return SDK02_OK;
}

enum sdk02_business_status sdk02_reader_abort_local(struct sdk02_reader_state* state, uint64_t request)
{
    if(!state || !state->pending) { return SDK02_BAD_STATE; }
    if(request != state->planned.request_sequence) { return SDK02_INVALID; }
    state->pending = 0;
    return SDK02_OK;
}
