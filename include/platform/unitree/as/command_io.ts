/**
 * @file command_io.ts
 * @brief Use real bounded WASI arguments, monotonic waiting, and JSON stdout.
 * @details Native Python/JavaScript never executes this source. These imports
 * are emitted into the guest .wasm and handled by the real uwvm2 WASI runtime.
 */
import {validUtf8} from 'ros/as/codecs';
import {Observation} from 'unitree/as/observation';
@external('wasi_snapshot_preview1', 'args_sizes_get')

declare function args_sizes_get(count: usize, bytes: usize): u32;
@external('wasi_snapshot_preview1', 'args_get')

declare function args_get(pointers: usize, bytes: usize): u32;
@external('wasi_snapshot_preview1', 'fd_write')

declare function fd_write(fd: u32, iov: usize, count: u32, written: usize): u32;
@external('wasi_snapshot_preview1', 'poll_oneoff')

declare function poll_oneoff(input: usize, output: usize, count: u32, ready: usize): u32;
/**
 * @brief Terminate the real WASI command with the selected original status.
 * @param[in] status Process status clamped to 125 by the caller.
 * @details Normal callers close capabilities before termination. This import
 * runs no language destructor or robot recovery operation.
 */
@external('wasi_snapshot_preview1', 'proc_exit')

export declare function proc_exit(status: u32): void;

/**
 * @brief Report a fatal AssemblyScript runtime refusal through WASI termination.
 * @param[in] message Borrowed compiler-supplied diagnostic, or zero.
 * @param[in] fileName Borrowed compiler-supplied source name, or zero.
 * @param[in] lineNumber Original source line, or zero.
 * @param[in] columnNumber Original source column, or zero.
 * @details This fatal path cannot guarantee normal owner cleanup and creates
 * no fabricated successful observation. The host retires the guest instance.
 */
export function abortGuest(message: usize, fileName: usize, lineNumber: u32, columnNumber: u32): void
{
    proc_exit(22);
}

/**
 * @brief Copy a complete bounded strict UTF-8 WASI argument vector.
 * @return Owned strings, or an empty array after any malformed framing/error.
 * @details At most 16 arguments and 4096 aggregate bytes are admitted. Native
 * offsets are validated against the owned guest argument allocation before copy.
 * No pointer escapes the call and no ROS alias is opened here.
 */
export function readArguments(): Array<string>
{
    const output = new Array<string>();
    const sizes = new Uint32Array(2);
    if(args_sizes_get(sizes.dataStart, sizes.dataStart + 4) || !sizes[0] || sizes[0] > 16 || !sizes[1] || sizes[1] > 4096)
    {
        return output;
    }
    const pointers = new Uint32Array(sizes[0]);
    const bytes = new Uint8Array(sizes[1]);
    if(args_get(pointers.dataStart, bytes.dataStart))
    {
        return output;
    }
    for(let index = 0; index < pointers.length; ++index)
    {
        const pointer = <usize>pointers[index];
        if(pointer < bytes.dataStart || pointer >= bytes.dataStart + bytes.length)
        {
            return new Array<string>();
        }
        const begin = <i32>(pointer - bytes.dataStart);
        let end = begin;
        while(end < bytes.length && bytes[end])
        {
            ++end;
        }
        if(end == bytes.length)
        {
            return new Array<string>();
        }
        const raw = bytes.slice(begin, end);
        if(!validUtf8(raw, false))
        {
            return new Array<string>();
        }
        output.push(String.UTF8.decode(raw.buffer));
    }
    return output;
}

/**
 * @brief Wait twenty milliseconds through the actual WASI monotonic clock.
 * @return Zero only after one complete clock event; otherwise original IO refusal 5.
 * @details Requires an independently granted monotonic clock. This helper
 * creates no descriptor, task, timer thread, source owner, or ROS operation.
 */
export function pauseForSample(): u32
{
    const input = new Uint8Array(48), output = new Uint8Array(32);
    const ready = new Uint32Array(1);
    store<u32>(input.dataStart + 16, 1);
    store<u64>(input.dataStart + 24, 20000000);
    store<u64>(input.dataStart + 32, 1000000);
    if(poll_oneoff(input.dataStart, output.dataStart, 1, ready.dataStart) || ready[0] != 1 || load<u16>(output.dataStart + 8) || output[10])
    {
        return 5;
    }
    return 0;
}

/**
 * @brief Write every accepted record byte and all independent observation facts.
 * @tparam T Complete selected generated original record class.
 * @param[in] value Owned observation, borrowed unchanged through stdout completion.
 * @return Status clamped to 125, preserving primary then cleanup then stdout failure.
 * @details Short stdout writes are completed without repeating any ROS call.
 * A complete wire_hex body preserves every original field and array element.
 */
export function outputObservation<T>(value: Observation<T>): u32
{
    const digits = '0123456789abcdef';
    let wire = '';
    for(let index = 0; index < value.wire.length; ++index)
    {
        const byte = value.wire[index];
        wire += digits.charAt(byte >> 4) + digits.charAt(byte & 15);
    }
    const rpc = value.rpc;
    const known = rpc !== null && (rpc.requiredValid || rpc.status == 0);
    const length: u64 = rpc === null ? 0 : rpc.status == 0 ? <u64>rpc.bytes.length : rpc.required;
    const json = '{"primary":' + value.primary.toString() + ',"cleanup":' + value.cleanup.toString() +
                 ',"cleanup_present":' + (value.cleanupPresent ? '1' : '0') + ',"response_present":' + (value.value !== null ? '1' : '0') +
                 ',"rpc_present":' + (rpc !== null ? '1' : '0') + ',"rpc_status":' + (rpc !== null ? rpc.status.toString() : '0') +
                 ',"polls":' + value.polls.toString() + ',"required_present":' + (known ? '1' : '0') + ',"required":' + length.toString() +
                 ',"encoding":0,"wire_hex":"' + wire + '"}\n';
    const output = Uint8Array.wrap(String.UTF8.encode(json));
    const iov = new Uint32Array(2), written = new Uint32Array(1);
    let offset = 0;
    let status = value.status();
    while(offset < output.length)
    {
        iov[0] = <u32>(output.dataStart + offset);
        iov[1] = <u32>(output.length - offset);
        if(fd_write(1, iov.dataStart, 1, written.dataStart) || !written[0] || written[0] > iov[1])
        {
            if(!status)
            {
                status = 5;
            }
            break;
        }
        offset += <i32>written[0];
    }
    return status <= 125 ? status : 125;
}
