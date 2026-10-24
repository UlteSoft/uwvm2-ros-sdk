/**
 * @file teleop.mjs
 * @brief Retain original elephant value/workflow support under explicit caller ownership.
 * @details Use the exact source-selected complete record APIs and their finite bounds. Keep native
 * units, model selection and application result meanings unchanged. The caller supplies existing
 * capabilities and serializes mutable state; local construction, formatting and cleanup confer no grant,
 * automatic replay or physical command-completion guarantee.
 * @see The platform's localized language guide and complete API-CATALOG.md.
 */
// SPDX-License-Identifier: Apache-2.0
import {
    Ros1Mycobot_communicationMycobotAnglesCodec as anglesCodec,
    Ros1Mycobot_communicationMycobotCoordsCodec as coordinatesCodec,
    Ros1Mycobot_communicationMycobotGripperStatusCodec as gripperCodec,
    Ros1Mycobot_communicationMycobotPumpStatusCodec as pumpCodec,
    Ros1Mycobot_communicationMycobotSetAnglesCodec as angleGoalCodec,
    Ros1Mycobot_communicationMycobotSetCoordsCodec as coordinateGoalCodec,
} from './ros1/elephant-mycobot-noetic-complete/bounded_records.mjs';

const privateStates = new WeakMap();
const axes = Object.freeze([ 'x', 'y', 'z', 'rx', 'ry', 'rz' ]);
const joints = Object.freeze([ 'joint_1', 'joint_2', 'joint_3', 'joint_4', 'joint_5', 'joint_6' ]);
const limits = Object.freeze([ [ -281.45, 281.45 ], [ -281.45, 281.45 ], [ -70, 420.67 ], [ -180, 180 ], [ -180, 180 ], [ -180, 180 ] ].map(Object.freeze));
const movement = new Map([
    [ 'w', [ 0, 1 ] ],
    [ 's', [ 0, -1 ] ],
    [ 'a', [ 1, 1 ] ],
    [ 'd', [ 1, -1 ] ],
    [ 'z', [ 2, -1 ] ],
    [ 'x', [ 2, 1 ] ],
    [ 'u', [ 3, 1 ] ],
    [ 'j', [ 3, -1 ] ],
    [ 'i', [ 4, 1 ] ],
    [ 'k', [ 4, -1 ] ],
    [ 'o', [ 5, 1 ] ],
    [ 'l', [ 5, -1 ] ]
]);

function failure(code, message, cause)
{
    const result = new Error(`${message}; primary=${code}`);
    result.code = code;
    if(cause !== undefined)
        result.cause = cause;
    return result;
}

function stateFor(owner)
{
    const state = privateStates.get(owner);
    if(!state || state.closed)
        throw failure(9, 'Closed or foreign keyboard state');
    if(state.busy)
        throw failure(17, 'Keyboard state is in a synchronous callback');
    return state;
}

function publish(state, callback, kind, codec, value)
{
    const snapshot = codec.decode(codec.encode(value));
    state.publicationBlocked = true;
    const status = callback(kind, snapshot);
    if(!Number.isInteger(status) || status < 0 || status > 0xffffffff)
    {
        throw failure(22, 'Unsigned synchronous publisher status required');
    }
    if(status !== 0)
        throw failure(status, 'Keyboard command admission failed; implicit replay is refused');
    state.publicationBlocked = false;
}

function coordinateGoal(state, callback)
{
    for(let index = 0; index < axes.length; index += 1)
    {
        const value = state.recorded[index], [ lower, upper ] = limits[index];
        if(!(lower <= value && value <= upper))
        {
            return Object.freeze({status : 22, rangeAxis : axes[index], value, mutationRetained : true, quit : false, awaitingHomeDelay : false});
        }
    }
    const value = coordinateGoalCodec.defaultValue();
    for(let index = 0; index < axes.length; index += 1)
        value[axes[index]] = state.recorded[index];
    value.speed = state.speed;
    value.model = 1;
    publish(state, callback, 'coordinates', coordinateGoalCodec, value);
    return Object.freeze({status : 0, quit : false, awaitingHomeDelay : false});
}

