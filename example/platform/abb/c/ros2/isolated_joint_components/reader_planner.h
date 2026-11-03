/* SPDX-License-Identifier: Apache-2.0 */
#ifndef SDK02_READER_PLANNER_H
#define SDK02_READER_PLANNER_H
#include "component_types.h"

struct sdk02_reader_state
{
    uint64_t private_sentinel;
    uint64_t sample_epoch;
    uint64_t next_request;
    uint32_t count;
    uint32_t have_sample;
    uint32_t pending;
    struct sdk02_joint_limits limits;
    struct sdk02_joint_sample current;
    struct sdk02_joint_command planned;
};

/* State must initially be a zero-initialized private object. Reinitialization
 * requires a new retired/reinstantiated runtime component; init never erases an
 * existing component's pending requests or reuses its application counters.
 * These are local guest callbacks/business functions, not runtime imports or
 * exports. SDK01 integration must authenticate the real caller/channel before
 * delivering a copied application value. No guest field establishes an owner.
 */
enum sdk02_business_status sdk02_reader_init(struct sdk02_reader_state*, uint64_t epoch, uint32_t count, struct sdk02_joint_limits const*);
enum sdk02_business_status sdk02_reader_feedback(struct sdk02_reader_state*, struct sdk02_joint_sample const*, uint64_t now_ns);
/* now_ns uses the accepted sample's time domain. Recheck age at planning time;
 * copied state may have waited after receipt. This is a private C interface. */
enum sdk02_business_status sdk02_reader_plan(struct sdk02_reader_state*, int64_t step_urad,
                                             struct sdk02_joint_command*, uint64_t now_ns);
enum sdk02_business_status sdk02_reader_result(struct sdk02_reader_state*, struct sdk02_joint_receipt const*, uint64_t now_ns);
/* Local state retirement only; never a native cancellation acknowledgement. */
enum sdk02_business_status sdk02_reader_abort_local(struct sdk02_reader_state*, uint64_t request);
#endif
