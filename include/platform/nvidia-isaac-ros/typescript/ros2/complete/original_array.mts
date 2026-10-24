/**
 * @file original_array.mts
 * @brief Execute complete original AprilTag arrays through the existing shared JS ROS binding.
 * @details Capability ownership remains explicit and instance-local. No raw Wasm
 * ABI, native layout, handle generation, callback, retrying publish or grant is created.
 */
import {Capability as SharedCapability} from "ros/js/transport";
import * as types from "nvidia-isaac-ros/typescript/ros2/complete/records";
import {poll, publish, type BorrowedCapability} from "nvidia/typescript/transport";
import {CodecError, codecErrorCode} from "nvidia/typescript/codec";
import {equalBytes, runGuest} from "nvidia/typescript/stdio";

type Owner = InstanceType<typeof SharedCapability>;
type ArrayValue = types.Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray;
type Header = types.Ros2Std_msgsMsgHeader;
type Point = types.Ros2Geometry_msgsMsgPoint;
type Operation = "receive" | "echo" | "revoke";
const codec = types.Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArrayCodec;

/** @brief Preserve primary, cleanup and retirement observations independently. */
interface Report
{
    primary: number;
    cleanup: number;
    retirement: number;
    stale: number;
    reopen: number;
    published: number;
    numeric_fields_checked: number;
    wire_hex: string;
}

/** @brief Accept only an original exact uint32 status; never apply modulo narrowing. */
function status(value: unknown): number
{
    if(typeof value !== "number" || !Number.isInteger(value) || value < 0 || value > 4294967295)
    {
        throw new CodecError(22);
    }
    return value;
}

/** @brief Inspect the existing copied invocation tuple without interpreting a native pointer. */
function invocationStatus(value: unknown): number
{
    if(!Array.isArray(value) || value.length !== 4 || !(value[1] instanceof Uint8Array) ||
       (value[2] !== null && (typeof value[2] !== "bigint" || value[2] < 0n || value[2] > 0xffffffffffffffffn)) ||
       (value[3] !== null && (typeof value[3] !== "bigint" || value[3] < 0n || value[3] > 0xffffffffffffffffn)))
    {
        throw new CodecError(22);
    }
    return status(value[0]);
}

/** @brief Open one exact operator alias through the sole common JS capability class. */
function open(alias: string): {owner: Owner | null; code: number}
{
    const result: unknown = SharedCapability.open(alias);
    if(!Array.isArray(result) || result.length !== 2)
    {
        throw new CodecError(22);
    }
    const code = status(result[1]);
    if(code === 0)
    {
        if(!(result[0] instanceof SharedCapability))
        {
            throw new CodecError(22);
        }
        return {owner: result[0], code};
    }
    if(result[0] !== null)
    {
        throw new CodecError(22);
    }
    return {owner: null, code};
}

/** @brief Retire once and preserve cleanup errors independently of the primary operation. */
function closeStatus(owner: Owner): number
{
    try
    {
        return status(owner.close());
    }
    catch(error: unknown)
    {
        return codecErrorCode(error);
    }
}

/** @brief Borrow an exact genuine handle before retirement; keep all 64 bits. */
function borrowedHandle(owner: Owner): bigint
{
    const handle: unknown = owner.handle;
    if(typeof handle !== "bigint" || handle <= 0n || handle > 0xffffffffffffffffn)
    {
        throw new CodecError(22);
    }
    return handle;
}

/**
 * @brief Observe one actual Host refusal for an exact previously borrowed retired handle.
 * @details The immutable receiver is only a synchronous diagnostic borrow. It is
 * never a second Capability instance, is never closed, and does not reopen a slot.
 * Reusing the original shared invocation method reaches its existing C builtin;
 * no raw ABI implementation or module-owned memory view is reproduced here.
 */
function retiredStatus(handle: bigint): number
{
    const result: unknown = SharedCapability.prototype.invoke.call(
        Object.freeze({handle}), "event_poll", new Uint8Array(), codec.maxWireBytes);
    return invocationStatus(result);
}