/**
 * @typedef {object} TeleopOutcome
 * @brief Immutable local keyboard state/command diagnostic.
 * @details Describes only the local source workflow and synchronous output
 * admission. It contains no handle, native state, arrival or stop guarantee.
 * @property {number} status Zero, startup idle11 or recoverable range refusal22.
 * @property {boolean} quit Whether the original lowercase q requested local exit.
 * @property {boolean} awaitingHomeDelay Whether the explicit2s wait is pending.
 * @property {string} [rangeAxis] Exact source x/y/z/rx/ry/rz label on range refusal.
 * @property {number} [value] Refused requested value, in millimetres or degrees.
 * @property {boolean} [mutationRetained] True when the source's request remains
 * mutated after range refusal; it is not an acknowledged physical state.
 * @see TopicKeyboardController.onKey
 * @see TopicKeyboardController.onTime
 */

/**
 * @brief Preserve the pinned Noetic MyCobot280 topic keyboard application's state.
 * @details This local state machine implements both full state inputs, all
 * active original keys, step, home, initialization, gripper and pump behavior, exact range and
 * publication ordering. It creates no terminal, ROS owner, native timer, device
 * or motion grant. A caller must supply separately authorized complete-topic
 * publishers and clock observations. Constructor/read/command state is private.
 * The original terminal/signal/thread/UI and native transport parity remain
 * separate requirements; a data recording is not a physical controller.
 * @see TopicKeyboardController.onKey
 * @see TopicKeyboardController.onTime
 */
export class TopicKeyboardController
{
    /**
     * @brief Copy the original local speed and change-percent parameters.
     * @details Defaults are speed50 and changePercent5; model remains the original
     * constant1 and home angles are[0,8,-127,40,0,0] degrees. Speed must fit the
     * original signed-byte request field[-128,127]; that wire range is not a
     * certified model speed limit. A finite initial percent remains unclamped,
     * as in the source; '+'/'-' subsequently apply their original bounds.
     * @param {object} configuration [in] Borrowed primitive speed/changePercent;
     * optional values are omitted only when undefined. No caller storage remains.
     * @returns {TopicKeyboardController} Fresh owned local state requiring close.
     * @throws {Error} Complete-codec/22 parameter failures precede all I/O.
     * @note Synchronous, one caller at a time. No native setup or permission.
     * @see TopicKeyboardController.close
     */
    constructor(configuration = {})
    {
        if(configuration === null || typeof configuration !== 'object' || Array.isArray(configuration))
        {
            throw failure(22, 'Explicit keyboard configuration object required');
        }
        const requestedSpeed = configuration.speed;
        const requestedPercent = configuration.changePercent;
        const speed = requestedSpeed === undefined ? 50 : requestedSpeed;
        const percent = requestedPercent === undefined ? 5 : requestedPercent;
        if(typeof percent !== 'number' || !Number.isFinite(percent))
            throw failure(22, 'Finite initial movement percent required');
        const probe = coordinateGoalCodec.defaultValue();
        probe.speed = speed;
        probe.model = 1;
        coordinateGoalCodec.validateValue(probe);
        privateStates.set(this, {
            speed,
            percent,
            currentCoordinates : [ 0, 0, 0, 0, 0, 0 ],
            currentAngles : [ 0, 0, 0, 0, 0, 0 ],
            recorded : null,
            home : [ 0, 8, -127, 40, 0, 0 ],
            now : 0n,
            waitingUntil : null,
            busy : false,
            closed : false,
            quit : false,
            publicationBlocked : false
        });
    }

    /**
     * @brief Consume one complete original MycobotCoords observation.
     * @details Validate/snapshot all six float32 fields. Preserve the startup
     * source sentinel: six zeros, including negative zero, do not establish the
     * initial requested coordinates. The first nonzero observation is copied
     * once; later state only updates the latest observation until init/home ends.
     * Cartesian coordinates remain millimetres, Euler angles remain degrees.
     * @param {object} value [in] Borrowed whole MycobotCoords for this call only.
     * @returns {boolean} Whether a nonzero initial observation was latched.
     * @throws {Error} Whole-codec errors, closed9 or reentrant17; no command.
     * @note Serialized callback. No ROS/time/device access or pointer is retained.
     * @see TopicKeyboardController.onKey
     */
    onCoordinates(value)
    {
        const state = stateFor(this);
        state.busy = true;
        try
        {
            const snapshot = coordinatesCodec.decode(coordinatesCodec.encode(value));
            state.currentCoordinates = axes.map(axis => snapshot[axis]);
            if(state.recorded === null && !state.currentCoordinates.every(number => number === 0))
            {
                state.recorded = state.currentCoordinates.slice();
            }
            return state.recorded !== null;
        }
        finally
        {
            state.busy = false;
        }
    }

