// SPDX-License-Identifier: Apache-2.0
/**
 * @file client.ts
 * @brief Typed AimDK 1.1.0 main observations compiled into an AssemblyScript guest.
 * @details Communication consists exclusively of uwvm_ros2_v1 imports. Each
 * operation owns a fresh capability and closes it after success or failure.
 * Complete original records are decoded inside Wasm. Service calls are never
 * replayed. Independent calls have no shared writable state.
 */
import * as ros from '../../ros/as/ros2/raw';
import {monotonicNanoseconds, sleepMillisecond} from '../shared/as/wasi';
import {
    VendorCodec,
    Ros2Aimdk_msgsSrvGetMcAction_Response,
    Ros2Aimdk_msgsSrvGetMcAction_ResponseCodec,
    Ros2Aimdk_msgsMsgMcCommonState,
    Ros2Aimdk_msgsMsgMcCommonStateCodec,
    Ros2Aimdk_msgsSrvGetRobotResources_Response,
    Ros2Aimdk_msgsSrvGetRobotResources_ResponseCodec,
} from './ros2/agibot-ros2-sdk-v1-1-0-main-complete/bounded_records';

/**
 * @brief One observation's complete typed value and independent cleanup result.
 * @details value is non-null only when transport, decoding and cleanup succeed.
 * Vendor status codes remain in the original response and require inspection.
 */
export class AgibotObservation<T>
{
    error: u32 = 0;
    cleanupError: u32 = 0;
    value: T|null = null;
}

/**
 * @brief Perform a bounded service call or receive one state sample.
 * @param alias Exact borrowed runtime capability alias; never an endpoint URL.
 * @param topic True for the state subscription; false for either query service.
 * @param capacity Maximum canonical bytes defined by the selected original type.
 * @param timeoutMs Topic deadline in milliseconds, 1..30000; services use host policy.
 * @param codec Complete original record decoder with explicit field bounds.
 * @return Owned result; errors preserve both observation and capability-close errno.
 */
function observe<T>(
    alias: string,
    topic: bool,
    capacity: i32,
    timeoutMs: u32,
    codec: VendorCodec<T>,
    ): AgibotObservation<T>
{
    const result = new AgibotObservation<T>();
    const name = Uint8Array.wrap(String.UTF8.encode(alias));
    if(name.length == 0 || name.length > 255 || timeoutMs < 1 || timeoutMs > 30000)
    {
        result.error = 22;
        return result;
    }
    if(ros.abi_version() != 1)
    {
        result.error = 95;
        return result;
    }
    const slots = new Uint64Array(2);
    result.error = ros.capability_open(0, name.dataStart, name.length, slots.dataStart);
    if(result.error != 0)
    {
        return result;
    }
    const handle = slots[0];
    const bytes = new Uint8Array(capacity);
    if(topic)
    {
        const started = monotonicNanoseconds();
        result.error = started < 0 ? 5 : ros.topic_subscribe(handle);
        while(result.error == 0)
        {
            result.error = ros.event_poll(handle, 0, bytes.dataStart, capacity, slots.dataStart + 8);
            if(result.error != 11)
            {
                break;
            }
            const now = monotonicNanoseconds();
            if(now < 0 || now < started)
            {
                result.error = 5;
                break;
            }
            if(<u64>(now - started) >= <u64>timeoutMs * 1000000)
            {
                result.error = 110;
                break;
            }
            result.error = sleepMillisecond();
        }
    }
    else
    {
        const request = new Uint8Array(8);
        result.error = ros.service_call(
            handle,
            0,
            request.dataStart,
            request.length,
            bytes.dataStart,
            bytes.length,
            slots.dataStart + 8,
        );
    }
    result.cleanupError = ros.capability_close(handle);
    if(result.error == 0 && slots[1] > <u64>capacity)
    {
        result.error = 90;
    }
    if(result.error == 0)
    {
        result.error = result.cleanupError;
    }
    if(result.error == 0)
    {
        const decoded = codec.decodeChecked(bytes.subarray(0, <i32>slots[1]));
        result.error = decoded.status;
        if(result.error == 0)
        {
            result.value = decoded.value;
        }
    }
    return result;
}

/** @brief Query GetMcAction once; inspect the returned original header.code. */
export function queryMode(alias: string): AgibotObservation<Ros2Aimdk_msgsSrvGetMcAction_Response>
{
    return observe<Ros2Aimdk_msgsSrvGetMcAction_Response>(
        alias,
        false,
        156,
        3000,
        new Ros2Aimdk_msgsSrvGetMcAction_ResponseCodec(),
    );
}

/**
 * @brief Receive McCommonState with original timestamps, units and frames.
 * @param alias Exact granted subscription alias.
 * @param timeoutMs Monotonic deadline in milliseconds; retained samples may be older.
 * @return Complete bounded state or an explicit transport/codec/cleanup error.
 */
export function nextMotionState(
    alias: string,
    timeoutMs: u32 = 3000,
    ): AgibotObservation<Ros2Aimdk_msgsMsgMcCommonState>
{
    return observe<Ros2Aimdk_msgsMsgMcCommonState>(
        alias,
        true,
        698,
        timeoutMs,
        new Ros2Aimdk_msgsMsgMcCommonStateCodec(),
    );
}

/**
 * @brief List original X2 Ultra LinkCraft resources without executing an action.
 * @param alias Exact GetRobotResources service capability alias.
 * @return Full response; the bounded profile admits four resources and 128-byte strings.
 */
export function listResources(alias: string): AgibotObservation<Ros2Aimdk_msgsSrvGetRobotResources_Response>
{
    return observe<Ros2Aimdk_msgsSrvGetRobotResources_Response>(
        alias,
        false,
        10236,
        3000,
        new Ros2Aimdk_msgsSrvGetRobotResources_ResponseCodec(),
    );
}
