/**
 * @file console.ts
 * @brief Bounded real WASI argument and stdout operations for NVIDIA examples.
 * @details Pointer slots and iovecs use the selected usize width. This source
 * imports ordinary Preview 1 operations; it supplies no ROS or GPU authority.
 */
@external("wasi_snapshot_preview1", "args_sizes_get") declare function args_sizes_get(count: usize, bytes: usize): u32;
@external("wasi_snapshot_preview1", "args_get") declare function args_get(pointers: usize, bytes: usize): u32;
@external("wasi_snapshot_preview1", "fd_write") declare function fd_write(fd: u32, vectors: usize, count: usize, written: usize): u32;
@external("wasi_snapshot_preview1", "proc_exit") declare function proc_exit(code: u32): void;

/** @brief Preserve either complete actual argv or its original failure status. */
export class Arguments
{
    status: u32 = 0;
    values: Array<string> = new Array<string>();
}

/** @brief Return a full unsigned decimal input only after exact validation. */
export class NumberResult
{
    status: u32 = 0;
    value: u64 = 0;
}

/** @brief Own a complete bounded byte value; no partial value is published. */
export class ByteResult
{
    status: u32 = 0;
    bytes: Uint8Array = new Uint8Array(0);
}

/**
 * @brief Read argv0 and at most one actual argument within 128 KiB.
 * @details Every original pointer, NUL terminator and strict UTF-8 byte round
 * trip is checked before publishing arguments. No ambient environment is read.
 * @return Caller-owned complete arguments, or 22 malformed/90 over quota/WASI error.
 */
export function readArguments(): Arguments
{
    const result = new Arguments(), word = sizeof<usize>();
    const sizes = new Uint8Array(<i32>(word * 2));
    result.status = args_sizes_get(sizes.dataStart, sizes.dataStart + word);
    if(result.status)
        return result;
    const count = load<usize>(sizes.dataStart), bytes = load<usize>(sizes.dataStart + word);
    if(count < 1 || count > 2 || bytes < count || bytes > 131072)
    {
        result.status = bytes > 131072 ? 90 : 22;
        return result;
    }
    const pointers = new Uint8Array(<i32>(count * word)), buffer = new Uint8Array(<i32>bytes);
    result.status = args_get(pointers.dataStart, buffer.dataStart);
    if(result.status)
        return result;
    const values = new Array<string>();
    for(let index: usize = 0; index < count; ++index)
    {
        const pointer = load<usize>(pointers.dataStart + index * word);
        if(pointer < buffer.dataStart || pointer - buffer.dataStart >= bytes)
        {
            result.status = 22;
            return result;
        }
        const at = pointer - buffer.dataStart;
        let size: usize = 0;
        while(size < bytes - at && buffer[<i32>(at + size)] != 0)
            ++size;
        if(size == bytes - at)
        {
            result.status = 22;
            return result;
        }
        const value = String.UTF8.decodeUnsafe(pointer, size, false);
        const encoded = Uint8Array.wrap(String.UTF8.encode(value, false));
        if(<usize>encoded.length != size)
        {
            result.status = 22;
            return result;
        }
        for(let offset: usize = 0; offset < size; ++offset)
        {
            if(encoded[<i32>offset] != buffer[<i32>(at + offset)])
            {
                result.status = 22;
                return result;
            }
        }
        values.push(value);
    }
    result.values = values;
    return result;
}

/**
 * @brief Parse a complete ASCII uint64 without sign, whitespace or wrap.
 * @param text Nonempty original decimal input, retained by the caller.
 * @return Exact unsigned value, or status 22 on malformed/overflow input.
 */
export function decimal(text: string): NumberResult
{
    const result = new NumberResult();
    if(!text.length)
    {
        result.status = 22;
        return result;
    }
    for(let index = 0; index < text.length; ++index)
    {
        const code = text.charCodeAt(index);
        if(code < 48 || code > 57 || result.value > (u64.MAX_VALUE - <u64>(code - 48)) / 10)
        {
            result.status = 22;
            return result;
        }
        result.value = result.value * 10 + <u64>(code - 48);
    }
    return result;
}

/**
 * @brief Decode exact hexadecimal into one bounded owned canonical body.
 * @param text Original ASCII hexadecimal; no spaces, prefix or partial byte.
 * @param maximum Maximum decoded byte extent from the selected complete codec.
 * @return Complete bytes, 22 malformed input or 90 for an exceeded byte quota.
 */
export function parseHex(text: string, maximum: i32): ByteResult
{
    const result = new ByteResult();
    if(maximum < 0 || maximum > 32768 || text.length > maximum * 2)
    {
        result.status = 90;
        return result;
    }
    if(text.length % 2)
    {
        result.status = 22;
        return result;
    }
    const bytes = new Uint8Array(text.length / 2);
    for(let index = 0; index < text.length; ++index)
    {
        const code = text.charCodeAt(index);
        let digit = -1;
        if(code >= 48 && code <= 57)
            digit = code - 48;
        else if(code >= 65 && code <= 70)
            digit = code - 55;
        else if(code >= 97 && code <= 102)
            digit = code - 87;
        if(digit < 0)
        {
            result.status = 22;
            return result;
        }
        if(index % 2)
            bytes[index / 2] |= <u8>digit;
        else
            bytes[index / 2] = <u8>(digit << 4);
    }
    result.bytes = bytes;
    return result;
}

/**
 * @brief Render every active input octet as two lowercase hexadecimal digits.
 * @param bytes Caller-owned complete canonical body, limited to 32768 bytes.
 * @return Complete hexadecimal text; this operation performs no I/O.
 */
export function hex(bytes: Uint8Array): string
{
    const digits = "0123456789abcdef", parts = new Array<string>();
    for(let index = 0; index < bytes.length; ++index)
    {
        parts.push(digits.charAt(bytes[index] >> 4));
        parts.push(digits.charAt(bytes[index] & 15));
    }
    return parts.join("");
}

/**
 * @brief Write a complete bounded UTF-8 line through actual partial-write results.
 * @param text Complete text, at most 128 KiB including the appended newline.
 * @return Zero on complete output, 90 over quota, 5 for zero progress or WASI error.
 */
export function line(text: string): u32
{
    const bytes = Uint8Array.wrap(String.UTF8.encode(text + "\n", false));
    if(bytes.length > 131072)
        return 90;
    const word = sizeof<usize>(), vectors = new Uint8Array(<i32>(word * 2)), written = new Uint8Array(<i32>word);
    let offset: usize = 0;
    while(offset < <usize>bytes.length)
    {
        store<usize>(vectors.dataStart, bytes.dataStart + offset);
        store<usize>(vectors.dataStart + word, <usize>bytes.length - offset);
        const error = fd_write(1, vectors.dataStart, 1, written.dataStart);
        if(error)
            return error;
        const progress = load<usize>(written.dataStart);
        if(!progress || progress > <usize>bytes.length - offset)
            return 5;
        offset += progress;
    }
    return 0;
}

/**
 * @brief Exit with the actual primary/output status, never an invented success.
 * @param code Actual operation result; proc_exit terminates the Wasm command.
 */
export function finish(code: u32): void
{
    proc_exit(code);
}
