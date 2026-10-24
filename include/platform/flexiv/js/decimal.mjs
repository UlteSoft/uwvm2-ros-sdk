// SPDX-License-Identifier: Apache-2.0

/**
 * @brief Format one original finite binary64 scalar with exactly three decimals.
 * @details Round the exact binary64 value scaled by 1,000 to nearest, ties to
 * even, matching the pinned monitor's Python '.3f' rule. Preserve negative zero
 * and fixed notation beyond 1e21, where JavaScript toFixed switches to exponent
 * notation. No unit, frame or magnitude conversion is applied.
 * @param {number} value [in] Finite IEEE 754 binary64, passed by value; no pointer
 * or caller storage is retained. Nonfinite values must be handled explicitly by
 * the caller when the original computation permits an infinite final norm.
 * @returns {string} New immutable ASCII string, at most 314 characters including
 * sign/decimal point. Lifetime follows normal JavaScript string ownership.
 * @throws {Error} code=22 for a non-number or nonfinite input; performs no I/O.
 * @note Synchronous, reentrant and locale-independent. It creates no thread,
 * callback, clock, Runtime import or permission. BigInt storage is bounded by
 * the fixed binary64 exponent/significand range, not by caller-controlled text.
 * @see ./monitor.mjs#writeRobotStates
 */
export function fixedThree(value)
{
    if(typeof value !== 'number' || !Number.isFinite(value))
    {
        const error = new Error('Finite original scalar required; primary=22');
        error.code = 22;
        throw error;
    }
    const bytes = new ArrayBuffer(8);
    const view = new DataView(bytes);
    view.setFloat64(0, value, true);
    const bits = view.getBigUint64(0, true);
    const negative = (bits >> 63n) !== 0n;
    const exponent = Number((bits >> 52n) & 2047n);
    const fraction = bits & ((1n << 52n) - 1n);
    const significand = exponent === 0 ? fraction : fraction | (1n << 52n);
    const shift = exponent === 0 ? -1074 : exponent - 1023 - 52;
    let scaled = significand * 1000n;
    if(shift >= 0)
    {
        scaled <<= BigInt(shift);
    }
    else
    {
        const denominator = 1n << BigInt(-shift);
        let rounded = scaled / denominator;
        const remainder = scaled % denominator;
        if(remainder * 2n > denominator || (remainder * 2n === denominator && (rounded & 1n) === 1n))
        {
            rounded += 1n;
        }
        scaled = rounded;
    }
    const decimal = scaled.toString().padStart(4, '0');
    return `${negative ? '-' : ''}${decimal.slice(0, -3)}.${decimal.slice(-3)}`;
}
