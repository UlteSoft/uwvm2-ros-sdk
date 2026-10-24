// SPDX-License-Identifier: Apache-2.0
import {fixedThree} from './decimal.mjs';
import {Ros2Flexiv_msgsMsgRobotStatesCodec as humbleV1} from './ros2/flexiv-ros2-humble-v1-complete/bounded_records.mjs';
import {Ros2Flexiv_msgsMsgRobotStatesCodec as jazzyV1} from './ros2/flexiv-ros2-jazzy-v1-complete/bounded_records.mjs';
import {Ros2Flexiv_msgsMsgRobotStatesCodec as lyricalV1} from './ros2/flexiv-ros2-lyrical-v1-complete/bounded_records.mjs';
import {Ros2Flexiv_msgsMsgRobotStatesCodec as humbleV2} from './ros2/flexiv-ros2-humble-v2-complete/bounded_records.mjs';
import {Ros2Flexiv_msgsMsgRobotStatesCodec as jazzyV2} from './ros2/flexiv-ros2-jazzy-v2-complete/bounded_records.mjs';
import {Ros2Flexiv_msgsMsgRobotStatesCodec as humbleV22} from './ros2/flexiv-ros2-humble-v2-2-complete/bounded_records.mjs';
import {Ros2Flexiv_msgsMsgRobotStatesCodec as jazzyV22} from './ros2/flexiv-ros2-jazzy-v2-2-complete/bounded_records.mjs';

const profiles = Object.freeze([
    [ 'ros2_humble_v1', humbleV1, 'ext_wrench_in_tcp', 'Rizon4-000000' ],
    [ 'ros2_jazzy_v1', jazzyV1, 'ext_wrench_in_tcp', 'Rizon4-000000' ],
    [ 'ros2_lyrical_v1', lyricalV1, 'ext_wrench_in_tcp', 'Rizon4-000000' ],
    [ 'ros2_humble_v2', humbleV2, 'tcp_wrench_local', 'Enlight-L-000001' ],
    [ 'ros2_jazzy_v2', jazzyV2, 'tcp_wrench_local', 'Enlight-L-000001' ],
    [ 'ros2_humble_v2_2', humbleV22, 'tcp_wrench_local', 'Enlight-L-000001' ],
    [ 'ros2_jazzy_v2_2', jazzyV22, 'tcp_wrench_local', 'Enlight-L-000001' ],
].map(([ id, codec, forceMember, defaultSerial ]) => Object.freeze({id, codec, forceMember, defaultSerial})));

/**
 * @typedef {object} MonitorProfile
 * @brief Immutable configuration for one audited original monitor registration.
 * @details Contains no handle, native type authority or endpoint. Borrowing this
 * descriptor never initializes ROS. The complete codec validates every source
 * field; callers must not confuse its canonical identity with a native type hash.
 * @property {string} id Exact pinned source profile; no version fallback.
 * @property {object} codec Borrowed frozen complete RobotStates codec.
 * @property {string} forceMember Original ext_wrench_in_tcp or tcp_wrench_local.
 * @property {string} defaultSerial Original source's local ROS-parameter default.
 * @see monitorProfile
 * @see writeRobotStates
 */

function failure(code, message, cause)
{
    const error = new Error(`${message}; primary=${code}`);
    error.code = code;
    if(cause !== undefined)
        error.cause = cause;
    return error;
}

/**
 * @brief Select one pinned RobotStates monitor source domain.
 * @details The returned frozen descriptor retains the complete generated codec,
 * original V1/V2 force-member spelling and original serial default. Selecting a
 * descriptor creates no native identity, endpoint, capability or ROS context.
 * An unknown version fails instead of selecting a compatible-looking schema.
 * @param {string} id [in] Exact manifest profile ID, for example ros2_humble_v1.
 * @returns {object} Frozen descriptor; callers borrow its immutable codec and
 * strings for any lifetime. Codec identity is not native ROS type authority.
 * @throws {Error} code=22 for an unrecognized profile; no side effect occurs.
 * @note Synchronous and reentrant. No callback, thread, clock or ROS permission
 * is created. Profiles are the seven audited ROS2 monitor registrations only.
 * @see writeRobotStates
 */
export function monitorProfile(id)
{
    const selected = profiles.find(profile => profile.id === id);
    if(!selected)
        throw failure(22, 'Unknown pinned Flexiv monitor profile');
    return selected;
}

/**
 * @brief Write the original StateMonitor display from one complete value.
 * @details Encode and decode a complete private snapshot before output so every
 * original nested/unprinted field is validated and rendering cannot observe
 * subsequent changes to the caller's object. Preserve q order, TCP native
 * position units/frame and quaternion w/x/y/z display order. Force magnitude is
 * in the original newtons. Individual-square overflow fails with code 34; overflow of the
 * sum of finite squares retains the original positive-infinity result.
 * @param {object} value [in] Whole selected-family RobotStates, not a projection.
 * Borrowed only while making the validated snapshot; never modified or retained.
 * @param {string} profileId [in] Exact version accepted by monitorProfile.
 * @param {function(Uint8Array):number} write [in] Synchronous trusted writer.
 * It must consume each borrowed UTF-8 buffer before returning zero; it must not
 * retain it or return a Promise. Nonzero status becomes local output error 5.
 * @returns {number} Zero after all monitor text has been written.
 * @throws {Error} Complete-codec failure retains its code; 34 denotes an
 * overflowing component square; 5 denotes an output failure. Text may already
 * be partial on arithmetic/output failure; the whole value was validated first.
 * @note This function acquires no ROS permission and performs no native call.
 * The caller serializes writers shared across threads/callbacks; there is no
 * implicit scheduling, mutex, unit conversion, retry or normalization.
 * @see monitorProfile
 */
export function writeRobotStates(value, profileId, write)
{
    if(typeof write !== 'function')
        throw failure(22, 'Synchronous output writer required');
    const profile = monitorProfile(profileId);
    const snapshot = profile.codec.decode(profile.codec.encode(value));
    const encoder = new TextEncoder();

    function output(text)
    {
        let status;
        try
        {
            status = write(encoder.encode(text));
        }
        catch(cause)
        {
            throw failure(5, 'Monitor output failed', cause);
        }
        if(!Number.isInteger(status) || status !== 0)
            throw failure(5, 'Monitor output failed', status);
    }

    output(`Joint positions: [${snapshot.q.map(q => `'${fixedThree(q)}'`).join(', ')}]\n`);
    const position = snapshot.tcp_pose.pose.position;
    output(`TCP Position: x=${fixedThree(position.x)}, y=${fixedThree(position.y)}, z=${fixedThree(position.z)}\n`);
    const quaternion = snapshot.tcp_pose.pose.orientation;
    output(`TCP Orientation: w=${fixedThree(quaternion.w)}, x=${fixedThree(quaternion.x)}, y=${fixedThree(quaternion.y)}, z=${fixedThree(quaternion.z)}\n`);
    const force = snapshot[profile.forceMember].wrench.force;
    const xx = force.x * force.x;
    const yy = force.y * force.y;
    const zz = force.z * force.z;
    if(![xx, yy, zz].every(Number.isFinite))
        throw failure(34, 'Original force-component square overflow');
    const magnitude = Math.sqrt(xx + yy + zz);
    output(`External Force Magnitude: ${magnitude === Infinity ? 'inf' : fixedThree(magnitude)} N\n---\n`);
    return 0;
}
