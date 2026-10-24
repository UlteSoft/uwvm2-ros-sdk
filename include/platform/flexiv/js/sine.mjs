// SPDX-License-Identifier: Apache-2.0
// In-progress full-source semantics, excluded from current installed JS exports.
import {
    Ros2Sensor_msgsMsgJointStateCodec as jointStateCodec,
    Ros2Std_msgsMsgFloat64MultiArrayCodec as positionCodec,
} from './ros2/flexiv-controller-core-foxy-complete/bounded_records.mjs';
import {
    Ros2Flexiv_msgsMsgJointPosVelCodec as impedanceCodec,
} from './ros2/flexiv-ros2-foxy-complete/bounded_records.mjs';

/**
 * @brief Original joint sine amplitude, in radians.
 * @details Exact source literal 0.035; no robot-model limit or motion permission
 * follows from this pure numeric constant. It is not a TCP position amplitude.
 * @see SineSweepController.onTimer
 */
export const SWING_AMPLITUDE_RADIANS = 0.035;

/**
 * @brief Original sine frequency, in hertz before explicit speed scaling.
 * @details Exact source literal 0.3. Phase uses accumulated configured periods,
 * not elapsed wall time; importing this constant creates no timer or clock.
 * @see SWING_AMPLITUDE_RADIANS
 * @see SineSweepController.onTimer
 */
export const SWING_FREQUENCY_HZ = 0.3;

const states = new WeakMap();
const originalOrder = Object.freeze([ 2, 5, 6, 1, 4, 7, 3 ]);

function failure(code, message)
{
    const error = new Error(message);
    error.code = code;
    return error;
}

function stateFor(controller)
{
    const state = states.get(controller);
    if(!state || state.closed)
        throw failure(9, 'Closed or foreign sine state');
    if(state.busy)
        throw failure(17, 'Sine state is busy');
    return state;
}

/**
 * @brief Preserve the two original Foxy sine controller callback workflows.
 * @details Position emits complete Float64MultiArray; impedance emits complete
 * JointPosVel. Both latch the first reordered seven-joint state and accumulate
 * configured period only after successful publication. This guest-local kernel
 * opens no native controller, clock, thread, timer, topic or ROS permission.
 * The real Node/scheduler/parameter application and positive transport remain
 * separate pending work; the kernel alone is not an official application port.
 * @see SineSweepController.onJointState
 * @see SineSweepController.onTimer
 */
export class SineSweepController
{
    /**
     * @brief Configure one original output domain without creating ROS resources.
     * @details Snapshot primitive options, defaulting periodSeconds to the original
     * 0.001 seconds and speedScaling to 1.0. A finite negative/zero speed remains
     * representable; period must be finite and positive. No automatic model limit,
     * unit conversion, native enable or source-distribution fallback is added.
     * @param {object} configuration [in] Borrowed mode ('position' or 'impedance'),
     * optional periodSeconds and speedScaling finite numbers; no reference to the
     * caller's object is retained. Input positions remain original radians.
     * @returns {SineSweepController} Fresh private local state requiring close;
     * normal JavaScript memory ownership applies, with no native finalizer.
     * @throws {Error} code=22 for an unknown mode or invalid bounded parameters.
     * @note Synchronous one-thread construction; no I/O or permission is used.
     * @see SineSweepController.close
     */
    constructor(configuration)
    {
        if(!configuration)
            throw failure(22, 'Explicit sine configuration required');
        const mode = configuration.mode;
        const requestedPeriod = configuration.periodSeconds;
        const requestedSpeed = configuration.speedScaling;
        const period = requestedPeriod === undefined ? 0.001 : requestedPeriod;
        const speed = requestedSpeed === undefined ? 1.0 : requestedSpeed;
        if((mode !== 'position' && mode !== 'impedance') || typeof period !== 'number' || !Number.isFinite(period) || period <= 0 ||
           typeof speed !== 'number' || !Number.isFinite(speed))
        {
            throw failure(22, 'Original finite sine parameters required');
        }
        states.set(this, {mode, period, speed, initial : null, loopTime : 0.0, busy : false, closed : false, publicationBlocked : false});
    }

