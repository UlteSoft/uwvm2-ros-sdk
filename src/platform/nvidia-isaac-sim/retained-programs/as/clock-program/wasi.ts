/** Actual bounded WASIp1 argument/output plumbing; no Host environment access. */
@external('wasi_snapshot_preview1', 'args_sizes_get') declare function args_sizes_get(count: usize, bytes: usize): u32;
@external('wasi_snapshot_preview1', 'args_get') declare function args_get(pointers: usize, bytes: usize): u32;
@external('wasi_snapshot_preview1', 'fd_write') declare function fd_write(fd: u32, vectors: usize, count: u32, written: usize): u32;
@external('wasi_snapshot_preview1', 'proc_exit') declare function proc_exit(code: u32): void;

/**
 * @brief Bounded actual argv result; empty args on failure, never invented input.
 * @see readArguments
 */
export class Arguments
{
    /** @brief Original WASI/local validation status. @see readArguments */
    status: u32 = 0;
    /** @brief Full strict-UTF8 actual arguments including argv0. @see readArguments */
    values: Array<string> = new Array<string>();
}

/**
 * @brief Read exactly seven actual command arguments in at most4096 UTF8 bytes.
 * @details Uses genuine WASI args APIs; checks every pointer/terminator and UTF8
 * round trip before exposure. No file, environment, clock or random reads.
 * @return Complete argv or original status/22 malformed/90 capacity.
 * @see Arguments
 */
export function readArguments(): Arguments
{
    const out = new Arguments(), sizes = new Uint8Array(8);
    out.status = args_sizes_get(sizes.dataStart, sizes.dataStart + 4);
    if(out.status)
        return out;
    const count = load<u32>(sizes.dataStart), bytes = load<u32>(sizes.dataStart + 4);
    if(count != 7 || bytes < count || bytes > 4096)
    {
        out.status = bytes > 4096 ? 90 : 22;
        return out;
    }
    const pointers = new Uint8Array(<i32>count * 4), buffer = new Uint8Array(<i32>bytes);
    out.status = args_get(pointers.dataStart, buffer.dataStart);
    if(out.status)
        return out;
    const values = new Array<string>();
    for(let i: u32 = 0; i < count; ++i)
    {
        const p = load<u32>(pointers.dataStart + i * 4);
        if(p < buffer.dataStart || p - buffer.dataStart >= bytes)
        {
            out.status = 22;
            return out;
        }
        const at = p - buffer.dataStart;
        let n: u32 = 0;
        while(at + n < bytes && buffer[<i32>(at + n)] != 0)
            ++n;
        if(at + n >= bytes)
        {
            out.status = 22;
            return out;
        }
        const value = String.UTF8.decodeUnsafe(p, n, false), encoded = Uint8Array.wrap(String.UTF8.encode(value, false));
        if(<u32>encoded.length != n)
        {
            out.status = 22;
            return out;
        }
        for(let k: u32 = 0; k < n; ++k)
            if(encoded[<i32>k] != buffer[<i32>(at + k)])
            {
                out.status = 22;
                return out;
            }
        values.push(value);
    }
    out.values = values;
    return out;
}

/** @brief Checked full-width decimal result. @see decimal */
export class NumberResult
{
    /** @brief22 means invalid/overflow;0 permits value. @see decimal */
    status: u32 = 0;
    /** @brief Full unsigned value meaningful only on status0. @see decimal */
    value: u64 = 0;
}

/**
 * @brief Parse unsigned ASCII decimal without floating point or silent wrap.
 * @param[in] text Nonempty input; signs and whitespace are rejected.
 * @return Actual full uint64 value or22 malformed/overflow.
 * @see NumberResult
 */
export function decimal(text: string): NumberResult
{
    const out = new NumberResult();
    if(!text.length)
    {
        out.status = 22;
        return out;
    }
    for(let i = 0; i < text.length; ++i)
    {
        const c = text.charCodeAt(i);
        if(c < 48 || c > 57 || out.value > (u64.MAX_VALUE - <u64>(c - 48)) / 10)
        {
            out.status = 22;
            return out;
        }
        out.value = out.value * 10 + <u64>(c - 48);
    }
    return out;
}

/**
 * @brief Write one complete bounded UTF8 line using actual partial-write results.
 * @details Loops only while positive byte progress occurs; no synthesized output
 * success. At most16384 bytes, no clock, thread, scheduler or file grants.
 * @param[in] text Complete text excluding final newline, borrowed through return.
 * @return Actual WASI status,5 zero/invalid progress or90 byte ceiling.
 * @see exit
 */
export function write(text: string): u32
{
    const bytes = Uint8Array.wrap(String.UTF8.encode(text + '\n', false));
    if(bytes.length > 16384)
        return 90;
    const vector = new Uint8Array(8), written = new Uint8Array(4);
    let at = 0;
    while(at < bytes.length)
    {
        store<u32>(vector.dataStart, <u32>(bytes.dataStart + at));
        store<u32>(vector.dataStart + 4, <u32>(bytes.length - at));
        const status = fd_write(1, vector.dataStart, 1, written.dataStart);
        if(status)
            return status;
        const n = load<u32>(written.dataStart);
        if(!n || n > <u32>(bytes.length - at))
            return 5;
        at += <i32>n;
    }
    return 0;
}

/**
 * @brief Exit the genuine command after explicit owner cleanup.
 * @param[in] code Complete first primary status, kept in the program's output.
 * @return Never normally; maps values above125 to125 for process exit only.
 * @see write
 */
export function exit(code: u32): void
{
    proc_exit(code <= 125 ? code : 125);
}
