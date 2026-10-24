// SPDX-License-Identifier: Apache-2.0
/**
 * @file consumer.ts
 * @brief Verify state, exceptions, closure and fresh-instance behavior.
 * @details Every assertion runs inside the Wasm guest. Exact packed values
 * are independent expectations; no application calculation runs on the host.
 */

/** @brief Reject any source-language or scalar-ABI disagreement. */
function check(condition: boolean): void
{
    if(!condition)
    {
        throw new Error("The producer scalar contract differs");
    }
}

/** @brief Exercise one complete lifecycle using the normal dependency binding. */
globalThis.apply = function(_left: number, _right: number): number
{
    __foreign.initialize();
    check(__foreign.apply(4, 7) === 20n);
    check(__foreign.apply(4, 7) === 21n);
    check(__foreign.apply(-1, 7) === (22n << 32n));
    check(__foreign.apply(-2, 7) === (22n << 32n));
    check(__foreign.apply(4, 7) === 22n);
    check(__foreign.close() === 0);
    check(__foreign.close() === 0);
    check(__foreign.apply(4, 7) === 20n);
    check(__foreign.close() === 0);
    return 12345;
};

check(globalThis.apply(0, 0) === 12345);
check(globalThis.apply(0, 0) === 12345);