    /**
     * @brief Copy one complete original six-joint degree observation.
     * @details All original joint_1..joint_6 float32 values are validated and
     * privately copied. The source's '3' key saves this latest vector as home;
     * an unavailable first report deliberately leaves the original six zeros.
     * @param {object} value [in] Whole MycobotAngles, borrowed only for snapshot.
     * @returns {undefined} No command, controller acknowledgement or conversion.
     * @throws {Error} Whole-codec errors, closed9 or reentrant17 before mutation.
     * @note Serialized, no native I/O, thread, clock or permission creation.
     * @see TopicKeyboardController.onKey
     */
    onAngles(value)
    {
        const state = stateFor(this);
        state.busy = true;
        try
        {
            const snapshot = anglesCodec.decode(anglesCodec.encode(value));
            state.currentAngles = joints.map(joint => snapshot[joint]);
        }
        finally
        {
            state.busy = false;
        }
    }

    /**
     * @brief Apply one explicit wall-time observation and complete a pending home wait.
     * @details Unsigned nanoseconds are nondecreasing within this local instance.
     * After an admitted init/home angle command, wait at least2s, then snapshot
     * the latest coordinates, perform the original range check and publish the
     * whole coordinate request. This does not busy-wait or synthesize a native
     * clock. The live caller must read its exact time_read_wall grant; recording
     * timestamps are explicitly data evidence only. No claim of original thread
     * scheduling, terminal blocking or physical arrival follows from the delay.
     * @param {bigint} nanoseconds [in] Original wall domain0..2^64-1; never seconds.
     * @param {function(string,object):number} callback [in] Borrowed synchronous
     * whole-command publisher returning unsigned status; it must not reenter.
     * @returns {TeleopOutcome} Fresh immutable status/wait diagnostic. Range22 preserves
     * the source's recorded mutation and is recoverable by a later user key.
     * @throws {Error} Time/config22, closed9, busy/prior-unknown17 or publication
     * failure. An attempted failed publisher is permanently blocked from replay.
     * @note One caller. No callback or real owner is retained after return.
     * @see TopicKeyboardController.onKey
     */
    onTime(nanoseconds, callback)
    {
        const state = stateFor(this);
        if(typeof nanoseconds !== 'bigint' || nanoseconds < state.now || nanoseconds > 0xffffffffffffffffn || typeof callback !== 'function')
            throw failure(22, 'Nondecreasing exact unsigned wall time and publisher required');
        if(state.publicationBlocked)
            throw failure(17, 'A prior command may have been admitted; replay refused');
        state.busy = true;
        try
        {
            state.now = nanoseconds;
            if(state.waitingUntil === null || nanoseconds < state.waitingUntil)
            {
                return Object.freeze({status : 0, awaitingHomeDelay : state.waitingUntil !== null, quit : state.quit});
            }
            state.waitingUntil = null;
            state.recorded = state.currentCoordinates.slice();
            return coordinateGoal(state, callback);
        }
        finally
        {
            state.busy = false;
        }
    }

