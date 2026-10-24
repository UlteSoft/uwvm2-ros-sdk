/**
 * @file stdio.mts
 * @brief Bounded actual guest input and complete output through the existing QuickJS command services.
 * @details Uses the parent's guest.d.ts contract. No browser, Node or host application API is used.
 */
import {codecErrorCode, CodecError} from "nvidia/typescript/codec";

/** @brief Compare every canonical byte, with exact extent equality. */
export function equalBytes(left: Uint8Array, right: Uint8Array): boolean
{
    return left.length === right.length && left.every((byte, index) => byte === right[index]);
}

/** @brief Read an optional exact uint32 decimal seed; default73. */
export function readSeed(): number
{
    if(__uwvm.argv.length > 2)
    {
        throw new CodecError(22);
    }
    const text = __uwvm.argv.length === 2 ? __uwvm.argv[1] : "73";
    if(typeof text !== "string" || text.length === 0 || text.length > 10)
    {
        throw new CodecError(22);
    }
    let seed = 0;
    for(const letter of text)
    {
        const digit = letter.charCodeAt(0) - 48;
        if(digit < 0 || digit > 9 || seed > Math.floor((4294967295 - digit) / 10))
        {
            throw new CodecError(22);
        }
        seed = seed * 10 + digit;
    }
    return seed;
}

/** @brief Decode one complete bounded hex argument; no prefix, whitespace or ignored suffix. */
export function readHex(maximum: number): Uint8Array
{
    const text = __uwvm.argv[1];
    if(__uwvm.argv.length !== 2 || typeof text !== "string" || text.length > maximum * 2 || text.length % 2 !== 0)
    {
        throw new CodecError(22);
    }
    const digit = (letter: string): number => {
        const code = letter.charCodeAt(0);
        if(code >= 48 && code <= 57) return code - 48;
        if(code >= 65 && code <= 70) return code - 55;
        if(code >= 97 && code <= 102) return code - 87;
        throw new CodecError(22);
    };
    const bytes = new Uint8Array(text.length / 2);
    for(let index = 0; index < bytes.length; ++index)
    {
        bytes[index] = digit(text.charAt(index * 2)) * 16 + digit(text.charAt(index * 2 + 1));
    }
    return bytes;
}

/** @brief Emit every initialized byte using the genuine guest's UTF-8 output service. */
export function writeWire(bytes: Uint8Array): number
{
    const hex = Array.from(bytes, byte => byte.toString(16).padStart(2, "0")).join("");
    return __uwvm.output("wire_bytes=" + bytes.length + " wire_hex=" + hex) === 0 ? 0 : 5;
}

/** @brief Require an actual codec refusal22, without replacing it with a fabricated success. */
export function expectInvalid(operation: () => unknown): void
{
    try
    {
        operation();
    }
    catch(error: unknown)
    {
        if(codecErrorCode(error) === 22) return;
        throw error;
    }
    throw new Error("invalid original value was accepted");
}

/** @brief Execute genuine TS-emitted logic and preserve its ordinary guest status. */
export function runGuest(operation: () => number): void
{
    try
    {
        const status = operation();
        exitCode = Number.isInteger(status) && status >= 0 && status <= 125 ? status : 22;
    }
    catch(error: unknown)
    {
        const status = codecErrorCode(error);
        exitCode = status <= 125 ? status : 22;
    }
}
