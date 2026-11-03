/* SPDX-License-Identifier: Apache-2.0 */
#if !defined(__wasm__)
#error "Wasm-only SDK algorithm; no native application fallback"
#endif
#include "planner_kernel.h"
#include <string.h>

uint32_t sdk03_bounded_plan(uint32_t count, sdk03_joint_limit const* limits,
                           int64_t const* position, int64_t* target)
{
    int64_t prepared[SDK03_MAX_JOINTS];
    if (!count || count > SDK03_MAX_JOINTS || !limits || !position || !target) return 22;
    for (uint32_t i = 0; i != count; ++i)
    {
        sdk03_joint_limit const* d = limits + i;
        int64_t q = position[i];
        if (d->lower < -1000000000 || d->upper > 1000000000 || d->lower >= d->upper ||
            q < d->lower || q > d->upper || !d->step || d->step > 10000 || d->tolerance > 1000) return 95;
        int64_t room = d->upper - q;
        prepared[i] = room ? q + (room < (int64_t)d->step ? room : (int64_t)d->step)
                           : q - ((q - d->lower) < (int64_t)d->step ? q - d->lower : (int64_t)d->step);
    }
    /* Transactional output also permits an intentional same-heap alias. */
    memcpy(target, prepared, count * sizeof *target);
    return 0;
}
