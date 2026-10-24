// SPDX-License-Identifier: Apache-2.0
/**
 * @file wasi.ts
 * @brief Bounded WASI Preview 1 support for Agibot AssemblyScript guests.
 * @details All pointers refer to the current guest's memory zero. These helpers
 * expose no sockets or filesystem preopens. Clock operations require explicit
 * monotonic-clock authority in the uwvm2-ros deployment.
 */

@external("wasi_snapshot_preview1", "args_sizes_get")

declare function argsSizes(count: usize, size: usize): u32;

@external("wasi_snapshot_preview1", "args_get")

declare function argsRead(pointers: usize, bytes: usize): u32;

@external("wasi_snapshot_preview1", "fd_write")

declare function fdWrite(fd: u32, vectors: usize, count: u32, written: usize): u32;

@external("wasi_snapshot_preview1", "proc_exit")

export declare function exit(code: u32): void;

@external("wasi_snapshot_preview1", "clock_time_get")

declare function clockRead(clock: u32, precision: u64, output: usize): u32;

@external("wasi_snapshot_preview1", "poll_oneoff")

declare function pollOne(input: usize, output: usize, count: u32, events: usize): u32;

/**
 * @brief Read exactly one bounded command-line alias after argv[0].
 * @return Alias, or an empty string after argument/WASI validation fails.
 * @details At most 8192 argument bytes are allocated. The returned string owns
 * its decoded data; no pointer into temporary argument storage escapes.
 */
export function commandAlias(): string
{
    const metadata = new Uint32Array(2);
    if(argsSizes(metadata.dataStart, metadata.dataStart + 4) != 0 || metadata[0] != 2 || metadata[1] == 0 || metadata[1] > 8192)
    {
        return '';
    }
    const pointers = new Uint32Array(2);
    const bytes = new Uint8Array(metadata[1]);
    if(argsRead(pointers.dataStart, bytes.dataStart) != 0)
    {
        return '';
    }
    const address = <usize>pointers[1];
    if(address < bytes.dataStart || address - bytes.dataStart >= <usize>bytes.length)
    {
        return '';
    }
    const start = <i32>(address - bytes.dataStart);
    let length: i32 = 0;
    while(start + length < bytes.length && bytes[start + length] != 0 && length <= 255)
    {
        ++length;
    }
    if(length == 0 || length > 255 || start + length >= bytes.length)
    {
        return '';
    }
    return String.UTF8.decodeUnsafe(address, length, false);
}

/**
 * @brief Write a complete UTF-8 string, retaining partial-write progress.
 * @param text Caller-owned text; borrowed until this synchronous call completes.
 * @param descriptor Standard output (1) or standard error (2).
 * @return Original WASI errno, or 5 if a successful write makes no progress.
 */
export function write(text: string, descriptor: u32 = 1): u32
{
    const bytes = Uint8Array.wrap(String.UTF8.encode(text));
    const vector = new Uint32Array(3);
    let position: u32 = 0;
    while(position < <u32>bytes.length)
    {
        vector[0] = <u32>bytes.dataStart + position;
        vector[1] = <u32>bytes.length - position;
        vector[2] = 0;
        const error = fdWrite(descriptor, vector.dataStart, 1, vector.dataStart + 8);
        if(error != 0)
        {
            return error;
        }
        if(vector[2] == 0 || vector[2] > vector[1])
        {
            return 5;
        }
        position += vector[2];
    }
    return 0;
}

/** @brief Read monotonic nanoseconds; return -1 when the required clock is denied. */
export function monotonicNanoseconds(): i64
{
    const output = new Uint64Array(1);
    return clockRead(1, 1, output.dataStart) == 0 ? <i64>output[0] : -1;
}

/**
 * @brief Wait one millisecond using a relative WASI monotonic subscription.
 * @return Original WASI errno or the clock event's errno; no retry is hidden.
 */
export function sleepMillisecond(): u32
{
    const subscription = new Uint8Array(48);
    const event = new Uint8Array(32);
    const count = new Uint32Array(1);
    store<u32>(subscription.dataStart + 16, 1);
    store<u64>(subscription.dataStart + 24, 1000000);
    store<u64>(subscription.dataStart + 32, 1000);
    const error = pollOne(subscription.dataStart, event.dataStart, 1, count.dataStart);
    if(error != 0)
    {
        return error;
    }
    return count[0] == 1 ? <u32>load<u16>(event.dataStart + 8) : 5;
}

/** @brief Quote text as JSON without losing Unicode or control characters. */
export function quote(text: string): string
{
    let result = '"';
    const digits = '0123456789abcdef';
    for(let index = 0; index < text.length; ++index)
    {
        const value = text.charCodeAt(index);
        if(value == 34 || value == 92)
        {
            result += '\\' + text.charAt(index);
        }
        else if(value < 32)
        {
            result += '\\u00' + digits.charAt(value >> 4) + digits.charAt(value & 15);
        }
        else
        {
            result += text.charAt(index);
        }
    }
    return result + '"';
}