    /**
     * @brief Latch the first complete original JointState in source-specific order.
     * @details Validate/snapshot every header/name/position/velocity/effort field.
     * Preserve sorted(zip([2,5,6,1,4,7,3],positions)): use only the first seven
     * positions for the controller while retaining full input validation. Extra
     * original positions are not projected from the input type. A short first
     * position array is explicitly rejected before latching, instead of the
     * original later timer IndexError. No command is emitted by this callback.
     * Every populated numeric array must also match name.length under the shared
     * complete JointState codec. Irregular source inputs are refused explicitly;
     * no synthetic names, lengths or replacement fields are introduced.
     * @param {object} value [in] Whole selected Foxy JointState, borrowed only for
     * the full codec snapshot. Original joint positions are radians; no names or
     * coordinates are invented from the displayed/reordered subset.
     * @returns {boolean} True after an initial state exists; subsequent valid
     * callbacks preserve that original first-state latch and return true.
     * @throws {Error} Complete-codec errors propagate; 22 for fewer than seven
     * positions, 9 for closed/foreign state or 17 for reentrant use.
     * @note Synchronous; exact topic/identity/QoS/quota/deadline grants belong to
     * the actual caller-owned subscription, not this data-only kernel.
     * @see SineSweepController.onTimer
     */
    onJointState(value)
    {
        const state = stateFor(this);
        state.busy = true;
        try
        {
            const snapshot = jointStateCodec.decode(jointStateCodec.encode(value));
            if(state.initial === null)
            {
                if(snapshot.position.length < 7)
                    throw failure(22, 'Original seven-joint initialization required');
                state.initial = Object.freeze(
                    originalOrder.map((order, index) => [order, snapshot.position[index]]).sort((left, right) => left[0] - right[0]).map(pair => pair[1]));
            }
            return true;
        }
        finally
        {
            state.busy = false;
        }
    }

    /**
     * @brief Publish one whole original sine command at an explicitly driven tick.
     * @details Compute each of seven positions as initial + 0.035*sin(2*pi*0.3*
     * speedScaling*loopTime). The position domain retains default complete layout;
     * impedance retains its original fixed seven default zero velocities. The
     * pinned Foxy JointPosVel consists of positions[7] and velocities[7].
     * Advance loopTime by the configured period only after publication returns
     * zero, rather than using actual elapsed time or synthesizing derivatives.
     * @param {function(object):number} publish [in] Trusted synchronous publisher
     * for this exact complete output type and authorized command endpoint. Consume
     * the fresh record without mutation before returning unsigned status; no Promise.
     * @returns {boolean} False before initialization, true after one successful
     * transport admission. This is not native controller success or motion proof.
     * @throws {Error} 9/17 for owner/reentry state, 33 for a nonfinite sine phase,
     * complete-codec failures or original publisher errors. A failed publication
     * permanently blocks future commands in this local state; no implicit replay.
     * @note Exact command/type/QoS/deadline/quota and finite timer supervision are
     * independent trusted policy. This kernel creates no clock, owner or thread.
     * @see SWING_AMPLITUDE_RADIANS
     * @see SWING_FREQUENCY_HZ
     * @see SineSweepController.onJointState
     */
    onTimer(publish)
    {
        const state = stateFor(this);
        if(typeof publish !== 'function')
            throw failure(22, 'Synchronous publisher required');
        if(state.publicationBlocked)
            throw failure(17, 'A prior publication failed; implicit replay refused');
        if(state.initial === null)
            return false;
        state.busy = true;
        try
        {
            const phase = 2 * Math.PI * SWING_FREQUENCY_HZ * state.speed * state.loopTime;
            if(!Number.isFinite(phase))
                throw failure(33, 'Original sine calculation has a nonfinite phase');
            const displacement = SWING_AMPLITUDE_RADIANS * Math.sin(phase);
            const positions = state.initial.map(initial => initial + displacement);
            const codec = state.mode === 'position' ? positionCodec : impedanceCodec;
            const value = codec.defaultValue();
            if(state.mode === 'position')
                value.data = positions;
            else
                value.positions = positions;
            const snapshot = codec.decode(codec.encode(value));
            state.publicationBlocked = true;
            const status = publish(snapshot);
            if(!Number.isInteger(status) || status < 0 || status > 0xffffffff)
                throw failure(22, 'Unsigned synchronous publisher status required');
            if(status !== 0)
                throw failure(status, 'Original sine publication failed; replay is not implied');
            state.publicationBlocked = false;
            state.loopTime += state.period;
            return true;
        }
        finally
        {
            state.busy = false;
        }
    }

    /**
     * @brief Permanently retire only this local callback state.
     * @details No native owner is held here. Closing cannot stop, cancel, disable
     * or undo a previously admitted command. The caller separately closes its
     * real Node, subscription, publisher and timer, retaining cleanup failures.
     * @returns {undefined} No native cleanup acknowledgement or physical result.
     * @throws {Error} 9 for closed/foreign state or 17 during synchronous use;
     * a busy refusal leaves state unchanged and does not retry an external call.
     * @note Synchronous, with no I/O, finalizer, thread or permission creation.
     * @see SineSweepController.onTimer
     */
    close()
    {
        stateFor(this).closed = true;
    }
}
