/**
 * @file get_arm_state.mjs
 * @brief Retain original realman value/workflow support under explicit caller ownership.
 * @details Use the exact source-selected complete record APIs and their finite bounds. Keep native
 * units, model selection and application result meanings unchanged. The caller supplies existing
 * capabilities and serializes mutable state; local construction, formatting and cleanup confer no grant,
 * automatic replay or physical command-completion guarantee.
 * @see The platform's localized language guide and complete API-CATALOG.md.
 */
// SPDX-License-Identifier: Apache-2.0
import {utf8Encode} from "ros/js/wire";

import {
    Ros1Rm_msgsArm_Current_StateCodec as eulerCodec,
    Ros1Rm_msgsArm_Software_VersionCodec as versionCodec,
    Ros1Rm_msgsArmStateCodec as quaternionCodec,
    Ros1Rm_msgsGetArmState_CommandCodec as commandCodec,
    Ros1Rm_msgsSix_ForceCodec as forceCodec,
} from './ros1/realman-ros1-develop-complete/bounded_records.mjs';

const owners = new WeakMap();
const second = 1000000000n, maximumTime = 0xffffffffffffffffn;
const forceFields = Object.freeze([ 'force_Fx', 'force_Fy', 'force_Fz', 'force_Mx', 'force_My', 'force_Mz' ]);
const forceLabels = Object.freeze({raw : 'Six force', sensorZero : 'Zero six force', workZero : 'Work zro force', toolZero : 'Tool zero force'});
const publicationLabels = Object.freeze([
    '*******Get Arm Software Version Pub show on the rm_driver node.*******\n',
    '*******Get Arm State Pub*******\n',
    '*******Get Arm Six Force Pub*******\n',
]);

function failure(code, message, cause)
{
    const value = new Error(`${message}; primary=${code}`);
    value.code = code;
    if(cause !== undefined)
        value.cause = cause;
    return value;
}

function stateFor(owner)
{
    const state = owners.get(owner);
    if(!state || state.closed)
        throw failure(9, 'Closed or foreign RealMan query owner');
    if(state.busy)
        throw failure(17, 'RealMan query owner is in a synchronous callback');
    return state;
}

function timestamp(value, previous)
{
    if(typeof value !== 'bigint' || value < 0n || value > maximumTime || previous !== null && value < previous)
    {
        throw failure(22, 'Nondecreasing explicit unsigned ROS-time nanoseconds required');
    }
    return value;
}

function future(value, delay)
{
    if(value > maximumTime - delay)
        throw failure(34, 'RealMan query wait exceeds unsigned time');
    return value + delay;
}

function output(state, text)
{
    let result;
    try
    {
        result = state.write(utf8Encode(text));
    }
    catch(cause)
    {
        throw failure(5, 'RealMan query output failed', cause);
    }
    if(result !== 0)
        throw failure(5, 'RealMan query output failed', result);
}

function fixedSix(value)
{
    if(typeof value !== 'number' || !Number.isFinite(value))
        throw failure(22, 'Finite complete RealMan number required');
    const view = new DataView(new ArrayBuffer(8));
    view.setFloat64(0, value, true);
    const bits = view.getBigUint64(0, true), negative = (bits >> 63n) !== 0n;
    const exponent = Number((bits >> 52n) & 0x7ffn), fraction = bits & 0xfffffffffffffn;
    let scaled = (exponent === 0 ? fraction : (1n << 52n) | fraction) * 1000000n;
    const shift = exponent === 0 ? -1074 : exponent - 1075;
    if(shift >= 0)
        scaled <<= BigInt(shift);
    else
    {
        const denominator = 1n << BigInt(-shift), quotient = scaled / denominator, remainder = scaled % denominator;
        scaled = quotient + (remainder * 2n > denominator || remainder * 2n === denominator && (quotient & 1n) !== 0n ? 1n : 0n);
    }
    const text = scaled.toString().padStart(7, '0');
    return `${negative ? '-' : ''}${text.slice(0, -6)}.${text.slice(-6)}`;
}

function callback(owner, codec, value, render)
{
    const state = stateFor(owner);
    state.busy = true;
    try
    {
        output(state, render(codec.decode(codec.encode(value))));
    }
    finally
    {
        state.busy = false;
    }
}

