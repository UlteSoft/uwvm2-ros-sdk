// SPDX-License-Identifier: Apache-2.0
/**
 * @file algorithm.mjs
 * @brief Provide the genuine JavaScript producer for a typed consumer.
 * @details State stays inside this module; closing it allows a fresh counter.
 * Negative inputs deliberately exercise the shared ABI failure statuses.
 */
let calls = 0;

/** @brief Compute an integer or exercise a deliberate source-language failure. */
globalThis.apply = function(left, right)
{
    if(left === -1)
    {
        throw new Error("Requested JavaScript producer exception");
    }
    if(left === -2)
    {
        return "invalid return type";
    }
    calls += 1;
    return left * 3 + right + calls;
};
