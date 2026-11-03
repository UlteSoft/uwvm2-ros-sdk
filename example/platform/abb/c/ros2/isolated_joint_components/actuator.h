/* SPDX-License-Identifier: Apache-2.0 */
#ifndef SDK02_ACTUATOR_H
#define SDK02_ACTUATOR_H
#include "component_types.h"

enum sdk02_actuator_phase { SDK02_ACT_IDLE, SDK02_ACT_PREPARED, SDK02_ACT_SUBMITTED, SDK02_ACT_TERMINAL };
struct sdk02_actuator_state
{
    uint64_t private_sentinel;
    uint64_t sample_epoch;
    uint64_t last_request;
    uint64_t native_cookie;
    uint64_t submitted_stamp_ns;
    uint32_t count;
    uint32_t have_feedback;
    uint32_t native_status;
    enum sdk02_actuator_phase phase;
    struct sdk02_joint_limits limits;
    struct sdk02_joint_sample feedback;
    struct sdk02_joint_command command;
};

/* Initialize a zeroed private object once. Live re-init cannot reset request
 * history; full runtime retirement/reinstantiation belongs to the common layer. */
enum sdk02_business_status sdk02_actuator_init(struct sdk02_actuator_state*, uint64_t epoch, uint32_t count, struct sdk02_joint_limits const*);
enum sdk02_business_status sdk02_actuator_feedback(struct sdk02_actuator_state*, struct sdk02_joint_sample const*, uint64_t now_ns);
enum sdk02_business_status sdk02_actuator_prepare(struct sdk02_actuator_state*, struct sdk02_joint_command const*, uint64_t now_ns);
/* Adapter calls submitted/terminal ONLY after the real owned ROS host import
 * or matching native event. These scalar cookies correlate data; the runtime's
 * actual instance/capability checks provide authority independently.
 */
enum sdk02_business_status sdk02_actuator_submitted(struct sdk02_actuator_state*, uint64_t request, uint64_t native_cookie, uint64_t stamp_ns);
enum sdk02_business_status sdk02_actuator_terminal(struct sdk02_actuator_state*, uint64_t request, uint64_t native_cookie, uint32_t status);
enum sdk02_business_status sdk02_actuator_receipt(struct sdk02_actuator_state*, struct sdk02_joint_receipt*, uint64_t now_ns);
/* No native cancellation/retirement is claimed by local abandonment. SDK01
 * must independently retire its owned endpoint before releasing its resources. */
enum sdk02_business_status sdk02_actuator_abort_local(struct sdk02_actuator_state*, uint64_t request);
#endif
