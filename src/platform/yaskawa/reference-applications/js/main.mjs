/**
 * @file main.mjs
 * @brief Represent the complete original YASKAWA ROS 2 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
/**
 * Real embedded QuickJS command candidate. Read address 10011 once; no write.
 * Counted strict-UTF8 stdin selects an alias, never a native endpoint or grant.
 */
import {
    createGuestSession,
    readGuestByte,
    writeGuestOutput,
} from 'ros/js/guest.mjs';
import {Ros2Motoros2_interfacesSrvReadSingleIO_RequestCodec as requestCodec} from 'yaskawa/js/ros2/yaskawa-ros2-complete/bounded_records.mjs';
import {queryOnce} from './query_once.mjs';
/**
 * @brief Latest complete query observation, or null before the first call.
 * @details Module-owned live binding; a later main() replaces it. The complete
 * response and independent cleanup facts remain available after owner close.
 * Reading this binding performs no import, service call or authority grant.
 * @type {import('./query_once.mjs').QueryOutcome|null}
 * @see main
 */
export let result = null;

function byte()
{
    const value = readGuestByte();
    if(!Number.isInteger(value) || value < 0 || value > 255)
        throw new RangeError('Basic stdin byte required');
    return value;
}

/**
 * @brief Read one counted alias and perform the source-selected observation.
 * @details Uses the actual embedded QuickJS Guest session synchronously. Input
 * is one nonzero u8 byte count followed by that many strict UTF-8 bytes. The
 * alias must already have reviewed ROS2 service rights; input grants none.
 * Stdout contains primary and cleanup u32LE status codes, exactly eight bytes.
 * A zero engine return means those bytes were written, so inspect both codes.
 * The complete response is retained in result. Calls must be serialized; each
 * call consumes a new stdin frame and replaces result. No retry or timer runs.
 * @returns {number} Zero after successful status output, including ROS refusal.
 * @throws {Error} Malformed/truncated input, unexpected SDK exception, cleanup
 * exception or Basic stdout refusal. Abort cannot guarantee cleanup or output.
 * @see queryOnce
 * @see result
 */
export function main()
{
    const size = byte();
    if(!size)
        throw new RangeError('Explicit alias required');
    const bytes = new Uint8Array(size);
    for(let i = 0; i < size; ++i)
        bytes[i] = byte();
    const alias = new TextDecoder('utf-8', {fatal : true, ignoreBOM : true}).decode(bytes);
    const request = requestCodec.defaultValue();
    request.address = 10011;
    result = queryOnce(createGuestSession(), alias, request);
    const failure = result.construction ? result.construction.primary : result.error;
    if(failure !== null && failure !== undefined && (!Number.isInteger(failure?.code) || failure.code <= 0))
        throw failure;
    if(result.cleanupError)
        throw result.cleanupError;
    if(result.cleanup?.cleanupThrew)
        throw result.cleanup.cleanupException;
    const output = new Uint8Array(8), view = new DataView(output.buffer);
    view.setUint32(0, result.primary, true);
    view.setUint32(4, result.cleanup?.cleanupError ?? 0, true);
    const status = writeGuestOutput(output);
    if(status)
        throw new Error('Basic stdout refused: ' + status);
    return 0;
}