/**
 * @brief Borrow an existing owner for the typed facade with a copied request buffer.
 * @details TypeScript 5.9 distinguishes ArrayBuffer from SharedArrayBuffer. The
 * common JS method accepts an ArrayBuffer-backed Uint8Array; copying each request
 * makes that bound explicit without a type assertion or a second owner. Returned
 * values remain unknown until the typed facade validates the existing tuple.
 */
function borrow(owner: Owner): BorrowedCapability
{
    return {
        invoke(operation: string, request: Uint8Array, capacity: number): unknown
        {
            return owner.invoke(operation, new Uint8Array(request), capacity);
        }
    };
}

/** @brief Poll complete typed values; only an actual empty11 allows bounded idle waiting. */
function receive(owner: Owner): {value: ArrayValue | null; code: number}
{
    for(let attempt = 0; attempt < 1000; ++attempt)
    {
        const result = poll(borrow(owner), codec);
        if(result.ok)
        {
            return {value: result.value, code: 0};
        }
        if(result.status !== 11)
        {
            return {value: null, code: result.status};
        }
        const paused = status(__uwvm.pause_ms(20));
        if(paused !== 0)
        {
            return {value: null, code: paused};
        }
    }
    return {value: null, code: 110};
}

/**
 * @brief Assert every active original numeric/string field after a real typed decode.
 * @details Each comparison is executed in the guest, including all 36 covariance
 * values per detection. Object.is retains signed zero; no quaternion is normalized.
 * @return Full canonical bytes and the actual number of numeric comparisons.
 */
function checkedWire(value: ArrayValue): {bytes: Uint8Array; numeric: number}
{
    const bytes = codec.encode(value);
    const again = codec.decode(bytes);
    let numeric = 0;
    const sameNumber = (left: number, right: number): boolean =>
    {
        ++numeric;
        return Object.is(left, right);
    };
    const sameHeader = (left: Header, right: Header): boolean =>
        sameNumber(left.stamp.sec, right.stamp.sec) &&
        sameNumber(left.stamp.nanosec, right.stamp.nanosec) && left.frame_id === right.frame_id;
    const samePoint = (left: Point, right: Point): boolean =>
        sameNumber(left.x, right.x) && sameNumber(left.y, right.y) && sameNumber(left.z, right.z);
    if(!sameHeader(value.header, again.header) || value.detections.length !== again.detections.length)
    {
        throw new CodecError(22);
    }
    for(let index = 0; index < value.detections.length; ++index)
    {
        const left = value.detections[index];
        const right = again.detections[index];
        if(left === undefined || right === undefined || left.family !== right.family ||
           !sameNumber(left.id, right.id) || !samePoint(left.center, right.center) ||
           left.corners.length !== 4 || right.corners.length !== 4)
        {
            throw new CodecError(22);
        }
        for(let corner = 0; corner < 4; ++corner)
        {
            const a = left.corners[corner];
            const b = right.corners[corner];
            if(a === undefined || b === undefined || !samePoint(a, b))
            {
                throw new CodecError(22);
            }
        }
        const a = left.pose.pose.pose;
        const b = right.pose.pose.pose;
        if(!sameHeader(left.pose.header, right.pose.header) || !samePoint(a.position, b.position) ||
           !sameNumber(a.orientation.x, b.orientation.x) || !sameNumber(a.orientation.y, b.orientation.y) ||
           !sameNumber(a.orientation.z, b.orientation.z) || !sameNumber(a.orientation.w, b.orientation.w))
        {
            throw new CodecError(22);
        }
        for(let at = 0; at < 36; ++at)
        {
            if(!sameNumber(left.pose.pose.covariance[at], right.pose.pose.covariance[at]))
            {
                throw new CodecError(22);
            }
        }
    }
    if(!equalBytes(bytes, codec.encode(again)))
    {
        throw new CodecError(22);
    }
    return {bytes, numeric};
}

