#!/usr/bin/env python3
"""@brief Author genuine AssemblyScript observation sources and WASI commands.

@details This maintenance generator formats every source in temporary storage
before writing the review SDK. It executes no guest source, compiler, or ROS
participant. Native transport qualification is recorded separately on Linux.
"""

import argparse
from pathlib import Path
from facades_examples import publish, SCENARIOS, BOOTSTRAP


def prepare(sdk):
    """@brief Write complete managed observation and command ownership contracts."""
    publish(
        sdk,
        "include/platform/unitree/as/observation.ts",
        """/**
 * @file observation.ts
 * @brief Own complete Unitree observations and independent transport/close facts.
 * @details Managed values and copied bytes belong to this guest. No native ROS
 * pointer, callback, authority, timer, task, or default topic is represented.
 */
import { Reply } from 'ros/as/roswasm';
/**
 * @brief Own one complete typed native-message observation.
 * @tparam T Complete generated original Unitree record class.
 * @details value is accepted only when nonnull. A copied result grants no native
 * rights. Serialize mutable access; fatal allocation/traps cannot promise cleanup.
 */
export class Observation<T> {
    primary: u32 = 0; /**< @brief First validation/open/subscribe/poll/decode failure. */
    cleanup: u32 = 0; /**< @brief Original single checked-close status when present. */
    cleanupPresent: bool = false; /**< @brief True only after closing an acquired owner. */
    polls: u32 = 0; /**< @brief Number of actual event polls, including idle results. */
    rpc: Reply | null = null; /**< @brief Entire last copied transport/length result. */
    value: T | null = null; /**< @brief Whole owned decoded original record; null on refusal. */
    wire: Uint8Array = new Uint8Array(0); /**< @brief Complete validated canonical message bytes. */
    /**
     * @brief Select primary failure before independent cleanup failure.
     * @return Full unsigned status; zero requires the observation and close to succeed.
     * @details Local immutable read with no native operation or ownership transfer.
     */
    status(): u32 { return this.primary ? this.primary : this.cleanup; }
}
""",
        "as",
    )
    for version, scenarios in SCENARIOS.items():
        names = ",\n".join(
            "    "
            + f"Ros{version}"
            + ("Unitree_goMsg" if version == 2 else "Unitree_legged_msgs")
            + native
            + f" as {native},\n    "
            + f"Ros{version}"
            + ("Unitree_goMsg" if version == 2 else "Unitree_legged_msgs")
            + native
            + f"Codec as {native}Codec"
            for _, _, native, _ in scenarios
        )
        body = f"""/**
 * @file observation.ts
 * @brief Observe exact complete native Unitree ROS {version} records.
 * @details Every normal acquisition retains one owner for a finite poll budget
 * and closes it once. There is no command publication, backend substitution,
 * native driver, automatic capacity retry, or hidden clock/executor.
 */
import {{ Api, Status }} from 'ros/as/api';
import {{ Capability }} from 'ros/as/roswasm';
import {{ Observation }} from 'unitree/as/observation';
import {{ VendorCodec,
{names}
}} from 'unitree/as/ros{version}/records';
/**
 * @brief Retain one exact-type owner and decode one complete original record.
 * @tparam T Complete generated original Unitree record class.
 * @param[in] api Borrowed genuine ROS {version} dispatch, stable through return.
 * @param[in] alias Existing strict UTF-8 exact-type subscription policy alias.
 * @param[in] maximum Complete generated schema byte ceiling.
 * @param[in] codec Exact selected complete decoder, with no transport side effects.
 * @param[in] attempts Poll budget in [1,250]; idle 11 alone permits another poll.
 * @param[in] pause Caller wait between idle polls; must not reenter this owner.
 * @return Managed complete value with independent operation/length/close facts.
 * @details Allocation or a Wasm trap can prevent normal cleanup. All ordinary
 * numeric errors close the acquired owner once. Successful decoded values own
 * their backing storage and preserve every original field and array element.
 */
function receive<T>(api: Api, alias: string, maximum: i32, codec: VendorCodec<T>,
    attempts: u32, pause: () => u32): Observation<T> {{
    const result = new Observation<T>();
    if(api.backend != {version} || attempts < 1 || attempts > 250) {{ result.primary = Status.Invalid; return result; }}
    const owner = new Capability(api);
    result.primary = owner.open(alias);
    if(result.primary) return result;
    result.primary = owner.subscribe();
    if(!result.primary) {{
        for(let index: u32 = 0; index < attempts; ++index) {{
            const reply = owner.poll(maximum);
            result.rpc = reply;
            ++result.polls;
            result.primary = reply.status;
            if(reply.status != 11 || index + 1 == attempts) break;
            result.primary = pause();
            if(result.primary) break;
        }}
        const actual = result.rpc;
        if(!result.primary && actual !== null) {{
            const decoded = codec.decodeChecked(actual.bytes);
            result.primary = decoded.status;
            if(!decoded.status && decoded.value !== null) {{
                result.value = decoded.value;
                result.wire = actual.bytes;
            }} else if(!result.primary) {{ result.primary = Status.Invalid; }}
        }}
    }}
    result.cleanupPresent = true;
    result.cleanup = owner.close();
    return result;
}}
"""
        for scenario, typename, native, description in scenarios:
            method = "wait" + "".join(part.title() for part in scenario.split("_"))
            body += f"""/**
 * @brief {description}
 * @param[in] api Borrowed genuine ROS {version} API; no alternate backend is chosen.
 * @param[in] alias Existing exact native {native} subscription capability alias.
 * @param[in] attempts Finite total poll budget, 1 through 250.
 * @param[in] pause Caller-controlled wait after idle; called at most attempts minus one times.
 * @return Entire owned {native} record and independent operation/poll/close facts.
 * @details Input storage stays stable synchronously. No robot command, source
 * interpreter, native pointer, automatic replay, or authority change is created.
 */
export function {method}(api: Api, alias: string, attempts: u32, pause: () => u32): Observation<{native}> {{
    return receive<{native}>(api, alias, {native}.maxWireBytes, new {native}Codec(), attempts, pause);
}}
"""
        publish(
            sdk, f"include/platform/unitree/as/ros{version}/observation.ts", body, "as"
        )
    publish(
        sdk,
        "include/platform/unitree/as/command_io.ts",
        """/**
 * @file command_io.ts
 * @brief Use real bounded WASI arguments, monotonic waiting, and JSON stdout.
 * @details Native Python/JavaScript never executes this source. These imports
 * are emitted into the guest .wasm and handled by the real uwvm2 WASI runtime.
 */
import { validUtf8 } from 'ros/as/codecs';
import { Observation } from 'unitree/as/observation';
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
export function abortGuest(message: usize, fileName: usize, lineNumber: u32, columnNumber: u32): void {
    proc_exit(22);
}
/**
 * @brief Copy a complete bounded strict UTF-8 WASI argument vector.
 * @return Owned strings, or an empty array after any malformed framing/error.
 * @details At most 16 arguments and 4096 aggregate bytes are admitted. Native
 * offsets are validated against the owned guest argument allocation before copy.
 * No pointer escapes the call and no ROS alias is opened here.
 */
export function readArguments(): Array<string> {
    const output = new Array<string>();
    const sizes = new Uint32Array(2);
    if(args_sizes_get(sizes.dataStart, sizes.dataStart + 4) || !sizes[0] || sizes[0] > 16 || !sizes[1] || sizes[1] > 4096) return output;
    const pointers = new Uint32Array(sizes[0]);
    const bytes = new Uint8Array(sizes[1]);
    if(args_get(pointers.dataStart, bytes.dataStart)) return output;
    for(let index = 0; index < pointers.length; ++index) {
        const pointer = <usize>pointers[index];
        if(pointer < bytes.dataStart || pointer >= bytes.dataStart + bytes.length) return new Array<string>();
        const begin = <i32>(pointer - bytes.dataStart);
        let end = begin;
        while(end < bytes.length && bytes[end]) ++end;
        if(end == bytes.length) return new Array<string>();
        const raw = bytes.slice(begin, end);
        if(!validUtf8(raw, false)) return new Array<string>();
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
export function pauseForSample(): u32 {
    const input = new Uint8Array(48), output = new Uint8Array(32);
    const ready = new Uint32Array(1);
    store<u32>(input.dataStart + 16, 1);
    store<u64>(input.dataStart + 24, 20000000);
    store<u64>(input.dataStart + 32, 1000000);
    if(poll_oneoff(input.dataStart, output.dataStart, 1, ready.dataStart) || ready[0] != 1 || load<u16>(output.dataStart + 8) || output[10]) return 5;
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
export function outputObservation<T>(value: Observation<T>): u32 {
    const digits = '0123456789abcdef';
    let wire = '';
    for(let index = 0; index < value.wire.length; ++index) {
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
        ',"encoding":0,"wire_hex":"' + wire + '"}\\n';
    const output = Uint8Array.wrap(String.UTF8.encode(json));
    const iov = new Uint32Array(2), written = new Uint32Array(1);
    let offset = 0;
    let status = value.status();
    while(offset < output.length) {
        iov[0] = <u32>(output.dataStart + offset);
        iov[1] = <u32>(output.length - offset);
        if(fd_write(1, iov.dataStart, 1, written.dataStart) || !written[0] || written[0] > iov[1]) {
            if(!status) status = 5;
            break;
        }
        offset += <i32>written[0];
    }
    return status <= 125 ? status : 125;
}
""",
        "as",
    )
    for version, scenarios in SCENARIOS.items():
        for scenario, typename, native, description in scenarios:
            method = "wait" + "".join(part.title() for part in scenario.split("_"))
            relative = f"example/platform/unitree/as/ros{version}/{scenario}"
            body = f"""/**
 * @file main.ts
 * @brief {description}
 * @details A real AssemblyScript compiler emits this entire application into
 * one Wasm command. Actual native ROS transport is provided by uwvm2-ros.
 */
import {{ NativeApi }} from 'ros/as/ros{version}/roswasm';
import {{ {method} }} from 'unitree/as/ros{version}/observation';
import {{ readArguments, outputObservation, pauseForSample, proc_exit }} from 'unitree/as/command_io';
/**
 * @brief Observe one complete native {native} record using an existing alias.
 * @details Exactly one alias argument is required. The observation retains one
 * owner for at most 250 polls with twenty-millisecond waits only after idle.
 * All owners close before stdout/exit. No robot command is ever published.
 */
export function _start(): void {{
    const input = readArguments();
    if(input.length != 2) {{ proc_exit(22); return; }}
    const result = {method}(new NativeApi(), input[1], 250, pauseForSample);
    proc_exit(outputObservation(result));
}}
"""
            publish(sdk, relative + "/main.ts", body, "as")
            manifest = BOOTSTRAP + f"""
-- @brief Build the complete genuine AssemblyScript source as one WASI command.
target("unitree-as-ros{version}-{scenario}")
set_language("as")
set_ros_platform("unitree")
{'set_ros2_version("jazzy")' if version==2 else 'set_ros1_version("noetic")'}
set_plat(get_config("plat") or "wasm-wasip1")
set_arch(get_config("arch") or "wasm32")
add_files("main.ts")
target_end()
"""
            publish(sdk, relative + "/xmake.lua", manifest)


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--sdk", type=Path, required=True)
    prepare(parser.parse_args().sdk.resolve(strict=True))