function joints(value, quaternion)
{
    const count = value.dof === 7 ? 7 : 6;
    if(value.joint.length < count)
        throw failure(22, 'Original callback requires every indexed joint; short input is not padded');
    const label = quaternion && count === 6 ? 'joint radian state' : 'joint angle state';
    return `${label} is: [${value.joint.slice(0, count).map(fixedSix).join(', ')}]\n\n`;
}

/**
 * @brief Preserve the complete original RealMan state-query program workflow.
 * @details Retains three ordered query publications and seven whole response
 * callback roles from the pinned ROS1-develop api_Get_Arm_State_demo.cpp.
 * This local owner creates no Node, thread, timer, request correlation, native
 * type identity or resource grant. A genuine wrapper supplies exact publishers,
 * subscriptions and ROS time. Native two-thread callback interleaving differs
 * from this deliberately serialized Guest model and remains unqualified.
 * @see ArmStateQuery.onTime
 * @see ArmStateQuery.onReady
 * @see ArmStateQuery.close
 */
export class ArmStateQuery
{
    /**
     * @brief Retain one explicit synchronous diagnostic output sink.
     * @details The writer consumes each fresh Uint8Array and returns zero. It must
     * outlive this owner until close and must not return a Promise or reenter.
     * Construction performs no output, publication or native acquisition.
     * @param {function(Uint8Array):number} write [in] Borrowed bounded output sink,
     * retained until close. Nonzero/throw becomes output5 with its cause preserved.
     * @returns {ArmStateQuery} Fresh local owner in the initial-delay phase.
     * @throws {Error} Invalid sink22 before any effect. No hidden cleanup/retry.
     * @note One caller at a time; JavaScript allocation owns local state only.
     * @see ArmStateQuery.close
     */
    constructor(write)
    {
        if(typeof write !== 'function')
            throw failure(22, 'Explicit RealMan output sink required');
        owners.set(this, {write, busy : false, closed : false, failed : false, phase : 'initial', previous : null, deadline : null});
    }

    /**
     * @brief Advance the original finite query sequence using explicit ROS time.
     * @details First observation starts the1s pre-setup wait. After onReady,
     * wait2s, publish software, wait1s, publish state, wait1s, publish force,
     * wait1s and print the original final diagnostic. A late tick triggers only
     * the current stage. Each next wait starts from an actual post-effect clock
     * read, so slow output/publication cannot collapse later source sleeps.
     * @param {bigint} now [in] Nondecreasing u64 nanoseconds; recordings are only
     * data, while live callers must use independently granted time_read_ros.
     * @param {function(string,object):number} publish [in] Synchronous publisher,
     * borrowed for this call only. Kinds software/force use the original empty
     * object; state uses the entire GetArmState_Command with exact command text.
     * The wrapper must use genuine generated full codecs and original topics.
     * @param {function():bigint} afterEffect [in] Borrowed synchronous ROS-time
     * reader, called once after each successful publication and its diagnostic.
     * @returns {object} Fresh local phase/setupRequired/complete metadata only;
     * successful publication is not native delivery/controller acknowledgement.
     * @throws {Error} Time/config22, wait overflow34, closed9, busy/blocked17,
     * publisher status/exception or output5. Once an effect is attempted, any
     * failure permanently blocks replay; prior effects cannot be rolled back.
     * @note No native sleep, clock creation, retry or stop occurs here. Backward
     * ROS-time jumps explicitly refuse; original ros::Duration jump parity is
     * pending. The caller separately closes all actual Node resources.
     * @see ArmStateQuery.onReady
     */
    onTime(now, publish, afterEffect)
    {
        const state = stateFor(this);
        if(state.failed)
            throw failure(17, 'A prior query effect failed; implicit replay is forbidden');
        if(typeof publish !== 'function' || typeof afterEffect !== 'function')
            throw failure(22, 'Explicit synchronous query effects required');
        timestamp(now, state.previous);
        if(state.phase === 'initial')
        {
            state.deadline = future(now, second);
            state.previous = now;
            state.phase = 'waitSetup';
        }
        else
        {
            state.previous = now;
            if(state.phase === 'waitSetup' && now >= state.deadline)
                state.phase = 'setup';
            else if(state.deadline !== null && now >= state.deadline && [ 'software', 'state', 'force', 'finish' ].includes(state.phase))
            {
                state.busy = true;
                try
                {
                    if(state.phase === 'finish')
                    {
                        state.failed = true;
                        output(state, '*******All command is over please click ctrl+c end*******\n');
                        state.phase = 'complete';
                        state.deadline = null;
                        state.failed = false;
                    }
                    else
                    {
                        // Refuse a known-overflowing wait before publishing. A later clock
                        // failure/overflow after a real effect still blocks replay.
                        future(now, second);
                        const phase = state.phase, index = [ 'software', 'state', 'force' ].indexOf(phase);
                        const value = phase === 'state' ? commandCodec.decode(commandCodec.encode({command : 'get_current_arm_state'})) : {};
                        state.failed = true;
                        const result = publish(phase, value);
                        if(!Number.isInteger(result) || result < 0 || result > 0xffffffff)
                            throw failure(22, 'Unsigned synchronous publication status required');
                        if(result !== 0)
                            throw failure(result, 'Original RealMan query publication failed');
                        output(state, publicationLabels[index]);
                        const next = timestamp(afterEffect(), now);
                        state.deadline = future(next, second);
                        state.previous = next;
                        state.phase = [ 'state', 'force', 'finish' ][index];
                        state.failed = false;
                    }
                }
                finally
                {
                    state.busy = false;
                }
            }
        }
        return Object.freeze({phase : state.phase, setupRequired : state.phase === 'setup', complete : state.phase === 'complete'});
    }

