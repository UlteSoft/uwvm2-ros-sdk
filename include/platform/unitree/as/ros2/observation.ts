/**
 * @file observation.ts
 * @brief Observe exact complete native Unitree ROS 2 records.
 * @details Every normal acquisition retains one owner for a finite poll budget
 * and closes it once. There is no command publication, backend substitution,
 * native driver, automatic capacity retry, or hidden clock/executor.
 */
import {Api, Status} from 'ros/as/api';
import {Capability} from 'ros/as/roswasm';
import {Observation} from 'unitree/as/observation';
import {
    VendorCodec,
    Ros2Unitree_goMsgSportModeState as SportModeState,
    Ros2Unitree_goMsgSportModeStateCodec as SportModeStateCodec,
    Ros2Unitree_goMsgLowState as LowState,
    Ros2Unitree_goMsgLowStateCodec as LowStateCodec,
    Ros2Unitree_goMsgWirelessController as WirelessController,
    Ros2Unitree_goMsgWirelessControllerCodec as WirelessControllerCodec,
} from 'unitree/as/ros2/records';

/**
 * @brief Retain one exact-type owner and decode one complete original record.
 * @tparam T Complete generated original Unitree record class.
 * @param[in] api Borrowed genuine ROS 2 dispatch, stable through return.
 * @param[in] alias Existing strict UTF-8 exact-type subscription policy alias.
 * @param[in] maximum Complete generated schema byte ceiling.
 * @param[in] codec Exact selected complete decoder, with no transport side effects.
 * @param[in] attempts Poll budget in [1,250]; idle 11 alone permits another poll.
 * @param[in] pause Caller wait between idle polls; must not reenter this owner.
 * @return Managed complete value with independent operation/length/close facts.
 * @details Allocation or a Wasm trap can prevent normal cleanup. All ordinary
 * numeric errors close the acquired owner once. Successful decoded values own
 * their backing storage and preserve every original field and array element.
 */
function receive<T>(
    api: Api,
    alias: string,
    maximum: i32,
    codec: VendorCodec<T>,
    attempts: u32,
    pause: () => u32,
    ): Observation<T>
{
    const result = new Observation<T>();
    if(api.backend != 2 || attempts < 1 || attempts > 250)
    {
        result.primary = Status.Invalid;
        return result;
    }
    const owner = new Capability(api);
    result.primary = owner.open(alias);
    if(result.primary)
    {
        return result;
    }
    result.primary = owner.subscribe();
    if(!result.primary)
    {
        for(let index: u32 = 0; index < attempts; ++index)
        {
            const reply = owner.poll(maximum);
            result.rpc = reply;
            ++result.polls;
            result.primary = reply.status;
            if(reply.status != 11 || index + 1 == attempts)
            {
                break;
            }
            result.primary = pause();
            if(result.primary)
            {
                break;
            }
        }
        const actual = result.rpc;
        if(!result.primary && actual !== null)
        {
            const decoded = codec.decodeChecked(actual.bytes);
            result.primary = decoded.status;
            if(!decoded.status && decoded.value !== null)
            {
                result.value = decoded.value;
                result.wire = actual.bytes;
            }
            else if(!result.primary)
            {
                result.primary = Status.Invalid;
            }
        }
    }
    result.cleanupPresent = true;
    result.cleanup = owner.close();
    return result;
}

/**
 * @brief Observe the complete native locomotion, odometry, IMU, and foot state.
 * @param[in] api Borrowed genuine ROS 2 API; no alternate backend is chosen.
 * @param[in] alias Existing exact native SportModeState subscription capability alias.
 * @param[in] attempts Finite total poll budget, 1 through 250.
 * @param[in] pause Caller-controlled wait after idle; called at most attempts minus one times.
 * @return Entire owned SportModeState record and independent operation/poll/close facts.
 * @details Input storage stays stable synchronously. No robot command, source
 * interpreter, native pointer, automatic replay, or authority change is created.
 */
export function waitMotionState(api: Api, alias: string, attempts: u32, pause: () => u32): Observation<SportModeState>
{
    return receive<SportModeState>(api, alias, SportModeState.maxWireBytes, new SportModeStateCodec(), attempts, pause);
}

/**
 * @brief Observe every native motor, BMS, force, remote, temperature, reserve, and CRC field.
 * @param[in] api Borrowed genuine ROS 2 API; no alternate backend is chosen.
 * @param[in] alias Existing exact native LowState subscription capability alias.
 * @param[in] attempts Finite total poll budget, 1 through 250.
 * @param[in] pause Caller-controlled wait after idle; called at most attempts minus one times.
 * @return Entire owned LowState record and independent operation/poll/close facts.
 * @details Input storage stays stable synchronously. No robot command, source
 * interpreter, native pointer, automatic replay, or authority change is created.
 */
export function waitLowState(api: Api, alias: string, attempts: u32, pause: () => u32): Observation<LowState>
{
    return receive<LowState>(api, alias, LowState.maxWireBytes, new LowStateCodec(), attempts, pause);
}

/**
 * @brief Observe all four joystick axes and the complete key bitmask without generating input.
 * @param[in] api Borrowed genuine ROS 2 API; no alternate backend is chosen.
 * @param[in] alias Existing exact native WirelessController subscription capability alias.
 * @param[in] attempts Finite total poll budget, 1 through 250.
 * @param[in] pause Caller-controlled wait after idle; called at most attempts minus one times.
 * @return Entire owned WirelessController record and independent operation/poll/close facts.
 * @details Input storage stays stable synchronously. No robot command, source
 * interpreter, native pointer, automatic replay, or authority change is created.
 */
export function waitWirelessController(
    api: Api,
    alias: string,
    attempts: u32,
    pause: () => u32,
    ): Observation<WirelessController>
{
    return receive<WirelessController>(
        api,
        alias,
        WirelessController.maxWireBytes,
        new WirelessControllerCodec(),
        attempts,
        pause,
    );
}
