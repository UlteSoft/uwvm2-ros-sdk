/* SPDX-License-Identifier: Apache-2.0 */
#include "actuator.h"

enum sdk02_business_status sdk02_actuator_init(struct sdk02_actuator_state* state, uint64_t epoch, uint32_t count,
                                              struct sdk02_joint_limits const* limits)
{
    struct sdk02_joint_limits selected;
    if(!state || !epoch || !sdk02_limits_valid(limits, count)) { return SDK02_INVALID; }
    if(state->private_sentinel) { return SDK02_BUSY; }
    sdk02_copy_limits(&selected, limits);
    sdk02_private_zero(state, sizeof *state);
    state->private_sentinel = UINT64_C(0x4143545541544f52);
    state->sample_epoch = epoch;
    state->count = count;
    sdk02_copy_limits(&state->limits, &selected);
    return SDK02_OK;
}

enum sdk02_business_status sdk02_actuator_feedback(struct sdk02_actuator_state* state,
                                                   struct sdk02_joint_sample const* sample, uint64_t now_ns)
{
    uint32_t index;
    if(!state || !sample || sample->sample_epoch != state->sample_epoch || sample->count != state->count
       || !sample->count || sample->count > SDK02_JOINT_MAX
       || sample->stamp_ns > now_ns || now_ns - sample->stamp_ns > SDK02_MAX_FEEDBACK_AGE_NS)
    { return SDK02_INVALID; }
    if(state->have_feedback && sample->stamp_ns <= state->feedback.stamp_ns)
    { return SDK02_STALE; }
    if(state->feedback.sequence == UINT64_MAX) { return SDK02_EXHAUSTED; }
    for(index = 0; index < sample->count; ++index)
    { if(!sdk02_within_model(&state->limits, index, sample->position_urad[index])) { return SDK02_INVALID; } }
    {
        uint64_t next = state->feedback.sequence + 1;
        sdk02_copy_sample(&state->feedback, sample);
        state->feedback.sequence = next;
    }
    state->have_feedback = 1;
    return SDK02_OK;
}

enum sdk02_business_status sdk02_actuator_prepare(struct sdk02_actuator_state* state,
                                                  struct sdk02_joint_command const* command, uint64_t now_ns)
{
    uint32_t index;
    int moving = 0;
    if(!state || !command || !state->have_feedback) { return SDK02_BAD_STATE; }
    if(state->phase != SDK02_ACT_IDLE) { return SDK02_BUSY; }
    if(command->sample_epoch != state->sample_epoch || command->count != state->count
       || !command->count || command->count > SDK02_JOINT_MAX || !command->request_sequence
       || !command->baseline_sequence || command->baseline_stamp_ns > now_ns
       || now_ns - command->baseline_stamp_ns > SDK02_MAX_FEEDBACK_AGE_NS)
    { return SDK02_INVALID; }
    if(command->request_sequence <= state->last_request || state->feedback.stamp_ns < command->baseline_stamp_ns)
    { return SDK02_STALE; }
    if(state->feedback.stamp_ns > now_ns || now_ns - state->feedback.stamp_ns > SDK02_MAX_FEEDBACK_AGE_NS)
    { return SDK02_STALE; }
    for(index = 0; index < state->count; ++index)
    {
        int64_t delta;
        if(!sdk02_within_model(&state->limits, index, command->baseline_urad[index])
           || !sdk02_within_model(&state->limits, index, command->target_urad[index])
           || !sdk02_near(state->feedback.position_urad[index], command->baseline_urad[index], state->limits.tolerance_urad[index]))
        { return SDK02_INVALID; }
        delta = command->target_urad[index] - command->baseline_urad[index];
        if(delta < -state->limits.max_step_urad[index] || delta > state->limits.max_step_urad[index]) { return SDK02_INVALID; }
        if(delta < -2 * state->limits.tolerance_urad[index] || delta > 2 * state->limits.tolerance_urad[index]) { moving = 1; }
    }
    if(!moving) { return SDK02_INVALID; }
    sdk02_copy_command(&state->command, command);
    state->last_request = command->request_sequence;
    state->native_cookie = 0;
    state->native_status = 0;
    state->phase = SDK02_ACT_PREPARED;
    return SDK02_OK;
}

enum sdk02_business_status sdk02_actuator_submitted(struct sdk02_actuator_state* state,
                                                    uint64_t request, uint64_t native_cookie, uint64_t stamp_ns)
{
    if(!state || state->phase != SDK02_ACT_PREPARED) { return SDK02_BAD_STATE; }
    if(request != state->command.request_sequence || !native_cookie || stamp_ns < state->command.baseline_stamp_ns)
    { return SDK02_INVALID; }
    state->native_cookie = native_cookie;
    state->submitted_stamp_ns = stamp_ns;
    state->phase = SDK02_ACT_SUBMITTED;
    return SDK02_OK;
}

enum sdk02_business_status sdk02_actuator_terminal(struct sdk02_actuator_state* state,
                                                   uint64_t request, uint64_t native_cookie, uint32_t status)
{
    if(!state || state->phase != SDK02_ACT_SUBMITTED) { return SDK02_BAD_STATE; }
    if(request != state->command.request_sequence || native_cookie != state->native_cookie || !native_cookie
       || (status != 4 && status != 5 && status != 6))
    { return SDK02_INVALID; }
    state->native_status = status;
    state->phase = SDK02_ACT_TERMINAL;
    return SDK02_OK;
}

enum sdk02_business_status sdk02_actuator_receipt(struct sdk02_actuator_state* state,
                                                  struct sdk02_joint_receipt* output, uint64_t now_ns)
{
    uint32_t index;
    if(!state || !output || state->phase == SDK02_ACT_IDLE) { return SDK02_BAD_STATE; }
    if(state->phase != SDK02_ACT_TERMINAL) { return SDK02_PENDING; }
    if(state->native_status != 4) { return SDK02_CANCELLED; }
    if(state->feedback.stamp_ns <= state->command.baseline_stamp_ns
       || state->feedback.stamp_ns <= state->submitted_stamp_ns || state->feedback.stamp_ns > now_ns
       || now_ns - state->feedback.stamp_ns > SDK02_MAX_FEEDBACK_AGE_NS)
    { return SDK02_PENDING; }
    for(index = 0; index < state->count; ++index)
    { if(!sdk02_near(state->feedback.position_urad[index], state->command.target_urad[index], state->limits.tolerance_urad[index])) { return SDK02_PENDING; } }
    output->request_sequence = state->command.request_sequence;
    output->native_cookie = state->native_cookie;
    output->native_status = state->native_status;
    sdk02_copy_sample(&output->feedback, &state->feedback);
    state->phase = SDK02_ACT_IDLE;
    return SDK02_OK;
}

enum sdk02_business_status sdk02_actuator_abort_local(struct sdk02_actuator_state* state, uint64_t request)
{
    if(!state || state->phase == SDK02_ACT_IDLE) { return SDK02_BAD_STATE; }
    if(request != state->command.request_sequence) { return SDK02_INVALID; }
    state->phase = SDK02_ACT_IDLE;
    state->native_cookie = 0;
    return SDK02_OK;
}
