/**
 * @file main.ts
 * @brief Represent the complete original YASKAWA ROS 2 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
/** Read address 10011 exactly once. No output write, retry, reset or implicit grant. */
import {NativeApi} from 'ros/as/ros2/roswasm';
import {Ros2Motoros2_interfacesSrvReadSingleIO_Request as Request} from 'yaskawa/as/ros2/yaskawa-ros2-complete/bounded_records';
import {queryOnce, Outcome} from './query_once';
import {readAlias, proc_exit} from './wasi_alias';
let observed: Outcome|null = null;

/**
 * @brief Borrow the latest complete observation, or null before a query.
 * @details The reference shares module-owned mutable Outcome storage and may
 * outlive service close. A later _start() replaces the stored reference. Reading
 * it performs no IO or authority grant. Serialize access; no atomic snapshot is
 * promised. A retained response may describe controller refusal or stale state.
 * @return Shared nullable Outcome, including independent cleanup observations.
 * @see Outcome
 * @see _start
 */
export function lastOutcome(): Outcome|null
{
    return observed;
}

/**
 * @brief Execute the source-selected read through an explicitly granted alias.
 * @details Consumes the counted strict-UTF8 stdin frame defined by readAlias().
 * Malformed input exits with 22 before opening a service. Otherwise stores the
 * whole Outcome, then exits with the first primary/construction/cleanup failure
 * clamped to 125. Zero requires all those stages to succeed. No thread, retry,
 * native connection or controller recovery is created. Normal query failures
 * retain cleanup facts; traps/abort cannot guarantee cleanup. AssemblyScript
 * 0.28.20 is the selected frontend baseline, not an all-version qualification.
 * @see readAlias
 * @see queryOnce
 * @see lastOutcome
 * @see proc_exit
 */
export function _start(): void
{
    const input = readAlias();
    if(input.status)
    {
        proc_exit(input.status);
        return;
    }
    const request = new Request();
    request.address = 10011;
    const result = queryOnce(new NativeApi(), input.alias, request);
    observed = result;
    let status = result.primary;
    for(let i = 0; i < result.construction.statuses.length; ++i)
        if(!status)
            status = result.construction.statuses[i];
    for(let i = 0; i < result.cleanup.statuses.length; ++i)
        if(!status)
            status = result.cleanup.statuses[i];
    proc_exit(status <= 125 ? status : 125);
}