/** @brief Run one distinct native flow and close each remaining live owner explicitly. */
function perform(operation: Operation): Report
{
    const report: Report =
    {
        primary: 0,
        cleanup: 0,
        retirement: 0,
        stale: 0,
        reopen: 0,
        published: 0,
        numeric_fields_checked: 0,
        wire_hex: ""
    };
    let owner: Owner | null = null;
    let publisher: Owner | null = null;
    try
    {
        if(__uwvm.argv.length !== (operation === "echo" ? 3 : 2))
        {
            report.primary = 22;
            return report;
        }
        const alias = __uwvm.argv[1];
        const opened = open(alias);
        report.primary = opened.code;
        owner = opened.owner;
        if(report.primary !== 0 || owner === null)
        {
            return report;
        }
        report.primary = invocationStatus(owner.invoke("topic_subscribe", new Uint8Array(), 0));
        if(report.primary !== 0)
        {
            return report;
        }
        const received = receive(owner);
        report.primary = received.code;
        if(report.primary !== 0 || received.value === null)
        {
            return report;
        }
        const checked = checkedWire(received.value);
        report.numeric_fields_checked = checked.numeric;
        report.wire_hex = Array.from(checked.bytes, byte => byte.toString(16).padStart(2, "0")).join("");
        const handle = borrowedHandle(owner);
        if(operation === "revoke")
        {
            const retiring = owner;
            owner = null;
            try
            {
                report.retirement = invocationStatus(retiring.invoke("capability_revoke", new Uint8Array(), 0));
            }
            catch(error: unknown)
            {
                report.primary = codecErrorCode(error);
                report.cleanup = closeStatus(retiring);
                return report;
            }
            if(report.retirement !== 0)
            {
                report.primary = report.retirement;
                report.cleanup = closeStatus(retiring);
                return report;
            }
            report.stale = retiredStatus(handle);
            const reopened = open(alias);
            report.reopen = reopened.code;
            if(reopened.owner !== null)
            {
                report.cleanup = closeStatus(reopened.owner);
                report.primary = 22;
            }
            if(report.stale !== 9 || report.reopen !== 125)
            {
                report.primary = 22;
            }
            return report;
        }
        report.retirement = closeStatus(owner);
        owner = null;
        if(report.retirement !== 0)
        {
            report.primary = report.retirement;
            return report;
        }
        if(operation === "receive")
        {
            report.stale = retiredStatus(handle);
            if(report.stale !== 9)
            {
                report.primary = 22;
            }
            return report;
        }
        const openedPublisher = open(__uwvm.argv[2]);
        report.primary = openedPublisher.code;
        publisher = openedPublisher.owner;
        if(report.primary !== 0 || publisher === null)
        {
            return report;
        }
        for(let sequence = 0; sequence < 20; ++sequence)
        {
            report.primary = publish(borrow(publisher), codec, received.value);
            if(report.primary !== 0)
            {
                return report;
            }
            ++report.published;
            const paused = status(__uwvm.pause_ms(100));
            if(paused !== 0)
            {
                report.primary = paused;
                return report;
            }
        }
    }
    catch(error: unknown)
    {
        if(report.primary === 0)
        {
            report.primary = codecErrorCode(error);
        }
    }
    finally
    {
        for(const remaining of [publisher, owner])
        {
            if(remaining !== null)
            {
                const closed = closeStatus(remaining);
                if(report.cleanup === 0)
                {
                    report.cleanup = closed;
                }
            }
        }
    }
    return report;
}

/**
 * @brief Execute the requested complete native flow in the genuine guest.
 * @param operation Literal receive, echo or revoke; caller supplies exact aliases.
 * @details Emit every field byte and real primary/cleanup/retirement observations.
 * Clock permissions are manual: realtime for QuickJS initialization and monotonic
 * for the existing pause service. This function grants no clock or ROS authority.
 */
export function runOriginalArray(operation: Operation): void
{
    runGuest(() =>
    {
        const report = perform(operation);
        if(__uwvm.output(JSON.stringify(report)) !== 0)
        {
            return 5;
        }
        return report.primary !== 0 ? report.primary : report.cleanup;
    });
}
