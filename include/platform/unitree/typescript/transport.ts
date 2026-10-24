// SPDX-License-Identifier: Apache-2.0
/**
 * @file transport.ts
 * @brief Type the shared ROS capability transport without duplicating its runtime.
 * @details Handles retain their exact bigint representation. The original SDK
 * constructor performs ownership and retirement; this facade grants no authority.
 */
import {Capability as JavaScriptCapability} from "ros/js/transport";

/**
 * @brief Original status, owned response bytes, optional required count and value.
 * @details Tuple order is [errno, bytes, required, value]. A null optional member
 * means that the operation supplied no such result; it is distinct from zero.
 */
export type RawReply = readonly[number, Uint8Array, bigint | null, bigint | null];

/** @brief One owned capability with explicit retirement. */
export interface CapabilityValue
{
    /** @brief Exact native handle, or null after ownership has been retired. */
    readonly handle: bigint | null;

    /**
     * @brief Invoke one operation through this capability's granted authority.
     * @param operation Operation name from the shared transport contract.
     * @param request Canonical request bytes, borrowed during the call.
     * @param capacity Optional response byte capacity.
     * @return Original errno and any response metadata; no status is translated.
     */
    invoke(operation: string, request?: Uint8Array, capacity?: number): RawReply;

    /**
     * @brief Retire ownership before making one native close attempt.
     * @details Retain this cleanup status separately from an earlier operation's
     * failure. The original implementation never replays a retired handle.
     * @return Original cleanup status.
     */
    close(): number;
}

/** @brief Original constructor and explicit alias lookup contract. */
export interface CapabilityConstructor
{
    /**
     * @brief Take ownership of an already acquired native handle.
     * @param handle Exact handle returned by the native capability API.
     * @return An owner responsible for a single close attempt.
     */
    new(handle: bigint): CapabilityValue;

    /**
     * @brief Open an alias explicitly configured in the caller's module policy.
     * @param alias Policy alias; the name alone conveys no permission.
     * @return [owner, errno], with a null owner when acquisition fails.
     */
    open(alias: string): readonly[CapabilityValue | null, number];
}

/**
 * @brief Reuse the original transport constructor and its ownership implementation.
 * @details This checked declaration boundary adds types and no second transport.
 */
export const Capability = JavaScriptCapability as unknown as CapabilityConstructor;
