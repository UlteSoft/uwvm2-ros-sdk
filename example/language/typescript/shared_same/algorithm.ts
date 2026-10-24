// SPDX-License-Identifier: Apache-2.0
/**
 * @file algorithm.ts
 * @brief Implement a stateful integer function in the actual guest language.
 * @details Each producer owns its counter. Closing the producer releases that
 * state; the next call creates a fresh instance. Negative inputs exercise the
 * documented exception and invalid-return statuses of the shared scalar ABI.
 */
let calls: number = 0;

/** @brief Preserve the numeric type through a genuine generic computation. */
function identity<T>(value: T): T
{
    return value;
}

/** @brief Compute the value, or deliberately exercise a rejected return value. */
globalThis.apply = function(left: number, right: number): number
{
    if(left === -1)
    {
        throw new Error("Requested source-language exception");
    }
    if(left === -2)
    {
        // This explicit unsafe assertion exists solely to test the engine's
        // runtime return validation; ordinary callers should never use it.
        return "invalid return type" as unknown as number;
    }
    calls += 1;
    return identity<number>(left * 3 + right + calls);
};