    /**
     * @brief Begin the source two-second wait after all endpoints are created.
     * @details Call exactly once after onTime reports setupRequired. The genuine
     * wrapper creates all three publishers/seven subscriptions, then takes fresh
     * ROS time. Construction failure must abort and check existing resources.
     * @param {bigint} now [in] Fresh nondecreasing u64 post-setup nanoseconds.
     * @returns {undefined} No publication or diagnostic occurs.
     * @throws {Error} Wrong/failed phase17, closed9, busy17, time22 or overflow34.
     * Validation failure leaves endpoints owned by the caller for checked close.
     * @note No native endpoint is created, adopted or destroyed by this method.
     * @see ArmStateQuery.onTime
     */
    onReady(now)
    {
        const state = stateFor(this);
        if(state.failed || state.phase !== 'setup')
            throw failure(17, 'Exactly one complete RealMan endpoint setup required');
        timestamp(now, state.previous);
        const deadline = future(now, 2n * second);
        state.previous = now;
        state.deadline = deadline;
        state.phase = 'software';
    }

    /**
     * @brief Log all twelve original software-version fields in source order.
     * @details The whole Arm_Software_Version codec validates every original
     * nested build/version string before any diagnostic output. Text retains
     * UTF-8 and exact source labels; it supplies no parsed version compatibility.
     * @param {object} value [in] Complete original software value, borrowed only
     * during its encode/decode snapshot. No caller field/storage is retained.
     * @returns {undefined} One synchronous output attempt, no query acknowledgement.
     * @throws {Error} Whole-codec error, closed9, reentry17 or output5. Partial
     * output cannot be undone; no retry, publication or native I/O is performed.
     * @see ArmStateQuery.onArmState
     */
    onVersion(value)
    {
        callback(this,
                 versionCodec,
                 value,
                 item => [[ 'Product_version', item.product_version ],
                          [ 'controller_version', item.controller_version ],
                          [ 'algorithm_info', item.algorithm_info ],
                          [ 'ctrl_info build_time', item.ctrl_info.build_time ],
                          [ 'ctrl_info version', item.ctrl_info.version ],
                          [ 'com_info build_time', item.com_info.build_time ],
                          [ 'com_info version', item.com_info.version ],
                          [ 'program_info build_time', item.program_info.build_time ],
                          [ 'program_info version', item.program_info.version ],
                          [ 'dynamic_info', item.dynamic_info ],
                          [ 'plan_info build_time', item.plan_info.build_time ],
                          [ 'plan_info version', item.plan_info.version ],
        ].map(([ label, text ]) => `${label} is: ${text}\n`)
                             .join(''));
    }

