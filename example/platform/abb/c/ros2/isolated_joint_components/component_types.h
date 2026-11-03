/* SPDX-License-Identifier: Apache-2.0 */
#ifndef SDK02_JOINT_COMPONENT_TYPES_H
#define SDK02_JOINT_COMPONENT_TYPES_H
#include <stddef.h>
#include <stdint.h>

/* Application values in ONE instance's private memory. This C layout is not a
 * channel/wire ABI. No pointer, C padding or guest identity is transferred.
 * The future SDK01 adapter must copy/validate fields through its published ABI.
 * sample_epoch/request_sequence/native_cookie are correlation data, never grants.
 */
#define SDK02_JOINT_MAX 16u
#define SDK02_JOINT_LIMIT_URAD INT64_C(1000000000)
#define SDK02_MAX_STEP_URAD INT64_C(10000)
#define SDK02_TARGET_TOLERANCE_URAD INT64_C(1000)
#define SDK02_MAX_FEEDBACK_AGE_NS UINT64_C(1000000000)

enum sdk02_business_status
{
    SDK02_OK = 0,
    SDK02_PENDING = 1,
    SDK02_INVALID = 2,
    SDK02_STALE = 3,
    SDK02_BUSY = 4,
    SDK02_BAD_STATE = 5,
    SDK02_CANCELLED = 6,
    SDK02_EXHAUSTED = 7
};

/* Model-specific values come from the selected, verified SDK01 deployment /
 * native descriptor. This is a private decoded value, not a second policy or
 * channel ABI. Runtime ROS limits still apply independently on every import. */
struct sdk02_joint_limits
{
    uint32_t count;
    int64_t lower_urad[SDK02_JOINT_MAX];
    int64_t upper_urad[SDK02_JOINT_MAX];
    int64_t max_step_urad[SDK02_JOINT_MAX];
    int64_t tolerance_urad[SDK02_JOINT_MAX];
};

struct sdk02_joint_sample
{
    uint64_t sample_epoch;
    /* Local receiving component's observation counter, not a ROS 2 Header
     * field or a sequence shared by independently receiving components. */
    uint64_t sequence;
    uint64_t stamp_ns;
    uint32_t count;
    int64_t position_urad[SDK02_JOINT_MAX];
};

struct sdk02_joint_command
{
    uint64_t sample_epoch;
    uint64_t request_sequence;
    uint64_t baseline_sequence;
    uint64_t baseline_stamp_ns;
    uint32_t count;
    int64_t baseline_urad[SDK02_JOINT_MAX];
    int64_t target_urad[SDK02_JOINT_MAX];
};

struct sdk02_joint_receipt
{
    uint64_t request_sequence;
    uint64_t native_cookie;
    uint32_t native_status;
    struct sdk02_joint_sample feedback;
};

static inline void sdk02_private_zero(void* memory, size_t bytes)
{
    volatile unsigned char* output = (volatile unsigned char*)memory;
    size_t index;
    for(index = 0; index < bytes; ++index) { output[index] = 0; }
}

static inline int sdk02_position_valid(int64_t value)
{
    return value >= -SDK02_JOINT_LIMIT_URAD && value <= SDK02_JOINT_LIMIT_URAD;
}

static inline int sdk02_near(int64_t left, int64_t right, int64_t tolerance)
{
    /* Both operands must have passed position_valid before this subtraction. */
    int64_t difference = left - right;
    return difference >= -tolerance && difference <= tolerance;
}

static inline int sdk02_limits_valid(struct sdk02_joint_limits const* limits, uint32_t count)
{
    uint32_t index;
    if(!limits || !count || count > SDK02_JOINT_MAX || limits->count != count) { return 0; }
    for(index = 0; index < count; ++index)
    {
        if(!sdk02_position_valid(limits->lower_urad[index]) || !sdk02_position_valid(limits->upper_urad[index])
           || limits->lower_urad[index] >= limits->upper_urad[index]
           || limits->max_step_urad[index] <= 0 || limits->max_step_urad[index] > SDK02_MAX_STEP_URAD
           || limits->tolerance_urad[index] < 0 || limits->tolerance_urad[index] > SDK02_TARGET_TOLERANCE_URAD)
        { return 0; }
    }
    return 1;
}

static inline int sdk02_within_model(struct sdk02_joint_limits const* limits, uint32_t index, int64_t value)
{
    return value >= limits->lower_urad[index] && value <= limits->upper_urad[index];
}

static inline void sdk02_copy_limits(struct sdk02_joint_limits* output, struct sdk02_joint_limits const* input)
{
    uint32_t index;
    output->count = input->count;
    for(index = 0; index < input->count; ++index)
    {
        output->lower_urad[index] = input->lower_urad[index];
        output->upper_urad[index] = input->upper_urad[index];
        output->max_step_urad[index] = input->max_step_urad[index];
        output->tolerance_urad[index] = input->tolerance_urad[index];
    }
}

static inline void sdk02_copy_sample(struct sdk02_joint_sample* output, struct sdk02_joint_sample const* input)
{
    uint32_t index;
    output->sample_epoch = input->sample_epoch;
    output->sequence = input->sequence;
    output->stamp_ns = input->stamp_ns;
    output->count = input->count;
    for(index = 0; index < input->count; ++index) { output->position_urad[index] = input->position_urad[index]; }
}

static inline void sdk02_copy_command(struct sdk02_joint_command* output, struct sdk02_joint_command const* input)
{
    uint32_t index;
    output->sample_epoch = input->sample_epoch;
    output->request_sequence = input->request_sequence;
    output->baseline_sequence = input->baseline_sequence;
    output->baseline_stamp_ns = input->baseline_stamp_ns;
    output->count = input->count;
    for(index = 0; index < input->count; ++index)
    {
        output->baseline_urad[index] = input->baseline_urad[index];
        output->target_urad[index] = input->target_urad[index];
    }
}

#endif
