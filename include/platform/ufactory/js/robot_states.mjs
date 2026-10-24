/**
 * @file robot_states.mjs
 * @brief Retain original ufactory value/workflow support under explicit caller ownership.
 * @details Use the exact source-selected complete record APIs and their finite bounds. Keep native
 * units, model selection and application result meanings unchanged. The caller supplies existing
 * capabilities and serializes mutable state; local construction, formatting and cleanup confer no grant,
 * automatic replay or physical command-completion guarantee.
 * @see The platform's localized language guide and complete API-CATALOG.md.
 */
// SPDX-License-Identifier: Apache-2.0
import {utf8Encode} from "ros/js/wire";

import {Ros2Sensor_msgsMsgJointStateCodec as jointCodec} from './core/humble/bounded_records.mjs';
import {
    Ros2Xarm_msgsMsgCIOStateCodec as gpioCodec,
    Ros2Xarm_msgsMsgRobotMsgCodec as robotCodec,
} from './ros2/ufactory-xarm-ros2-humble-gz-complete/bounded_records.mjs';

const owners = new WeakMap();

function failure(code, message, cause)
{
    const value = new Error(`${message}; primary=${code}`);
    value.code = code;
    if(cause !== undefined)
        value.cause = cause;
    return value;
}

// Exact finite binary64 fixed-six output for the original C-locale %f domain.
// No toFixed exponent fallback, decimal approximation or signed-zero erasure.
function fixedSix(value)
{
    if(typeof value !== 'number' || !Number.isFinite(value))
        throw failure(22, 'Finite original joint position required');
    const bytes = new ArrayBuffer(8), view = new DataView(bytes);
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

function stateFor(owner)
{
    const state = owners.get(owner);
    if(!state || state.closed)
        throw failure(9, 'Closed or foreign xArm observer');
    if(state.busy)
        throw failure(17, 'xArm observer is in a synchronous callback');
    return state;
}

function consume(owner, codec, value, render)
{
    const state = stateFor(owner);
    state.busy = true;
    try
    {
        const snapshot = codec.decode(codec.encode(value));
        const bytes = utf8Encode(render(snapshot));
        let status;
        try
        {
            status = state.write(bytes);
        }
        catch(cause)
        {
            throw failure(5, 'xArm observer output failed', cause);
        }
        if(status !== 0)
            throw failure(5, 'xArm observer output failed', status);
    }
    finally
    {
        state.busy = false;
    }
}

/**
 * @brief Preserve all three original Humble-Gazebo xArm state observer callbacks.
 * @details Fixed source: xArm-Developer/xarm_ros2 at5e126d492e04beb887f8bfee3a30c2c93d9f4d19,
 * test_robot_states.cpp. JointState, RobotMsg and CIOState remain whole native
 * types; this class validates every field even when the source logs one field
 * or a notification only. Native ROS log timestamp/severity formatting is
 * replaced by deterministic stdout while exact logger names/message text remain.
 * This local callback owner creates no Node, subscription, motion or permission.
 * @see RobotStateObserver.onJointStates
 * @see RobotStateObserver.onRobotStates
 * @see RobotStateObserver.onCgpioStates
 */
export class RobotStateObserver
{
    /**
     * @brief Retain one explicit bounded basic-output sink for the callbacks.
     * @details The synchronous writer must consume each fresh Uint8Array before
     * returning zero and must outlive this instance until close. It must not
     * return a Promise, reenter or retire this owner. No write occurs now.
     * @param {function(Uint8Array):number} write [in] Borrowed synchronous output
     * function, retained until close. Nonzero/throw maps to output error5, with cause.
     * @returns {RobotStateObserver} Fresh local owner, requiring explicit close.
     * @throws {Error} Invalid writer22 before I/O or resource acquisition.
     * @note One caller thread; allocation follows JavaScript. No native finalizer.
     * @see RobotStateObserver.close
     */
    constructor(write)
    {
        if(typeof write !== 'function')
            throw failure(22, 'Synchronous xArm output sink required');
        owners.set(this, {write, busy : false, closed : false});
    }

    /**
     * @brief Log every original JointState position with fixed-six formatting.
     * @details Snapshot header, names, every position/velocity/effort and complete
     * timestamp first. Preserve source typo "positon", surrounding "[ "/"]" and
     * one trailing space per element. C-locale nearest-even fixed-six formatting
     * is explicit, including negative zero and values above1e21. Original units
     * remain radians/metres by joint type; no unit or joint-order conversion.
     * The bounded complete codec refuses irregular populated array/name lengths.
     * @param {object} value [in] Whole selected Humble JointState, borrowed only
     * for one full snapshot; no caller array/header pointer is retained.
     * @returns {undefined} No native state acknowledgement or publication.
     * @throws {Error} Complete-codec errors, closed9, busy17 or output5. Partial
     * output cannot be rolled back; no hidden retry is attempted.
     * @note Serialized callback. Native delivery requires separate exact
     * /xarm/joint_states type/QoS-depth100/quota/deadline grants and actual peer.
     * @see RobotStateObserver.onRobotStates
     */
    onJointStates(value)
    {
        consume(this, jointCodec, value, snapshot => `[joint_states] positon: [ ${snapshot.position.map(number => fixedSix(number) + ' ').join('')}]\n`);
    }

    /**
     * @brief Log the source state/error pair after validating the whole RobotMsg.
     * @details Every unprinted scalar, header, vector and configured finite bound
     * is decoded before formatting original state/err as integers. This is not a
     * two-field replacement ROS message or a controller success interpretation.
     * @param {object} value [in] Whole pinned xarm_msgs/RobotMsg, borrowed only
     * for its complete encode/decode snapshot. No caller storage remains.
     * @returns {undefined} Only one synchronous diagnostic attempt.
     * @throws {Error} Codec/owner/reentry errors or output5; no implicit retry.
     * @note Exact native /xarm/robot_states, depth100, quota/deadline and independent
     * peer are caller policy. No subscription or command is created by this method.
     * @see RobotStateObserver.onCgpioStates
     */
    onRobotStates(value)
    {
        consume(this, robotCodec, value, snapshot => `[robot_states] state: ${snapshot.state}, error: ${snapshot.err}\n`);
    }

    /**
     * @brief Retain the source CIO callback notification over a complete CIOState.
     * @details Validate/snapshot every header, state/code, digital/analog array and
     * configuration field before the exact xarm_cgpio_states callback text. No
     * field is projected away merely because the original logger omits it.
     * @param {object} value [in] Whole pinned xarm_msgs/CIOState; borrowed now only.
     * @returns {undefined} One synchronous notification, not an empty native event.
     * @throws {Error} Whole-codec errors, closed9, reentry17 or output5.
     * @note Exact native /xarm/xarm_cgpio_states and depth100/quota/deadline grants
     * remain separate. No GPIO state or native output is modified.
     * @see RobotStateObserver.onJointStates
     */
    onCgpioStates(value)
    {
        consume(this, gpioCodec, value, () => '[xarm_cgpio_states] callback\n');
    }

    /**
     * @brief Permanently retire the local callback owner and release its writer.
     * @details This class owns no native handles. The actual application separately
     * checks all Node/subscription cleanup, including after callback/output errors.
     * @returns {undefined} No ROS shutdown or native cleanup acknowledgement.
     * @throws {Error} Closed/foreign9 or active callback17; busy refusal preserves
     * state and does not retry or close an external resource.
     * @note Synchronous; no I/O, hidden finalizer or permission is involved.
     * @see RobotStateObserver.constructor
     */
    close()
    {
        const state = stateFor(this);
        state.closed = true;
        state.write = null;
    }
}