    /**
     * @brief Log complete ArmState from the original ArmCurrentState topic.
     * @details This callback uses quaternion Pose despite the misleading main
     * source comment. Preserve XYZ/XYZW pose order and source six/seven-joint
     * labels. Validate every err/joint/dof/Pose field, including unprinted ones.
     * @param {object} value [in] Whole ArmState snapshot; original numeric units
     * are not converted or inferred from the inconsistent source log labels.
     * @returns {undefined} Original fixed-six diagnostics only; no state command.
     * @throws {Error} Codec errors, short required joint vector22 (instead of
     * source unchecked indexing), closed9, busy17 or output5. No hidden retry.
     * @note Borrowed during call only; one serialized callback, no ROS ownership.
     * @see ArmStateQuery.onEulerState
     */
    onArmState(value)
    {
        callback(this, quaternionCodec, value, item => joints(item, true) + 'pose Quaternion is: [' + [
            item.Pose.position.x,
            item.Pose.position.y,
            item.Pose.position.z,
            item.Pose.orientation.x,
            item.Pose.orientation.y,
            item.Pose.orientation.z,
            item.Pose.orientation.w
        ].map(fixedSix).join(', ') + ']\n\n');
    }

    /**
     * @brief Log whole Arm_Current_State from the original Arm_Current_State topic.
     * @details Preserve its distinct fixed six-element Euler Pose, complete
     * joint/err/dof fields, source angle label and original fixed-six output.
     * Do not substitute the quaternion ArmState type or add a unit conversion.
     * @param {object} value [in] Whole original Euler-state value, snapshotted
     * synchronously; no reference to caller arrays/storage remains.
     * @returns {undefined} Diagnostics only, with source embedded line breaks.
     * @throws {Error} Codec errors, short required joints22, closed9, reentry17 or
     * output5. Written bytes cannot be rolled back and no retry is attempted.
     * @note Serialized local callback; native endpoint/grants belong to caller.
     * @see ArmStateQuery.onArmState
     */
    onEulerState(value)
    {
        callback(this, eulerCodec, value, item => joints(item, false) + 'pose Euler angle is: [' + item.Pose.map(fixedSix).join(', ') + ']\n\n');
    }

    /**
     * @brief Preserve the four original complete six-axis force callback roles.
     * @details Each role keeps its own original label, including "Work zro";
     * all Fx/Fy/Fz/Mx/My/Mz float32 values are decoded then promoted for fixed-six
     * diagnostics. No transform, frame substitution or force/torque unit change.
     * @param {string} kind [in] Exact raw/sensorZero/workZero/toolZero source role.
     * @param {object} value [in] Entire Six_Force value, borrowed for one complete
     * snapshot. No caller object, callback or native handle remains retained.
     * @returns {undefined} Source multiline diagnostic only, no controller effect.
     * @throws {Error} Kind22, complete-codec/owner errors or output5. No retry.
     * @note Four genuine native topic bindings are still required by the wrapper;
     * an identical payload schema does not merge their endpoint permissions.
     * @see ArmStateQuery.onVersion
     */
    onForce(kind, value)
    {
        if(!Object.hasOwn(forceLabels, kind))
            throw failure(22, 'One exact original force topic role required');
        callback(this,
                 forceCodec,
                 value,
                 item => `${forceLabels[kind]} value is: [` +
                         forceFields.map((name, index) => `${index ? ' ' : ''}${name}:${fixedSix(item[name])}`).join(',\n') + ']\n\n');
    }

    /**
     * @brief Permanently retire only this local workflow/diagnostic owner.
     * @details Release its writer and state. The application independently checks
     * all actual Node cleanup results; this method is not ROS shutdown or stop.
     * @returns {undefined} No native delivery, cleanup or physical-state guarantee.
     * @throws {Error} Closed/foreign9 or active callback17. Busy refusal preserves
     * local state and never destroys the caller's resources.
     * @note No I/O, finalizer, thread, hidden retry or administrative grant.
     * @see ArmStateQuery.constructor
     */
    close()
    {
        const state = stateFor(this);
        state.closed = true;
        state.write = null;
    }
}
