/**
 * @file command.ts
 * @brief Real WASI Preview 1 output and finite waits for AssemblyScript commands.
 * @details Managed buffers remain rooted for each synchronous import. These
 * functions grant no ROS rights, open no file, and create no background executor.
 * Their layouts apply to wasm32; they do not claim a memory64 toolchain closure.
 */
@external("wasi_snapshot_preview1", "fd_write")

declare function fdWrite(fd: u32, vectors: usize, count: u32, written: usize): u32;
@external("wasi_snapshot_preview1", "poll_oneoff")

declare function pollOneoff(input: usize, output: usize, count: u32, ready: usize): u32;
/** @brief Terminate only after explicit owner cleanup; this import does not unwind. */
@external("wasi_snapshot_preview1", "proc_exit")

export declare function exit(status: u32): void;

/**
 * @brief Copy one complete UTF-8 string to stdout, completing short writes.
 * @param text Owned text; UTF-8 bytes are rooted throughout the output operation.
 * @return Zero on complete output, otherwise local IO status 5.
 * @details Only unwritten stdout bytes are repeated. No ROS operation is retried.
 */
export function write(text: string): u32
{
    const bytes = Uint8Array.wrap(String.UTF8.encode(text));
    const vector = new Uint32Array(2), written = new Uint32Array(1);
    let offset: u32 = 0;
    while(offset < <u32>bytes.length)
    {
        vector[0] = <u32>bytes.dataStart + offset;
        vector[1] = <u32>bytes.length - offset;
        written[0] = 0;
        if(fdWrite(1, vector.dataStart, 1, written.dataStart) || !written[0] || written[0] > vector[1])
            return 5;
        offset += written[0];
    }
    return 0;
}

/**
 * @brief Wait once for an explicitly granted relative monotonic clock event.
 * @param nanoseconds Requested finite relative delay.
 * @return Zero only for one successful clock event, otherwise IO status 5.
 * @details The 48-byte subscription and 32-byte event use Preview 1's fixed
 * wasm32 layout. This scheduling wait is independent from ROS simulated time.
 */
export function pause(nanoseconds: u64 = 20000000): u32
{
    const input = new Uint8Array(48), output = new Uint8Array(32);
    const ready = new Uint32Array(1);
    store<u32>(input.dataStart + 16, 1);
    store<u64>(input.dataStart + 24, nanoseconds);
    store<u64>(input.dataStart + 32, 1000000);
    return pollOneoff(input.dataStart, output.dataStart, 1, ready.dataStart) || ready[0] != 1 || load<u16>(output.dataStart + 8) || output[10] ? 5 : 0;
}
