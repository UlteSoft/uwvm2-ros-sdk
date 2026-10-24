// SPDX-License-Identifier: Apache-2.0
// In-progress complete controller semantics; the exact core codec closure must
// be genuinely generated/installed before this module is counted as usable.
import {
    Ros2Sensor_msgsMsgJointStateCodec as jointStateCodec,
    Ros2Trajectory_msgsMsgJointTrajectoryCodec as trajectoryCodec,
    Ros2Trajectory_msgsMsgJointTrajectoryPointCodec as pointCodec,
} from './ros2/flexiv-controller-core-humble-complete/bounded_records.mjs';

const states = new WeakMap();

function invalid(message)
{
    const error = new Error(message);
    error.code = 22;
    return error;
}

function stateFor(controller)
{
    const state = states.get(controller);
    if(!state || state.closed)
    {
        const error = new Error('Trajectory state is closed or not owned by this module');
        error.code = 9;
        throw error;
    }
    return state;
}

function name(value)
{
    if(typeof value !== 'string' || value.length === 0 || value.includes('\0') || new TextEncoder().encode(value).length > 256)
        throw invalid('Bounded original joint name required');
    const bytes = new TextEncoder().encode(value);
    if(new TextDecoder('utf-8', {fatal : true, ignoreBOM : true}).decode(bytes) !== value)
        throw invalid('Unicode scalar joint name required');
    return value;
}

function vector(value)
{
    if(!Array.isArray(value) || value.length === 0 || value.length > 32 || !value.every(number => typeof number === 'number' && Number.isFinite(number)))
    {
        throw invalid('Nonempty original finite goal positions required');
    }
    return Object.freeze(value.slice());
}

/**
 * @brief Preserve the Humble original trajectory node's complete callback state.
 * @details This guest-local state machine retains first-complete starting-state
 * latching, inclusive limits, goal cycling, whole JointTrajectory construction
 * and publish-before-index-advance ordering. It does not create a native node,
 * parameter service, timer, thread, subscription, publisher or permission.
 * The caller must separately provide actual authorized scheduling and transport.
 * Humble source domains only; Foxy's different callback is not substituted.
 * @see TrajectoryController.onJointState
 * @see TrajectoryController.onTimer
 */
export class TrajectoryController
{
    /**
     * @brief Copy and validate the original local trajectory configuration.
     * @details Store bounded private snapshots. Default starting limits are the
     * original [-2*3.14159,2*3.14159]. Goal lengths are preserved, including a
     * mismatch with joint count; no padding or controller-success inference is
     * added. Duplicate joint names are refused as an explicit migration limit.
     * @param {object} configuration [in] Borrowed joints:string[1..32],
     * goals:finite-number[][1..32], checkStartingPoint:boolean, optional limits
     * object mapping each exact joint name to a finite [lower,upper] pair.
     * Joint positions/limits retain original radians or metres by joint type.
     * Caller storage is copied; no reference to its mutable arrays is retained.
     * @returns {TrajectoryController} Fresh local state; close permanently retires
     * it. JavaScript owns its private allocation; no native finalizer is involved.
     * @throws {Error} code=22 for invalid bounded configuration, before any I/O.
     * @note Synchronous, one caller at a time; allocation follows JS semantics.
     * No Host/ROS permission or clock is used by construction.
     * @see TrajectoryController.onJointState
     */
    constructor(configuration)
    {
        if(!configuration)
            throw invalid('Complete finite configuration required');
        const selectedJoints = configuration.joints;
        const selectedGoals = configuration.goals;
        const checkStartingPoint = configuration.checkStartingPoint;
        const selectedLimits = configuration.limits;
        if(!Array.isArray(selectedJoints) || selectedJoints.length === 0 || selectedJoints.length > 32 || !Array.isArray(selectedGoals) ||
           selectedGoals.length === 0 || selectedGoals.length > 32 || typeof checkStartingPoint !== 'boolean')
            throw invalid('Complete finite configuration required');
        const joints = Object.freeze(selectedJoints.map(name));
        if(new Set(joints).size !== joints.length)
            throw invalid('Duplicate configured joint name');
        const goals = Object.freeze(selectedGoals.map(vector));
        const limits = new Map();
        for(const joint of joints)
        {
            const supplied = selectedLimits && Object.hasOwn(selectedLimits, joint) ? selectedLimits[joint] : undefined;
            const pair = supplied === undefined ? [ -2 * 3.14159, 2 * 3.14159 ] : supplied;
            if(!Array.isArray(pair) || pair.length !== 2 || !pair.every(value => typeof value === 'number' && Number.isFinite(value)))
            {
                throw invalid('Original finite lower/upper pair required');
            }
            limits.set(joint, Object.freeze(pair.slice()));
        }
        states.set(this, {
            joints,
            goals,
            limits,
            check : checkStartingPoint,
            received : false,
            startingPointOk : !checkStartingPoint,
            index : 0,
            busy : false,
            closed : false,
            publicationBlocked : false
        });
    }

