/**
 * @file transport.mts
 * @brief Type complete platform records over an already owned common JS capability.
 * @details Ownership and close/revoke remain with the original shared JS owner.
 * These functions never open, copy, close, retry or synthesize a handle or grant.
 */
import type {CanonicalCodec} from "nvidia/typescript/codec";
import {CodecError} from "nvidia/typescript/codec";

/** @brief Existing ros/js/transport Capability-compatible synchronous copied invocation. */
export interface BorrowedCapability
{
    invoke(operation: string, request: Uint8Array, capacity: number): unknown;
}

/** @brief Exact existing JS builtin result; the optional length is diagnostic only. */
type RawResult = [number, Uint8Array, bigint | null, bigint | null];

/** @brief Preserve an original status and complete owned value without ambiguous null success. */
export type TypedResult<T> =
    {readonly ok: true; readonly status: 0; readonly value: T; readonly required: bigint | null} |
    {readonly ok: false; readonly status: number; readonly value: null; readonly required: bigint | null};

/** @brief Check the existing copied-result structure without narrowing uint64 values to Number. */
function rawResult(value: unknown): value is RawResult
{
    return Array.isArray(value) && value.length === 4 && Number.isInteger(value[0]) &&
        value[0] >= 0 && value[0] <= 4294967295 && value[1] instanceof Uint8Array &&
        (value[2] === null || (typeof value[2] === "bigint" && value[2] >= 0n && value[2] <= 0xffffffffffffffffn)) &&
        (value[3] === null || (typeof value[3] === "bigint" && value[3] >= 0n && value[3] <= 0xffffffffffffffffn));
}

/** @brief Issue one explicitly selected operation and decode its complete original response. */
export function request<Q, A>(capability: BorrowedCapability, operation: string,
    requestCodec: CanonicalCodec<Q>, responseCodec: CanonicalCodec<A>, value: Q): TypedResult<A>
{
    const result: unknown = capability.invoke(operation, requestCodec.encode(value), responseCodec.maxWireBytes);
    if(!rawResult(result)) throw new CodecError(22);
    if(result[0] !== 0) return {ok: false, status: result[0], value: null, required: result[2]};
    return {ok: true, status: 0, value: responseCodec.decode(result[1]), required: result[2]};
}

/** @brief Publish every typed message field once under the caller's exact existing publisher grant. */
export function publish<T>(capability: BorrowedCapability, codec: CanonicalCodec<T>, value: T): number
{
    const result: unknown = capability.invoke("topic_publish", codec.encode(value), 0);
    if(!rawResult(result)) throw new CodecError(22);
    return result[0];
}

/**
 * @brief Poll one complete original message; empty11 remains an ordinary refusal.
 * @details Legacy capacity90 may already consume the event. No implicit retry or allocation growth occurs.
 */
export function poll<T>(capability: BorrowedCapability, codec: CanonicalCodec<T>): TypedResult<T>
{
    const result: unknown = capability.invoke("event_poll", new Uint8Array(), codec.maxWireBytes);
    if(!rawResult(result)) throw new CodecError(22);
    if(result[0] !== 0) return {ok: false, status: result[0], value: null, required: result[2]};
    return {ok: true, status: 0, value: codec.decode(result[1]), required: result[2]};
}
