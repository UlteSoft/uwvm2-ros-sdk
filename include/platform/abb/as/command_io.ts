/**
 * @file command_io.ts
 * @brief Read finite WASI command arguments and emit complete observation JSON.
 * @details This helper uses WASI arguments, stdout, and explicit monotonic waits. It opens no files,
 * native connections, or ROS capabilities. All operations are synchronous.
 * @see readArguments, outputObservation
 */
import {validUtf8} from 'ros/as/codecs';
import {Observation} from 'abb/as/observation';

@external('wasi_snapshot_preview1', 'args_sizes_get')

declare function args_sizes_get(count: usize, bytes: usize): u32;
@external('wasi_snapshot_preview1', 'args_get')

declare function args_get(pointers: usize, bytes: usize): u32;
@external('wasi_snapshot_preview1', 'fd_write')

declare function fd_write(fd: u32, iov: usize, count: u32, written: usize): u32;

/**
 * @brief Terminate this WASI command after normal observation and checked close.
 * @param[in] status Process status clamped to 125 by the caller.
 * @details WASI termination runs no language destructors or controller recovery.
 * @see outputObservation
 */
@external('wasi_snapshot_preview1', 'proc_exit')

export declare function proc_exit(status: u32): void;

/**
 * @brief Own validated command arguments and their independent input status.
 * @details An invalid or absent argument vector has status 22 and no values.
 * Managed strings remain owned by this object; reading them grants no rights.
 * @see readArguments
 */
export class Arguments
{
    status: u32 = 22;           /**< @brief Zero only after a complete valid WASI argument vector. */
    values: Array<string> = []; /**< @brief Owned strict UTF-8 argument strings. */
}

/**
 * @brief Read a complete finite WASI argument vector without native memory views.
 * @return Owned strings and status; invalid memory framing or UTF-8 returns 22.
 * @details At most 16 arguments and 4096 aggregate bytes are accepted. Each
 * pointer must fall inside the allocated argument byte region and terminate
 * there. No pointer is retained after copying the corresponding managed string.
 * @see Arguments
 */
export function readArguments(): Arguments
{
    const result = new Arguments();
    const sizes = new Uint32Array(2);
    if(args_sizes_get(sizes.dataStart, sizes.dataStart + 4) || !sizes[0] || sizes[0] > 16 || !sizes[1] || sizes[1] > 4096)
        return result;
    const pointers = new Uint32Array(sizes[0]);
    const bytes = new Uint8Array(sizes[1]);
    if(args_get(pointers.dataStart, bytes.dataStart))
        return result;
    for(let index: i32 = 0; index < pointers.length; ++index)
    {
        const pointer = <usize>pointers[index];
        if(pointer < bytes.dataStart || pointer >= bytes.dataStart + bytes.length)
            return new Arguments();
        const begin = <i32>(pointer - bytes.dataStart);
        let end = begin;
        while(end < bytes.length && bytes[end])
            ++end;
        if(end == bytes.length)
            return new Arguments();
        const raw = bytes.slice(begin, end);
        if(!validUtf8(raw, false))
            return new Arguments();
        result.values.push(String.UTF8.decode(raw.buffer));
    }
    result.status = 0;
    return result;
}

/**
 * @brief Write one entire JSON observation and preserve primary failure precedence.
 * @tparam T Complete generated ABB record type, governed by value presence.
 * @param[in] result Managed observation with complete wire and original failure facts.
 * @return Process status clamped to 125; stdout failure becomes 5 after prior success.
 * @details wire_hex preserves all validated response bytes, including nested
 * controller-state arrays. Short stdout writes are completed without repeating
 * the ROS operation. A WASI write refusal terminates output with error 5.
 * @see Observation.status
 */
export function outputObservation<T>(result: Observation<T>): u32
{
    let wire = '';
    const digits = '0123456789abcdef';
    for(let index = 0; index < result.wire.length; ++index)
    {
        const byte = result.wire[index];
        wire += digits.charAt(byte >> 4) + digits.charAt(byte & 15);
    }
    const rpc = result.rpc;
    const known = rpc !== null && (rpc.requiredValid || rpc.status == 0);
    const length: u64 = rpc === null ? 0 : rpc.status == 0 ? <u64>rpc.bytes.length : rpc.required;
    const json = '{"primary":' + result.primary.toString() + ',"cleanup":' + result.cleanup.toString() +
                 ',"cleanup_present":' + (result.cleanupPresent ? '1' : '0') + ',"response_present":' + (result.value !== null ? '1' : '0') +
                 ',"rpc_present":' + (rpc !== null ? '1' : '0') + ',"rpc_status":' + (rpc !== null ? rpc.status.toString() : '0') +
                 ',"required_present":' + (known ? '1' : '0') + ',"required":' + length.toString() + ',"encoding":0,"wire_hex":"' + wire + '"}\n';
    const output = Uint8Array.wrap(String.UTF8.encode(json));
    const iov = new Uint32Array(2);
    const written = new Uint32Array(1);
    let offset = 0;
    let status = result.status();
    while(offset < output.length)
    {
        iov[0] = <u32>(output.dataStart + offset);
        iov[1] = <u32>(output.length - offset);
        if(fd_write(1, iov.dataStart, 1, written.dataStart) || !written[0] || written[0] > iov[1])
        {
            if(!status)
                status = 5;
            break;
        }
        offset += <i32>written[0];
    }
    return status <= 125 ? status : 125;
}

/** @brief Import the real WASI preview1 event wait primitive. */
@external("wasi_snapshot_preview1", "poll_oneoff")

declare function poll_oneoff(input: usize, output: usize, count: u32, ready: usize): u32;

/**
 * @brief Pause twenty milliseconds through a real WASI monotonic clock event.
 * @return Zero on one complete clock event; SDK IO status 5 on any refusal.
 * @details The 48-byte subscription and 32-byte event use preview1's fixed
 * wasm32 layout. No files or descriptors are opened. The host must grant its
 * monotonic clock. Called only between idle state polls, at most 249 times.
 * @see waitSystemState
 */
export function pauseForSample(): u32
{
    const input = new Uint8Array(48);
    const output = new Uint8Array(32);
    const ready = new Uint32Array(1);
    store<u32>(input.dataStart + 16, 1);
    store<u64>(input.dataStart + 24, 20000000);
    store<u64>(input.dataStart + 32, 1000000);
    if(poll_oneoff(input.dataStart, output.dataStart, 1, ready.dataStart) || ready[0] != 1 || load<u16>(output.dataStart + 8) != 0 || output[10] != 0)
        return 5;
    return 0;
}