    /**
     * @brief Apply the first complete JointState containing all configured joints.
     * @details Validate/snapshot every field, including unprinted header, velocity
     * and effort. Preserve Python dict(zip(name,position)) semantics: pair only the
     * common prefix and let the last duplicate received name win. Ignore other
     * joints and incomplete configured sets without latching. Once a complete set
     * arrives, latch its inclusive-limit outcome permanently, including rejection.
     * The shared complete JointState codec first requires every populated numeric
     * array to match name.length; irregular original zip inputs are explicitly
     * refused at this bounded admission boundary, not padded or projected.
     * @param {object} value [in] Whole original selected-core JointState; borrowed
     * only for the full encode/decode snapshot. No caller pointer is retained.
     * @returns {object} Fresh immutable received/startingPointOk diagnostic values;
     * these are local checks, never a physical state or controller success proof.
     * @throws {Error} Complete-codec errors propagate; code=9 for closed state,
     * code=17 for reentrant use. A rejected/incomplete input never sends a command.
     * @note Synchronous; actual subscription/type/QoS/quota/deadline grants are
     * independent caller responsibilities. No callback or thread is registered.
     * @see TrajectoryController.onTimer
     */
    onJointState(value)
    {
        const state = stateFor(this);
        if(state.busy)
        {
            const error = new Error('Trajectory state is busy');
            error.code = 17;
            throw error;
        }
        state.busy = true;
        try
        {
            const snapshot = jointStateCodec.decode(jointStateCodec.encode(value));
            if(state.check && !state.received)
            {
                const positions = new Map();
                for(let index = 0; index < Math.min(snapshot.name.length, snapshot.position.length); index += 1)
                {
                    positions.set(snapshot.name[index], snapshot.position[index]);
                }
                if(state.joints.every(joint => positions.has(joint)))
                {
                    state.startingPointOk = state.joints.every(joint => {
                        const [lower, upper] = state.limits.get(joint);
                        return lower <= positions.get(joint) && positions.get(joint) <= upper;
                    });
                    state.received = true;
                }
            }
            return Object.freeze({received : state.received, startingPointOk : state.startingPointOk});
        }
        finally
        {
            state.busy = false;
        }
    }

    /**
     * @brief Publish one complete original trajectory at an explicitly supplied tick.
     * @details When the starting check permits, construct default full header,
     * exact joint-name order, one full point with configured positions, empty
     * velocity/acceleration/effort and Duration(sec=1,nanosec=0). Advance the cyclic
     * goal index only after the synchronous publisher returns zero. No retry,
     * implicit clock or timing adjustment occurs; the caller owns the original
     * wait_sec_between_publish schedule and finite execution bound.
     * @param {function(object):number} publish [in] Trusted synchronous publisher
     * for the exact native JointTrajectory/endpoint/quota/deadline grant. Consume
     * the fresh whole value before returning; do not mutate it or return a Promise.
     * @returns {?object} Null while gated, otherwise immutable published/next goal
     * indices. Zero transport status does not certify controller acceptance,
     * motion, arrival or safe replay after a later unknown transport outcome.
     * @throws {Error} Closed/reentrant/codec/publisher failures propagate. A
     * numeric nonzero publisher status retains its original unsigned code. Any
     * failed publisher attempt permanently blocks further publications in this
     * state; a future tick cannot silently replay a possibly admitted command.
     * @note One caller thread. A publisher callback cannot reenter or close this
     * state. No owner or callback is retained by the kernel.
     * @see TrajectoryController.onJointState
     * @see TrajectoryController.close
     */
    onTimer(publish)
    {
        const state = stateFor(this);
        if(typeof publish !== 'function')
            throw invalid('Synchronous publisher required');
        if(state.busy)
        {
            const error = new Error('Trajectory state is busy');
            error.code = 17;
            throw error;
        }
        if(state.publicationBlocked)
        {
            const error = new Error('A prior publication failed; implicit replay is refused');
            error.code = 17;
            throw error;
        }
        if(!state.startingPointOk)
            return null;
        state.busy = true;
        try
        {
            const value = trajectoryCodec.defaultValue();
            const point = pointCodec.defaultValue();
            value.joint_names = state.joints.slice();
            point.positions = state.goals[state.index].slice();
            point.time_from_start.sec = 1;
            point.time_from_start.nanosec = 0;
            value.points = [ point ];
            const snapshot = trajectoryCodec.decode(trajectoryCodec.encode(value));
            state.publicationBlocked = true;
            const status = publish(snapshot);
            if(!Number.isInteger(status) || status < 0 || status > 0xffffffff)
                throw invalid('Unsigned synchronous publisher status required');
            if(status !== 0)
            {
                const error = new Error('Original trajectory publication failed; replay is not implied');
                error.code = status;
                throw error;
            }
            state.publicationBlocked = false;
            const previous = state.index;
            state.index = (state.index + 1) % state.goals.length;
            return Object.freeze({publishedGoalIndex : previous, nextGoalIndex : state.index});
        }
        finally
        {
            state.busy = false;
        }
    }

    /**
     * @brief Permanently close this local callback state.
     * @details Retire only guest-local configuration. This owns no ROS handle and
     * cannot stop, cancel, disable or roll back any previously published command.
     * The caller must separately close its real timer/subscription/publisher.
     * @returns {undefined} No result or cleanup acknowledgement; no native owner
     * belongs to this pure local state.
     * @throws {Error} code=9 for already closed/foreign state; code=17 during a
     * synchronous publication. A busy refusal leaves the state available.
     * @note Synchronous, no I/O and no retained asynchronous work or permission.
     * @see TrajectoryController.onTimer
     */
    close()
    {
        const state = stateFor(this);
        if(state.busy)
        {
            const error = new Error('Cannot close trajectory state during publication');
            error.code = 17;
            throw error;
        }
        state.closed = true;
    }
}