    /**
     * @brief Apply one original key with complete command values and source ordering.
     * @details Preserve all Cartesian/Euler movement keys, case variants, '+'/'-',
     * gripper g/h, pump b/m, init1, home2, save3 and quit q. Steps are
     * 250*percent/100 millimetres and180*percent/100 degrees. '+' falls through to
     * a coordinate publication; '-' changes percent and returns. Gripper/pump
     * publish first and may be followed by a coordinate request. Init/home send
     * angles before the2s wait; save-home also reaches coordinate publication.
     * An out-of-range requested coordinate stays mutated, as in the source.
     * @param {string} key [in] One bounded ASCII character, borrowed only now.
     * @param {function(string,object):number} callback [in] Synchronous whole
     * coordinates/angles/gripper/pump publisher. It must consume the fresh value
     * before returning unsigned status, and must not return a Promise or reenter.
     * @returns {TeleopOutcome} Immutable quit/wait/status diagnostic. Idle11 means the
     * original all-zero startup sentinel still gates keyboard use. Range22 is
     * a local refusal, with previous separate effects and mutations retained.
     * @throws {Error} Closed9, pending-wait/reentry/prior-unknown17, config22,
     * u64 future-time overflow34, codec or publisher failure. Unlike the source's
     * broad retry loop, an attempted publication failure permanently blocks later
     * commands to prevent replay after an unknown native outcome. This explicit
     * finite migration difference is not original failure-policy equivalence.
     * @note No terminal, clock read or ROS owner is created. Each output requires
     * its own exact native type/topic/direction/QoS/quota/deadline grant. Zero
     * publisher status does not establish controller success or physical motion.
     * @see TopicKeyboardController.onTime
     * @see TopicKeyboardController.onCoordinates
     */
    onKey(key, callback)
    {
        const state = stateFor(this);
        if(typeof key !== 'string' || key.length !== 1 || key.charCodeAt(0) > 127 || typeof callback !== 'function')
        {
            throw failure(22, 'One ASCII key and synchronous complete publisher required');
        }
        if(state.publicationBlocked || state.waitingUntil !== null || state.quit)
            throw failure(17, 'Keyboard is waiting, quit or blocked after publication failure');
        if(state.recorded === null)
            return Object.freeze({status : 11, quit : false, awaitingHomeDelay : false});
        state.busy = true;
        try
        {
            if(key === 'q')
            {
                state.quit = true;
                return Object.freeze({status : 0, quit : true, awaitingHomeDelay : false});
            }
            const selected = movement.get(key.toLowerCase());
            if(key === '+')
                state.percent = Math.min(state.percent + 1, 20);
            else if(key === '-')
            {
                state.percent = Math.max(state.percent - 1, 1);
                return Object.freeze({status : 0, quit : false, awaitingHomeDelay : false});
            }
            else if(selected)
            {
                const [axis, sign] = selected;
                state.recorded[axis] += sign * (axis < 3 ? 250 : 180) * state.percent / 100;
            }
            else if('gGhH'.includes(key))
            {
                const value = gripperCodec.defaultValue();
                value.Status = key.toLowerCase() === 'g';
                publish(state, callback, 'gripper', gripperCodec, value);
            }
            else if('bBmM'.includes(key))
            {
                const value = pumpCodec.defaultValue();
                value.Status = key.toLowerCase() === 'b';
                value.Pin1 = 2;
                value.Pin2 = 5;
                publish(state, callback, 'pump', pumpCodec, value);
            }
            else if(key === '1' || key === '2')
            {
                if(state.now > 0xffffffffffffffffn - 2000000000n)
                    throw failure(34, 'The bounded wall-time wait would overflow');
                const value = angleGoalCodec.defaultValue();
                const selectedAngles = key === '1' ? [ 0, 0, 0, 0, 0, 0 ] : state.home;
                for(let index = 0; index < joints.length; index += 1)
                    value[joints[index]] = selectedAngles[index];
                value.speed = state.speed;
                publish(state, callback, 'angles', angleGoalCodec, value);
                state.waitingUntil = state.now + 2000000000n;
                return Object.freeze({status : 0, quit : false, awaitingHomeDelay : true});
            }
            else if(key === '3')
                state.home = state.currentAngles.slice();
            else
                return Object.freeze({status : 0, quit : false, awaitingHomeDelay : false});
            return coordinateGoal(state, callback);
        }
        finally
        {
            state.busy = false;
        }
    }

    /**
     * @brief Permanently retire only the local keyboard callback state.
     * @details No native handle is owned here. Closing cannot stop, undo, cancel
     * or acknowledge any previously admitted arm/gripper/pump command. The caller
     * separately checks every real Node/clock/publisher/subscription cleanup result.
     * @returns {undefined} No native cleanup acknowledgement or physical result.
     * @throws {Error} Closed/foreign9 or busy17; busy refusal preserves the state.
     * @note Synchronous, no I/O/finalizer and no permission or hidden retry.
     * @see TopicKeyboardController.onKey
     */
    close()
    {
        stateFor(this).closed = true;
    }
}
